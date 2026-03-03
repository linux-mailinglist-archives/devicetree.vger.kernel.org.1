Return-Path: <devicetree+bounces-270364-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eN0ECoKapmnfRgAAu9opvQ
	(envelope-from <devicetree+bounces-270364-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:23:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C49371EABB1
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:23:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E3A1A302F723
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:23:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 773DF38C2B8;
	Tue,  3 Mar 2026 08:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K1gjfRnN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fGrRe4ye"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8889E388E78
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772526147; cv=none; b=f5jrqKo6QPL7Y0iR8kGZHlQZNV3UyhToQUyuJrfzMR3NiicISkqX8QRa1HeulxDUs7CVfTm5OKHYHsU1432WUL/46pdMY/BFtO/4tDU52mSU31cQ2MPvsBI9duMkaWac4WsfT436/UpnlAcReZw1nd37dn9yKpnsq4ARofTVdZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772526147; c=relaxed/simple;
	bh=VrBuHSgeoLm9jagCwTLLRdn+9yMDaRhBJQZW4qBGh1w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tLL7lD5lvcROVp3eKyWnfylhKO13ng068kKkI0kfYvu1FbU6fvvpjGlDbZ0+4KNw1V6BlbPHs57AD+AZI5bSlyXylRbu/XvkIOzfL2hT7y0REnrqP9QZD9Yu0FeOoVxyKEjRaVgaAAhYDY6PaMy21kO6L5kL8sJSaCfzSabQhOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K1gjfRnN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fGrRe4ye; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6236J9Z5959467
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 08:22:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Qlei+jbjmBH
	LL4r2FvlwOsnaUTwcOPNPy8Z9qbYfIwc=; b=K1gjfRnNEyxovWyG/Q2XtRAvtra
	EyYaxtFGGKX4TDKPU/YG85eMNM5N8ANmRdrP2Ejql0r3H2ro8mNgEqjMKunCjyIU
	6zhfUhTw9qls13JKm3dDi+bLffABVzH69y1lR14O9hIZgkXCwxDTs0FlDBxslZgv
	WiHkaO77FeZvE26iYs+XRTyJjvPvQqVrZvF2HHCQRGDPd4mVLATDRMXFKQncxyJC
	5Vur/Jloo78SDNah6I64GWoJe5tS/UUwfgKIM9FezYwYcONL1RqsGKsjcQ5pvImo
	qKDeRfPXddZmW/h/TFqlm3eoUIyy7V3BQZNQUZtaz7myS4BEjR8b9dP6t9Q==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnhx5a02w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 08:22:23 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3598007eb74so15017359a91.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 00:22:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772526142; x=1773130942; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qlei+jbjmBHLL4r2FvlwOsnaUTwcOPNPy8Z9qbYfIwc=;
        b=fGrRe4yet0xmQSln7kr5kSqQQ4KE/ufaco7zAJHDc7H3GGzbBEZD3aWb32M+MPWiD6
         UfwMmFc+Fdf0Jm0elDMvh1vxAp4mLQb+FXXu877RBs+ey483I5eKjKDxm50ZAsDtQScG
         Z2iSweCdY6+Sv6Nh5Q4kAI75tB7sltXQBD3vc0DKoxXE6/xbDaCHsu/r5bBDt1IbwuyE
         vahxJYQJNlYAWbZu4G7r9rpL1kkhqU8mvXXMj9ply46CUunalrTV4dwkoZzEA7iC/Guy
         O/iPcdln0up4FXpDw4ARPPL5S2uTdNdSKefmvqjQq9kCSUqP7eV1YylaDd0ofEv9mFCA
         qzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772526142; x=1773130942;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qlei+jbjmBHLL4r2FvlwOsnaUTwcOPNPy8Z9qbYfIwc=;
        b=JW6Hm1sLo0phfkG5exTDpuJbKrRcwHnGTg9Km4r4jR411GxWlKRf2c2QEKGGky5pd1
         oB1uXa323Jgl+a2Mwbuib9+FKmZvOjuqHZ2AWpwrPTP5vLtNelfS1EB7AszAH44eU+Au
         7/bLptztKndWDyT+aD4j+/1Cgsnjqkie8J83GEihH7CwkXelHaecyVDyhMzEn0tCiC+D
         6l504/5SicKY8NlloH7pE38LpIDTjQDfDbDODeITewH4xcx8EOmxvW2Vz7smFWL9AxZS
         iI3Mx8mAznkUVAWWcOfpqu/BxZoGM0x1eLZBn6CgbC40UmRCby3eHOQMPt6renzPDk4E
         c3Sw==
X-Forwarded-Encrypted: i=1; AJvYcCUFZeSqP0Q1719Os1RMRKCD2xYqfK0XXjB2M2DrxHrkGZ8Q2PUi+ZiLYgqK2FOc7Lk6s0RxenKoOJ6n@vger.kernel.org
X-Gm-Message-State: AOJu0YyVfNfDwFfMC32awenC71KVTQKKccWGSCWveGqHDfmugRIM6BpR
	qOgFe5agK/6JeB61HC03/Uty3gH3xVpTq61Cp1Gdj7nkg8Fdme2hxFx6Cib2VIemCfLB+Hk4kE1
	aQMcyFpcS5RlmH/cY9GwfZthDfWEqNf/syXoKX7AQBagbrZdnBkyCU1GTwye0d13i
X-Gm-Gg: ATEYQzxQmMj6VVVErgn5ZN2drzfPojXlTh5rpCRMFLuiuJ3o9l+Nf2Uf7LZjvZTcAXz
	hLHt4JQpL+HKwfbo4CxClPlftZ++nclvi558UcxhrRxFwemKqmVzuzj45M2ats5vzIkRJRgIZDF
	IiUxAAFCeuzfc4bHYvwkiFSgfXaa3fT8lRO3Xiy6oA83Mqs/ZNGY8ixJWfuXIQlFZqjuT75eIDP
	ZEuFxVgOwrl63FwN9WZi6SaNs3YiXKTlbiMfBTMvIVSuLsfzVT5SlonXyIuhPGtqzFYc1LY2jyq
	EdvftOMD3sm9NcOoMvRpd3OOeLNMmi9+pDG5Z3su5gWoX/9sE7v1cDYPk1vkFet3YpOPJe+VcSM
	i7AlZL05QBHP/u/1rTa2Jbzxdlo00McoLxfAXu1YMwR7zK5vzRtOxd+c=
X-Received: by 2002:a17:90a:d2cf:b0:359:9224:6c24 with SMTP id 98e67ed59e1d1-35992246de8mr4156220a91.2.1772526142206;
        Tue, 03 Mar 2026 00:22:22 -0800 (PST)
X-Received: by 2002:a17:90a:d2cf:b0:359:9224:6c24 with SMTP id 98e67ed59e1d1-35992246de8mr4156201a91.2.1772526141728;
        Tue, 03 Mar 2026 00:22:21 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599c4e2f85sm1797214a91.17.2026.03.03.00.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 00:22:21 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v2 3/3] arm64: dts: qcom: monaco-evk: Enable the secondary USB controller
