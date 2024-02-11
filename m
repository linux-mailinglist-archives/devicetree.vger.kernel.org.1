Return-Path: <devicetree+bounces-40550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B145850BA2
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 22:24:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 016CB1F220AB
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 21:24:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9219E5F48E;
	Sun, 11 Feb 2024 21:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n0TX8+sj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DE085F483
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 21:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707686676; cv=none; b=XEhI1l8+VUx/D4X/kxDaB70EZqrU7EYS14Zvn+dwiyv1oRyogXz5brlYpRYezN7PUadLR+FAi/GrSIL/nTNWGq8rg0C9fFAhSU6KaJBErXnyI5Tp4iwPSGa1icLBjiTw56Kn8T8pkjfeHISb7WoShEI8Oyou8altRulcMmaCAHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707686676; c=relaxed/simple;
	bh=aumoIJplpDVsOhirmtzSkvFPotfqbuCC//+mTppW11o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EA4IUW2+DmZPvT4H3Xq0+bqX6tmz2zZUvhHxvTPQ47aRtF6yIhrGuF6ssQP4PwB544puRdwJl/BFxzXIAF4Q9ia0ZJcGYVLSf7x/GcoKFhTVSeDKvud14f+PF2FIjLjuaUi/jKs9amEoiA3Hk+MqC9BLN8nP+YCaq33Sl0Kcp84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n0TX8+sj; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5114cd44f6aso3505875e87.1
        for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 13:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707686672; x=1708291472; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H6kY8ddkk0naZRr/JS0Z60TBisWL5BUY4kseNNkrQ1c=;
        b=n0TX8+sjTJ8vbxP0FoOoiAsnoYi4DZJXHVRnXV1tIAt4FsDXxcCP3DFi58TBlTn+6U
         x+8r7iVHOFCDDbveRaMydKhrs0SNF2OFvUljiBBgMtPLJTZ92XFXw2+5t3N8Vzs1JFxt
         GiT1w+fdMIdIdmibNAO5iYaqFOVkX0UhS99aCtX5qIcdqD5YGBnS/di8OeNkf4CTumJu
         w4SnjlH+L5Z3Pqg4TpwqDaN8qxOKs+xQwrD/UpVXLr884LSCJRqlGLTOTY2eXn0X+55D
         np7kXwcRlxYLYh3aLaIDuBTBagEp/kiEGkG9a+mZjYN3waHVBXp7xjo23kE/Z1QqavUL
         5m8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707686672; x=1708291472;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H6kY8ddkk0naZRr/JS0Z60TBisWL5BUY4kseNNkrQ1c=;
        b=IzgvtQpahb61vobrKfmS5ZMd/YMVTDK7TBZiSHUWKcE3k2RfVX5xccisU/pk5I7cwC
         /agdooFtX/2LS2rdCOixefC9yFMMXciX2tdUIUbVGjQnErOPElQxvmsjW0v7ROGcOs46
         ukiP4bPdvRsWosyovw2eO3Mx1eoJNDO6WA3gyocKaXyuNIQ3ynRZdxMuDadJ7pRN7k2h
         Vb7ZCwC3+Mu6wAQzO4FKi2WuFHsCR8kwMUB6mGfFiyQvoqWK2BABVHA6RacvE3OJoE8M
         RFlFn7Os85su3thlQtB/GYAGbhK/upIW+8q5XsbMmgVO4iMLlLLek/aH/7UjU+xD+lRT
         qMdQ==
X-Gm-Message-State: AOJu0YzRlpUFj1H8tlOYhxY01x6ivaWvtr0oMKG4n2rEaJMY60yJ84Ez
	Hy/EPVdxazDho3p61gfEvFQBr0HsYaSECcq1MglbqTidGd3RL6PRmrwKS5DidnF5rwZowsNlUdh
	R
