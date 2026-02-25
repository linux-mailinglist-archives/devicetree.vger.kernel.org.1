Return-Path: <devicetree+bounces-268242-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDcVI8bDnmkuXQQAu9opvQ
	(envelope-from <devicetree+bounces-268242-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:41:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 419541952D3
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:41:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E3BE13196713
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:32:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A85F38E5D7;
	Wed, 25 Feb 2026 09:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fhHK1h1G";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JldQ5dja"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF70338E5F0
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772011941; cv=none; b=s49/hjGD2Hb98DqGy3E8Z4+ikQBm1rX8Poq9ixtfkHROVINk/j0hl9XAT6mzYoWaNhBWL+3nIXqgiMdqMHr5IhAGToylKYYgUKGkUW2o8C38CWhMiU9/MnBr/77/8CEXUJy3MaKvu4hawQqD5sdsw/yuY9KgMOH9du7NpM0tLHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772011941; c=relaxed/simple;
	bh=ebFYIFeSzM/tDvbCf29r5DFYUKXZH0Ps2d39zHr4esY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=D/8/mF7rBvIAkhFa3qNhcBRVDmYWctNEp8hCBouRyuFuv0djrgZzjJ5316ZtRHMDmsIAmM3Wunw7aoHSm/RQjCpsyMO1J/K2yDI6E4ux3cqX561xzRjlsw+33eJKFufjRJyybd8IAjEcfsk6h6/40bv5LLCKLH1i93LV3BpPrCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fhHK1h1G; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JldQ5dja; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9SCjw806689
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:32:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=GiwxvzFBFTk
	sxSlV6xngcgAvRDm7LfcSPmtx8XQCJhg=; b=fhHK1h1GPrd4JjQ6xkU9j2xzhp7
	F6JsJE110TBCeFXpuG8O5aT1A33LTCNS3C06qWxuCr7GbLfhYiiJNcKPhvLH/bWW
	hV2/9TlPnXFwvfYb+Gn13UffcUuyWEvPm/t2fxMF+WyCPOHPgNlCk/et7Qk8IlOx
	QbOhzoOtUqeE0fwTL0TunC4S7496wr0/MDkAfSCHF0t8+qC8lpViK/wqLoCxng+c
	52Vs3qR5cdG1ZSH8DMtqGo8/O3Q3fyyU327mBLv0NWdXXt4V2G2gxrPWjKH7PB57
	1/WppRPqhpKbh5/Oxm/TCvHdExnC+UXHt5i4Uv9YaFkYONIxlgodfN4ICOA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chr5p94jd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:32:18 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8249e91bcfbso2505514b3a.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 01:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772011938; x=1772616738; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GiwxvzFBFTksxSlV6xngcgAvRDm7LfcSPmtx8XQCJhg=;
        b=JldQ5djay/epQO7lY1rAIklkcWkZ9dYojmipoH2Wj1b6if1QKt6Sox9UeRhf5bTcdf
         87UP3ngbMEpuO48dMXpD9QgCfVy0IgXK9vjLJxZSZuo3mTbYriOCdBNzWpXNdWn0Fznn
         blrRUWoP2mRnMnSNzOOjgSHlNrRF0taMtBVj7xZGOuPgSnvjgK7ddkGnzImCqNQn/n05
         VFrlmJFRgMngOYGUp2N9/CKLZ+xvfmBTYeNQD+0TY5gmSpp7DQ06SAbfUmZMCNaTtBRv
         2p8MmQmRhkRbDRQEVY+g3VWPrOAEmSGeQSvGd993Otn4gUWxLcsMUbUnjDCQUWZshPlg
         aKEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772011938; x=1772616738;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GiwxvzFBFTksxSlV6xngcgAvRDm7LfcSPmtx8XQCJhg=;
        b=OahQMd6ZKZEq0Q+a6ahzAc8+sT2dOItNvm+oATiw7P9RY7B489Fwbq3dEbLQ9i6UgI
         ksAPh2/QJv9aDdNAYo0NwbvkCSMvIg7Kh9ROJmlVF05eV4/ttBHrszlr+W47F+Ocrqlo
         44OwbKZg6YEJJP62v2IWTfdEF2caaZEVsUYds6f2/Fkt/HgFEi0D9HHILEONuI/frQSN
         pF58BeiRfKLSUTmMEqFavkSDKwMOXzVUXYe6gmOAIbfXKLJIceO0WFhzzixx8rjaUKg3
         wKOWWa7wVeRnQsZmZsWTaxHshdfX0q3vLoRiS7sZoWr1mqD3f8RZdfPW+sa03yGB72Xp
         B08A==
X-Forwarded-Encrypted: i=1; AJvYcCUSGS6aZCt4u8dcozfWkjVZzFaBsV6s3G88zeH/RTsyqvIFO64ZQx7ABzE6SKb+Uxy7slZEGKl2y2F1@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+A+sZOw7yAKBFYyOeiReQaaHUlnJG7Op0OvtRfDzRBTh6+18e
	BuBl00ZXKPT32c50CgXJSRgdFxTrCpwL2u5qlIB/vPS1BMT2MjuTJjzYHC8w1sL4oENexTOWsM8
	KHH4TVbkvpb+VOR8/Jv143ml5n9CJBukPvAY4f+TGjLYxG8Kwkv0qxigV3Md3AMpep0QlZkCN
X-Gm-Gg: ATEYQzyj4GGbIFDo9A+z/7OvqDho+E5ztSH0dfLpInLBFLejQbN7fSFKMHAqOdcn7uw
	OYSjpilVYQ/wnukS9nBHvDSVhgxAy3zeThFeESzmCruZ9p9M3b6o0ammgs7lZtye055KFV+oSSz
	TJ35G+nb9aTm1Kh+sfHvYV3SrgN6GoGmKgRx3gy4Wl6nml2mEsEiELc8mnCxEGJbdEpM06z6g9u
	MFrDB9xmzLGxy6hLiLNOk/0kIeqpXqFIGp50iNSgv3e1URIuSFIwFk55ADfBihteAo2m+tNvUb9
	3DyYgJUS80M3IN5RmVPgRjSeX9WGNLA6G0m/t81w30ii28Ttgv3m5UNx15WP9Rf3pMUuGB8DLRN
	6Q2B6C+8QNma0lSa5kcvCxAQcAwyikmkIst46thpT9ha1gvJubDBvzGo=
X-Received: by 2002:a05:6a00:1a91:b0:81e:372c:b02e with SMTP id d2e1a72fcca58-826daa6ef14mr12431371b3a.47.1772011937700;
        Wed, 25 Feb 2026 01:32:17 -0800 (PST)
X-Received: by 2002:a05:6a00:1a91:b0:81e:372c:b02e with SMTP id d2e1a72fcca58-826daa6ef14mr12431344b3a.47.1772011937210;
        Wed, 25 Feb 2026 01:32:17 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd688aa7sm13628098b3a.14.2026.02.25.01.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 01:32:16 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v3 3/3] arm64: dts: qcom: lemans-evk: Enable the tertiary USB controller
