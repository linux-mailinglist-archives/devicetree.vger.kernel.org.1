Return-Path: <devicetree+bounces-3256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2F47ADE79
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 20:17:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id B24FB1C208C8
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 18:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65398224D1;
	Mon, 25 Sep 2023 18:17:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA352224CB
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 18:17:52 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FF0F112
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 11:17:50 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-99c93638322so1596684666b.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 11:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695665869; x=1696270669; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=clF9IqfWOEF59ajJbesUMGqxvJHi1IjyVraJZokbP8Y=;
        b=hNzsfgjE+hiMcG2VtXBDk/q0ARRTue41bFIIEG3L5RM6KEfost3yi2fGp2s21SX2ym
         TxxlEuoTPLeEF/bTdR9Iuy2NjJe4tyOXTZQGfEK0+nuDwtImv0blFGRF46Syupy3VAyJ
         ASHvFuUe4t8saTnnOWr9FoFQnD0bQ3zunNreyYC6DJC6HX54rdtatwbBMSnZCqxQl4Xf
         RNH2l5fQ7ZQdWUbBGu+eA1A/93HVo9nDr4swRAWzy1OsnH2NhOKHMAMBUR6gpDYNcKg8
         Cv5oQVEF2Fk4EqJ7VmRgX4iT9oAVsvpBEp8+G1pVCd+xtMcQ7AKuRkk1XV50o9+5qww5
         Txgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695665869; x=1696270669;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=clF9IqfWOEF59ajJbesUMGqxvJHi1IjyVraJZokbP8Y=;
        b=UOgyYX9vrk8a07fKL7fg/vdfCcnbG9uxtBEmlIeRHT+AuhpLcV6l63EMy9/MTZrqN4
         VKpUCxkU684qpOsGkhByGyj6QZ+Zxa47WabicUJxdcuWzPR6iwsx5HkjfnkF2wTC4GHa
         mZCZ7eRvRE/tKErR9wWJh7kqZByPqnQWDg2DeAUzaOMI8BVNo20tnUDxcXniV4i0ux1E
         oxQfN5AU8zxv6dtmQtuEDcZKwB9O1pOjK9FUpzDkIEygu5JuvJL9oeRqJfhncYpsG4gw
         tgRIjdVww9Z9ep9960bqrqWKlsBrjYEK9BJUoSC0u415FZyXk2D0L93jn3ldONaen+VX
         gv2w==
X-Gm-Message-State: AOJu0YzERcPg2kkFLnyiSEFj8MfU8IVV2GMo9+8jW/4biUNlCJPD1n6/
	hZoRK9H2fywJJhBAzShmxj1TPA==
X-Google-Smtp-Source: AGHT+IGbtIueYW57+I4iFokcXH6J8RHtXJU48dD1b/v/MmmPRNtR1ucVnPDEPwiPW+QXE197AdcNnw==
X-Received: by 2002:a17:907:97c9:b0:9ae:50ec:bd81 with SMTP id js9-20020a17090797c900b009ae50ecbd81mr682486ejc.21.1695665869012;
        Mon, 25 Sep 2023 11:17:49 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id j26-20020a170906831a00b00997d7aa59fasm6793962ejx.14.2023.09.25.11.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 11:17:48 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Mon, 25 Sep 2023 20:17:38 +0200
Subject: [PATCH v6 4/7] arm64: dts: mediatek: add power domain support for
 mt8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230207-iommu-support-v6-4-24453c8625b3@baylibre.com>
