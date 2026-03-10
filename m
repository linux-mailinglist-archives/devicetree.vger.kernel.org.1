Return-Path: <devicetree+bounces-273433-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cB4ND17tr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273433-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:07:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C60DA249193
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:07:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C88B2317F9C1
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 344B344E027;
	Tue, 10 Mar 2026 10:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GB/dmr4P";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ro5679RN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C383744B677
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773137041; cv=none; b=XQ+z1dfT0/XX2ZMGvTtMYsDOZGPFlQk7dJIgyj2hPEQkk5qS3l23Kh5q4E3XDNPgPBorGphzDJ2kjvCl+x5mSzFOdxnJnp/Eclbe+ma5FeqQ/ubISFIU+yTHmCupLVgUlVO81pvZUq5mPwKxso1UHPxl/Vas7nUFR9aS5H4SV4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773137041; c=relaxed/simple;
	bh=YCWKPXnQpiUnLfaOLbWnTkzB3ozdytjyIbPoKi2qgNM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jzAXIM8W74c5PMShHyPY6uTIAD6aBuOsvs4He63JwF9P8B2jBGVkLpj9HHCjco3iJJWBn6qL6XAnSc4EhDlGHVZGs3OiHxoWao4iTHETWIC374e82Zbq82suRLSWbYVlRNqv6VPu6P4sAJx+Qt5ZZE1FPQ4/y2LLcpy3zmsr8CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GB/dmr4P; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ro5679RN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A8paBT3690626
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:03:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JRkmw81EWDUFWR4PgZV4ft26rhGJ7QTVp+dQZURfbSw=; b=GB/dmr4PZZpstZE+
	LrieVvYKWArdikNKUmnK7wyAYKoIUmcoups2DLqfjTMz534fspMglIXVLsTEp/iD
	JHlDYLNoo4iSdmhCjSRTICx+BjiNuSJMIGXCWDsQgZhlxsNSPT7UawYw66iLlraO
	o/Kp7Gz4tU8PA3XFnksrSAL+EcMFRWuChuGxPIY+TFZ95OJlQS4VgSx4TW72mzMz
	bPO/a8o40ZLOVol3RCyXZ/GKMaMSuZf9TcIWcN+pROCKbhuP/Qdn1P9W6ukapR76
	y7lAw4i0K5p+tp7/oCBKRP9qdgwmkxj3wWY8ZVX5BsyjMwsfPWy1GXSfsdb7ttmq
	628VMQ==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctg5ng9mb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:03:56 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7d73a9553bfso29172027a34.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773137036; x=1773741836; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JRkmw81EWDUFWR4PgZV4ft26rhGJ7QTVp+dQZURfbSw=;
        b=Ro5679RNBqR1f53scAJA2D52T25ZqCBT6DyOkD5LmKcfS1OKmhrxmaeQllStPxeobc
         DMRKd5pHCWw6IIh10liVd38lkfn1xDaQCi54BZRcpRPTZhgSaGEmh8i6UsQxWGjJnSmZ
         uA3kTOT7Sdyk3E50Vx583XSGNTgIR+7pH3PFxEHNEVDWu89ZMjIGPbbi6X8FJFED0cwP
         jyv0zm5b5DC1krIWy6U4Bj5JhfVe2zxIhaFXTAmQf/z4EY8aa826ydEQNSTPfbNTxaRO
         O5WB5ygdeOczslE/u9tTDQFzEpPAt2RFhEAyyHGyoM/FnEgUoTLqJmE7pJdllHIAqvqW
         jSjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773137036; x=1773741836;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JRkmw81EWDUFWR4PgZV4ft26rhGJ7QTVp+dQZURfbSw=;
        b=a3kxZTpWBWoL9w/THpu358JOJf92D8ybNq1CIwvCFwDjdzbdDW+a9D2kbEfyJoSkqA
         hIVevdLI8EO3l4GaOSGXxZjXs56FElI8V8aS0NgEuNKEW9ZTC7M5uGhZKfvNPd4xgpeB
         SO/WB4R5fVhB76FleAoSi1U02zWvj3CXj4emY/wWLBJNc+fi5r3fokWqoOZwjkF+nJ0x
         WaxhQdePMKFuZELw6d3QC/SMDHzenbCjWnvLWe2jkrNeHHg4oVouaDujB3rdQMAxNlVB
         NaGrlvXwvnAxQ1C//YG7YpojMK26d/o7k7N0FwxWSSjhhFNvkaimr3PSImvrNY6O6XtI
         IJfg==
