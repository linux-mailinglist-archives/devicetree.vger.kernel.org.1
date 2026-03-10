Return-Path: <devicetree+bounces-273244-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SAUnO/iRr2mCagIAu9opvQ
	(envelope-from <devicetree+bounces-273244-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:37:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B14244E2D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:37:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A442C30D4796
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:36:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57C7A3BA236;
	Tue, 10 Mar 2026 03:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HZUZunM7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gWLZWaFS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254263B95F0
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:36:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773113798; cv=none; b=QvKwQpyXte0MVpGDDhBE5zpX/CEjuD9faDlV2tSKcZrwKYr4wSPMPLDjO0IgZVkbKWGD4CZXD4vByszh6cjo4cMSmSos2n8+2gTrNM55Ww+m5wtq5wGAH1oCkpkuK5WcSAsec8Vx8akKiuFrccBnCXQYMfnO2gX4sdXD5H1uGbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773113798; c=relaxed/simple;
	bh=Q7s0mqqKWFHHOrkLyxUjB2iWjZt9Rs9T9opL5GXt9Wg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=j819WRXWL7Tn0/VcjUO2UF4m5NeqyurRWd6hnN7d4uIxCLP1R7gE7xdQs46jIzL5frpV4/Tl/jKrTQpQV641q+owih6fo9TzTl09gyLj6yfhpoC5GQnP+aiFo2io5jV8t4UgpdIWAINwpm2YQDWrtlClvwDVyK/tqgxNP7vLUJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HZUZunM7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gWLZWaFS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2ESDS1459452
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:36:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=S4CmBsoTsTr
	95WUj0nXOAXNdt1TB+ciOmtpXIhXjCto=; b=HZUZunM758rsLHQi4T9oD84MLhx
	XCg79BdPKSCpH6DML1moURMllhs8WYxe0qt5RUIEZI48Wns5fyPUG1FTXydiVUUX
	wY1p88jwfyNlreYK2/VStFXLx3QwmX2PMXjRJmX4M4Ineo3JrBgfmE9mmwE1T3pz
	IrRYfyqNVX5yr3Euh//CkrwzwIozfkdbLvXxN8qqRiQxY1cxV0D+EOYZKvkrC9ER
	P/FjiZb7+7SaIDqVLuNPzjNj7+0sFGKAwWCLNJ5/Na8PvwDtWcrJ8pASET4DPfU5
	t2c7qlQPFdfbh+NWVNDsOEs8SqWebWLkGk+IK9GOeok8m0zpRWcKGPTKU+A==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csyfy2g9p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:36:36 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-35845fcf0f5so14335878a91.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773113796; x=1773718596; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S4CmBsoTsTr95WUj0nXOAXNdt1TB+ciOmtpXIhXjCto=;
        b=gWLZWaFSzLKE9JrvmOZJ4MDCVcGxMrEXZHklVM51Z+E2nB7Vy0mSMDuYh+Ou2n3VM5
         8fzSRBD4fTSevdCKpHi7cr8Hr7plC9KiGe0EEX3ijhUyUv3bjc+t11qTmLHyW7CIED4H
         9LB3yHblaHOl1bypj4G4Q1pPagbLrJCqifygNo/FemKqjyKOFTe8IRUWWnbozexjbXHP
         zkezG4GAyCV8yWZvajhHfb/7r2ISfrTBAjTxshGK4fXxc1iCcbO6CF6EVENx1MyFs2up
         mwu2fk8cd6AA0H0WzJqX5Fw9pDBXP8YcFI+0Qqcg6AYfNVGPxiOXMBK0I05s+v+lsqs7
         P09g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773113796; x=1773718596;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=S4CmBsoTsTr95WUj0nXOAXNdt1TB+ciOmtpXIhXjCto=;
        b=GmIRnKq89BH3o0EWJ7DLlZ2pcGpGDfs4gcduSnXFIrH7aU4GCUqhHC/UbytoZrsnJ7
         6PaPgOX1s5327N8vzZklGx6non1R7sr9cmkYabPW+wJgUIoJYHsmaFFF1ZEYnypJoLCM
         BYbPC2fkT1UVq50buYQnGiqUsLe/kJM/4X26T0XyXCAhY4Uyvb+5rwe6LLnHzVGrl67t
         sXUu65TOVrQEj6AbRVw1OcOu+EryZEBkx7OdVcI6IOElAGIEBZ4xWbg6xsfKUNQQ+HBR
         np4uUq67BU8DzpG0ZdkeowcGULcN0GR4nr/6PoyJD6lFP0+7J1EdjhmnKNStKgDp03TP
         6x8w==
X-Forwarded-Encrypted: i=1; AJvYcCUzT4u2V3T/+IaSzkQ+OtywGILuG/QG6GmF0YxqHqhID0r1YdVUip2tiv/rCy01s4ivxevkxZyijjF6@vger.kernel.org
X-Gm-Message-State: AOJu0YznwDXr76xjTfEBdbeGKn1XU8hpwP4VW6CAoCciKgOee1IaOziE
	+Tp2F1qn0f0xlBHZpVxZbJXr+JIL1G7vw23nPApZ90z0RRwoN13PZgeA9RP0LXgqJqNpWdcQeBE
	aunISYzl5WRNYECNX9JZ8wsij23xKQWzMrzkrFvMM7m25XNgH9QtK14t3M2CBokEe
X-Gm-Gg: ATEYQzxz7eep90G7YKSgiDyZYfYey5+C+AOp0/a883fdl5cutG76W4zSt6/OP8/Ufuv
	vGqys3vnRHYbs0eiIYVaBhq+5REBXCS4Pq0Wa0Fz4tcE01kH8/5WBdPyQZKgQ1PFoMkbFLyRzcS
	atvNdl2ZG7dJIyE0uaWAYRC55pL8oBFoYzPncdsDuJoI9ZX3Q3YSL7vr0wgL4zcccaHW01f9bpD
	IhtEua0EnjybcYGdtuxZTcbusYS30R9vuwBaMNrLAIh3cA2dLl/MWt5zLVAdVev9pwKywIQf+1H
	RVmG5mx5VOHk4cXbzdad3xyUbegwD9LXfOYERDI1fALHMldGogVjExheHJ2M7a0HBTr7zak9p70
	r0R5jYG+GAZlbubxqCHM2CNqVvdKWhCr/vacR44TaiZVyQxfCrDrdszJNFzxXfcJ2sX8Suk2Qe9
	5lq+rwws7lcffNtCqnh/80911/994Ddl4bCqBy
X-Received: by 2002:a17:90b:48c8:b0:354:7e46:4ab8 with SMTP id 98e67ed59e1d1-359f08125a7mr1738462a91.18.1773113795758;
        Mon, 09 Mar 2026 20:36:35 -0700 (PDT)
X-Received: by 2002:a17:90b:48c8:b0:354:7e46:4ab8 with SMTP id 98e67ed59e1d1-359f08125a7mr1738432a91.18.1773113795298;
        Mon, 09 Mar 2026 20:36:35 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c739e182d72sm10272923a12.25.2026.03.09.20.36.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 20:36:34 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        mani@kernel.org
Subject: [PATCH V4 1/5] dt-bindings: remoteproc: qcom,sm8550-pas: Add Glymur ADSP
Date: Tue, 10 Mar 2026 09:06:13 +0530
Message-Id: <20260310033617.3108675-2-sibi.sankar@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDAyNSBTYWx0ZWRfX6zgzvvdsFIH7
 7cJFHlQZDQKcfVw/LJ1KMPVGLEKwzcDVZgbPBh7K6YqDCQwYjkcGnw/vlMen9w6Ci0hxQmpw13H
 NPxzUpJY0tjhT6qtCHeT8CJqaoGjBzc2TUjTzASD8ygApd0f9uHf2sd9EetiSNJrC+/+XzF58gu
 wnKqP9bqHrmKgeqy0wQWL9KGuva33J6ONuc2Vm37WZmG00heuSip7Pcy8II49Z/P4zPI79npE+Z
 xzlzhWouF6G684c8/T8Jx2FODWfpOfKTqx1RrfFA+5gdJk5WlHLeysMckcnW2gMzQysM3C1ZFc6
 9C+CUgHSFfhECZsGUW3B53XA3ZD0mkb1a7SULW2TyqRbzlIE8GDPKilSh5dr2icOkkDi6FYNgSY
 /lXz4TGQAWckCcvf8Nq6y/Q0aBjxSS7Pd/SUMbkgzWn95Vafc0F9iUfSnd4jLzJrtbGo0jINVSC
 q0VK15O3XSQzka+MwPQ==
X-Authority-Analysis: v=2.4 cv=OcmVzxTY c=1 sm=1 tr=0 ts=69af91c4 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=iOP-JMljhTESenzhlaoA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: Iw9S-FqRMXmgNPGlxngJf29tOqWn10m8
X-Proofpoint-ORIG-GUID: Iw9S-FqRMXmgNPGlxngJf29tOqWn10m8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0
 bulkscore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100025
X-Rspamd-Queue-Id: 92B14244E2D
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
	TAGGED_FROM(0.00)[bounces-273244-lists,devicetree=lfdr.de];
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

Document compatible for Qualcomm Glymur ADSP PAS which is fully
compatible with Qualcomm Kaanapali ADSP PAS.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---
 .../devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index b117c82b057b..fb6e0b4f54e8 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -29,6 +29,7 @@ properties:
           - qcom,x1e80100-cdsp-pas
       - items:
           - enum:
+              - qcom,glymur-adsp-pas
               - qcom,kaanapali-adsp-pas
               - qcom,sm8750-adsp-pas
           - const: qcom,sm8550-adsp-pas
@@ -101,6 +102,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-adsp-pas
               - qcom,kaanapali-adsp-pas
               - qcom,kaanapali-cdsp-pas
               - qcom,sm8750-adsp-pas
-- 
2.34.1


