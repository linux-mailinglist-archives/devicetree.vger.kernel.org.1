Return-Path: <devicetree+bounces-24288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B835280EA5B
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:27:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 60D4B1F2171D
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 11:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBEC45D48C;
	Tue, 12 Dec 2023 11:27:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FPxaZa1x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6974D2
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 03:27:46 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1d340f0e5d0so437625ad.1
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 03:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702380466; x=1702985266; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8leUDfJnX3uZjjRZdLHIUQyp74wSB+sGRHaZ+8nJbmE=;
        b=FPxaZa1xFZpMizzzT+t0LSzoi9dwFjrge/Sz10ipSRbCdG53ePSZIfiETZCatatCox
         iPK98PCz9irJwiJkAYttp2/u/k61P76rfDcR1/QiyfrDcj34mp8Q0LTlh4aBQKCyH53H
         1xyiS6WL+P5tiJHke4b+UeZm0jR9rhyQN6rMC7Ek1wRJyQJzHD2SotO+oe/Ol/KYaNfK
         zJCnuxcV/cfaH+F5pUTVaivCWWhwHczMbyQ8hCeI45j4WYsi6timjo9sIqOev6J0KKce
         eLLt6NTChH6ffnwvQpevPOFZtGhfH2LCAc8XyShMbxc0ryKGCVAqqPr7rEAQVu7LLWxz
         gtFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702380466; x=1702985266;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8leUDfJnX3uZjjRZdLHIUQyp74wSB+sGRHaZ+8nJbmE=;
        b=ov4VKptqof16bccpQVJPzgzKDeC30S8vin5nZVSgI1fz+JJOwCDwm0Tac/77jsfH5T
         7Ea2IItTRzHWFwlBMnfPPwL02P+53PJTlIujuEUR2EoAqeYhXwYx4YrU/8wFK14rlJhc
         VL7VMGpmE4wE9KNdHE0s9issVY+QA+BvQldOy3vYV3+3Q7HPbiQKlClXfX60al2RFesZ
         AhNpYHUpeWuk5UHC42KC0PaSHOT/FmXOsJtZBLF2XSxaiirzxXl5+t/V2rPEezZ+0qiW
         jYZXg3JIZhBDgDbGyauVjNkPfI20cTWDLJkrInstH4SQW5nuamlFISI/wSdQXb/eZOKG
         NL4w==
X-Gm-Message-State: AOJu0Yzq8LVCw2HzjEJzKYQVl8jO6MMyHStoqIQESETm8N2eYK/Lxklu
	bM+HV7twzaOZ3AyBg33GkFA=
X-Google-Smtp-Source: AGHT+IHtM3055x/5R8BSIFghKr1Pomm4PKH60rlO1Ie1n9oP2J/aL7k+VyeiFbAx6d8I+4sWLOwLdQ==
X-Received: by 2002:a17:902:f684:b0:1d3:4125:725d with SMTP id l4-20020a170902f68400b001d34125725dmr509603plg.2.1702380466123;
        Tue, 12 Dec 2023 03:27:46 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:a620:342d:797a:5c59])
        by smtp.gmail.com with ESMTPSA id w18-20020a170902e89200b001d051725d09sm8415421plg.241.2023.12.12.03.27.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 03:27:45 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: cw00.choi@samsung.com
Cc: myungjoo.ham@samsung.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	shawnguo@kernel.org,
	marex@denx.de,
	hvilleneuve@dimonoff.com,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/3] arm64: dts: imx8mn-var-som-symphony: Describe the USB-C connector
Date: Tue, 12 Dec 2023 08:27:28 -0300
Message-Id: <20231212112729.700987-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231212112729.700987-1-festevam@gmail.com>
References: <20231212112729.700987-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Describe the PTN5150 USB-C connector to improve the devicetree description
and fix the following dt-schema warning:

imx8mn-var-som-symphony.dtb: typec@3d: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/extcon/extcon-ptn5150.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../boot/dts/freescale/imx8mn-var-som-symphony.dts    | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
index a6b94d1957c9..f38ee2266b25 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
@@ -128,9 +128,14 @@ extcon_usbotg1: typec@3d {
 		pinctrl-0 = <&pinctrl_ptn5150>;
 		status = "okay";
 
-		port {
-			typec1_dr_sw: endpoint {
-				remote-endpoint = <&usb1_drd_sw>;
+		connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+
+			port {
+				typec1_dr_sw: endpoint {
+					remote-endpoint = <&usb1_drd_sw>;
+				};
 			};
 		};
 	};
-- 
2.34.1


