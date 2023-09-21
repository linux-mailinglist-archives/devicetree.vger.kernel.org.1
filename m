Return-Path: <devicetree+bounces-2076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCA77A99C1
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:21:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3E04CB20B0F
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDA9D4123E;
	Thu, 21 Sep 2023 17:23:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856A7171BC
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:23:26 +0000 (UTC)
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E68C400F1
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:22:59 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2c12ae20a5cso19440631fa.2
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695316976; x=1695921776; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fxkPmAViZ4bBY9DKE4WBvD6KeHCq77X51+2zFhsJvjI=;
        b=Z39dAiaUJ04NjcqUyWdU+Z7jHMi+QHKkrsdqV+tQzUNeZ3Wp/SFcCHYdGf1/wvIGsx
         YTI0q5kXsbHWqIH/Cr8yertQPw+b6D2lFyiFdiEUgG+BEKmk1KTT/9EnLXrhMAZ7Z513
         JHcax9epFDW4y3Qf3qG0WgXawJF+Is0vpep6z4s0A8iQm4EZ8AkM9egCfN3kIU+k6qq7
         4St/CumX8/TXYSG/zUIOZQouzCXrOmyjkbBLPRZeZrpFCW45HVvnNHVvdusQGVx7Tt7c
         hrnlCIr7gAeJEpYjeB/+1KTF2LIwgJeEQkGbTvm+UA2+BcXKl1+iuQ0dCdUnr0Fd4LrL
         2gUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695316976; x=1695921776;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fxkPmAViZ4bBY9DKE4WBvD6KeHCq77X51+2zFhsJvjI=;
        b=MHBRcKKzRJuWBapgJZclmUKMHyx99C4aLbzIYiWCWnSjFpwxrL6P/FbwHk9i2dr4QS
         2E+qrWlVnxyVeRphGUmc1TxtUEbj2m2Nx8JM/LjytlkHa2GY0MbKNnT9YCWSQOUMWYH2
         FDaHaiZOAppJVIKWR0GtJqOs2PkJzphLlZlnhYwXMgpKtERfvO6wd2XZMLH912+8dj5s
         fFz9cyL4i6QnOG0S2GS0lSxr6fLXtJ7X0Kuq1+eZWG2EH8z3IQf41ZbjsadoOehZCEOx
         XLt1p0XZL973R3n2Hmnq3MDN4nU7smAby8LWUwiMmJZ6drv5QBlubLcGro2pTB04RdB5
         Gpwg==
X-Gm-Message-State: AOJu0Yx8ZNfU7XfAga2jT/yaP3Mv4JIZzrObv+SkFOi1RJEsJrgeR+tY
	Y0w193QAkDqeIbs5L2n6rBm2xuh4UspA5C9mb3U=
X-Google-Smtp-Source: AGHT+IE24TGT99DikzPg5zG+6oyXRaRUuY6+u/KuMZcpuCCWeHerHnJXlIqtmoOq6kDnMQwaM6y3ZQ==
X-Received: by 2002:a5d:6282:0:b0:321:4ca9:ee86 with SMTP id k2-20020a5d6282000000b003214ca9ee86mr5788827wru.53.1695306777512;
        Thu, 21 Sep 2023 07:32:57 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id lt12-20020a170906fa8c00b009a219ecbaf1sm1153327ejb.85.2023.09.21.07.32.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:32:56 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 21 Sep 2023 16:32:45 +0200