X-Forwarded-Encrypted: i=1; AJvYcCVgOa2Blo8qrkCLSvYIm02Tzwe7Rhjrt5oaNLTiHt90Tf9pCGH5BPsDZc4qlPkus8eCGsW/HLvQb8W3@vger.kernel.org
X-Gm-Message-State: AOJu0YxQAIVCsEyVXhQt11tZysO7hT3JP+n90Pq+wlWFXV5z5KUsObHQ
	mPVYg6f6+LndRKFKXEJqV4J19V4a1rhxuK3nKt5UVN7sadQ7YqW9n2tkT0NsoGDlu6E2KJAQuxC
	pBAYrTsqXTduP/Wlx2MYAP/8DaSsq2cy+l0wq5ww2k7IThocgSZcOP5wHFIc/uU9q
X-Gm-Gg: ATEYQzzNNPq10zpVwiLk+kJ0VCS3yWN6CSFgRtOWaYeLREnY1obWD2DqIY2ZqRIjwG8
	tnIDq2m6t/b7FFiLwOeJVr2puEGQBBszZV80UuSK4SS+J2Vhz0xAGDB7nSSVUOKNxt275ODnTRU
	B36FPkxZGCNReVpGCfvQ/hNGkpUgDjcpi23a512cL1lPey3qaNNA8T5yXMpv+DhatHwrP5qLfZF
	vPHuW+zPEhBE42YP3RU8iNI0VFzpQLyK/lCByOJoqi8zzQQFNS/PGqwtTHfcGxe3237/FqX5zJT
	6yqfRpQRW34qqYGVVRBUJJQWGJBAVw2BvwqhTQ9Jn249zosJ56VHa2BNqL0TRvkNAzNzH93v0N2
	964gah9kyVFOBYeMMhkfcao3JWPfqSWjzyiwMVgENOOYOZhXUYOJgK+CaaW+Y3yUUmpkC7rQt
X-Received: by 2002:a05:6830:67e7:b0:7d7:5d69:819f with SMTP id 46e09a7af769-7d75d698f7dmr932637a34.13.1773137035913;
        Tue, 10 Mar 2026 03:03:55 -0700 (PDT)
X-Received: by 2002:a05:6830:67e7:b0:7d7:5d69:819f with SMTP id 46e09a7af769-7d75d698f7dmr932625a34.13.1773137035504;
        Tue, 10 Mar 2026 03:03:55 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d746bdecbfsm4337611a34.10.2026.03.10.03.03.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 03:03:55 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 03:03:19 -0700
Subject: [PATCH v4 3/7] dt-bindings: remoteproc: qcom: Add smem properties
 in documents that reference to pas-common
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-knp-soccp-v4-3-0a91575e0e7e@oss.qualcomm.com>
References: <20260310-knp-soccp-v4-0-0a91575e0e7e@oss.qualcomm.com>
In-Reply-To: <20260310-knp-soccp-v4-0-0a91575e0e7e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773137028; l=10488;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=YCWKPXnQpiUnLfaOLbWnTkzB3ozdytjyIbPoKi2qgNM=;
 b=7RIPGAugkbPTW5nhGJqwPdpLRzRqO4ft5cqFlgtBRwVQavLV7xDri43oBTeaEvhc3zWVVM1/8
 hKxI6TcFD19Am7MxDFRzdcCSsFVv+hMnCY7NA17wUvAt05W2WJvRY0E
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: uWjrFK6BlbVsfJ3aK3bPezjHcGP-UDrK
X-Authority-Analysis: v=2.4 cv=ervSD4pX c=1 sm=1 tr=0 ts=69afec8c cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=4818-bhKfx29ZlxGCZ4A:9 a=QEXdDO2ut3YA:10
 a=EyFUmsFV_t8cxB2kMr4A:22
