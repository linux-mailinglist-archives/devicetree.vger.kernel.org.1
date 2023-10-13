Return-Path: <devicetree+bounces-8396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A639E7C7FA4
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:10:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 484BE282B0F
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 08:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A6D6107AC;
	Fri, 13 Oct 2023 08:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="xHvpy+3U"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019E4107A2
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 08:10:19 +0000 (UTC)
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB16BE5
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 01:10:16 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9b64b98656bso288479966b.0
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 01:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1697184615; x=1697789415; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jlv+KGmApZQb5ngFkmANnSdVyEJSRpRKLkkFinUp/fw=;
        b=xHvpy+3UUaAd16gpq8FGrYjYUqq4ushKYwSL8Gm54N+cGA97K8V/eB3/HlAXcXoXcC
         zvePbfQsW+94CkgIN5tJAYCruK0bnNHVTvQRaAD8+WxFQ+QiqilE1DyOLniFtvY4VBn6
         /+aRpaXMKP6lCaKQol1BlMrVCvihl9XYDQJA4/CqEn6vTIZrTf7OcPuG83KBzHqVRktN
         rixygb1US+5hij4OfXGrEs92lzP6OYn10gnw65jGrZyDkobxbdyTkGYzt6B3zdbyfE+A
         b1Iro7nYT5IcOdbiEO7PNkm8j916n1xHIZkWJPZRYBwryMIy2iTu6O19NMOBcjuE5Bpt
         R2KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697184615; x=1697789415;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jlv+KGmApZQb5ngFkmANnSdVyEJSRpRKLkkFinUp/fw=;
        b=AlJ3apcpvu6fyx/hfEUBLVJHDx35CXP0wXop/4wr06pGiFh5Pz2lGXOMPTiMZidNxZ
         AqDht0D0kZun+ljzHXsm7y9ZXv2K7hepgISg6Q8exoKpgJkvIxiPjYPU/VTJqVSlX2eb
         5cdh5+ltozzFmlAi17xK6TLPUQEdC8KmBpTThq0tuuYo0WFCSgKy33MQJ2xlfxlTFd6H
         teqBm9EEAyQjGrcwvnt/abqbqajKbjM+ZwCXZ+bVy5xOmuNE4nvIcyrBWpJsS5i+j4GX
         BNWUnAzQgbCMUH066eVvusqR0XM65BVdjF60HiNN7YaAouJIvl/dX1q3GYrvalljLhXo
         CBxw==
X-Gm-Message-State: AOJu0YzcoI3AhxE7xf/ukkIOSYW0GieaKMiLztjgFaRtUt2r9mFSo/YV
	VPLacXFhv0IrpL26UFpyiLw/Vg==
X-Google-Smtp-Source: AGHT+IH6fKZ6Dd+Z/J7NrjhZ5tEemEPVoWu2xo8L6j2bj4m320D5czjSmYk6p9ksaCTKFydidoegew==
X-Received: by 2002:a17:906:31cc:b0:9b2:b2f8:85dc with SMTP id f12-20020a17090631cc00b009b2b2f885dcmr21672339ejf.34.1697184615263;
        Fri, 13 Oct 2023 01:10:15 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id q14-20020a170906360e00b009a5f1d1564dsm11910761ejb.126.2023.10.13.01.10.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 01:10:15 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 13 Oct 2023 10:09:54 +0200
Subject: [PATCH 2/4] arm64: dts: qcom: qcm6490-fairphone-fp5: Add PM7250B
 thermals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231013-fp5-thermals-v1-2-f14df01922e6@fairphone.com>
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

Configure the thermals for the CHARGER_SKIN_THERM and USB_CONN_THERM
thermistors connected to PM7250B.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 66 ++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 2de0b8c26c35..7fe19b556e6a 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -134,6 +134,36 @@ afvdd_2p8: regulator-afvdd-2p8 {
 		enable-active-high;
 		vin-supply = <&vreg_bob>;
 	};
+
+	thermal-zones {
+		chg-skin-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&pm7250b_adc_tm 0>;
+
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+
+		conn-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&pm7250b_adc_tm 1>;
+
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+	};
 };
 
 &apps_rsc {
@@ -425,6 +455,42 @@ &ipa {
 	status = "okay";
 };
 
+&pm7250b_adc {
+	channel@4d {
+		reg = <ADC5_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "charger_skin_therm";
+	};
+
+	channel@4f {
+		reg = <ADC5_AMUX_THM3_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "conn_therm";
+	};
+};
+
+&pm7250b_adc_tm {
+	status = "okay";
+
+	charger-skin-therm@0 {
+		reg = <0>;
+		io-channels = <&pm7250b_adc ADC5_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	conn-therm@1 {
+		reg = <1>;
+		io-channels = <&pm7250b_adc ADC5_AMUX_THM3_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+};
+
 &pm7325_gpios {
 	volume_down_default: volume-down-default-state {
 		pins = "gpio6";

-- 
2.42.0


