Return-Path: <devicetree+bounces-146070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0BFA332D2
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 23:44:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E18F118894FD
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 22:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC642211469;
	Wed, 12 Feb 2025 22:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c9rtQIq2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2440B204591
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739400242; cv=none; b=BJtdDGId1sHdD51NhhKF/cyZwOYtxUHZrYwNPK/oGy3K7lk9fgshdsp4oh0y5xTrmq3nPDpIhGxEDg2IH6/CXG/soy+Cej63N5fcGWeO8t6gKvlOkfZ9lxe1Eq7Bvix2HzLGKJ4Ofp5EZ+zM9PieT6Z/hjrfPzwHJDEwMfb6lug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739400242; c=relaxed/simple;
	bh=//HBoUthAeeT6PrSozHevLWbDPnUTHYOQLL9FkxNksc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DQ5XIUhM0SxgviGbQcSUhKDAtu2JEvgpWgWLng/ky1oxuVmcfnK+NmEIDDpKP/VPcZtmip8jOW70aazuTWdt2kgMu6OInjroYX4AT18QbyagEDIhmiiWLF8My2s77zpNGiJBnInBETr5FhPCdC6NvDffPA3jTMrwvOLtgCQknMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c9rtQIq2; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5dc89df7eccso305640a12.3
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 14:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739400239; x=1740005039; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h7ID8a2waLPqEy758YEiSSOlOf5nB14uzjzhQ1m474o=;
        b=c9rtQIq2raz066SzKpuhvAmbku02jVsgfTMg4TE5iKgUoXyKbv/lGOD/ADi50eu/1y
         XCm4Qtio90OgsMkJ5L1fVJ1EThSX9bJkVAYioLoscOGPxK5EjtPyiztCp7jENCJhvpof
         O/zCGxZO9gkFSbCR5mHdt0cAYlL7RH5bWp2bz+OoGXluPELdVHO4Js29F6r+RNyLI3PO
         ZncmtDCmjeC7EpfrpG2OeQHADVAhYQ/QGuMnKwnnW/Va31Ue/EgoW839Ce+qDR1BekJb
         uBfTTMERf55fVDPz0W35lpf9nmSRe4s7MJ+PJwP5mPVTyPvtp5ytM/R48QdTCkU2wkVw
         sLhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739400239; x=1740005039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h7ID8a2waLPqEy758YEiSSOlOf5nB14uzjzhQ1m474o=;
        b=hzGRddlWRW2eLxc4hNXqAXp3rMgcLAvx7M6LSc6itFbFbEuNzHFJz7eerVuA85B5gl
         iK1hCS11bZci/vtY3aPr9cAFjUVrpbFjSPHDjshpP51pS/6xLKOKpAG+wEzcWGgA4Fib
         tBhHDyx7hasYxECjST32vkEE2b+G6cOTzZay6OvqTnxg+nBgtAloW41pgxMAqfJvqnMb
         iLGFGg/n+IclTl7r3T81CZESi9k1wBzrhX7Hl/HQS6mxALWxELz0Lk4b2WhVlfNkWVY4
         sFg1g41rOQ0PUFwyzeARQ4tZOb+QeD0svKDA5SicXNX8Z06TgeMPFymaUPE/m9GMMzvg
         Ndhg==
X-Forwarded-Encrypted: i=1; AJvYcCVNVDSTgAeglIUsFfXfQLXoj6gkNn6Q4YFAbWG1Vt+OQI1QsXYpl7d6ZKAbHTCg/TUyOKaIBKfHaK+Q@vger.kernel.org
X-Gm-Message-State: AOJu0YxLVHh1umkxlxzqBsm9oGvI9AIjbt5gn7MMri2sNlrEJ6Xf+cti
	x7LY879JgIruC9sO+KIFnbENTmrK94inW4tstvCdhgzbsxyCG7mo
