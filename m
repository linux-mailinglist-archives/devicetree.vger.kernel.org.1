Return-Path: <devicetree+bounces-241743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AB558C81D03
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 18:09:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CB187341C56
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 17:09:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B33431770F;
	Mon, 24 Nov 2025 17:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QR6hxSvW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JyUUpeh4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D508315D51
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 17:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764004151; cv=none; b=mWFzLOARkfXhaxbUxipkCViOYV/gL9zrEBAkCx0rvUHmoaOAA/OJY/aqoTAG0Nz7HPyu6p4UJlXl/7lqsYUWnKcScheVJ6lpXTu2e1seeZEHbq7/X6os2V3Ow1qdfxXsqQpUFSfWlZrq11b/u9xRGvsnRdOY30EDhiQcLZenj7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764004151; c=relaxed/simple;
	bh=QX32wXiQBOvH9OWMl19ctjvpWIa8KlGJfTbKJn8Eirk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Pf5BLCH8iDyLnE84kqBK+ZzwAKKeEk+khNUD5pSolW5S6cy7KekTpWxEgoRGcZVtVLSDpJWREJx8EM1LnlqxZ5ly39Pd5GB50oqsxDgAlCH0L+m2IiJFm2i9+TPGpAaCEbrogO+RCwDMuNge43gtOWHeDjf2x6TmxRUgHFv/Poo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QR6hxSvW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JyUUpeh4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AOGleCM590622
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 17:09:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HOQpVkt8WtRN74ioDq9Usq0+8FTkAmbx98UBVmfqbbQ=; b=QR6hxSvW+jwHhzdS
	WAcuOW1Yqmnd6qRjOh8fj+bdUHg4VCscEjDQBlM8fRj0wON7UCxXtHP/ccJlwL2F
	1YbFeqC13lT3PTJjPDFjOcm2D3aHWShqXDd+zF1LVyHaHSbMKcUGF1fIMAB/6+D+
	SpnGsTNAgDm4PqfquYA4p1Oz1j7lEahGCCLAjBJE/1cXj4qwFSHMSnaEDz6cOkvP
	CGYFcJKDuhCZXJ91ZR8gHGygyyOe+k8IUHZclHn0IQ+bQaAWuSCW3xd/q+mdnMBW
	XksaN/rzq8bZbBmCvxsiJXsg5ZcIelrEPN5+4PggRrZJI2Dzj3O2LzDOOFidOHKS
	G+NFbw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amu6q82hy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 17:09:07 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-297dfae179bso126902045ad.1
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764004146; x=1764608946; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HOQpVkt8WtRN74ioDq9Usq0+8FTkAmbx98UBVmfqbbQ=;
        b=JyUUpeh4i6t6ZcuT9FE+kNMf9R/ajbUUCZoYfL1qt77Q2dEBppuFGRNVUsHc64gx1v
         HmPpXpuEVf26O+CyWVc5LGCRfpRQqwhu4v8RN+t4XpFAu30mUZyP9E9dEbCBCBbo85u1
         0o/gNIL9xqSByMC/U1wnGP+dcW0H35xPxWv/rS9641u6wKwD1vEpeXZXTuoU9opmQKVF
         DSxVbET+1bIJhXWwlPvNrOyvxbhjvQBMU1GtwL7bKHAKNq0kn1OPzvVxtHEf3cMM5DrT
         oEpHeH6L/E9LdyqpIPNGnyKwN6y/mQPDPM5fHJWd9hBl8DDXoAhxty97kcjL6OvmmBWT
         4frg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764004146; x=1764608946;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HOQpVkt8WtRN74ioDq9Usq0+8FTkAmbx98UBVmfqbbQ=;
        b=g5vnfTTiHSmdRztxGl4srO9srgrlb3glTB40nMfZMnDQgZMlQq2zH5J6ul+3COPUty
         TQktnMZRa4YPQgVRamB1w4NReSx1hyu/+fmKQjlBfYlQPg18CwxXhXTPu5Tcrx+O+qw1
         s6gPtnYoU3dii9ecCLWGJWj2C6JJDOZTJzsDAZi9BlwlD76uqfL1T36eSgEdCLUa0GP5
         9USAaQyt68xw/tL92di0F0okRUiFCjAIXGYUem8hNH1W7hzjwcLopng7UJqbgQpNLM6S
         GHJZV6y7mU2Z7c6cT/wvJV00e/bYfXfL1+ISTQB7Si+RUjfTsK4CFWaQ2CPJXMsVbtT0
         iL1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWjt23tnPQfh94a+OyZXrMmgppqcGzXj3z+uSG29sRki2VTZ44OYx9VrfxxqI9fEb7MKSZP8e6BokTx@vger.kernel.org
X-Gm-Message-State: AOJu0YyjIyqr/7+KDsV9EhcmMSvBVRzc5Amho86Jp0ylQNHbyDzreSvV
	SS9HpujHUefhq4+j46K/X8JMaRtGAo7Gds/OpzYvNwfiULqHbXIt50qoKwFaVy0KahUO7n+x27y
	VVPsU+WaD2rxxS4c4HqJFVwrTjew4C74rzRHMMOA6LwnoQ6kpIuBVgvQefMs/7xO9
