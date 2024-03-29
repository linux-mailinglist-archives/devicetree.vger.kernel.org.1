Return-Path: <devicetree+bounces-54554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D73258918B0
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 13:26:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B56728654F
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 12:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FAE012A154;
	Fri, 29 Mar 2024 12:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="bleDmb4P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4518F85C44
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 12:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711715188; cv=none; b=Ctvu221VBWPPDAG3wgSby2kdEBYUl1DGogWe3dwwiPOnUfGSspgpPmNc+ViIDs1X9zYU+R0Ji1m+krFCNnw54mSYTGMwa6YAh7tsZ9krdJE3OLig4OAeHTiyVkse7v7CnHQLxnNREHzNErPDeRe3yBGTU7D7wXle5YoW2Mrdr18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711715188; c=relaxed/simple;
	bh=3yrfxxLlXHr1TSNML8zmGI3T0zxyBtPzg2+qP8J15JQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W6o7JUYekVvKxMj/wIvyf7emu+/6tb14PYNkudGJ2gUgk2b0mcgEIYwWxC1Y9DQSyAyBUmjTsAwFF07+Sf29R4HIoYIQfVgxBCsfFeUvTYyBcX1ggZGObhRIYS2+yeDR+ExcMllFTRI8wKmzsxF0D2MocXHSd7VdAQD/bHYfoe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=bleDmb4P; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-56bf6591865so2904584a12.0
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 05:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1711715184; x=1712319984; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hWFp+wGEzzGmw702pw7mP2aroILdba+wI+PTEswgWdE=;
        b=bleDmb4PpnPFqrGYl0HZ/fQZIzPQyR6qzVWKTthd9C+LDUDNZIZ6GEAWUyUM5BbDQt
         JxahRF/36ok5I8cfq4KMZsnZbtLmZb0YqTbaycHjJGQxKf/rF8lBbwlMA4sRTJYBYhR8
         a6eqSGz89XBRrLo/P/kZKkeaYT1AfRUtGYX7xGbEJPBE5zwWRyE2k1E45dFb0iZp6TYY
         +6qYpJ67F4p518mEzVUHV3bow9QLRn/vNqA6w0eXgTXGGVhQ0tkNa7Bx7Z6/JvaEgwuA
         HK+cWtvXVwPMD+hNb2wFqJG88x6dkKX7XAe4X98RKcaY6Q8/h0rwr6KmmDuzbeC8siEI
         luQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711715184; x=1712319984;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hWFp+wGEzzGmw702pw7mP2aroILdba+wI+PTEswgWdE=;
        b=VWHpLSuFEDDtoyHDOHvIN9GcV1bEkDR48DyPITRtrJbEAGRcBcs2uQfpnbolDXLPcu
         9tUFWjaIglH/NfPrzF19BZNsQDdQLLiayYcI9vGfNZDf1Xg6cTZkM63KjSvmLe/tb81d
         mIGZ41ZKQl3Zmy25E/Qh1DJnKkv6NzuphMYGbfhEdOMbJn7MjANBF5SN6W402EWSvTnP
         fmRnxmhhIzhrmmmtKNb4ezxBs8DjaOK66VBPlSGzG+Ma7zo7IQPmkXUVxKrCbPJFAW2P
         UU0oyiaYid30BAaNghFygndz616tah8m7Wo+3H+qZZxaG3yx88P7GFl/PIT3qJGNaC10
         WGbw==
X-Forwarded-Encrypted: i=1; AJvYcCV/mp+wLxW/d1/06y6dCXMqIpxRpkUEpGE17/+01bgdhzpaYfrTin+4miAz2FQi0xqn9hGr1Vj6gUXg7spe4VvvAnW7fs0GXNBFVA==
X-Gm-Message-State: AOJu0Yx1iUUuxv5Y6Ofs5cEH/KivXYpkuappJTWMpUOWyZeLJWzWoRMr
	9ovg8b45Fonokw21QSvC2OtjBh+5ED5qZXaYkXhu8NxnjixB6covi6Ht2+gCpBc=
