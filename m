Return-Path: <devicetree+bounces-75304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F390906618
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 10:02:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D81631F2532B
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 08:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0705F13CAA7;
	Thu, 13 Jun 2024 08:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rLjEj3bA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861C313A3F4
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 08:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718265769; cv=none; b=qJ1/7gAPE92KYsqs8kbnmTcLM+FblMMvFlzcAlZQ7XH5Yg4AxaJ0dSvSpAA+Z/MaBOglx3VSmtvtH26W30b/AfedeqWA5vRQ8NDYDx4r7Rg2Eyl7ZMORnSFsF1ZpBSV5+tiFhi35yZdcPNAiF0pPQ/GgBqZtS0X8LFXT2fPvlC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718265769; c=relaxed/simple;
	bh=bO/WQwRtL8e0k3atwcPVBR73XZDenAQhduePCTumyEs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=k3hNBCMI2Zc/x8IO5KK2jNbISE4m5gFVN2AP7oy7OgU1zuUGZnf7BS4W27+xBKOpNbSATGcreu4IYwmcnaOkmkiasrhmQJEPs76PhOXoX8DTyadKsnfgsLiyl36gS9HZLj1UZEahZqH7xe0m6FF6l7+VznPnSC/UUxb7/hnx2AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rLjEj3bA; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a6ef8bf500dso80658666b.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 01:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718265766; x=1718870566; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dnouXYbKR9C+V842Lu/FlejmK+Q61rSDTEmMAMuXs1s=;
        b=rLjEj3bAofqlM/vU9cj6hM9RaKum2gAgVkkCB9sS2c7fNtajubrSKiBKgAiEQ7r5hF
         KfAPFfTG+BuJd8yAglwC7RirOWQoJPaHU/qU0AmfMx3pPGcL+ULJaY6TZ52BfxKrSOAz
         FYggZo+ph/nt0auOoaYeCXsA42922wJEd7hAenBEtFRJGuaiO+if53KRZn325ZnGx4Rb
         3o+MRuabBtldLFdowFytcALKURoxmKSCVNycjLW8ONlAQelCcIiIMyu3zxAJEXvMUJKy
         hMUzuD8f0JnsuH4wS51V5LlF4pXIOEiQRmbBTJPqZhrc67UEuHOQcykZGm31a/ieAke2
         BHdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718265766; x=1718870566;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dnouXYbKR9C+V842Lu/FlejmK+Q61rSDTEmMAMuXs1s=;
        b=dXKegcRjberT3MHKLtL5tmMURcSOu1CWfD/w+b2zWLz+lN7/3xF9dbiP3aGHYSBM2N
         OPpr9uJP+tPFqA8+P/m4leEdFyWWsQI75oTcdXzTqXFuimTPIKmsMHxD0/fVfGeIzbDp
         kQtEA2rGClOJPGL1/DhCfvU2MADu9c50p7p/i0vFK/QvC9rdqn2bqM51JCTny4Dg/Tpm
         dwDuTqsOxHhtSx1VHsfIuOOYukXYxN66uPzZQkDjbl8RkzzgNzFrwBtICX1vfZ+9Bsbh
         LxiHGaOaqgXFxOBO0RAz/xkSmsbb/AOPBMb9vV7SniQ8KXZetUZepWwsd86rYlE4rq7i
         itzg==
X-Forwarded-Encrypted: i=1; AJvYcCWsWh20Qq2+OWS1yGIMnK1YAB4FgpCqkM3vuSxp5LkkvytGKeRRnVTJJ5Dc1tL+gUBf2J5DqO2quRs2lkjPypzhePmN4D0KZ4EWGQ==
X-Gm-Message-State: AOJu0Yx8oYGGUQlGkx256qP/pCNALsanmfmNdKY5WPJjYox6rNJIdRem
	/VJPr/WWHcLysR1TD9Ua4bDDg3B3vN8w4mM2N37vF8I+EwfciO7+YgdmXykGI1x5T9/4t+PY6kw
	zuqY=
