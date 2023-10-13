Return-Path: <devicetree+bounces-8399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8B27C7FA9
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:10:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA2A2282AF9
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 08:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 405B0107A4;
	Fri, 13 Oct 2023 08:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zf4LyoIU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7048107BB
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 08:10:22 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 215AFF0
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 01:10:17 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9ba081173a3so298941366b.1
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 01:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1697184616; x=1697789416; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w8aB/9PUkAq81szG0QmtzVGYTtfjdGzgK8T49SbW5WY=;
        b=zf4LyoIUg5u/gOGjrLKKyHMA9J0wkQ7osfPmUC5ChFZbCOGG6nUGbqKFQZ6t5wlFl3
         PWJf79Vt36p6TF6r/GDeEf6UfX0AiUvWrliR3z3UYnIZHAGTvGawYy/eeq643yvDmNPy
         qAXUnOMNDSD8F/hh1RbhZC9t3xAzXdjB2EQ2Nt1ZkPO7/PJ51figrTvXXrnmWf4ByW85
         7Sa40hRz57fJSPHlCMOc4Is0Kgj9VrD/AFVmQkScYgZfdIBVtboLnuvGTzzsDAKD2EZn
         DlstwVfWe0adM0G8lDucjpYivJJOVce0d+8fIN0fdtosm5EhGt2P1FB7rhem9qPEe09c
         URmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697184616; x=1697789416;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w8aB/9PUkAq81szG0QmtzVGYTtfjdGzgK8T49SbW5WY=;
        b=RwkjQY70A8eWNDrHitsGGnpoiqndRnVLehyDvqc7H4HTAut3naxHYQ99cOLs2h5j9W
         zPrsru6vuJKT0eAQJ6SaUT0oPIL7uaIhLx1VgFoCdW5Wv1lWPCiNba+UcT8x7qI2Wo/T
         o8yZyKwcml4cL/RnNXvbROmP3sW7dgRto1C64xmHLiNBcJYFJR4U+nr2ZKgrlPWyFW9m
         65/nEYD9V4JBxgpSK5EFIXcjqZavgNxtQyuHhPwAUMtfqtIfLoFaO7jNKlanyZE1qPJA
         WkFVox/dEpEVj6HzjSpFmisAlV9qh7K7tYc6GqFoOvtZhm+4bd2cufjsCixsBcqyYR45
         F6rw==
X-Gm-Message-State: AOJu0YxphyFzRA/G8/VkNu+FOvxKdMhjm1pUvEh2iP1A1bKvktNq2kgS
	bWVWWtoElv5Bk0s6qCzs2tmCtA==
X-Google-Smtp-Source: AGHT+IG1nht9LrVwfoOhVo6s5sTGYri/ndzIyY/69fNJRBgpx9Hk2quyQA5gwcXiN3FQ2/e/BgJCtQ==
X-Received: by 2002:a17:906:2929:b0:9b8:df8e:cbde with SMTP id v9-20020a170906292900b009b8df8ecbdemr20789300ejd.51.1697184616056;
        Fri, 13 Oct 2023 01:10:16 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id q14-20020a170906360e00b009a5f1d1564dsm11910761ejb.126.2023.10.13.01.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 01:10:15 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 13 Oct 2023 10:09:55 +0200
Subject: [PATCH 3/4] arm64: dts: qcom: qcm6490-fairphone-fp5: Add PMK7325
 thermals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231013-fp5-thermals-v1-3-f14df01922e6@fairphone.com>
References: <20231013-fp5-thermals-v1-0-f14df01922e6@fairphone.com>
In-Reply-To: <20231013-fp5-thermals-v1-0-f14df01922e6@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Configure the thermals for the XO_THERM line connected to PMK7325 (named
in software PMK8350).

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 38 ++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 7fe19b556e6a..2c01f799a6b2 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -9,6 +9,7 @@
 #define PM7250B_SID 8
 #define PM7250B_SID1 9
 
+#include <dt-bindings/iio/qcom,spmi-adc7-pmk8350.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
@@ -163,6 +164,20 @@ active-config0 {
 				};
 			};
 		};
+
+		xo-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&pmk8350_adc_tm 0>;
+
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
 	};
 };
 
@@ -514,10 +529,33 @@ led-0 {
 	};
 };
 
+&pmk8350_adc_tm {
+	status = "okay";
+
+	xo-therm@0 {
+		reg = <0>;
+		io-channels = <&pmk8350_vadc PMK8350_ADC7_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+};
+
 &pmk8350_rtc {
 	status = "okay";
 };
 
+&pmk8350_vadc {
+	status = "okay";
+
+	channel@44 {
+		reg = <PMK8350_ADC7_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "pmk8350_xo_therm";
+	};
+};
+
 &pon_pwrkey {
 	status = "okay";
 };

-- 
2.42.0


