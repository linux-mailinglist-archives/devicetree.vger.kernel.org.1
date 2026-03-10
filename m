Return-Path: <devicetree+bounces-273245-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OucJSCSr2mCagIAu9opvQ
	(envelope-from <devicetree+bounces-273245-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:38:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 429AC244E4C
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:38:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E902311DC91
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A91CA3B961F;
	Tue, 10 Mar 2026 03:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VYTa55Be";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VcUit5ub"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74CAB3B95F0
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773113803; cv=none; b=mbn9zefp/CJEmQovr79TomF+LD5urF1R8iGxoyhKOrL557DUQd11dAhV3jdq3r08FUwZ/h4BurXaMeQw7WA2Ya9/1KnyZl6s0pGqHsnZX90EgNFhBv59jcZxpXbVE8LsoP1JSjT6sRyfi1Xu1g0yWbStiJzVOgRySxd8/unA2Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773113803; c=relaxed/simple;
	bh=mg31LB+leIUTk+NAma1u/7Avcu+s85265QudNG2Rx6Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OOf9O7k1ylplmaNpQKzKEaRxsD7FlAkWyXCLFehPdAizQyIZu0IR5yD+oAnxisUm4TCvqEhwWwOK06pZUjjy20T23SOu5beKgAg7zinIKgoYMXdB1Zzp8TZv98aQEIyHIsg2Tdpsfi+rh3yooucaJy8p+kExyP5nI8WAIg/9Yms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VYTa55Be; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VcUit5ub; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2EObs2817430
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:36:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YUSWifLnFZE
	lfRttPzEiIk0stf+6yjPu+zvqN7hjHrU=; b=VYTa55Be1sv0sS2GRTS2HCzm8sG
	c8g3Pn3xXaX2Bk2BuaAU6hHfIyl+ucjPjHBr+EtplhbDieHfQ9dPepkkd6YTYjMr
	TtlfyXPi/T70RxxE2nVdhyYZ2ICxnyxljBRAbisRH/y+XJAUVqpIrar8JO1nXSky
	IZWkdPof5A34kE4Y1LbzoP8u3ZJkJ1vaUNFdlov/PM122IWfCi5HDKlkjjhTjFGi
	tptMNMQIIvzMRz/yHO1k02NzGLxO608vJqMPT4T6Fj09B129NDB0LzgPtjGpw7GZ
	VH8vjdWKRg21HyQDIQU0r2BFckOEHlhNdCuUDSlPx4Vwv0vL26KmLwE+RFQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csyr42ah0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:36:41 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ae53ec06b0so438008485ad.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773113800; x=1773718600; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YUSWifLnFZElfRttPzEiIk0stf+6yjPu+zvqN7hjHrU=;
        b=VcUit5ubeJ++sRv/5OkKlxBMDyoL1UqLjeOirpLjyzB5pIulsZtvBerccgg8ryIuFp
         pdDyUscU9m7N7F6uxU6ZAcug8Jt1e6NG5d0h21xRPufJUTIBD0QS3fbc6bJJEcgJZMEo
         B468djnl5TWzSGUFEYVstA5kAU8SR6QyV2hoMM9SYzcUbBNuYVT91BXkNADuvYAdXZ1L
         oVdIACABzl4LNlOU9/JwOlZYXOX2m9wk+7DFpyzlluFbgSTRKvS1A40m9xzzNHJTZthq
         7esT6Env0+80k+12PkUPc2oof+rrCL6wpeWPgGkjk4ZP99H47+Z8OgcAI1g7Hir3w4OW
         qEgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773113800; x=1773718600;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YUSWifLnFZElfRttPzEiIk0stf+6yjPu+zvqN7hjHrU=;
        b=lRoakXNMO8ocqEC1rB5lym8zss8CoLbEQXJFXQCzoq2EvmS3OufQXUG7v7m8g9LIT3
         fr/imYCK00a63c4U86eDUOqGPxX0XiQxL0+YR9O8XkZlPoIo/lY3VNXlfTisGUY7bRn2
         ej2wKMlOkXgXpz2SJUKY+lC6+beW16bjRE5WD0bLq1sJKnTHk6egxh1kksZVY9+X3OTA
         LWe1iJ0x8d1F1goACud2tfh0wQdR0Q0/s9FrmAf9MKaN5fbIxyiVg2iEzD+Vuorz60CO
         ZkH2qgyQrkS2BfjumO4tL/ckPEFRqfqUsIZ8igQtLB36oOXZAPhfub5sLZMIgZnYir2S
         nmQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWyw3HTLJYqnMtvo1LOVXqIWGSc9fAIcEbzYMDmfY6Vdv09LQqJdmxE5VODUfgBTqKe5A2T085jdh5i@vger.kernel.org
X-Gm-Message-State: AOJu0YxiL2/IL4eKNcoFIdyxUUm4+RwcVflNUhvzrkOUOWiv0o52GQZu
	YksrfQMZlgBRYwdkvIf51Z43kADqo1Nd/RS9nxcNqw9bBIjXdSzkY8gUq36OkRyKmpI5RcCHOam
	KzZjpxwAo4UHOKZ7kJQ8yIi6RRQN3lDUKasa6KPZApouDXZLimSBW3pssH+cG4V66
X-Gm-Gg: ATEYQzzbSr9X7Rr2cIY9e8mPqJ6nl7sTQlgoPdc3P5YHxPeQeXjHafSK6fJbiFONL8w
	3U5hhHVmupPm5v5LCnCrwCXOGTqv60KtydmOZSpz5pK5BmSWUnCgzVvxHaw6exim8q1Behlk182
	bFtPjY9DF9Nio//+nLaaT5BpAEyLpGlHla6bceEGvMnc1vpwMBa5enQy1tjB5urvmFr0BqVqlnH
	PD4s6e8FQoAwsVE7++97FA1tfrFyRtAUEYitrz/JR1R8A5ww2dgQuGsDvzWbwzcrKNAwFKC955r
	jpZt5y0R1VTttuX4vqisRhmnweGRZt3Z8RKn8dzb5lV1mc1AUzVy0ynvcZ8pLV4MBSr1GSdboMN
	5DjoEqR8taqq9C3R8LOD+0hd5TLRIRMEw1By0v7Qf+rDp+PU6QWX5T+fChFpMccTF8XycOcYhbX
	hQc2UuQ7bDEUzheGAxJGJIbuLpZcXDUrdLAyiE
X-Received: by 2002:a05:6a21:9d8e:b0:398:4b6c:5121 with SMTP id adf61e73a8af0-398590c6fd4mr12098027637.60.1773113800490;
        Mon, 09 Mar 2026 20:36:40 -0700 (PDT)
X-Received: by 2002:a05:6a21:9d8e:b0:398:4b6c:5121 with SMTP id adf61e73a8af0-398590c6fd4mr12098001637.60.1773113800088;
        Mon, 09 Mar 2026 20:36:40 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c739e182d72sm10272923a12.25.2026.03.09.20.36.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 20:36:39 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        mani@kernel.org
Subject: [PATCH V4 2/5] dt-bindings: remoteproc: qcom,sm8550-pas: Add Glymur CDSP
Date: Tue, 10 Mar 2026 09:06:14 +0530
Message-Id: <20260310033617.3108675-3-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260310033617.3108675-1-sibi.sankar@oss.qualcomm.com>
References: <20260310033617.3108675-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDAyNSBTYWx0ZWRfX//T1WLGiOioR
 +uFSigyN21+Xc/S+YcWDZbuqmq8In3QXOkimiE/U0+7ggdCf1MBtHuXleU+ixTrWWNwsjiS/jom
 UGLW82x8F8IAJipx5zAsUhb+YXnnE+SpIxaCxGNOIckGGB4Wi+WKy3TGyb5DPsdBXOqzoBES0d6
 FFoqgnGqf6N1MW93m5jML25bdI1JzDDcr+AjjscnwfKq6jEgnn9fvQYjlphDjvyT7CwCOOsBSfx
 8bkiLw3m/azocB6s1J+Vvq3fiv2ll9kCK+znW+pITjogvjGZe44wELOt27HIfV2MYcgi8HzCjff
 4wSQwQ7x6iEUVSQs2rk0z+qgVXYh1t0bDsy6t3ivK6sZc7WJi9U8a2aKUF24m9tMuC93BviwgHU
 sUloVIIhUl59F3gMHuvfYCfyZDy//SrE9NWzM1iii5OndsYHfsrIvhHWiUCe+SMud8tKdOrrD1a
 dFxeUAWToE8+iMUeWkA==
X-Proofpoint-GUID: 07iQ_2rxjoqXqiKyP4JsmNKwsOC90DKm
X-Proofpoint-ORIG-GUID: 07iQ_2rxjoqXqiKyP4JsmNKwsOC90DKm
X-Authority-Analysis: v=2.4 cv=KNRXzVFo c=1 sm=1 tr=0 ts=69af91c9 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=iOP-JMljhTESenzhlaoA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100025
X-Rspamd-Queue-Id: 429AC244E4C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273245-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Document compatible for Qualcomm Glymur CDSP PAS which is fully
compatible with Qualcomm Kaanapali CDSP PAS.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---
 .../devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index fb6e0b4f54e8..6a29d239ef41 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -35,6 +35,7 @@ properties:
           - const: qcom,sm8550-adsp-pas
       - items:
           - enum:
+              - qcom,glymur-cdsp-pas
               - qcom,kaanapali-cdsp-pas
           - const: qcom,sm8550-cdsp-pas
       - items:
@@ -103,6 +104,7 @@ allOf:
           contains:
             enum:
               - qcom,glymur-adsp-pas
+              - qcom,glymur-cdsp-pas
               - qcom,kaanapali-adsp-pas
               - qcom,kaanapali-cdsp-pas
               - qcom,sm8750-adsp-pas
-- 
2.34.1


