Return-Path: <devicetree+bounces-233742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B3194C251AC
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:54:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6FD5F4F5EEA
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F57734B1B0;
	Fri, 31 Oct 2025 12:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="czqxuVGb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B91329E6F
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761915070; cv=none; b=Y3GaCZGLX9FPGJLUMoGAPnxG8J58OcVrhz4lbRA0mquWdNzdFDmuRgssdR0WzcH61JaUUWwbw3PO03l/P7bnfz+OY+IKzdlgs+8WlSi2ueDfJxkhRY/xUfNhTRXmPjT2QynPlMwWAKtKBex246tkVcqppqwLMvih0V0apZLaVPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761915070; c=relaxed/simple;
	bh=Yu/2j0GxwZBaEKqZGl6yxDClZc58fe7sUMa878UE3Uc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oH0L6gSHQcxys1SgPtvoJUjbC8K5whk943bleCXmS0qEh8U8HESVVrKmbCbC2yG2StzAAVMW2fM7jxg5xT7TpEh78bL5EbVybTGbQ8kDlKoHxwlFFx/PiU+gZLmg8XbONHrAOPufGlSqXTXu8zmam1+k4V88lYzQkpGYolvmuP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=czqxuVGb; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3ece1102998so1575367f8f.2
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761915067; x=1762519867; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qvXLX7+QZgiVzZvZ0wG+LadEzSHLnJ6P5bBzFMwgkSc=;
        b=czqxuVGbYv2FIGy4das2YsdxTGkLU9rL1hwVIHmXlQDR1l9Kw9KZckb5z2fgQSTM1x
         1pnYvNkQ7qNillU/Cpudr8VfDPgQv6PAgd2npORNSRNQXb8UW0Ih2vHTVZboqqK2bgPz
         l2LXYQXub1jHg0KIwH8OKQGtk337Mf6Fv5iv9zqqiIU+fznM0b/4j7SNYJdHqY3hy1dP
         MrnqA1lvP1qyBhkLQwXRhrhDJ40kEUW9YZW3LbHu6ltxl7eGzc5mhnTYK7Kt8Yu/UXoI
         BvBC6FPUzFL8GS1FpYzI2PDn0syUzuezJRQmvuV04LV2/6/u2gYxJAL5nYvHSbojAOeC
         xZVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761915067; x=1762519867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qvXLX7+QZgiVzZvZ0wG+LadEzSHLnJ6P5bBzFMwgkSc=;
        b=o9hAPFfNHVUKbd0dTnnUxA2AV4Cbci97werkbkZa06bXZjDqRXqNie8S53IWZ+F9YJ
         d8OFY7OAq8TIYaFnWkS6VJrvj80AUFvs+dTsgL7a0WqdvToCTHCzJrsX/y3TR/sDvsdQ
         Y6gAkx09N1nWmU2gWGvgE3hPMKxsmLUxAf2dL6/657rEG8yWB0EiA3zMb1T5uBdUBB+p
         dR7BXb29lTUujV7NhmjjBRG0mN8JWY1kSEOmukM676O6MvG0obyfAbqh3GG44o12jvFG
         EqOCjm1JlfSMSqL6hOsl321NrLiwR4s3w9/Hgf5Bb+z7OvYKrgK+eaxGz0UJw006mPIT
         rXDw==
X-Forwarded-Encrypted: i=1; AJvYcCXzXiiZINM6QGfxwSksNItPT45VgznOy9HiFfo4T0yQHE2lC4B4392cJIiVs4k/+GB7zb5eLgrf5h0I@vger.kernel.org
X-Gm-Message-State: AOJu0YwKms8NQIZI+BtMckKxSm5KP7PcOuA1YWrGqgMtb7PAnAXX8hOv
	JAX7Bn3NDowlhW9t4qSVfrBjtNDOO5pKDZvjmV1jJ1YT0zYgaBIwvppx
X-Gm-Gg: ASbGncsOlqpCF9iRKD6yNlsiAn/3xabZPHl6GVMFf8to/TFGYVMrQr7+m0xV741aEON
	y3rBazR4fcvtlGW22Nmxb03vtoNdkTociBeXLJN9j/rntBnHgu+To0wOdW857XoEjaKl+iQ8V9t
	jZyfbUq8OZ0TTm7NPq3a3vMYV+SVtN/rq+Bq2UC2NiqZaFXcyA2AzeC3uZiAXycxX799QiOTOdY
	hbkGX6m0wyQp/aahTmg0vfinuDNxyd7PPnh4tRVGd/wRYoEJ3Pw1356iBi7nitftLwtxV15XuHK
	8mQbcekpZquv0fvCnzglQYuwjM+RhrPgmauECeSmiOgl6MEl8v/EHMCc3YJttUFFHSCdT98U/ei
	7Nl13fmmc9mrmHANCOvk/uyZ/jiZkYhgsvZXCcpBhiVay+tciQyrkM1vVwESwaZXCYhBPFUiQoW
	GsPf1tLkJlcrSnp4qaUl7/5bvbGPE5WWzTLqWOS8Ex97zQV6GJetvoVHMKowQwMbBlkzjao8GoW
	3FSNw==
X-Google-Smtp-Source: AGHT+IER0uBeKPOPxvxxiQO98NZsaBc8tk7mKIGeshxcLGZG7k6FCf35yqXCrk9lgrCyQ4EIIt8pbg==
X-Received: by 2002:a05:6000:4713:b0:429:95de:163 with SMTP id ffacd0b85a97d-429bd67bd22mr3151971f8f.20.1761915066584;
        Fri, 31 Oct 2025 05:51:06 -0700 (PDT)
Received: from toolbox.int.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429c13f1d4csm3144559f8f.39.2025.10.31.05.51.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:51:06 -0700 (PDT)
From: max.oss.09@gmail.com
To: Max Krummenacher <max.krummenacher@toradex.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/3] arm64: dts: colibri-imx8x: Add wi-fi 32kHz clock
Date: Fri, 31 Oct 2025 13:49:42 +0100
Message-ID: <20251031125003.275033-3-max.oss.09@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20251031125003.275033-1-max.oss.09@gmail.com>
References: <20251031125003.275033-1-max.oss.09@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Max Krummenacher <max.krummenacher@toradex.com>

The Wi-Fi module requires a 32kHz clock to support Wi-Fi/BT low power
operation.
Setting the pinmuxing option on the connected pin to 32kHz is all
needed to generated the signal.

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
---

 arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
index 318fe4db1b64..32bca4c6f37e 100644
--- a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
@@ -490,7 +490,7 @@ &mu1_m0 {
 /* On-module PCIe for Wi-Fi */
 &pcieb {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_pcieb>;
+	pinctrl-0 = <&pinctrl_pcieb>, <&pinctrl_wifi>;
 	phys = <&hsio_phy 0 PHY_TYPE_PCIE 0>;
 	phy-names = "pcie-phy";
 	reset-gpios = <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
-- 
2.42.0


