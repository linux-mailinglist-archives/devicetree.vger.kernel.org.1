Return-Path: <devicetree+bounces-83327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9E9928039
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 04:16:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A48FC1F258B0
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 02:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 996867173C;
	Fri,  5 Jul 2024 02:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="zLVEfps3"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7122C29410
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 02:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720145741; cv=none; b=Dk4DuWwaARv1330WWK2LbS1Ml2BXd5norhDna0gZsTwASG5QWfDA1652gL6B+PtVL+94+NTKB+OU+54GnWsIeyb1FuW1QEBqqv8s+gaZyqa5eQWlRZmuyU7Hqk+HX0id0B9DyZDtazqMoA9s3cnVi/O3gdEThU+8tIyHJkI96+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720145741; c=relaxed/simple;
	bh=YSB06eHkR2N4elezzu9WKvc14r2Is2jvWfXF/+LXVwM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GCBNICW3RP2BOdW3Fhe2O4VP8j+2gl/UVMFoEiSmHdgJkcYd5v9J+zbtUJdp9C18MuTwhjTfrMOLUpoX71MbGE9xvADSOn8oPpMwr71zTilKNM4+Y5Q4vWbk5vWc8w6N6uY5b627DytI7tP7yJ+DbECAunpwStyKUhOQrkfR8+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=zLVEfps3; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id D77A32C0ADD;
	Fri,  5 Jul 2024 14:15:27 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1720145727;
	bh=lbvenbRSE4ChMsqKqz/KuRnODZd0Ubfp4JavkwXY2mA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=zLVEfps34rqKEDmP60+ufPCys2pP+trKnAhRL31HwkBjVM0d+88jiEnhGfchk0/U4
	 gSbxJAtnRZ5zy9/Pyvzk9cBm4Fh9884j+SunHjuaI6LfBHHJ8REpFk65QlGDDmhIuJ
	 B5j4roPxEOLehWpfVL5IEwmOKhXlh+0tQZNW8FGu91z69KkILSpsoZiPHL8+NpDWzs
	 XdNXdwi0bx37f0luTOtuenHD6PAYXUoCyCZvsl5M6YPD9Mt/j2NMXGhiCg9VNmW5+0
	 jvT9/ES+r1SdZfM3BcDnjnhmcEZDl4YnxfGLf6r8D1k1fGHaTLdvsBW5eLAhTwhpcv
	 eSrf+jcYG2eIg==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B6687573e0009>; Fri, 05 Jul 2024 14:15:26 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 9550C13EE85;
	Fri,  5 Jul 2024 14:15:26 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 92A88280930; Fri,  5 Jul 2024 14:15:26 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: tglx@linutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tsbogend@alpha.franken.de,
	daniel.lezcano@linaro.org,
	paulburton@kernel.org,
	peterz@infradead.org,
	mail@birger-koblitz.de,
	bert@biot.com,
	john@phrozen.org,
	sander@svanheule.net
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mips@vger.kernel.org,
	kabel@kernel.org,
	ericwouds@gmail.com,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v4 8/9] mips: generic: add fdt fixup for Realtek reference board
Date: Fri,  5 Jul 2024 14:15:19 +1200
Message-ID: <20240705021520.2737568-9-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240705021520.2737568-1-chris.packham@alliedtelesis.co.nz>
References: <20240705021520.2737568-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=CvQccW4D c=1 sm=1 tr=0 ts=6687573e a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=4kmOji7k6h8A:10 a=x-EMvBfK1kxHbq4Brr4A:9 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

The bootloader used on the Realtek RTL9302C boards is an ancient vendor
fork of U-Boot that doesn't understand device trees. So to run a modern
kernel it is necessary use one of the APPENDED_DTB options.

When appending the DTB the inintrd information, if present, needs to be
inserted into the /chosen device tree node. The bootloader provides the
initrd start/size via the firmware environment. Add a fdt fixup that
will update the device tree with the initrd information.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v4:
    - use correct compatible string
    - include printk.h
    - remove unnecessary include of of_address.h
    - put realtek_of_match entry on one line
    - one piece of feedback not addressed is whether this fixup is requir=
