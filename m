Return-Path: <devicetree+bounces-251505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8E0CF3D49
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:33:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5444430376AA
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:32:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08B7F33A70D;
	Mon,  5 Jan 2026 13:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n8nccmDJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MFMeIx2M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845D4339B41
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 13:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767619401; cv=none; b=EY2BSRMOW8rd5P4Gh2/Z28RakLd24OiTKNaow0liGTNQZGRYIYLvo4QTktl9FXswwQeMilkv2Uarr0me1EHqUYwrLWaRFRKgi0I7v0MWgAiYuDEpR1x8yLFF7N9KVYt1s9HySlk/M33yAAunzR4e5wO+kcbYU8JlcUtNj0To+Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767619401; c=relaxed/simple;
	bh=fkI0IV5pKXD+Z8pE0/I4omqNa0GvsOuaX0Z626kXB7M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mYniS6HasuMqzwhHticJfRSCuV+/wWIQ3NGWIMjbNMStMgYa7hHB49yUTAozqI3jMA6RSx28JQ4CX6wN5cewdE6GxwyetMZwBbhB+A0lCIjYTqliLs9Vk405HyfntGYEUCA3Wbg9XQQ3bqTArvOQfoegGMnEMbcw2uCh/IGzw3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n8nccmDJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MFMeIx2M; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6059cjQ7610313
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 13:23:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QAPzsylvQAf0leJxcPm7SZsbOhaaSA1OJ2ImRJF3POY=; b=n8nccmDJ/JJz7aYf
	fUehwygErMt3Nosvx7DJzJvSz/99DHseo/mKYDB0w/QEYVTpFJzTpyzsgb5gRxpF
	+KHqpWhW7aNlCqfTo4l/iVLZcf0aJso/BegtqjItVWQR9906zpUoQ8XAFYMClIxu
	1x4xFt+/ubFPTHA4ImKEMQ7ceA/yMxiVHMiwdAwerdbuhHg0BQN8z2XDbaElBbRe
	AJKlt/Sb4qCjb7OJV9typvWgRX1J+sCQAOEzsqBmlZfhnvst1cvhTEUQWOiRvYov
	0UwfbFcFFfBZOr0QB8xnthHfXNFevNwGdzBJjETQPftaZE5KwEniZLReSWmJ/G1a
	CedowA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgaus0hhj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 13:23:19 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7f21951c317so11253354b3a.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 05:23:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767619399; x=1768224199; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QAPzsylvQAf0leJxcPm7SZsbOhaaSA1OJ2ImRJF3POY=;
        b=MFMeIx2MBgvvIz9W443fEDj5gxFzOTYdRe0l/6yyP9ZV+SUURPbkY/szW1n3UJzLon
         MdEWHjZN4cwL1KHAe5rh0BSfOQUgzfAiJwgej1wJG5yoUF1z9Arq6V6PcqKAU8SO1Aip
         jSyvfOwTIsu+iLC9j40IuskARyYtg5U+jPiYISmh07iQx9Ev6hiCc13CWIdHnQLnvtc2
         n7rZVDCFpSLX/9/wHV1YkUNF8DQU+0iz3DNHZDUkcirFg9O11bLxnxr1Y46rfcaJPker
         lRTnTFV3j56wsxs76OkRt4xnXLWEhMINxRVEJTAP0l1UYqywuvJ/FJQgKU2hRh/q8UJK
         UcXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767619399; x=1768224199;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QAPzsylvQAf0leJxcPm7SZsbOhaaSA1OJ2ImRJF3POY=;
        b=mdNCCGfWe6ivBXzAZq95SStt6RlJWeZ3m3efqur9CXl/5c8QCBXBhF+TAQaWzfr/D+
         UJ32piQoyByoevhcBD1wvXWXGg2ADCoXXTRtIaZ4v6M6z9MWRKRhqoQ8bcXyO0SWcB08
         1+7wjK+P89g545p1thyFYF2WahwYN4+vL/KgyvSi4Ca1n6Vdzoid5v+GuJzO3vcfeuLh
         qfoUZEmclvxE5FTL/aAvyr01hb0cwbT/eIMFPl4GYBhjpzI2kCOYPLfmYfyb7doXJmod
         dJKPoOTQtn+YgugUwn2EWsXnNtuGxiLLeYn+KzEjht4TzZe2smkWS4e3KiH1d0GDHem4
         Eonw==
X-Forwarded-Encrypted: i=1; AJvYcCWvHt8KOj77IkyCfkgtgUGv7MVuhMhr7D7KR77VuxmpWd0VeIWsDi8IhtIktzZuSvuzD9kXMwn29vMH@vger.kernel.org
X-Gm-Message-State: AOJu0YzrGks0bWKLFMhLCMpBNGJkxU04jR63qD4G3l5tSz2y7oohr0Xo
	t4c/Pg4KKfuFvgbDrZ+nDEQpPUSLsbxWRNp8wqJNseFaU/YS4Sfzq9oazeq0/KJWaLSqPgX7QiK
	h9hgLDEQr7f0/KN8+wVsRUH203jlcn11p6nd6lk/9kJfv2GwSAU1NGVPUhaFdRKan
