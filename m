Return-Path: <devicetree+bounces-258747-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Nn8IRQhc2mUsgAAu9opvQ
	(envelope-from <devicetree+bounces-258747-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:19:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D7A719EA
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:19:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7032D303C4C6
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 07:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D39D36EAA3;
	Fri, 23 Jan 2026 07:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KyKQfKoc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hfOs8d2z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27D8371045
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769152409; cv=none; b=VtFVScipoYRekPmJFXWvJpPeYsSvZ1heBtdrZ1x14gXUrQmiWF/kIjnEk0C5kgKV6vbsS7cg86wUDv/dfRKFr27mdidfL3D70E4jYY+VtlH4b6HpnX5Ue3VMipvj94r3qX3CRgjFQwLE8C/gT4leOHWMmhdBO9TRx86LDbwcWTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769152409; c=relaxed/simple;
	bh=h2BGt+oLruhKNtRDwx2YFXay6bpO6ryLjJ9UHjI4QSI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XjO4Rh20ZXZtzO7lZDZTYGlXTUxN1RFQRcB1n4zKx6mTmCQCzHZQcSyVpeFoCfbZ0iDifQrcDj6ySGJh2klJ7zCF/s0NKT/ngXa4YtUnAx+ms84K3iKEfbBYt3Qtbp9l/qdo7tjbyPdK4WXn0p6AGOr6u2ccC5YskZvRYwGQ/OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KyKQfKoc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hfOs8d2z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60N6Rlei3503426
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:13:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rKsEvIZ1Zw3Y1fRSMj26DwJShx0tsjXzs7N8oHy/oLI=; b=KyKQfKocz96CECzy
	AqVZLzucjN1kKhfxDxueAIOuiygJDKxX4Q5+7ZULMiojE4g4LyEllDrrrUU1aViQ
	wQ5tUkazxEO6QvaNAr2aeh6uC2Lqid0ff/RhuxIhw/JMK07mjSqewc7piIG11qGs
	AH5YqLqONCRwqfPWk/ooBK5tvdCOxOB2QQt3MKmPbeRYgjjs2SzgJZfodT5N+qOs
	tuZBTsH4o7/NGg4iGvGxGk2/oyxwgcxkeSQZA4kf6aQICQxHbK4sih2vTawwe+93
	lqrtFMSnli137wBaGNG85DojNCM5uGicLzeewr+iLEpb4/aZh+LcJjT1pQU9ARLi
	LMM1MQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bus98241x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:13:24 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a77040ede0so17868395ad.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 23:13:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769152403; x=1769757203; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rKsEvIZ1Zw3Y1fRSMj26DwJShx0tsjXzs7N8oHy/oLI=;
        b=hfOs8d2zf6cYk1kYOO9vcp6S9OdRYLYuo0L6H2LXGeclbaa+7scz/K2YXIVOiU+iJp
         axL+6mlUKeSWcl7KGgxUq+zEr6+Qe2VHDjpJ90xpGs4Fck9IqxLkDk2hrD4MNz6DruKV
         DXT87Kt+0DRNhsAWE/elvwGvGH6GOSqTIHWO8fX7x7eyEIpoxOCYfXmucU2rzLQ4I5Ic
         B8q6VDFHaUazgBRDif3H/IBEqEr5Cb3AZqoJ2ox5envE3cTHye57XD8a7E237wnIiAAG
         ZMSnsQ6QLYkU+QKeOC1UYntBnU0Ph+5Wq/gqKIdQu8mIyCohqF5KOdxbnIVNzpfvmPxU
         bFKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769152403; x=1769757203;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rKsEvIZ1Zw3Y1fRSMj26DwJShx0tsjXzs7N8oHy/oLI=;
        b=FhY/hzyuqrwzDuD7dgkAqEl07/OAIwZ/AxQqSjX8BR67M3IV/SIqRQHLwkFAiVh6jp
         1ZWOiBUyxWzHoQCNkAJW051aqvqDgkW5c1koM0KTl073773S4Jy/G+eKYWItRzku+sW8
         miRvyYCrmF30DlTC6+thDQicU3+3KaEzlCWo+5tUIqlDSdPrP+3k27JCdwzVWAJnXEnC
         H6yIkzZXuWpnODY6Cll1ptJUTPORGIvEWwdJLHDOsnf6U/xm53JaZoN6oFLsvSQHHTQF
         qr1/s4/puflUYynyZ25JwlCrcqBC+EmUDKehg6O9XKEakWon+XxrvI2wRxK/aB14tYwg
         /PKg==
X-Forwarded-Encrypted: i=1; AJvYcCWf3AI4O9cLb5rPYdLVLapucKb1lt+d2oWJhT93rqjv/YM3rMrV7mUuzhmPMmFC3aZFcGdjbenlfWu4@vger.kernel.org
X-Gm-Message-State: AOJu0YwVx4DLNUq32YPSHF55wS1dS8eOZcUNxi6414TjIgtstE1dikdc
	6s7iwnzSernYg6whDiaMU0lOgcG5ufuNyn+D6rEEnC+7wzTlu25mYLsZ9HtSKjQmV1fA97Qoo0d
	cmYWY1UlDK+bCmNtXM6kGNaVwrPS7ksX4T1Qnd4P4uDYvm45fMfJWoAqAV3t0RoxI673Hx7zP
X-Gm-Gg: AZuq6aJ/WUrUkxECDAOXSZZ/oUMk5uIp4bmE/41/7QhuGuN9itmxUiBWKLbWn3zwpTp
	eqmnnIDO8fwNXchhpePVnqjMg3tJykMBG18HOmyTActUc8k9ch/GphvO+5gQr/+L0TblXAzvxrA
	MJLKLKmxlRM42ImYj9pJJwdixrS69v6SzrGGWRnX3DyQBxB2ZV8JislpPxFFu6yF3Ah97ViOJfU
	P1i6+c9vveXmFGmHN93ADiiv8pTD9b4WvwCw/qTDoZpJ+wy8X/ZJ2l4Nw5c/YIbu5QSQRvGqwpz
	jtee7hllyCogNudUiHiTKkn4coG3ot/sdnIfCWbF7LwnNQBBJNG2GiHN3uQDASdVurCk6S0WDQi
	Csuhse3uzzHNQ1lfr9AgKQS9KO2AEhkLcwxw=
X-Received: by 2002:a17:902:ce8e:b0:295:570d:116e with SMTP id d9443c01a7336-2a7fe741882mr22734235ad.41.1769152403261;
        Thu, 22 Jan 2026 23:13:23 -0800 (PST)
X-Received: by 2002:a17:902:ce8e:b0:295:570d:116e with SMTP id d9443c01a7336-2a7fe741882mr22734065ad.41.1769152402786;
        Thu, 22 Jan 2026 23:13:22 -0800 (PST)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802f978b8sm10979795ad.46.2026.01.22.23.13.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 23:13:22 -0800 (PST)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Fri, 23 Jan 2026 12:41:33 +0530
Subject: [PATCH 09/11] arm64: dts: qcom: sm8650: Add power-domain and iface
 clk for ice node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-qcom_ice_power_and_clk_vote-v1-9-e9059776f85c@qti.qualcomm.com>
References: <20260123-qcom_ice_power_and_clk_vote-v1-0-e9059776f85c@qti.qualcomm.com>
In-Reply-To: <20260123-qcom_ice_power_and_clk_vote-v1-0-e9059776f85c@qti.qualcomm.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Harshal Dev <harshal.dev@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769152357; l=1172;
 i=hdev@qti.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=h2BGt+oLruhKNtRDwx2YFXay6bpO6ryLjJ9UHjI4QSI=;
 b=35Vni9ObKR8T+NeSWe50ZZfTGBFFtwU+U3+b04NPyWq9zqUSk6nND8NBhgjiDt/ABTKDM9ud1
 Kc6IQoOLLd8De6SxUGsl30QXtrokCrAj7oqui8t2K8USTPzbtcPzgn1
X-Developer-Key: i=hdev@qti.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDA1NCBTYWx0ZWRfX/14D4ILM4EQu
 aRer2BtTS+dceUhisFbf+HeyQgIvYggpPzxvEAqx13tYn5umtPuxEXyRRgBEzJ3PokCmyhsFgUQ
 zGzEHcLcni8B44wV7syfi8Oj2CYiMVdgFrI4aM3nBjYti9HQfZiRj4vPeTpN1IIJtRAeN8ukofU
 QCNX6lFRju9aRN70DUPtVBz270SjL3jL+SgFtWf3nOPl/7wNbAT1fNrUP+83jMEcJqFOWmKlrYX
 EnU6rs3V+qc2878u44EpJjDfWpzjp2ZLVQMd/MNDbBcQan7rP3lL1OfrQXrFGXNfPCC/R5faAx8
 XNHS+swW6ex9zqfytipLLSSdWYPodNQHOP8JNlFpOZ/a5hY2nASSmxbip+Pc5EFBLAinOygknWF
 xXySOjNrlCx8d46YJt56flSF22gnnHvgkagpcCYuOmi31HNOsaNMP+vWwdhdyTsF1069Lv+ZKuE
 CwwH5iWaPBP/aRLlGeQ==
X-Authority-Analysis: v=2.4 cv=JuX8bc4C c=1 sm=1 tr=0 ts=69731f94 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=n08Rq-YSkjsL-2sbs4UA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: fvzxyOoDgD1oKSNDBsd61NzVQQPBna2i
X-Proofpoint-ORIG-GUID: fvzxyOoDgD1oKSNDBsd61NzVQQPBna2i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_06,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601230054
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258747-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1dc4000:email,qti.qualcomm.com:mid,1d88000:email,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E2D7A719EA
X-Rspamd-Action: no action

Qualcomm in-line crypto engine (ICE) platform driver specifies and votes
for it's own resources. Before accessing ICE hardware, the 'core' and
'iface' clocks must be turned on by the driver. This can only be done if
the UFS_PHY_GDSC power domain is enabled. Specify both the UFS_PHY_GDSC
power domain and 'core' and 'iface' clocks in the ICE node for sm8650.

Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 357e43b90740..c32a817efdb4 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -4081,7 +4081,11 @@ ice: crypto@1d88000 {
 				     "qcom,inline-crypto-engine";
 			reg = <0 0x01d88000 0 0x18000>;
 
-			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>;
+			clock-names = "ice_core_clk",
+				      "iface_clk";
+			power-domains = <&gcc UFS_PHY_GDSC>;
 		};
 
 		cryptobam: dma-controller@1dc4000 {

-- 
2.34.1


