Return-Path: <devicetree+bounces-3743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5E17AFFC6
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:22:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id DCE1A1C20847
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:22:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 445D920B31;
	Wed, 27 Sep 2023 09:22:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA271208CE
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:21:57 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69860C0
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 02:21:55 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99c136ee106so1322729766b.1
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 02:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695806513; x=1696411313; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VOmdtpYYB0nH1RKOD+w6l5qeav03+l5rKiJiUIHP088=;
        b=M5gRVv4+NqcVxYyUvo6kB3CdD7xEYqJNFSND8fzvyNdAVO/WRcEVtmQxmf2srbLPlF
         o8/jQ4egb5swL23aRG6c5+gWlaNw+NWy/UBGqjCWdgHWedDoqg/o0O1hjgdbBvLEamri
         CW5WiqNnTH2G9UF38rBiokjQVdD6GBqVfVfqc20oFrUYKVeXjGGUwyG/Tkb5XZh98oLA
         6kezITqvUZvFgpclB057XBujf/5xNa2/EbgbzsMlXmJo/+btKj++0blhxnaqC6m5qy8h
         UQHymDnkfTl2Vc8TxRvWLGvxB/LbfUlYN6h5DG9RpYWs/ci+ArzNxfUZktfFbP9gkyWw
         Dpsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695806513; x=1696411313;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VOmdtpYYB0nH1RKOD+w6l5qeav03+l5rKiJiUIHP088=;
        b=D2Lyp0TfdlOisfEAREtF8X5tE4ld+LQ0nb2yyt1Aj3gsdo+V82i29VXhRPofAHETCS
         g+Syr0tJ3UnQQL9Y2tVX2Z+fOPdY8RpEOOD2FQo5Satk7Td/MHz7NGMWF1qVpH+PPGOp
         Txwzr9gHqnCWnzNFUsXbaejvb8jiXUgF3R4LPKfS0vbUce6z+iFqwcIQCMkhdY/CSfAb
         HwyZbGqKJzzlSq/prPjlUI4nRyt25L0VDWo55388hTDu93TNsGraUfuCiMYTqob9gS3e
         3w2CcyAgjppaoPAzsf9Q9AAdkQIvnu5MCzgoryleI/8fhc6MRIZ9RsVFOd5YLnN/5zM2
         PhWQ==
X-Gm-Message-State: AOJu0YwctTFIGHfNGl8NGA0fiWGjJ/uv/h/JenN63lKmzrSk94sWkkeH
	BfvXJufXNHZEma+Qw9+07BGD+g==
X-Google-Smtp-Source: AGHT+IFES094yeuiDxTl5Ab3wEOn48F+p/70Uso0l+wBgy8rSW0+JW8os6a+FvfGezrgHA7KoNE8zw==
X-Received: by 2002:a17:906:454d:b0:9a5:cbb2:3fab with SMTP id s13-20020a170906454d00b009a5cbb23fabmr1215634ejq.2.1695806513795;
        Wed, 27 Sep 2023 02:21:53 -0700 (PDT)
Received: from [10.167.154.1] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id qq23-20020a17090720d700b00993664a9987sm8948574ejb.103.2023.09.27.02.21.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 02:21:53 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 27 Sep 2023 11:21:42 +0200
Subject: [PATCH 3/4] arm64: dts: qcom: sm6375-pdx225: Enable ATH10K WiFi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230927-topic-6375_stuff-v1-3-12243e36b45c@linaro.org>
References: <20230927-topic-6375_stuff-v1-0-12243e36b45c@linaro.org>
In-Reply-To: <20230927-topic-6375_stuff-v1-0-12243e36b45c@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695806508; l=2599;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=dBlzjBm5zbQ1AFa5JfUYhZfkMAGM+ne2VSqV4/lI2ig=;
 b=p4R0VYkY5NDJzTfJ17AMssz81CZVG8zMBKFvQLMhPtklHVhHKHcLr+PmFEHREDCZlw1vaLgdZ
 5HH13PNqc6zACb6y4Tr7K7iVlo2UNPyZ5XAg962ZoCvo7go3Ughdyxj
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Enable the onboard QCA Wi-Fi. HW identifiers for reference:
qmi chip_id 0x320 chip_family 0x4001 board_id 0xff soc_id 0x400e0000

Firmware sources:
/vendor/firmware_mnt/image/wlanmdsp.bin -> qcom/.../wlanmdsp.mbn
/vendor/firmware_mnt/image/bdwlan.bXX [1] -> [2] -> ath10k/.../board-2.bin
[3] -> ath10k/.../firmware-5.bin

Not sure where 3 comes from on the device itself, gotta investigate that..

According to [4], it's called WCN3990_STRAIT.

Enable it and tighten the relevant regulators.

[1] XX = board_id printed when the file is missing or by your downstream
    kernel firmware loader in the dmesg; if XX=ff, use bdwlan.bin

[2] https://github.com/jhugo/linux/blob/5.5rc2_wifi/README
[3] https://github.com/kvalo/ath10k-firmware/blob/master/WCN3990/hw1.0/HL3.1/WLAN.HL.3.1-01040-QCAHLSWMTPLZ-1/firmware-5.bin
[4] https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn/-/blob/LA.VENDOR.1.0.r1-20700-WAIPIO.QSSI13.0/hif/src/hif_hw_version.h#L55

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts  | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
index 964fe86a18ef..bbec7aee60be 100644
--- a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
+++ b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
@@ -311,7 +311,7 @@ pm6125_l20: l20 {
 
 		pm6125_l21: l21 {
 			regulator-min-microvolt = <3000000>;
-			regulator-max-microvolt = <3400000>;
+			regulator-max-microvolt = <3312000>;
 		};
 
 		pm6125_l22: l22 {
@@ -322,7 +322,7 @@ pm6125_l22: l22 {
 
 		pm6125_l23: l23 {
 			regulator-min-microvolt = <3000000>;
-			regulator-max-microvolt = <3400000>;
+			regulator-max-microvolt = <3312000>;
 		};
 
 		pm6125_l24: l24 {
@@ -345,8 +345,8 @@ pmr735a_l1: l1 {
 		};
 
 		pmr735a_l2: l2 {
-			regulator-min-microvolt = <352000>;
-			regulator-max-microvolt = <796000>;
+			regulator-min-microvolt = <640000>;
+			regulator-max-microvolt = <640000>;
 		};
 
 		pmr735a_l3: l3 {
@@ -433,6 +433,15 @@ &usb_1_hsphy {
 	status = "okay";
 };
 
+&wifi {
+	vdd-0.8-cx-mx-supply = <&pmr735a_l2>;
+	vdd-1.8-xo-supply = <&pm6125_l16>;
+	vdd-1.3-rfa-supply = <&pm6125_l2>;
+	vdd-3.3-ch0-supply = <&pm6125_l23>;
+	vdd-3.3-ch1-supply = <&pm6125_l21>;
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <19200000>;
 };

-- 
2.42.0


