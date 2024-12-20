Return-Path: <devicetree+bounces-133055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6079F91C1
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:00:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 63112160A9D
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0706F1C5F2E;
	Fri, 20 Dec 2024 12:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KUse4qqS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64DAF1C3F2B
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 12:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734696045; cv=none; b=bsSnHaEwZg1v921/iiaSQRhKlZUxm0Xae+ceCiMnNF9XOb+HukGC+RVYCD0FVSw3v9KYiRGMNhd8bal6CQbXG4xD9ORLYZtbTbVzJxzvKzUfVrv1YypHsLt650Z8o5r3SFH7LVYh/EwQqpme69wFZpHTC1ysTsuRFi3/RR77GGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734696045; c=relaxed/simple;
	bh=ZvIQnE5umiaAN8ikC0HerlOXymza/w8b7xBF7bzrYuM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pa/R/EHYIjIi5ny/K79T9N4XROUWxYjR7lpvTLoVAGTJv43RphPM1axZVeZgq0BwDhYF9XSkgD8OoMkpccG3sQYCJJK5A9IkfHDbG+6d7UCDr/T1NvNJai87QtMVwtYAGT45cYZ9Bdrg7AYJWUHJUeGLHZRiF1a366qVMvep4do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KUse4qqS; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-388cae9eb9fso1057373f8f.3
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 04:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734696043; x=1735300843; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7c+9If8W7Xl+w31iRvENBg3VUkO/76wew21FGkaNGXY=;
        b=KUse4qqS+RhEDnL/WWPge6xHhIni2piSy211NR1eNJRtOqksvBoVAK76A5PaYkLHij
         LkkAR3wO7y8r3tMAqe9q81wOZprPpYQ2ijFSxy91sO1/bbyEJtN7FAjYlAsGOSvw493p
         VUXOxB54pndDGxehcZeQbZvwcrmPXyfsMMp2QXgLoV79tBzb8+D02ZZPfu3EOBNLwLk0
         dx5gXFaQGgm/uOcPyBEYvGx2USznbyohM2HqB6X6qYlbj81AbPnNMMjle7dbPlHw2xgc
         Sp2vKVnJWhzeU92UAEtdBNdCCgC6tn2FCDusZC/h8oGVKDbeRpJ+wNDeTAA7/BjGz6Q/
         N6iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734696043; x=1735300843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7c+9If8W7Xl+w31iRvENBg3VUkO/76wew21FGkaNGXY=;
        b=SxL42YL/OlGkkixpVgVzqy6G4KX+WY9i4k4+JIYf3jpTdgfnGUNE45UCLGT0fpm12J
         U1rOXpuWotgHymdh8MT6jL37LMxr60QYPPo/F5jzKlVVab4fr2dWCK9qjjBIcq9YOLPN
         eQGWqjkm7i7AWLSDiFEtwV420VXrJC2WEKj52iZOqAlkNy9U4SVA4u0XzKffvDFTDSiD
         AHy2UHgXoz/CA3qba038KxLwnMLB9FCMlEJ7cumAFg9a9mPcjznrwudIsCpEQYFSNlYD
         GbFeIlNR0Yn4+VUJBWeUjt9GF8mEIA5Cf2EK4BOnJsWJwUUVMzVetR+s1UfzROfgjPpQ
         L7tA==
X-Forwarded-Encrypted: i=1; AJvYcCWHmsR8G8mhazgSJu3EcekFyINlIdKYKiChXba6ZhA6INBfYIYkgtCRkC9mWX2pqCmXlH5fmGuq8SKA@vger.kernel.org
X-Gm-Message-State: AOJu0YwPPn/K/EG/gIOM7nPeALcgnlzMdTPH71DU2k9N3eRdaBshVozf
	N8n93LTVJoOCsJvGvKGMN6SKkGUqjqhe1JDQoX+eH+NkariiygQk
X-Gm-Gg: ASbGncu9n8ysD20g+JDOp7pMxW7usnUiNiWt3XOZeKs6Zz9Qm8KlDWnSU8BbnDl6AcV
	8BS+4TmIYxaS4rSQm4hDCGJQKcWg8RK+QviDaaEVJOpJ2Nrl6ibDDlWEYdNLakhDjhXcsj/KGMK
	P+OZBtLW1oSpB2sb7+7Ys1RYSVuzljxWgHo2MZePEe/ygeGyqF055Vq/21hagBsay3Y2NtUrzmF
	cfPy2V4676jxlNmBkodQR0fWgfKl0jmIm4vKHAsQNjYFI+OUaAIHzA6cZ/3b5GERaTAoJmHMjoQ
	zk3+2vakVYPMRYol4PCsupC6FnXnW+BARBIbp2i4dsFbZhKVW2EvqgOjXyo5Lg==
X-Google-Smtp-Source: AGHT+IE2c5XLJyzNR1zhyXkJ+darIKZUZG1iPFBT6zdD9tb9k+0R145WUAU3upIKBqOszM+jPqMnSg==
X-Received: by 2002:a5d:59ac:0:b0:386:2fc8:ef86 with SMTP id ffacd0b85a97d-38a221fac08mr2551293f8f.14.1734696042701;
        Fri, 20 Dec 2024 04:00:42 -0800 (PST)
Received: from cypher.localdomain (e.b.8.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::8be])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38a1c8b830csm3921038f8f.108.2024.12.20.04.00.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 04:00:42 -0800 (PST)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v2 2/2] arm64: dts: allwinner: a64: Add WiFi/BT header on SoPine
Date: Fri, 20 Dec 2024 12:00:31 +0000
Message-ID: <20241220120038.3137248-3-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241220120038.3137248-1-pbrobinson@gmail.com>
References: <20241220120038.3137248-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds all the pin mappings on the WiFi/BT header on
the SoPine baseboard/A64-LTS. They're disabled by default
as the modules don't ship by default. This includes, where
they haven't been already, UART1 for BT and mmc1 for WiFi.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../allwinner/sun50i-a64-sopine-baseboard.dts | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
index be2347c8f267..752d2aae8465 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
@@ -42,6 +42,11 @@ reg_vcc1v8: vcc1v8 {
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <1800000>;
 	};
+
+	wifi_pwrseq: pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 */
+	};
 };
 
 &ac_power_supply {
@@ -103,6 +108,17 @@ ext_rgmii_phy: ethernet-phy@1 {
 	};
 };
 
+/* On Wifi/BT connector */
+&mmc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc1_pins>;
+	vmmc-supply = <&reg_dldo4>;
+	vqmmc-supply = <&reg_eldo1>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	bus-width = <4>;
+	non-removable;
+};
+
 &mmc2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc2_pins>;
@@ -175,6 +191,14 @@ &uart0 {
 	status = "okay";
 };
 
+/* On Wifi/BT connector, with RTS/CTS */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts;
+	status = "disabled";
+};
+
 /* On Pi-2 connector */
 &uart2 {
 	pinctrl-names = "default";
-- 
2.47.1


