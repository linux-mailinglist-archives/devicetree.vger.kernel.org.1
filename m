Return-Path: <devicetree+bounces-262124-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJdTO+LAgWm7JAMAu9opvQ
	(envelope-from <devicetree+bounces-262124-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:33:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 947FAD6CD9
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:33:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B22A33013277
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 09:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D1CB30C602;
	Tue,  3 Feb 2026 09:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QdxbBZbo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TdJ/ICs8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E2E30F7F8
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 09:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770111200; cv=none; b=GLcreaOtOW5V7FiIFe3hnE/f1hbH/8dQ5nu4x31A04CxxoXRgvYfS7iXpUnMHX5eUFb81APyGjjwybBuCOTMaUoTjAyrFRHG0teHUI9LsYT7A9/F+1itTjlRaTfD5aTacAlS1xME7mM/WH2npjGGhUZuivh2iwAXj8Xu0uOs3dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770111200; c=relaxed/simple;
	bh=SddJbOlXRemaS+xs0O5DFcYSdAaiAYACiMw7pMSHwMY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z/0W9h3HaoVzhbdPcNc23ONrMwqzqwfTHZzWNWfoG8OaMBjFzgO9MCDvVJPUJqm00AJ7cbSo5Yj3oMM71yx+VyLgl4RIMnAFWq5bLlAD8rcri2rhMlTZ/KBp/BVXgtaerxowC/8RiDhEzgNrbpe4yIgwqLYb7SVW9S93M3LvOFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QdxbBZbo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TdJ/ICs8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6136iUfA256051
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 09:33:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EQDEF2kC33/fyL2nBGpvpqqwbZvWsduAc47Gm9ODysY=; b=QdxbBZbo6CS8MT/+
	gGA45Ze9Ix1Y6Y8CwK5/lF/YtVt32I0KX1kKcfgZ3vLbSxDeqn00E6V/FAuHa2xn
	7jkxucU2kpliK3yreysqT6SySJwAcdrAOGSm3Q1EJWxUEqmaK/FGt3/cQohy8D0j
	J8S82FLtgS8NUOZ2UZRm8aYXeYxYGYReL6gczVr8qteMGP/C0d18YM8CWecBQs6J
	yMh3d4aOCk9E8zb10gYr2w3MS9ekK9JA+T8Otb9LVYUPTvJqN7j86aZRZVNHNivJ
	GP6daCiKftq7P2SnLuZR3BaztVzPUPUJrrg3Yle6LmiMpYzndAjmCV7gWydB3d9G
	dhckgQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2v0kkhf4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 09:33:18 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-352e195f662so4672676a91.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 01:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770111197; x=1770715997; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EQDEF2kC33/fyL2nBGpvpqqwbZvWsduAc47Gm9ODysY=;
        b=TdJ/ICs8JiCHX4tI5wk40JRbQhLu391rAvyBVNaosFXAKDAuQmvusTww44gg6sP4fc
         OcaX9S4RpL0bUPdUqc2AAbHgsGEqMx0CN9ziBVf5bUqk5Hja6G0jY8vrYOYXIHK2W+Wm
         qwVVsabVLDm/x5uJJJRKyFzltoXc+3sryQCXEuwtd/E13sodgl0moaW1gA5TtfA1BnJL
         1TA3jyawtPggk1XEMYZzkHuOdNol+aAm+IGryZROnNi+8dyXCBI/8Q1k1heqYAC3qEh1
         /TX7XdTjsA81kA3z2x+wyOEbTwkOZKQ1NGeVNg011SIXCSaST9uh9drWOjAom6uVDmxJ
         J9lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770111197; x=1770715997;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EQDEF2kC33/fyL2nBGpvpqqwbZvWsduAc47Gm9ODysY=;
        b=v3u72kSCzoLF3s3Ec2D86SeJ7JHTALonKs/2ACUw7cyUG7b+7dO2H98hGQ1SjSMw8B
         tURxMSQsQ5mFz3FbP77kR63w77p8ykE8rCoUX2hBjvJVBfzmz0JWKnkoW/NVpXd1Ju2d
         0n99hjuH9NPvV8y6sjjSYzrTwhsfHld15yi5L1nKxsABc9aPjBeQfB0t7ty0GBdwKBXL
         CRDFcnaHVXBhDpAOrvefp3wYREPwW5mD7wBHlwsBu/4JoELH/JgawqJC1v02StJrPPMG
         kuRuZaSxnhmK5478HFCjh7qaIF/U5PTHFAdaFAalQw2Aod4cBVCyoq/FIRNrzYVwO1b/
         lQiw==
X-Forwarded-Encrypted: i=1; AJvYcCV3jUyllQcCf/PnytTFeiQJ5GmBAKOZm/fVSskXUtXTaNQDysgWQPMzHh8V4OrMTgj6JyGRDZlQVFlk@vger.kernel.org
X-Gm-Message-State: AOJu0YzuE7MJJuzpfU64rsjUoQDj3YYSB2+gJd2eeIQbSg+6ZcY7x6fD
	CDk7pX2MFG1+LUGjYPtmmJP85uJ3WHpzcmxivslfbmyNHLxEZtLWFju36qfdMapgGSgGpjjRzUd
	kOcgfM272tbNcLnKMUFaQTlFuCzNLqr5DOdJMk7Te8PPBkzQYEs3dqrBEBpkU5BGK
X-Gm-Gg: AZuq6aL0V6WWQvW/ZE7eIRDsnk6qURg3KQBp+SeZI/IbB0mTo0y7MpC34andcDU9Lf6
	IE1nkwU5du1ROXn4hFaBy+6Gw+EOFf7JedBSUQYlRffzpfIYPXvKPTENEANjrhmdCQJGMUudCQy
	A0I/a8mpw1vkwMj4VIn4KssmqSPv/cRr6pcP+YdKCd2XrTFGXc4EmqMUBA4HO02IGxBZNHk13lK
	kN4scwQHtQ4ZpGdr8KORzhusmqsvUtlppMZOE5UiR8YFuFF5tB7EFgX0ivVtylCJpd1Sc13xoRJ
	S2tPHVVZJbEUPGml+faaM9RtTfZQ1GKBo1jofFSQ9nfdUqD1EigykUTpDfVTfh56DYMjuNxnOdW
	qkrtIbgpPCX4v7s9M+P+cA+QE816OanNzlACGvNY8hPvyMKfBgIXNPTIWb0pQ4gud9jXcOGUu
X-Received: by 2002:a05:6a20:2d0b:b0:38d:f084:e349 with SMTP id adf61e73a8af0-392e0143724mr12396446637.54.1770111197070;
        Tue, 03 Feb 2026 01:33:17 -0800 (PST)
X-Received: by 2002:a05:6a20:2d0b:b0:38d:f084:e349 with SMTP id adf61e73a8af0-392e0143724mr12396417637.54.1770111196608;
        Tue, 03 Feb 2026 01:33:16 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b3eedd0sm162489155ad.3.2026.02.03.01.33.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 01:33:16 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Tue, 03 Feb 2026 17:32:49 +0800
Subject: [PATCH v2 1/3] dt-binding: document QCOM platforms for CTCU device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260203-enable-ctcu-and-etr-v2-1-aacc7bd7eccb@oss.qualcomm.com>
References: <20260203-enable-ctcu-and-etr-v2-0-aacc7bd7eccb@oss.qualcomm.com>
In-Reply-To: <20260203-enable-ctcu-and-etr-v2-0-aacc7bd7eccb@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770111187; l=947;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=SddJbOlXRemaS+xs0O5DFcYSdAaiAYACiMw7pMSHwMY=;
 b=3FDOhsv15jkr0eG+Zt0bF/AStNg4Qs3wZAy6nUUTYvvXIp3doY/zOiE46GrxOAMXTswMlRfFx
 nM2jVbfkQwvBVdhoYD+8WXRU0ZHH9eHjurpCNaVAzNaX1kESoyax5Et
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=Reqdyltv c=1 sm=1 tr=0 ts=6981c0de cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=K-gU5Sf5JpjFIvSPVLUA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA3NCBTYWx0ZWRfX/IJGHjQ8GTHK
 dXvAqvWGKuJBswrNhwyPU7t9m4zuioigOtoH4nmTH3B2fFaQxB7FdsFTVpm4vAVAPZ/+xFqsivL
 zbBVkKS1gnsRigoK2d9WNSO0ccVgUG+uLQxDyItURYyimxp3EYUTDj46h+vqIqhV60bFQDNJdZW
 2T2SgqMyJ9X/nepEbqamvdmxZ7mHUpV80Ai9ckzqD2hOwuVfE//6lQMuXGAzyJw9ZTwoFpFLLA0
 1t7ISk4BAxlGnNtnzDpnRIqbHgJyqWJ3R6T78P0frMWrv89cUVMsV+kPz6Sd/dgMDFmSTx6kGQ0
 RwsrdwWv6s3QkjSz4hjxWUs4Oxv2c8YM94i4djoixfDGw7aQUnMvgm72ZbhsNLn+Yc7AMACCyxc
 FRTtsrbNZk5YXB55G6vkS2Yxlm0DfCU8QosGGGTrkETjfXj91sa0Udbg5G+9CB/9B8Or0Z1k2Xu
 AvtQY3dQw8v5uCprOlQ==
X-Proofpoint-GUID: HoakAUXr28CuJfclx_192q02rW_1nmzg
X-Proofpoint-ORIG-GUID: HoakAUXr28CuJfclx_192q02rW_1nmzg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030074
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262124-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 947FAD6CD9
X-Rspamd-Action: no action

Document the platforms that fallback to using the qcom,sa8775p-ctcu
compatible for probing.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
index e002f87361ad..1b5830579fa5 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
@@ -29,7 +29,11 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,glymur-ctcu
+              - qcom,hamoa-ctcu
+              - qcom,kaanapali-ctcu
               - qcom,qcs8300-ctcu
+              - qcom,sm8750-ctcu
           - const: qcom,sa8775p-ctcu
       - enum:
           - qcom,sa8775p-ctcu

-- 
2.34.1


