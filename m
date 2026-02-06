Return-Path: <devicetree+bounces-263312-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OWZL9HGhWmGGQQAu9opvQ
	(envelope-from <devicetree+bounces-263312-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 11:47:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBBEFCC96
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 11:47:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F9AD302B394
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 10:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A319364EBD;
	Fri,  6 Feb 2026 10:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P91AGC7q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BNe67oLQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1281749C
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 10:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770374818; cv=none; b=niYkwNoJVJk0Re9EKwbFRaajeIjLWrce40GkbkCXGLOfeKQCSP62cwQAf9R9qDLmXcwDcAtzhxDjnj8BqDaUGkurhJdqEQJWZp+ZNCdIecGNLTGAuxhWMD5ESG8iwsjQi8i7YgztX+kEfoSuR/iD4vhOKEvDgSFFYmdL1jBzFN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770374818; c=relaxed/simple;
	bh=/GoALsNEBWV+r/IeYLl6dkLP3akRkqrGtuRWoj72boA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ksvzs+iKS/dUfoFYVIneya8eOLdH6gm317ntrc69iHEzWHyvVo76DAqU+x4QeCk8uGf8I8Ym1Es2WA1NNJ+njjiL78GuSFcNBB2BOipoTjawu9otMKlewP80mfAPtDuTYVCsV/GqRJZsAQCPsUimSwM40TgsI6to/H1PddJf7P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P91AGC7q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BNe67oLQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6169QSX72228113
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 10:46:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=tkLNbvBisK6
	a//gVRUApDWe5C5O7SP/FYdZn/r94fTs=; b=P91AGC7qQq70H726l63gOHEkiVW
	RqZSxVIYkuMNSeFRW1GK3PTRJxxVfXH9aVix0KHwU7u1fl4P2PbC+ll5Ic1fKpth
	2oUt3/4sdEFgx8LSdSgjDrjJnLpgj9XefYVg9PzvCDEIKCPlZFjCeSY1tQ6FDdO2
	I24bzbOrbLLO8UrbQsYHogWp86dvtRZIQD7phk2sAZ39MSvwmNr8ropoOB3xvIO2
	zIfFry8oU4CmQPCfNMDUinlc+Xr5XhnNGA8Q4IgEzWeI3LlbkYl9g0LLwUfNeDd6
	pSx3n8e0lAvq7XRdSFRL9n/N/kVNOBXlJOKFWa2No47vXDAP5gYYiIR8jRw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5dnyg881-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 10:46:56 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34c6e05af6fso578392a91.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 02:46:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770374816; x=1770979616; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tkLNbvBisK6a//gVRUApDWe5C5O7SP/FYdZn/r94fTs=;
        b=BNe67oLQFm3fLvV/1DUVf+DdTzBEiYBZ1MlzGVk8gZJ4mz/lNtjp2n1S/B6hyx7AuY
         PFV/MwWnsLi/ZwQbZvPcU2F50v8H6SIzjFFogRmd/QosBCkEFM4mHjV0DHoVNq1vii9y
         pyJ8aKY8wmTBjQ9LtC4CVPpBdGq2QevCbHzw6WTp1PKl0JlFbUSQRD2gnX4ljGjXy4gd
         AKsc39MLv6KFcwHmVNIofbJANxSiP2syz1hyM2qzUmWKmEfVeNdRqTT2ygjTUWXRlUir
         IEtPUZaBfz4N58p+Goo5m/5Q7LsYSroW/kj0v13DHSjlR24U/D3EiQtDro/4LO/fW3OD
         IVEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770374816; x=1770979616;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tkLNbvBisK6a//gVRUApDWe5C5O7SP/FYdZn/r94fTs=;
        b=auz23BSq4L92IZufU11hmT0WrZFXp0fqMAyXe4GnzAvf72fmnIDgiDKlCGyZeb1RGB
         eyh7v5P0nuxAlzpJldW9iHnYD+c/vOHbqXnKL4GlTzOaYSAuMMaAJBzTE9sR/FGkQQUY
         Z3zucEPKcGzkmoQCiVMM7ytS18v/WsHanF6wlbyCT17pMiyv5SUZJdHiOHh0ecjk3Uvj
         WQV4nJkWQOIHNmeSbHOFcWtNiWIZyr045pnDu5v+C4dvGPfqv/ObyQYFs0T8frFvA0Xu
         brLzgmxSdm77hWljK5/JuGxGDa8bcI7DLzheuajdXxNQcoPjkbAx0adzz7YJiYKSP6U+
         PwVA==
X-Forwarded-Encrypted: i=1; AJvYcCVlAzZ99UjeHrGiY2CBG8ZZuf3CoONUCDkyldEA9/tlS90nA02iSHHD85oQLtpBc7X5nV79ybtYb0ZU@vger.kernel.org
X-Gm-Message-State: AOJu0Yxs02tYsRhLuXUZwoVgvUFzrlE8uh7GqxIl54/k5HkPRU4sSrqM
	x6mpNvAIS5QqfytPITUh9uboryHbNPh15yL5YpmreV/2IVufN6TR7xlPUJJc0dsIbvTrvWaeLRA
	o90G3lkDH9Boezcv8NCrXA+uxjW3cVL6z8DQ3xB9xKR7vqQYlxWOjqTRI40sai9r8
X-Gm-Gg: AZuq6aJKVlTamuQQLnroJODRap8JM0lu/xLSnIK3Cd720BstsZogExlUMZ8RF9iGjJA
	qymKtHW2LsSfMX0dBnniJE5FN2D7+rDtCAXFfPNDOd/tQlUgpdTD+yv/XWUoIyNxnDtpyplNedq
	+KKFuPG6vNdVLJ+QAJNvnDtZRxR0QQ8sQqZ5u98NU5Mipx566vByTH1+ah5SXr15krEwYqpk5Py
	6RJH+LJ2ZCEaPpcO1Fmo6oe6y4eG6FbzXZn06SnHMuEVcSfsLxLBStQHXtcW3UL7je1ooPFw0Bo
	xijkOH4y9OHC+S4C2y7wO4+RErhypeeSuKDG8LVUu55tqGwF1UVfdGO63kT52awYIUOI76G87zw
	GXXDPLAvuZguKL8kQMi/EeZvoW/52BBdqnFviCWKnsdA=
X-Received: by 2002:a17:90b:1b51:b0:341:2141:df76 with SMTP id 98e67ed59e1d1-354b3c81322mr1925726a91.13.1770374815647;
        Fri, 06 Feb 2026 02:46:55 -0800 (PST)
X-Received: by 2002:a17:90b:1b51:b0:341:2141:df76 with SMTP id 98e67ed59e1d1-354b3c81322mr1925701a91.13.1770374815200;
        Fri, 06 Feb 2026 02:46:55 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-354b21fb723sm2081136a91.10.2026.02.06.02.46.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 02:46:54 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH 1/2] arm64: dts: qcom: lemans-evk: Enable GPIO expander3 interrupt for Lemans EVK