ed
      on more platforms. I don't have a supply of other mips platforms to=
 check
      so I can't confirm. It should be relatively easy to move
      realtek_add_initrd() to a more generic place, boards could then opt=
 in
      to it with the existing apply_mips_fdt_fixups() mechanism.
    Changes in v3:
    - None
    Changes in v2:
    - update compatible string

 arch/mips/generic/Makefile        |  1 +
 arch/mips/generic/board-realtek.c | 79 +++++++++++++++++++++++++++++++
 2 files changed, 80 insertions(+)
 create mode 100644 arch/mips/generic/board-realtek.c

diff --git a/arch/mips/generic/Makefile b/arch/mips/generic/Makefile
index 56011d738441..ea0e4ad5e600 100644
--- a/arch/mips/generic/Makefile
+++ b/arch/mips/generic/Makefile
@@ -13,3 +13,4 @@ obj-$(CONFIG_LEGACY_BOARD_SEAD3)	+=3D board-sead3.o
 obj-$(CONFIG_LEGACY_BOARD_OCELOT)	+=3D board-ocelot.o
 obj-$(CONFIG_MACH_INGENIC)			+=3D board-ingenic.o
 obj-$(CONFIG_VIRT_BOARD_RANCHU)		+=3D board-ranchu.o
+obj-$(CONFIG_MACH_REALTEK_RTL)		+=3D board-realtek.o
diff --git a/arch/mips/generic/board-realtek.c b/arch/mips/generic/board-=
realtek.c
new file mode 100644
index 000000000000..9cce6103d24e
--- /dev/null
+++ b/arch/mips/generic/board-realtek.c
@@ -0,0 +1,79 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2024 Allied Telesis
+ */
+
+#include <linux/errno.h>
+#include <linux/libfdt.h>
+#include <linux/printk.h>
+#include <linux/types.h>
+
+#include <asm/fw/fw.h>
+#include <asm/machine.h>
+
+static __init int realtek_add_initrd(void *fdt)
+{
+	int node, err;
+	u32 start, size;
+
+	node =3D fdt_path_offset(fdt, "/chosen");
+	if (node < 0) {
+		pr_err("/chosen node not found\n");
+		return -ENOENT;
+	}
+
+	start =3D fw_getenvl("initrd_start");
+	size =3D fw_getenvl("initrd_size");
+
+	if (start =3D=3D 0 && size =3D=3D 0)
+		return 0;
+
+	pr_info("Adding initrd info from environment\n");
+
+	err =3D fdt_setprop_u32(fdt, node, "linux,initrd-start", start);
+	if (err) {
+		pr_err("unable to set initrd-start: %d\n", err);
+		return err;
+	}
+
+	err =3D fdt_setprop_u32(fdt, node, "linux,initrd-end", start + size);
+	if (err) {
+		pr_err("unable to set initrd-end: %d\n", err);
+		return err;
+	}
+
+	return 0;
+}
+
+static const struct mips_fdt_fixup realtek_fdt_fixups[] __initconst =3D =
{
+	{ realtek_add_initrd, "add initrd" },
+	{},
+};
+
+static __init const void *realtek_fixup_fdt(const void *fdt, const void =
*match_data)
+{
+	static unsigned char fdt_buf[16 << 10] __initdata;
+	int err;
+
+	if (fdt_check_header(fdt))
+		panic("Corrupt DT");
+
+	fw_init_cmdline();
+
+	err =3D apply_mips_fdt_fixups(fdt_buf, sizeof(fdt_buf), fdt, realtek_fd=
t_fixups);
+	if (err)
+		panic("Unable to fixup FDT: %d", err);
+
+	return fdt_buf;
+
+}
+
+static const struct of_device_id realtek_of_match[] __initconst =3D {
+	{ .compatible =3D "realtek,rtl9302-soc" },
+	{}
+};
+
+MIPS_MACHINE(realtek) =3D {
+	.matches =3D realtek_of_match,
+	.fixup_fdt =3D realtek_fixup_fdt,
+};
--=20
2.45.2


