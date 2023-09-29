Return-Path: <devicetree+bounces-4660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8F97B35F3
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:45:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A1759289274
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C3E8516DD;
	Fri, 29 Sep 2023 14:45:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FAC44122F
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 14:45:00 +0000 (UTC)
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47E621A4
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:44:59 -0700 (PDT)
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-57d086365f7so2923653eaf.0
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695998698; x=1696603498; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YhDXBL6djx3l6DnIsclYTYIvG11sEMF/WMaryhbeYQw=;
        b=bLhrTGexjFXzmH12FvHSiipumO6rtxAc7r80090Ak3kDSWiUgVH/C+LXoy8zmFVRjF
         PwsDrYE6KCAw7MoNKozdQDA3+e+zCfd/4lVMHcGFMnZ4dC8RB2OFeVTVH+tC33Safn1S
         2MEUAOgpDNtc75xYAM8kb4wgGVM0DcB/51mk25OTuF9WzNT3uECmr+YsCkvrnYd7yp/K
         jU+XYraVIy4im+psDfgL95sReTllPbPtEjXER/sbckhL59nDR2ffLeV8KWKSe/fELVPz
         +PBT5McZBSGMDXC/hKhHYQGJRqTXE5YNnhtFLwHKGcBrllY6jrUcimHdp1ySRffUN52d
         phxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695998698; x=1696603498;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YhDXBL6djx3l6DnIsclYTYIvG11sEMF/WMaryhbeYQw=;
        b=rQrA+qEAP9DAiPB+QgxdqTutI3rXdpa150+vCcEq2juckKLpwCE7bodrjms8oFKhyw
         I5nVQz/vuZucZXbWdPTOtXe8Zz8rG6+pwx7yyj1xj2xaB2UvsFllQNy/DUvM4v/Yvbs8
         I1Op84Uq+QbU/uaiZ7nbhoEuNBx4bTFDUMvpOIDKWx57NtPwNBFkX5Ld/t7TAVq3TSh/
         CbwDPq/VsVEMXQ0Mp+4CLkbNNcOl9KqAiDmIkwAnFDCEZXaFjtvbtfgWQplUiBFSkVuq
         lg1RKo/D8uzKsAf+bjobxHl7yNkdOgHpOq8XJrXhNvcXsoKvz9JFbUUO50vbBa63j7QH
         jLVA==
X-Gm-Message-State: AOJu0YwTZ0JMYzzcegSOd65GJCyKCkVZQlMdLGfrZbmFQI2KPHK/YCAH
	lAqd7ePcuEDoL/QD1lpKKNuo5DYWee8=
X-Google-Smtp-Source: AGHT+IHin0WRYrMxB7uZfpH9iQe49dwXPt7hEgxWu4SOSKamTJLivb4w5WsNchcuuYMag9/cK1zzvw==
X-Received: by 2002:a4a:3019:0:b0:57d:e76d:c206 with SMTP id q25-20020a4a3019000000b0057de76dc206mr4658027oof.1.1695998698437;
        Fri, 29 Sep 2023 07:44:58 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id q19-20020a9d6653000000b006b753685cc5sm3012619otm.79.2023.09.29.07.44.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 07:44:57 -0700 (PDT)
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
Subject: [PATCH V6 2/4] ARM: dts: sun8i: v3s: add EHCI and OHCI to v3s dts
Date: Fri, 29 Sep 2023 09:44:39 -0500
Message-Id: <20230929144441.3409-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230929144441.3409-1-macroalpha82@gmail.com>
References: <20230929144441.3409-1-macroalpha82@gmail.com>
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
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
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


