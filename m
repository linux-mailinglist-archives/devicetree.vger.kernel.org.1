Return-Path: <devicetree+bounces-246994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 53ED5CC2DDF
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:43:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F70D30B7F94
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25C113624A4;
	Tue, 16 Dec 2025 12:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UflZabs8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KQoIrR0s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80CE6362152
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765886932; cv=none; b=Kid4YqLcd2yTphHEa5jYnTwqNZXfGHODEx78vhwzgiZ/cSoC/nCEMBxyB0NQ0+FPG+9C1atsVRc3A0G+tFjscynRwfbzDfvN8YDWaY5F/ATXQtFrb62COpCo4CdklyHnQspIaznQYhY7FbY8IH1vdJz4up83yloXp20Hp/MxAxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765886932; c=relaxed/simple;
	bh=tqjKqhYirNLD570GQV9nBxsSEnQLL6/8+lI6JZ3E9K4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Vz+ot2hIq5D1RjcssZKgkJ3V/m9XLUKCi8VozzislCBc/9hj/TRka/05hr6n137IsIWwQLjBaVABIquyoFWD5scMPBfuLgrrcJvUeu7DzYScUxaKmZRvYZmcC3fjy3kan+n78s4Adx3M6VSV8leTX9ImvJbJkk5/Oz9D6Mp46O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UflZabs8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KQoIrR0s; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGBOJYH3391330
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:08:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=xAdpGNwwp/Z
	7Cu86HIYmUAmIMdP+OAeA9uuuhTopKv0=; b=UflZabs8t5oSLdatEkLdLDwrxdz
	2fvpDd92swTEPZeLNZSPcS8gFY6X0oe8BqKIlNKRJEpbs3SnQ8Zp7iTGCY01ULiL
	GJnr7uWxG8iZ1H3vZJo+CB/v3HqDYArj0hYyuIeyWW2pYmH/QPHjVfSovcHAkGXa
	yr7hktHkzfg/b4ZJG7BGHT+qxDolPYVuEh58ytJc2//Yx/GgjH81NBWhR2v+Y8ac
	2QjcNVVl2V5YrQaL22/BmMvof1HZAGVpOa4t0HEsNMoQn6razw6g/61/aVOLfGOp
	u29O7/7J1F4fUqhKvmuftxpgHMtd+dr51JWFyX+lQZsrEbdyhb9SA2lBphg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b36h384ud-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:08:49 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0d058fc56so33603775ad.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 04:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765886929; x=1766491729; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xAdpGNwwp/Z7Cu86HIYmUAmIMdP+OAeA9uuuhTopKv0=;
        b=KQoIrR0sJaFTxlJZysg3ASDzn31Jqj6BgeTAsWfMKDO0KoogMTv1McZpB3KuidivV8
         BifPUqxWuS4pxsFNIfN2JKgGmwQED5kQq/TGAPOGpswyqMO2rBt/VwMRl63Es1PioepS
         LBeZAHUI2jiHfDwtnGz2RlUVzUVeL3pOZGxRn1guUjySvKBnx7bSHT2OAT9HR8VYORPZ
         rtXmL7P+PhyCWTvi2TOT1v/P4u6ubuURgJKpkfuuJiWKme0tylwH7jW3hOUv4HNF+lLa
         c/BI2ouh2S1BNsQT1HOqNugqUDzFaoWSuFuU8+oYo+F+xUYJu6F4DWbGwtXmvx6EbjMk
         RUGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765886929; x=1766491729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xAdpGNwwp/Z7Cu86HIYmUAmIMdP+OAeA9uuuhTopKv0=;
        b=Vt6mnqyeAWrs0TAQc9N7cXBEiOeI5nVquh0K0AjIcBRjd4Vbb+yIjDCUAiuwrKNdTF
         r8sKuEwEEZKab2BMQWeJizw/J+kRfpwqeDzbn/vmpQ71TTEB7lTRl5QrMEiAZmKi+kLu
         I0IRHT3dyfHLG+xMZHouwz3PTdWOYgqNymg/dM9Pjxo6s/6oRdRW0qdAktao+xKi+/Q7
         hG9OCaP0m6IRaHiTY0WITIwwlypAvP45hZwZiFmbhU6I/zQd9f1i/Q/rFVRN6RQLhZSc
         Rf56Yu75dTk1DoHMX6aF2DicZP4A1m3u379o7cw73WZ0oSXDpJhcrkx7uynvvDX/wDZg
         5fGg==