X-Google-Smtp-Source: AGHT+IEw4MchLPyzyM/ju8qTTJ3qNMn6Wf8LxMpMc3642UtLgXw1K9o55U7wE9CGBoY2xnb9dpzZcw==
X-Received: by 2002:a05:6512:3a84:b0:511:3ef8:5 with SMTP id q4-20020a0565123a8400b005113ef80005mr3328941lfu.34.1707686672187;
        Sun, 11 Feb 2024 13:24:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWzXVqKUQav1iU3kcIBjoSRs0p4hFowhWXI5q4sSafgwvu+8t/mm4HQMaww9pQVKKjJmtq3rlcQSemv8OsL3RX/Yyyjjx0SlUhzqAKj+QQrBncYopMmCcx8sf7H5j8udSb6p7oyFKe2yvcyiREir7KQp77K9BAvdNUFxpqD5HM438lALh1U+58UL8/GkTJ5j/MnZb0VP34xqJwhANmxXCiPdU5M2VLp2d35uK9eixAjww==
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id h8-20020a056512220800b005115edd71c9sm623684lfu.165.2024.02.11.13.24.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Feb 2024 13:24:31 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 11 Feb 2024 22:24:26 +0100
Subject: [PATCH 4/4] ARM: dts: gemini: Fix switch node names on Vitesse
 switches
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240211-gemini-dts-v1-4-6c09adeb4c2e@linaro.org>
References: <20240211-gemini-dts-v1-0-6c09adeb4c2e@linaro.org>
In-Reply-To: <20240211-gemini-dts-v1-0-6c09adeb4c2e@linaro.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.4

The formally correct node names have "ethernet-*" prefix on
switch, ports and port, fix it up.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/gemini/gemini-sl93512r.dts | 14 +++++++-------
 arch/arm/boot/dts/gemini/gemini-sq201.dts    | 14 +++++++-------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/gemini/gemini-sl93512r.dts b/arch/arm/boot/dts/gemini/gemini-sl93512r.dts
index be06a3815e3a..4992ec276de9 100644
--- a/arch/arm/boot/dts/gemini/gemini-sl93512r.dts
+++ b/arch/arm/boot/dts/gemini/gemini-sl93512r.dts
@@ -93,7 +93,7 @@ spi {
 		cs-gpios = <&gpio1 31 GPIO_ACTIVE_HIGH>;
 		num-chipselects = <1>;
 
-		switch@0 {
+		ethernet-switch@0 {
 			compatible = "vitesse,vsc7385";
 			reg = <0>;
 			/* Specified for 2.5 MHz or below */
@@ -101,27 +101,27 @@ switch@0 {
 			gpio-controller;
 			#gpio-cells = <2>;
 
-			ports {
+			ethernet-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-				port@0 {
+				ethernet-port@0 {
 					reg = <0>;
 					label = "lan1";
 				};
-				port@1 {
+				ethernet-port@1 {
 					reg = <1>;
 					label = "lan2";
 				};
-				port@2 {
+				ethernet-port@2 {
 					reg = <2>;
 					label = "lan3";
 				};
-				port@3 {
+				ethernet-port@3 {
 					reg = <3>;
 					label = "lan4";
 				};
-				vsc: port@6 {
+				vsc: ethernet-port@6 {
 					reg = <6>;
 					label = "cpu";
 					ethernet = <&gmac1>;
diff --git a/arch/arm/boot/dts/gemini/gemini-sq201.dts b/arch/arm/boot/dts/gemini/gemini-sq201.dts
index 05ef8b80f104..f8c6f6e5cdea 100644
--- a/arch/arm/boot/dts/gemini/gemini-sq201.dts
+++ b/arch/arm/boot/dts/gemini/gemini-sq201.dts
@@ -78,7 +78,7 @@ spi {
 		cs-gpios = <&gpio1 31 GPIO_ACTIVE_HIGH>;
 		num-chipselects = <1>;
 
-		switch@0 {
+		ethernet-switch@0 {
 			compatible = "vitesse,vsc7395";
 			reg = <0>;
 			/* Specified for 2.5 MHz or below */
@@ -86,27 +86,27 @@ switch@0 {
 			gpio-controller;
 			#gpio-cells = <2>;
 
-			ports {
+			ethernet-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-				port@0 {
+				ethernet-port@0 {
 					reg = <0>;
 					label = "lan1";
 				};
-				port@1 {
+				ethernet-port@1 {
 					reg = <1>;
 					label = "lan2";
 				};
-				port@2 {
+				ethernet-port@2 {
 					reg = <2>;
 					label = "lan3";
 				};
-				port@3 {
+				ethernet-port@3 {
 					reg = <3>;
 					label = "lan4";
 				};
-				vsc: port@6 {
+				vsc: ethernet-port@6 {
 					reg = <6>;
 					label = "cpu";
 					ethernet = <&gmac1>;

-- 
2.34.1


