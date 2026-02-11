Return-Path: <devicetree+bounces-264623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPq9EdEhjGm2hgAAu9opvQ
	(envelope-from <devicetree+bounces-264623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:29:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8561219DE
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:29:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3E138300751D
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 06:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31F00322B7D;
	Wed, 11 Feb 2026 06:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nY64yhzw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LnYpGdyO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7453195EF
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 06:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770791374; cv=none; b=fs4EbKxUN7YQ5Co461+VGfHWxxDsRSqsk2/bWANkkZckzix/Mepd/17pzLqWTS1wkQkjFHq4H/kmO3WKn76iFDp5bRMBiTFMNulpA/NOgmrgjUMFs2r0InSwTS/XrHq+2Qq6f3qMfrsehsQ4+0GXRT1EdgYMSgL7gO84aZ4VfT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770791374; c=relaxed/simple;
	bh=PsQTFSgjcvGxl3MLUggaPozJ27wxnUgUxhKCCQuiFU8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jDIpzRNj9vx2gmdNSvCSttG6oiqeXyadrM0y2npvKulbv/9iwC4TyAUdEvOj01kF+39oGCkzO/ZK0XbLQ+gHo2LyhE+pEze7GcHYYlBFmhzsPAut0hnmn+0aEsY6FHOFTOAF8jGmLxDNcQWp4stm+xqT3AMlyjmgU5Ups8HTVJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nY64yhzw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LnYpGdyO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B0ZZYP4006990
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 06:29:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=E6tA//vNS7IUDnw5yILXeqILaShUeChfWlM
	Yu0AvVaQ=; b=nY64yhzwudFvcBwFToKolDO4aeNDPe30ZJg+Rb6s8DkGHjUPxpF
	2EGB15DOwWbk3Gb4Srh1b5MOMVvYG62X2yZLkgsAO9xewfBcL9dwM71o1ko3nc8+
	CSB8/icHYRzhCDXe/3Elx9EQAC+Zwe9BsOucjZvErAxwvtDSU0EByRaEjG7DTBDL
	OaJIDr7QXmqx7jzupGysFqyLNisrhUZ42kMsF/1iOx3xzkm+HqSsu+Ri/8NUFbGM
	N48bLlfr8W8OdNziiee5VBRnkAdS+lsjWm9cKiqJi19TZgm6jnbbphsQdTbOVzwY
	Y8ntOwLO+2HB5BQkqFRWxL5gsZ4dfJ2yMbA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8fbwrv63-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 06:29:31 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-81f48cec0ccso5816022b3a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 22:29:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770791371; x=1771396171; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E6tA//vNS7IUDnw5yILXeqILaShUeChfWlMYu0AvVaQ=;
        b=LnYpGdyOdVHCYRhJvpSYxjesa+AqVitINvvozXQQLwCVgLn1E/I5RgGOXIFbREHLe5
         C1NrJoXnamOxh+63QXxRP401BOzjX91JsEoZTcLj1NHjd0KFTE1TL4eM2xIuwwOogywl
         QgXees9Iw8dWfmsWMfwggrqWaz5jAH8yX09U9J1kQtvp0PIrQ+2eogVOu+0knPIgZy20
         8HY8ktlIvEeeQFxp4bLYMhi75UJSLUvr1OwdcM4qK2GOMvRRKM8sEXaFoTE0uqtJ0s+O
         gexP2AdTwnjWUw2uyAj9mhznBhs7s8WbRL//gtKz4KkqA5pC2lNvTTO/ELk+ex5SwrTK
         Pkpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770791371; x=1771396171;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E6tA//vNS7IUDnw5yILXeqILaShUeChfWlMYu0AvVaQ=;
        b=IQz0KB/nB/cYdrTGLPr09JVjA3P4Cw7r/9MiANJdOIcAco1yIiUrL2/pSWo53Gbzx7
         jjsjD9B4Vw4JN0GfZcFvIs2jWSFnJkAhIrtxx0CiRRTajWmSTf3fuYcR3OZaqKuKXJC6
         WJ3qfw1Rl1zLNXj7Rwh6wW85tLBhzBfgFceH+jIlEX+xmxmvfkxU2oE0WgFXGlOqwKeY
         vQPoJk/kFNY8u+QZklhoORkWc55viJBg0iDKGLKTyxpB06Ds8w/4thP/5DaBn3VcFfH6
         1L0okIfgoO4ZMu4gt6FI+XpeVNJapJG1dQm8KLhnRrhsYvGMEO6317VxRVKMCt+OHmi5
         jpBw==
X-Forwarded-Encrypted: i=1; AJvYcCUj8fj14wzxJPTgEnjSzPmvvNyji1MKs7U8b/aa8L6VwTq3n7Z68l3zZxWlS/U7M5BSKi/qHjTRQ9rM@vger.kernel.org
X-Gm-Message-State: AOJu0YyQ4Ric/FJnh5p5RB1abgpfoUHYEzHC6Gy4D4uwn5vQrHkVc7ii
	MY/CZLkvnmmvodlOt7jZvmmhYtmI89jK0eCNYhPlukdLvqbFBdimaBUwvDQKAhF0IZtIMmhGBLd
	psLta7UVk4H0102qgmpUjdNxn24Cj/f9gvMYFu101it39D47J7TkMHARKr78ClSJj
X-Gm-Gg: AZuq6aJxXjIrL/Rio7VMBGAg7k8Wfy1fZioTAuDBSZ2HUcl69kBrr67HIYDhyO31lDw
	FwOTJu3Uhdn575CFvLT0oRedhrF22bfG1vepMiwwSSPxFv1udLT7LSMi9um3FZa8fLGnf18K8Sq
	9EdcA797/oPJdurqk7LYnujMxCt8fvhjsDmV1bttKAP1oXiFNVC+MvTkwxDjpBjEFthWxP1r6EY
	TXPA6KPBzJkPLsDNWmu79mDCfFBsJ+oAG8t4p2txtt9Cc0YB2UyInIWDhkkVjw3V8Dnesyp4zru
	IZ9QkgNfRcwhUH6sME+u6UABp9dpSWAHhjWDWCdmszphLBm1/qmmZUC/GQFNdm1iXsk4xXYOlyY
	Qkz6E4Ex2C2HSf9qgk/bUjq6kkmAsJ5gXNe+rw9VzNRTDlfWYnQ==
X-Received: by 2002:a05:6a00:1494:b0:81e:63b9:5830 with SMTP id d2e1a72fcca58-8249fc87968mr957002b3a.18.1770791370725;
        Tue, 10 Feb 2026 22:29:30 -0800 (PST)
X-Received: by 2002:a05:6a00:1494:b0:81e:63b9:5830 with SMTP id d2e1a72fcca58-8249fc87968mr956984b3a.18.1770791370271;
        Tue, 10 Feb 2026 22:29:30 -0800 (PST)
Received: from hu-akakum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e36809esm950905b3a.7.2026.02.10.22.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 22:29:29 -0800 (PST)
From: Akash Kumar <akash.kumar@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v3] arm64: dts: qcom: qcs6490-rb3gen2: Enable USB2 controller Micro-USB OTG
Date: Wed, 11 Feb 2026 11:55:51 +0530
Message-ID: <20260211062923.3794476-1-akash.kumar@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=GM4F0+NK c=1 sm=1 tr=0 ts=698c21cb cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=nDjxtR87dJjKcGfwTHQA:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: TrnZGKvKGt8wcv1T1RhrVWkCA6MMLglV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA1MSBTYWx0ZWRfX6BsZcUJ6xvdt
 JFDq5AxfFqOZ7+La1kqA3drXIKP+dWWmkbUVSR0CnWWAl3CxnvEghinJUo2kNTDdmvvHU2+Z3hL
 TyixFKHRNaBQQ78rPmxX+nI3dghCt+t5x+U4ZwHYR1Tzim0pttv5ZQQHDGwyU8r3P6mYYe8VNbI
 JaBQn7hyKkBImjLcJAt1PXYtviX0zgB6wQJVe572THqOVJXStBfBrhVqtV//hNvuvmAl/9FoDG8
 DJf2HnNGd4Qv+Cf6UV4BrDlFpb0K2PQrUwxZtqn2AZFoK3onL3vcZ1baPinosYj9ikiGVp0njQt
 lSQNxwsocTMR8rq6Kdi9f8M+75eHbAQAppgdtMeEEPiNltTp0LRd9iTgUBrIs0fiwKkmt8t+JHc
 mzDSmulgl5+2MiGXNnz1nmJV5NG/En7V+bCWH7FGCp96Ta8GqxNGC/D1JJb1r0hCeUJvD67jIWi
 MXLwcqMmiMcD8U87Bog==
