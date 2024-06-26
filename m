Return-Path: <devicetree+bounces-80316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B31D39185C2
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:28:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D62AD1C21F9C
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:28:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 824AA18EFCF;
	Wed, 26 Jun 2024 15:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DeM/izUp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92159185083
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719415666; cv=none; b=keTVyyBolD9iY7n5lU/OoB/Fsz6SafPLMCdJkPInc23ZDNkZhpDzJL93pZTfR7aPPrqRaJhfTT8ooShwryjzvn85MjZ8KzaWZLwkN/gyyBWtROWivsN/jj0bvJYDMEfGKjnsExjBXOb5zoQTMJLhRqY9y3KG21HQeMCe5wbVVZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719415666; c=relaxed/simple;
	bh=O5netpnGIBeIkw1M4/lf2Wc5bW6UoJ7ahYmew4h/C38=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Dlv175f10cMQWVwF8jLfquRtnScdd1vD7+0TZwfFXyb+lVuR20KTIOiejsmxIBTKAeo5HlpR7iaAUCw4NMvH6oK+cKFA4mvjB/hjbsaYmSdNpW3kexU54r2r3yU3BUuYpuMI4S250yi3DMk5wAKaOSd8txwiECOO+S9492THfe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=DeM/izUp; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ec5779b423so47248021fa.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 08:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719415663; x=1720020463; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dli0klT0JrJmYvluyt71Tv2QHkdxPzzP+lnfxnwDHgQ=;
        b=DeM/izUppdzPcDHRyoi6epJc3EBTMR3KK0OR1i0NPSJQG7gER2S3jQbkc2Vr/IOJi4
         Ie4c2Cpp5PMoNwdZtgGe1ENArYm9HuQtUIXozxveEmJG/3j96G4L95lTGQxRm1GVrnUF
         S3ISm0JJtddqbjwEidqbDNEKwkOOVoqcBg4ufQHOJ/RsyDp7OYJPImZp6zSK1ITXCzJj
         2TS8d7CS8KyB5QnDB/G10q5k4AyPNEQkkEYv3eEpxd7GKMPpadBsKXvdHGTi1HTu1G2S
         +SIm0e0qjjb3I9KPHQrIJM1xBOT75LpQvGrr6irJO/xWJjHm7SMCOaH60UUlRUIjrUcW
         kCyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719415663; x=1720020463;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dli0klT0JrJmYvluyt71Tv2QHkdxPzzP+lnfxnwDHgQ=;
        b=KPHb4MVEc85RBZf+JqmRZqwMA8Pp6OqFgiCg3CU5ghc5weQYTaH0mwE7OqsMXIKdtX
         M7QCBUQwLulGHORMHX3IWzVVm342l0FFpp7Nyt9EWqWQaQe2sjWugKJEq8hfgdXiimpQ
         WHMuey7hau7MFA+JLxSsERwe5qj+Upl8pBOInKwfwNq/7ITNBFH07PXrQsu7L80nRmpW
         ClmYMF3KWZaI3LQTj+sDwI4E9G9hNTlAbs0pZZmOd4Enugo8OcKTuJt4Ji66vZPbDg8R
         pfrn56A760UgtviSjEQcw0BEbRNHL/d5vFxTiAGVC+3q0k7YKovTwvF5OcAxwxsBraGY
         BFzw==
X-Forwarded-Encrypted: i=1; AJvYcCVklkpD5e1tBXdyvOz7b+yZk7U6TFkFWW/ItCt9ey5VHyl/C3B6T57jXwvOgUJLugqVZtDiuheG+TCxqI13jIjpxPlR1VoaPDmUxQ==
X-Gm-Message-State: AOJu0YzSQSdQB87TyS0FXyVZ1/D58nFlxJqO54Lh9/1Oj7GpSIysgpdA
	AjVETLmFXsTUGJ0Ls9ALmROVrN1eBl8adScDjNjYg9gImTZQmz/+yEk0V4CaIzE=
X-Google-Smtp-Source: AGHT+IEeSTyXRJHUOnk6F/6DYuHl5N4ZmAN2SVMYbgd+QvOtm5zHfhjVMr2psCBRFiepsL77IbqapQ==
X-Received: by 2002:a2e:9090:0:b0:2ec:5621:b9f2 with SMTP id 38308e7fff4ca-2ec5936fb3amr83095041fa.41.1719415662730;
        Wed, 26 Jun 2024 08:27:42 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:7be7:aef1:af9e:fff6])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4249b4233b3sm42321675e9.0.2024.06.26.08.27.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 08:27:42 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 2/2] arm64: dts: amlogic: setup hdmi system clock
Date: Wed, 26 Jun 2024 17:27:31 +0200
Message-ID: <20240626152733.1350376-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240626152733.1350376-1-jbrunet@baylibre.com>
References: <20240626152733.1350376-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

HDMI Tx needs the system clock set on the xtal rate.
This clock is managed by the main clock controller of the related SoCs.

Currently 2 part of the display drivers race to setup the HDMI system
clock by directly poking the controller register. The clock API should
be used to setup the rate instead.

Use assigned-clock to setup the HDMI system clock.

Fixes: 6939db7e0dbf ("ARM64: dts: meson-gx: Add support for HDMI output")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 5 +++++
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi       | 5 +++++
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi        | 5 +++++
 3 files changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 354f3c722b04..0c425af3174d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -215,6 +215,11 @@ hdmi_tx: hdmi-tx@0 {
 				#sound-dai-cells = <0>;
 				status = "disabled";
 
+				assigned-clocks = <&clkc CLKID_HDMI_SEL>,
+						  <&clkc CLKID_HDMI>;
+				assigned-clock-parents = <&xtal>, <0>;
+				assigned-clock-rates = <0>, <24000000>;
+
 				/* VPU VENC Input */
 				hdmi_tx_venc_port: port@0 {
 					reg = <0>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
index 041c37b809f2..ed00e67e6923 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
@@ -316,6 +316,11 @@ &hdmi_tx {
 		 <&clkc CLKID_GCLK_VENCI_INT0>;
 	clock-names = "isfr", "iahb", "venci";
 	power-domains = <&pwrc PWRC_GXBB_VPU_ID>;
+
+	assigned-clocks = <&clkc CLKID_HDMI_SEL>,
+			  <&clkc CLKID_HDMI>;
+	assigned-clock-parents = <&xtal>, <0>;
+	assigned-clock-rates = <0>, <24000000>;
 };
 
 &sysctrl {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index 067108800a58..f58d1790de1c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -328,6 +328,11 @@ &hdmi_tx {
 		 <&clkc CLKID_GCLK_VENCI_INT0>;
 	clock-names = "isfr", "iahb", "venci";
 	power-domains = <&pwrc PWRC_GXBB_VPU_ID>;
+
+	assigned-clocks = <&clkc CLKID_HDMI_SEL>,
+			  <&clkc CLKID_HDMI>;
+	assigned-clock-parents = <&xtal>, <0>;
+	assigned-clock-rates = <0>, <24000000>;
 };
 
 &sysctrl {
-- 
2.43.0


