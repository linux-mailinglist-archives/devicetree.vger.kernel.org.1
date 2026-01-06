Return-Path: <devicetree+bounces-251993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DEECF9545
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 17:25:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A3CC4305A231
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 16:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2920338586;
	Tue,  6 Jan 2026 16:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KcRsuNhW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234073246F9
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 16:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767716551; cv=none; b=W0abLgFuiTgjxN0yp7cx7IH/+7WiZYs5S8tf3LAp0eM6vyhn4tARLgdsON9E1HSCd0TKz3dGd1XcKEZ6KeabSqamR6JJqPdo1DxkBjU2PdSwmAXHBfJncMUk3fouLuLi3AAdSb50cvQF611GWwIbzvfh3mNRhtUkI7ODyw8IeaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767716551; c=relaxed/simple;
	bh=A2mAWoAH+naUozBaIfs4pgf2PbMEbZdWu7l+93SxTY4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=qzmvGU9ilaecoI6A3fsrpPI0iyyz3V7+luiP5G1aDZMMCdRHXjhBZ/K4nFzhLw9KJbCut4ecS9plB/7Ydp29rWTivkuOTgGXIU/43omIFn4Fr1RJXuh9G5iB84XiioAX4taQnHNTMUVyEs4CwqWRHhGgIQEDVXylLWnCP9BOfjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KcRsuNhW; arc=none smtp.client-ip=209.85.218.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f65.google.com with SMTP id a640c23a62f3a-b7ce5d6627dso243670466b.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 08:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767716547; x=1768321347; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JrveI4iw+ccmBDg2EkS6K3aw9Wh+g41Y1Md59+n6Qt8=;
        b=KcRsuNhWnGLKD0h/Pf286upWvITOpt+m7Xg9wrFSAYYINXoxwoOVznL2HbRbv5bGGP
         qPDCx0eJBMqTtntIWOxra0dAsB5Y8m2fsiQvfjtFGKEmfHauBYZR/PXeTjCAsoXRWxT3
         5G/LLAVrRM23fXFX8HsEP55r+nNc9exzCvkJh58Vbz/ar5SZ0i+c0lTj6loRTq9vRw9e
         DnRBuJpz+MuCed0GUBbYu4FWBiCXQdr/0patGxUPyExhhSrpOi3iKAt5uYxn9JK7UVgQ
         xocwyOA0yx/eRnyOsg/Za/xBkLFGXDrxr74OpqeqfkRrrMX+z0SYE7TaNWV38bPKWDNe
         IP2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767716547; x=1768321347;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JrveI4iw+ccmBDg2EkS6K3aw9Wh+g41Y1Md59+n6Qt8=;
        b=w2tKhx3Pr9r+t2UNdBtqOdUs4qNyRPwDUEhzdDL7qF9GVhN0bDzasccpfNk7M3QLvI
         6T7asWlJKui+3FslAFUYHyaiUACBsDOFKBG/6bZfNaxaydQ5RLvtT2Fp2pDd2+2nDV0b
         RVC9tGJgl0STd3cV6kLMFekB3z4mGC55MY/duq9ENGng9voimvvbwqFzbQ63hgeDiiK9
         xXm4sEGAyACNSkFAifjmG08vN5gN0jCz60sVO6qikjbVvOV+t2upa9wqbYDew6fnHjcQ
         +RamT8ECPvPJq2xTjVbo8iThwPWGbtDFnusk1FCchMkdDMpVDJ70x/6FyQUmCinFNuAP
         Uyow==
X-Forwarded-Encrypted: i=1; AJvYcCVurPzbhm4WyVcXEDw50/U6WdrQcvDlT3x1GnChOnAgfRAwUcaVTpmUFQ/GPf7lLrwS8UcaWT9yNXJI@vger.kernel.org
X-Gm-Message-State: AOJu0YwN5YqQini8C1PSJUCNQg7kGzG6nzPG73qqSs5tlmq9x9o44e1G
	2V/eBDNkzznXWVu8sy26YUWl9ux/y9nsI79Jwm5yEJf/8sWG8z1geYA7r9MIYZHvk1w=
