Return-Path: <devicetree+bounces-2098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D907A99F1
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:34:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 97D1E1C203A7
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE95A134A9;
	Thu, 21 Sep 2023 17:31:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E70C125AB
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:31:16 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3E845AE03
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:29:21 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-99bf3f59905so150646166b.3
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695317353; x=1695922153; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qqq71BmglqPdWoPEtToCLWEFpVEun8ESIoG7WuZgwYc=;
        b=g2F9otnMgdCKUCWfeToh3l7l/H6ocLBBbbf7gpI+lchaFpV8IIMtevX3Ms7UT+1SXA
         r8jLRA9xH9ZIlnFg7K/fB8XMUGCBXgQHa7HLHsoa1M+241B6FWP34prNPo/sr92kTfCR
         TYInw6zV1I6zZopQQckHdDVKaEj4RgFuH6LsmQ56yYZcq4728tzC0T3ZS1QmQil6xs2v
         Ld/NuHhpUUXqt1lC25srXDc7l9E6WPryQyHaN/RkxzHUlyZe8HYocpo684n/KQblgSbL
         Fwi+gmpWpZro1moeoHd6ohneN0oYFcCU2C2zOYp7yUR6R5MzNspUGBSiuEXKa/jkD9kX
         LCBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695317353; x=1695922153;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qqq71BmglqPdWoPEtToCLWEFpVEun8ESIoG7WuZgwYc=;
        b=TkqEiHcfyRqaN2yQXh0Zxkl5Qtk3aIzHlLgKUA/IkSRWHwkZiws5qgGBYplz1uYwng
         +9YxDXC8yy7jJehudBceuXZQSjvPKHTkHj6To0maT4lOqXY/PwMvUPBKmP3B/FhSEDjf
         aITT8Eu4zFmjZBi6HYa8HwIhxdiImNwhih0ribbWPMjl+fHXXfWC3bIJ+1q/5K+HM0UZ
         yA5ksZAk+Skx1o7pz+J+ywgQYv1vua9M2vu2VmDNvVnOYNFR2q4qG2VBYQ0nzp/Teb7+
         pluvTyod97nfy1/LP8ptByf0ZqV/Ew9eZqCEA5sAI+y1ObXjtiPqSK9sNBIQAjVSrXt3
         9n2g==
X-Gm-Message-State: AOJu0YyNVtl7CSCG65Lo7dtVQM1FxDXyMk0bbNuy9mlT73jj7oB+Cnok
	mVO7VB2H1IxhPLbyiMWTslsChXC1xj6gbQdxnTQ=
X-Google-Smtp-Source: AGHT+IFR1kbbxTRWEH9mw/Vp5hxxeIOn40wseoaICuj9UqBtVI3f3zQkL5poxy1AfUdKYxKM6xtXUg==
X-Received: by 2002:a17:906:314b:b0:994:555a:e49f with SMTP id e11-20020a170906314b00b00994555ae49fmr5565998eje.31.1695306776297;
        Thu, 21 Sep 2023 07:32:56 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id lt12-20020a170906fa8c00b009a219ecbaf1sm1153327ejb.85.2023.09.21.07.32.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:32:55 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 21 Sep 2023 16:32:44 +0200