Date: Wed, 25 Feb 2026 15:01:55 +0530
Message-Id: <20260225093155.4162177-4-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260225093155.4162177-1-swati.agarwal@oss.qualcomm.com>
References: <20260225093155.4162177-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDA5MiBTYWx0ZWRfX8Za3btB4tQQo
 Gre+VhAkBATsyN/jNhmboOVCE/EXjC+9G+CurZulVS5Re8W9al8xqnSMgTbLoWLfVMUaT/5xLQk
 WAigp4KOfhwdySF4WLYBmG+BYda8rhYbt7EkzJP91wMiPgrqZ+i8JgC/2JGF/xqN/K4y5lLjkpE
 sRCX2OVVMQWuz7maN+MS8kjgGQ/YabEXuwN3OpBRwDXgeBd7ORMmlF1Nuicms5f7aFCo9A9uUn9
 SzaVgtSPUG0qkSEGat2JfYLVkM1Noda286YJT+e6T7XQ32PhcBXEnZCm1Hkt7TyBBJ7uAyixdVO
 YzqsbqXPLSAHx0q9TCcroI/0sQz864yoHZNKIFKrqx6+kKoA5S/EqBWfsaxxhPtMy4jhUrB+8Sa
 HXinkoXP4KrUkU5MkW2JRTobyWzTp+oCQCRmWxAB9GfXFtk55jwbVTBmz6DD+l+BYL5eTNYF14T
 2Ndc0l66OT2vJgvO98Q==
X-Authority-Analysis: v=2.4 cv=GstPO01C c=1 sm=1 tr=0 ts=699ec1a2 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=K8I2XD3YpgONH663DNkA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: KUPl_qkAsWh-7pru26wD9lZRkV_NlZIl
X-Proofpoint-ORIG-GUID: KUPl_qkAsWh-7pru26wD9lZRkV_NlZIl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 phishscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250092
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268242-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 419541952D3
X-Rspamd-Action: no action

Enable the tertiary usb controller connected to micro usb port in OTG mode
on Lemans EVK platform.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 52 +++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 397052394930..9e1e8b6f13dc 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -68,6 +68,25 @@ usb0_con_ss_ep: endpoint {
 		};
 	};
 
+	connector-2 {
+		compatible = "gpio-usb-b-connector", "usb-b-connector";
+		label = "micro-USB";
+		type = "micro";
+
+		id-gpios = <&pmm8654au_2_gpios 11 GPIO_ACTIVE_HIGH>;
+		vbus-gpios = <&expander3 3 GPIO_ACTIVE_HIGH>;
+		vbus-supply = <&vbus_supply_regulator_2>;
+
+		pinctrl-0 = <&usb2_id>;
+		pinctrl-names = "default";
+
+		port {
+			usb2_con_hs_ep: endpoint {
+				remote-endpoint = <&usb_2_dwc3_hs>;
+			};
+		};
+	};
+
 	edp0-connector {
 		compatible = "dp-connector";
 		label = "EDP0";
@@ -141,6 +160,15 @@ vbus_supply_regulator_0: regulator-vbus-supply-0 {
 		enable-active-high;
 	};
 
+	vbus_supply_regulator_2: vbus-supply-regulator-2 {
+		compatible = "regulator-fixed";
+		regulator-name = "USB2_VBUS";
+		gpio = <&pmm8654au_1_gpios 9 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+	};
+
 	vmmc_sdc: regulator-vmmc-sdc {
 		compatible = "regulator-fixed";
 
@@ -719,6 +747,14 @@ usb0_intr_state: usb0-intr-state {
 		bias-pull-up;
 		power-source = <0>;
 	};
+
+	usb2_id: usb2-id-state {
+		pins = "gpio11";
+		function = "normal";
+		input-enable;
+		bias-pull-up;
+		power-source = <0>;
+	};
 };
 
 &qup_i2c19_default {
@@ -966,6 +1002,22 @@ &usb_0_qmpphy {
 	status = "okay";
 };
 
+&usb_2 {
+	status = "okay";
+};
+
+&usb_2_dwc3_hs {
+	remote-endpoint = <&usb2_con_hs_ep>;
+};
+
+&usb_2_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l6c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };
-- 
2.34.1


