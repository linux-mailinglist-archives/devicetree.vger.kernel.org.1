Return-Path: <devicetree+bounces-228369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D094DBECF1B
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 14:12:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ABA024E5D8C
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 12:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53AB92D3EC7;
	Sat, 18 Oct 2025 12:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kK/h7Wzl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9CC277C87
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 12:12:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760789524; cv=none; b=Jni9Ou6fQRPpKbGadIVo7zo98tr94x2p0llfcXZ1utiHprWktS39DqlgqQK9Nm6Wr6WhNrQo/TVG2v9iHJA1Q4wyY+4vflotvHKCnFG9rdtEc/P4/cQrWS3zyw+7jLE9LAUEqiIAO3c/j0DYGavqNczI1X7IfyF8GQWSuYuGec4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760789524; c=relaxed/simple;
	bh=Zm/F6uFyMc4nnEbtPWODklxGuzdzraA3ZsA0+iIdu1I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eNSKBl2F9JJr5/r7Tyodg6j0jxy2/HLwz/cWdX5B54pLTf6k8VCscSNdHI7yPOoBBcNmr5JSlwyQcdu3gdyma9BfpqP2N4Txn7E2gg0W20aAyblYBLLTZ/G8sxBHRcHBkgUAZD7b7YZVexxbZEfPOR+3zhiIzOqTU3IZL5609nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kK/h7Wzl; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-4270900c887so188610f8f.1
        for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 05:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760789520; x=1761394320; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/mFohtVVslXrTyo8hMYkLuQEeqxiLiM0O92p+2v9UC8=;
        b=kK/h7WzlJjjMGW95mE2R5G4XVJ4OIde2XRrdgxdNuxl1k3E7Oa7izSQkdWe7eJhY62
         w0OgJ3YuRrZz0Bj2OCa05QT1TVSgT29DSZCId4AETCLQ0EROO8X8UyjkEgbTh1X1BOls
         gH3ChmKvHOnjdpuWS0Ch8c9vTqogOOXXZQJWDuWXU8cPWWcIL8Uq72EZDxnffKqsza5j
         2YokSavg+5PBeSpglDQ/Xf6jvsPfxck1LQ/x15cfXiXHfUjqJQ1qGDUai5wWhjA7m3O1
         u+KtNzV9u5FWQJO4svBqaGcI0qi83tiKlaz/MZ6ul5Hpjzn6Z/YcBpI1P4XcSr0yG2Ea
         K1VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760789520; x=1761394320;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/mFohtVVslXrTyo8hMYkLuQEeqxiLiM0O92p+2v9UC8=;
        b=pdUfJ41xb6boY2tNxYmOUoNFHNtR6eMf3SJOTLQUhW+VcdfeED8zRokEDU4FnnhjZr
         KqiBokkHTxBXHyatsM6L574e169Oy96FzJZ2dtH0KwL25nib/vHxGs1+khWRuvtIO/xI
         mba5NN/CLKyRyLxDWC7cFEVyX8ok7QazS63Z6Tkl7j2Bkux82rib051CKmF2b1b+KUYy
         So/UYO7T0PqRSaGCjuBu6yhjoc6jYhI8SZsQjvS+ZMyIsnnHMiAzkgUOIaE8wWgTTngd
         3A3KUotEtKIisxDH+XVaX0V+D56QcB9P9lkkBjKouMocoBR+ihlAexOikhzYq1CcebcV
         /RFg==
X-Forwarded-Encrypted: i=1; AJvYcCWXEsJ50ZjVrJsD9aOForG/vZxxySPHBlOVpI78jZ0wIWqTSTQ7ivm8wbM4k8h7QGYCgOQA+cfOB37K@vger.kernel.org
X-Gm-Message-State: AOJu0YxI4xcmYbCcikukCgB7yLgmFyP1+ockkF6mpcxcMb1Qf/ujxC8w
	Nseg8wEekHNJNJPOfw1bwoGlbQ0NxVwx+ckb4yyCbQ0SsbJg8RL+arnL