X-Proofpoint-ORIG-GUID: uWjrFK6BlbVsfJ3aK3bPezjHcGP-UDrK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA4NiBTYWx0ZWRfX5YrbuCgluPgl
 BfkxaLkv95MnRajYSn1U2jSfnDx9IOmupB4wCHS+MyzHOGSKeLTfFN3bUU9D4oAeXz9v6B8mfLg
 iIvXqmXzWvpkLo56dVo2nGifb5dPoIJaijlRTrhU3VUQsoaq5i4vIFinscJBtGW6WxMraa8FQIq
 I05o6rBzbTOXUiADohwuw+2g7kjirnPVP4zbPdhLVttQ9ykzfvN/yMaKyiQ8vZzTZjJyyyvk0QF
 i9Lm+A4XjfTXdB8zyB2S4ucgmewc5FDaPefNdxND4SrQ9xQf1HLmS/kJsSNF5gnQXhURkRpVkws
 yyDw+Q4M63R9xFuV5RAVHRBqbepb38BOUzyrrB0FGe9+fit3TGTFzU8AqJiMT/izbu2dsriVh1/
 lg33FMnfYK8RB1W7BtIeoC7TQILekvRomA+HdFBpqzAQeiyzw1DshkFxwvOpZpOiDpSEumfwdVQ
 99QA6T/iDsTNNKc+Phw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100086
X-Rspamd-Queue-Id: C60DA249193
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273433-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Kaanapali SoCCP will extend the list for smem properties, add SMEM
properties "qcom,smem-states" and "qcom,smem-state-names" to documents
that reference to pas-common and add maxItems constraints.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml       | 8 ++++++++
 Documentation/devicetree/bindings/remoteproc/qcom,milos-pas.yaml  | 8 ++++++++
 Documentation/devicetree/bindings/remoteproc/qcom,qcs404-pas.yaml | 8 ++++++++
 .../devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml          | 8 ++++++++
 Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml | 8 ++++++++
 .../devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml         | 8 ++++++++
 Documentation/devicetree/bindings/remoteproc/qcom,sdx55-pas.yaml  | 8 ++++++++
 Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml | 8 ++++++++
 Documentation/devicetree/bindings/remoteproc/qcom,sm6350-pas.yaml | 8 ++++++++
 Documentation/devicetree/bindings/remoteproc/qcom,sm6375-pas.yaml | 8 ++++++++
 Documentation/devicetree/bindings/remoteproc/qcom,sm8150-pas.yaml | 8 ++++++++
 Documentation/devicetree/bindings/remoteproc/qcom,sm8350-pas.yaml | 8 ++++++++
 Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml | 8 ++++++++
 13 files changed, 104 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
index 16c35e15ee1b..7e8ecae8e6cb 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
@@ -73,6 +73,14 @@ properties:
       - const: handover
       - const: stop-ack
 
+  qcom,smem-states:
+    maxItems: 1
+    description: States used by the AP to signal the Hexagon core
+
+  qcom,smem-state-names:
+    maxItems: 1
+    description: The names of the state bits used for SMP2P output
+
 required:
   - compatible
   - memory-region
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,milos-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,milos-pas.yaml
index f8e1b2b8e782..b24e6f6eaf37 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,milos-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,milos-pas.yaml
@@ -68,6 +68,14 @@ properties:
       - description: Memory region for core Firmware authentication
       - description: Memory region for Devicetree Firmware authentication
 
+  qcom,smem-states:
+    maxItems: 1
+    description: States used by the AP to signal the Hexagon core
+
+  qcom,smem-state-names:
+    maxItems: 1
+    description: The names of the state bits used for SMP2P output
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,qcs404-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,qcs404-pas.yaml
index 5854b3d2041d..bf9bf1af9ff1 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,qcs404-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,qcs404-pas.yaml
@@ -59,6 +59,14 @@ properties:
     maxItems: 1
     description: Firmware name for the Hexagon core
 
+  qcom,smem-states:
+    maxItems: 1
+    description: States used by the AP to signal the Hexagon core
+
+  qcom,smem-state-names:
+    maxItems: 1
+    description: The names of the state bits used for SMP2P output
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
index 4c6d32b1031c..6cc2f4b700e0 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
@@ -75,6 +75,14 @@ properties:
       - const: handover
       - const: stop-ack
 
