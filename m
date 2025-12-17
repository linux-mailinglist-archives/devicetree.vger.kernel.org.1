Return-Path: <devicetree+bounces-247593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F968CC8CD8
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:35:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 13F97303461E
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CD21358D33;
	Wed, 17 Dec 2025 16:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gqB55hmb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jWhd5hCD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C207134A3C9
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765989311; cv=none; b=DBGNP6m1z6Mc78sQ6p8cYNUzKttNQO+7oyrDTi8mYuLjhwkSBYlrm+flx/YYRF8FOwe81Zih+IQmctRYIhGDnlgv/xi/P+RpxjWdAbvC2IB9nsLS6lePtsl31SCRhO7LMsgmex7UmqmDnopinNkJ2+ZRxCENpltGEmIHq+NVbEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765989311; c=relaxed/simple;
	bh=fkI0IV5pKXD+Z8pE0/I4omqNa0GvsOuaX0Z626kXB7M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=upj5CJiyEGlfrD9YtkIcMwb6AKe7Km24H3N8SzlkY67kAynmpEcEQ4DCOkaVcaUFhUfuHojypEO24Olm79kBCFAtk0eNsbm4wp9xLU3FwLoGyzCK6dejU8kmtc23QUkNVJCm/XTZqsM/YmXmojJt3ReapyMD+oNNoRvqNSKQC7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gqB55hmb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jWhd5hCD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCL2fo2675006
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QAPzsylvQAf0leJxcPm7SZsbOhaaSA1OJ2ImRJF3POY=; b=gqB55hmbAYs5+DIz
	ICGBpSpOvVuvHpxaSZzb/b06z9O72t6LsjWxax0qDJLbb2/EUDqlnf16tsJb68Hf
	y8ir8xl0nf2niqkc3diMwIRzoeJHeitB1fdKN00hPw0WHVRqSf5iYuwTYRyDvI14
	kJdTJp8QCSGAPc4d4SuMPDycEqBb7rzTsBo5edx6Xuqc9i6TVY2Cy8dOMsA0Sqru
	zky0l4gegd7WOZrIBL3mkFONsktFoN8E4QbuyF9TtYLL4m8BFrw6xCi+tUQn5+TM
	U4C40h4MLc48Z2PagV8IMkZ8GNnSbrSVi6RLRFxgiuc1idC5RZA2j/dkbsOO2iYW
	OCSOpw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3myj2de7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:09 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0c495fc7aso54920005ad.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:35:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765989308; x=1766594108; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QAPzsylvQAf0leJxcPm7SZsbOhaaSA1OJ2ImRJF3POY=;
        b=jWhd5hCD1TPhfqC6NnpdVNW0PAW6LQqmCDrABYGyxxu6ypd4w2JHJoSDakSlsWhFUq
         64oWW2MiH/OxR9nEmbK4KS932JI5/coJE0Wwq3xcg5COQdWCYf85BzYKPBXx69mT+/NK
         Iht8exylzzKZmtmNX8vt5ngX3d/jPfatyjZI9xGJNKyJJTEm3Q4DALoC/7Wim4ENJIHT
         gN0TJmQ+gs7v2SSkiJaRtfubjFcakpxK/Z5o3B1r1RykhUSnCqAGY4HPo+wmJp2GC0fx
         xMMDOisoinrg4EQ3Wmk+jw4svjgPmYUJHLySXTTeJbXTANIFNGmBEXN2+HivSYoDzkBB
         OrUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765989308; x=1766594108;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QAPzsylvQAf0leJxcPm7SZsbOhaaSA1OJ2ImRJF3POY=;
        b=SVP6a7J96KLr+ysFKVuxcEZVTBOh8VYkB2zRk3VBFMKGuaaQez5tA8N23/p0sXx6Ax
         HmOfCqfTxGUwST8jNnnCNjA0jfahp1aWwhBpSVQXcqBoZOGBaC+C2KVn6QfBRtkR5Mkr
         wSLP7ApLsCyGfcSXqFB48TVkEOJ0QmdG6dy40I6AWlhhvuMRtLiElOD96Ezas8C2dcIO
         XpDwJzMMX8N5nwBlWyQICx+K6R/qnYZBqpttK4STbiBtVJiY2Ux3nI6ozKG54mCmOx3e
         JwwAtVslggfoOryRgto5wyMgFQFwZfihQSChH6GKhIIj7urZSU3lZhDNqT+09JNeC7sO
         ygoA==