X-Google-Smtp-Source: AGHT+IEhDdv5aLrLO892IV9pVZwFO9P3DRxkOPPhygvwDIUI0dnZqNXUk7vL3ASQ6HUbB3fASd/JNQ==
X-Received: by 2002:a50:9fad:0:b0:568:9cfe:1974 with SMTP id c42-20020a509fad000000b005689cfe1974mr1336606edf.18.1711715184751;
        Fri, 29 Mar 2024 05:26:24 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id m7-20020aa7c487000000b0056bf2e2c898sm1961925edq.1.2024.03.29.05.26.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 05:26:23 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 29 Mar 2024 13:26:21 +0100
Subject: [PATCH v2 3/3] arm64: dts: qcom: sm7225-fairphone-fp4: Enable USB
 role switching
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240329-fp4-tcpm-v2-3-d7f8cd165355@fairphone.com>
References: <20240329-fp4-tcpm-v2-0-d7f8cd165355@fairphone.com>
In-Reply-To: <20240329-fp4-tcpm-v2-0-d7f8cd165355@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.13.0

Configure the Type-C and VBUS regulator on PM7250B and wire it up to the
USB PHY, so that USB role and orientation switching works.

For now USB Power Delivery properties are skipped / disabled, so that
the (presumably) bootloader-configured charger doesn't get messed with
and we can charge the phone with at least some amount of power.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi              | 47 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 60 ++++++++++++++++++++++-
 2 files changed, 106 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index b663c1b18f61..2e135989de8c 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1717,6 +1717,33 @@ usb_1_qmpphy: phy@88e8000 {
 			#phy-cells = <1>;
 
 			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_1_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_1_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_ss_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_1_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
 		};
 
 		dc_noc: interconnect@9160000 {
@@ -1892,6 +1919,26 @@ usb_1_dwc3: usb@a600000 {
 				snps,hird-threshold = /bits/ 8 <0x10>;
 				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_1_dwc3_hs_out: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						usb_1_dwc3_ss_out: endpoint {
+							remote-endpoint = <&usb_1_qmpphy_usb_ss_in>;
+						};
+					};
+				};
 			};
 		};
 
diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index bc67e8c1fe4d..5d7778c48413 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -19,6 +19,7 @@
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+#include <dt-bindings/usb/pd.h>
 #include "sm7225.dtsi"
 #include "pm6150l.dtsi"
 #include "pm6350.dtsi"
@@ -543,6 +544,53 @@ conn-therm@1 {
 	};
 };
 
+&pm7250b_typec {
+	vdd-pdphy-supply = <&vreg_l3a>;
+
+	status = "okay";
+
+	connector {
+		compatible = "usb-c-connector";
+
+		power-role = "dual";
+		data-role = "dual";
+		self-powered;
+
+		/*
+		 * Disable USB Power Delivery for now, seems to need extra work
+		 * to support role switching while also letting the battery
+		 * charge still - without charger driver
+		 */
+		typec-power-opmode = "default";
+		pd-disable;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				pm7250b_hs_in: endpoint {
+					remote-endpoint = <&usb_1_dwc3_hs_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				pm7250b_ss_in: endpoint {
+					remote-endpoint = <&usb_1_qmpphy_out>;
+				};
+			};
+		};
+	};
+};
+
+&pm7250b_vbus {
+	regulator-min-microamp = <500000>;
+	regulator-max-microamp = <1500000>;
+	status = "okay";
+};
+
 &pmk8350_rtc {
 	status = "okay";
 };
@@ -726,7 +774,12 @@ &usb_1 {
 
 &usb_1_dwc3 {
 	maximum-speed = "super-speed";
-	dr_mode = "peripheral";
+	dr_mode = "otg";
+	usb-role-switch;
+};
+
+&usb_1_dwc3_hs_out {
+	remote-endpoint = <&pm7250b_hs_in>;
 };
 
 &usb_1_hsphy {
@@ -740,10 +793,15 @@ &usb_1_hsphy {
 &usb_1_qmpphy {
 	vdda-phy-supply = <&vreg_l22a>;
 	vdda-pll-supply = <&vreg_l16a>;
+	orientation-switch;
 
 	status = "okay";
 };
 
+&usb_1_qmpphy_out {
+	remote-endpoint = <&pm7250b_ss_in>;
+};
+
 &wifi {
 	vdd-0.8-cx-mx-supply = <&vreg_l4a>;
 	vdd-1.8-xo-supply = <&vreg_l7a>;

-- 
2.44.0


