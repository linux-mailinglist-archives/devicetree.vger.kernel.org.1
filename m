Return-Path: <devicetree+bounces-268606-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKRxHeTjn2nCegQAu9opvQ
	(envelope-from <devicetree+bounces-268606-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:10:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4A41A13B0
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:10:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5903E302D53E
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:09:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 973163806BA;
	Thu, 26 Feb 2026 06:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q5Vn3pfp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZQLtHbwD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4740D313551
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772086144; cv=none; b=LDltX/HttCpc32+vqtaXnK3Bty1BHrJaZj/eInGeXpRxcEn4NXTPpV2GJ2JjHZzPMFa0Vr/UgruNvNmDqbY3PtifcIuTqYXGgagzmBnPJhpgI0/owZsP1WXPYhqfqPxPWEe2Gn6A5AMjIc1NJs7bRp3wtIULrRo7A65fMyVHFfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772086144; c=relaxed/simple;
	bh=YDQkfoBdQXcdfPkMAJWKhAgKaXB83PauTBPIGJadt8U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LdvCJzrDw+3fZT6RTQcKKlBHbuwaVjPHjjNT3SzhqlD+eH9EL1l+MEBzmXrJYwzEiqqebFZDTv6Z600wIC8TQggTw6Za4rCFhLwOhgALy/d7+8RdLZLq6/fLR1ZeaJntVkFM24vg5LJbsm9gPfoOXNta3JTGbxQBhyDJOz0148w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q5Vn3pfp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZQLtHbwD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61Q4VECV3778162
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:09:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NeVTHLilPj7
	hzd9X8Q2+B8OhjSmUomXAGL0biT0VrmE=; b=Q5Vn3pfp5lvetAiB4JZyMrGVGYM
	4SX68//3otkty6YKbaq9ICerb9mLCw4bQkVI9Mj5iQMk+/A7M1G+yY0WraCajJWT
	7xRaYfGLiwUW3x2rLcHn2EEXH1cjwJMUEICM4JDlZpuE/8ZFYEA2TBCm8EuruBRe
	JGMqEuNSWThFgNr+erraHnCPK39ixLRqJBzgjqJtDao7A5MvlNPk7/0yWL8iGLho
	iMbNjxS8LD3Vft3JphQ62XO+cOv5DfEY1k4JiZgHC4/EEp360BHUra7+d40thUr4
	EEhmn+TqK21l0uGlpsHODM128hrb63haH+oQlGBLNc2HXZFpr/58kkFHO4Q==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjae0ryq8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:09:02 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-358f42fad0bso1676885a91.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 22:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772086141; x=1772690941; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NeVTHLilPj7hzd9X8Q2+B8OhjSmUomXAGL0biT0VrmE=;
        b=ZQLtHbwD31woQLFfDqGyqn3psyRRYmhtI11ZPB6K+8DM5xGX7054oNtSyYc9f+Zafo
         1yO+VSDoQAXx+vg74/ShtC8J09pHpaBHo1mysH446huqu6KA1+gMi2CppUaz5gS52uia
         2XmOIZ2qkt8tPTPQPJKhy+CEYmqauFmPwiVnGTsNzza0YvSrB5F4Ng7LQNUCYgqntyqv
         kjsgfYgldK3tBn3PFGoTMcWH6pdYZNP/P4L1HunDBoPP7v4fQLnnfR1P/WPLDDowhaVC
         wMtZDx5QLcvDSJxUEk79FlDcqxija2umlBzzPVFdcGDnAf+YtVbOWOpg5VSv+ZlV+tLZ
         gaLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772086141; x=1772690941;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NeVTHLilPj7hzd9X8Q2+B8OhjSmUomXAGL0biT0VrmE=;
        b=P7ef3gkP5wlUlGNi7evRHSzuG9Yt8vw2449dPdxiI6wwGFK9vRef/6athhpwpmMMZx
         MS9YlMOzbkSnQnGqHh8mckehBa6aroYczZmzuTB6Vix1iPk4KtU/ZClHtdoAXQXRK+jn
         GE5qUMiiGZdzMQrWefjw3LDK6Ku7gREtQziE/uPc+kc9DSmhdhwZRxSLrus6ZhePItl/
         RdLLer2XWPoVjnvzJBkmu15oYJiIhr5Brazh/lZDPWe8cAOi5u5657HiuZmiKkMQPro0
         KClI/9K1z2kqDR2PlDuKYwrDer24sy5zvojTbXexE3iht/UY67aJViUGJmjiPRgBggda
         4g/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVHRkA8YIBScJ8i2VTVQfzgxfiCAqULWRHltVGzAjLAXlVm8BEPRpvUmBTuYdAQ9EtEWvQMp3DkwAbc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw79F+7f2Q1gkymS1SY/t4E5bDihBecDAUmVioVpNVoyekUBvzQ
	p0Ymg8t16oh/kA1pVfTwiQ5q6nmiwypyEyEMzyrG5kJ683YC64oFQBPa+5hFGlHPO1IsoD+nQlr
	HCoHQTkQoua8uez55uT9f+wyxYvQhfLG5gqT7cd+D4b+CQ6fLivvb3bklirv2WY2+
X-Gm-Gg: ATEYQzzdkafLFTGRSiXxXrZ/2LtpQKCOG7bNVaAXdA0lgiomvXc1O4wCizfgm02RkhL
	wo94ae5ecJxVRRdAyxN4cJxqioDru7Ql+0io6raymbtNIvJ9pfFqAmqOqAPKxLgVeCDmQ/4sve9
	Ej+u27qmoV5J7LDgniSIH8mIuOe7N1fMYNvbVXowty8psycbOl1hMcm71T2UKMv6DdSCCPeizvH
	i6idAU6Rq6CNyMZMEtrC/+qaz1u5/2lIoBn6WT1bfcoRDFBPZFEIxAWZDlO2TKlYq/bphOc3eHT
	/YEzTviS4ojbakAw3uWPHbR+6Q3KQGJOiJloMn/L6Ci/nTaTVigsrZAY+jwPBfJXZBW+wr26qFp
	HPQFWxb2oXdACLZbpwZ7Q7S7AAuQh+W3Hl+MqrFnqXBXV9HQwQxWPGzs=
X-Received: by 2002:a05:6a20:6a08:b0:394:5ae0:2921 with SMTP id adf61e73a8af0-395ad23d47fmr2804857637.62.1772086141214;
        Wed, 25 Feb 2026 22:09:01 -0800 (PST)
X-Received: by 2002:a05:6a20:6a08:b0:394:5ae0:2921 with SMTP id adf61e73a8af0-395ad23d47fmr2804826637.62.1772086140676;
        Wed, 25 Feb 2026 22:09:00 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35912fbc363sm2754421a91.2.2026.02.25.22.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 22:09:00 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v4 3/3] arm64: dts: qcom: lemans-evk: Enable the tertiary USB controller
