Return-Path: <devicetree+bounces-29890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C5E82562A
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 15:55:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 750E6283E4F
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 14:55:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A39A82E658;
	Fri,  5 Jan 2024 14:54:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="a/ZLHPR6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9CA2E40B
	for <devicetree@vger.kernel.org>; Fri,  5 Jan 2024 14:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a26fa294e56so174316666b.0
        for <devicetree@vger.kernel.org>; Fri, 05 Jan 2024 06:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1704466482; x=1705071282; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jq9n9lpe0Y+9jpO1UU+afvnCvK//2FOqgM2SLn2wYw4=;
        b=a/ZLHPR6gJOb2iJq0m46DqCOW/N06vrAQ4Q4aO4dKp13Kho/xJ2QbNMHry5R+gkVRa
         IyG9mQFb3asG25mUQUlKYATofFX1wA19AhVC+Lsvj8RnuipeNLClCKF9mv3u4nULjuiv
         lTlfjTeKEahkZuVQVa2MxLXGls7f+kjdyrr94aZlleWi1mn2R4cHnvPZE8Otp9Io2NbL
         I1xTGEQvWyKY2CrQstIHn96W5alkkrEN94PFBOZKrQGxlKQ9YHLEyUe+xPAbkr2TlIZw
         jRu2o0d+F3jeDailnC5WU+BhLgzZ1C+5UVO5y3ZN3zpS31wv/wDaf4NEpEIeLUJxl+X/
         2RrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704466482; x=1705071282;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jq9n9lpe0Y+9jpO1UU+afvnCvK//2FOqgM2SLn2wYw4=;
        b=JasEAzUNeFQBiNBCbcXyFHOX3sXqE+V10L64lMGQqthPdz/e7y8Ed5dA7YIbVOoh7z
         mKN3sYONt6V5QRLjvQYigYI3odPtu9SUFwTf5mkNQgnsD115zlQYYUpjdzgW5m/iO7RM
         KWtn72N22F0GoZjMnqSRkacmcsz0dtHtPlxQzSCUCud4tnsygN/20ksjE0Cy0UVen0X0
         sZ3yCQaP1xiUROjejo0BQ7+YXy8vI4GdW+2uyR7iwknioJcQ5eDc60qOyt9xzzbKosbg
         vN96vb72DU/5/znC8H/o0N94NRtFoIqZlbgEfHL3aLa0l0juTyzPNbAPWO40YrMbB9Nl
         wjjA==
X-Gm-Message-State: AOJu0YxLt5Do3ffXh22fV3txEVu44iMlLpjMchU0hbPSFEWRJ4z3tGkS
	o4CB5+363H5Fu8nHQ35lM9TCl4OpcoKFbg==
X-Google-Smtp-Source: AGHT+IGiujnXbcayqnFfrIGyXs5O5L/tyn/ZR4i3KUdWhw+JxaofT2MFT33e2kZLo6hyhMONijzo1A==
X-Received: by 2002:a17:906:d0d1:b0:a28:a13e:2339 with SMTP id bq17-20020a170906d0d100b00a28a13e2339mr1183827ejb.61.1704466482186;
        Fri, 05 Jan 2024 06:54:42 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a17-20020a1709065f9100b00a2471bb0d11sm963140eju.31.2024.01.05.06.54.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jan 2024 06:54:41 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 05 Jan 2024 15:54:28 +0100
Subject: [PATCH 2/2] arm64: dts: qcom: sm7225-fairphone-fp4: Add PM6150L
 thermals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240105-fp4-thermals-v1-2-f95875a536b7@fairphone.com>
References: <20240105-fp4-thermals-v1-0-f95875a536b7@fairphone.com>
In-Reply-To: <20240105-fp4-thermals-v1-0-f95875a536b7@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

Configure the thermals for the PA_THERM1, MSM_THERM, PA_THERM0,
RFC_CAM_THERM, CAM_FLASH_THERM and QUIET_THERM thermistors connected to
PM6150L.

