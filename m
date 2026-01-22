Return-Path: <devicetree+bounces-258301-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCE1KgADcmmvZwAAu9opvQ
	(envelope-from <devicetree+bounces-258301-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:59:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C4A659DF
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:59:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0ACA9883B6E
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:42:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EE48421EF3;
	Thu, 22 Jan 2026 10:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fsN8RXOA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Lv5AZPWM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD693F23B1
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769078475; cv=none; b=tiPYw3q8g7Ufhqx4eA3dZh5/DPnUx5t7S2LfBM1t6uo2nzaXzPXB6UpS7I1RIq5OpMN45Yq2YMM36D8g4WijjBH5cBeYLWpnY2SVx7FupeRnSE0U1OXNbr/HZWriCm4+j0JYLxwft2V3tz01kRKIyUf0aTgGU/694XZ7yUl9PgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769078475; c=relaxed/simple;
	bh=+gPwHSHSjjDjQ2M/iiVDFIMHqWIJ4UsMUFWEKECMfi8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aZc6aLH4IXmm8fzqA4l11u41cxo3FKa17uXPjEDq+XNOjqVpANRNm1qmLrQ6Se/FmAcAmE+VuJk/BKTylrtPxoHqF7E/gvvZx+b9PBGI17RRG5AQPb1URapWKnr0HAr0xM2PBXd4HqqBphYotfzMLEy39X6OpJAmvj6L++StlNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fsN8RXOA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Lv5AZPWM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M8kqVd3463197
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:41:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JWYcBPv/ClJ+iQbZUlROViXdeYZuC9cdTF1Lu36R6EI=; b=fsN8RXOAJjPOA6Cm
	y/yUxB1peuRhBeExAz8B5tjx5Y5IIs5rQUPXdkfQ+jaEmjKmqGhXDbW6yjZ3NqPn
	EWD5c+A1scICmaHx30YPyMhx/JI0gQgoO3TUqpJYWJh5J9RvTb6mkvDoP6lQzGAc
	K22WbCWqsNP9QFjsSIvYf0F2JxtepUu5vi3cpkQ+IptLqtctMqlps2IrmGubBVge
	0I22MvqJqDCxUvM8bQPOEwa1EbCmsrq3LM3U/Pze72jjLAcb/lV8bgTq4WwhW0Ru
	NrIk13ApB/URdYFo4ZbSNN5pkTGJWPJmKrEl0KGzuqxHdt72EkYCyCfcHPRn1jDz
	eraM8Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu0653hef-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:41:12 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-894766748f9so31694226d6.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769078472; x=1769683272; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JWYcBPv/ClJ+iQbZUlROViXdeYZuC9cdTF1Lu36R6EI=;
        b=Lv5AZPWMMugCXEHQIecXuDTuBe27q2duyD/zZpEqT32vOgk1nUxppzEbWcKcj12/pb
         Fd5NkYIO0e+WFuv7U0In04Nb9ruVL/Y7XeOs+chw7q8o3rRjc3khSjV0SKEkliGP1+iN
         4lIEcYE37AHQzeYwBgJJ0bY/YyDH3D/IuEvb38phgw8vq6jiCJ4IevCpMSZwNk5RjpOQ
         oOT4Iyo19Q2nGWNGCkkPBKkrCGmdImGezaId0iMfIxDHRV9nc9l71i1yXL9QPTMzn1zI
         zZM7A5aB7u7y8Cb4Cv/7M5wBshm6pE1sQpD7VG4+L8S63fBWooyU468rv5/8nLkxKxEm
         3N+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769078472; x=1769683272;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JWYcBPv/ClJ+iQbZUlROViXdeYZuC9cdTF1Lu36R6EI=;
        b=CBRxKgAji1U2WBy4ZWw70rTxhFXYGyQEj8YZMlU7+lhpyprPfJmt7aL/l777aWS+wc
         9Tx6lUOlSoazMgQ0P/DFvFpAqPx447i+gLqbkVHP/Mb2cGfBjLMbUumTBGBAZ5MOJCNu
         3lDZVC8zuku8wC2vRVstiIj4/FH7Tbqc0mVIUamY87yZENk11Q7BI8630YIpzjdjV5yd
         QKixfPw9wCvxTyg844hdEU87tlksNpMDj1CsGU0uboSk3iyc21Oae/+cmCrkwp/S9NUs
         3R/0zyUyqVh+/unNoYbEyT5knse0p92d3MpnQq2HCU7dZeemc38Sretb2LxnMwb0mb2a
         Oj0g==
X-Forwarded-Encrypted: i=1; AJvYcCUpuPwCglqSaTRaP2ctmZvyzKVqlXl+dEMEXHNt+3xtI7dfJyggjeTV6FvrQPCn2RwCtBp50r33Kn5u@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/Y3iYWsJ24YFXS/P4E+1sWSLUJskdOswuxP5rbTsN5sxwK17I
	nyk9zOFxKaelmgCg3a6mlox2bycNIKAH7SOv6F9byCEX+5du/x8befEnAy0svIixgChLjXfZVun
	CKPQtKIn4QjBKffdin1vRWMLsdb/BnaZnCPBW4nPQ4L+1jl1ig2js7Ucqzuf7Rw7P
X-Gm-Gg: AZuq6aLiYxZa3f7MV/9BNVK82I9cbY2B2TNOrrKMfibcfOB1UulJhs2jkPjhWZ3WFAU
	27OHSbgKJ4FtPMPxaTuI4BO5JDKOvbfcaNLtGaT/pOSlrI84xNMj7ymc+/Ld7SagrrGJ6aYC7dx
	t8er7ov/fKmIIeGOuGjVZsKcQjomELSi9gtrWNIrvGbhu23wIgP1jSxkfMMI7PrOcTNgCyJE2F9
	MRDompV+wKEOWVwxeagic2L55E+tUTRCsJAbqILn11d/E2r+5Xic2mqMcgMIyqWfH1zVqrqsfj8
	eejr8+cnj1J7An6icP4ufUQmMyzua/UHp6lRzfdRXUzAm/Vr3fK31B33Il8l1vDH1sbse/Yq5zW
	/YAwX+gQ3O8eZU8Y0tWFBjWKAHvLe5ytFNqrll890mwcBsBynGnEOiaYmwUe26nfzlX9bcO+3xK
	s3
X-Received: by 2002:ad4:518f:0:b0:894:3c22:e790 with SMTP id 6a1803df08f44-8943c22e824mr177706516d6.58.1769078471543;
        Thu, 22 Jan 2026 02:41:11 -0800 (PST)
X-Received: by 2002:ad4:518f:0:b0:894:3c22:e790 with SMTP id 6a1803df08f44-8943c22e824mr177706066d6.58.1769078470661;
        Thu, 22 Jan 2026 02:41:10 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a7260229sm1387868685a.42.2026.01.22.02.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 02:41:10 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 18:40:46 +0800
Subject: [PATCH v4 1/5] arm64: dts: qcom: talos: Add camss node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-sm6150_evk-v4-1-a908d49892e7@oss.qualcomm.com>
References: <20260122-sm6150_evk-v4-0-a908d49892e7@oss.qualcomm.com>
In-Reply-To: <20260122-sm6150_evk-v4-0-a908d49892e7@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769078453; l=6743;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=+gPwHSHSjjDjQ2M/iiVDFIMHqWIJ4UsMUFWEKECMfi8=;
 b=ApRLJCKQVFVGAnMWxcNk1VZSN9nh7VRLeQNHCyDUVOYLttV3Xgub24O15dffcm0TIXs1CJzaY
 X+OjVPMWjHNBp2KyAbq1L2bBpyG1wr7DbFvqLj1IVnuvLYwd0iejUkr
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Authority-Analysis: v=2.4 cv=HOHO14tv c=1 sm=1 tr=0 ts=6971fec8 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=aV1HOqfba-nwUXNNIVcA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: x57lEbuBNf2x3VvbGu7PvKCS-wfe8Ata
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDA3NiBTYWx0ZWRfX8bewwSDBbcMb
 u7RTt8tcOs9oG0P0lNsW493Uw8OqhmeEOITZWPG6icGAzoiOEU4/WDzMgpEaBwdfFMtbcr3kJVG
 vdXrqRojsKqEf7ewLQZcNOJiMkhZr+Eexhem5GhG/h6AeUrHpgAVvCN281gE6MFrTy7+BjhY7NF
 n6xwtvSded0j73D6uJBeP/vs4HxqnSJXUkx7yYPMezEbHkXHD7pxv9HoGBdAS2VzG7cRBjy9/wj
 cxbpxSNGZOVq+Ghqqe38yczezY1K6DoOqKZ9ohfHb7gaATByIjzBeJmZfN+J/YcclatbtJWQcHF
 K0LE3OsfJifNLOFE/dTjfd+Tl/zXU6xzJphpUa7XB9zvz1U43u4Ms84AAusU/22tF3Im1OyaVzJ
 7ooQM2X40P37qrDvxnWscbWBVFcno1fjfFtbjrthxTtZmcGA1SusJsitNbRKp5R3UHm+eyEZVMa
 /v5zm4l8F0wvnFlKOSQ==
X-Proofpoint-GUID: x57lEbuBNf2x3VvbGu7PvKCS-wfe8Ata
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 spamscore=0 bulkscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220076
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_FROM(0.00)[bounces-258301-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com,linaro.org,pengutronix.de];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,0.0.0.2:email,ab00000:email,ad00000:email,acb3000:email,linaro.org:email,qualcomm.com:email,qualcomm.com:dkim,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.0:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenmeng.liu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 16C4A659DF
X-Rspamd-Action: no action

Add node for the SM6150 camera subsystem.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 200 ++++++++++++++++++++++++++++++++++++
 1 file changed, 200 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 8491a6269c32e679faf0e4a40b451432ccd89237..3e1d85b6eacb90b48496ddfee2db27c586f3331e 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -3789,6 +3789,206 @@ videocc: clock-controller@ab00000 {
 			#power-domain-cells = <1>;
 		};
 
+		camss: isp@acb3000 {
+			compatible = "qcom,sm6150-camss";
+
+			reg = <0x0 0x0acb3000 0x0 0x1000>,
+			      <0x0 0x0acba000 0x0 0x1000>,
+			      <0x0 0x0acc8000 0x0 0x1000>,
+			      <0x0 0x0ac65000 0x0 0x1000>,
+			      <0x0 0x0ac66000 0x0 0x1000>,
+			      <0x0 0x0ac67000 0x0 0x1000>,
+			      <0x0 0x0acaf000 0x0 0x4000>,
+			      <0x0 0x0acb6000 0x0 0x4000>,
+			      <0x0 0x0acc4000 0x0 0x4000>,
+			      <0x0 0x0ac6f000 0x0 0x3000>,
+			      <0x0 0x0ac42000 0x0 0x5000>,
+			      <0x0 0x0ac48000 0x0 0x1000>,
+			      <0x0 0x0ac40000 0x0 0x1000>,
+			      <0x0 0x0ac18000 0x0 0x3000>,
+			      <0x0 0x0ac00000 0x0 0x6000>,
+			      <0x0 0x0ac10000 0x0 0x8000>,
+			      <0x0 0x0ac87000 0x0 0x3000>,
+			      <0x0 0x0ac52000 0x0 0x4000>,
+			      <0x0 0x0ac4e000 0x0 0x4000>,
+			      <0x0 0x0ac6b000 0x0 0x0a00>;
+			reg-names = "csid0",
+				    "csid1",
+				    "csid_lite",
+				    "csiphy0",
+				    "csiphy1",
+				    "csiphy2",
+				    "vfe0",
+				    "vfe1",
+				    "vfe_lite",
+				    "bps",
+				    "camnoc",
+				    "cpas_cdm",
+				    "cpas_top",
+				    "icp_csr",
+				    "icp_qgic",
+				    "icp_sierra",
+				    "ipe0",
+				    "jpeg_dma",
+				    "jpeg_enc",
+				    "lrme";
+
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
+				 <&camcc CAM_CC_CAMNOC_AXI_CLK>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CSIPHY0_CLK>,
+				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY1_CLK>,
+				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY2_CLK>,
+				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
+				 <&camcc CAM_CC_SOC_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_0_CLK>,
+				 <&camcc CAM_CC_IFE_0_AXI_CLK>,
+				 <&camcc CAM_CC_IFE_0_CPHY_RX_CLK>,
+				 <&camcc CAM_CC_IFE_0_CSID_CLK>,
+				 <&camcc CAM_CC_IFE_1_CLK>,
+				 <&camcc CAM_CC_IFE_1_AXI_CLK>,
+				 <&camcc CAM_CC_IFE_1_CPHY_RX_CLK>,
+				 <&camcc CAM_CC_IFE_1_CSID_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CSID_CLK>,
+				 <&camcc CAM_CC_BPS_CLK>,
+				 <&camcc CAM_CC_BPS_AHB_CLK>,
+				 <&camcc CAM_CC_BPS_AXI_CLK>,
+				 <&camcc CAM_CC_BPS_AREG_CLK>,
+				 <&camcc CAM_CC_ICP_CLK>,
+				 <&camcc CAM_CC_IPE_0_CLK>,
+				 <&camcc CAM_CC_IPE_0_AHB_CLK>,
+				 <&camcc CAM_CC_IPE_0_AREG_CLK>,
+				 <&camcc CAM_CC_IPE_0_AXI_CLK>,
+				 <&camcc CAM_CC_JPEG_CLK>,
+				 <&camcc CAM_CC_LRME_CLK>;
+			clock-names = "gcc_ahb",
+				      "gcc_axi_hf",
+				      "camnoc_axi",
+				      "cpas_ahb",
+				      "csiphy0",
+				      "csiphy0_timer",
+				      "csiphy1",
+				      "csiphy1_timer",
+				      "csiphy2",
+				      "csiphy2_timer",
+				      "soc_ahb",
+				      "vfe0",
+				      "vfe0_axi",
+				      "vfe0_cphy_rx",
+				      "vfe0_csid",
+				      "vfe1",
+				      "vfe1_axi",
+				      "vfe1_cphy_rx",
+				      "vfe1_csid",
+				      "vfe_lite",
+				      "vfe_lite_cphy_rx",
+				      "vfe_lite_csid",
+				      "bps",
+				      "bps_ahb",
+				      "bps_axi",
+				      "bps_areg",
+				      "icp",
+				      "ipe0",
+				      "ipe0_ahb",
+				      "ipe0_areg",
+				      "ipe0_axi",
+				      "jpeg",
+				      "lrme";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_CAMNOC_HF0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&mmss_noc MASTER_CAMNOC_HF1 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "ahb",
+					     "hf_0",
+					     "hf_1",
+					     "sf_mnoc";
+
+			interrupts = <GIC_SPI 464 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 466 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 468 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 477 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 478 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 479 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 465 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 467 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 469 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 459 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 461 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 463 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 475 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 474 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 476 IRQ_TYPE_EDGE_RISING 0>;
+			interrupt-names = "csid0",
+					  "csid1",
+					  "csid_lite",
+					  "csiphy0",
+					  "csiphy1",
+					  "csiphy2",
+					  "vfe0",
+					  "vfe1",
+					  "vfe_lite",
+					  "camnoc",
+					  "cdm",
+					  "icp",
+					  "jpeg_dma",
+					  "jpeg_enc",
+					  "lrme";
+
+			iommus = <&apps_smmu 0x0820 0x40>,
+				 <&apps_smmu 0x0840 0x00>,
+				 <&apps_smmu 0x0860 0x40>,
+				 <&apps_smmu 0x0c00 0x00>,
+				 <&apps_smmu 0x0cc0 0x00>,
+				 <&apps_smmu 0x0c80 0x00>,
+				 <&apps_smmu 0x0ca0 0x00>,
+				 <&apps_smmu 0x0d00 0x00>,
+				 <&apps_smmu 0x0d20 0x00>,
+				 <&apps_smmu 0x0d40 0x00>,
+				 <&apps_smmu 0x0d80 0x20>,
+				 <&apps_smmu 0x0da0 0x20>,
+				 <&apps_smmu 0x0de2 0x00>;
+
+			power-domains = <&camcc IFE_0_GDSC>,
+					<&camcc IFE_1_GDSC>,
+					<&camcc TITAN_TOP_GDSC>,
+					<&camcc BPS_GDSC>,
+					<&camcc IPE_0_GDSC>;
+			power-domain-names = "ife0",
+					     "ife1",
+					     "top",
+					     "bps",
+					     "ipe";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+
+				port@2 {
+					reg = <2>;
+				};
+			};
+		};
+
 		camcc: clock-controller@ad00000 {
 			compatible = "qcom,qcs615-camcc";
 			reg = <0 0x0ad00000 0 0x10000>;

-- 
2.34.1


