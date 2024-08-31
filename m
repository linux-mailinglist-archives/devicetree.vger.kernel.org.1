Return-Path: <devicetree+bounces-98697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8927F9670DC
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 12:29:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D33E1C21533
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 10:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C71B117DFEF;
	Sat, 31 Aug 2024 10:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lPOxBq95"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC5917C9E7
	for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 10:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725100117; cv=none; b=HIUzYqletsg4sS2pzo4c1P2QW4u3WWcTMT6QfjbU1dcEz3C01qU79ofQc7CIGMg/vB3lin2kx7qnfl0z3QcPJO5tlDtg0LZ+62XEES/nPgf5XctJ0o/xkml9DEjOcfmqERtgAkHLjNOln7zytFXjHzAGsatgb5OVN5PDrlhKXHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725100117; c=relaxed/simple;
	bh=vspvOoNdVly/5eQ+t11qHO7HcxpjaE+0iVeN2RnyGgg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=j5ul/BCOhdoMuVygcKGZLkxRgjn5xpzHUGZWJSelb5TlysuqQWY6coswZNz9OTqrext659SY7BfPLCYiosK54uB0KZ75SBBkflY7mYIAZCqiiQhSbPKgliDCul8TcUYEJbhxRjCyOL703OhpVhWVMjeGoyRl8FfRENfGgJqtJOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lPOxBq95; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-42bbec71577so1574515e9.2
        for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 03:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725100114; x=1725704914; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BlxRgWvov1H8lxO/fm3fj5hhJfhOr1NrSPagnMvIdDk=;
        b=lPOxBq95nDGlMtY39rTeHo9gVQ8JqX/idgRejmvKO2t7lqyzerv/KgPbiTrcKy5RFq
         Q4cuEw3mWcbkCCdxARFS71LNcyPXsMl2MTfdBJc/nCLh52w2r1ZdlPUNy9TJs5BxDZsx
         +4Cn/nJaCHoHJ6EziBLTFVBGcKqaf45cQyMyv2FCotuMgtHC45Dgrx6L54RqhlikA5wQ
         8c4MM8tGQOpeEv8fryHZqhr/yRx4DTxCCajTHUl+PBD2grEOMA13TJphnED8lMSxbgEz
         eUWUqqizkh7OTYX3d82+Z6BBQJU4yWn4xvynmBJGfg5lzw2Fhdh+NSWnU+yEbZpByiZx
         64kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725100114; x=1725704914;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BlxRgWvov1H8lxO/fm3fj5hhJfhOr1NrSPagnMvIdDk=;
        b=AYM+rkRDgDZpykmDOz+iw7hU5Y9nwUSCTjTzTTFoHEQrQP7PKCbA+mrrQRMbT9D9VX
         K4zKfUO1lE9drS+CZyD4hkSq4n9EUaEiIWPqIGnb4ucsPVvH4ru7YfONl0A/z+367fLA
         /6rQo/lyXBVeJSGTxZ9k2oB48GKD6UXzgLyffFwev0XefqfGo3qGNhsnIylGHow/+gen
         B03tkT95K6BVS26yfH6NoejltSOQHCMV26dwHxdDuKC1wKcLQII7x6iq29y9VY6KPrFi
         HBCyWDVn792lkDiaF19p42duiX3PTeKjsxl1pwkM2Rhi6ExYEzVP5nKqCetC82LWUzfu
         QhxA==
X-Gm-Message-State: AOJu0YyvINxveZ/NFq/LxMsDA2YgC6EKDjPSKgqrooeKDZ13kohTBNae
	XNm5tk1oq6BjfMUuoyET5R/GmzQVm68XBTFWtGJ2DjPRcu1ZyuFtB2+jPtfSguE=