Subject: [PATCH v5 5/7] arm64: dts: mediatek: add smi support for mt8365
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230207-iommu-support-v5-5-fa6f03680832@baylibre.com>
References: <20230207-iommu-support-v5-0-fa6f03680832@baylibre.com>
In-Reply-To: <20230207-iommu-support-v5-0-fa6f03680832@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2121; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=lJi09wmfuA1CnXJrdr2+qCC0CVBcfrZwevdWJeNOAo0=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlDFQPeEVAosQevQAqB7DoM0uAAPVMlpfJ/ukAvN/9
 bwraReqJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZQxUDwAKCRArRkmdfjHURaBED/
 9eQyPJqcaKtboU6kfg6hZoH67UPapjGCGlzPX+xN+cp/AidAM2WYleo1XPoIXxOcKmAeuXc3t+Riqk
 Jf9KAYa+FVlFWxo6o4et8YVILM2za8IBVlX/YvMFxDQqd3n13pdxaNf2Y+m8misSokZV6QZaNso/J+
 j8JVdwu/MpisGqVHHTyNa0xcUkm4cXj7Q0vxwX5KnONMvD976B3zZ3nNjCWxsMMpeCG6qMsXILJr53
 BXbZjkP3LvdzxVDTdmeAelVFG9vzFCDR2PIYKqUcZoyUyiAJ55CA79a1QcECE9voFPZQhT1yTMb4xg
 AxvT/C1KQH0JLIlN1+N/5RuNQYyeSCGulEdhdMsCGvk0UJlCtb7GUF1rO/LVujU8X493BHp95rqAS1
 bJXtF0AeSfp1sldVPNb+8BTNMNYhX9xXtqUehSBBHHULhV9dIvJR+Kv3SaF7cPpqVf0+8T+8NjfSd1
 Nb7pBdlZxMenbZlec/2EzaPvyGzHeeg5S4XIh0KIccn70OnaSK4hLrkW9jG5rATgyH6eo7LT8gdYOz
 Oe5kmSkiIBKyG0REtL1u3wZID1KitQFJeStZLw8Dy0H/+gN94gM2/qi1c2gCh5Mw+/hOo5HqC5M4TG
 Gp9/t+mnQ+hzYN/7IM2nTEKP1mea5sjxYsga5c8EeNn0nHddqwE33d/vL7fQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_IMAGE_ONLY_20,HTML_MESSAGE,
	MIME_HEADER_CTYPE_ONLY,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Smart Multimedia Interface (SMI) local arbiter does the arbitration for
memory requests from multi-media engines. Add SMI in the MT8365 DTS will
allow to add local ARBiter (LARB), use by IOMMU.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index c2f88d153dee..a03b8c0da68b 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -340,16 +340,19 @@ power-domain@MT8365_POWER_DOMAIN_CAM {
 							      "cam-4", "cam-5";
 						#power-domain-cells = <0>;
 						mediatek,infracfg = <&infracfg>;
+						mediatek,smi = <&smi_common>;
 					};
 
 					power-domain@MT8365_POWER_DOMAIN_VDEC {
 						reg = <MT8365_POWER_DOMAIN_VDEC>;
 						#power-domain-cells = <0>;
+						mediatek,smi = <&smi_common>;
 					};
 
 					power-domain@MT8365_POWER_DOMAIN_VENC {
 						reg = <MT8365_POWER_DOMAIN_VENC>;
 						#power-domain-cells = <0>;
+						mediatek,smi = <&smi_common>;
 					};
 
 					power-domain@MT8365_POWER_DOMAIN_APU {
@@ -367,6 +370,7 @@ power-domain@MT8365_POWER_DOMAIN_APU {
 							      "apu-5";
 						#power-domain-cells = <0>;
 						mediatek,infracfg = <&infracfg>;
+						mediatek,smi = <&smi_common>;
 					};
 				};
 
@@ -720,6 +724,17 @@ mmsys: syscon@14000000 {
 			#clock-cells = <1>;
 		};
 
+		smi_common: smi@14002000 {
+			compatible = "mediatek,mt8365-smi-common";
+			reg = <0 0x14002000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MM_SMI_COMMON>,
+				 <&mmsys CLK_MM_MM_SMI_COMMON>,
+				 <&mmsys CLK_MM_MM_SMI_COMM0>,
+				 <&mmsys CLK_MM_MM_SMI_COMM1>;
+			clock-names = "apb", "smi", "gals0", "gals1";
+			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+		};
+
 		camsys: syscon@15000000 {
 			compatible = "mediatek,mt8365-imgsys", "syscon";
 			reg = <0 0x15000000 0 0x1000>;

-- 
2.25.1


