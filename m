Return-Path: <devicetree+bounces-227317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 78248BE0837
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:47:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05B8B48075F
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:44:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5541A30C34B;
	Wed, 15 Oct 2025 19:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RmQATqIh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74C22D3ECA
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760557472; cv=none; b=Ow0A7004MX6JgFrNtRuOG6TVOZ0zaA9xleQhX/eEhAjdZ7aXhVl3yVIA5+Bb9gAoVQy2C7A6RJjAUq2eiOuiMFvp4wOsRbQ64ql2JihjcnTqAza4xUrC63xwViabHOxDc+Gix2WLvZD4p+sszGyk4UNIxiBoSJPXM2NghVpW5tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760557472; c=relaxed/simple;
	bh=Zm/F6uFyMc4nnEbtPWODklxGuzdzraA3ZsA0+iIdu1I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=p5uT6gJGhiG5UAtoZMdU1JJ5qQYQKEwmAdcHSZF72v0AJW+kEtu/RzWQK9yeZ4WWpsgInrx4QMk9oDgT7JCBwDjodLa39qlDBExjYq6ClKP2Gj5OpC1uikiqCa60m3ZGwu3WoyZIF0Xxlpqt/s82rRGM0u0ppUzmJaqPXy4V3Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RmQATqIh; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-470ffe122b7so1252475e9.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760557468; x=1761162268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/mFohtVVslXrTyo8hMYkLuQEeqxiLiM0O92p+2v9UC8=;
        b=RmQATqIhQnJlpMMpZy6+za6mpegcAdg2uxkvxUUsWDzQizv9ZOlu/+EJOUWsZn3Vuf
         pyRjjT5wiH1cIi8r4eXwaSa81XAtthXC3+7t4KTR31+zVcs3JuW9X+bdnI9zaAtIKi5K
         Q+eOVvsDq/q+wY57q1+RBHFj4QKKcg++3bwDq8PvB+cDU88iv0TJqybQvJB1fhYoToMz
         YaaQBTVsjFNzzQjUWN0RDFQUvc98+yea9vCpo3r0SE3A/2n8E8f+4FzFjxc5gfcJhSYr
         +3drp4+x7IXV6pcIHt/aGa4MzLJRpt4x9IsFzom92SJYBr2VZdh+DQRq3HtiQGBnEfKb
         XOnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760557468; x=1761162268;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/mFohtVVslXrTyo8hMYkLuQEeqxiLiM0O92p+2v9UC8=;
        b=c+DDNQaKn+V11hBjpXaZWRHgMlbyi6hYFhX/z+lvjvVMVn96KbJEfp69ujf7qDFOy4
         +liYtwDwoV1mQahAYXlp6Bz4Rbce1gBpUXu7NjuTd4oMfROV+3NJBh+u0GInEgMUSweo
         Ts/AM3l34+lXV8PRgpQi27tQrDYEJfmtbl/Y5LzJMmCN1C3aOO5gKVqrMoUFNLahCxJZ
         A6xVNdtIWaLvamFX+mPN/D33Un8vksRB9+01TAZXtaYiVzOygkr9YHZdFhBfkdhjq18V
         AcRxOFUHOKY2uoSNKxxzSfGeMWCS4JL8rNePfSyZ0tNMGj5xeS+XzLkdvPJU4YpqP6uR
         HUJg==
X-Forwarded-Encrypted: i=1; AJvYcCVAwM1pfhrFFOFPk9hcax1gO1Tca6TkXLSjfNDoX82e8fiWtzKEWPFre1bTmj9nBMtw0UyHaDr7wQD+@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9odJxO5SqY9z5ffBLWqcrktJu392NaAIDKCe1GcKjhLxtUIvL
	OM1ENBPLqP5cuf37BkYaoPe7XLq1G1e+4Th8qpTp3W3gTXUFup1p504y
X-Gm-Gg: ASbGncvLlSb8hYi6IpCYHbX2DO3mlv58E5qdPZlcn/yZUsIxtHUtdAvSdSeLA2CBS1W
	5AsIf2L/B6WortzSU9abQOaBTf6IxBJlmOYHsLnwdTzolZidVZDWaNN9GyB8w91kYXcnSVrjGQ5
	0Sq3etyFHniEFfvTLPBxt+TEFtxGg471Zv3MGzhplX7SocbdKuZhKnwCuYbX3AACeuUrmfopBcj
	pU2e7KeEUAImKwzCUZJQemI52P8Oa2Fx9ralWnyEkq+cVG6nWdTDeXEr2+VXBQWbjPNZk58wV70
	DOgEMlGMxW/REXY67fpGSkDyj2eY3kb8jOh3fW9PaTHuB5uhT2fAIPJbRyYFTxGCTeYidJ9f7Fw
	08NwlPLt4vtErfsiTWJKRnmGlNkZS+GofTowCUZXYbtt5vvZM8/qSHHY/7CACAMMN7mEhfJaZvs
	YAxZuPF2cD4xsq3XuxzzkPKxBV/V58bFmxZiHoIsQbtj4JS4Yu
X-Google-Smtp-Source: AGHT+IFu9by7ZXfU1sgF4e/dNByhsbrzXetpPXsPwzZE529Y3Mf5qtbWILesQssXcoywCNc8g0IyDA==
X-Received: by 2002:a05:600c:4589:b0:45f:2d70:2af6 with SMTP id 5b1f17b1804b1-46fa9a8b2damr119306735e9.1.1760557468065;
        Wed, 15 Oct 2025 12:44:28 -0700 (PDT)
Received: from d25728c254ff.v.cablecom.net (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5825aasm30291626f8f.14.2025.10.15.12.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 12:44:27 -0700 (PDT)
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
Subject: [PATCH v6 01/11] ARM: dts: socfpga: add Enclustra boot-mode dtsi
Date: Wed, 15 Oct 2025 19:44:06 +0000
Message-Id: <20251015194416.33502-2-l.rubusch@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251015194416.33502-1-l.rubusch@gmail.com>
References: <20251015194416.33502-1-l.rubusch@gmail.com>
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