X-Google-Smtp-Source: AGHT+IFo0+hAG0WEJevkYZnmS0mXyKjndCnueraHF98O3vYj4JKjdwGcVGD1WwJIu7qbHbW3AFy88A==
X-Received: by 2002:a05:600c:3b0c:b0:426:6358:7c5d with SMTP id 5b1f17b1804b1-42bbb43b6b4mr19877825e9.4.1725100114349;
        Sat, 31 Aug 2024 03:28:34 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba63aba23sm104502155e9.21.2024.08.31.03.28.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 03:28:33 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sat, 31 Aug 2024 12:28:20 +0200
Subject: [PATCH 3/4] ARM: dts: imx6sl: align pin config nodes with bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240831-dts-nxp-imx6-pinctrl-v1-3-f5811032bd40@linaro.org>
References: <20240831-dts-nxp-imx6-pinctrl-v1-0-f5811032bd40@linaro.org>
In-Reply-To: <20240831-dts-nxp-imx6-pinctrl-v1-0-f5811032bd40@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=3663;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=vspvOoNdVly/5eQ+t11qHO7HcxpjaE+0iVeN2RnyGgg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBm0vBJXUi51Ko8Il1rVfJDexnVawyZr3r+BI/MD
 +WOIrZntxSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZtLwSQAKCRDBN2bmhouD
 1x1ED/9PTXDsWsQs5Ve0Z465ZGBT6bPfNxJ/OcbV/Ma4iZM9Wh2veOT7I9p3aUYtTp1kCVBADzO
 7MsYIefzrZy1YmMqV6p9jCvLBXPTw4vu6ewoJQ1j1UPaDc0N2VmUhEvU/gzeUZ8lWvvwzZlLn1H
 AO+YPXYPpUrClsRQSVKOQSlih9YhzjG+PlWUhM/ju0CeA8ILFuJt2xgkajKUZ9lnFAnwMnaYVa1
 hDalGF0lLK92xj+6x5JZ88b1+oBbE15DAlP/VgqXFlhDS/5/uHoatJ/57+bHmg6sWvLJo4Rcaot
 xeuyxuHyFYGEPmcih4KquV3PXs9AeIBa6ZN/8mTM3FPm/ux9vDC6D29Vovkrl+MNdTuXG321Hrm
 UqVsuqPiU6Gyi/1wcWV+c6aCG2vp8p7c3qVpQ9GzRbdxbIvus4uvvj9xNOKRP7M/rg6MUezAHH0
 MP10sfaTrn8Va2mTwkWDTae3TFPjRM0KM07+tAkySWOTXNnP7Woh6rVl0wLvs9UXA+61X6on1+G
 P7IdlWC2zWyu2pseTkgYqq2xHKgxWk3MVCnO45szNoN+XIE8/zOyUzkxePONKxt0MI0tnJx3Omb
 8vCDfwDTsUESnubqZZOvlDAyZKC5sdkCAHn1XmCQlxoYK8KlfiVqz4ki/jbcx6VLbpZPrgvEIWZ
 cYdKSYwuK4anzRw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Bindings for other NXP pin controllers expect pin configuration nodes in
pinctrl to match certain naming, so adjust these as well, even though
their bindings are not yet in dtschema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/nxp/imx/imx6sl-evk.dts  | 12 ++++++------
 arch/arm/boot/dts/nxp/imx/imx6sl-warp.dts |  8 ++++----
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sl-evk.dts b/arch/arm/boot/dts/nxp/imx/imx6sl-evk.dts
index 31eee0419af7..7c899291ab0d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sl-evk.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6sl-evk.dts
@@ -457,7 +457,7 @@ MX6SL_PAD_SD1_DAT7__SD1_DATA7		0x17059
 			>;
 		};
 
-		pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
+		pinctrl_usdhc1_100mhz: usdhc1-100mhz-grp {
 			fsl,pins = <
 				MX6SL_PAD_SD1_CMD__SD1_CMD		0x170b9
 				MX6SL_PAD_SD1_CLK__SD1_CLK		0x100b9
@@ -472,7 +472,7 @@ MX6SL_PAD_SD1_DAT7__SD1_DATA7		0x170b9
 			>;
 		};
 
