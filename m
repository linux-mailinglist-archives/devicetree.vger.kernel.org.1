Return-Path: <devicetree+bounces-5969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C400B7B98D5
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 01:47:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 74E4E280D7F
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 23:47:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C91F334182;
	Wed,  4 Oct 2023 23:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fYg6fe2j"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C37031A66
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 23:47:40 +0000 (UTC)
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A18EDC9;
	Wed,  4 Oct 2023 16:47:38 -0700 (PDT)
Received: by mail-io1-xd32.google.com with SMTP id ca18e2360f4ac-79f82b26abfso17700639f.1;
        Wed, 04 Oct 2023 16:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696463258; x=1697068058; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Nwr+bVY4PaR39fDj4d2d/26+nvTGbbpn4jHymgluZU0=;
        b=fYg6fe2j2O5sTu7aVxp6U+yUO780Q30XpJfEa7Gj9d8E2k/YpCrrd+j8LK1eRgDlMe
         7W6h8jN0YdfNMCMKQ5ldwKOz477mj+UjaNje5WpFgQr8YkleQfQ0PZXBEgFiL5p5njMf
         eOOg6jtbNnszRNEsSILj3MPJ2LNSV5/liPbJA9xM2W6ebQMh4K8FWcE9Lpqhzz8TSp/d
         3P+XfjchIdwL6LqUC5+Dokfsn+4w5KQUhTbfbz+qGmcjY26JZV/c1Uf/A7zsZn+Vc+Hp
         FBbaf5SXlnOaaXxw2C/XC1folX2qgnPD1jRsZA3ya2WiqDDKcAVO4mPNRPcIomzDcdgh
         n6Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696463258; x=1697068058;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nwr+bVY4PaR39fDj4d2d/26+nvTGbbpn4jHymgluZU0=;
        b=O89FF0vzfeS8PWswPDVVTbccEZ3mFpDn8errWKEU2EGrLzUDx2PjZNx4pp79eTbQVA
         4bRgtARMmilu3D+Zz934/O6a5JSmYpHYD/Y+saMWSL6vv+LIQYrjLRtzoV7aEGEc+Q5D
         BBz/WWPyGXr/uMetN1sunOH9/fFQNoD3NBaCV0qV1cS6dnJc3k9phXwAil5AIsN6vuW2
         pJnMImu8WJzFAnFCtjeNqd5o7p8BocMv7mSmgvKRf3cenPaTGX5qbIYkhM49vnhCJHKy
         H3VYICzXUXXzKBTCHPfMrDq3q+5E4Grri+gEufN5T2W0RWH6ac7JL06VFIN+8oKg2fCP
         NNZA==
X-Gm-Message-State: AOJu0YyReqJR0kPd3plnfvir3XgiHEv6MgR35RgOXrOvGGPI/tBO2fB+
	x4FYvZqTay4Ex2C3u6WO6VQ=
X-Google-Smtp-Source: AGHT+IF0Ik9/+KNOcDbAHFS6MvzMLXXLoCYAV35uTMjDE4nTkQ2tFDV4lV7fOJVgAdACrP8g/SbJgA==
X-Received: by 2002:a6b:da06:0:b0:794:d7e8:d239 with SMTP id x6-20020a6bda06000000b00794d7e8d239mr3828208iob.17.1696463257800;
        Wed, 04 Oct 2023 16:47:37 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id l13-20020a5e880d000000b0079fa3d0d790sm50062ioj.31.2023.10.04.16.47.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 16:47:37 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: aford@beaconembedded.com,
	Adam Ford <aford173@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V2 1/4] arm64: dts: imx8mm-beacon: Migrate sound card to simple-audio-card
Date: Wed,  4 Oct 2023 18:46:54 -0500
Message-Id: <20231004234657.44592-1-aford173@gmail.com>
X-Mailer: git-send-email 2.40.1
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

Instead of using a custom glue layer connecting the wm8962 CODEC
to the SAI3 sound-dai, migrate the sound card to simple-audio-card.
This also brings this board in line with the imx8mn-beacon and
imx8mp-beacon.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2: No Change

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-beacon-baseboard.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-beacon-baseboard.dtsi
index b10e2a703a44..313e93663d6f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-beacon-baseboard.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-beacon-baseboard.dtsi
@@ -98,18 +98,30 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
 		enable-active-high;
 	};
 
-	sound {
-		compatible = "fsl,imx-audio-wm8962";
-		model = "wm8962-audio";
-		audio-cpu = <&sai3>;
-		audio-codec = <&wm8962>;
-		audio-routing =
-			"Headphone Jack", "HPOUTL",
-			"Headphone Jack", "HPOUTR",
-			"Ext Spk", "SPKOUTL",
-			"Ext Spk", "SPKOUTR",
-			"AMIC", "MICBIAS",
-			"IN3R", "AMIC";
+	sound-wm8962 {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "wm8962";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,widgets = "Headphone", "Headphones",
+					    "Microphone", "Headset Mic",
+					    "Speaker", "Speaker";
+		simple-audio-card,routing = "Headphones", "HPOUTL",
+					    "Headphones", "HPOUTR",
+					    "Speaker", "SPKOUTL",
+					    "Speaker", "SPKOUTR",
+					    "Headset Mic", "MICBIAS",
+					    "IN3R", "Headset Mic";
+
+		simple-audio-card,cpu {
+			sound-dai = <&sai3>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&wm8962>;
+			clocks = <&clk IMX8MM_CLK_SAI3_ROOT>;
+			frame-master;
+			bitclock-master;
+		};
 	};
 };
 
@@ -192,6 +204,7 @@ wm8962: audio-codec@1a {
 			0x0000 /* 4:FN_DMICCDAT */
 			0x0000 /* 5:Default */
 		>;
+		#sound-dai-cells = <0>;
 	};
 
 	pca6416_0: gpio@20 {
-- 
2.40.1