X-Gm-Gg: ASbGncs+ggfpRy+W5VSotjZF57SgTn6hhTgj6ZXMZCs6Z1UX7IwVosMkNdCwA9TUdPH
	Y/WvB0aYZdMDIs5cbkIiJ2+aJxK21xiQYKIh1UBrOt+sYjqOY0KQZjDa5Tnd4RiUgDleoC0NrUo
	MukT2z/s0bVSK2dEqrCfdZ62/g4v5PUczLtkI7inNrl0anF9V4UJqOqWFu/51avznDxB2ARd5ny
	RZGvsfX2uPc6fabzm2S4JCLjjnpgcdgEkvpUEgQ1oMRASuQQJI91T/orl17LnWwG4DgvKkyurNV
	4pJwU481wVHHs6UreXLEZNve9xTt
X-Google-Smtp-Source: AGHT+IGSZ+5NVRXUnv/KzOU2x9ad+Bw0QjOj1aATkZqQoNCOlf3IOiqReQ6AqDastAbMsLDHFKzucQ==
X-Received: by 2002:a05:6402:43c9:b0:5dc:db1e:ab4e with SMTP id 4fb4d7f45d1cf-5dec9d58e89mr699583a12.19.1739400239363;
        Wed, 12 Feb 2025 14:43:59 -0800 (PST)
Received: from giga-mm.. ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece1b4e02sm119914a12.3.2025.02.12.14.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 14:43:59 -0800 (PST)
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: soc@lists.linux.dev
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@outlook.com>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Haylen Chu <heylenay@outlook.com>,
	linux-arm-kernel@lists.infradead.org,
	Arnd Bergmann <arnd@arndb.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v3 5/7] arm64: dts: sophgo: Add Duo Module 01 Evaluation Board
Date: Wed, 12 Feb 2025 23:43:37 +0100
Message-ID: <20250212224347.1767819-6-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250212224347.1767819-1-alexander.sverdlin@gmail.com>
References: <20250212224347.1767819-1-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Duo Module 01 Evaluation Board contains Sophgo Duo Module 01
SMD SoM, Ethernet+USB switch, microSD slot, etc...
Add only support for UART0 (console) and microSD slot.

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
Changelog:
v3:
v2:
- sorted all nodes according to DT coding style;
- added "compatible" property;
- renamed the new .dts not to use underscores;
- added status = "okay" instead of deleting it;

 arch/arm64/boot/dts/Makefile                  |  1 +
 arch/arm64/boot/dts/sophgo/Makefile           |  2 ++
 .../sophgo/sg2000-milkv-duo-module-01-evb.dts | 31 +++++++++++++++++++
 3 files changed, 34 insertions(+)
 create mode 100644 arch/arm64/boot/dts/sophgo/Makefile
 create mode 100644 arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-module-01-evb.dts

diff --git a/arch/arm64/boot/dts/Makefile b/arch/arm64/boot/dts/Makefile
index 79b73a21ddc2..3a32b157ac8c 100644
--- a/arch/arm64/boot/dts/Makefile
+++ b/arch/arm64/boot/dts/Makefile
@@ -28,6 +28,7 @@ subdir-y += realtek
 subdir-y += renesas
 subdir-y += rockchip
 subdir-y += socionext
+subdir-y += sophgo
 subdir-y += sprd
 subdir-y += st
 subdir-y += synaptics
diff --git a/arch/arm64/boot/dts/sophgo/Makefile b/arch/arm64/boot/dts/sophgo/Makefile
new file mode 100644
index 000000000000..94f52cd7d994
--- /dev/null
+++ b/arch/arm64/boot/dts/sophgo/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+dtb-$(CONFIG_ARCH_SOPHGO) += sg2000-milkv-duo-module-01-evb.dtb
diff --git a/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-module-01-evb.dts b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-module-01-evb.dts
new file mode 100644
index 000000000000..b1f8a5787861
--- /dev/null
+++ b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-module-01-evb.dts
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/dts-v1/;
+
+#include "sg2000-milkv-duo-module-01.dtsi"
+
+/ {
+	model = "Milk-V Duo Module 01 Evaluation Board";
+	compatible = "milkv,duo-module-01-evb", "milkv,duo-module-01", "sophgo,sg2000";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&uart0 {
+	pinctrl-0 = <&uart0_cfg>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&sdhci0 {
+	bus-width = <4>;
+	no-1-8-v;
+	no-mmc;
+	no-sdio;
+	disable-wp;
+	pinctrl-0 = <&sdhci0_cfg>;
+	pinctrl-names = "default";
+	status = "okay";
+};
-- 
2.48.1


