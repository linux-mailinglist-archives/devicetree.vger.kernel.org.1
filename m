Return-Path: <devicetree+bounces-233714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F52C24ED7
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:09:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 993481A67812
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C5BD3491D7;
	Fri, 31 Oct 2025 12:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K2u8DiSD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N6xtMweq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0CF347BB7
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761912463; cv=none; b=kfGTfdfeX94P7T3jxNHg+IJSqLuwpj5KhYkwJvIydlxM+hSczysDa4BCq7QE3rYavI6sepLCfOms8XoJ3juf0MyM6U+X2xurJBgJZH5HQPqPtJcaBYAvE72QEuSBpU8goAKAaRdgKPcLBtPf1Jyl1/ekB0VymQatXxcduI9sqiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761912463; c=relaxed/simple;
	bh=sOQOsePjYlM2SdUmv8lUrLY2KaB8teOMMCQg12ut7nA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=llqSVvfaxqc8O5xzrEOlmCbZc3uDXuGedzaWHXmjcdU2X4FMAZNjdW/f7RkHYJCQfozfQCiQEUpmOiW9HhKjEbKGwmGTaBqn2L8y6snwZmquZbdIgp2fc7ZB4dwpcu7EqJYBbRbBmBiBieP23UP4thL9bu/OOxnFQ/bd3coPi3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K2u8DiSD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N6xtMweq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59VB0LiG102769
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=j1FjvgdJcCM
	iQjsMtzDEBVWbE1HV5FnpJ02ra3ujabY=; b=K2u8DiSDcs76r14JBy2xvX4pgaf
	eePHSlAzFrlVIBlKK7g83FIcFVgmzsMCaaPpX6GNLFOLmdGuepu+fVK6dWu4PLqi
	ZvNXycHhrmYZ0SwAtJU0WVLAp/4ewC8qlYdvYJnCzMfE295fy+Xa+fVphOhmszNF
	+4Rj8G7SHptRCnWCUCPE3Ovw/OyfSbvKsb2QYZ9IcxolusZ8kMQNVQvzO1zF9u96
	ufy1x/xtW6mYeU4OGSD991PEScc9V5DMRUSda0fM0TsfwJ0gg4t3fcVWgDFLdZuc
	sXEeh87W4u7i+MxZwraKBsRhQyWyK/OS7sKMs19awDPMiyedgQR1sjAmbPQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4ahdk2xj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:40 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e8a4c63182so55648061cf.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761912460; x=1762517260; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j1FjvgdJcCMiQjsMtzDEBVWbE1HV5FnpJ02ra3ujabY=;
        b=N6xtMweqQxzS0HXYnqz7WOQGvNr8MOWQSXbXfDS8rslgUw6dwquqaQ20P2hDLa0hm4
         ubIDyYlQulffacIlwVVkd75x7qnGo4RoPpIHCyKJCDv7DirX8I7TM8SaPazyOf9TGawv
         QHdesULdyfUd5wfhTtO8tc3q4zwSHN0PJLOu6KYulqfL0tgiTtGJQvkemX+9MTYsQfxq
         15wAV40t8wFeMr3jDT1Vks9TxAgXAemNSB2rF10R0e1XkoSDbXcuAuNBoEeiXhIkIFut
         IFK9CO4EAbMkEEHyolZ2KbjKqed1RNqUFvnK8Zm/iFMqbMbp4o2c557qkRmNyOPcUWk0
         5CGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761912460; x=1762517260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j1FjvgdJcCMiQjsMtzDEBVWbE1HV5FnpJ02ra3ujabY=;
        b=w/DwLLJYOXdT2e+F4NAkLsG4Eaf1I4OpqZQX+HEk/Y+ua01yNh6FhvjlwePXlcdgnf
         ibjpyiTLIr3WNKFIbXYVu23BkWgGEeJ4cCXmLonnRUMzlKQ4gLlZMtM/bkpwjcf34tOb
         ZkFjYPBZlMDo5RoeOns2fWYNgw5lRm2unQhbpybVUUJw9QtFIhEDIS56GhyPsdK3GAH3
         eJaFG6RdZ1Uhdsl6QSzoNkwP+BEUa3uB/Kvc02O3/lXUMGzUuEoWoG/82hQMrO0FsktY
         NP4aAHQgAH6eXvnpXb+twsl9ntAIhZ14qEsZKFscDUbgGDLQQPRu5o4/S8KtWqaOGmv1
         EyzQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2ppEk8HaC7aX/KMeBYakgt9DR7r66AqcG/2tOWEI84mdIsL2Ind/UHgTg/NOOfL3eLykZy4nNfNBP@vger.kernel.org
X-Gm-Message-State: AOJu0YxX3cIFV1OXdj/UaGjR1/FWFThHCeogQNXkcFaqUKIe/yuI+Bd/
	9OR2l9+kRnKFo3Avzo3+D7sLTkYdjyHlepcMulLTsxafmuJEKdSHQseGLPN7BkvFeUb5Tfh4XqA
	8KWGWEbr1c7xdn6KE3JjcXUk823cAVblJlfEgY3v+uQoTyWJilY80xkMyruPd/ltL
