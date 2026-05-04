import 'package:belajar_flutter/helper/responsive_helper.dart';
import 'package:flutter/material.dart';

class UtsPage extends StatefulWidget {
  const UtsPage({super.key});

  @override
  State<UtsPage> createState() => _UtsPageState();
}

class _UtsPageState extends State<UtsPage> {
  // Radio Button state
  String _selectedGender = 'Laki-laki';

  // Checkbox state
  Map<String, bool> _hobbies = {
    'Membaca': false,
    'Olahraga': false,
    'Memasak': false,
    'Gaming': false,
    'Traveling': false,
  };

  // ── Toast helper ────────────────────────────────────────────────────────────
  void _showToast(String message, {bool isSuccess = true}) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: 60,
        left: 24,
        right: 24,
        child: Material(
          color: Colors.transparent,
          child: TweenAnimationBuilder<double>(
            tween: Tween(begin: 0.0, end: 1.0),
            duration: Duration(milliseconds: 300),
            builder: (context, value, child) => Opacity(
              opacity: value,
              child: Transform.translate(
                offset: Offset(0, 20 * (1 - value)),
                child: child,
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              decoration: BoxDecoration(
                color: isSuccess ? Colors.indigo : Colors.red[700],
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    isSuccess ? Icons.check_circle : Icons.error,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      message,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);
    Future.delayed(Duration(seconds: 2), () => overlayEntry.remove());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Header Profile ───────────────────────────────────────────
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/makanan.png"),
                      radius: 40,
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ramanda Dio",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "04SIFE006",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 6),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 3),
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            _selectedGender,
                            style:
                                TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // ── Radio Button – Jenis Kelamin ─────────────────────────────
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Jenis Kelamin",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Laki-laki',
                            groupValue: _selectedGender,
                            activeColor: Colors.indigo,
                            onChanged: (value) {
                              setState(() => _selectedGender = value!);
                            },
                          ),
                          Text('Laki-laki'),
                          SizedBox(width: 16),
                          Radio<String>(
                            value: 'Perempuan',
                            groupValue: _selectedGender,
                            activeColor: Colors.indigo,
                            onChanged: (value) {
                              setState(() => _selectedGender = value!);
                            },
                          ),
                          Text('Perempuan'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 12),

              // ── Checkbox – Hobi ──────────────────────────────────────────
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Hobi",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(height: 4),
                      ..._hobbies.keys.map((hobby) {
                        return SizedBox(
                          height: 36,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 36,
                                height: 36,
                                child: Checkbox(
                                  value: _hobbies[hobby],
                                  activeColor: Colors.indigo,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  onChanged: (value) {
                                    setState(() => _hobbies[hobby] = value!);
                                  },
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(hobby),
                            ],
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 12),

              // ── Menu Profile ─────────────────────────────────────────────
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    // Simpan state sementara di dialog
                    String tempGender = _selectedGender;
                    Map<String, bool> tempHobbies = Map.from(_hobbies);

                    showDialog(
                      context: context,
                      builder: (context) => StatefulBuilder(
                        builder: (context, setDialogState) => AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          title: Text('Profile'),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/makanan.png"),
                                    radius: 40,
                                  ),
                                ),
                                SizedBox(height: 12),
                                Text('Nama   : Ramanda Dio'),
                                SizedBox(height: 4),
                                Text('NIM      : 04SIFE006'),
                                SizedBox(height: 12),

                                // Radio di dalam dialog
                                Text(
                                  'Jenis Kelamin',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Laki-laki',
                                      groupValue: tempGender,
                                      activeColor: Colors.indigo,
                                      onChanged: (value) {
                                        setDialogState(
                                            () => tempGender = value!);
                                      },
                                    ),
                                    Text('Laki-laki'),
                                    SizedBox(width: 8),
                                    Radio<String>(
                                      value: 'Perempuan',
                                      groupValue: tempGender,
                                      activeColor: Colors.indigo,
                                      onChanged: (value) {
                                        setDialogState(
                                            () => tempGender = value!);
                                      },
                                    ),
                                    Text('Perempuan'),
                                  ],
                                ),

                                SizedBox(height: 8),

                                // Checkbox di dalam dialog
                                Text(
                                  'Hobi',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                ...tempHobbies.keys.map((hobby) {
                                  return SizedBox(
                                    height: 36,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 36,
                                          height: 36,
                                          child: Checkbox(
                                            value: tempHobbies[hobby],
                                            activeColor: Colors.indigo,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            onChanged: (value) {
                                              setDialogState(() =>
                                                  tempHobbies[hobby] = value!);
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Text(hobby),
                                      ],
                                    ),
                                  );
                                }),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                'Batal',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigo,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {
                                // Simpan perubahan ke state utama
                                setState(() {
                                  _selectedGender = tempGender;
                                  _hobbies = Map.from(tempHobbies);
                                });
                                Navigator.pop(context);

                                // Tampilkan toast
                                _showToast('Profile berhasil disimpan!');
                              },
                              child: Text(
                                'Simpan',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.indigo.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.person,
                              color: Colors.indigo, size: 22),
                        ),
                        SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Profile',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Lihat & edit data diri',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.chevron_right, color: Colors.grey),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}