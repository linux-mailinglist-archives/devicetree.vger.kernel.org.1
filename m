Return-Path: <devicetree+bounces-228379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0C7BECF54
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 14:14:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DEE7585D64
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 12:13:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07F792FC863;
	Sat, 18 Oct 2025 12:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mMQ5Xz4T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B602FDC59
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 12:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760789537; cv=none; b=WacmxCDtviL1r+RhaR+OuK76N/CJQp02nUQ6yk7gWHcnCle5m8EtNweY+bGSyJZhNLHcyWFiU/RojugQvIbo6PPxkEKpUjuWY1MKDS3hJ7vpl9Qs16FYoXegeUlyE5wKLby8A3uEdXN8ij+UCnPqN76I4J4PyW1XzHVW91DM8vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760789537; c=relaxed/simple;
	bh=g3c67g0JuAQ/MF5TeeywHnKyQWy5NcHxIAatThiSlk0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KLXfeyVCUq49GRsXdkgZx4pCE3JypKFYD/CjQh7MviM5FMoh31NKRjF20vvodET86cbDPc0MEkPx7giHouBfcvJdOSLCpHEaLzClMqpRBQMnWTfljmDaGO1BcB9uSZSG5ubtjSTlQqQEP4B8MMMiflmy0SdMR1TvGZisrhKUjZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mMQ5Xz4T; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-427087ee59cso207865f8f.3
        for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 05:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760789534; x=1761394334; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X0t4ELZpwdFTZdxiqhNSp7y3ezBf0UkavYUxtLN6k7g=;
        b=mMQ5Xz4Tg13/YXtgSYozYmt/0dGtUOkwJn34nLZBnqSp13P2fdxaiZ6SfmISO/YQhN
         Da75lXbTnJGwVTFzpQFptGCm7h3k12rCkzke0qV+2MaMF6hj6TszX5kQCivkZLUi4Jo3
         0rAx5q8x97U0Yhh452RGQwidAlKQmBLa46ZnMvhRfCvB72BTLvXJHPIj1j+Z5afMIbdb
         KyrhbtRhD80N+O4fEMXFab8ORTjvyiGmByNy/+Dnp6mIKrRvnVagE6PezsWOftGoMhDk
         BY2YzzdaM0PTzr7hR0p6lvxcogWWfiziRLHk6/XIY92+6S8DLU5PooVq8E6OZSK5e95a
         Nd1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760789534; x=1761394334;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X0t4ELZpwdFTZdxiqhNSp7y3ezBf0UkavYUxtLN6k7g=;
        b=VHlqBSdiABnLqqLWw4R8vve2fiRnfykfTtxkGzdFBVxoaTum+88y+d4xMATkwxBlr8
         gtcILICPo4RTrzgqSozg1G/fjpZ9hpBFJnDR8Z8LEx1/EjYa8ugTvWTBPYTtXG79Kt7u
         t4YTKMczgfYoQ0qlhS6VFCRwot9fbQXLfN9YkjcBS28/74ZeMH+swzxnBp2y9EsyH9w9
         P7V9Nrp79DKSDGOYgfPpLIlRzy1uVSKKbDCmYZE5+TkF8tfLW5wPDAsuji3yhkbl/a5p
         tXJ8+CAgQ/+Unjqm7dVBCfRpSYxmopM6UhSU+5BJNQvEVvZBxwwecoqy1MvUrCeKFSyL
         Yofg==
X-Forwarded-Encrypted: i=1; AJvYcCXlglpT66X2RRFS+CVrwmuMjp4gslWbviSl0iqgsjEjU+mvMHf9O6JadLqTG96LoJf+ViKUEhlSTYOS@vger.kernel.org
X-Gm-Message-State: AOJu0YzciownYVFRmsuQYQI/tEm/kY+Q1CG2glC6Ob1efZeF0bMzWkHI
	0XzSd5/kFofeKixLIcKyTv1R0XIVlNt9NgPlNNAeBcPZf4pw6s3fZl+b