Date: Thu, 26 Feb 2026 11:38:35 +0530
Message-Id: <20260226060835.608239-4-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260226060835.608239-1-swati.agarwal@oss.qualcomm.com>
References: <20260226060835.608239-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDA1MiBTYWx0ZWRfX9bZ5E1B/Z3tZ
 aNNH9axDKQ2Pfw3t+vVwiwmlKOOA+FvwYCmaPh466IJan3NLFRtyf692n3Iuhx+2uOeDC5/p6l2
 1I9Suv3hrWwIe/WfVCq66YnA6vadAMhLC23kK+l+w5eB4j/RhFiJjc8A2xdYFtk9oN2LEfXIEFW
 tMHC8U0F45pHbMg+odM3VashPKK76O0ihjKE+JXZShf2nAlZlWhcXFfDO93918zg9Fma6lPLvUF
 u1toGUj1J/TAo9yeWZuCp/nWyEtGaq2b0EnA0UBa5In4HUr+vaa/NHjFPBohJABgZAT8Lf0KsQz
 cuH+pajRuO9D4XCR81dhTKOkfKLBHF7EFZC1DoNvNvGhaRvSMGOlcxtZVKsyBDMMEzH51rHb57Z
 7GJWlsurzDejNEneRjNe3HE8Z+jpn+h6y5LJui6AcwZ17mc4PPBnp15F4fJsXq4u4Y876BBuwe/
 XlpzrsKpdEkTmhQUP1w==
X-Authority-Analysis: v=2.4 cv=O7Q0fR9W c=1 sm=1 tr=0 ts=699fe37e cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=WNaE9oMJOCZktHJ47CMA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: pXLejLifc1PPqOk2OjpV2hgwnRrtpXIl
X-Proofpoint-GUID: pXLejLifc1PPqOk2OjpV2hgwnRrtpXIl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260052
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268606-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CE4A41A13B0
X-Rspamd-Action: no action

Enable the tertiary usb controller connected to micro usb port in OTG mode
on Lemans EVK platform.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 52 +++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 397052394930..2203967c7d51 100644
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
@@ -132,6 +151,15 @@ platform {
 		};
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
 	vbus_supply_regulator_0: regulator-vbus-supply-0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vbus_supply_0";
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


