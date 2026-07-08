Return-Path: <devicetree+bounces-322681-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AOO3KiUiTmpWDwIAu9opvQ
	(envelope-from <devicetree+bounces-322681-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 12:10:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EA0724141
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 12:10:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=RXrhovZP;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=Tkc94jnk;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322681-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322681-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C9B3C309DAE5
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 10:03:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7862839A05C;
	Wed,  8 Jul 2026 10:02:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2974938C2DE
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 10:02:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783504976; cv=none; b=qP9zYSnUcxERTC4k4vAxM5zbqK8Z4eXiofPkz7uHNXE9RleZMu2UCrieQOhWn3B6V2ittp/6fFAHDfm0gsKBAIpIMqtxokoUP4uBM3TJ0ftWMUvMX18sHx65Zq0XR6FSid5mxF1hhmafx2jn5nQ3gET5mfh5Ksfhxlmg8FkBVEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783504976; c=relaxed/simple;
	bh=mWA8/QzJVw/Z7Z45NGEAV1BRxr53CZ6L3rVVpjHn2gw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m4hJL9wKw4oBlIt16jk/R2f+N17Dox2YDfCK1SvA/f6lGbgztRBrLE90YtM5H6bgpIIOtezq/vO6SQznPUmzbyZg7OxovIM4QwdLgQECGaa7m4MG31yTFz413SQeE/NsrpVvNzQ0JZ5JwdVv+lV1UGkzzgQWufFTfejAbDLmclA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RXrhovZP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Tkc94jnk; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66889D5x2231102
	for <devicetree@vger.kernel.org>; Wed, 8 Jul 2026 10:02:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kjEckMXmIg3lTxAMQEusLsfGlV6CVK9DEapraoZ5Zsk=; b=RXrhovZP3PvSWbzR
	ksFZ9RNOYGYrCVPD/zXM1f9PST8UMaxfw+CT1sEsctUVC197z6nUPtfdOTnSvPwt
	9EvnL2H+4IEQrtL1oJiJD3wPMIz2ZAq3KQJFeRlD3l3g4DoI0mek3HgzUrQ6GjF1
	ZHOw6hAwF1LqJ2ZVSXRV0e3+f4JU9NXmWqpFGLoKnM4oICgXIqBfjrQZhbZxOY2K
	ey+w+6CCcPpPqgt27UCYc+z/oe2oAe4RXmfz+NGGaAu948Zq31JEqkv97y7APorO
	JmWbIhWyMD0kbc2KZrDJTxnizeaV6jJG5+fM2eO+1yAr3gLxnM58Vc96HmBV9Wqo
	xkG8mw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f95e5uw2v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 10:02:52 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3881937456bso888615a91.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 03:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783504972; x=1784109772; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kjEckMXmIg3lTxAMQEusLsfGlV6CVK9DEapraoZ5Zsk=;
        b=Tkc94jnkyece6fFyWKAIBss867zuGuhkGRCDBpuZ8CuXEto3L7lfHqnCmUAcO7dfWT
         gZlrZvD4sTVzxeHa4bWhteqnkdTwb5AIC1TUka5TYXmY870T8ZtyYM+cpvZZPfM27rqu
         1tOwHs027Tu/1A3fu7b7n38klKnYabkBuwxqTPCL3b21+BjPez5TlJ3gJXvWgnkDQoee
         ORw4/TeuLHcJ+v/bDXLQQSyUDWvpuV4M2Qm8JgXiTiFqW8gnbF+sZ3PjIlGzHOz21G6L
         0fOGPFPiy5z8DBabUcy53JOFtSlS2mFZAtvcjQVvfhUxcTtMLnQG+XwcajAtgdvOp1UO
         kddA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783504972; x=1784109772;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kjEckMXmIg3lTxAMQEusLsfGlV6CVK9DEapraoZ5Zsk=;
        b=XzeOFOUyl9KLjJFfceqxo5V+zdRUySkrprpknBzRlEvaai97HjrRHD3CmTNcaRN/R6
         KV77p/VQfKgcG744xtW/D0xOXHn29e1GUIq899ogB64so0WLTg/GsbacyYhsv84Ae1mi
         8jiqahhfVR2AsiKKZbzPJEJulDFTu75pffrSS0eq3dCh+8Fogc/uT3H13jtsFjTsYjVb
         a/VhP3lAaG88ym3F62CnWp/lEThpD0gDvi0B0dyIvK4JabtMiQoMAHR/QSN6Lkm0Dy5O
         +UHhRdd9/qna0a+WsrPyBdnBSgPMzWpG1eUzNPWSpfgq0ns/nvC48mRjNHfCWNQ7Go9O
         aH6g==
X-Forwarded-Encrypted: i=1; AHgh+RpxwGeKbwoCg7g7+1T4ldT6P4vkzofVnjmf6ZrvzHin9SWjJygbONx7Z7ObMFEFBczdfcM7bVsMLkAh@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7r9BvN+uqz8mVylhEb2sZe8+bA0ngF9xW+qY1DMdICMhJhWXU
	VcArteglgzW3+HBFX36Me6PAD7iQfoQaZ+0rEQv1Vsq99mjX3k/QHXsPveFgtgKFtybHuFEObvc
	Arcdq/J+Q8xhFHv1DmQqJNvtbe6u8O57A7Br3L/yLA9olDT1LUV3DNduB0HwJPCdz
X-Gm-Gg: AfdE7cl0DLCwuuo3JpB92yxSdD35ltT+L41XeF9fuM2Lqr+nzI54z7GAhnOvB4g9QJA
	rft+9IrNeuw1mJWt8soyV7d+eYe1+dbNnS2YX/Fp7XWrUhz/rGrUHQN+5JHsiT7wqsspxvgsAck
	wk6RLG1eQGOjGaAWsRTQpUhKPHLahk0WjR6VR/iIuXaQ2pZ5brvdX3n5X4Z4i5Yj8l/yKu+vyoh
	nmfBcmeAK+czQ1ngZ0rWUxpIkSty15xGvaiB1+8jrEnycyhpaITIZzCM9jRCml+6+ETOEWJdb3/
	b7Uo7brKBZ8lPvbwZIcCl5f7gUuP3nGRnatxxv9uGMlgxW5XFSNFFaKvqFgUUqhdx5/AJACW6j3
	8/w5O+BYJ2uDGzKx9wxWP8TuJ60/KHvrN0pix5s37tTzYLBHOpK/3Dfjcsg==
X-Received: by 2002:a17:90b:5845:b0:37f:9e21:91d8 with SMTP id 98e67ed59e1d1-3892f2f957dmr1733301a91.15.1783504971701;
        Wed, 08 Jul 2026 03:02:51 -0700 (PDT)
X-Received: by 2002:a17:90b:5845:b0:37f:9e21:91d8 with SMTP id 98e67ed59e1d1-3892f2f957dmr1733235a91.15.1783504971237;
        Wed, 08 Jul 2026 03:02:51 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-389098609c9sm875741a91.13.2026.07.08.03.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 03:02:50 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 08 Jul 2026 03:02:43 -0700
Subject: [PATCH v8 6/7] arm64: dts: qcom: glymur: Add QREF regulator
 supplies to TCSR
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260708-tcsr_qref_0708-v8-6-62c42b5fa269@oss.qualcomm.com>
References: <20260708-tcsr_qref_0708-v8-0-62c42b5fa269@oss.qualcomm.com>
In-Reply-To: <20260708-tcsr_qref_0708-v8-0-62c42b5fa269@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>, Kees Cook <kees@kernel.org>,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-hardening@vger.kernel.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783504962; l=1658;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=mWA8/QzJVw/Z7Z45NGEAV1BRxr53CZ6L3rVVpjHn2gw=;
 b=njv5GvrR6CxqyO/rfBEWhYrj79LNrA0OeHsYJ1b1kW23+8ptLZ407Ks/0tAsTLUuo/SZVR5X4
 Jgl+LL7XH5pBtqXE7TtSSPHdAokDQ4Qi6/eRKnVLnMWC9KkVeXWYXh9
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: URxHSxYsOKD-AjVhERh3yhVbhDWjPzom
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA4MDA5NyBTYWx0ZWRfXyDalch/xq41f
 KarkOmQWQYUauQyfz4S7i5zGy/qXZaFAxM13kHMVsKDRVKnq6vfomCJFCkpKa45CEamlphkUgwN
 cUYYCOZ+pOtIzlf0MYlLaciHg9b5nZA=
X-Authority-Analysis: v=2.4 cv=CNoamxrD c=1 sm=1 tr=0 ts=6a4e204c cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=n5gI8yOKKvUJs91qd4MA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: URxHSxYsOKD-AjVhERh3yhVbhDWjPzom
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDA5NyBTYWx0ZWRfX7VeVIcbYiEe0
 yw09+tpH77guOaaBaOrzgjnWJreWIpmLUpHzqiykvSy7IQkU0OoXpmeKFNr8h5JlwbAJa8IP7zm
 Jj+ySxmJQ82LdaqEXexWcHx9nqqFnuwo53cPeiLbHsz0c7uMY3RqegKxGtXBJY/2RarU4Cm4Qkw
 71nowtM7rteq9nr8fmWArMkQ7mimakQ/bnzRNtRkj3ixmyPsvcL7KQQzeNsbIf9GjsvL/sNPEGs
 xaolMDlT6Dk+58jL4VeOcx1wNKIeff5sIOhLjigvZ9HHIy3P7AvZQtTowyYa92Qxlw6pdkJr8na
 aE/pQb9dEGqhbtr1ab8n1TXjwuaW2wqiFa9um5dXBFKf/acccLYSpFvHc9jO9x98VCZG2LYm/bt
 5WkmX2pW6lMNEL4uaFJbPD51Tl0D98MEUCC5ArZBzEVUfwzsMQG5OH2M9NuqAWul2hQirGCoBSq
 aGKnIV5uNw8Yx+Oh3cA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-08_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 adultscore=0 phishscore=0 impostorscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607080097
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-322681-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,vger.kernel.org:from_smtp,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER(0.00)[qiang.yu@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:taniya.das@oss.qualcomm.com,m:kees@kernel.org,m:gustavoars@kernel.org,m:konradybcio@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:qiang.yu@oss.qualcomm.com,m:konrad.dybcio@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[qiang.yu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 23EA0724141

The TCSR clkref_en clocks gate the QREF block which provides reference
clocks to the PCIe PHYs. Wire up the LDO supplies required by the QREF
and refgen blocks on the CRD board.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 6125617de82a..44766a73b0d1 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -28,3 +28,23 @@ &mdss_dp1 {
 &mdss_dp1_out {
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
+
+&tcsr {
+	vdda-qrefrpt0-0p9-supply = <&vreg_l2f_e1_0p83>;
+	vdda-qrefrpt1-0p9-supply = <&vreg_l2f_e1_0p83>;
+	vdda-qrefrpt2-0p9-supply = <&vreg_l2f_e1_0p83>;
+	vdda-qrefrpt3-0p9-supply = <&vreg_l2h_e0_0p72>;
+	vdda-qrefrpt4-0p9-supply = <&vreg_l2h_e0_0p72>;
+	vdda-qrefrx0-0p9-supply = <&vreg_l2f_e1_0p83>;
+	vdda-qrefrx1-0p9-supply = <&vreg_l2f_e1_0p83>;
+	vdda-qrefrx2-0p9-supply = <&vreg_l2f_e1_0p83>;
+	vdda-qrefrx4-0p9-supply = <&vreg_l2h_e0_0p72>;
+	vdda-qrefrx5-0p9-supply = <&vreg_l3f_e0_0p72>;
+	vdda-qreftx0-0p9-supply = <&vreg_l3f_e0_0p72>;
+	vdda-qreftx0-1p2-supply = <&vreg_l4h_e0_1p2>;
+	vdda-qreftx1-0p9-supply = <&vreg_l1f_e1_0p82>;
+	vdda-refgen3-0p9-supply = <&vreg_l2f_e0_0p82>;
+	vdda-refgen3-1p2-supply = <&vreg_l4h_e0_1p2>;
+	vdda-refgen4-0p9-supply = <&vreg_l1f_e1_0p82>;
+	vdda-refgen4-1p2-supply = <&vreg_l4f_e1_1p08>;
+};

-- 
2.34.1