X-Forwarded-Encrypted: i=1; AJvYcCX8J07TlZzKkgRNhZVo0LsNOWr/H03kY8TIYok8/vMPvisAZAFPpQUVpm/QyQceYMUWpoAqSV+h7hZ/@vger.kernel.org
X-Gm-Message-State: AOJu0YzlbJU4RGVIX5JuE1RCUlLY17qasuHbw54S78HRvAcgWS8FntZg
	qxw9GOpKecqMVvM6eJwAXMyERdOz8hq18d3GAJG+iQSyyH5GxW3Ofx4f/QsfGzobAcct85pZoT7
	uH11mRowANucXxeZkGsBn1BdGI7Duhv8MlxxrmN0vWqxocuTF0Ye07ysPXouj+eti
X-Gm-Gg: AY/fxX6WGISwmskJmIObUsfJnkdVmMfCl5iMc5gXKwqiuI5L+wk9twm+lX0+3N14J8q
	HgklnV8UkTkTZ71qdexsPnF1kidOeGtEQWMmxoSJ2MD9ZttLnUSd7z0r7Gw05je+QGYJlFE8jRZ
	fev985tkjsEaR803ZlW1Zdyu68vif6zWqDatQqQbq5efT8AecZAK1lP58akytRhHMjO/z873gIk
	ywNq1RkTGe9dpBWAnSzts3uXYwMo4D4WVzMc3LiC8GdBqbE9TPx38meXdLnK7jkwsoCEyhvxzCL
	+JRW8eIsbfxIBPgRCQLf0IvqgbFEn3LoHh0bJzkRSrC5kzokHtfpmTro6Bv+tFf3C3EdMY9oA/G
	awWys5cflUcLjV/53Q+bQrAiaj76bPIabwJh4FT9cnMI=
X-Received: by 2002:a17:902:db12:b0:293:e12:1bec with SMTP id d9443c01a7336-29f23e6236amr132147895ad.20.1765886929044;
        Tue, 16 Dec 2025 04:08:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG1UiljTPPzrp3Qh/5nDABpn7HiJhmUz/TMeHScFD6plrXP7X3/NR8EdKVMHXtpmtvklFy9Eg==
X-Received: by 2002:a17:902:db12:b0:293:e12:1bec with SMTP id d9443c01a7336-29f23e6236amr132147705ad.20.1765886928533;
        Tue, 16 Dec 2025 04:08:48 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a110f6374asm48568695ad.63.2025.12.16.04.08.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 04:08:48 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        =?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Pin-yen Lin <treapking@chromium.org>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v2 4/4] arm64: dts: qcom: lemans-evk: Enable USB1 controller for host mode
Date: Tue, 16 Dec 2025 17:37:49 +0530
Message-Id: <20251216120749.94007-5-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216120749.94007-1-swati.agarwal@oss.qualcomm.com>
References: <20251216120749.94007-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEwMyBTYWx0ZWRfXzdGBblE4kkkO
 /QlqM11Tb90Qz/1cXsGnKZu+xUqWUBc9T+R7BR8h4kb/rL6MVrJEXML6CTVrY6qtAfj3grEiv3q
 7QlRdTOoP54lDRMi6cIn2skBrHpEdmdDz+Kk1KM0F7zYO4PvetN9tIgKIVOQpiyiASLrdvPBCIp
 VXFJoCRkY2z5YYTEJkgk4vy6qg5pcB7QQAwdFUmLALwnjgbPj/FpPQO1DBm8CGDxpiZuX941bUD
 739zPZOq9bfaXNJvwtAQA3TOam5DDhJA4FxbUNga13hI1yaRA9fiujeVM5Ows+h8Fke5rUbM4FR
 3P5m502kQmFSS6btn37GwcYeli/FwZO3/ggJsy22Kp2oiZhw7yZEnNsfJ2E6unSAZNam8Dvx9Go
 d8FdnS/Kw+dGUhwQRnMkxYQpZhk6Cw==
X-Proofpoint-GUID: zySUkfmbq0YitxVg3z6H4sPd57JYF_Ev
X-Authority-Analysis: v=2.4 cv=QeRrf8bv c=1 sm=1 tr=0 ts=69414bd1 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=0PLguQYFKghNqROady8A:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: zySUkfmbq0YitxVg3z6H4sPd57JYF_Ev
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 clxscore=1015 suspectscore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160103

