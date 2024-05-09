Return-Path: <devicetree+bounces-66006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6348C0E7C
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 12:49:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B0021F21A59
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 10:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34DBE13118B;
	Thu,  9 May 2024 10:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sDjbA+k8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3899013049B
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 10:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715251728; cv=none; b=mXgSLnSGdLnyoDnK4AXl87GqhIjCFztKAq8bxVFGLXSvlrREq3j/iIPDATNh0ZnRuj2b7baPHdnYQzuub5FVbMjuGErpF2cmgvKaw5ATShwEDNbQ6UooWLbzmR7R80lJmU4gxb1unR/Zd8VoKVFu3SY31LoeU9vUbJaxFPil/Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715251728; c=relaxed/simple;
	bh=gcpdIFHr8ER34Z3GWGDwVi8dmpRY0WZC3XvZC+2j07g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Aac+si/DPQZOju8JSrEjMVme5eNGfpYv5BLspr+l+uNnTdoD7ekXQ7jneFoCWsdXMWkg25h5iaS66GwttSNGWOMMrtqApjK3kFHXxiPMjj5f62m4IHDyyT0/Am+XTF/KdMUPUDRbIj9FYxFGM1+a7q0AokAuYE6bE+iJHYZ+Xiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sDjbA+k8; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a5a157a1cd1so166289266b.0
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 03:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715251724; x=1715856524; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QnzQs4M8STg8v5mtXmoZjumL7kiGXFglN5V5NIOcQXY=;
        b=sDjbA+k8EdKzEaw9SXcZO7tbWFoeYXGVbtOdO9+oiOkf/6zFj09tF1z77WGHF0aKKk
         PlZbk7jC9Fy9W2soNYc62vLn1YmSS+sZ5flB6purxzLYabjX4rL8UzFdbxSfnKn9+F1j
         rJuLNsERkHncd7hK7420xHwiR3Ut6DZ529C/6M+wQvuy0sOTJWW6hrjag0LObHjUHsyv
         uhW2YvN/U5Grhi6q00nyKbn9UfyOcQHVoqN8za4vetihv6yBRaDkEdC4Jvu/xp/JxYE1
         OdEKWXYbaltrio15qfP1ussHtFubS00oxspqprFml/woOPIGrOD2xV9xTBo25w4RQT6B
         dM+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715251724; x=1715856524;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QnzQs4M8STg8v5mtXmoZjumL7kiGXFglN5V5NIOcQXY=;
        b=Kbf3eF2MHe7BOCAs2SBOMF7vqX/E0p17TfZueW2h5Xt6sn9jgs75wVQ+eSxR7RdhQA
         7CP4OIuTKFLfbIE0mHBz9x6T6ZgvN121qRzeXsSsAyTqNiKlaKaXiaaSZdALVzXnLZGY
         Hm3HP46onhRUkuM6aZrb/1iYsQ84k77wPvi75rxcbdjWXrMyEv8iy9tz2NqBiz8/1DCp
         59IkJNjzsXqc1dTqpstKiaTLoYpikEAUt+qqCnJ0KQ9G6PahPbAvABkvViqKZmRBsr43
         It3ODOnyCRLfeC4BQTQZTaygn8sYEsex7PzUeBXZfdotL3NnSomEab+DPf97QX7BcHLg
         nZjw==
X-Forwarded-Encrypted: i=1; AJvYcCXnaPwquzYDA+jBqGdvjmNNGvZ7Em5XYb4YZYtv9/T18oKBKox5b8Q6O6/GoFf/Yusv3gd5fEHM9ogHY6JbJMPmqNeTwT/J1HsqIw==
X-Gm-Message-State: AOJu0YzhWXWkuSHA2V6woxIJLpGItOsqihyyqmY6Sxdk+pu1Jv+fIiRx
	9zRVrRjX47XAsHrCTTlntRzrr0lun8hlIf5obF6OrL/jBdkHDCXF1bsoyEW2j04=
X-Google-Smtp-Source: AGHT+IHczS5CGAbdxg981H0G+SH61xNrLiSFw+Z1T9VXSEXNVrCC1Lb8qrk7DjDkFnik5BB2nKDB1A==
X-Received: by 2002:a17:906:61a:b0:a59:9ef3:f6df with SMTP id a640c23a62f3a-a59fb941d7bmr290673566b.22.1715251724582;
        Thu, 09 May 2024 03:48:44 -0700 (PDT)