References: <20230207-iommu-support-v6-0-24453c8625b3@baylibre.com>
In-Reply-To: <20230207-iommu-support-v6-0-24453c8625b3@baylibre.com>
To: Yong Wu <yong.wu@mediatek.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4724; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=gs34qYbpVZeuz1fNLXc7xbInSDTbehayNY8q/g3uDQE=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlEc7FTl0niKBNPCGJeVVRHlwIKP3BNxOpKFNI/WZ3
 aOVdKlaJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZRHOxQAKCRArRkmdfjHURdtSEA
 CatxECkwOq3wcsJTPGcFEU7RSbi/wBwvLt7VskfT0wIhq1yCI+pjsjzrz9oNGZipCxfnMHNlFBgdyZ
 WOOHDr/BpKDfM1yF/seseJVXGCX0x1xT7G85YWFG/LIlkNVHXCYa/UryKUbXPF22L51DC9gAA0R5qD
 2w7PMEfH4THcTCu6515DnrKwohESLR/qzv0cLyDleR0/Ro4TxgO8nZXk2QggcZxNphC5FVK8C0OqBY
 oC6fyvk5/SevsuAjkxuP2RSw9WkolLHdMFFFEKKwdo8Xq0dl1yF/jjB4pcTaB6bINLf9Kcrvx6uoL4
 YO/1RbmWQ0sXmQNt5cHwF5OSxiYGFP6p398uo/RpSzSzr0AJRMS6jg45iIMNVuYhWqHE8LiWA08KtJ
 +7nWiLl8pFpOcW4AbK8w+mVN/SNSAYU5nFxq34y/NPpgCwSD5oJgBknXodsXkYfJ/uP/iYcsZQAsRE
 QBYzKJu9L7Z5hHyogwLGDi/qy3SkE+8+oaXZfxTnQoLySs9SwYTjjxDw+rNDsBLaCtTcu5447y44my
 JVCuvhGX6Zv0xBK1jzB50JOMDyHCi1O4622FblOwHQpyVSW1LgqKlraU4rTQmUxFQEzBpjKd5u01Au
 wMfOrTbGpDQKp7BjsIOt4WDTAqI6KVA8c7faZwV3i+alLzaGBd7oG3pvXKdQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The following power domain are added to the SoC dts:
- MM (MultiMedia)
- CONN (Connectivity)
- MFG (MFlexGraphics)
- Audio
- Cam (Camera)
- DSP (Digital Signal Processor)
- Vdec (Video decoder)
- Venc (Video encoder)
- APU (AI Processor Unit)

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 110 +++++++++++++++++++++++++++++++
 1 file changed, 110 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index c3ad7cbc89ab..c2f88d153dee 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -9,6 +9,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/phy/phy.h>
