Return-Path: <devicetree+bounces-80315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0CF9185C0
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:28:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 63CC128A843
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A86FA18C344;
	Wed, 26 Jun 2024 15:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ylPOhJhb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55C018A94B
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719415665; cv=none; b=etdKNRF1jZ143dCgLUSe+n1PKdQisNbTM4upqi9WxCWvWnePGVDfEgwMOFMZ1oLm6gGe4oUP/wJQGIKB/6g7RdoeSU/8ocKA9w73/IFLDkwvBsMhaX4hgJt05wf0L+UpJ0a4UOtbmV6Do3fGalS198FncdgNHyo/nQnZafUmoBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719415665; c=relaxed/simple;
	bh=7W0xkwII5/YTLpJlF9tb/ay7UeJGtcqeUNBnJaO04Gw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Afa1TdXHs9MHTaOxDNel5HhBpx2jevmVO76F2Ehleo+PH9YlxvDNZYDn4SMvRepNcsPmuVSU5x98R7qFG2wJ390aDXqzeGDWLcTbIPLY5o90S1/1AgodIJ5/SjCbDno5Ei4K/Di0bv80t6BtCXbMamjrQ48zwxWknwi3zSSgp90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ylPOhJhb; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4248ea53493so26998635e9.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 08:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719415662; x=1720020462; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c8eDGzZ+IErnn0aKNGPDs0TY+0W/jTGDRNGvqdMq9Lg=;
        b=ylPOhJhbS8amTyePSnc6cQUNAET+MvPwMoUiAqimbOS/wG9SurMcqw5BxkGDkQ2T24
         /D35+Tx3Bc/Mc5/If8vLVHdvARO+ZgVgvOuixNu2jhyPh5ylHiouZOiwAmDDCyN+Dax5
         J2sZWPiSkV9u8rkkcgKvzJGdBz8Xq58ydyq7GoonCCKhaynARQAfd5G4K174lIroPD9j
         /6FlO/Z4Uzv7SgwDbLOQqvAc1A2ETdrDByV21SbJeW3MaQxFNsRO/pX76gV+pC/s6lqT
         kN8Ty+BHnPPEhLxmbEe4ni7W1n6PtkgAV0zOXEKcMqrr54uEy3oQxbWd4XQV00vUsKvY
         ee4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719415662; x=1720020462;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c8eDGzZ+IErnn0aKNGPDs0TY+0W/jTGDRNGvqdMq9Lg=;
        b=h+vtyOq2iEDdKoYXKhcWNy17RyzspRKksYoBPVEfNIQtooKD2zOSkKxDhF1vghyx7O
         EyiRKlXEKypSSqYLiZOWxhRPp4sfVnf++qjKrArWjrEcxIQAMtcujRpgRWjlfCKS0IB5
         ZrVAoBeF1xqr+qNDmeF/Iea/MZYwuvMHL6tgzYofX9Kn814rhr7GhwGNUGAZ7wg2Iytf
         TQJe4t/fMeB5vXaFepWo6ngbM3fqErAU4YJrCMFB+fT+iEraEyZMTY1+gOA0OTLj+8TN
         /jKkjqzvkq1s75uLdmmVP+oqInMQcPwtItzvrRIjNkRphvbzM4U8eQ/qERu1u803rsF7
         GLLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQE+CtbBlt0PjqX3mrPVn9KoRyEU2jBVvmdsaycIAmYRRMYhQD4Vp2fokirmcAqsnAHxf3/ubrgvbCzeDJieLLa2wmQZ1hVA1OMQ==
X-Gm-Message-State: AOJu0YyufaSnuTwfo2PFRVqvQUMktm47NDQhgCZkqFFRvAmkwT479c8U
	fbctptbFV5l5oUCAUrUihzYAVu9OWJen4biaX+n+b6q1gthdeaNU2w7lu8AFikE=
X-Google-Smtp-Source: AGHT+IHHnjS6+dJqx70WoQTYtvaGWcpY7e+5P/bQbgSAIxnlHIm5/9MX4ZlCOoXCOvUP9hGlPkhlVg==
X-Received: by 2002:a05:600c:4496:b0:424:a578:fc5 with SMTP id 5b1f17b1804b1-424a5781145mr33388605e9.32.1719415662054;
        Wed, 26 Jun 2024 08:27:42 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:7be7:aef1:af9e:fff6])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4249b4233b3sm42321675e9.0.2024.06.26.08.27.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 08:27:41 -0700 (PDT)
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
Subject: [PATCH 1/2] arm64: dts: amlogic: gx: correct hdmi clocks
Date: Wed, 26 Jun 2024 17:27:30 +0200
Message-ID: <20240626152733.1350376-2-jbrunet@baylibre.com>
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

The clocks provided to HDMI tx are not consistent between gx and g12:
* gx receives the peripheral clock as 'isfr' while g12 receives it as
  'iahb'
* g12 gets the HDMI system clock as 'isfr' but gx does not even get it.
  It surely needs that clock since the driver is directly poking around
  the clock controller's registers for that clock.

Align gx SoCs with g12 and provide:
 * the HDMI peripheral clock as 'iahb'
 * the HDMI system clock as 'isfr'

Fixes: 6939db7e0dbf ("ARM64: dts: meson-gx: Add support for HDMI output")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi  | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
index d8a386c31914..041c37b809f2 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
@@ -311,8 +311,8 @@ &hdmi_tx {
 		 <&reset RESET_HDMI_SYSTEM_RESET>,
 		 <&reset RESET_HDMI_TX>;
 	reset-names = "hdmitx_apb", "hdmitx", "hdmitx_phy";
-	clocks = <&clkc CLKID_HDMI_PCLK>,
-		 <&clkc CLKID_CLK81>,
+	clocks = <&clkc CLKID_HDMI>,
+		 <&clkc CLKID_HDMI_PCLK>,
 		 <&clkc CLKID_GCLK_VENCI_INT0>;
 	clock-names = "isfr", "iahb", "venci";
 	power-domains = <&pwrc PWRC_GXBB_VPU_ID>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index 82386feb5177..067108800a58 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -323,8 +323,8 @@ &hdmi_tx {
 		 <&reset RESET_HDMI_SYSTEM_RESET>,
 		 <&reset RESET_HDMI_TX>;
 	reset-names = "hdmitx_apb", "hdmitx", "hdmitx_phy";
-	clocks = <&clkc CLKID_HDMI_PCLK>,
-		 <&clkc CLKID_CLK81>,
+	clocks = <&clkc CLKID_HDMI>,
+		 <&clkc CLKID_HDMI_PCLK>,
 		 <&clkc CLKID_GCLK_VENCI_INT0>;
 	clock-names = "isfr", "iahb", "venci";
 	power-domains = <&pwrc PWRC_GXBB_VPU_ID>;
-- 
2.43.0