Enable USB1 controller for host mode on EVK Platform.

For secondary USB Typec port, there is a genesys USB HUB GL3590 having 4
ports sitting in between SOC and HD3SS3220 Type-C port controller and SS
lines run from the SoC through the hub to the Port controller. Mark the
second USB controller as host only capable.

Added HD3SS3220 Type-C port controller along with Type-c connector for
controlling vbus supply.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 159 ++++++++++++++++++++++++
 1 file changed, 159 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 70d85b6ba772..e2aaa5ee3bc9 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -67,6 +67,48 @@ usb0_con_ss_ep: endpoint {
 		};
 	};
 
+	connector-1 {
+		compatible = "usb-c-connector";
+		label = "USB1-Type-C";
+		data-role = "host";
+		power-role = "dual";
+
+		vbus-supply = <&vbus_supply_regulator_1>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				usb1_con_ss_ep: endpoint {
+					remote-endpoint = <&hd3ss3220_1_in_ep>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				usb1_hs_in: endpoint {
+					remote-endpoint = <&usb_hub_2_1>;
+				};
+
+			};
+
+			port@2 {
+				reg = <2>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				usb1_ss_in: endpoint {
+					remote-endpoint = <&usb_hub_3_1>;
+				};
+
+			};
+		};
+	};
+
 	edp0-connector {
 		compatible = "dp-connector";
 		label = "EDP0";
@@ -140,6 +182,16 @@ vbus_supply_regulator_0: regulator-vbus-supply-0 {
 		enable-active-high;
 	};
 
+	vbus_supply_regulator_1: vbus-supply-regulator-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vbus_supply_1";
+		gpio = <&expander1 3 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		enable-active-high;
+	};
+
 	vmmc_sdc: regulator-vmmc-sdc {
 		compatible = "regulator-fixed";
 
@@ -527,6 +579,33 @@ hd3ss3220_0_out_ep: endpoint {
 			};
 		};
 	};
+
+	usb-typec@47 {
+		compatible = "ti,hd3ss3220";
+		reg = <0x47>;
+
+		interrupts-extended = <&pmm8654au_2_gpios 6 IRQ_TYPE_EDGE_FALLING>;
+
+		id-gpios = <&tlmm 51 GPIO_ACTIVE_HIGH>;
+
+		pinctrl-0 = <&usb1_id>, <&usb1_intr>;
+		pinctrl-names = "default";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				hd3ss3220_1_in_ep: endpoint {
+					remote-endpoint = <&usb1_con_ss_ep>;
+				};
+			};
+
+		};
+	};
+
 };
 
 &i2c18 {
@@ -690,6 +769,14 @@ usb0_intr_state: usb0-intr-state {
 		bias-pull-up;
 		power-source = <0>;
 	};
+
+	usb1_intr: usb1-intr-state {
+		pins = "gpio6";
+		function = "normal";
+		input-enable;
+		bias-pull-up;
+		power-source = <0>;
+	};
 };
 
 &qup_i2c19_default {
@@ -849,6 +936,12 @@ usb_id: usb-id-state {
 		function = "gpio";
 		bias-pull-up;
 	};
+
+	usb1_id: usb1-id-state {
+		pins = "gpio51";
+		function = "gpio";
+		bias-pull-up;
+	};
 };
 
 &uart10 {
@@ -903,6 +996,72 @@ &usb_0_qmpphy {
 	status = "okay";
 };
 
+&usb_1 {
+	dr_mode = "host";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	status = "okay";
+
+	usb_hub_2_x: hub@1 {
+		compatible = "usb5e3,610";
+		reg = <1>;
+		peer-hub = <&usb_hub_3_x>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@1 {
+				reg = <1>;
+
+				usb_hub_2_1: endpoint {
+					remote-endpoint = <&usb1_hs_in>;
+				};
+			};
+
+		};
+	};
+
+	usb_hub_3_x: hub@2 {
+		compatible = "usb5e3,625";
+		reg = <2>;
+		peer-hub = <&usb_hub_2_x>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@1 {
+				reg = <1>;
+
+				usb_hub_3_1: endpoint {
+					remote-endpoint = <&usb1_ss_in>;
+				};
+			};
+
+		};
+	};
+};
+
+&usb_1_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l6c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
+
+&usb_1_qmpphy {
+	vdda-phy-supply = <&vreg_l1c>;
+	vdda-pll-supply = <&vreg_l7a>;
+
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };
-- 
2.34.1