+  qcom,smem-states:
+    maxItems: 1
+    description: States used by the AP to signal the Hexagon core
+
+  qcom,smem-state-names:
+    maxItems: 1
+    description: The names of the state bits used for SMP2P output
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
index cb0a61fc301d..b20780e5e26b 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
@@ -68,6 +68,14 @@ properties:
       - const: stop-ack
       - const: shutdown-ack
 
+  qcom,smem-states:
+    maxItems: 1
+    description: States used by the AP to signal the Hexagon core
+
+  qcom,smem-state-names:
+    maxItems: 1
+    description: The names of the state bits used for SMP2P output
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml
index c51010493bca..86ae0ae4864b 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml
@@ -65,6 +65,14 @@ properties:
       - const: stop-ack
       - const: shutdown-ack
 
+  qcom,smem-states:
+    maxItems: 1
+    description: States used by the AP to signal the Hexagon core
+
+  qcom,smem-state-names:
+    maxItems: 1
+    description: The names of the state bits used for SMP2P output
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sdx55-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sdx55-pas.yaml
index 381ece510b0f..0b38194c0781 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sdx55-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sdx55-pas.yaml
@@ -71,6 +71,14 @@ properties:
     $ref: /schemas/types.yaml#/definitions/string
     description: Firmware name for the Hexagon core
 
+  qcom,smem-states:
+    maxItems: 1
+    description: States used by the AP to signal the Hexagon core
+
+  qcom,smem-state-names:
+    maxItems: 1
+    description: The names of the state bits used for SMP2P output
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml
index 987fac433fae..454ba82bd6f1 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml
@@ -71,6 +71,14 @@ properties:
       - const: stop-ack
       - const: shutdown-ack
 
+  qcom,smem-states:
+    maxItems: 1
+    description: States used by the AP to signal the Hexagon core
+
+  qcom,smem-state-names:
+    maxItems: 1
+    description: The names of the state bits used for SMP2P output
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm6350-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm6350-pas.yaml
index 53ffb1ccd199..42e02c64347a 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm6350-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm6350-pas.yaml
@@ -65,6 +65,14 @@ properties:
       - const: stop-ack
       - const: shutdown-ack
 
+  qcom,smem-states:
+    maxItems: 1
+    description: States used by the AP to signal the Hexagon core
+
+  qcom,smem-state-names:
+    maxItems: 1
+    description: The names of the state bits used for SMP2P output
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm6375-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm6375-pas.yaml
index 6823a2a8d74e..274f87880e2e 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm6375-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm6375-pas.yaml
@@ -61,6 +61,14 @@ properties:
 
   smd-edge: false
 
+  qcom,smem-states:
+    maxItems: 1
+    description: States used by the AP to signal the Hexagon core
+
+  qcom,smem-state-names:
+    maxItems: 1
+    description: The names of the state bits used for SMP2P output
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8150-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8150-pas.yaml
index 8a1fae095a3b..5a7c5f8c92d1 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8150-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8150-pas.yaml
@@ -81,6 +81,14 @@ properties:
       - const: stop-ack
       - const: shutdown-ack
 
+  qcom,smem-states:
+    maxItems: 1
+    description: States used by the AP to signal the Hexagon core
+
+  qcom,smem-state-names:
+    maxItems: 1
+    description: The names of the state bits used for SMP2P output
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8350-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8350-pas.yaml
index 4ea7518db537..72d0db5698c5 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8350-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8350-pas.yaml
@@ -75,6 +75,14 @@ properties:
       - const: stop-ack
       - const: shutdown-ack
 
+  qcom,smem-states:
+    maxItems: 1
+    description: States used by the AP to signal the Hexagon core
+
+  qcom,smem-state-names:
+    maxItems: 1
+    description: The names of the state bits used for SMP2P output
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index d93e17fb5e89..f4832c2930ee 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -92,6 +92,14 @@ properties:
       - const: stop-ack
       - const: shutdown-ack
 
+  qcom,smem-states:
+    maxItems: 1
+    description: States used by the AP to signal the Hexagon core
+
+  qcom,smem-state-names:
+    maxItems: 1
+    description: The names of the state bits used for SMP2P output
+
 required:
   - compatible
   - reg

-- 
2.25.1


