Return-Path: <devicetree+bounces-3740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3266F7AFFBF
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:21:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 3C5131C2042A
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0512120B1C;
	Wed, 27 Sep 2023 09:21:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A96EF208CE
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:21:53 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 223E497
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 02:21:52 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9a58dbd5daeso1354161466b.2
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 02:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695806510; x=1696411310; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YrNZz4J5AB8k8tkCs4OKVB/Yb88Y5s1jcClgfUjs9SQ=;
        b=CkgDm/ASGW4OdpwDxXQJPkm+CDuW2cJOvL62rKvItYXe/KmhSkTGOIyAPewEGA2GhE
         U325O+WXTXqPK2crI+v7C9sGl3vSdL5MKklcUDpSU477Y1yblgqfIInqL1Vv5ePS0ZEU
         G4iSHtmZ1LGhm4bKt+3s72omxgaQxSLX/bvuV4wzNgJrKN53DnuTZiu2/U8ZnNoa6E8O
         eye6XWg9hvhQMFyDusXdkmxoU3aw0Xx96DdGuPJP32mF3qrDL1L6/JOkNRRmhuQeZ9QL
         DXTeAdhb4N1iJY4o/nLpwc4rlmmvqg0mRu92vG5hfHtzClP8/KJwREdtQW0WWTacNWOo
         tirw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695806510; x=1696411310;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YrNZz4J5AB8k8tkCs4OKVB/Yb88Y5s1jcClgfUjs9SQ=;
        b=bUf5Bd4miwJXGCFIcoFu81shvhgJRlTm/RodtW+qD8tZ9CxBwnMHtVPHh6Uq80vG1D
         z7bUPacLwY54CQ0lMdB5Dd2mxPqD40UYG26QckqGRsGVhvltyFWOFp48L+XQ13La0YA9
         LgN9wASREs3vuALCORoaUGjff5f3YVXs35meUO2U9GidAaVYENu1/6ZB0OYIncraubj2
         5EBTQBUvr3LdIzj/MmYJri+qJtn76bwhyNvAKtE+RE6DvLe0Pbmbwjx6tvelwr8F1Gyg
         eDMaktAl0B+qIk/mOFVu4l37RSIEvO+Rg5CYAWcTWfcGodeDH3AqOweG4sDW31Fh1vJz
         22lQ==
X-Gm-Message-State: AOJu0Yz0CF4MfuR6SdxVwkjHTPhA9BYZMD7WrHbfdepD/YO/uDpLIUbN
	W/YmkBoY8gbEsX3yqDKLTiXNRQ==
X-Google-Smtp-Source: AGHT+IFbt6Dah7lOsFQtzhQHBHg4JDw/GoaNADJYwYUjaZ6OMSv0x0CSOroAvI4lphVB03y81EZiFw==
X-Received: by 2002:a17:906:8466:b0:9ad:e2c8:1741 with SMTP id hx6-20020a170906846600b009ade2c81741mr1143116ejc.58.1695806510527;
        Wed, 27 Sep 2023 02:21:50 -0700 (PDT)
Received: from [10.167.154.1] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id qq23-20020a17090720d700b00993664a9987sm8948574ejb.103.2023.09.27.02.21.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 02:21:50 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 27 Sep 2023 11:21:40 +0200
Subject: [PATCH 1/4] arm64: dts: qcom: sm6375: Add UART1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230927-topic-6375_stuff-v1-1-12243e36b45c@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695806508; l=1838;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=nKwVvVENwQlrT+MFxAKAsgUztjCszp4MAxYLAwEAU5E=;
 b=5qenOHOxD4iU/AlqhBhUgcQlADszVQIO/2tGeWeoTJqDP014QTQEhy/Ox/uA3gak6K8orXIgY
 tnRfRXcQ8uZAX8K+svitb1nJSgAy9wXymQhYnK0H6/m4xnGfoTRtKxA
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add UART1 node, generally used for the Bluetooth module.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6375.dtsi | 43 ++++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
index e7ff55443da7..2fba0e7ea4e6 100644
--- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
@@ -896,6 +896,36 @@ qup_spi0_default: qup-spi0-default-state {
 				drive-strength = <6>;
 				bias-disable;
 			};
+
+			qup_uart1_default: qup-uart1-default-state {
+				cts-pins {
+					pins = "gpio61";
+					function = "qup01";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				rts-pins {
+					pins = "gpio62";
+					function = "qup01";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				tx-pins {
+					pins = "gpio63";
+					function = "qup01";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				rx-pins {
+					pins = "gpio64";
+					function = "qup01";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
 		};
 
 		gcc: clock-controller@1400000 {
@@ -1111,6 +1141,19 @@ spi1: spi@4a84000 {
 				status = "disabled";
 			};
 
+			uart1: serial@4a84000 {
+				compatible = "qcom,geni-uart";
+				reg = <0x0 0x04a84000 0x0 0x4000>;
+				interrupts = <GIC_SPI 328 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&gcc GCC_QUPV3_WRAP0_S1_CLK>;
+				clock-names = "se";
+				power-domains = <&rpmpd SM6375_VDDCX>;
+				operating-points-v2 = <&qup_opp_table>;
+				pinctrl-0 = <&qup_uart1_default>;
+				pinctrl-names = "default";
+				status = "disabled";
+			};
+
 			i2c2: i2c@4a88000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0x0 0x04a88000 0x0 0x4000>;

-- 
2.42.0


