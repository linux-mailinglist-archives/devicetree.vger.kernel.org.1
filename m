Return-Path: <devicetree+bounces-24489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C20680F4E6
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 18:49:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8AA421C20C90
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 17:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DACAE7D8AD;
	Tue, 12 Dec 2023 17:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fJ0DqaE+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E84CA1
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 09:49:29 -0800 (PST)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1d072f50a44so13251835ad.0
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 09:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702403368; x=1703008168; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9o7hG+Bfuk/8KLgCmYouqOGv10v2ly5d9uYgGYM3biM=;
        b=fJ0DqaE+QkNGnE0+PsgHBDtv6pIQk+RGUXICb+ZxBJFW7mD7tti6hYGMXnYSLMqHWE
         AD5aNPL+JwklmorDsCjhf/J9oAiW78dN3S1LJv+FebORpQCgAdvPyEQ86hYqt9obr0kA
         5t2v77b/6KerltNAU2nADt54ph9csV7fTWNUOSB4AIrT97jcuvBCiIKe3Oi3NrPxe2Fj
         LOW3gCzDd8NmhhcgBE1PVIiUnxhVlfEghyIMEifDwR06vU9Q+JWyOUJw9ynbPzUYqSbe
         d5BMoG9HPZc/dJzokXUTOU1cDZgUZVsRpFS0n53fUz4CWjQ/VKe3mVxxbgBeMJQtiaTh
         bvEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702403368; x=1703008168;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9o7hG+Bfuk/8KLgCmYouqOGv10v2ly5d9uYgGYM3biM=;
        b=eO+gZ7DBMe4Ay4gxb4mfwYdT8ZLvJwbvQOhHtpz+YNsRHUPdkbGYs5VQjuHUwnj9Zw
         n4LbI3nZc2QB+58T2BHCOLtUrg1uy+MHujLM+YOuILhGUXgMYOuNaQva2/35L2jqTtue
         YzzaiuuUWGZ0DW+zwjsuwPJQMxGkNmelguIXZZN/WErTWjaFo5B4z36GVSBQNbFwefLa
         FiDLFXQT8mhI01EDsip8pzebZUb3YdWAx+c9YU64k7Nd4H3lzDt1f+qwA5KOT2GCHBr+
         IVXoIOMo4fqF3wfMGySUIRjuaVZUHp2M01zV42D5ZSASkEiuADXB1UiCIM3SB4vyWhgI
         qc4A==
X-Gm-Message-State: AOJu0YwbpLcrfBwD1vLihqDLigrLedBrAvRMV4bz8ZwXKy14/KlWeaRF
	uqkno7nzdxRUI3I39mJv0ys=
X-Google-Smtp-Source: AGHT+IHhgVrGnoO8bb2XxpK9KK0jR2gC/92nT+2wfYcSKrcPYEwEg4lZUnzWzaHJD2LmXHNsLHsuqQ==
X-Received: by 2002:a17:902:ec89:b0:1d1:cd7f:5428 with SMTP id x9-20020a170902ec8900b001d1cd7f5428mr12212086plg.1.1702403368498;
        Tue, 12 Dec 2023 09:49:28 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:a620:342d:797a:5c59])
        by smtp.gmail.com with ESMTPSA id w23-20020a170902a71700b001d0c418174fsm3115008plq.117.2023.12.12.09.49.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 09:49:27 -0800 (PST)
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
Subject: [PATCH v2 3/3] arm64: dts: imx8mp-dhcom-pdk3: Describe the USB-C connector
Date: Tue, 12 Dec 2023 14:48:47 -0300
Message-Id: <20231212174847.759164-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231212174847.759164-1-festevam@gmail.com>
References: <20231212174847.759164-1-festevam@gmail.com>
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
Changes since v1:
- None

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