Date: Fri,  6 Feb 2026 16:16:41 +0530
Message-Id: <20260206104642.1038381-2-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206104642.1038381-1-swati.agarwal@oss.qualcomm.com>
References: <20260206104642.1038381-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: jOFHi3rGL_a7DaXkoH7-eLRrqWKQVAtL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA3NCBTYWx0ZWRfX9O8RtUzujojs
 Mji0VbBpbjFcfws9vuvTj5Q0qH1Fm/nuLmbzg3cNpdR3RExyV6bRiuaKZFhVQdu3qoYzc+tMTKK
 SA2FZWzLitt+wn1fNdiq9wUgGN1zstjwaW3rzqXhH4uAZptwwP5wNqC4rbzZ3PHcmczR8moIoEp
 l2OgV/Pw/BupP41X0m0tlO1CND6D53MjAZ3NPVaxEOQI47BNvPHusTu3TrMlAro74QS/BvKnLyQ
 grDxCVeHm5/J20sDcQsUkD5sLZGyRomgEfgS7xtj473O8NmzqKFxNI1n8wBxF1xHi+L90jaO3+w
 biLHXmKeyLxCH/WwoLN/nJnGPvKtmkIf7TxFj0gJ2hUqpaQkoiEbu0iyVRTQFdTLjO6IDThQAqu
 uIZ+rosmYR6rYGhL4sp5FUbsY15a/XFWZG0w38I+P/TwNThzelOiZx5cHmRHb8skfEUWglGjiAl
 6TiqrB5M73GmU8Slk0g==
X-Authority-Analysis: v=2.4 cv=C73kCAP+ c=1 sm=1 tr=0 ts=6985c6a0 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=RPQiPM-rC1IremnUZN0A:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: jOFHi3rGL_a7DaXkoH7-eLRrqWKQVAtL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_03,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 phishscore=0 adultscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060074
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
	TAGGED_FROM(0.00)[bounces-263312-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.50:email,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1EBBEFCC96
X-Rspamd-Action: no action

Enable PCA9538 expander3 as interrupt controller on Lemans EVK and
configures the corresponding TLMM pins via pinctrl to operate as GPIO
inputs with internal pull-ups.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index a549f7fe53a1..473cc2a81670 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -649,6 +649,12 @@ expander3: gpio@3b {
 		reg = <0x3b>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupt-parent = <&tlmm>;
+		interrupts = <39 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&expander3_int>;
 	};
 
 	eeprom@50 {
@@ -894,6 +900,13 @@ ethernet0_mdio: ethernet0-mdio-pins {
 		};
 	};
 
+	expander3_int: expander3-int-state {
+		pins = "gpio39";
+		function = "gpio";
+		input-enable;
+		bias-pull-up;
+	};
+
 	pcie0_default_state: pcie0-default-state {
 		clkreq-pins {
 			pins = "gpio1";
-- 
2.34.1


