Return-Path: <devicetree+bounces-5971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E597B98D7
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 01:47:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id CFFE61C209CC
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 23:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8671037CAB;
	Wed,  4 Oct 2023 23:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Us56DTPm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F307F374E1
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 23:47:42 +0000 (UTC)
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D307CE;
	Wed,  4 Oct 2023 16:47:41 -0700 (PDT)
Received: by mail-io1-xd35.google.com with SMTP id ca18e2360f4ac-79fe612beabso19337639f.3;
        Wed, 04 Oct 2023 16:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696463261; x=1697068061; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j7CVoIeubu4fPw7g9XiV9QtZYx1CSj0ohu3WANHYf/A=;
        b=Us56DTPmvkEMrMKO5Pvc4M3H5b3SEpDF9betEuNSuLpudxPzEZNQVufbleJK90ewCf
         yXhmng5Aw36ZLccU/Cmv006qZCkKnQIPrTf+jxEjtLiX7AiT/0krT+nnt0/9Y2oaEGnc
         8a6qZeEGJzTEqCGbdDwrPHypB+k0qANuA3oa3HnniWTdVIZXP7PLMUhXotZb5zL981kO
         5ZPfE7Qg8UCNas4rCPsu8tCXSA3ydoOxCAXLv6VnYh2HM0iAhBJkPp+BxPlZ1GPS2mfd
         lGEywjF01BLKjS9gLomgnHfCJxYyxZ1blTciuydW6v2ZkIy20hDs41c4sMPJQJWNFEGp
         qQ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696463261; x=1697068061;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j7CVoIeubu4fPw7g9XiV9QtZYx1CSj0ohu3WANHYf/A=;
        b=ZcbOtEDG1aLy0DiWIT867nxZH47ttU6ewNh0u8vdNzPzxLmadxvtswSGKm8I2KMStZ
         UDH43fBzUkbnzKcM04gn8O7YyoYHMrRvXQfuuQ+Md6NhVCNhjKfWaqMMUEA9fwuRuTek
         Vqt3ksfUjF+ZKw0p6751Q7bd9cQAlJ4eACC12KDIJI6RRd9R1Cx5l/5mWzBTAUpl98yR
         ZjrM0OJK0a3XjZNw1emIKCztvDCOoIaElPdh2jRmXe/4y1sBgxpW9QhMoLNnFQBigOc6
         7JhgZSBOyOj4IBKmNWC+2At5pvz/1tCd6WGDQowr/1pRin66BE/6wtBHR1P123qQ33sJ
         6NFg==
X-Gm-Message-State: AOJu0YwXzxSMBxa8zm+WsVwohLfPL01LRxUgZdWKLvxvv7T/ycBp9qEw
	HaOU8Apei1ogPVovdTQcEns=
X-Google-Smtp-Source: AGHT+IF4xOIcscR7EthWLe8x097ZpHhB9HHToIAa01ce5ksmr3UzkyLzvXo58uNYAiruZWj26rZZ4w==
X-Received: by 2002:a6b:ea15:0:b0:790:a010:4c42 with SMTP id m21-20020a6bea15000000b00790a0104c42mr4456241ioc.13.1696463260584;
        Wed, 04 Oct 2023 16:47:40 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id l13-20020a5e880d000000b0079fa3d0d790sm50062ioj.31.2023.10.04.16.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 16:47:40 -0700 (PDT)
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
Subject: [PATCH V2 3/4] arm64: dts: imx8mn-beacon: Add DMIC support
Date: Wed,  4 Oct 2023 18:46:56 -0500
Message-Id: <20231004234657.44592-3-aford173@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231004234657.44592-1-aford173@gmail.com>
References: <20231004234657.44592-1-aford173@gmail.com>
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

The baseboard has a connector for a pulse density microphone.
This is connected via the micfil interface and uses the DMIC
audio codec with the simple-audio-card.

Signed-off-by: Adam Ford <aford173@gmail.com>
V2:  Rebase and remove sound-dai-cells since it's been moved to the SoC.

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-beacon-baseboard.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-beacon-baseboard.dtsi
index 16761975f56e..20018ee2c803 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-beacon-baseboard.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-beacon-baseboard.dtsi
@@ -4,6 +4,12 @@
  */
 
 / {
+	dmic_codec: dmic-codec {
+		compatible = "dmic-codec";
+		num-channels = <1>;
+		#sound-dai-cells = <0>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -74,6 +80,22 @@ reg_usb_otg_vbus: regulator-usb {
 		enable-active-high;
 	};
 
+	sound-dmic {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "dmic";
+		simple-audio-card,format = "pdm";
+		simple-audio-card,bitclock-master = <&dailink_master>;
+		simple-audio-card,frame-master = <&dailink_master>;
+
+		dailink_master: simple-audio-card,cpu {
+			sound-dai = <&micfil>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&dmic_codec>;
+		};
+	};
+
 	sound-wm8962 {
 		compatible = "simple-audio-card";
 		simple-audio-card,name = "wm8962";
@@ -221,6 +243,15 @@ mipi_csi_in: endpoint {
 	};
 };
 
+&micfil {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pdm>;
+	assigned-clocks = <&clk IMX8MN_CLK_PDM>;
+	assigned-clock-parents = <&clk IMX8MN_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <49152000>;
+	status = "okay";
+};
+
 &sai3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sai3>;
@@ -311,6 +342,13 @@ MX8MN_IOMUXC_SAI2_MCLK_GPIO4_IO27		0x19
 		>;
 	};
 
+	pinctrl_pdm: pdmgrp {
+		fsl,pins = <
+			MX8MN_IOMUXC_SAI5_RXC_PDM_CLK	0xd6
+			MX8MN_IOMUXC_SAI5_RXD0_PDM_BIT_STREAM0	0xd6
+		>;
+	};
+
 	pinctrl_reg_usb_otg: reg-otggrp {
 		fsl,pins = <
 			MX8MN_IOMUXC_SAI3_RXC_GPIO4_IO29     0x19
-- 
2.40.1