X-Gm-Gg: AY/fxX4/WL7jZnAGb9Wd5CzoRlHg+m3p5iqQaIVSGmdhmK1hdbOiiZ//hC4IWBcwsI8
	07ILfkm6EcfW4kH9LZEE+F72B3bS65+EUBmmq3+dVxGo/eYkwJ5BjPI7m22ILhCOp54yuLUmi5b
	W8CcTJACXZYNIITw+RuqGJw29BgRkBEyqIt+lj6cXsw7xG4CdHu7VLULF/eqQEYQlG+9lef3yUc
	uMhTN08wSAcMaLE6htBhXQHRy0QPzqwqErNn2H4uc6iRav8CHjvrmr1JoWYgymKJ5YUoMfxo3Ot
	PvyxO0+fcxhySME94Pg05lJngJj2HorVhhRdzR3eJMG/vtu7ynD++YLp2gHvtcncv/YEgVzF9EP
	Ta+qOlc1+swhhtS6bB0Ww0JG55Y4xdHjVrnJf6HX0008bVSlBN9ogWVyI55uR2FGGHw+1xXjWVd
	YYtsShHr/e
X-Google-Smtp-Source: AGHT+IEVw/SMrnYS2cOO2tMjNOVxr1/A+HqYsJSdrqzmCDrLk/jonm+qx/H22wDBUNlHq/f3K6UqXA==
X-Received: by 2002:a17:906:d551:b0:b84:200d:15b5 with SMTP id a640c23a62f3a-b8426bb8790mr406180366b.31.1767716547453;
        Tue, 06 Jan 2026 08:22:27 -0800 (PST)
Received: from localhost ([2001:4091:a246:82fd:4350:c3d9:84a3:70dd])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a2340a2sm266826266b.5.2026.01.06.08.22.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 08:22:27 -0800 (PST)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Tue, 06 Jan 2026 17:22:10 +0100
Subject: [PATCH] arm64: dts: ti: k3-am62a7-sk: Disable mmc Schmitt Trigger
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com>
X-B4-Tracking: v=1; b=H4sIALE2XWkC/x3NwQqEIBCA4VeJOTeghgPtqywdzB13B9JEJYLo3
 ZM9fpf/v6ByEa7wGi4ofEiVPXXocQD/c+nLKJ9uMMqQ0oqw7Vk8ukjGYYwesyTfyoYHoZ4x8dn
 QhImtpSmsq4UeyoWDnP/Je7nvBzcHj4l0AAAA
X-Change-ID: 20260106-topic-am62a-mmc-pinctrl-v6-19-next-2f3e5563fbb5
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 Kendall Willis <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4118; i=msp@baylibre.com;
 h=from:subject:message-id; bh=A2mAWoAH+naUozBaIfs4pgf2PbMEbZdWu7l+93SxTY4=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxYs93nf6Y+uKp7T/HFWnndZUdsvn+urNgYueV9i3Z9o
 tmFNVImHaUsDGJcDLJiiiydiaFp/+V3HktetGwzzBxWJpAhDFycAjCRnjSGfxY5wry7Wf97/xNQ
 8Ly1935mZZBVWSvjt3n3ua5YNPpVdzH895rjXCDU61o/y6lw6pb169Y5zO+qdTl2lfWv57u90a4
 NfAA=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Remove Schmitt Trigger from mmc pins. With Schmitt Trigger enabled
u-boot SPL is not able to read u-boot from mmc:

    Trying to boot from MMC2
    Error reading cluster
    spl_load_image_fat: error reading image u-boot.img, err - -22
    Error: -22
    SPL: Unsupported Boot Device!
    SPL: failed to boot from all boot devices
    ### ERROR ### Please RESET the board ###

I bisected this issue between u-boot v2025.10 and v2026.01 and found the
devicetree merge to be the problem. At a closer look I found the
k3-pinctrl.h changes. Disabling the Schmitt Trigger fixes the u-boot SPL
failure to read from mmc.

