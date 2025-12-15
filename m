Return-Path: <devicetree+bounces-246498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2F0CBD3B4
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:43:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA5C83058456
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:39:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 397F632ABEF;
	Mon, 15 Dec 2025 09:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LWiv9h5N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E6432ABC6
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765791546; cv=none; b=qharEsFCFfVCEDR/5QYTcPmCTc6Of1CWiiT1Mp7hT2KMBH6R0OUPvh9x9khWPmpdWGRX59x1boF3WWcvwmX9NN1ITymx3l7ETIkvYRMd1vZByFYr1brDesRwSiHpWDhWIHzz1R1wuTJhod11hJDjII1E4b0Oe2K5cRpRVlqPr0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765791546; c=relaxed/simple;
	bh=WBSnoWKU3AENu5sDkwxg1gyjDJ4F54vrwnNIGBo3bkw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aTOLqKszrHOcUkqKTZvARDAZUeIK5Uf7EdkIfw0Hsn6BCSSWgTNBvqisjoa+4j+kxFdScN8o+c4MvBV0/o8o1lO5xARojkZtXSt6Lb/QdmKCrYO0ontpwSZZU8yfLGaGYxv/fNXG3r6Jz/+pXDaRd5KEjtU1kXM0YflLntHW3mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LWiv9h5N; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-29f0f875bc5so42697605ad.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:39:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765791543; x=1766396343; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2bGUzMeLW/JozQ7jHBnhOnIeY8glII+n/t0VKsxF74I=;
        b=LWiv9h5NPkdPTPN/enXqezb8Pq4z+0tLzwCmTFGGHQcM2DL85g3TcFfKKB2l5qkKrd
         jsYcpuGhKGCP8pA05hhNf3IqjVhYvfWiPf0PFMYQh2zXj3mEWI1tRUE0e+KQwPekN/0q
         +9xfu2zSodjdVtrmY3pDqOy3P9Bt8IXQuF04G3McFyJvyW0jjF6ndUDTJSElXY8w3bNj
         InxW3QLJmhNdvB9AeybQXk1zD/3c7yvuZoO0qkjMCocGQuO+pixVloclYFM4R4nIixjx
         D6exkb5lvcDROnLbvD8sb7s7q2VCQ+mAf0NBUcMF8sIK92iUd9KjrSQyxLUqtdIFDqFc
         7b7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765791543; x=1766396343;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2bGUzMeLW/JozQ7jHBnhOnIeY8glII+n/t0VKsxF74I=;
        b=vHiaPgXAWCAl0Aik3f9fofqiWl93LFCLAPk1bUad6nmK0ct4f8e0Y+v1PU3zoGMQzY
         0zZlKpEnzgP2d/W1uGPtoF4QqKH86lAVsBawg3zoy5k2Q2py859CYAbV0nUMFIMxOFO3
         GdKpAEuoV6qDE82/9F/Biv1nQIZrqTqdtzuom4C8XuoTiNI7ba+jblJl1tnJslmulhra
         eMLw2RiDFw3A1TzZ8sykqt2PSyLuV6x9moJ6lnooPXzTiccJUuhJpi1r/AOpKYCUMYwO
         hdoCNiid/bnydtfEfoUE2WGlvzUjxD9j3LuWMG/Fg1aoazz4bfxgCYlB/vJqKFu/rSnD
         FLUQ==
X-Forwarded-Encrypted: i=1; AJvYcCV76i39pRRrvylld5CeW/JfzPW8idyhBpXjudTXuqVHyctznt4rt3oPhbY7MV162tq2lOF6OsRZ4333@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5wqqVuR4I9vCS3ruLTyudVh1lUSLwo7boS9oVBCQH/Y1wrZiR
	jvgixXXLmmkSLnR+TVB5/BNL+44AQO5Bq9t8p2DNbvvDPG/LGVzgKKKb
X-Gm-Gg: AY/fxX4Bq2ICWY99GDM3+3lJZz50kHJ4fwzAKOq/Ss/PxD1+DXp7LEwkzVwL5c/z3oJ
	JSuvRxNK+sHMqk3x2jI9f5Z0xnURoadglUDOy0lM22hKSZ02wftzCPfNua8o6BJ4ISZbA5bOzyf
	dSReUPIdEyx0bS/7i/Id7DHKwsascU7zVJbPhwfoVQWJY7uihAiXsG/+IZCxioTP099fz/9hNR2
	Hy18K4gwzzWmgT7plxu9T+Mqtd31XoC1GYIXCs/1xK1gLxrhOnma+mkHM+n67DdyMw4T9m8WOCC
	ThaGDElR8CObnH9SnuH5Ev8z1AFIH/hiG1fxhsO/XN4TDVZ+WxpXQP7gMB/yeJ14Ieg610QUGBE
	aGrO0LdF7AN5ZMV6ixd5JHK3v1O1i9odvrWxS2TswHSQRVCrXddJjcXHX8n/R22D8oA87KT7D1O
	Il86k4lssoo0afsNsDtJ6BLUtj9i2rdST5aGd+pelg8+lUk/d+2IzPrYhUAUv9BryCOuLjjGZkN
	CkF3zFXnuiN9WmyofAxlRC/ndvZ+OHMiasESPuWpoD6pxva6cBoO1TEfVnoiVXWPQgngLeQDE1T
	1UhDz3oDgh9OwjrVnz83usKphbip6qTPAqOLvz0XvnQzDg+7huQ=