X-Proofpoint-ORIG-GUID: TrnZGKvKGt8wcv1T1RhrVWkCA6MMLglV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110051
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[akash.kumar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264623-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CF8561219DE
X-Rspamd-Action: no action

Enable the secondary USB controller (USB2) and its High-Speed PHY to
support OTG functionality via a Micro-USB connector.

Define a dedicated 'usb2-connector' node using the 'gpio-usb-b-connector'
compatible to handle ID and VBUS detection. Link this connector to the
DWC3 controller via OF graph ports to satisfy schema requirements and
enable role switching.

Specific hardware configuration:
- ID pin: TLMM 61
- VBUS detection: PM7325 GPIO 9
- VBUS supply: Fixed regulator controlled by TLMM 63
- Configure &usb_2 in OTG mode with role switching enabled.
- Define a gpio-usb-b-connector node for Micro-USB support, mapping the
  ID pin to TLMM 61 and VBUS detection to PM7325 GPIO 9.
- Add the 'vdd_micro_usb_vbus' fixed regulator (controlled by TLMM 63) to
  supply VBUS to the connector.
- Add the 'usb2_id_detect' pinctrl state to configure GPIO 61 for ID
  detection.
- Enable &usb_2_hsphy and populate necessary voltage supplies (VDDA PLL,
  VDDA 1.8V, VDDA 3.3V).

Signed-off-by: Akash Kumar <akash.kumar@oss.qualcomm.com>
---
v3: Added empty line between reg and endpoint.
    v2: https://lore.kernel.org/all/2zztcabuf4hkixj445m3iiqdsmg7jju62e3fgupb6kaqirx5lq@2mhs5hcn3p7p/
---
v2: Fixed minor comments on v1: https://lore.kernel.org/all/ad294a50-027f-4caa-a9b4-e145f709b50a@oss.qualcomm.com/
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 66 ++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index f29a352b0288..76f2c6b3d518 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -217,6 +217,16 @@ pmic_glink_sbu_in: endpoint {
 		};
 	};
 
