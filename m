Return-Path: <devicetree+bounces-98695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B33F89670DA
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 12:28:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 704C6284425
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 10:28:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A17D917C7CA;
	Sat, 31 Aug 2024 10:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yi2uoJ75"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6DD717084F
	for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 10:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725100115; cv=none; b=UHIqnilQX5rOlQLjoLILSij+ngUbTnxFIfpE/ZR4oDFqS1aHmihlpShxnaxQzEZysBJ4h0BEMYDXF/Cn0eWl0dczWdOBmlR7fFDagBUjpTbpTtlZ4OfYvsdzn+ac6mED/0lvkCTDolili18SVAM+W2M/sx4ye8AFGAN6+VoPZi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725100115; c=relaxed/simple;
	bh=52c9RCnnMOJoaoziQEd2I1WckEib4zozqHCNqeDu6TM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qFyH5utqUbYBVb5b9bjnZYCz+jt1RbfTuppxmaSF25UKSiWv0u3tN2AHk8wlVnuZc/wdTSO7xLWqTNn0nooOocLoLtK+poOdLiVTeSWADfz4OsEKINfqTvsU8pnABooMhr8yMwsaf5c26yqNNRBjg1kDQZ3yo6HNfdPEthz0SN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yi2uoJ75; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-42bbc8d9455so1968505e9.2
        for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 03:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725100111; x=1725704911; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C7YRYmdyh/Zvt/QYP4NaQ2fvJBdIyrQVnk5iSq+uwfk=;
        b=Yi2uoJ75nFJTfc6ebOzEc3T3R9m6zdGc34xvIGpHIIag+fqdq8180wo78DxTJjxHAL
         fnm1mr7I0dg7VWq97jlkaxqiAbJA/Erm1M375OuQPUt2uWXz+T80fpyBhKSNi7OofTJN
         tdb57uHhdnznY1Zd4UzY3JXrULP0bclL98hzv2X3FabxE8WHankDleDPMBkXF77UHBRf
         yoOmLVLcVN11fC9ocajOLopWNUXgbLtEyszSUhsRxmCCTGpkT6yFIkAW1EffgTto+EcX
         NDl/EHaN1m+Lpv0je6BwumLRiDRwSmKUhLZQlt0kAQvxtVegJYZjtsBFTGDa8LnsAYDU
         AKLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725100111; x=1725704911;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C7YRYmdyh/Zvt/QYP4NaQ2fvJBdIyrQVnk5iSq+uwfk=;
        b=jM6cqUzpg/BNMvadrgRGRcoq5R6OrXTfvA5zoXhwKyfeEgzZfHD9Xug2szSJ3apb4D
         mu+EAwjLKo/la94st8zwJS/IPskIkgnIPU5ZO+035ZuT6/VVirS3YhyQL2wtBIT/h71n
         DbOawVFltjk/pArtQimeW+PB43zG8LnlmUb6MeqiP4qgGy9SdJuSCCQkYgsarupd2ylG
         +6piR7I75cAp5588fmosYPGtMZLa42RRODF6ZDs1gSp9hKvGSYdYT+SFEQ5eR1BESlQw
         cMiv7QlOSk5pNq2qsQd4VfOorrwebghwFL54AtfNZsUIFNAHpqJFwUgsa2c8AAZZ7j53
         4Q7A==
X-Gm-Message-State: AOJu0YxJ2tAsdBX3an1D+ifopNLkfv8F1rHY/apbA8T+OAMEGpQjJfYC
	7QhpnVdiOGwP4iPIff2TUT/iTo0gGfFk1cdmT1fonkH6UDJ5wtxGc4iHdu12H3E=
X-Google-Smtp-Source: AGHT+IH5DKcLcsMpkQFTUnkvndHQnxbZtCfYqIakVe3gz0xEgTfU8Gk6Zm7Y/mJbUc6jV8YNQKJt+Q==
X-Received: by 2002:a05:600c:5489:b0:426:6f48:415e with SMTP id 5b1f17b1804b1-42bbb106258mr19872965e9.1.1725100111016;
        Sat, 31 Aug 2024 03:28:31 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba63aba23sm104502155e9.21.2024.08.31.03.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 03:28:30 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sat, 31 Aug 2024 12:28:18 +0200
Subject: [PATCH 1/4] ARM: dts: imx6ul-tx6ul: drop empty pinctrl placeholder
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240831-dts-nxp-imx6-pinctrl-v1-1-f5811032bd40@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=865;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=52c9RCnnMOJoaoziQEd2I1WckEib4zozqHCNqeDu6TM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBm0vBIX5O4TnMTARD/U2ZgTKcmsZZuUyXUYvwsQ
 DejG7xMUMGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZtLwSAAKCRDBN2bmhouD
 12AqEACX7gxGL1Rgvm6+uH/t9VjFaVom1FWWIsYCUcZqabYYMh8NVLQLJ9AV82WyQ9Fn2LS+F3S
 00ydwPWmFeDN6Ji7+b45f82VroqPa8L562/iF7KPboerU67I3klKT2RNh+kp8WtJeRJ0reBlK6n
 t55za9Lg1wPXOat9UPfbv9n8X7zkpIb0QZ17kUoMsgffKF3IYrGH2Jqez2tBM7ofNEjomrbp/Ip
 jtbg9bEUzZiTXYH45atToogmepby8Mj5vLHdbuFM8pJkXp3PfrYEFMg0WWmZnodkrr3EjmSe2on
 65/IPxpXxymhcLkx4TzXmpBuCoY3NLA++w52PjyDi5iQSuGmn4+LUSe2tClG83JhV02tKlEeodG
 iZauMTQBSafwKJyhim94gTTjwB0qNeeojxBvJU0KlnV1UE4cyokaWkg9iT8Feohln80yLcSNPwE
 sDgYFzjbyERVnuEY7KF4sys4DLGd2GIE4+dLsLDMZeo+7VxFmAcl5BYuS2kUGrxm4lSxpE2z02+
 Ec8U18FtwvHGLfnymMpWm/mlLWA81vY2thl9sUR1gqlPuBHSDtNPXbVRxtiHoy72mcbDxBhc/wE
 6101Z31B3fNRaFcVUhTD6a+ZQO1cZisbA3u5GR4hL12/QBBpkYN0Q8pUA5CsgD2n5upPzFYtYYs
 9MM1mYF/nMF/0Zw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Drop an empty pin configuration node placeholder, because bindings
require 'fsl,pins' property:

  imx6ul-tx6ul-0010.dtb: pinctrl@20e0000: hoggrp: 'fsl,pins' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi
index 864173e30709..2567fa52f29b 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi
@@ -578,12 +578,6 @@ &usdhc1 {
 };
 
 &iomuxc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_hog>;
-
-	pinctrl_hog: hoggrp {
-	};
-
 	pinctrl_led: ledgrp {
 		fsl,pins = <
 			MX6UL_PAD_SNVS_TAMPER9__GPIO5_IO09	0x0b0b0 /* LED */

-- 
2.43.0