Received: from krzk-bin.. ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17894d85sm60195966b.72.2024.05.09.03.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 03:48:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/5] ARM: dts: imx: correct choice of panel native mode
Date: Thu,  9 May 2024 12:48:35 +0200
Message-ID: <20240509104838.216773-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240509104838.216773-1-krzysztof.kozlowski@linaro.org>
References: <20240509104838.216773-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings and Linux driver expect native-mode to be a phandle to one of
the timings node, not a boolean property.  Correct the DTS to fix
dtbs_check warnings like:

  imx53-m53evk.dtb: display-timings: timing-800x480p60: 'native-mode' does not match any of the regexes: 'pinctrl-[0-9]+'

This should not have actual effect for Linux kernel (no real bug
affecting choice of native-mode), because the first timing node is
chosen in absence of proper native-mode property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/nxp/imx/imx51-apf51dev.dts         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx51-ts4800.dts           | 2 +-
 arch/arm/boot/dts/nxp/imx/imx53-m53evk.dts           | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos2_4.dts | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos_4.dts  | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos_7.dts  | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx51-apf51dev.dts b/arch/arm/boot/dts/nxp/imx/imx51-apf51dev.dts
index f72e109342bc..de6b7607510a 100644
--- a/arch/arm/boot/dts/nxp/imx/imx51-apf51dev.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx51-apf51dev.dts
@@ -25,8 +25,8 @@ disp1 {
 		pinctrl-0 = <&pinctrl_ipu_disp1>;
 
 		display-timings {
+			native-mode = <&timing0>;
 			timing0: timing-lw700 {
-				native-mode;
 				clock-frequency = <33000033>;
 				hactive = <800>;
 				vactive = <480>;
diff --git a/arch/arm/boot/dts/nxp/imx/imx51-ts4800.dts b/arch/arm/boot/dts/nxp/imx/imx51-ts4800.dts
index 87a34cbdf233..079bd3d14999 100644
--- a/arch/arm/boot/dts/nxp/imx/imx51-ts4800.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx51-ts4800.dts
@@ -58,8 +58,8 @@ display1: disp1 {
 		pinctrl-0 = <&pinctrl_lcd>;
 
 		display-timings {
+			native-mode = <&timing0>;
 			timing0: timing-800x480p60 {
-				native-mode;
 				clock-frequency = <30066000>;
 				hactive = <800>;
 				vactive = <480>;
diff --git a/arch/arm/boot/dts/nxp/imx/imx53-m53evk.dts b/arch/arm/boot/dts/nxp/imx/imx53-m53evk.dts
index f0f92ee7ba95..ba0c62994f75 100644
--- a/arch/arm/boot/dts/nxp/imx/imx53-m53evk.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx53-m53evk.dts
@@ -17,8 +17,8 @@ display1: disp1 {
 		pinctrl-0 = <&pinctrl_ipu_disp1>;
 
 		display-timings {
+			native-mode = <&timing0>;
 			timing0: timing-800x480p60 {
-				native-mode;
 				clock-frequency = <31500000>;
 				hactive = <800>;
 				vactive = <480>;
diff --git a/arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos2_4.dts b/arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos2_4.dts
index c75606fc4abd..ec806b8d503a 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos2_4.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos2_4.dts
@@ -85,8 +85,8 @@ lcd_panel: display@0 {
 		power-on-delay = <10>;
 
 		display-timings {
+			native-mode = <&timing0>;
 			timing0: timing-480x800p57 {
-				native-mode;
 				clock-frequency = <27000027>;
 				hactive = <480>;
 				vactive = <800>;
diff --git a/arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos_4.dts b/arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos_4.dts
index 0d86927819c2..9ec038f1d0ff 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos_4.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos_4.dts
@@ -36,8 +36,8 @@ display0: disp0 {
 		status = "okay";
 
 		display-timings {
+			native-mode = <&timing0>;
 			timing0: timing-480x800p60 {
-				native-mode;
 				clock-frequency = <30000000>;
 				hactive = <480>;
 				vactive = <800>;
diff --git a/arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos_7.dts b/arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos_7.dts
index 66271daf97d9..b3129832f471 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos_7.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos_7.dts
@@ -25,8 +25,8 @@ display0: disp0 {
 		status = "okay";
 
 		display-timings {
+			native-mode = <&timing0>;
 			timing0: timing-800x480p60 {
-				native-mode;
 				clock-frequency = <33246000>;
 				hactive = <800>;
 				vactive = <480>;
-- 
2.43.0


