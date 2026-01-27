Return-Path: <devicetree+bounces-259759-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MO8fL654eGmdqAEAu9opvQ
	(envelope-from <devicetree+bounces-259759-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:34:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 20124911AA
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:34:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 29211304CA4F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:34:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADC4F2BE632;
	Tue, 27 Jan 2026 08:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kAuuBUzP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="icpKIvuT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CDF2BE7DD
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769502857; cv=none; b=IFPoU1XjQmhuRnmzVqh59y47OutWuoX0Sj4AFJfhJxfDTtCRaqQP6E6+/gFZq2GSm3a+BQ5Vq2e1ffqgP9IH/DcKenCYxgfDNe0Mee1a5PoNim2v02hHJS3PHvDISjDzKsHA8lpZ3dXkTtvAc6WlTmSwfKUAwQ4g6qCA9AKyj50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769502857; c=relaxed/simple;
	bh=C1QFjiV0R+97oZMZ6vvsl2pfMFb3grnFJa40TT6C7LU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NQTvdw4GvKiqSorn2/vonImnWr22Qs29G9FxCVLN6JlqJ3lnzjmdhsnq+ihj9+6A+3g6jJlwssalYpA34y19jSOFHSeiOHjPcKM7fVWppa7MgyzfH4+kwQJIir3l02fNbis/tXLmzo4II+HoycslCF+AloLXzx4n1OIZWNCvG68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kAuuBUzP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=icpKIvuT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R86vhx621204
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:34:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xnHtAG7oBETQqKq8fsb/TORxz9VbPf68s7/wZzpZrrs=; b=kAuuBUzPTwRPYc+0
	Y2qROYaracFqlh52e8F1iVyeS8CMcRUKLK3yfd9778IdOxerwJtjV4zzQwdSyBFq
	+wte1pU6cIlHWYqMKD4Ek6Fm356cHXBTfjRkq8CxiyCOYngGDjsmrUoYVoxaKXFU
	/UgmqeHx8WPDclrv3y/8YVOsHkWWSX1SnMfWv4RnUc6wswwENmNlcuUcoTMJYusg
	0LuGnTgeZuNx4Bhg/VF4FGqFEv0KOeWSu/ghiLyZtQu/j3RzOMzD38/lp67HIKhI
	qKtExSAuUUF9Mv1foyqTdJIJknnHKaizMxdUnlUs6Zdeyc1VLJSLlmfum4BOg9Zo
	99BE+Q==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxsjeg2q1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:34:13 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-1233b81a92dso7298127c88.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 00:34:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769502853; x=1770107653; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xnHtAG7oBETQqKq8fsb/TORxz9VbPf68s7/wZzpZrrs=;
        b=icpKIvuT1idF30aMjbIFBs5N3ZvTZ1Yxy2NxLA4WvUO0j3NlRLrvorqBJkuy5DTKCY
         OuJYDjPsikwFmAHUAXKPEHuMqJEQni8iEhbIHuzv6vX9mc6XGGfdz5NZFpjHfWI3v0JB
         gA2qbzma2hmCj+aY0oyIkx92WMmSR+xxuPllyFy4vOj/LH1TVF4XpwgFcC1Ki4gvb9Uw
         PMigjwWCkvT9n9qVSKEEfHzVBs0G6y8QKs9ytwvpBL3gngUsyFih+3Ep/V2I42YgiRk7
         PI8DVRTgyksUkRlffr4XvDhWbNNzqj8W1TWbciMJRWfg+KOHtUTGsiDdLyBdbDME9l6w
         VDtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769502853; x=1770107653;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xnHtAG7oBETQqKq8fsb/TORxz9VbPf68s7/wZzpZrrs=;
        b=gcULPYEWbncXv+Nls3uH1nvAXyjX/W0BNzbUeAdl4c3aqXqHH42aXxlUBBE960JP/J
         xrhMc3TNFni7kNeutN6hSzNOpYrX0d7pUlfvtkERUIAxwSYUsSFOb+XWRPqMWoLjKPbF
         8Bev8HJP0sb6rIImk5HWNzQkZn+1aiaAang//MltkjdOOHMh5e5DCctc4NQHG3bGNqB8
         Un15jGPHhfp+572G2WeBb4XgxGg/fna6dMdOqImlUiYyV4sg5UEkX7AmgTTVAa10oDnY
         +ooyRpVM7MoIqIEOVjIsk4T6dbvaWnbyLMWx9RvrKBwxAmMJBXyYSDjKglSVlwh4bNed
         OK4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVpN5BMn/VRk5E89oXpCqBFEc88TymLkW+BzsDRQZwpG4d7IzoicVCXOVtrfDL72VlumHVbz1XWcY26@vger.kernel.org
X-Gm-Message-State: AOJu0YyEC1wO9puPR8Jztc6bzk6W24R9o2bywgFCrtxDZsJ7Y4EzGlRB
	SZaxXCDTepq55LxVhmAB2fH9hbE8GUPUY6m77EMyGtPBRGAkERQKfjabNASaOW3opuaGlWL0N0d
	3zIyX16l7b9wtKsFB35kvNKRKXd2BherOHN4PxL5xQ5RDKyn6ChUGCKijmYHvwddB
X-Gm-Gg: AZuq6aLuFZYEIwuMOzJvcMkCdTy+Jmn5CE4yGE93fiAhKbwA5pv3ZPxRp0RHVrD3aIk
	faIrSA0Np/GGAW/50Kl2paVZlO4CjwDfX9rwVyXTZ+VsxWZPIx1gE/TY882uQPbKt2BnRNAZU2b
	JMfW0ENaWPIkgwIQUbPBcbsOEfe7e9YTM6DxcARXYIwWDrFRTvNkFr/cP/0fQIe9a2Y0j+Pjpz9
	P6kSS2xQGl5TFJn7TMnZ1B7VA82MLsAYGtMy/RUdUOIbFWKJ7cL3Sh6Ru3J3YhCNo4oZoAy8dqr
	9oOVwEqO+OFS8fh1GpLas685BWxGbcJzQeeTbb2rGHL2OO4jkxMW6pCXX7Qp7isWuCnv3MXKSAw
	reHLrf6Ab1mqEFQQYDnRO5YxvDUZwMx7hSrFJMBb6ycEHs67QQojRQdAGnNnK
X-Received: by 2002:a05:7022:90e:b0:11b:f271:835a with SMTP id a92af1059eb24-124a05796c7mr525745c88.3.1769502852449;
        Tue, 27 Jan 2026 00:34:12 -0800 (PST)
X-Received: by 2002:a05:7022:90e:b0:11b:f271:835a with SMTP id a92af1059eb24-124a05796c7mr525727c88.3.1769502851773;
        Tue, 27 Jan 2026 00:34:11 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1247d90cda6sm21064235c88.1.2026.01.27.00.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 00:34:11 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 00:34:00 -0800
Subject: [PATCH v4 03/10] arm64: dts: qcom: kaanapali: Add TSENS and
 thermal zones
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260127-knp-dts-misc-v4-3-02723207a450@oss.qualcomm.com>
References: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
In-Reply-To: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769502846; l=21759;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=esnjdExscBYEam+EMC/GJBr8t3FN148trNHogl+l5F4=;
 b=E+a39GBO2A+rnLnp6hGWI6w+mn28mjqb4CebTdCoxHrrgh5OCls4EefVGARNSyZIA45goaH/4
 lROgT5ztHmoCUCxkBZ74l6CCVxnmyV8nJ8m7dVktlsgURp3sjq/PO8n
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA2OSBTYWx0ZWRfX67OZj9bAppSr
 ZEUWIDUOkSopCqDZeh2RONbBuzZ4wHrnMB5d2PqZebuR6T5lf7Lb98FzAVYvUmhLWj3pd9jhDs8
 btv9kDMSthHy6Fhwaf8cBtoBSaBjPADKezhV/HiS1+soMAXPss4cO5Iesbfj1pdFFBP2omvxBQG
 2wPxl77MNKiPvNC15ksiLHxTENM5YBXXDnrty23YYrlOOh1pVY841CooYoWsd2GFZsGWxAvL87X
 /Tk17FaQ7BSVhES30KAzFSkIauoBDUpjKLV2Or0MC6QwqG4YAjUJ5KJBSRjDDkUwqD3pvQG1nZu
 qgT5LHTlxxGF6iv4MZAYJ02nOvVamSUsCosprBjDHJH7uqPQgbT8z19hb4VMgO9WL7dGmykG8OQ
 FIifCHVCq6PmbSGbOwPqHE9bevE+YJf9frgW/qMxp7qOq9xkq2zB4J0WwmJcUDpIEnkpOOidJKW
 lekuiIshgG6VpMlFpyw==
X-Authority-Analysis: v=2.4 cv=Qelrf8bv c=1 sm=1 tr=0 ts=69787885 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gpPq06xVYaF9EkK19g8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-ORIG-GUID: uTETXO57-MM07poGWAbFd0lJwPTiup9q
X-Proofpoint-GUID: uTETXO57-MM07poGWAbFd0lJwPTiup9q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_01,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270069
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-259759-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[c22d000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,c22c000:email,c22e000:email,c22f000:email,c22b000:email,0.0.0.100:email,b220000:email,c229000:email,c22a000:email,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 20124911AA
X-Rspamd-Action: no action

From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>

The Kaanapali includes seven TSENS instances, with a total of 55 thermal
sensors distributed across various locations on the SoC.

The TSENS max/reset threshold is configured to 130°C in the hardware.
Enable all TSENS instances, and define the thermal zones with a hot trip
at 120°C and critical trip at 125°C.

Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 1075 +++++++++++++++++++++++++++++++
 1 file changed, 1075 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index df05d204ed41..251e36cf7477 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -2583,6 +2583,90 @@ pdc: interrupt-controller@b220000 {
 			interrupt-controller;
 		};
 
+		tsens0: thermal-sensor@c229000 {
+			compatible = "qcom,kaanapali-tsens", "qcom,tsens-v2";
+			reg = <0x0 0x0c229000 0x0 0x1000>,
+			      <0x0 0x0c222000 0x0 0x1000>;
+			interrupts = <GIC_SPI 771 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 484 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow",
+					  "critical";
+			#qcom,sensors = <5>;
+			#thermal-sensor-cells = <1>;
+		};
+
+		tsens1: thermal-sensor@c22a000 {
+			compatible = "qcom,kaanapali-tsens", "qcom,tsens-v2";
+			reg = <0x0 0x0c22a000 0x0 0x1000>,
+			      <0x0 0x0c223000 0x0 0x1000>;
+			interrupts = <GIC_SPI 772 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 485 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow",
+					  "critical";
+			#qcom,sensors = <12>;
+			#thermal-sensor-cells = <1>;
+		};
+
+		tsens2: thermal-sensor@c22b000 {
+			compatible = "qcom,kaanapali-tsens", "qcom,tsens-v2";
+			reg = <0x0 0x0c22b000 0x0 0x1000>,
+			      <0x0 0x0c224000 0x0 0x1000>;
+			interrupts = <GIC_SPI 773 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 486 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow",
+					  "critical";
+			#qcom,sensors = <7>;
+			#thermal-sensor-cells = <1>;
+		};
+
+		tsens3: thermal-sensor@c22c000 {
+			compatible = "qcom,kaanapali-tsens", "qcom,tsens-v2";
+			reg = <0x0 0x0c22c000 0x0 0x1000>,
+			      <0x0 0x0c225000 0x0 0x1000>;
+			interrupts = <GIC_SPI 774 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 487 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow",
+					  "critical";
+			#qcom,sensors = <4>;
+			#thermal-sensor-cells = <1>;
+		};
+
+		tsens4: thermal-sensor@c22d000 {
+			compatible = "qcom,kaanapali-tsens", "qcom,tsens-v2";
+			reg = <0x0 0x0c22d000 0x0 0x1000>,
+			      <0x0 0x0c226000 0x0 0x1000>;
+			interrupts = <GIC_SPI 543 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 461 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow",
+					  "critical";
+			#qcom,sensors = <8>;
+			#thermal-sensor-cells = <1>;
+		};
+
+		tsens5: thermal-sensor@c22e000 {
+			compatible = "qcom,kaanapali-tsens", "qcom,tsens-v2";
+			reg = <0x0 0x0c22e000 0x0 0x1000>,
+			      <0x0 0x0c227000 0x0 0x1000>;
+			interrupts = <GIC_SPI 544 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 462 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow",
+					  "critical";
+			#qcom,sensors = <12>;
+			#thermal-sensor-cells = <1>;
+		};
+
+		tsens6: thermal-sensor@c22f000 {
+			compatible = "qcom,kaanapali-tsens", "qcom,tsens-v2";
+			reg = <0x0 0x0c22f000 0x0 0x1000>,
+			      <0x0 0x0c228000 0x0 0x1000>;
+			interrupts = <GIC_SPI 545 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 474 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow",
+					  "critical";
+			#qcom,sensors = <7>;
+			#thermal-sensor-cells = <1>;
+		};
+
 		aoss_qmp: power-management@c300000 {
 			compatible = "qcom,kaanapali-aoss-qmp", "qcom,aoss-qmp";
 			reg = <0x0 0x0c300000 0x0 0x400>;
@@ -4795,6 +4879,997 @@ pdp_tx: scp-sram-section@100 {
 		};
 	};
 
+	thermal-zones {
+		cpullc-0-0-thermal {
+			thermal-sensors = <&tsens0 0>;
+
+			trips {
+				cpullc-0-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpullc-0-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpullc-0-1-thermal {
+			thermal-sensors = <&tsens0 1>;
+
+			trips {
+				cpullc-0-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpullc-0-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		qmx-0-0-thermal {
+			thermal-sensors = <&tsens0 2>;
+
+			trips {
+				qmx-0-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				qmx-0-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		qmx-0-1-thermal {
+			thermal-sensors = <&tsens0 3>;
+
+			trips {
+				qmx-0-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				qmx-0-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		qmx-0-2-thermal {
+			thermal-sensors = <&tsens0 4>;
+
+			trips {
+				qmx-0-2-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				qmx-0-2-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-0-0-thermal {
+			thermal-sensors = <&tsens1 0>;
+
+			trips {
+				cpu-0-0-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-0-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-0-1-thermal {
+			thermal-sensors = <&tsens1 1>;
+
+			trips {
+				cpu-0-0-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-0-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-1-0-thermal {
+			thermal-sensors = <&tsens1 2>;
+
+			trips {
+				cpu-0-1-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-1-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-1-1-thermal {
+			thermal-sensors = <&tsens1 3>;
+
+			trips {
+				cpu-0-1-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-1-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-2-0-thermal {
+			thermal-sensors = <&tsens1 4>;
+
+			trips {
+				cpu-0-2-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-2-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-2-1-thermal {
+			thermal-sensors = <&tsens1 5>;
+
+			trips {
+				cpu-0-2-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-2-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-3-0-thermal {
+			thermal-sensors = <&tsens1 6>;
+
+			trips {
+				cpu-0-3-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-3-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-3-1-thermal {
+			thermal-sensors = <&tsens1 7>;
+
+			trips {
+				cpu-0-3-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-3-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-4-0-thermal {
+			thermal-sensors = <&tsens1 8>;
+
+			trips {
+				cpu-0-4-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-4-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-4-1-thermal {
+			thermal-sensors = <&tsens1 9>;
+
+			trips {
+				cpu-0-4-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-4-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-5-0-thermal {
+			thermal-sensors = <&tsens1 10>;
+
+			trips {
+				cpu-0-5-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-5-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-5-1-thermal {
+			thermal-sensors = <&tsens1 11>;
+
+			trips {
+				cpu-0-5-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-5-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpullc-1-0-thermal {
+			thermal-sensors = <&tsens2 0>;
+
+			trips {
+				cpullc-1-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpullc-1-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpullc-1-1-thermal {
+			thermal-sensors = <&tsens2 1>;
+
+			trips {
+				cpullc-1-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpullc-1-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		qmx-1-0-thermal {
+			thermal-sensors = <&tsens2 2>;
+
+			trips {
+				qmx-1-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				qmx-1-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		qmx-1-1-thermal {
+			thermal-sensors = <&tsens2 3>;
+
+			trips {
+				qmx-1-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				qmx-1-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		qmx-1-2-thermal {
+			thermal-sensors = <&tsens2 4>;
+
+			trips {
+				qmx-1-2-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				qmx-1-2-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		qmx-1-3-thermal {
+			thermal-sensors = <&tsens2 5>;
+
+			trips {
+				qmx-1-3-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				qmx-1-3-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		qmx-1-4-thermal {
+			thermal-sensors = <&tsens2 6>;
+
+			trips {
+				qmx-1-4-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				qmx-1-4-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-0-0-thermal {
+			thermal-sensors = <&tsens3 0>;
+
+			trips {
+				cpu-1-0-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-1-0-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-0-1-thermal {
+			thermal-sensors = <&tsens3 1>;
+
+			trips {
+				cpu-1-0-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-1-0-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-1-0-thermal {
+			thermal-sensors = <&tsens3 2>;
+
+			trips {
+				cpu-1-1-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-1-1-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-1-1-thermal {
+			thermal-sensors = <&tsens3 3>;
+
+			trips {
+				cpu-1-1-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-1-1-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphvx-0-thermal {
+			thermal-sensors = <&tsens4 0>;
+
+			trips {
+				nsphvx-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nsphvx-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphvx-1-thermal {
+			thermal-sensors = <&tsens4 1>;
+
+			trips {
+				nsphvx-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nsphvx-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphvx-2-thermal {
+			thermal-sensors = <&tsens4 2>;
+
+			trips {
+				nsphvx-2-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nsphvx-2-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphvx-3-thermal {
+			thermal-sensors = <&tsens4 3>;
+
+			trips {
+				nsphvx-3-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nsphvx-3-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphmx-0-thermal {
+			thermal-sensors = <&tsens4 4>;
+
+			trips {
+				nsphmx-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nsphmx-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphmx-1-thermal {
+			thermal-sensors = <&tsens4 5>;
+
+			trips {
+				nsphmx-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nsphmx-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphmx-2-thermal {
+			thermal-sensors = <&tsens4 6>;
+
+			trips {
+				nsphmx-2-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nsphmx-2-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphmx-3-thermal {
+			thermal-sensors = <&tsens4 7>;
+
+			trips {
+				nsphmx-3-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nsphmx-3-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss-0-thermal {
+			thermal-sensors = <&tsens5 0>;
+
+			trips {
+				gpuss-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss-1-thermal {
+			thermal-sensors = <&tsens5 1>;
+
+			trips {
+				gpuss-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss-2-thermal {
+			thermal-sensors = <&tsens5 2>;
+
+			trips {
+				gpuss-2-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss-2-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss-3-thermal {
+			thermal-sensors = <&tsens5 3>;
+
+			trips {
+				gpuss-3-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss-3-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss-4-thermal {
+			thermal-sensors = <&tsens5 4>;
+
+			trips {
+				gpuss-4-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss-4-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss-5-thermal {
+			thermal-sensors = <&tsens5 5>;
+
+			trips {
+				gpuss-5-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss-5-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss-6-thermal {
+			thermal-sensors = <&tsens5 6>;
+
+			trips {
+				gpuss-6-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss-6-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss-7-thermal {
+			thermal-sensors = <&tsens5 7>;
+
+			trips {
+				gpuss-7-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss-7-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss-8-thermal {
+			thermal-sensors = <&tsens5 8>;
+
+			trips {
+				gpuss-8-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss-8-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss-9-thermal {
+			thermal-sensors = <&tsens5 9>;
+
+			trips {
+				gpuss-9-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss-9-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss-10-thermal {
+			thermal-sensors = <&tsens5 10>;
+
+			trips {
+				gpuss-10-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss-10-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		ddr-thermal {
+			thermal-sensors = <&tsens5 11>;
+
+			trips {
+				ddr-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				ddr-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		mdmss-0-thermal {
+			thermal-sensors = <&tsens6 0>;
+
+			trips {
+				mdmss-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				mdmss-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		mdmss-1-thermal {
+			thermal-sensors = <&tsens6 1>;
+			trips {
+				mdmss-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				mdmss-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		mdmss-2-thermal {
+			thermal-sensors = <&tsens6 2>;
+
+			trips {
+				mdmss-2-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				mdmss-2-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		mdmss-3-thermal {
+			thermal-sensors = <&tsens6 3>;
+
+			trips {
+				mdmss-3-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				mdmss-3-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		camera-0-thermal {
+			thermal-sensors = <&tsens6 4>;
+
+			trips {
+				camera-0-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				camera-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		camera-1-thermal {
+			thermal-sensors = <&tsens6 5>;
+
+			trips {
+				camera-1-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				camera-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		video-thermal {
+			thermal-sensors = <&tsens6 6>;
+
+			trips {
+				video-hot {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				video-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+	};
+
 	timer {
 		compatible = "arm,armv8-timer";
 

-- 
2.25.1


