Return-Path: <devicetree+bounces-271924-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OHpHWKbqmmbUQEAu9opvQ
	(envelope-from <devicetree+bounces-271924-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:16:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7C521DBED
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:16:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2C03230325FF
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:16:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D303E33B6EB;
	Fri,  6 Mar 2026 09:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PREFmEEx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Dip7mO/M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1BF1C4A20
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 09:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772788573; cv=none; b=LnJgt3tXss2gBR4YVuGOTxLPI6a7Hlwg+M5iOz8LnE5jo765JNTAF32cELPKudHPDjGwSlMjuiRjJcqDpYjhL5/13ZrPAgRrvhYheRWTGnV7ZCSCaWpqm5OwwNgBS5LGf+r7qEyWcj3Q9hiNzRyO+8rIJ4IvLxsiAzc0JFCSkCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772788573; c=relaxed/simple;
	bh=GS0xAuA3U1euZuzSuIQisMiEdDZsjyMOTLTugJxTsOQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cT7kkUs7ViY1pBmS3s8B6swNEHymZIktEtBj6wsQsomcnOJa1UE0Tk0EAcP2h4c6Aip/SxZVnO5i0ZLf7Im9ByqtTcoMdvpYNtZjOTMg8OgfPR0rIoJTjqS5TB66zTxpGSBgE25aIRRIA/elOduyX6QUWWOaFA+EHtvocR+meeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PREFmEEx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dip7mO/M; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62654PBo4193473
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 09:16:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YBEaNU86mPV
	aWm3S5JwN+EcGsFKv2sS7gkmk3GsQv10=; b=PREFmEExiipgPPfUiBGH11x11HO
	d5bgm1SQK1Cq3I2Wa2GhHj1IdotPcAC4RnkKlOXHBe4JMKZ7hwTvO6cDDN0Fjztj
	VlBrmJ2OSisGbB6sYh8EiToNou+hEr5kTchHZUr4knEymh7DrRKTnz7xSMfFX7Bj
	TIf7ZqnTah6sUK6HE2HnM9LOXDO1D4MR8fab+NcHuQ0Z8fMvit7t0133qeIdR26C
	IYPtnOtF4JMn7Qmqlp0Lumy+cFzOUA9HJz6i5sQv93mg34alGyhNXj4AxaEUDc0q
	+7yosUPEQ5K6zzTMgiYViAoSnnjkgDLYCmzyM2BGWigxkNOMON0QAJNattw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqrf5rtdm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:16:10 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8299499d582so2644282b3a.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 01:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772788570; x=1773393370; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YBEaNU86mPVaWm3S5JwN+EcGsFKv2sS7gkmk3GsQv10=;
        b=Dip7mO/MJnpZQqCosRcfHOQ+AZQ4hXoy7oPYQWbFwdkyGS25NGhrw3EDlUov7Ps5+1
         vQsOkIyl7pylTNp5OVPIYPmMrVMN7/OQBElpcXfzMPC0/jommKtobsAYHF7eAmVy+xNK
         zFM7rh7Gg8o5inMudxeBXDUkcSYfJVylNqCVTg1BgVmZkTPMS2mZzv8xHqpHEYl2sDKX
         v+OnvUZHNUCuUtWe8Uz8T0KVWQ4GEWyUd8Q5zEgRu9HUUyTDkupOg/jviDKY5f1wv+FI
         paL86cuw8dT4aZ+sLYUs1NLCUPXburVWmHKCl1KocjAOQ+YbC79uNtG/5ISQWd1s2z4p
         dVSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772788570; x=1773393370;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YBEaNU86mPVaWm3S5JwN+EcGsFKv2sS7gkmk3GsQv10=;
        b=P3VkMCU2mwx67RZErd95hCXd31uNM7P2z/UeZ9wHjWK0eiSto98q2u4ndFnJEJfA5F
         uTc0855nVZgJlhJ1TJNwXG7NxBBfDVKnaqxcdUxq9AkBgqh+AcDeoY1mScex10N9cG2g
         4BrkKTg4b2n9TjenZyV73fc0TtiHHQD+NTgwSDJd5hA4NqxJDVKFQECtJhXqDFDtihHK
         G7SpvWFFNsFYTVuYrglYUU5kjaNKV2YO2k3f2j6eLDeYo2+Q2a/6/v4WxIEaT8uvAx12
         tXhWNrlTnwnljKBsyrkQ/6EQuEoDAf/oUwUnZ9NQOTUa7E+FkPw8rRLd7wh4LRD13EHF
         7P1g==
X-Forwarded-Encrypted: i=1; AJvYcCVCWE2on8YGc2zj/z7lOF0Ttq81byZemQb4KqIS0F6fc4fNChDCdDpv6R9ZT01IL1e11QGA231y7fC0@vger.kernel.org
X-Gm-Message-State: AOJu0YxAMMNvex9HBqRYrY+XqYXDAmMLFfQbvPHL2EjMX1xO/2wvagNv
	j+SjcayhZgYt9OnUTt0/+NPo/KMnJ17KtZiQ9dsABP46ZWw5PDgSg215gYe5KC9i8gx5/O1/lDm
	R84rescfk8Cl/aDXULvtqahPnLy8qHspRyRacNR5Q62rDIR8D5bdJwDpvH712Z8BMZJjtzxcK
X-Gm-Gg: ATEYQzzJb7FcA5+/pRQMf4UvPM6/J2IcOdKEg1lwTIWtzLJWOcEyXWmQzkOX8tKLmmU
	TkcoeVCRHjFNQX2b/AKTtv9SOf6NnalCjN8dEu73wDP+LAhK9vN9LlauUCcn4PTg+MBqxoH3RRB
	tqqzgsxGP7UBq/tnNJ60YH/7xAqBBmQFXqzRZwBRtWW6zy1Lc5D3HWLImc+MFgA5zR4HTeXUs2l
	Y7oJz4ksynP5pfESo1chd5/A39xVatlne/rZZImoBupr4YwBDE2pTHAIir4L+Am0s+2DuVadyja
	41h/qAYJi8mliAzFuoc7Q9aVhJ+tm18esll9yexzhYRaqtEroanwICnKgBKTo8zZJnkTcrgKRou
	5Szw51qCRtJEsF7C7KaKZoue2jyFX5LnY/HdDXBNiDWWQlWkWLZMcKII=
X-Received: by 2002:a05:6a00:4b11:b0:829:9c5d:4342 with SMTP id d2e1a72fcca58-829a2f397d1mr1497054b3a.54.1772788569723;
        Fri, 06 Mar 2026 01:16:09 -0800 (PST)
X-Received: by 2002:a05:6a00:4b11:b0:829:9c5d:4342 with SMTP id d2e1a72fcca58-829a2f397d1mr1497021b3a.54.1772788569220;
        Fri, 06 Mar 2026 01:16:09 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a48647e8sm1169360b3a.33.2026.03.06.01.16.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 01:16:08 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v6 4/4] arm64: dts: qcom: lemans-evk: Enable the tertiary USB controller