+#include <dt-bindings/power/mediatek,mt8365-power.h>
 
 / {
 	compatible = "mediatek,mt8365";
@@ -298,6 +299,115 @@ syscfg_pctl: syscfg-pctl@10005000 {
 			reg = <0 0x10005000 0 0x1000>;
 		};
 
+		scpsys: syscon@10006000 {
+			compatible = "mediatek,mt8365-syscfg", "syscon", "simple-mfd";
+			reg = <0 0x10006000 0 0x1000>;
+			#power-domain-cells = <1>;
+
+			/* System Power Manager */
+			spm: power-controller {
+				compatible = "mediatek,mt8365-power-controller";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				#power-domain-cells = <1>;
+
+				/* power domains of the SoC */
+				power-domain@MT8365_POWER_DOMAIN_MM {
+					reg = <MT8365_POWER_DOMAIN_MM>;
+					clocks = <&topckgen CLK_TOP_MM_SEL>,
+						 <&mmsys CLK_MM_MM_SMI_COMMON>,
+						 <&mmsys CLK_MM_MM_SMI_COMM0>,
+						 <&mmsys CLK_MM_MM_SMI_COMM1>,
+						 <&mmsys CLK_MM_MM_SMI_LARB0>;
+					clock-names = "mm", "mm-0", "mm-1",
+						      "mm-2", "mm-3";
+					#power-domain-cells = <0>;
+					mediatek,infracfg = <&infracfg>;
+					mediatek,infracfg-nao = <&infracfg_nao>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					power-domain@MT8365_POWER_DOMAIN_CAM {
+						reg = <MT8365_POWER_DOMAIN_CAM>;
+						clocks = <&camsys CLK_CAM_LARB2>,
+							 <&camsys CLK_CAM_SENIF>,
+							 <&camsys CLK_CAMSV0>,
+							 <&camsys CLK_CAMSV1>,
+							 <&camsys CLK_CAM_FDVT>,
+							 <&camsys CLK_CAM_WPE>;
+						clock-names = "cam-0", "cam-1",
+							      "cam-2", "cam-3",
+							      "cam-4", "cam-5";
+						#power-domain-cells = <0>;
+						mediatek,infracfg = <&infracfg>;
+					};
+
+					power-domain@MT8365_POWER_DOMAIN_VDEC {
+						reg = <MT8365_POWER_DOMAIN_VDEC>;
+						#power-domain-cells = <0>;
+					};
+
+					power-domain@MT8365_POWER_DOMAIN_VENC {
+						reg = <MT8365_POWER_DOMAIN_VENC>;
+						#power-domain-cells = <0>;
+					};
+
+					power-domain@MT8365_POWER_DOMAIN_APU {
+						reg = <MT8365_POWER_DOMAIN_APU>;
+						clocks = <&infracfg CLK_IFR_APU_AXI>,
+							 <&apu CLK_APU_IPU_CK>,
+							 <&apu CLK_APU_AXI>,
+							 <&apu CLK_APU_JTAG>,
+							 <&apu CLK_APU_IF_CK>,
+							 <&apu CLK_APU_EDMA>,
+							 <&apu CLK_APU_AHB>;
+						clock-names = "apu", "apu-0",
+							      "apu-1", "apu-2",
+							      "apu-3", "apu-4",
+							      "apu-5";
+						#power-domain-cells = <0>;
+						mediatek,infracfg = <&infracfg>;
+					};
+				};
+
+				power-domain@MT8365_POWER_DOMAIN_CONN {
+					reg = <MT8365_POWER_DOMAIN_CONN>;
+					clocks = <&topckgen CLK_TOP_CONN_32K>,
+						 <&topckgen CLK_TOP_CONN_26M>;
+					clock-names = "conn", "conn1";
+					#power-domain-cells = <0>;
+					mediatek,infracfg = <&infracfg>;
+				};
+
+				power-domain@MT8365_POWER_DOMAIN_MFG {
+					reg = <MT8365_POWER_DOMAIN_MFG>;
+					clocks = <&topckgen CLK_TOP_MFG_SEL>;
+					clock-names = "mfg";
+					#power-domain-cells = <0>;
+					mediatek,infracfg = <&infracfg>;
+				};
+
+				power-domain@MT8365_POWER_DOMAIN_AUDIO {
+					reg = <MT8365_POWER_DOMAIN_AUDIO>;
+					clocks = <&topckgen CLK_TOP_AUD_INTBUS_SEL>,
+						 <&infracfg CLK_IFR_AUDIO>,
+						 <&infracfg CLK_IFR_AUD_26M_BK>;
+					clock-names = "audio", "audio1", "audio2";
+					#power-domain-cells = <0>;
+					mediatek,infracfg = <&infracfg>;
+				};
+
+				power-domain@MT8365_POWER_DOMAIN_DSP {
+					reg = <MT8365_POWER_DOMAIN_DSP>;
+					clocks = <&topckgen CLK_TOP_DSP_SEL>,
+						 <&topckgen CLK_TOP_DSP_26M>;
+					clock-names = "dsp", "dsp1";
+					#power-domain-cells = <0>;
+					mediatek,infracfg = <&infracfg>;
+				};
+			};
+		};
+
 		watchdog: watchdog@10007000 {
 			compatible = "mediatek,mt8365-wdt", "mediatek,mt6589-wdt";
 			reg = <0 0x10007000 0 0x100>;

-- 
2.25.1


