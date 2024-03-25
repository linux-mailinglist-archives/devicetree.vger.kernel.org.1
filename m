Return-Path: <devicetree+bounces-52994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BE43788A976
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 17:34:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F0D629BB7B
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 16:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 694F916AFDB;
	Mon, 25 Mar 2024 14:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="heDlBBGz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF08142E67
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 14:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711377457; cv=none; b=Wqsmq0k0WPfGu3EDW/20nkVEgMp1SFBtPPBRve+aEdWubaDZi9uphjXbTRPSKp8xCH5lJ8stbIO9m8tZhiNlZD/cvHMTlrKBoR90IA6lA9b+c1RsKED3DjnECKih+/rIak51SjCazGizc+M/zb27Y6rN5k5jd3gYWMzSui1FjFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711377457; c=relaxed/simple;
	bh=cl0ZgO18JC/KxJnlEL3t/Nvzd7SJpiFMQr+jBhy6E8k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=G97LPRra1GGmdDXWCI+3dg2v0iAUtjkgNjYU/DEkxaq+xzVtTkkGhYvc/RPAQEIs/dGj2bET5AHMseWn59Q56QbtUC4IAnKEkY+j+hMldvfZwvp7OdEsEzxRm29z4Se44lGGnUuKHFsBysQ9Abwg0LMATfdnEYUiIc3U7Dc4CMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=heDlBBGz; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-21e45ece781so2931909fac.0
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 07:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711377455; x=1711982255; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OWGsglh309p0hvFkoJw+fSsGfnv7kwVjpBTFwQurm4U=;
        b=heDlBBGziCB/TN/cWQ2B1ZEeNlmEDbd9eLLsDIOaZqQePEFTrv5mV3PxCPo0hnCiF+
         B3RdZPwYy68efNjfboKYstZ8c1mfN2shGGwhdAeKkcjBWGSPM6BVH/o99B7JpW3i251C
         ERWOYogjzDdCajTiJh4sqvjm4RoLQG+9SeZXzNlMq1Ut136Smr12uiHSo92Q7wBYQV+l
         TgADwwmUEwm4UBwcpugOOcY1/K9ETTwWMI2zd9xaR0m5N/PDpRTWIPGEOhtJTZu4W7rB
         DPsZE1Q96AKGInF219ychDUYsJF2MHocHmnQKtTOfNKRtW1jK7LvYv3gXeUOFgZF1oQR
         8ssw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711377455; x=1711982255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OWGsglh309p0hvFkoJw+fSsGfnv7kwVjpBTFwQurm4U=;
        b=ljx9Yms1IgoQBLPnt4MWPywo9pVTdiO+5XDRJgEuEWmjbEjC0TZhgNAGn3DvkjPICr
         f+oEgZAIwn7uz6Nm1sOvWNWW6ChrCwHAEiDnaL0fsCU0ASFpc1UQHGKEL2zkF0fWFiwl
         ZW9Upte9qQo8fpdDCCTa8q+czaPdLNnqTrYxwYfIeMuZiY0icmGQ1jHcS1B7Uq3Okfg3
         aLBgSIBwL9SZ7VXrWcqzRb6xDTAs/20RfPv/EWpEvxuzobiba4gNEwhgdbtqjKUANaQy
         7GgWdbg1CN+xqFZmsoJcatZP33/O8QbtW/ozCN62HGGzGlEa2gTIFgJy33CUgfR4lHWK
         V27A==
X-Gm-Message-State: AOJu0YzYiazW3RRitwdARHOCEeC80axVUGJhqp/Oi24IDTZBg7jDOTpn
	RdGCjDdcKkbZs873zPCUDkJHbISeB0Ia+XVxmTPn+YhhAY8JuLe0
X-Google-Smtp-Source: AGHT+IHFezassPLHQR+4Nk4JFVdRua2MnimBJg64IU+Y9mpBGCX4v92gaUHyOAI69wP8Rgw1Tos6UQ==
X-Received: by 2002:a05:6870:14d6:b0:229:ec74:a686 with SMTP id l22-20020a05687014d600b00229ec74a686mr8344702oab.7.1711377454873;
        Mon, 25 Mar 2024 07:37:34 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id xb22-20020a056870cd9600b0022a0ff98f9bsm1417180oab.4.2024.03.25.07.37.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 07:37:34 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: Correct RGxx3 SDMMC ordering