Date: Tue,  3 Mar 2026 13:51:57 +0530
Message-Id: <20260303082157.523847-4-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260303082157.523847-1-swati.agarwal@oss.qualcomm.com>
References: <20260303082157.523847-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA2MCBTYWx0ZWRfX2yhbswK0A+Zc
 1HoA+YJ952oPFVE7oiWUA+LJ1LSyR0rpFpM6AeQJo0pGKjapz6FvZqqRksFBIjvwLna5+G5mq5q
 YL9lHZlAtIAPbf82GBm314pVVMlEH3YwIXhzfx45sPkxk4wVlhuoWqAO3pyS1/IdvwMmWMOYC2N
 Py9mKCk46Opj+aODMq4l5aorMI4iWK8hDyXl8Ve+xZeCF8vZV498N86d9XXkRJos5mpD5r4kOE7
 VkfLn4HhLBO5nSMwUT3rIKiQTzGyHRth6oWvbzbjwrdzv8DLy5NIVt6ek4mXrh74Wfhb6VQoNHh
 JARA+2Pd7QMAVVKGqbOusgewjs8UssKBGtxk4Bt8GincyhuBTb7Dp1QYBpRRhZgT3N1t57uFR/L
 yqGtK5Tvt4vqjIWrec5yODZHtEe1a//zHkPB9CC8niwqydrGOd1VhCHx34EIkQlSlGpOz3QqSDj
 jDzWckkcFesRphB0vRQ==
X-Authority-Analysis: v=2.4 cv=T9CBjvKQ c=1 sm=1 tr=0 ts=69a69a3f cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=DSDS7fUqx7ACsPcU-5IA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: TP393dIqRxQf4H4t8c8TaMfAaCZhErqj
X-Proofpoint-ORIG-GUID: TP393dIqRxQf4H4t8c8TaMfAaCZhErqj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030060
X-Rspamd-Queue-Id: C49371EABB1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270364-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable the secondary USB controller connected to micro usb port in OTG mode
on Monaco EVK platform.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 54 +++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index 03af9bbcacc9..bc75bdd1281b 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -27,6 +27,25 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	connector-2 {
+		compatible = "gpio-usb-b-connector", "usb-b-connector";
+		label = "micro-USB";
+		type = "micro";
+
+		id-gpios = <&pmm8620au_0_gpios 9 GPIO_ACTIVE_HIGH>;
+		vbus-gpios = <&expander6 7 GPIO_ACTIVE_HIGH>;
+		vbus-supply = <&usb2_vbus>;
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
 	dmic: audio-codec-0 {
 		compatible = "dmic-codec";
 		#sound-dai-cells = <0>;
@@ -77,6 +96,15 @@ platform {
 			};
 		};
 	};
+
+	usb2_vbus: regulator-usb2-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb2_vbus";
+		gpio = <&pmm8650au_1_gpios 7 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+	};
 };
 
 &apps_rsc {
@@ -484,6 +512,16 @@ &pcieport1 {
 	wake-gpios = <&tlmm 21 GPIO_ACTIVE_HIGH>;
 };
 
+&pmm8620au_0_gpios {
+	usb2_id: usb2-id-state {
+		pins = "gpio9";
+		function = "normal";
+		input-enable;
+		bias-pull-up;
+		power-source = <0>;
+	};
+};
+
 &qupv3_id_0 {
 	firmware-name = "qcom/qcs8300/qupv3fw.elf";
 	status = "okay";
@@ -690,3 +728,19 @@ &usb_qmpphy {
 
 	status = "okay";
 };
+
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
+	vdda18-supply = <&vreg_l7c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
-- 
2.34.1