Subject: [PATCH v5 6/7] arm64: dts: mediatek: add larb support for mt8365
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230207-iommu-support-v5-6-fa6f03680832@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2919; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=YQ4gFuFLZ3ZXhHJoLIMLvf6JGXdHrmuwZeJIyfaEitM=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlDFQPhJHEHhv6HpHOR8vnZbdJqOs94UdeCDIGq9yk
 oP0A2XCJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZQxUDwAKCRArRkmdfjHURRxSD/
 95BCCUm6vXCQ3heLFsNf0wN6jPPVGGVQvyaRoSVnPA+qE1wmUMIJSJ3/Os+3vPTAaQKqRSSi5S4bps
 3H/NTU8PqwL2g2f0cN1qjKrnvBdsVR5DJ40Nf10BqZZu1TZHYNIcM7vg3HmLTXFb+s+cbg8bQwjQJa
 j01l+vxGCArOiBpxCAyGyzACfTCTlFFGdaIxUc4H4wqUKD04624XV5ntBjTNthw2P+qzkDxXcx9nur
 iG2zXXUBFyIhzl38RYQIxvCsP5pw2KELEZGIkzxSayQ5L44xtSBjPOiTWbdY5XvprQFxU9wnnmWepl
 7vwQSRnSrLz+OCv9MOzKCGroNm1IzNTrSdi0Za6+CD5+Q0yBwQkA0vUqoCf94y3R9wlDb3ZNoGGJIb
 bk2+P7zJHMCrEc/yDl6N2T/jG7cF5sLKBD+PympY8cfQHWeNXRWWShRXn09PQqB/gX5Nm79/Mzm57t
 omaDyWe3lrnXx1H2frtvyzr2Wf6nWbh0GD4zyKrl413WQgeXt5tcTPATFSY34QSXVPlNOU0SkRNz1p
 58/Dlrb9QqA2LODi+/nhKZUzjT5EluaUYCBS2GpeeuytKTL9EAxx9tgvGOWrSlIqHcImowYIaY4Hs4
 e3q3arOf4R4E/epzs7VxtO791cfKKfqRKw12rvXRk9Y2RIFwQPMqE73rPQ3Q==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Local arbiter (LARB) is a component of Smart Multimedia Interface (SMI),
used to help the memory management (IOMMU).
This patch add 4 LARBs and 2 clocks for the larb1 and larb3 support.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 59 ++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index a03b8c0da68b..afcfa1dd242e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -735,12 +735,71 @@ smi_common: smi@14002000 {
 			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
 		};
 
+		larb0: larb@14003000 {
+			compatible = "mediatek,mt8365-smi-larb",
+				     "mediatek,mt8186-smi-larb";
+			reg = <0 0x14003000 0 0x1000>;
+			mediatek,smi = <&smi_common>;
+			clocks = <&mmsys CLK_MM_MM_SMI_LARB0>,
+				 <&mmsys CLK_MM_MM_SMI_LARB0>;
+			clock-names = "apb", "smi";
+			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			mediatek,larb-id = <0>;
+		};
+
 		camsys: syscon@15000000 {
 			compatible = "mediatek,mt8365-imgsys", "syscon";
 			reg = <0 0x15000000 0 0x1000>;
 			#clock-cells = <1>;
 		};
 
+		larb2: larb@15001000 {
+			compatible = "mediatek,mt8365-smi-larb",
+				     "mediatek,mt8186-smi-larb";
+			reg = <0 0x15001000 0 0x1000>;
+			mediatek,smi = <&smi_common>;
+			clocks = <&mmsys CLK_MM_MM_SMI_IMG>,
+				 <&camsys CLK_CAM_LARB2>;
+			clock-names = "apb", "smi";
+			power-domains = <&spm MT8365_POWER_DOMAIN_CAM>;
+			mediatek,larb-id = <2>;
+		};
+
+		vdecsys: syscon@16000000 {
+			compatible = "mediatek,mt8365-vdecsys", "syscon";
+			reg = <0 0x16000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		larb3: larb@16010000 {
+			compatible = "mediatek,mt8365-smi-larb",
+				     "mediatek,mt8186-smi-larb";
+			reg = <0 0x16010000 0 0x1000>;
+			mediatek,smi = <&smi_common>;
+			clocks = <&vdecsys CLK_VDEC_LARB1>,
+				 <&vdecsys CLK_VDEC_LARB1>;
+			clock-names = "apb", "smi";
+			power-domains = <&spm MT8365_POWER_DOMAIN_VDEC>;
+			mediatek,larb-id = <3>;
+		};
+
+		vencsys: syscon@17000000 {
+			compatible = "mediatek,mt8365-vencsys", "syscon";
+			reg = <0 0x17000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		larb1: larb@17010000 {
+			compatible = "mediatek,mt8365-smi-larb",
+				     "mediatek,mt8186-smi-larb";
+			reg = <0 0x17010000 0 0x1000>;
+			mediatek,smi = <&smi_common>;
+			clocks = <&vencsys CLK_VENC>, <&vencsys CLK_VENC>;
+			clock-names = "apb", "smi";
+			power-domains = <&spm MT8365_POWER_DOMAIN_VENC>;
+			mediatek,larb-id = <1>;
+		};
+
 		apu: syscon@19020000 {
 			compatible = "mediatek,mt8365-apu", "syscon";
 			reg = <0 0x19020000 0 0x1000>;

-- 
2.25.1