+	vdd_micro_usb_vbus: regulator-micro-usb-vbus {
+	       compatible = "regulator-fixed";
+	       regulator-name = "MICRO_USB_VBUS";
+	       gpio = <&tlmm 63 GPIO_ACTIVE_HIGH>;
+	       regulator-min-microvolt = <5000000>;
+	       regulator-max-microvolt = <5000000>;
+	       regulator-boot-on;
+	       enable-active-high;
+	};
+
 	vph_pwr: regulator-vph-pwr {
 		compatible = "regulator-fixed";
 		regulator-name = "vph_pwr";
@@ -262,6 +272,31 @@ active-config0 {
 		};
 	};
 
+	usb2-connector {
+		compatible = "gpio-usb-b-connector",
+			     "usb-b-connector";
+		label = "micro-USB";
+		type = "micro";
+		id-gpios = <&tlmm 61 GPIO_ACTIVE_HIGH>;
+		vbus-gpios = <&pm7325_gpios 9 GPIO_ACTIVE_HIGH>;
+		vbus-supply = <&vdd_micro_usb_vbus>;
+		pinctrl-0 = <&usb2_id_detect>;
+		pinctrl-names = "default";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				usb2_connector_ep: endpoint {
+					remote-endpoint = <&usb2_controller_ep>;
+				};
+			};
+		};
+	};
+
 	wcn6750-pmu {
 		compatible = "qcom,wcn6750-pmu";
 		pinctrl-0 = <&bt_en>;
@@ -1137,6 +1172,12 @@ qup_uart7_sleep_tx: qup-uart7-sleep-tx-state {
 		 */
 		bias-pull-up;
 	};
+
+	usb2_id_detect: usb2-id-detect-state {
+		pins = "gpio61";
+		function = "gpio";
+		bias-pull-up;
+	};
 };
 
 &uart5 {
@@ -1200,6 +1241,31 @@ &usb_1_qmpphy {
 	status = "okay";
 };
 
+&usb_2 {
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+
+			usb2_controller_ep: endpoint {
+				remote-endpoint = <&usb2_connector_ep>;
+			};
+		};
+	};
+};
+
+&usb_2_hsphy {
+	vdda-pll-supply = <&vreg_l10c_0p88>;
+	vdda18-supply = <&vreg_l1c_1p8>;
+	vdda33-supply = <&vreg_l2b_3p072>;
+
+	status = "okay";
+};
+
 &usb_dp_qmpphy_out {
 	remote-endpoint = <&redriver_phy_con_ss>;
 };
-- 
2.43.0


