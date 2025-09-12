Return-Path: <devicetree+bounces-216468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06789B54DAD
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:30:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B55423A8C0E
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:26:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55EAF30CD94;
	Fri, 12 Sep 2025 12:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="aH87gXJF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFAE030AD13
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757679902; cv=none; b=SipUxBnp6f3qA+l9QbtIwa3vJcrp7AgwWTyLaVZoLlHvRE4aUuPQPeElAqtvrM6SZn9+NL4+BDc5ar5AiEJbH3Tj9S6pn/oeN640NIVvBqLHOXtDHku7sfU/ME0++MOA3UFCAwKgstrd37ybLu2bv7VVWMQI0bX8dgLQruiZ+lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757679902; c=relaxed/simple;
	bh=i6Ot3jDw1L8DR17nkHbO7WVOceauyHOBMPobzpRlxUo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=upOJ/eHyuME3v++ocTHE06hwLYg/iKSoslUB4qYmLlusLYKq0XikklvleBeRpPoRpkldiv1TkGUh82BhxvSjLyJHsQD9Y4xKlrbTXyitgmKOszENG7/AW0LIOdR8fmel++O7ZRJkhj3iKBbh1FqFsh7ZYpP5bqwBh7yZwvAjLa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=aH87gXJF; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3d3ff4a4d6fso1458086f8f.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 05:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1757679898; x=1758284698; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=avL90xLT3GgbgtC/IjtA6tdWsXd91EIgkF2HC8fxIi4=;
        b=aH87gXJFxVuF+DTvDTUuuO5xPw/841aAxVxi+MZFn7PpFnlIe8Y9LmBideL5hk9aSz
         Ij5Ot8GOXXj2yTmbi7lKZZX6W7ggoeA+GJyb2epH7WvP9fQspSQltau0d2ye2X9BCDaa
         f7i72BH7Mro2+d1M1wSkbbVGdXDRKvlapW629reyobEy/Xjvtl+TFX+sVUl0cySti3Br
         BKBqdlTiyjvvAUjOkJg1ZAh2kL2kqUVCZCOOP7sPbAoiUlznD5K/WMnZ5r/ruwylQSil
         ww9PrsdIX29iPOeuPWSVcI8Rp7NjEZufJNWyOsK8OyxEBW6g8FWmFIcd01uqXNlbZNfX
         t+CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757679898; x=1758284698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=avL90xLT3GgbgtC/IjtA6tdWsXd91EIgkF2HC8fxIi4=;
        b=jtAZgbzdoo3Pbuk9VcwAo9UynBDp/7DeJlf70dwFzDmjwJmy95vy4oX5SUpWWOZV9R
         paQiZRDKnC4HyC5oy76j6t45JgdNdB5vZhUUDAYKP5JvO7Y5xKSp/+qgE5+nT181vdHE
         MU+Rtmh5QHatWcEu2QR+n4Em9ubQuELpxw+10icGWSGRHULf3A+negg97RFs09I340mZ
         JYfHc5tMSKpj+kadbiriOoSyDuANaTQgiYSE23m/DeE0GzQ2d8Cjhy2dnfB2M+Q4cLBx
         aMYsG6ve09ZUUhLU4UXnfWoIOlUEjELY2grQeGcpkIkT4y6GWmi85cM/GFMj7FEZvgeW
         j/UQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzDYcg7QTLMCeSD+AKG++z1oznKtNDroxWbkvIxEnD+adseeJzkeEcpOFhQDtd02BmF3QrHr9WoXP3@vger.kernel.org
X-Gm-Message-State: AOJu0YxX2a6B5mPSE5HqB8+AdzTPge46xAjKRRDQlqOkSl1WX1zk7Igc
	W3720KKygfWJjhwyblwtEjQ31DP2/QRq5Em6wz1A4W7lJ6wo9OKl4eW39kCGNzRIni8=
X-Gm-Gg: ASbGncuCVvh8JOcYuEZjQbVbTxTN+p5p3+D/tV+5JdYsKF4TEkpCITeADXctpw85dTW
	bfhF/KoiD2ZidjVhRUaCu1xmKEwu2q//NhuEg5Ii9taAueC5AArz8+2CFZnlXH145q0qPW25bw8
	unef/mXzHrEmU/73ktYvyvzNdjWFNNaURP1q8uHcCu66xbt4F70yPbB1iZG5LLjGc9ctTMwfvLE
	4W5Ijcf2hlLjhFexycJmeV7PSC5wVR1JDV1GyMuvNF3idkjpTxGin/UvPyjWBqyk2HpXphyodYL
	rjUI6NQscFleHQlHU+6TDk3beEq/8aSV2i2sMCPS8zEzW7ADhI6xO9Jy5JuCP7759BkGJVgHG+g
	TeeF71R6Y8IKvmAO+522YDIK6+9c81bT4w0lnaqmtvxw6Uu9MnlKjIKm4Bl1sWj3vJewzRSFltg
	==
X-Google-Smtp-Source: AGHT+IFZ2HQn1VMUOUkCZ958fnWk75/NfdzSXgcuOqPzgMCFK5vrPSZLKhjqjU2vU8HEUNdayX/ynA==
X-Received: by 2002:a05:6000:186a:b0:3d1:721:31de with SMTP id ffacd0b85a97d-3e7658bc621mr2735063f8f.7.1757679897904;
        Fri, 12 Sep 2025 05:24:57 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607770c2sm6320091f8f.8.2025.09.12.05.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 05:24:57 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v4 5/6] arm64: dts: renesas: rzg3s-smarc: Enable PCIe
Date: Fri, 12 Sep 2025 15:24:43 +0300
Message-ID: <20250912122444.3870284-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250912122444.3870284-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250912122444.3870284-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The RZ Smarc Carrier-II board has PCIe headers mounted on it. Enable PCIe
support.

Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- none

Changes in v3:
- collected tags

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 5e044a4d0234..6e9e78aca0b0 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -132,6 +132,12 @@ power-monitor@44 {
 	};
 };
 
+&pcie {
+	pinctrl-0 = <&pcie_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &pinctrl {
 	audio_clock_pins: audio-clock {
 		pins = "AUDIO_CLK1", "AUDIO_CLK2";
@@ -159,6 +165,11 @@ key-3-gpio-hog {
 		line-name = "key-3-gpio-irq";
 	};
 
+	pcie_pins: pcie {
+		pinmux = <RZG2L_PORT_PINMUX(13, 2, 2)>, /* PCIE_RST_OUT_B */
+			 <RZG2L_PORT_PINMUX(13, 3, 2)>; /* PCIE_CLKREQ_B */
+	};
+
 	scif0_pins: scif0 {
 		pinmux = <RZG2L_PORT_PINMUX(6, 3, 1)>, /* RXD */
 			 <RZG2L_PORT_PINMUX(6, 4, 1)>; /* TXD */
-- 
2.43.0


