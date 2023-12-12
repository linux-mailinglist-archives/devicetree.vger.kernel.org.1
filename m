Return-Path: <devicetree+bounces-24289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E985880EA5D
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:27:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24FBB1C20B02
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 11:27:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B308F5D4A5;
	Tue, 12 Dec 2023 11:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fwH0c6BS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D0E9B8
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 03:27:50 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1d1cb7651a9so10752055ad.1
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 03:27:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702380469; x=1702985269; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gJnBFFlQjmOlNn2KOw8AHQl+aAG080koCWR/okC+yIc=;
        b=fwH0c6BSKrOPZKvgNGq4gCmkd11hG8B0YISj+PYVBV91Bgt2bdSU+VTPCilM3+UqRV
         SgJaUg3uDlnxsKLoptmKQl+LmZwOqVQpyUHxySJ+xMG5QvrDKo9293wK5M0lEOs2dTAt
         mtAPrSDiyNCjxyQMN3gIaHMOO15r1vzTjr0HzlZQ51hd2R/GT/dPmMriJA6oOJtKqNKH
         KLtiaPBcPrH/jGHd5p1MX5oXheBAWG/FyIHuDrZZy3y7eLJCOnQ50DykwSEcyxB3vKdV
         iDmM/mXO9AGl4jqSmbijlROyMUpsaPdnL3lPjIWfi+6bQj/TXnBVPfKoz7RpHWn7Psue
         2xNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702380469; x=1702985269;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gJnBFFlQjmOlNn2KOw8AHQl+aAG080koCWR/okC+yIc=;
        b=jXCdwTDQ51kGyeEPWFuRY5Zu0aOeCPmw9iuyacq335z3lWN+OblQ4ExJPhsiC0g0sP
         AWH66cSojUEIV4pRl3fAhHgFeaJNBNSvWHFRjnPf5Jx3NbVvqklvisRG8o3fd5hREjoA
         1BeKWWsSgTl28k83iG8eqyOXrTJo4r/L2V6NOEgWCK28VssPIRpFqw/P0s7LreyPkvNS
         gXObPybc7XAzOfAtbkkA+QMGP6ieQQleT/o9wUMiGCrbf1nezhnsnWaaxLDPCCplwJrA
         +VbQv25D3XeEAlSW4gaJSoYA2UcvUFOd6T2NpM/4db65B/wMBafzCRUfVLIgLjfd4+wG
         Y0iA==
X-Gm-Message-State: AOJu0YzsFfAhHOycx4ykvx+TjAMBbsQ0UiFP9kwlt8mGRva5RQD7fyqe
	rUN16iG5/iWoJKaCY92T86o=
X-Google-Smtp-Source: AGHT+IE02bQc+lwBB8qG1KWfjQSmk8kFZr5ZWGP90M/Xz6/0tQ+3fAXrVuUhWNgMehadISnA1h4bLg==
X-Received: by 2002:a17:903:32cb:b0:1cf:ce83:3b5d with SMTP id i11-20020a17090332cb00b001cfce833b5dmr11875854plr.6.1702380469560;
        Tue, 12 Dec 2023 03:27:49 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:a620:342d:797a:5c59])
        by smtp.gmail.com with ESMTPSA id w18-20020a170902e89200b001d051725d09sm8415421plg.241.2023.12.12.03.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 03:27:49 -0800 (PST)
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
Subject: [PATCH 3/3] arm64: dts: imx8mp-dhcom-pdk3: Describe the USB-C connector
Date: Tue, 12 Dec 2023 08:27:29 -0300
Message-Id: <20231212112729.700987-3-festevam@gmail.com>
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

imx8mp-dhcom-pdk3.dtb: typec@3d: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/extcon/extcon-ptn5150.yaml#
	
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
index b749e28e5ede..fea67a9282f0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
@@ -175,10 +175,14 @@ typec@3d {
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_ptn5150>;
 
-				port {
-
-					ptn5150_out_ep: endpoint {
-						remote-endpoint = <&dwc3_0_ep>;
+				connector {
+					compatible = "usb-c-connector";
+					label = "USB-C";
+
+					port {
+						ptn5150_out_ep: endpoint {
+							remote-endpoint = <&dwc3_0_ep>;
+						};
 					};
 				};
 			};
-- 
2.34.1