Date: Fri,  6 Mar 2026 14:43:55 +0530
Message-Id: <20260306091355.1178333-5-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260306091355.1178333-1-swati.agarwal@oss.qualcomm.com>
References: <20260306091355.1178333-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 1Q1gWfBQOTE1M0OLhEQskJUHmLU9y99n
X-Proofpoint-GUID: 1Q1gWfBQOTE1M0OLhEQskJUHmLU9y99n
X-Authority-Analysis: v=2.4 cv=L+oQguT8 c=1 sm=1 tr=0 ts=69aa9b5a cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=WNaE9oMJOCZktHJ47CMA:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA4NyBTYWx0ZWRfXwTkpA4/dat5d
 2jFfUAh5jtuOYAnjetfIIhVOrzCKspMu5RHWRFgqH+JjdKkCiosK2caKt+8qAkR4laRSocdU1JX
 lxXlXwSH/MLIu6i1qIvLkSpJcMoz6yILHivIuznbBunGQtsp+JAasoAVsRAYaBf1PmfvNF875mN
 ZyKCodvQIWpiS1ek3htVXPbolx2ohIp+Yl0zl3q/nPGXdf3Qiyw1FFFd13+ySEM13kUcobknl67
 awerWvx70QDJDAV/b3VZtCJTTsDJxNtd44tqlTEyuWhSF61c3NDD84hcHs89CAa82pKefxdr0TZ
 C6s/hg5lV+WSYgnK+n+CrJqXw8QAXzQVmdeKEGFCFLPwxyXTIZazSlePBnzUwmPBb0sUp6gfVq4
 IS9xJb5r0iHxNST6pBJ8no6pXbVCOaBVAAaSAWpCUzTqRBdAzwcNwHZMPIJh0gurrbPWY5ZrVUs
 fIzAVoCTaQCnqXtGBMg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060087
X-Rspamd-Queue-Id: 0E7C521DBED
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
	TAGGED_FROM(0.00)[bounces-271924-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable the tertiary usb controller connected to micro usb port in OTG mode
on Lemans EVK platform.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 52 +++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 687cafe3d15c..a1ef4eba2a20 100644
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
 	edp0-connector {
 		compatible = "dp-connector";
 		label = "EDP0";
@@ -141,6 +160,15 @@ usb0_vbus: regulator-usb0-vbus {
 		enable-active-high;
 	};
 
+	usb2_vbus: regulator-usb2-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb2_vbus";
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


