Return-Path: <devicetree+bounces-6806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C47AF7BCECE
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 16:02:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0042C1C2048D
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 14:02:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0BDDC8E8;
	Sun,  8 Oct 2023 14:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gappIRqr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AD6C150
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 14:02:52 +0000 (UTC)
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com [IPv6:2607:f8b0:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F954CA;
	Sun,  8 Oct 2023 07:02:51 -0700 (PDT)
Received: by mail-il1-x12b.google.com with SMTP id e9e14a558f8ab-352753fb42eso15719425ab.1;
        Sun, 08 Oct 2023 07:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696773770; x=1697378570; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=i817gm/mHayZlPnquKIwRuj/bCQb7oFHdZW9Ygf1Wzw=;
        b=gappIRqrv8KXeXcqhkFYSSf4OzssNhdwzyyny+Xg+5XbnWM5VdGHYfASdOlQU1ik8I
         sswI079Ash/546f2iTQEew1Jnv+SY9MfU8VJxuXYlpA+anLF/wllBobTHXCS7DjI5qDK
         CYGAJdRVLp9C8+w7y+pVmzNzKTSXljp8AwKGsBAsusNYK0k9EO5FdJ1sic7Y7JXzDPmX
         o5UKUjRJIXXQTLIZ1weG8c7NWTLwUQ6v4nXoRHoEF37nBco02SDN0UtSUpAkX7TIdwpg
         DkvCtfS2+UO8T3+QHoCmdI/G7n7COSLjLHHM0szI5pVf69D0/Kj0G3VVTuoUabgRr2JP
         NTIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696773770; x=1697378570;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i817gm/mHayZlPnquKIwRuj/bCQb7oFHdZW9Ygf1Wzw=;
        b=tbTCf+YYMZcVLyuB010WS3BUBtpjEkH0bHXLrid79JFgMNxVEauHAzOpTn7Se+J4iQ
         YcYbbb6heAlSPvf2MgI1jgQxr6f4d7++OEYj20xGfqxlB5jfQbdaLrE88eyEhLrMvsPG
         AOTgdT1CUPGMzn1RZj2va0LngB1Oj/IMna2IC8DMGfKzWsWiK/blN70bOG6Fk+oooOmG
         gCD8WgG221Ia74B6OHnTkF4lczi1HFs4ZO0ZpB+m404Ot88feCztGJFoBaM3iLIvRovy
         GRG5NfiZ6UBmZ1mmzPTmkYro7vhMopxOsCplXot2h/JF4ZdpL04QdiRLdH6PBdS28u0l
         hVyg==
X-Gm-Message-State: AOJu0YycHapCU+4ujvtMrzKy81lJHhOxxXD/vqwcGlPpDjQZ1O7C4a4E
	QAm+h7Qdp4QGs8kuhzlrgZo=
X-Google-Smtp-Source: AGHT+IHRU/p6K757tMjeqS8Ii2krhvKfRulLKOsvixbCZCCoLxXOmhUGypkPJ7IguLsJm9buWGS/YQ==
X-Received: by 2002:a05:6e02:d45:b0:345:66f5:3404 with SMTP id h5-20020a056e020d4500b0034566f53404mr13375528ilj.0.1696773770370;
        Sun, 08 Oct 2023 07:02:50 -0700 (PDT)
Received: from aford-System-Version.lan ([2601:447:d002:5be:a2fe:632a:2360:50d3])
        by smtp.gmail.com with ESMTPSA id 2-20020a921302000000b0035134f1a240sm2272901ilt.86.2023.10.08.07.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Oct 2023 07:02:49 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: aford@beaconembedded.com,
	Adam Ford <aford173@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V3 1/4] arm64: dts: imx8mm-beacon: Migrate sound card to simple-audio-card
Date: Sun,  8 Oct 2023 09:02:35 -0500
Message-Id: <20231008140239.6601-1-aford173@gmail.com>
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
Reviewed-by: Fabio Estevam <festevam@gmail.com>
---
V3:  No Change
V2:  No Change

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


