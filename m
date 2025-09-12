Return-Path: <devicetree+bounces-216633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 959B0B556AE
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 20:57:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1CACD1D62774
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 18:57:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53D9A31E10D;
	Fri, 12 Sep 2025 18:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VOqhcZpD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3175C3375B3
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 18:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757703406; cv=none; b=H7DtvMzWCCZ3u4FLRdEKZSoXOa5ck5O/yZCajpmKPOs/H3GBDJQ7U7XtuujIFDtB71s7tjQR1ze/zGZyNdwscg4yPJJ4QvOGGgnCLBTjz7xYTNsug/t2vj2au17dBEosa0BK/B46yRPE4FwNqn0QXAU1SnKmMhnWKkZjQqJAVKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757703406; c=relaxed/simple;
	bh=NuhdEUhqxZA+bUb3jcXwQjwqzeFpVk/pkWfNTnUfb0c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HCpjhuIzf6JxE9KXjfu8ZSwqVLOzVkw4Zsa0sQ05Kf1l6AhFHkwpIp1QERt/x4x6aGeJNtPRNMh6HjB1iebx9T8zBW4sEaQUH7KYAtdFVANvuyIGagC8mS09Q8yuFqsTe3bY6GYROky3TNLdoniOrAOCueZBlI4cHi+WahPGUuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VOqhcZpD; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b04271cfc3eso282926866b.3
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757703402; x=1758308202; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EMFuMNHgQtIODbObQedXrsxWoqDPf7/6pdH5IDOcwpI=;
        b=VOqhcZpDGQghuNsJheC76zS4Wkg0Zq7Sm4A4SnmD2pVFCUH3HKZdnjBdI0hAXS7I57
         sXoa2Km4zVfQJvOD4yW6i2/ESksF22sXKstqktx33/ZgK8ESmUbbDb8OpHPpVSZkcDpj
         NQXB8GGys2/Wq6iHzGaN/9RcfXqoK2Sn0cBJgBECm+noViColeGSdgQzQDmKnsvS9lVE
         l71AxwQGP2F0mG3vX+s6Qji6id53C9CupaS6Opi/MK8u9G+9Rkw309cwYoLcTfKBeb6A
         w/5qtBynMI+TwmmxXiyJx2tF+cTgaQSvdIaYfjlpr2vl/XbNkjX3/lke5boJOH4e/RAu
         YU0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757703402; x=1758308202;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EMFuMNHgQtIODbObQedXrsxWoqDPf7/6pdH5IDOcwpI=;
        b=H3zGTPFbQfI06KsPdNWX1nMfZ9vISQHmrDstEHNzJ98jQorLfoW7NlnxAd742+FVm+
         jHpq6fqYcX0oGLfU2nFkCafeCkS5EqpM5l/uejoULFPLiLkKWsTf2yr8JulEbJfn3o4W
         KsEYDx3nF/2+j5Y1+Pz854QewV94+4TxsYDh3NcP5YLWVHtoj/9UksR3k3F+OTZgUM/O
         01O8eiEkUEK3MFQuhg5xDlXSZJEyEdHO/7J0d9ff9g7sL0X4k3gsEqIBtgDn5scCcr60
         YD1v5PcviGPbAvR4ytD0Wp6th42dAy1J3QFCpSO5+Aj3IYOOQMbUGrXYnwC96li5jvAO
         3k5A==
X-Forwarded-Encrypted: i=1; AJvYcCXqLNxoYdVSYCN/ljCmtUGuQVbzGubDmG0IX0szP+Wvl8ZubIu0NGgx3OwuNvV3IAuTSSjPsVzdsk44@vger.kernel.org
X-Gm-Message-State: AOJu0YwDyI+2waty84M+u1Ixe/7bLXpkfHXhdrhq9BMavy0RN98tz9dn
	W7EPwMmGZ1RhPWIUj9CMcApr1/E/jDBNAFCXzrOUYYxcc210HOmoRGF/