X-Gm-Gg: ASbGncucShBnIeMGS3ziES4GTtug5srFCGrOsSX//WJowpZs9mUIqiVqRQLJSnaX1Ue
	c0xZL97ipGgU7xCjPTH+zZdU+tzg7l9x7J8+8NIN3I4Jkwhs3eXKP99QnU92m2mWbSt7M2Dlb8u
	fWff8t5tXALqxfG6TNAv7nLjq6HiHVESHCRT1o6v9vNpWJsygMpD0+TGRf5IFK34cSLN0eZ714g
	xVUY70lrezS7myDqs68g955qPCy/c3DbSIOxRa8tzIhh1KDxRVQ96WUJhgLiytrFMgxfnW8DwOf
	tgYVq+nzUrMRbyXV2GRD9mAF82n6GztG5b2zJR2dxR7TmGu3+sVlz+VNl0Ik1FS4lroKqxuKTFf
	9vwRAmk9Qoyn/q0Fmy2iKXQEKNCrla2/KkGI=
X-Received: by 2002:a17:903:98d:b0:297:fec4:1557 with SMTP id d9443c01a7336-29b6bfaf6c0mr125472915ad.60.1764004146161;
        Mon, 24 Nov 2025 09:09:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHc/EA3g/IjWjDN0phXFJZwIGcxYe1MqBC58LDcjbK8AFsinGj24Yv0mfGyN1sPJGfOS6muTA==
X-Received: by 2002:a17:903:98d:b0:297:fec4:1557 with SMTP id d9443c01a7336-29b6bfaf6c0mr125472545ad.60.1764004145674;
        Mon, 24 Nov 2025 09:09:05 -0800 (PST)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b107effsm143949275ad.14.2025.11.24.09.09.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 09:09:05 -0800 (PST)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 22:38:49 +0530
Subject: [PATCH 1/2] dt-bindings: crypto: qcom,prng: document x1e80100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-trng_dt_binding_x1e80100-v1-1-b4eafa0f1077@oss.qualcomm.com>
References: <20251124-trng_dt_binding_x1e80100-v1-0-b4eafa0f1077@oss.qualcomm.com>
In-Reply-To: <20251124-trng_dt_binding_x1e80100-v1-0-b4eafa0f1077@oss.qualcomm.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Harshal Dev <harshal.dev@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764004137; l=759;
 i=harshal.dev@oss.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=QX32wXiQBOvH9OWMl19ctjvpWIa8KlGJfTbKJn8Eirk=;
 b=cT17lzs/2OLz5ZZS+XHDVpeZTvOtTBL1bkrrPNuR8RXXwoRs6SVzBbLJW9Y8DNPXbi6G8vLcg
 sDuK/+4563tDjCJ00oTgPFZJ6917bR65LgbarP+MdrizFv3C3rvm8Eu
X-Developer-Key: i=harshal.dev@oss.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Proofpoint-ORIG-GUID: r60feJoMToA5hVmgT6r71c4zrTi1A-np
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDE1MCBTYWx0ZWRfX7jvf9lKpCjbw
 wdpBLakFlNM/k0+YGodqSEE/qopbSr1a2usviDPep2XRLbLFHPI8UgKNxU0TEiQu+zXUVDlo9xn
 MDxBRL9reqXOlU1vglGUeZslV/1bweISpmJYDe+CK5nCV21ezlUlnO/89ARcKJWYKTm/91bmkCx
 oxpJPTml+tHYN96emjE5cl5t6/Ivhf3S0gI9bMmyY9vTji3BfHzvh5DJvAz8oyA8RYpiUBsgq9w
 PcGgR6b9EtL2jsCba+zfBCusM89QzpDK0FiibpEKQ5mp4H+Z9LjpcSxjEQbw0w4DJj66c+Z1v3i
 17STYxUkaT0HoIQ1NwJA1Zt1av/I04AXgEcZQ1s4uAoT/h3v22jrpKpDhED1RnYuxfayE5e3Tp/
 7Yb36idzMrN5izsmBFMB0RN6AXuJcQ==
X-Proofpoint-GUID: r60feJoMToA5hVmgT6r71c4zrTi1A-np
X-Authority-Analysis: v=2.4 cv=S6PUAYsP c=1 sm=1 tr=0 ts=69249133 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=zo-ueGDDGFMG-7NQtl0A:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_06,2025-11-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 spamscore=0 clxscore=1011 priorityscore=1501 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240150

Document x1e80100 compatible for the True Random Number Generator.

Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/crypto/qcom,prng.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
index ed7e16bd11d3..aa3c097a6acd 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
@@ -29,6 +29,7 @@ properties:
               - qcom,sm8550-trng
               - qcom,sm8650-trng
               - qcom,sm8750-trng
+              - qcom,x1e80100-trng
           - const: qcom,trng
 
   reg:

-- 
2.25.1