X-Gm-Gg: ASbGncukIx3r4Mtpkqkof+OtXfHUsVk/8ch3Rdfv4vFuIyJQkqeEA+BP1P/5x/dsx1J
	GMkAZd8abpiMWb9IiFim4Fu8EXWHSGb1oPa4OTx9N/SATTonUQqs9GD41Ht4/+w3bip1E09ZzSL
	EQhlzdSB6jMMvVyhlymU+L7cYFG0buysvlcBGiTKDQjDk3XY+nkbLe2+R01cU9VKDC2uVKxeffz
	VNArgDCivqWKPhpK848hXATRVB0Qv6J0Oeh6PmnNyW3C/GyJ5Z4pH9P99NToNucPBo2ueWHY26T
	6DB8YuC4wYSpVW5uIOZgpPOV02IU7DjqhHSCMg3YuKusVozJi736BsgmG+Qmyxxb+4Q4IbX1WBp
	+wShkqBWk1WlWDUOrQd3jpmeVBErzFEbL6BP17wk2pX5KC5eLPHRckOniNhtcxCaG7wI/QHtItA
	butxziHMQCXcJHmYOAUf+0F0tipeDZRrBa3QoK6G9m8IjvDbn/W6A=
X-Google-Smtp-Source: AGHT+IH6Mz87+NrxpXtmwU/KYU3mRF4neYs964czY7WUGPjpjN+OX7ReDKdoBL663BBjzeMtGF0DiQ==
X-Received: by 2002:a05:6000:2383:b0:425:6794:f19b with SMTP id ffacd0b85a97d-42704d14627mr2731734f8f.2.1760789519475;
        Sat, 18 Oct 2025 05:11:59 -0700 (PDT)
Received: from localhost.localdomain (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5a0f19sm4763812f8f.9.2025.10.18.05.11.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Oct 2025 05:11:59 -0700 (PDT)
From: Lothar Rubusch <l.rubusch@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dinguyen@kernel.org,
	martin.petersen@oracle.com,
	pabeni@redhat.com,
	rostedt@goodmis.org,
	bhelgaas@google.com,
	l.rubusch@gmail.com
Cc: arnd@arndb.de,
	matthew.gerlach@altera.com,
	tien.fong.chee@altera.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 01/11] ARM: dts: socfpga: add Enclustra boot-mode dtsi
Date: Sat, 18 Oct 2025 12:11:45 +0000
Message-Id: <20251018121155.7743-2-l.rubusch@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251018121155.7743-1-l.rubusch@gmail.com>
References: <20251018121155.7743-1-l.rubusch@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add generic boot-mode support to Enclustra Arria10 and Cyclone5 boards.
Some Enclustra carrier boards need hardware adjustments specific to the
selected boot-mode.

Enclustra's Arria10 SoMs allow for booting from different media. By
muxing certain IO pins, the media can be selected. This muxing can be
done by gpios at runtime e.g. when flashing QSPI from off the
bootloader. But also to have statically certain boot media available,
certain adjustments to the DT are needed:
- SD: QSPI must be disabled
- eMMC: QSPI must be disabled, bus width can be doubled to 8 byte
- QSPI: any mmc is disabled, QSPI then defaults to be enabled

The boot media must be accessible to the bootloader, e.g. to load a
bitstream file, but also to the system to mount the rootfs and to use
the specific performance.

Signed-off-by: Andreas Buerkler <andreas.buerkler@enclustra.com>
Signed-off-by: Lothar Rubusch <l.rubusch@gmail.com>
---
 .../socfpga_enclustra_mercury_bootmode_emmc.dtsi     | 12 ++++++++++++
 .../socfpga_enclustra_mercury_bootmode_qspi.dtsi     |  8 ++++++++
 .../socfpga_enclustra_mercury_bootmode_sdmmc.dtsi    |  8 ++++++++
 3 files changed, 28 insertions(+)
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_bootmode_emmc.dtsi
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_bootmode_qspi.dtsi
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_bootmode_sdmmc.dtsi

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_bootmode_emmc.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_bootmode_emmc.dtsi
new file mode 100644
index 000000000000..d79cb64da0de
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_bootmode_emmc.dtsi
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+&qspi {
+	status = "disabled";
+};
+
+&mmc {
+	bus-width = <8>;
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_bootmode_qspi.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_bootmode_qspi.dtsi
new file mode 100644
index 000000000000..5ba21dd8f5ba
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_bootmode_qspi.dtsi
@@ -0,0 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+&mmc {
+	status = "disabled";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_bootmode_sdmmc.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_bootmode_sdmmc.dtsi
new file mode 100644
index 000000000000..2b102e0b6217
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_bootmode_sdmmc.dtsi
@@ -0,0 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+&qspi {
+	status = "disabled";
+};
-- 
2.39.5