X-Gm-Gg: ASbGncvMfQsfUkxAsHdIZwEs4s9EpckMkQ9SIgNhSOReH+KSvZ7XWFUvr8G+GKTKtUx
	hR/Gfiw66Nf+ghcXlqTral2k7DhZTBl9PBMqRLZHPQNmpVPPxG3zOwH0W5qWwi8vGgTasUe/5Hv
	ocAqw1XW3Ef6URzR8qquyZ++T+ToJa1fhTAYI1eV/W8LqqDzfJeispok0OGVcO1loXxFcZNFBbZ
	UUTgvdUNV/LMyy4aOF6NNWxpzDp44ByG9Gtfy5oZcuUePg5Ir+5HymojoGo1QV+i1mPHrK8XSOC
	vU7lW+KO51bTRSut8hMO78UPLrCAft+4gESjMn57S42Vd45bgrTSHVHVVLbmbHiTYJHqI94EVTq
	N4Ft6l2hQkm8wUavpHYvMI3j3tUjOvZaMtItdvMGThg==
X-Google-Smtp-Source: AGHT+IGTL4pEw44esZuXiYOpXJ8UaMoJp/w5uz6YI+s5Fhx4tBOD/bNzTMRTfy/5dx0N6xED2ZIftQ==
X-Received: by 2002:a17:907:d19:b0:afe:ef48:ee41 with SMTP id a640c23a62f3a-b07c3a783ddmr386299966b.58.1757703402115;
        Fri, 12 Sep 2025 11:56:42 -0700 (PDT)
Received: from [127.0.1.1] ([46.53.240.27])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b07b30da310sm418184566b.20.2025.09.12.11.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 11:56:41 -0700 (PDT)
From: Dzmitry Sankouski <dsankouski@gmail.com>
Date: Fri, 12 Sep 2025 21:56:36 +0300
Subject: [PATCH v2 2/2] arm64: dts: qcom: sdm845-starqltechn: add slpi
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250912-starqltechn_slpi-v2-2-5ca5ddbbe7b4@gmail.com>
References: <20250912-starqltechn_slpi-v2-0-5ca5ddbbe7b4@gmail.com>
In-Reply-To: <20250912-starqltechn_slpi-v2-0-5ca5ddbbe7b4@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Dzmitry Sankouski <dsankouski@gmail.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757703398; l=1717;
 i=dsankouski@gmail.com; s=20240619; h=from:subject:message-id;
 bh=NuhdEUhqxZA+bUb3jcXwQjwqzeFpVk/pkWfNTnUfb0c=;
 b=bFrvnGE8VIM/ELvl0Z0h8PH1FWAGmZKloaOgGml5/7biOlmyMwusnSEYVqdWF1LOlxpDpiSiP
 kyb1B+zHMPSAyk9z6z6oJbOP3DXaGwaCejyAmSA+H76KZgj1crtcR4K
X-Developer-Key: i=dsankouski@gmail.com; a=ed25519;
 pk=YJcXFcN1EWrzBYuiE2yi5Mn6WLn6L1H71J+f7X8fMag=

Add support for Qualcomm sensor low power island.

Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
---
Changes in v2:
- pinctrl replaced with fixed regulator
- add space before 'status' node
---
 .../boot/dts/qcom/sdm845-samsung-starqltechn.dts   | 29 ++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
index 32ce666fc57e..75a53f0bbebd 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
@@ -56,6 +56,21 @@ framebuffer: framebuffer@9d400000 {
 		};
 	};
 
+	slpi_regulator: slpi-regulator {
+		compatible = "regulator-fixed";
+		pinctrl-0 = <&slpi_ldo_active_state>;
+		pinctrl-names = "default";
+
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-name = "slpi";
+
+		enable-active-high;
+		gpio = <&tlmm 8 GPIO_ACTIVE_HIGH>;
+	};
+
 	vib_regulator: gpio-regulator {
 		compatible = "regulator-fixed";
 
@@ -902,6 +917,13 @@ &ipa {
 	status = "okay";
 };
 
+&slpi_pas {
+	firmware-name = "qcom/sdm845/starqltechn/slpi.mbn";
+	cx-supply = <&slpi_regulator>;
+
+	status = "okay";
+};
+
 &usb_1 {
 	status = "okay";
 };
@@ -1028,6 +1050,13 @@ sd_card_det_n_state: sd-card-det-n-state {
 		bias-pull-up;
 	};
 
+	slpi_ldo_active_state: slpi-ldo-active-state {
+		pins = "gpio8";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
 	touch_irq_state: touch-irq-state {
 		pins = "gpio120";
 		function = "gpio";

-- 
2.39.5