X-Google-Smtp-Source: AGHT+IE1ONDmMPxkmeJv8Jcwz9fHIvPtzkrv+UtHURTUiSutUD39OJoEqG9ODwNwY90PRcf4H0q9VQ==
X-Received: by 2002:a17:902:d4c5:b0:2a0:b02b:210b with SMTP id d9443c01a7336-2a0b02b21fbmr55998955ad.41.1765791543118;
        Mon, 15 Dec 2025 01:39:03 -0800 (PST)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29efd74f5e1sm113017705ad.16.2025.12.15.01.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 01:39:02 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Mon, 15 Dec 2025 19:37:50 +1000
Subject: [PATCH v6 6/7] arm64: dts: apple: t8103,t60xx,t8112: Add SMC RTC
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-macsmc-subdevs-v6-6-0518cb5f28ae@gmail.com>
References: <20251215-macsmc-subdevs-v6-0-0518cb5f28ae@gmail.com>
In-Reply-To: <20251215-macsmc-subdevs-v6-0-0518cb5f28ae@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Jonathan Corbet <corbet@lwn.net>, 
 James Calligeros <jcalligeros99@gmail.com>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rtc@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-input@vger.kernel.org, linux-doc@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2689;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=XqyBBwDw5d8mhE2yQoV9/8OYd4bvzgC4hPOX4wfMNZ0=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJn211msN8f2hHad0eiKb84X+hTfnyV7VXJHXeN/+YV9g
 su/PGLrmMjCIMbFYCmmyLKhSchjthHbzX6Ryr0wc1iZQIZIizQwAAELA19uYl6pkY6Rnqm2oZ6h
 oY6xjhEDF6cATHVTHyPD+0CvUyukrZ1/yro1RbnqzLLbn6LQaFjJef3+56CtzwMcGRlmr667zhi
 x8ti05R2ebR0CvAtj48yMnqznmsrQW6/0t4ARAA==
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

From: Sven Peter <sven@kernel.org>

The System Manager Controller of all M1/M2 SoCs supports the RTC
sub-device.

Reviewed-by: Neal Gompa <neal@gompa.dev>
Signed-off-by: Sven Peter <sven@kernel.org>
Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 .../arm64/boot/dts/apple/t600x-die0.dtsi | 6 ++++++
 .../arm64/boot/dts/apple/t602x-die0.dtsi | 6 ++++++
 arch/arm64/boot/dts/apple/t8103.dtsi     | 6 ++++++
 arch/arm64/boot/dts/apple/t8112.dtsi     | 6 ++++++
 4 files changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t600x-die0.dtsi b/arch/arm64/boot/dts/apple/t600x-die0.dtsi
index 3603b276a2ab..f715b19efd16 100644
--- a/arch/arm64/boot/dts/apple/t600x-die0.dtsi
+++ b/arch/arm64/boot/dts/apple/t600x-die0.dtsi
@@ -44,6 +44,12 @@ smc_reboot: reboot {
 			nvmem-cell-names = "shutdown_flag", "boot_stage",
 				"boot_error_count", "panic_count";
 		};
+
+		rtc {
+			compatible = "apple,smc-rtc";
+			nvmem-cells = <&rtc_offset>;
+			nvmem-cell-names = "rtc_offset";
+		};
 	};
 
 	smc_mbox: mbox@290408000 {
diff --git a/arch/arm64/boot/dts/apple/t602x-die0.dtsi b/arch/arm64/boot/dts/apple/t602x-die0.dtsi
index 2e7d2bf08ddc..8622ddea7b44 100644
--- a/arch/arm64/boot/dts/apple/t602x-die0.dtsi
+++ b/arch/arm64/boot/dts/apple/t602x-die0.dtsi
@@ -121,6 +121,12 @@ smc_reboot: reboot {
 			nvmem-cell-names = "shutdown_flag", "boot_stage",
 				"boot_error_count", "panic_count";
 		};
+
+		rtc {
+			compatible = "apple,smc-rtc";
+			nvmem-cells = <&rtc_offset>;
+			nvmem-cell-names = "rtc_offset";
+		};
 	};
 
 	pinctrl_smc: pinctrl@2a2820000 {
diff --git a/arch/arm64/boot/dts/apple/t8103.dtsi b/arch/arm64/boot/dts/apple/t8103.dtsi
index 8b7b27887968..59f2678639cf 100644
--- a/arch/arm64/boot/dts/apple/t8103.dtsi
+++ b/arch/arm64/boot/dts/apple/t8103.dtsi
@@ -916,6 +916,12 @@ smc_reboot: reboot {
 				nvmem-cell-names = "shutdown_flag", "boot_stage",
 					"boot_error_count", "panic_count";
 			};
+
+			rtc {
+				compatible = "apple,smc-rtc";
+				nvmem-cells = <&rtc_offset>;
+				nvmem-cell-names = "rtc_offset";
+			};
 		};
 
 		smc_mbox: mbox@23e408000 {
diff --git a/arch/arm64/boot/dts/apple/t8112.dtsi b/arch/arm64/boot/dts/apple/t8112.dtsi
index 3f79878b25af..6bc3f58b06f7 100644
--- a/arch/arm64/boot/dts/apple/t8112.dtsi
+++ b/arch/arm64/boot/dts/apple/t8112.dtsi
@@ -919,6 +919,12 @@ smc_reboot: reboot {
 				nvmem-cell-names = "shutdown_flag", "boot_stage",
 					"boot_error_count", "panic_count";
 			};
+
+			rtc {
+				compatible = "apple,smc-rtc";
+				nvmem-cells = <&rtc_offset>;
+				nvmem-cell-names = "rtc_offset";
+			};
 		};
 
 		smc_mbox: mbox@23e408000 {

-- 
2.52.0


