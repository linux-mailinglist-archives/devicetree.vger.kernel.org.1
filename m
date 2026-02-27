Return-Path: <devicetree+bounces-269058-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMBpLH0soWk/qwQAu9opvQ
	(envelope-from <devicetree+bounces-269058-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 06:32:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B281B2E0F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 06:32:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D7F99310B90E
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72E633DA7DC;
	Fri, 27 Feb 2026 05:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lBMBO9i7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c06RjLlG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570B33D9025
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 05:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772170318; cv=none; b=r4VCmfRqdPOB+ZK1UL0xSipNLbSfeJE/pyWiX/OOgTtTZGG90gCQyZZ/lw6qqBAoVF5gx8rVDfVjJZZlLTMb4EdT2UO/2iIJ4ORNO2z/M1UmHBmk+Db93V8Ewxqx3gaZ8wiPFPkJB0axjPftexE1LKBDn/o5FD6Pbf2FD4Mw8/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772170318; c=relaxed/simple;
	bh=m3KUdkkQgGXyRdAhvozMZ73I31HFN8PPcNA6Qxc851s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=lsQAccQz1X6ZCCpYvH7fNDg/Od3XzWkd06khEznTUBwUmeUDQwmTPWjQHzDJFggTsnT1QQSc/Xw/8hlbMvIRDiuq+NoO7y8xDsLDQAPMQS/FYipl4a+JhEHZblLMR4MZ/qyv6gyUbz7ymaV2wOWCHgq6D4EEuPTb9Hlmzi/EjjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lBMBO9i7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c06RjLlG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R2K03Z2438925
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 05:31:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=+397mEDPEF2iW8XBXTloc4
	+brewK4ZSe5v/l0LA5m7c=; b=lBMBO9i7Tg26dDh6wVwtIu9b3ba1F0YDlfcnVw
	kQzwbGBvE998+Hb3L44PPkFNpuM3LYlNzOwoOP3vTbQN/Ag7aZvBIGxctn262TO2
	DGHs4ZifRT5D+JR+cYOEamNeQyMZ1+sPf58DL4+42wM+mRPLSvSQvUwlIT5jiX7i
	I9R4UWu4cOO79S1PmELGKO+74udbDFTyy4q0pMIBRV3FXLnARjbTgMHqcXFIM1MK
	7DYwY5ezxVqK7f/hx0E09gPg6vNk7pzGQOxM2iSykMt31oOYszSjEPxRzyMfggrU
	1NlNdYu/b76ofnv2RUYG3kbFNh0uliK/GmsS3fjPNMmeeVjA==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cju4r22cm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 05:31:55 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-7d4cc9c8302so3012551a34.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 21:31:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772170315; x=1772775115; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+397mEDPEF2iW8XBXTloc4+brewK4ZSe5v/l0LA5m7c=;
        b=c06RjLlGG0Ves91heybPZFE4EmKa28Tss1KQ8YDK8Q9XehhJf7HUOQNqrFUX6DZnA6
         iMIcVWGXGQe3mwCOgBWvNQrM54Boiiw9noafiORUWRIMHeX6fGR4j0JSHGUZPnd/Asqd
         G6Zsu3W0cdoKS77OaN7yHLsCOruNE7DPkZhl4IBz0ap0z+Ny30zrjTdJwKzBBG9BHJQn
         ebqypS++ww0jfgaT+BELUDgtbc53LYVLoG0mKhbx22Fc5yL0pvZCPHZaUovMUmTUQy0/
         zxhCccuirAfJzfq36tQz7YRO9V/q/6/x9oqFPOMm+eY3FqxCndSFvX2F9b/JDXPCI51o
         FvYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772170315; x=1772775115;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+397mEDPEF2iW8XBXTloc4+brewK4ZSe5v/l0LA5m7c=;
        b=VNKNZuh0Xl8igG9Se1vpSeM3WTEaqHO3LAasKv6+DIcvFVxEiEVkCxLFd/pbK39GNj
         oDewRSJoOH8RSLNu/XJZM1UPvXyS/N2mch2AmNHKer7Xk7FX44D/yohFSe99yqN5LG3c
         0GqPvpsw56XxBDYrMEwFW9RVryE/34PB352sFM0lYlBijttPI5REvTf3ImN6D9LrQlAd
         ulbRgXrGgvZHED62FP+HUDUfHL4/AuKrNctgnOKxFosCpsUZgUbSs/4PB9Mm3vsXJaTV
         XnSQGvCtS9XYgyazIeWimt8kt5HppXRRCEV16Agu8APCvb+G4BjHaQcH3gBO/S+uTtZR
         b6nA==
X-Forwarded-Encrypted: i=1; AJvYcCUp9ZVTlMA+VQ9LvYJtxWzUcjtuGp7XZzN8IRl86dZFkw/o52XP01K1i3sEjfb/74UJRcRsyXnDLLBX@vger.kernel.org
X-Gm-Message-State: AOJu0YzhEP3rZwugAO415l5NloIsg9oK/WeToIGj1AZ9NBBp+Bx7yjVi
	/o4S3QHXOTJHHrGxesm/1iSU3I56/ADAyANtuPVMqXhFnW+drnob725Gb1ng/ROIChdCiWBWCs2
	cA1nDGoGWvMmybhNMBXUA+bxCDdqi4MCouUCRTwD15ASwXBBMPUBjw0BN7++fK0Dk
X-Gm-Gg: ATEYQzxQS0aKP5ocBBZ2mhHp7SgbpVOivc2oDGpuRuFWpqop57PrcURIDb7JVL51Zff
	Hn9JzFyL3aqhD+4Z4N8a1MtPsNmhFyMczHkjTqL44G3lhSewz7ixQl3k9572dfsMkE8HveGHWUo
	q53ANOWWPK8l2IMuLkUDE4McZGeQQJrqYrpeLUSvs8ZO6ZeNqoxEjPV9PIFPo5ad2Leu9fEH70Y
	sbwe8xVxgfStd+uGFQWIPRC9+uYd/vyY/EtXFjGrxUWPNVVgL27SDOeVbBk+As7lLYnPl32EiDB
	jLQFzBOQDaF0wJGijEAmOyB/TqZ/gthHesc6DdNtnOtcfVRJe0Z7nwDxjfoHdK7HJIGe4C2bTTI
	hRVgr8Ywvj6znFXq0bf9KM6jm48dWABqeQyWUx/MrA0BznFUA/X8yw1SbpnOIOO36YsMK
X-Received: by 2002:a05:6830:3490:b0:7d1:4684:ea8e with SMTP id 46e09a7af769-7d591c17e71mr1172727a34.4.1772170314880;
        Thu, 26 Feb 2026 21:31:54 -0800 (PST)
X-Received: by 2002:a05:6830:3490:b0:7d1:4684:ea8e with SMTP id 46e09a7af769-7d591c17e71mr1172713a34.4.1772170314493;
        Thu, 26 Feb 2026 21:31:54 -0800 (PST)
Received: from hu-zijuhu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d586226d14sm3532824a34.0.2026.02.26.21.31.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 21:31:54 -0800 (PST)
From: Zijun Hu <zijun.hu@oss.qualcomm.com>
Date: Thu, 26 Feb 2026 21:31:16 -0800
Subject: [PATCH] arm64: dts: qcom: glymur-crd: Enable bluetooth
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-bt_glymur-v1-1-838fcbfaa767@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIACMsoWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIyMT3aSS+PScytzSIl2zFBOTNKM0w0QL00QloPqCotS0zAqwWdGxtbU
 A55KtalsAAAA=
X-Change-ID: 20260224-bt_glymur-6d44f2f1a85a
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Zijun Hu <zijun_hu@icloud.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Zijun Hu <zijun.hu@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDA0MyBTYWx0ZWRfX4OvEG9RsGfVj
 xejpE747bESOR9vbAkPVJBwHe5XvGnYzWPCyqzV3yyJCtT8b8BDOdvJjv4/IBNH/v1i714WqD0g
 6Ht9xERrqLV7s7eA865QsmxCCGb6wtrQ9YSbYVdjVl02Zp8ReH6TGvQa6+kSjSkdxiv+v56g5ps
 xHW0Uq7o/VHJqgNlM/5mvsxcOesHM0NjpFB24HN3BIy+j39pNzB2/moxfhK9BCyCm/UtQuPycO2
 yV14bv8xGZYUV+xxW42IQlhEPglraOnT1n4eZiUmrKPBTqsI1vBOh2fxKE6YEfJUt/JA/vyB09M
 u5yrY2SxyhumvzwBKrH3O1BYj8f7aQvYmMiWeoNhlbXVsr6bIYJ5nciMuJN/F1Op1QZKnRWdyut
 DzDt6B63YiYQY6Fb8xoSyeWipez+UUK0z+seJVqj3fYAd/QcmhQGT46rZxJNPxq29tSLqrG/PSv
 Z+jlmSoXbX+cTHi9zVA==
X-Proofpoint-GUID: QbGfsWwsc0qCP5L59gjwMslcrQDHlmBI
X-Authority-Analysis: v=2.4 cv=KZzfcAYD c=1 sm=1 tr=0 ts=69a12c4b cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=rJ_hEUIvWizWHpA2mtYA:9 a=QEXdDO2ut3YA:10
 a=eYe2g0i6gJ5uXG_o6N4q:22
X-Proofpoint-ORIG-GUID: QbGfsWwsc0qCP5L59gjwMslcrQDHlmBI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 bulkscore=0 adultscore=0 phishscore=0 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602270043
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[icloud.com,vger.kernel.org,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-269058-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zijun.hu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 55B281B2E0F
X-Rspamd-Action: no action

Enable bluetooth WCN785x on Glymur CRD.

Signed-off-by: Zijun Hu <zijun.hu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 85 +++++++++++++++++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 877945319012..ffea5f757a86 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -121,6 +121,65 @@ vreg_wwan: regulator-wwan {
 		pinctrl-0 = <&wwan_reg_en>;
 		pinctrl-names = "default";
 	};
+
+	wcn7850-pmu {
+		compatible = "qcom,wcn7850-pmu";
+
+		pinctrl-0 = <&bt_en_default>;
+		pinctrl-names = "default";
+
+		bt-enable-gpios = <&tlmm 116 GPIO_ACTIVE_HIGH>;
+
+		vdd-supply = <&vreg_wlan>;
+		vddio-supply = <&vreg_l15b_e0_1p8>;
+		vddio1p2-supply = <&vreg_l15b_e0_1p8>;
+		vddaon-supply = <&vreg_l15b_e0_1p8>;
+		vdddig-supply = <&vreg_l15b_e0_1p8>;
+		vddrfa1p2-supply = <&vreg_l15b_e0_1p8>;
+		vddrfa1p8-supply = <&vreg_l15b_e0_1p8>;
+
+		regulators {
+			vreg_pmu_rfa_cmn: ldo0 {
+				regulator-name = "vreg_pmu_rfa_cmn";
+			};
+
+			vreg_pmu_aon_0p59: ldo1 {
+				regulator-name = "vreg_pmu_aon_0p59";
+			};
+
+			vreg_pmu_wlcx_0p8: ldo2 {
+				regulator-name = "vreg_pmu_wlcx_0p8";
+			};
+
+			vreg_pmu_wlmx_0p85: ldo3 {
+				regulator-name = "vreg_pmu_wlmx_0p85";
+			};
+
+			vreg_pmu_btcmx_0p85: ldo4 {
+				regulator-name = "vreg_pmu_btcmx_0p85";
+			};
+
+			vreg_pmu_rfa_0p8: ldo5 {
+				regulator-name = "vreg_pmu_rfa_0p8";
+			};
+
+			vreg_pmu_rfa_1p2: ldo6 {
+				regulator-name = "vreg_pmu_rfa_1p2";
+			};
+
+			vreg_pmu_rfa_1p8: ldo7 {
+				regulator-name = "vreg_pmu_rfa_1p8";
+			};
+
+			vreg_pmu_pcie_0p9: ldo8 {
+				regulator-name = "vreg_pmu_pcie_0p9";
+			};
+
+			vreg_pmu_pcie_1p8: ldo9 {
+				regulator-name = "vreg_pmu_pcie_1p8";
+			};
+		};
+	};
 };
 
 &apps_rsc {
@@ -490,6 +549,14 @@ &tlmm {
 			       <10 2>, /* OOB UART */
 			       <44 4>; /* Security SPI (TPM) */
 
+	bt_en_default: bt-en-default-state {
+		pins = "gpio116";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+		output-low;
+	};
+
 	pcie4_default: pcie4-default-state {
 		clkreq-n-pins {
 			pins = "gpio147";
@@ -596,3 +663,21 @@ wwan_reg_en: wwan-reg-en-state {
 		bias-disable;
 	};
 };
+
+&uart14 {
+	status = "okay";
+
+	bluetooth {
+		compatible = "qcom,wcn7850-bt";
+
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+		vddaon-supply = <&vreg_pmu_aon_0p59>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
+
+		max-speed = <3200000>;
+	};
+};

---
base-commit: 85694946ded4155d81c70dcde58f828b3dc16372
change-id: 20260224-bt_glymur-6d44f2f1a85a

Best regards,
-- 
Zijun Hu <zijun.hu@oss.qualcomm.com>


