Return-Path: <devicetree+bounces-2169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB767A9BCB
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:04:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E08BC1C213F5
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0622F19441;
	Thu, 21 Sep 2023 18:16:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25C914F62
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:16:35 +0000 (UTC)
Received: from mail-ua1-x92f.google.com (mail-ua1-x92f.google.com [IPv6:2607:f8b0:4864:20::92f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7002DA545A
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:15:10 -0700 (PDT)
Received: by mail-ua1-x92f.google.com with SMTP id a1e0cc1a2514c-7a52a1e2a59so531562241.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695320109; x=1695924909; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YJN9aOtZgPglJqdvf2m10tLO0jbnaME/5vD8YEmqs0o=;
        b=B9dL+K86Xd7xIkqwDwr/ImzpB9UWSrmTpr7TEQDA5lPbRhGD/fMSNdDWnee/lvZLth
         LQcBM0QB1smE0XkvRY7yEDALpI1mxIYRAjSg5x68vaOefGm4aMJbj9jGTQXtramtwat/
         vrdPR7SIQO2I00CB/762XYZUgm6OmtqFYfsNYfrQfUHVsXaHRj6eEJ0bgO+hSFUMwGZU
         NvoIKlRSqARx+g0oRDfPcc2YNd5r63O5xwbxO9rAvHd5Gw+d3M6CIlunWoMvBQ/pmViM
         1fZXtHxFW/cKiWPJWp7XmC4hEaAvrSGxhFqnd015x8QYYhpEv5aSoGaBazHYQ1JQHcgA
         aC8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695320109; x=1695924909;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YJN9aOtZgPglJqdvf2m10tLO0jbnaME/5vD8YEmqs0o=;
        b=rngX4Nu319DeIzRp++oPiZ781/axFCFhRWKjB+cKoAWQ5Hm3YE8lVr68MmqCUdWxVb
         L/cHvB3p1JyZEi4zYqjjvSv5M46vtKVxReoj5hFV+XbuV2OQI0C7Sue83lUzO4XtQu7k
         fvN6C3nwiA9HY7txSYWdxjpUH/MmOwI1Vgq7zuI78EUp+3zgtQvnpFaU9uagkDy9Fefs
         yPDIgP0b1o3tV7CimvdKR1v2W50ncdtVJggHtd44f5Cm39mMK+8wrSENO2PTlUHTSsT5
         DdIPZVZhCU5PaYH8bDAr61+bTvxK2Svujib/8CQ2BXNRYR2WYYTft0oq37H4RBn7oz7u
         M6+A==
X-Gm-Message-State: AOJu0YztZOO10FnpQWmFmJvafcJ+ZI5gpZDpv/IERK+BAqgDfP5+Mcz6
	lDRXOlbfhhgY81c+4ALO2p/TQO5jeD8=
X-Google-Smtp-Source: AGHT+IGXu85ZU9tTQcrUtdBSTUKaV+TPhJ9ERgFrCb46+7owHSUzpuscGbIdB17UOEqsoBsaQgeLfQ==
X-Received: by 2002:a05:6871:152:b0:1bf:50e0:95d9 with SMTP id z18-20020a056871015200b001bf50e095d9mr6369297oab.26.1695304303377;
        Thu, 21 Sep 2023 06:51:43 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z19-20020a056870e15300b001d7034bc222sm547064oaa.15.2023.09.21.06.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 06:51:43 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	uwu@icenowy.me,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	andre.przywara@arm.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V5 2/4] ARM: dts: sun8i: v3s: add EHCI and OHCI to v3s dts
Date: Thu, 21 Sep 2023 08:51:34 -0500
Message-Id: <20230921135136.97491-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230921135136.97491-1-macroalpha82@gmail.com>
References: <20230921135136.97491-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Chris Morgan <macromorgan@hotmail.com>

Add the EHCI and OHCI controller to the Allwinner v3s to support using
USB in host mode.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
index c87476ea31e2..e8a04476b776 100644
--- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
@@ -319,6 +319,29 @@ usbphy: phy@1c19400 {
 			#phy-cells = <1>;
 		};
 
+		ehci: usb@1c1a000 {
+			compatible = "allwinner,sun8i-v3s-ehci", "generic-ehci";
+			reg = <0x01c1a000 0x100>;
+			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_EHCI0>, <&ccu CLK_BUS_OHCI0>;
+			resets = <&ccu RST_BUS_EHCI0>, <&ccu RST_BUS_OHCI0>;
+			phys = <&usbphy 0>;
+			phy-names = "usb";
+			status = "disabled";
+		};
+
+		ohci: usb@1c1a400 {
+			compatible = "allwinner,sun8i-v3s-ohci", "generic-ohci";
+			reg = <0x01c1a400 0x100>;
+			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_EHCI0>, <&ccu CLK_BUS_OHCI0>,
+				 <&ccu CLK_USB_OHCI0>;
+			resets = <&ccu RST_BUS_EHCI0>, <&ccu RST_BUS_OHCI0>;
+			phys = <&usbphy 0>;
+			phy-names = "usb";
+			status = "disabled";
+		};
+
 		ccu: clock@1c20000 {
 			compatible = "allwinner,sun8i-v3s-ccu";
 			reg = <0x01c20000 0x400>;
-- 
2.34.1