X-Gm-Gg: ASbGnctX/3gFkCH8Xpu1BXK2HryYJBsC3M+wvx/rMV1BCJNrttzr23a1eDSaHNYjV4l
	+sGzpLKdRk2iaW8qt4xSjua+eNQ+d+v/Ka5p2+T8G3nATykICK7C1bpw5bSf1HPpDTE/sPc09kC
	39HVdA85vcMjBDZj8PnTeD30W+ZOM5TDax2S9g59U2awuqqtWzCCjcWrH7s8OxJVFgFg8YRoLrI
	zW1Sr+S6UUFdXSgWqZXMysK1cysHq1wu4sYL7eYHjnsAm1sTyJnJP0tal3ZQk1JDKPRwO4MborQ
	LXtomtsPG0XXMf9mLelXKXb7msfWt77KQSs9QuLq/NMYnEqu05kpQLyYskG8xRHOFIgWr+IZ6yc
	tp47ILywotFlF
X-Received: by 2002:a05:622a:480c:b0:4ec:f634:7966 with SMTP id d75a77b69052e-4ed30dccfc6mr45714901cf.23.1761912456511;
        Fri, 31 Oct 2025 05:07:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFBnzrTnYPLE2IH4J5tqf7U+h+V3pAgh1vyeu2UR/XQoXDi5qUOwPWROjLqiCxAElsaJcRN3A==
X-Received: by 2002:a05:622a:480c:b0:4ec:f634:7966 with SMTP id d75a77b69052e-4ed30dccfc6mr45714221cf.23.1761912456103;
        Fri, 31 Oct 2025 05:07:36 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4772fd280fbsm21273995e9.5.2025.10.31.05.07.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:07:35 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, broonie@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        perex@perex.cz, tiwai@suse.com, srini@kernel.org,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, alexey.klimov@linaro.org,
        konradybcio@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v3 2/6] ASoC: dt-bindings: qcom,lpass-rx-macro: Add sm6115 LPASS RX
Date: Fri, 31 Oct 2025 12:06:59 +0000
Message-ID: <20251031120703.590201-3-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251031120703.590201-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20251031120703.590201-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEwOCBTYWx0ZWRfX7R26v41T+iSQ
 U6Wltg4tozBgZ6s2rGyqUCmo7r+U3Pu9v2usHHovJTckfb0jQN5+yFieToXX+sb20i8dTnwJUKe
 Yz8y8Wz91xrdTE+8+eTqlRy9OARj6y/V0kVbClwWBmeTcR1paTd/QYJrgJT3IYcnaZBYwH6nKrK
 75vKqfj8R4cZs3q+4+r+2niEbpYuH3rc+Mu2CE4ewRIwxKWELHDuZdpHoNJLqDw+T2EtkQ6d89U
 RaHihhJ7YtDwDNdSa0j8NGDzl9eyxd8ZAhLEAINGvDjN0CAy6vtw5sNMeV2GOQekCsO/vRhBGUp
 x2JdPSkz9uDeR+GLbUteEzqwJB4POVd/JryJ1Od6YCD/5EKwLK+pjwEZINyjDc0DkAQP7THfSM1
 rWzjQbAZXMxQnC6oRRC6zU3O4sDWHg==
X-Proofpoint-GUID: IaHpfF9XbTjToaDNDHMtZ0ICXpOAfH10
X-Authority-Analysis: v=2.4 cv=TsnrRTXh c=1 sm=1 tr=0 ts=6904a68c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Vptr8DYYLnhAWPBg-1oA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: IaHpfF9XbTjToaDNDHMtZ0ICXpOAfH10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 spamscore=0 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510310108

Add bindings for Qualcomm SM6115 SoC Low Power Audio SubSystem (LPASS)
RX macro codec. This SoC does not provide macro clock so reflect that in
the bindings.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 .../bindings/sound/qcom,lpass-rx-macro.yaml    | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
index b869469a5848..2eed2277511f 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
@@ -14,6 +14,7 @@ properties:
     oneOf:
       - enum:
           - qcom,sc7280-lpass-rx-macro
+          - qcom,sm6115-lpass-rx-macro
           - qcom,sm8250-lpass-rx-macro
           - qcom,sm8450-lpass-rx-macro
           - qcom,sm8550-lpass-rx-macro
@@ -81,6 +82,23 @@ allOf:
                 - const: npl
                 - const: fsgen
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm6115-lpass-rx-macro
+    then:
+      properties:
+        clocks:
+          minItems: 4
+          maxItems: 4
+        clock-names:
+          items:
+            - const: mclk
+            - const: npl
+            - const: dcodec
+            - const: fsgen
+
   - if:
       properties:
         compatible:
-- 
2.51.0