-		pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
+		pinctrl_usdhc1_200mhz: usdhc1-200mhz-grp {
 			fsl,pins = <
 				MX6SL_PAD_SD1_CMD__SD1_CMD		0x170f9
 				MX6SL_PAD_SD1_CLK__SD1_CLK		0x100f9
@@ -498,7 +498,7 @@ MX6SL_PAD_SD2_DAT3__SD2_DATA3		0x17059
 			>;
 		};
 
-		pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
+		pinctrl_usdhc2_100mhz: usdhc2-100mhz-grp {
 			fsl,pins = <
 				MX6SL_PAD_SD2_CMD__SD2_CMD		0x170b9
 				MX6SL_PAD_SD2_CLK__SD2_CLK		0x100b9
@@ -509,7 +509,7 @@ MX6SL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
 			>;
 		};
 
-		pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
+		pinctrl_usdhc2_200mhz: usdhc2-200mhz-grp {
 			fsl,pins = <
 				MX6SL_PAD_SD2_CMD__SD2_CMD		0x170f9
 				MX6SL_PAD_SD2_CLK__SD2_CLK		0x100f9
@@ -531,7 +531,7 @@ MX6SL_PAD_SD3_DAT3__SD3_DATA3		0x17059
 			>;
 		};
 
-		pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
+		pinctrl_usdhc3_100mhz: usdhc3-100mhz-grp {
 			fsl,pins = <
 				MX6SL_PAD_SD3_CMD__SD3_CMD		0x170b9
 				MX6SL_PAD_SD3_CLK__SD3_CLK		0x100b9
@@ -542,7 +542,7 @@ MX6SL_PAD_SD3_DAT3__SD3_DATA3		0x170b9
 			>;
 		};
 
-		pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
+		pinctrl_usdhc3_200mhz: usdhc3-200mhz-grp {
 			fsl,pins = <
 				MX6SL_PAD_SD3_CMD__SD3_CMD		0x170f9
 				MX6SL_PAD_SD3_CLK__SD3_CLK		0x100f9
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sl-warp.dts b/arch/arm/boot/dts/nxp/imx/imx6sl-warp.dts
index 9d7c8884892a..2545c0fe47c8 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sl-warp.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6sl-warp.dts
@@ -166,7 +166,7 @@ MX6SL_PAD_SD2_RST__SD2_RESET		0x417059
 			>;
 		};
 
-		pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
+		pinctrl_usdhc2_100mhz: usdhc2-100mhz-grp {
 			fsl,pins = <
 				MX6SL_PAD_SD2_CMD__SD2_CMD		0x4170b9
 				MX6SL_PAD_SD2_CLK__SD2_CLK		0x4100b9
@@ -182,7 +182,7 @@ MX6SL_PAD_SD2_RST__SD2_RESET		0x4170b9
 			>;
 		};
 
-		pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
+		pinctrl_usdhc2_200mhz: usdhc2-200mhz-grp {
 			fsl,pins = <
 				MX6SL_PAD_SD2_CMD__SD2_CMD		0x4170f9
 				MX6SL_PAD_SD2_CLK__SD2_CLK		0x4100f9
@@ -209,7 +209,7 @@ MX6SL_PAD_SD3_DAT3__SD3_DATA3		0x417059
 			>;
 		};
 
-		pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
+		pinctrl_usdhc3_100mhz: usdhc3-100mhz-grp {
 			fsl,pins = <
 				MX6SL_PAD_SD3_CMD__SD3_CMD		0x4170b9
 				MX6SL_PAD_SD3_CLK__SD3_CLK		0x4100b9
@@ -220,7 +220,7 @@ MX6SL_PAD_SD3_DAT3__SD3_DATA3		0x4170b9
 			>;
 		};
 
-		pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
+		pinctrl_usdhc3_200mhz: usdhc3-200mhz-grp {
 			fsl,pins = <
 				MX6SL_PAD_SD3_CMD__SD3_CMD		0x4170f9
 				MX6SL_PAD_SD3_CLK__SD3_CLK		0x4100f9

-- 
2.43.0