X-Forwarded-Encrypted: i=1; AJvYcCUrAPTsNrB+X0Z6O5ZzgR18vmteoJgRfKgsdW5ffY1SeYwPJN6pfl2MwhyPzqNsgHqtOZ/REezI/v1B@vger.kernel.org
X-Gm-Message-State: AOJu0YzDInd+qkOkKCLEOE0c+xTUCAvIdm3+DaxTVPkED9EsJB1A9udv
	Qwyw1FCPI91ZwT+rvV1VXp2WpQmYV0hol+ToLplvf4evJpzqy4oC58hkbFdSt8XvzCJor8YBxZf
	POjGE/rS4+h6kh7elCvMTdFG0uErkWaA17XkjwuQioPJwuRBDHONi2lS1ufKvey2y
X-Gm-Gg: AY/fxX6WVdxYEc/uGcl5s2jjYUZhWLxDd8eWLGO/DY4LPCaLszPviJhLsHb2chErvtd
	bCScqjX+BNi99mdQKoa8RMSdvtp6I8CD+2oLl5dpaCVgXQ/Oax2V8UtPOohNguW2d870rIYK3k8
	PFLfgkanUqOSFSfqUtjgNNHHBZlNi6iXOPPNmiDprUoJQO3o6vs9x+QM+sMyw/xvvkCjomFU1xw
	Ez2N12n98dB8laFl8zdPhL68mQ9qBJmu8MwqYhvir3i7XrHvV83ag8LOkj3LfqEdn1ps0/rpxcm
	PhZBTCziUZrwk+MAUjHZGi+NYhhdv/nw66qEC415gRQ9LXK7ooE0tPV5adI0K8dIdX9lDXMoctB
	5PVhpwteBQMAgnqmapiysLB1skBuEBsGjrOtZ
X-Received: by 2002:a17:903:40c5:b0:2a0:9fc8:a98b with SMTP id d9443c01a7336-2a09fc8b009mr133318515ad.40.1765989308196;
        Wed, 17 Dec 2025 08:35:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHFZjMR3LK/rVvOPFe4PMiFfY0LCdsriHF9Dve2JHTFXJJn+pLlf/et8QtwVDemMNI/yUJxKw==
X-Received: by 2002:a17:903:40c5:b0:2a0:9fc8:a98b with SMTP id d9443c01a7336-2a09fc8b009mr133318045ad.40.1765989307577;
        Wed, 17 Dec 2025 08:35:07 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9b36af7sm204721055ad.18.2025.12.17.08.35.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:35:07 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 22:04:37 +0530
Subject: [PATCH v9 01/14] dt-bindings: remoteproc: qcom,pas: Add iommus
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-kvm_rproc_v9-v9-1-ab7ac03e0ff1@oss.qualcomm.com>
References: <20251217-kvm_rproc_v9-v9-0-ab7ac03e0ff1@oss.qualcomm.com>
In-Reply-To: <20251217-kvm_rproc_v9-v9-0-ab7ac03e0ff1@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765989299; l=1346;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=fkI0IV5pKXD+Z8pE0/I4omqNa0GvsOuaX0Z626kXB7M=;
 b=Vo+xHZl6vaYm1DqkxHAcltW+hqiy/OHXdM3AVnRMWNOA0Uxl4zwKclZ+sZPq3Ww/LZmruxDE/
 g+Ei7rwGNgdBEcDSbdgyU8S1gZ0oflkU/gfWRRBk+UVJ3w1vYN3x3YD
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEzMSBTYWx0ZWRfX/ASuKm9yXQXZ
 ccNVJCUlf/TeacXIjhIbofgVw2O4J51J2OlSnAF4oqQFIsNEli0fClbQ9JMCde0aIzvXNzGbIIl
 W4wgiuLQrhnIMtl5yTUCDKE3TGryEu9b1iSGq6ocp4cPhzGHicdXCafsk/wZHZ/11z+Hh78RHJF
 XTGGftJLiluEvqFrusQbLip/4+YxhKHI8V3zaTG1g6oawbYWKihMcAVGQlcoyhzJ8mTdXPGgk8b
 sWIdN6df6aGB5xiyiG1GhEchVh74zPyNRyNjq3iaucU3QrwP4DJvUp2Wh28cXNWum5fowzGLEcg
 hbqK7VI/qYQDv2hITqRNv9gjFvW2gSzsr5z5SUCDOwDFcM6n8WXdb42KSkkXPtZednfWFku45fJ
 14HkRMbtHW37ihLKvXp3UdWvhq1jpw==
X-Proofpoint-ORIG-GUID: hw5fDXTeqx75T6GfZarCk7AuHm3iBOJM
X-Authority-Analysis: v=2.4 cv=CtOys34D c=1 sm=1 tr=0 ts=6942dbbd cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=nDsJnkO8JLPJ0mjf3QIA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: hw5fDXTeqx75T6GfZarCk7AuHm3iBOJM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 phishscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512170131

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