X-Gm-Gg: ASbGncvubPbVkAM3D45ORFSd7SaD6IT9ksmzOmv6FLrASmW+zjGSQF9gHmlJlbo5FXA
	yvZOGXYAMecezeTSnF7ws0HEjwCO8XgdGfc4bgfIoFtwBYybbq3RctxRuFvB+bY/sFOrxhMSfA4
	E+GIzFja4onQqKRqVRUXowcJmK/2b6zl8FjsaJxo+m5JC6eJLb/zvP388An8V7Rk2HT/mPKZvxx
	vDTCWEag0Ch88wkdmbTpREJ8AUsW0Y1qrJQgFm1xtw69UfhBon4kG8EpHJxNogtK7/GcCNBGf8c
	OQ+XLKSX/sV+u+Br3TRx8AgTcEs7vllGglo6APT+/M9AWIgX1+OZPVEdlvs8R/rbnOgyxCvqATY
	yADwpFgbe3sEYJ4cfMdcmVOeuqOxOBgXyTTA3Vc8sl9iCDr2xpXrzFgFys3rqTd7DFcTJhonv96
	HbmhSQ0xBNR/n9iC0S9t+pgIEt66AQXiAIc5r3wyp6z+uhOReevJI=
X-Google-Smtp-Source: AGHT+IHT8xlAGsvrmqTgrtBw+jrSf/dKaLIc5q20nHTcSN9mP4BR9UHnDuW98hA54JyOxHpF9e054A==
X-Received: by 2002:a5d:56d2:0:b0:426:fff3:5d0c with SMTP id ffacd0b85a97d-42704d87f2fmr2247814f8f.1.1760789533368;
        Sat, 18 Oct 2025 05:12:13 -0700 (PDT)