X-Google-Smtp-Source: AGHT+IH86WCh6FavzI/k/EBoqWjp08iSHXRHSe5UpMmzW1WT6el5RzkD13yWrMvY7VJuYybyeeoG4w==
X-Received: by 2002:a17:906:1593:b0:a6f:5490:5897 with SMTP id a640c23a62f3a-a6f54905e7cmr93609066b.8.1718265765718;
        Thu, 13 Jun 2024 01:02:45 -0700 (PDT)
Received: from localhost (p509153eb.dip0.t-ipconnect.de. [80.145.83.235])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56db620csm44646566b.71.2024.06.13.01.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 01:02:45 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: stm32mp135f-dk: Document output pins for PWMs
Date: Thu, 13 Jun 2024 10:02:28 +0200
Message-ID: <20240613080229.2292413-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1788; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=bO/WQwRtL8e0k3atwcPVBR73XZDenAQhduePCTumyEs=; b=owGbwMvMwMXY3/A7olbonx/jabUkhrSs5VOn1vxc9vQiZ1m/gqu6yqfT21rqDKcf7F5abHi07 ZvOBbOgTkZjFgZGLgZZMUUW+8Y1mVZVcpGda/9dhhnEygQyhYGLUwAm8iyT/X9u0I3D/B/WnlEv KBGax3Z9Qlu0XnrX0spYYU4Rv3nyR7doHrhdba+wP1ri81tF3gcOqcG73NbevWzN8c47ZruhgXw vT0KBukW8Z6S6rN2RqCBvdyWXgMXHT+yP38Ypw933xErGypdV/qrwZca9NdPSO2SqayMnpb0Ou5 UvqfZGmndn1RTvU0q8+UVnrpjwlcypZ/rK+aqhoXZS/lt9oY3rJBgF3/Q+2S7Vue6Pi8jel96mf 35OsDnAd1pQQNon4Avj/C39BxVPvvmQ5GC0OnKizIXUX3NaVhpmswmuesv072Dr5RzfPaJFr2ZV 6MjlGf32n37YQ/DPzMT5Qtymhw2MH9z5yJO1r2hBN38cAA==
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

To simplify identifying the pins where the PWM output is routed to,
add a comment to each PWM device about the respective pin on the
expansion connector.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 arch/arm/boot/dts/st/stm32mp135f-dk.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp135f-dk.dts b/arch/arm/boot/dts/st/stm32mp135f-dk.dts
index 567e53ad285f..f1b50e4c1059 100644
--- a/arch/arm/boot/dts/st/stm32mp135f-dk.dts
+++ b/arch/arm/boot/dts/st/stm32mp135f-dk.dts
@@ -273,6 +273,7 @@ &timers3 {
 	/delete-property/dma-names;
 	status = "disabled";
 	pwm {
+		/* PWM output on pin 7 of the expansion connector (CN8.7) using TIM3_CH4 function */
 		pinctrl-0 = <&pwm3_pins_a>;
 		pinctrl-1 = <&pwm3_sleep_pins_a>;
 		pinctrl-names = "default", "sleep";
@@ -288,6 +289,7 @@ &timers4 {
 	/delete-property/dma-names;
 	status = "disabled";
 	pwm {
+		/* PWM output on pin 31 of the expansion connector (CN8.31) using TIM4_CH2 function */
 		pinctrl-0 = <&pwm4_pins_a>;
 		pinctrl-1 = <&pwm4_sleep_pins_a>;
 		pinctrl-names = "default", "sleep";
@@ -303,6 +305,7 @@ &timers8 {
 	/delete-property/dma-names;
 	status = "disabled";
 	pwm {
+		/* PWM output on pin 32 of the expansion connector (CN8.32) using TIM8_CH3 function */
 		pinctrl-0 = <&pwm8_pins_a>;
 		pinctrl-1 = <&pwm8_sleep_pins_a>;
 		pinctrl-names = "default", "sleep";
@@ -316,6 +319,7 @@ timer@7 {
 &timers14 {
 	status = "disabled";
 	pwm {
+		/* PWM output on pin 33 of the expansion connector (CN8.33) using TIM14_CH1 function */
 		pinctrl-0 = <&pwm14_pins_a>;
 		pinctrl-1 = <&pwm14_sleep_pins_a>;
 		pinctrl-names = "default", "sleep";

base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
-- 
2.43.0