X-Gm-Gg: AY/fxX7GxOTM68Hix3v3p3/f9KLWPk0MwoX7X/0QmCoKN58b2SuQQfnhGTpnJlxFc4s
	vzIXSC6LghiPiKOvDzDqJbpXmshOm9+KGgdwy/MOMVpU69SFZlXk3ZxycfPbhd+VdDcLHZc7rnR
	jt3a5UrPBhtdfKUeT/6siowUaAA+qr7et2Ogl6ry+K4y+8hnIbIs9zxx+66/6knSOF9QCbnnSRj
	/tF2F808Bf7x4BO/2yo8ZiGyCDKBTR7BfxXdAtOUAGCTnc+1vgxYoZJd0wk1O75q1XCrNc94yFo
	THuPpGtyERiH1c1UnUzPdtyFSluL7EpLUujUmyRpTfDZjOd1RqP0xeV23ME0sh71AR9Tps984Z7
	RH4r+yowV2/6iwc7gwHOr/lIu4fNevPEY1P09
X-Received: by 2002:a05:6a00:e11:b0:7ac:9d93:3efa with SMTP id d2e1a72fcca58-7ff6420d8b0mr42007408b3a.7.1767619399104;
        Mon, 05 Jan 2026 05:23:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEXHIoRObBnpG+sDXEev7xVi5cr2hxbkLz+kqCHin71KDqJCUdIlqKzoFWOJM2Ny5kzVPST3A==
X-Received: by 2002:a05:6a00:e11:b0:7ac:9d93:3efa with SMTP id d2e1a72fcca58-7ff6420d8b0mr42007379b3a.7.1767619398507;
        Mon, 05 Jan 2026 05:23:18 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b127b00sm48426542b3a.21.2026.01.05.05.23.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 05:23:18 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Mon, 05 Jan 2026 18:52:49 +0530
Subject: [PATCH v10 01/14] dt-bindings: remoteproc: qcom,pas: Add iommus
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-kvmrprocv10-v10-1-022e96815380@oss.qualcomm.com>
References: <20260105-kvmrprocv10-v10-0-022e96815380@oss.qualcomm.com>
In-Reply-To: <20260105-kvmrprocv10-v10-0-022e96815380@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767619390; l=1346;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=fkI0IV5pKXD+Z8pE0/I4omqNa0GvsOuaX0Z626kXB7M=;
 b=N7A1Me2sKxNSdYcaU+4DCNbfiZ8wqBvjkhm5jGip5KJnozTrWsE1VUhhTDdOtzy+26dTqaDBu
 qI9HFMuG4A0Af0myuYSCsLX6xSFm7RoBTubjT19KZDQXv7oIVpw/IAR
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-ORIG-GUID: KY7B97pwRbgwBJ7obyZBMgxuIYsJN6tT
X-Authority-Analysis: v=2.4 cv=DP6CIiNb c=1 sm=1 tr=0 ts=695bbb47 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=nDsJnkO8JLPJ0mjf3QIA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: KY7B97pwRbgwBJ7obyZBMgxuIYsJN6tT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDExNyBTYWx0ZWRfXy0F6EXEP8F3U
 xUblghU/lEoc+jvQHXk5pkj8quPUu6mVvabpqByzEa/jTE3bXikDm8krPAy0FgWdP9YC+xkKlt8
 AFM7a7JFkC6O1ZIXMZ7Q3gIBBx61fbL9fnoZPBm89u1vLnSaC0zljw3dEXmtfdRVTQQBOcoJF7v
 qe8kj2J8IKnhr9xQRN0L63bNwCNKao5FjnITI8BRHjTYx0DHzR8zrzmhH8JQds+z2oR1uaLSSl2
 FrWAO8BHPRgwwLtt4YQ8qmOtCj8rvCPj4pzcCBtHsJe+Lp/SMSHrfsTLMXi7E0Lh5FRr+dF5WJA
 hVu3RRWWSP35aAsGNOssaneBxSKWNPF1j1IHf8Vq9ZEP52vt0bQZP4L4Z4viPOb6Nzqnti8gxWo
 0rAhIPlfwthFWYoaSIN8hqz0bPqnvZCB0W3BrdxUmSXhep4zuiacOrqtgjyCePObhTzqkGfRItp
 n2LoMSaAR012JRIv5ZQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 malwarescore=0 phishscore=0 adultscore=0 spamscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050117

On most Qualcomm platforms, the Qualcomm Hypervisor Execution
Environment (QHEE) is either used as a standalone hypervisor or
co-exists as a module with the Gunyah hypervisor. When QHEE is
present, it configures firmware streams for remote processors.
If QHEE is not available, the operating system must perform
these configurations instead and for that remote processor
firmware stream should be presented to the operating system.
To support this, add the iommus property as an optional property
for PAS-supported devices.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
index 63a82e7a8bf8..68c17bf18987 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
@@ -44,6 +44,9 @@ properties:
       - const: stop-ack
       - const: shutdown-ack
 
+  iommus:
+    maxItems: 1
+
   power-domains:
     minItems: 1
     maxItems: 3

-- 
2.50.1