Received: from localhost.localdomain (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5a0f19sm4763812f8f.9.2025.10.18.05.12.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Oct 2025 05:12:13 -0700 (PDT)
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
Subject: [PATCH v7 11/11] ARM: dts: socfpga: add Enclustra SoM dts files
Date: Sat, 18 Oct 2025 12:11:55 +0000
Message-Id: <20251018121155.7743-12-l.rubusch@gmail.com>
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

Add the approach to set up a combination of Enclustra's SoM on a carrier
board and corresponding boot-mode as single device-tree target.

Signed-off-by: Lothar Rubusch <l.rubusch@gmail.com>
---
 arch/arm/boot/dts/intel/socfpga/Makefile      | 24 +++++++++++++++++++
 .../socfpga_arria10_mercury_aa1_pe1_emmc.dts  | 16 +++++++++++++
 .../socfpga_arria10_mercury_aa1_pe1_qspi.dts  | 16 +++++++++++++
 .../socfpga_arria10_mercury_aa1_pe1_sdmmc.dts | 16 +++++++++++++
 .../socfpga_arria10_mercury_aa1_pe3_emmc.dts  | 16 +++++++++++++
 .../socfpga_arria10_mercury_aa1_pe3_qspi.dts  | 16 +++++++++++++
 .../socfpga_arria10_mercury_aa1_pe3_sdmmc.dts | 16 +++++++++++++
 .../socfpga_arria10_mercury_aa1_st1_emmc.dts  | 16 +++++++++++++
 .../socfpga_arria10_mercury_aa1_st1_qspi.dts  | 16 +++++++++++++
 .../socfpga_arria10_mercury_aa1_st1_sdmmc.dts | 16 +++++++++++++
 .../socfpga_cyclone5_mercury_sa1_pe1_emmc.dts | 16 +++++++++++++
 .../socfpga_cyclone5_mercury_sa1_pe1_qspi.dts | 16 +++++++++++++
 ...socfpga_cyclone5_mercury_sa1_pe1_sdmmc.dts | 16 +++++++++++++
 .../socfpga_cyclone5_mercury_sa1_pe3_emmc.dts | 16 +++++++++++++
 .../socfpga_cyclone5_mercury_sa1_pe3_qspi.dts | 16 +++++++++++++
 ...socfpga_cyclone5_mercury_sa1_pe3_sdmmc.dts | 16 +++++++++++++
 .../socfpga_cyclone5_mercury_sa1_st1_emmc.dts | 16 +++++++++++++
 .../socfpga_cyclone5_mercury_sa1_st1_qspi.dts | 16 +++++++++++++
 ...socfpga_cyclone5_mercury_sa1_st1_sdmmc.dts | 16 +++++++++++++
 .../socfpga_cyclone5_mercury_sa2_pe1_qspi.dts | 16 +++++++++++++
 ...socfpga_cyclone5_mercury_sa2_pe1_sdmmc.dts | 16 +++++++++++++
 .../socfpga_cyclone5_mercury_sa2_pe3_qspi.dts | 16 +++++++++++++
 ...socfpga_cyclone5_mercury_sa2_pe3_sdmmc.dts | 16 +++++++++++++
 .../socfpga_cyclone5_mercury_sa2_st1_qspi.dts | 16 +++++++++++++
 ...socfpga_cyclone5_mercury_sa2_st1_sdmmc.dts | 16 +++++++++++++
 25 files changed, 408 insertions(+)
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe1_emmc.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe1_qspi.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe1_sdmmc.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe3_emmc.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe3_qspi.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe3_sdmmc.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_st1_emmc.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_st1_qspi.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_st1_sdmmc.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_emmc.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_qspi.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_sdmmc.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_emmc.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_qspi.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_sdmmc.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_emmc.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_qspi.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_sdmmc.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe1_qspi.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe1_sdmmc.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe3_qspi.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe3_sdmmc.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_st1_qspi.dts
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_st1_sdmmc.dts

diff --git a/arch/arm/boot/dts/intel/socfpga/Makefile b/arch/arm/boot/dts/intel/socfpga/Makefile
index 73a912ec6d95..8df0976da01c 100644
--- a/arch/arm/boot/dts/intel/socfpga/Makefile
+++ b/arch/arm/boot/dts/intel/socfpga/Makefile
@@ -2,6 +2,30 @@
 dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += \
 	socfpga_arria5_socdk.dtb \
 	socfpga_arria10_chameleonv3.dtb \
+	socfpga_arria10_mercury_aa1_pe1_emmc.dtb \
+	socfpga_arria10_mercury_aa1_pe1_qspi.dtb \
+	socfpga_arria10_mercury_aa1_pe1_sdmmc.dtb \
+	socfpga_arria10_mercury_aa1_pe3_emmc.dtb \
+	socfpga_arria10_mercury_aa1_pe3_qspi.dtb \
+	socfpga_arria10_mercury_aa1_pe3_sdmmc.dtb \
+	socfpga_arria10_mercury_aa1_st1_emmc.dtb \
+	socfpga_arria10_mercury_aa1_st1_qspi.dtb \
+	socfpga_arria10_mercury_aa1_st1_sdmmc.dtb \
+	socfpga_cyclone5_mercury_sa1_pe1_emmc.dtb \
+	socfpga_cyclone5_mercury_sa1_pe1_qspi.dtb \
+	socfpga_cyclone5_mercury_sa1_pe1_sdmmc.dtb \
+	socfpga_cyclone5_mercury_sa1_pe3_emmc.dtb \
+	socfpga_cyclone5_mercury_sa1_pe3_qspi.dtb \
+	socfpga_cyclone5_mercury_sa1_pe3_sdmmc.dtb \
+	socfpga_cyclone5_mercury_sa1_st1_emmc.dtb \
+	socfpga_cyclone5_mercury_sa1_st1_qspi.dtb \
+	socfpga_cyclone5_mercury_sa1_st1_sdmmc.dtb \
+	socfpga_cyclone5_mercury_sa2_pe1_qspi.dtb \
+	socfpga_cyclone5_mercury_sa2_pe1_sdmmc.dtb \
+	socfpga_cyclone5_mercury_sa2_pe3_qspi.dtb \
+	socfpga_cyclone5_mercury_sa2_pe3_sdmmc.dtb \
+	socfpga_cyclone5_mercury_sa2_st1_qspi.dtb \
+	socfpga_cyclone5_mercury_sa2_st1_sdmmc.dtb \
 	socfpga_arria10_socdk_nand.dtb \
 	socfpga_arria10_socdk_qspi.dtb \
 	socfpga_arria10_socdk_sdmmc.dtb \
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe1_emmc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe1_emmc.dts
new file mode 100644
index 000000000000..b6cca0b5fd09
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe1_emmc.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_arria10_mercury_aa1.dtsi"
+#include "socfpga_enclustra_mercury_pe1.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_emmc.dtsi"
+
+/ {
+	model = "Enclustra Mercury SA1 on Mercury+ PE1 Base Board";
+	compatible = "enclustra,mercury-sa1-pe1", "enclustra,mercury-sa1",
+		     "altr,socfpga-cyclone5", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe1_qspi.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe1_qspi.dts
new file mode 100644
index 000000000000..6ad023477cd2
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe1_qspi.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_arria10_mercury_aa1.dtsi"
+#include "socfpga_enclustra_mercury_pe1.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_qspi.dtsi"
+
+/ {
+	model = "Enclustra Mercury+ AA1 on Mercury+ PE1 Base Board";
+	compatible = "enclustra,mercury-aa1-pe1", "enclustra,mercury-aa1",
+		     "altr,socfpga-arria10", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe1_sdmmc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe1_sdmmc.dts
new file mode 100644
index 000000000000..653c9a86516b
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe1_sdmmc.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_arria10_mercury_aa1.dtsi"
+#include "socfpga_enclustra_mercury_pe1.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_sdmmc.dtsi"
+
+/ {
+	model = "Enclustra Mercury+ AA1 on Mercury+ PE1 Base Board";
+	compatible = "enclustra,mercury-aa1-pe1", "enclustra,mercury-aa1",
+		     "altr,socfpga-arria10", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe3_emmc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe3_emmc.dts
new file mode 100644
index 000000000000..ae9c7c6a2370
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe3_emmc.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_arria10_mercury_aa1.dtsi"
+#include "socfpga_enclustra_mercury_pe3.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_emmc.dtsi"
+
+/ {
+	model = "Enclustra Mercury+ AA1 on Mercury+ PE3 Base Board";
+	compatible = "enclustra,mercury-aa1-pe3", "enclustra,mercury-aa1",
+		     "altr,socfpga-arria10", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe3_qspi.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe3_qspi.dts
new file mode 100644
index 000000000000..c3a0c30a07a5
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe3_qspi.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_arria10_mercury_aa1.dtsi"
+#include "socfpga_enclustra_mercury_pe3.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_qspi.dtsi"
+
+/ {
+	model = "Enclustra Mercury+ AA1 on Mercury+ PE3 Base Board";
+	compatible = "enclustra,mercury-aa1-pe3", "enclustra,mercury-aa1",
+		     "altr,socfpga-arria10", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe3_sdmmc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe3_sdmmc.dts
new file mode 100644
index 000000000000..dc1e1ad20381
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_pe3_sdmmc.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_arria10_mercury_aa1.dtsi"
+#include "socfpga_enclustra_mercury_pe3.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_sdmmc.dtsi"
+
+/ {
+	model = "Enclustra Mercury+ AA1 on Mercury+ PE3 Base Board";
+	compatible = "enclustra,mercury-aa1-pe3", "enclustra,mercury-aa1",
+		     "altr,socfpga-arria10", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_st1_emmc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_st1_emmc.dts
new file mode 100644
index 000000000000..61d5e4c85d9b
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_st1_emmc.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_arria10_mercury_aa1.dtsi"
+#include "socfpga_enclustra_mercury_st1.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_emmc.dtsi"
+
+/ {
+	model = "Enclustra Mercury+ AA1 on Mercury+ ST1 Base Board";
+	compatible = "enclustra,mercury-aa1-st1", "enclustra,mercury-aa1",
+		     "altr,socfpga-arria10", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_st1_qspi.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_st1_qspi.dts
new file mode 100644
index 000000000000..a3b99c9b16fd
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_st1_qspi.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_arria10_mercury_aa1.dtsi"
+#include "socfpga_enclustra_mercury_st1.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_qspi.dtsi"
+
+/ {
+	model = "Enclustra Mercury+ AA1 on Mercury+ ST1 Base Board";
+	compatible = "enclustra,mercury-aa1-st1", "enclustra,mercury-aa1",
+		     "altr,socfpga-arria10", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_st1_sdmmc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_st1_sdmmc.dts
new file mode 100644
index 000000000000..5deb289e2b55
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_aa1_st1_sdmmc.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_arria10_mercury_aa1.dtsi"
+#include "socfpga_enclustra_mercury_st1.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_sdmmc.dtsi"
+
+/ {
+	model = "Enclustra Mercury+ AA1 on Mercury+ ST1 Base Board";
+	compatible = "enclustra,mercury-aa1-st1", "enclustra,mercury-aa1",
+		     "altr,socfpga-arria10", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_emmc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_emmc.dts
new file mode 100644
index 000000000000..85d6146da0da
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_emmc.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_cyclone5_mercury_sa1.dtsi"
+#include "socfpga_enclustra_mercury_pe1.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_emmc.dtsi"
+
+/ {
+	model = "Enclustra Mercury SA1 on Mercury+ PE1 Base Board";
+	compatible = "enclustra,mercury-sa1-pe1", "enclustra,mercury-aa1",
+		     "altr,socfpga-arria10", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_qspi.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_qspi.dts
new file mode 100644
index 000000000000..770ab680a18c
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_qspi.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_cyclone5_mercury_sa1.dtsi"
+#include "socfpga_enclustra_mercury_pe1.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_qspi.dtsi"
+
+/ {
+	model = "Enclustra Mercury SA1 on Mercury+ PE1 Base Board";
+	compatible = "enclustra,mercury-sa1-pe1", "enclustra,mercury-sa1",
+		     "altr,socfpga-cyclone5", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_sdmmc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_sdmmc.dts
new file mode 100644
index 000000000000..990ca0fec61e
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_sdmmc.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_cyclone5_mercury_sa1.dtsi"
+#include "socfpga_enclustra_mercury_pe1.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_sdmmc.dtsi"
+
+/ {
+	model = "Enclustra Mercury SA1 on Mercury+ PE1 Base Board";
+	compatible = "enclustra,mercury-sa1-pe1", "enclustra,mercury-sa1",
+		     "altr,socfpga-cyclone5", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_emmc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_emmc.dts
new file mode 100644
index 000000000000..6c8fd5b0d6eb
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_emmc.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_cyclone5_mercury_sa1.dtsi"
+#include "socfpga_enclustra_mercury_pe3.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_emmc.dtsi"
+
+/ {
+	model = "Enclustra Mercury SA1 on Mercury+ PE3 Base Board";
+	compatible = "enclustra,mercury-sa1-pe3", "enclustra,mercury-sa1",
+		     "altr,socfpga-cyclone5", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_qspi.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_qspi.dts
new file mode 100644
index 000000000000..3292426078a1
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_qspi.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_cyclone5_mercury_sa1.dtsi"
+#include "socfpga_enclustra_mercury_pe3.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_qspi.dtsi"
+
+/ {
+	model = "Enclustra Mercury SA1 on Mercury+ PE3 Base Board";
+	compatible = "enclustra,mercury-sa1-pe3", "enclustra,mercury-sa1",
+		     "altr,socfpga-cyclone5", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_sdmmc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_sdmmc.dts
new file mode 100644
index 000000000000..1eb10b5244dd
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_sdmmc.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_cyclone5_mercury_sa1.dtsi"
+#include "socfpga_enclustra_mercury_pe3.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_sdmmc.dtsi"
+
+/ {
+	model = "Enclustra Mercury SA1 on Mercury+ PE3 Base Board";
+	compatible = "enclustra,mercury-sa1-pe3", "enclustra,mercury-sa1",
+		     "altr,socfpga-cyclone5", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_emmc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_emmc.dts
new file mode 100644
index 000000000000..8c97b5b3adea
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_emmc.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_cyclone5_mercury_sa1.dtsi"
+#include "socfpga_enclustra_mercury_st1.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_emmc.dtsi"
+
+/ {
+	model = "Enclustra Mercury SA1 on Mercury+ ST1 Base Board";
+	compatible = "enclustra,mercury-sa1-st1", "enclustra,mercury-sa1",
+		     "altr,socfpga-cyclone5", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_qspi.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_qspi.dts
new file mode 100644
index 000000000000..e6d14b22e41d
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_qspi.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_cyclone5_mercury_sa1.dtsi"
+#include "socfpga_enclustra_mercury_st1.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_qspi.dtsi"
+
+/ {
+	model = "Enclustra Mercury SA1 on Mercury+ ST1 Base Board";
+	compatible = "enclustra,mercury-sa1-st1", "enclustra,mercury-sa1",
+		     "altr,socfpga-cyclone5", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_sdmmc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_sdmmc.dts
new file mode 100644
index 000000000000..beaeca94d4df
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_sdmmc.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_cyclone5_mercury_sa1.dtsi"
+#include "socfpga_enclustra_mercury_st1.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_sdmmc.dtsi"
+
+/ {
+	model = "Enclustra Mercury SA1 on Mercury+ ST1 Base Board";
+	compatible = "enclustra,mercury-sa1-st1", "enclustra,mercury-sa1",
+		     "altr,socfpga-cyclone5", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe1_qspi.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe1_qspi.dts
new file mode 100644
index 000000000000..6f79d9ed1d36
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe1_qspi.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_cyclone5_mercury_sa2.dtsi"
+#include "socfpga_enclustra_mercury_pe1.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_qspi.dtsi"
+
+/ {
+	model = "Enclustra Mercury+ SA2 on Mercury+ PE1 Base Board";
+	compatible = "enclustra,mercury-sa2-pe1", "enclustra,mercury-sa2",
+		     "altr,socfpga-cyclone5", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe1_sdmmc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe1_sdmmc.dts
new file mode 100644
index 000000000000..b94bd8bafc26
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe1_sdmmc.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_cyclone5_mercury_sa2.dtsi"
+#include "socfpga_enclustra_mercury_pe1.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_sdmmc.dtsi"
+
+/ {
+	model = "Enclustra Mercury+ SA2 on Mercury+ PE1 Base Board";
+	compatible = "enclustra,mercury-sa2-pe1", "enclustra,mercury-sa2",
+		     "altr,socfpga-cyclone5", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe3_qspi.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe3_qspi.dts
new file mode 100644
index 000000000000..51fc4a22937a
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe3_qspi.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_cyclone5_mercury_sa2.dtsi"
+#include "socfpga_enclustra_mercury_pe3.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_qspi.dtsi"
+
+/ {
+	model = "Enclustra Mercury+ SA2 on Mercury+ PE3 Base Board";
+	compatible = "enclustra,mercury-sa2-pe3", "enclustra,mercury-sa2",
+		     "altr,socfpga-cyclone5", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe3_sdmmc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe3_sdmmc.dts
new file mode 100644
index 000000000000..e4209209f4fa
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe3_sdmmc.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_cyclone5_mercury_sa2.dtsi"
+#include "socfpga_enclustra_mercury_pe3.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_sdmmc.dtsi"
+
+/ {
+	model = "Enclustra Mercury+ SA2 on Mercury+ PE3 Base Board";
+	compatible = "enclustra,mercury-sa2-pe3", "enclustra,mercury-sa2",
+		     "altr,socfpga-cyclone5", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_st1_qspi.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_st1_qspi.dts
new file mode 100644
index 000000000000..ab4549a0d455
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_st1_qspi.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_cyclone5_mercury_sa2.dtsi"
+#include "socfpga_enclustra_mercury_st1.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_qspi.dtsi"
+
+/ {
+	model = "Enclustra Mercury+ SA2 on Mercury+ ST1 Base Board";
+	compatible = "enclustra,mercury-sa2-st1", "enclustra,mercury-sa2",
+		     "altr,socfpga-cyclone5", "altr,socfpga";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_st1_sdmmc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_st1_sdmmc.dts
new file mode 100644
index 000000000000..ebe62879c3fb
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_st1_sdmmc.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+/dts-v1/;
+
+#include "socfpga_cyclone5_mercury_sa2.dtsi"
+#include "socfpga_enclustra_mercury_st1.dtsi"
+#include "socfpga_enclustra_mercury_bootmode_sdmmc.dtsi"
+
+/ {
+	model = "Enclustra Mercury+ SA2 on Mercury+ ST1 Base Board";
+	compatible = "enclustra,mercury-sa2-st1", "enclustra,mercury-sa2",
+		     "altr,socfpga-cyclone5", "altr,socfpga";
+};
-- 
2.39.5


