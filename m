Return-Path: <devicetree+bounces-258310-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCgMGGwHcmmvZwAAu9opvQ
	(envelope-from <devicetree+bounces-258310-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:18:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BBF65DC6
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:18:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AE955369D2D
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3888742883B;
	Thu, 22 Jan 2026 10:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gm/or7ba";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZmxiOyZ+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81B9835770B
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769078996; cv=none; b=BtBwQzZyCRvRG8Xtj/2/IQTjCjjM+LZj/gvjiC85bbzr+2g25087L3OxtEp5KWRfgkTnffmdp6A1iKzH0VHrFDlt3N4lzxsJAmBls+cmf5WT9xpDnN9oppX3EH0zAazi9td7lVnVSUc3C9w+DByXk/rndCE7qsYh8+CMsFSoBpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769078996; c=relaxed/simple;
	bh=B5r+Yo/9SDYaZ8RGuV/vWORvd/4+ohBj6uYfAX9/P04=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DhjxoBux4zxXrE1enXVbfbOrJRuLlIXN2vLtzU3Gag4reKvigawchzap+jVm09t/vukZ0dyBKcHLCFVMiy+FB4hEqSM/FNQP2udx4CZdf9yWLQD3oMarnyCKMFphtZoyO8gVWwtvtC+pqXzk6+NPE19Wrw6KUqhNwZ4zshEC1TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gm/or7ba; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZmxiOyZ+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M6ravA724821
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:49:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eaVvPdxctaVfym/v4SBx0duzy99NPGMCqQ97rGguHm0=; b=gm/or7banhIUobRb
	Y6U5/fD5tQyaKKoOKNDIikR9TuSeUcdS5/zEsW4Cg4AONlMgCGCT2Iuw3WOMyx3Z
	EYzP1GYMysOjd4njJpv14m1U1Wur6HCgurSIji9cMS6BC0D7y5lzWyG8pkfd4Sf4
	NN5jbdbEb4Clfqc07BxewBRNT3UCDH06ZcmAlAmshlhVlGGBWUKMX2xzq6r7lgzQ
	SaMsnj3AYr33shWK+6JbuWOd+VOvxqRUvQ4UeKfbL5qv/eH2LgeDN+3OeXcHmi5u
	GRCsehfWzXc53zzUXVIvXRsMuzIeAerg1Bt0paTLWBIDGd3PmTWQQVOa2hoocwrD
	NbBl4g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4buf1bgqm1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:49:53 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6a7fb4421so189987885a.3
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:49:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769078993; x=1769683793; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eaVvPdxctaVfym/v4SBx0duzy99NPGMCqQ97rGguHm0=;
        b=ZmxiOyZ+djPLvgJqQ5NRJ7UohAyvrkkQhcBW73AkjmdFIbuORls+b1EhiHW3TGYSVV
         V3XfPx8qc1XsFvxis4iEq3cIVCFOtHqxNLeNSCXuPzYyi/xIU4QbnEwhOYkGI4TsfIDK
         oz8GElO/cMTzBdVHAlHUJhlfKOov8VNR+ioPGfwTklwt3m9ecUPthrKMXNLFIGPYwnD2
         99dq1N2zx7mXd91FGGMrRAMK7VmAsWlb58+fkTJKpd5PJ7OeJU3zgROZERyczNYf2vcF
         W6fAmbR/oUr7QPUdps/Diu70mnxgYG1uNH4nqKX7pNXxfWgKXnyIgY1KaIWVgz4MSFJA
         hqOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769078993; x=1769683793;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eaVvPdxctaVfym/v4SBx0duzy99NPGMCqQ97rGguHm0=;
        b=OnQqUzpigOwQswlpzm0v3Gsz9jTDEcg9lkME9ZTcSCigqiZC9smErKw6dT0xUkXm//
         e6DYH5IEqmjwQe5lgvDh6ixB+GZo8TNs87IzbfsxOoOGXIOCY/vdp0iMWzUcx4ePI+eF
         mcx5++BdxyOnFQtoOOZHuy4x2MgJWE8z/oEZJSZb8ythwm8Wv6jKLgZ2MzGxVDS6Y7Cd
         3mLqBRT8jfZXl59r34H6W1lotRB7U0J7gHdCmoUlyIRRViTgUHOGkgPQNjO5V7+NwNdT
         CfHM+Urr4kyfdAB77hNQSy0utEAGBFYR7z66n3tc6Q3bF7l/9KnDxjS/FH2PSS+ff4+B
         rLZA==
X-Forwarded-Encrypted: i=1; AJvYcCVpbZToiHyF0n84ADq/uGJwAghCOTFBLCbd8aSvXcZX3hqeIqeLjFP9U5ZC2P3V955rTvvciSbTP7nf@vger.kernel.org
X-Gm-Message-State: AOJu0YzCjMLDoQuvtK5r+FXMDMmJ9B+Z9OWv/omopCZ2HzE60Wt4JMUt
	qniF3cjkE6wuHzXVTdxL9n472r0HEbxuQ05hE5Wr52mRvL7Ah1PQ0k0+KrN/a0Ljq4iviA/aZIS
	tdIY06cb/Or+K8s6HjtZwT/S3ikC4x73fUivnNRMMMN3Uf6iyIxsSQ7irpLIgZSqM
X-Gm-Gg: AZuq6aKnR9aqr4FqZl5dOKgy6mRS14yrNjSQUabzz5f7hvFigigik9oZDAw6KwdQGgY
	QWydTrYoPZd7oLe/OmpP47YCmISeg9GQ2Vbh06CYUCfnxVxEtyuRM0AU1Fpy9A0JVb4QcmmGixJ
	xjHOJHhVio6tFmzU8GYSCY5YjWm9AWQ04giMhujFaIg7JI859zoHaExb1MWz3rtUx0EQa05FhWa
	gjx14LIR73TIQQJCtmnXsZFVQB/dBDbrLhVtwQJLInAyA1+Ok1ZTTR1w7UvE2M6qDg407D9V2tM
	TgYTeVxy8OhnIluMebo8DmKDxWUWrlttvUPE9t3SVh7/WbiBwlowNf6sM8zy2wsiyYe7nAgZDEK
	h9FE0q2g68mVeAl48dw/cU5Hg49o1obaeBgYZj2ll/0rQTC+pZIz28bLpSIHFgJJ2CcvAJ2RCYF
	me
X-Received: by 2002:a05:620a:4081:b0:8a2:ee8:e7cc with SMTP id af79cd13be357-8c6a66c8477mr2937670885a.5.1769078992837;
        Thu, 22 Jan 2026 02:49:52 -0800 (PST)
X-Received: by 2002:a05:620a:4081:b0:8a2:ee8:e7cc with SMTP id af79cd13be357-8c6a66c8477mr2937669385a.5.1769078992452;
        Thu, 22 Jan 2026 02:49:52 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1d9ee19sm121704901cf.14.2026.01.22.02.49.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 02:49:51 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 18:48:53 +0800
Subject: [PATCH v5 2/5] dt-bindings: i2c: qcom-cci: Document sm6150
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-sm6150_evk-v5-2-039b170450a3@oss.qualcomm.com>
References: <20260122-sm6150_evk-v5-0-039b170450a3@oss.qualcomm.com>
In-Reply-To: <20260122-sm6150_evk-v5-0-039b170450a3@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769078967; l=1158;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=B5r+Yo/9SDYaZ8RGuV/vWORvd/4+ohBj6uYfAX9/P04=;
 b=avAvsXrSsBDrajbBbVZwDtpKrzztRYABQg9Drw+sLt8tWOBjUKXYhyJd0Aj5Lwaih2O4gak5g
 XLgbYhMHt2gC2zhOC+GhVdTii6z7WSaE9dVle2ZyLXVggnaU0ACmWXT
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-ORIG-GUID: iWYVvqTQTxL3JdHIGO4MLGfbtO2_8zza
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDA3NyBTYWx0ZWRfX7HvexGbXHLAE
 ejtkzR57Y27gS5sd2/iWgzewKWmpkyOAYuiAps7v+j6KZPAyO35ANXc18XpVRCxFMIPdOHH1VHG
 r1BXtO94CCns8xWkWKCvdbHAGPQ3ONglVmQCvPLQFxu58hEbIAyQn/A63d60Un+cEmCq6GNy9d6
 DqkQoWg3TbWSIVH5rlZpGMGeQ9tQs5XBFUD7ZG3IbCG2gBnyRks63lA8hGmQzPoCjUO1gxvvrwV
 k6sOvhw14BBS2Cu+attd5SrlAGNrYsXnXwApJANcTYxIg0AEtz5g56Dor/LWxmgYALnU76+Quud
 yzKe7Q/bixAuxVp2vVUu0upfMuMRyhiNVnew6u4cxarYjv3g2//zat3Cbk0lf6k2tJyLy7LYwxg
 YOX/EbeMHVhMDAUZJ9foAIaTfkeuSUKonYtzFPopxrMNWaBDv+gw9Zab/DNM+t7qdbvhXAZVEka
 6o2/t+5KuHZt8xu8aKA==
X-Authority-Analysis: v=2.4 cv=G+0R0tk5 c=1 sm=1 tr=0 ts=697200d1 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=MV-VTd0to6NmDFHxSyAA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: iWYVvqTQTxL3JdHIGO4MLGfbtO2_8zza
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 phishscore=0 adultscore=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220077
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
	TAGGED_FROM(0.00)[bounces-258310-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com,linaro.org,pengutronix.de];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,linaro.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenmeng.liu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 23BBF65DC6
X-Rspamd-Action: no action

Add the sm6150 CCI device string compatible.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index a3fe1eea6aece9685674feaa5ec53765c1ce23d8..d3f87da54fcc14a8f808f34c94551583d8deaabc 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -33,6 +33,7 @@ properties:
               - qcom,sc8280xp-cci
               - qcom,sdm670-cci
               - qcom,sdm845-cci
+              - qcom,sm6150-cci
               - qcom,sm6350-cci
               - qcom,sm8250-cci
               - qcom,sm8450-cci
@@ -249,6 +250,7 @@ allOf:
           contains:
             enum:
               - qcom,sa8775p-cci
+              - qcom,sm6150-cci
               - qcom,sm8550-cci
               - qcom,sm8650-cci
               - qcom,x1e80100-cci

-- 
2.34.1