Date: Mon, 25 Mar 2024 09:37:28 -0500
Message-Id: <20240325143729.83852-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325143729.83852-1-macroalpha82@gmail.com>
References: <20240325143729.83852-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Make the order of SDMMC predictable across the entire device lineup.
This allows userspace to always know that sdmmc0 is the eMMC (when
present), sdmmc1 is always the first sd card slot, sdmmc2 is always
the 2nd sd card slot (when present), and sdmmc3 is always the wifi
(when present).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts | 7 -------
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts | 6 ------
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts   | 7 -------
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts  | 6 ------
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts   | 7 -------
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts  | 6 ------
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts    | 6 ------
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 7 +++++++
 8 files changed, 7 insertions(+), 45 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
index ab83e8a61615..d239a8452957 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
@@ -10,13 +10,6 @@
 / {
 	model = "Anbernic RG ARC-D";
 	compatible = "anbernic,rg-arc-d", "rockchip,rk3566";
-
-	aliases {
-		mmc0 = &sdhci;
-		mmc1 = &sdmmc0;
-		mmc2 = &sdmmc1;
-		mmc3 = &sdmmc2;
-	};
 };
 
 &i2c2 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
index 6264a8c78d0b..4bb13d94a759 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
@@ -10,10 +10,4 @@
 / {
 	model = "Anbernic RG ARC-S";
 	compatible = "anbernic,rg-arc-s", "rockchip,rk3566";
-
-	aliases {
-		mmc1 = &sdmmc0;
-		mmc2 = &sdmmc1;
-		mmc3 = &sdmmc2;
-	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
index 8aa93c646bec..94c678c44d3a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
@@ -11,13 +11,6 @@ / {
 	model = "RG353P";
 	compatible = "anbernic,rg353p", "rockchip,rk3566";
 
-	aliases {
-		mmc0 = &sdhci;
-		mmc1 = &sdmmc0;
-		mmc2 = &sdmmc1;
-		mmc3 = &sdmmc2;
-	};
-
 	battery: battery {
 		compatible = "simple-battery";
 		charge-full-design-microamp-hours = <3472000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
index b211973e36c2..25edd81ce26b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
@@ -11,12 +11,6 @@ / {
 	model = "RG353PS";
 	compatible = "anbernic,rg353ps", "rockchip,rk3566";
 
-	aliases {
-		mmc0 = &sdmmc0;
-		mmc1 = &sdmmc1;
-		mmc2 = &sdmmc2;
-	};
-
 	battery: battery {
 		compatible = "simple-battery";
 		charge-full-design-microamp-hours = <3472000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
index f49ce29ba597..5354c5958df2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
@@ -11,13 +11,6 @@ / {
 	model = "RG353V";
 	compatible = "anbernic,rg353v", "rockchip,rk3566";
 
-	aliases {
-		mmc0 = &sdhci;
-		mmc1 = &sdmmc0;
-		mmc2 = &sdmmc1;
-		mmc3 = &sdmmc2;
-	};
-
 	battery: battery {
 		compatible = "simple-battery";
 		charge-full-design-microamp-hours = <3151000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
index a7dc462fe21f..02653b59f6c2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
@@ -11,12 +11,6 @@ / {
 	model = "RG353VS";
 	compatible = "anbernic,rg353vs", "rockchip,rk3566";
 
-	aliases {
-		mmc0 = &sdmmc0;
-		mmc1 = &sdmmc1;
-		mmc2 = &sdmmc2;
-	};
-
 	battery: battery {
 		compatible = "simple-battery";
 		charge-full-design-microamp-hours = <3151000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index 94e6dd61a2db..e7161a86a9f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -11,12 +11,6 @@ / {
 	model = "RG503";
 	compatible = "anbernic,rg503", "rockchip,rk3566";
 
-	aliases {
-		mmc0 = &sdmmc0;
-		mmc1 = &sdmmc1;
-		mmc2 = &sdmmc2;
-	};
-
 	adc-joystick {
 		compatible = "adc-joystick";
 		io-channels = <&adc_mux 0>,
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 233eade30f21..47c8fdc7c843 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -12,6 +12,13 @@
 / {
 	chassis-type = "handset";
 
+	aliases {
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc0;
+		mmc2 = &sdmmc1;
+		mmc3 = &sdmmc2;
+	};
+
 	chosen: chosen {
 		stdout-path = "serial2:1500000n8";
 	};
-- 
2.34.1


