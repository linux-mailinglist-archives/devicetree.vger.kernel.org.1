Return-Path: <devicetree+bounces-79756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE8D916AFF
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 16:51:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0BC8E1C22BF4
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 14:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E86A616F8FC;
	Tue, 25 Jun 2024 14:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AdUkITCW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCF416D4C4
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 14:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719327037; cv=none; b=BC+14xJF1ndht5Qp54kV0XsWshBMG7hJ0C7GdTI4GAo1sNJVwZ91gANlFLOm41zXQn+gml5xV/xdpy5Ktiz6H2lZZyjSVymJaX0dh2JzyBDQAr7jVLMo2hRUtpvofxVWRkZrUyzcQ4ok18zpuCe8kmCV56a3bP0Dh4kQ9WecqX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719327037; c=relaxed/simple;
	bh=oHXJo4PrLGPaAFmiAS/KTJpjakAA/N8r3HA5aYOSdz0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RMF5c+hJ9of6hqCYx5eGirnLR6wyFEqAkYhx3fziCUJN20//EPMtaS+aIhAKFfYL2ihlU4tRoTPdcQdGE5qaRYEqIfRkMrk57HzBznHVVcukVuxCAaiBHCodsFLHxUaRTR1zPn1oLye8x7cK9Q2SjsqsELAIGuPfgZ47OZRKmI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AdUkITCW; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a727d9dd367so61366866b.3
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 07:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719327034; x=1719931834; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XNAdTcacMLHiwcp3rwtVy5TsM3diOedzVRX0xlC3b4s=;
        b=AdUkITCWy9fCHR8rBbQpq3oNfVuOjmgfjIAydsmPPHzO6vzM5lVuTbFR1Cn0jzAVZ2
         wpWqHvPXpYZisHubY1+9StPHvBZNVU6GEe0PC3huigo3rgoI96Jd+/5K7ciCZY0qiYif
         ygLGGllzDQEaTh9qUQYRpUB/T/6JuDfbGb/12Hwotpx1bPneRH8CQJ5XIz0nRoIibnCH
         Z5yT7O2+PUihqWFdzyUOqyijITpfIwiTDA6v2jZoAurtNyEvuZPnazPWRvPHuEMgNpX1
         A/apxQ5bKtioZvJcaNnGFWoxTUhU1zI2DPYSpYDUw0hZjR2QcTgK5iRG6b9Tz7jwu7Wr
         LAXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719327034; x=1719931834;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XNAdTcacMLHiwcp3rwtVy5TsM3diOedzVRX0xlC3b4s=;
        b=Sr/1kK1/wR+wqQCf1Nuk2Yq2kvIFU9Y/OHpRPnidKbu3iwlhy0sQyyBQfPYrsmaqNd
         ZjpNkRf4ZTIQPYb6U5adzU1C6haq3NBNAo7HVyZIXkqILhfTrEk/lhu2YxwvuxWJTUMu
         TmQux1LV3yCWgbRd0t5V1UguFXkwqxbCtDs9BLj+JLLXuLYPLyRkfs7ZkvJFw78Yahyx
         bHpnR1akWjs57S0iHXiwC315uvrLGdQmUffiYgq2VTXtA63dZaE44DxT4/hG3odqB9/l
         Rc+0V8JZR0vTAR+2kPdDAIZw7Rzn/Yl5s+GYq2Mft0baty7m6sv4g8KrdMZ3neIkbBEg
         1xrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXf9f7Nvkh1/V1n8e79wfUsPxP1opDKcNeKf4jR4DIoPzWD4DAJt2K+pV0vw8pBELZUCol3YvW4jkZvGhXlVDSZ+OTBPiLU1snvHg==
X-Gm-Message-State: AOJu0Ywlm5Tu/JB8fCyNRgh6RX1LPqjfSAsZoB9dEP4EnXdeL3CvY27M
	B9TE3oku7k1zl6utZ/LkKEE3GTLsRi36I1YjIp0n5ZGMEQuYoS1gE8B8lFp0bD4=
X-Google-Smtp-Source: AGHT+IEAx+7PNBsfh1PecChpyxyxGCwBCHXZraE/xlVLiq1yJ87mv2cTQeKVv1iemDFLo464qB8MVw==
X-Received: by 2002:a17:907:a649:b0:a72:8135:2d4f with SMTP id a640c23a62f3a-a7281352e3cmr12762066b.48.1719327034140;
        Tue, 25 Jun 2024 07:50:34 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:b30c:4c5e:f49e:ab33])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a724162f037sm355945066b.194.2024.06.25.07.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 07:50:33 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 2/2] arm64: dts: amlogic: add power domain to hdmitx
Date: Tue, 25 Jun 2024 16:50:15 +0200
Message-ID: <20240625145017.1003346-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240625145017.1003346-1-jbrunet@baylibre.com>
References: <20240625145017.1003346-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

HDMI Tx needs HDMI Tx memory power domain turned on. This power domain is
handled under the VPU power domain.

The HDMI Tx currently works because it is enabling the PD by directly
poking the power controller register. It is should not do that but properly
use the power domain controller.

Fix this by adding the power domain to HDMI Tx.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12.dtsi  | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi | 1 +
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi  | 1 +
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi  | 4 ++++
 4 files changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
index e732df3f3114..664912d1beaa 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
@@ -363,6 +363,10 @@ &ethmac {
 	power-domains = <&pwrc PWRC_G12A_ETH_ID>;
 };
 
+&hdmi_tx {
+	power-domains = <&pwrc PWRC_G12A_VPU_ID>;
+};
+
 &vpu {
 	power-domains = <&pwrc PWRC_G12A_VPU_ID>;
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
index 12ef6e81c8bd..d8a386c31914 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
@@ -315,6 +315,7 @@ &hdmi_tx {
 		 <&clkc CLKID_CLK81>,
 		 <&clkc CLKID_GCLK_VENCI_INT0>;
 	clock-names = "isfr", "iahb", "venci";
+	power-domains = <&pwrc PWRC_GXBB_VPU_ID>;
 };
 
 &sysctrl {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index 17bcfa4702e1..82386feb5177 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -327,6 +327,7 @@ &hdmi_tx {
 		 <&clkc CLKID_CLK81>,
 		 <&clkc CLKID_GCLK_VENCI_INT0>;
 	clock-names = "isfr", "iahb", "venci";
+	power-domains = <&pwrc PWRC_GXBB_VPU_ID>;
 };
 
 &sysctrl {
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
index cd0046c0fe72..c76dcb0158a7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
@@ -514,6 +514,10 @@ &gpio_intc {
 		     "amlogic,meson-gpio-intc";
 };
 
+&hdmi_tx {
+	power-domains = <&pwrc PWRC_SM1_VPU_ID>;
+};
+
 &pcie {
 	power-domains = <&pwrc PWRC_SM1_PCIE_ID>;
 };
-- 
2.43.0


