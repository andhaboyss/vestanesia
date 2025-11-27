import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vestanesia/page/investasi_page.dart';

class PembayaranDetail2 extends StatefulWidget {
  const PembayaranDetail2({super.key});

  @override
  State<PembayaranDetail2> createState() => _PembayaranDetail2State();
}

class _PembayaranDetail2State extends State<PembayaranDetail2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Pembayaran",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Center(
              child: Text(
                "2/2",
                style: TextStyle(color: Colors.black54, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Halo, Rahmat Hamid !",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),

              const SizedBox(height: 16),
              const Text(
                "Terima kasih sudah melakukan investasi \n di Vestanesia. Silahkan melakukan transfer ke \n nomor rekening yang tertera dibawah \n untuk menyelesaikan pembayaran investasi anda.",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),

              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Ringkasan Biaya",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 190,
                    height: 1,
                    color: Colors.grey,
                  )
                ],
              ),

              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Nilai Investasi",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Rp 100.000/Unit",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),

              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Jumlah Unit",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "3 Unit",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),

              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Total",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Rp 300.000",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 16,
                    ),
                  )
                ],
              ),

              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Daftar Rekening",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 190,
                    height: 1,
                    color: Colors.grey,
                  )
                ],
              ),

              const SizedBox(height: 16),
                Row(
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text:
                        "Untuk menyelesaikan pesanan, silahkan lakukan \n pembayaran di ATM atau melalui Internet Banking\n sebelum ",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        children: [
                          TextSpan(
                            text: "16 Feb 2020 07:49",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              //Mandiri
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Bank",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 13),
                        ),
                        const SizedBox(height: 4),
                        Image.asset(
                          "assets/mandiri.png",
                          height: 25,
                        ),
                      ],
                    ),

                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "No. Rekening",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 13),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "9087569204798",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),

                    
                    GestureDetector(
                      onTap: () {
                        Clipboard.setData(const ClipboardData(
                            text: "9087569204798"));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Nomor rekening disalin"),
                            duration: Duration(seconds: 1),
                          ),
                        );
                      },
                      child: const Text(
                        "Copy",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              //BRI
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Bank",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 13),
                        ),
                        const SizedBox(height: 4),
                        Image.asset(
                          "assets/bri.png",
                          height: 25,
                        ),
                      ],
                    ),

                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "No. Rekening",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 13),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "9087569204798",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),

                    
                    GestureDetector(
                      onTap: () {
                        Clipboard.setData(const ClipboardData(
                            text: "9087569204798"));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Nomor rekening disalin"),
                            duration: Duration(seconds: 1),
                          ),
                        );
                      },
                      child: const Text(
                        "Copy",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              //BCA
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Bank",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 13),
                        ),
                        const SizedBox(height: 4),
                        Image.asset(
                          "assets/bca.png",
                          height: 25,
                        ),
                      ],
                    ),

                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "No. Rekening",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 13),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "9087569204798",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),

                    
                    GestureDetector(
                      onTap: () {
                        Clipboard.setData(const ClipboardData(
                            text: "9087569204798"));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Nomor rekening disalin"),
                            duration: Duration(seconds: 1),
                          ),
                        );
                      },
                      child: const Text(
                        "Copy",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              //Mandiri Syariah
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Bank",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 13),
                        ),
                        const SizedBox(height: 4),
                        Image.asset(
                          "assets/mandiri_syariah.png",
                          height: 25,
                        ),
                      ],
                    ),

                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "No. Rekening",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 13),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "9087569204798",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),

                    
                    GestureDetector(
                      onTap: () {
                        Clipboard.setData(const ClipboardData(
                            text: "9087569204798"));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Nomor rekening disalin"),
                            duration: Duration(seconds: 1),
                          ),
                        );
                      },
                      child: const Text(
                        "Copy",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),
              
              //BNI SYARIAH
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Bank",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 13),
                        ),
                        const SizedBox(height: 4),
                        Image.asset(
                          "assets/bni_syariah.png",
                          height: 25,
                        ),
                      ],
                    ),

                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "No. Rekening",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 13),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "9087569204798",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),

                    
                    GestureDetector(
                      onTap: () {
                        Clipboard.setData(const ClipboardData(
                            text: "9087569204798"));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Nomor rekening disalin"),
                            duration: Duration(seconds: 1),
                          ),
                        );
                      },
                      child: const Text(
                        "Copy",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.grey.shade300)),
          ),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    side: BorderSide(color: Colors.green.shade600, width: 1.2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.green,
                    size: 16,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 4,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InvestasikuPage(),
                    ),
                  );
                  },
                  child: const Text(
                    "Saya Sudah Bayar",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