Fixes: 5b272127884b ("arm64: dts: ti: k3-pinctrl: Enable Schmitt Trigger by default")
Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 36 ++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index e99bdbc2e0cbdf858f1631096f9c2a086191bab3..9129045c8bbd3a83dba6ff6f2148a3624b91b546 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -315,30 +315,30 @@ AM62AX_IOPAD(0x0b4, PIN_INPUT_PULLUP, 1) /* (K24) GPMC0_CSn3.I2C2_SDA */
 
 	main_mmc0_pins_default: main-mmc0-default-pins {
 		pinctrl-single,pins = <
-			AM62AX_IOPAD(0x220, PIN_INPUT, 0) /* (Y3) MMC0_CMD */
-			AM62AX_IOPAD(0x218, PIN_INPUT, 0) /* (AB1) MMC0_CLKLB */
-			AM62AX_IOPAD(0x21c, PIN_INPUT, 0) /* (AB1) MMC0_CLK */
-			AM62AX_IOPAD(0x214, PIN_INPUT, 0) /* (AA2) MMC0_DAT0 */
-			AM62AX_IOPAD(0x210, PIN_INPUT_PULLUP, 0) /* (AA1) MMC0_DAT1 */
-			AM62AX_IOPAD(0x20c, PIN_INPUT_PULLUP, 0) /* (AA3) MMC0_DAT2 */
-			AM62AX_IOPAD(0x208, PIN_INPUT_PULLUP, 0) /* (Y4) MMC0_DAT3 */
-			AM62AX_IOPAD(0x204, PIN_INPUT_PULLUP, 0) /* (AB2) MMC0_DAT4 */
-			AM62AX_IOPAD(0x200, PIN_INPUT_PULLUP, 0) /* (AC1) MMC0_DAT5 */
-			AM62AX_IOPAD(0x1fc, PIN_INPUT_PULLUP, 0) /* (AD2) MMC0_DAT6 */
-			AM62AX_IOPAD(0x1f8, PIN_INPUT_PULLUP, 0) /* (AC2) MMC0_DAT7 */
+			AM62AX_IOPAD(0x220, PIN_INPUT_NOST, 0) /* (Y3) MMC0_CMD */
+			AM62AX_IOPAD(0x218, PIN_INPUT_NOST, 0) /* (AB1) MMC0_CLKLB */
+			AM62AX_IOPAD(0x21c, PIN_INPUT_NOST, 0) /* (AB1) MMC0_CLK */
+			AM62AX_IOPAD(0x214, PIN_INPUT_NOST, 0) /* (AA2) MMC0_DAT0 */
+			AM62AX_IOPAD(0x210, PIN_INPUT_PULLUP_NOST, 0) /* (AA1) MMC0_DAT1 */
+			AM62AX_IOPAD(0x20c, PIN_INPUT_PULLUP_NOST, 0) /* (AA3) MMC0_DAT2 */
+			AM62AX_IOPAD(0x208, PIN_INPUT_PULLUP_NOST, 0) /* (Y4) MMC0_DAT3 */
+			AM62AX_IOPAD(0x204, PIN_INPUT_PULLUP_NOST, 0) /* (AB2) MMC0_DAT4 */
+			AM62AX_IOPAD(0x200, PIN_INPUT_PULLUP_NOST, 0) /* (AC1) MMC0_DAT5 */
+			AM62AX_IOPAD(0x1fc, PIN_INPUT_PULLUP_NOST, 0) /* (AD2) MMC0_DAT6 */
+			AM62AX_IOPAD(0x1f8, PIN_INPUT_PULLUP_NOST, 0) /* (AC2) MMC0_DAT7 */
 		>;
 		bootph-all;
 	};
 
 	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
-			AM62AX_IOPAD(0x23c, PIN_INPUT, 0) /* (A21) MMC1_CMD */
-			AM62AX_IOPAD(0x234, PIN_INPUT, 0) /* (B22) MMC1_CLK */
-			AM62AX_IOPAD(0x230, PIN_INPUT, 0) /* (A22) MMC1_DAT0 */
-			AM62AX_IOPAD(0x22c, PIN_INPUT, 0) /* (B21) MMC1_DAT1 */
-			AM62AX_IOPAD(0x228, PIN_INPUT, 0) /* (C21) MMC1_DAT2 */
-			AM62AX_IOPAD(0x224, PIN_INPUT, 0) /* (D22) MMC1_DAT3 */
-			AM62AX_IOPAD(0x240, PIN_INPUT, 0) /* (D17) MMC1_SDCD */
+			AM62AX_IOPAD(0x23c, PIN_INPUT_NOST, 0) /* (A21) MMC1_CMD */
+			AM62AX_IOPAD(0x234, PIN_INPUT_NOST, 0) /* (B22) MMC1_CLK */
+			AM62AX_IOPAD(0x230, PIN_INPUT_NOST, 0) /* (A22) MMC1_DAT0 */
+			AM62AX_IOPAD(0x22c, PIN_INPUT_NOST, 0) /* (B21) MMC1_DAT1 */
+			AM62AX_IOPAD(0x228, PIN_INPUT_NOST, 0) /* (C21) MMC1_DAT2 */
+			AM62AX_IOPAD(0x224, PIN_INPUT_NOST, 0) /* (D22) MMC1_DAT3 */
+			AM62AX_IOPAD(0x240, PIN_INPUT_NOST, 0) /* (D17) MMC1_SDCD */
 		>;
 		bootph-all;
 	};

---
base-commit: 6cd6c12031130a349a098dbeb19d8c3070d2dfbe
change-id: 20260106-topic-am62a-mmc-pinctrl-v6-19-next-2f3e5563fbb5

Best regards,
-- 
Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>