Due to hardware constraints we can only register 4 zones with
pm6150l_adc_tm, the other 2 we can register via generic-adc-thermal.

The trip points can really only be considered as placeholders, more
configuration with cooling etc. can be added later.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 191 ++++++++++++++++++++++
 1 file changed, 191 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index b7ccfe4011bb..6f435a7ed855 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -84,6 +84,20 @@ memory@efe01000 {
 		};
 	};
 
+	msm_therm_sensor: thermal-sensor-msm {
+		compatible = "generic-adc-thermal";
+		#thermal-sensor-cells = <0>;
+		io-channels = <&pm6150l_adc ADC5_AMUX_THM2_100K_PU>;
+		io-channel-names = "sensor-channel";
+	};
+
+	rear_cam_sensor: thermal-sensor-rear-cam {
+		compatible = "generic-adc-thermal";
+		#thermal-sensor-cells = <0>;
+		io-channels = <&pm6150l_adc ADC5_GPIO2_100K_PU>;
+		io-channel-names = "sensor-channel";
+	};
+
 	thermal-zones {
 		chg-skin-thermal {
 			polling-delay-passive = <0>;
@@ -113,6 +127,90 @@ active-config0 {
 			};
 		};
 
+		pa0-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&pm6150l_adc_tm 1>;
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
+		pa1-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&pm6150l_adc_tm 0>;
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
+		quiet-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&pm6150l_adc_tm 3>;
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
+		rear-cam-thermal {
+			polling-delay-passive = <1000>;
+			polling-delay = <5000>;
+			thermal-sensors = <&rear_cam_sensor>;
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
+		rfc-flash-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&pm6150l_adc_tm 2>;
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
+		sdm-skin-thermal {
+			polling-delay-passive = <1000>;
+			polling-delay = <5000>;
+			thermal-sensors = <&msm_therm_sensor>;
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
 		xo-thermal {
 			polling-delay-passive = <0>;
 			polling-delay = <0>;
@@ -423,6 +521,91 @@ &mpss {
 	status = "okay";
 };
 
+&pm6150l_adc {
+	pinctrl-0 = <&pm6150l_adc_default>;
+	pinctrl-names = "default";
+
+	channel@4d {
+		reg = <ADC5_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "pa_therm1";
+	};
+
+	channel@4e {
+		reg = <ADC5_AMUX_THM2_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "msm_therm";
+	};
+
+	channel@4f {
+		reg = <ADC5_AMUX_THM3_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "pa_therm0";
+	};
+
+	channel@53 {
+		reg = <ADC5_GPIO2_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "rear_cam_therm";
+	};
+
+	channel@54 {
+		reg = <ADC5_GPIO3_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "rear_cam_flash_therm";
+	};
+
+	channel@55 {
+		reg = <ADC5_GPIO4_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "quiet_therm";
+	};
+};
+
+&pm6150l_adc_tm {
+	status = "okay";
+
+	pa-therm1@0 {
+		reg = <0>;
+		io-channels = <&pm6150l_adc ADC5_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	pa-therm0@1 {
+		reg = <1>;
+		io-channels = <&pm6150l_adc ADC5_AMUX_THM3_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	rear-cam-flash-therm@2 {
+		reg = <2>;
+		io-channels = <&pm6150l_adc ADC5_GPIO3_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	quiet-therm@3 {
+		reg = <3>;
+		io-channels = <&pm6150l_adc ADC5_GPIO4_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+};
+
 &pm6150l_flash {
 	status = "okay";
 
@@ -445,6 +628,14 @@ led-1 {
 	};
 };
 
+&pm6150l_gpios {
+	pm6150l_adc_default: adc-default-state {
+		pins = "gpio6", "gpio7", "gpio10";
+		function = PMIC_GPIO_FUNC_NORMAL;
+		bias-high-impedance;
+	};
+};
+
 &pm6150l_wled {
 	qcom,switching-freq = <800>;
 	qcom,current-limit-microamp = <20000>;

-- 
2.43.0


