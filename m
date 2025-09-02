Return-Path: <devicetree+bounces-211741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD8BB405EE
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:03:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9A5F7BC343
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:00:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE8971A08A4;
	Tue,  2 Sep 2025 14:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o9MOadRl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3668A30101F
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 14:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756821668; cv=none; b=SYZgRkLueH9uuPoVwGI4aHTVRxzrTqEQ3Wg2tMXca+hL8V3KdjAMtKxZJVUxT+/lEsS7ug0SFyxpU7Q1ifdpdzl6MrtvXHvM3Ub0nFK9x3wl+GaE64o8PDedAamYb6SQ6GURE+emBFjvkElfkjexobMf6P0Kww7msu8xeXO71WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756821668; c=relaxed/simple;
	bh=LA4VFOt3FgY4aF9ZxXhKK2bEkPtHjpqcJQqusSBl6Ys=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qBxk7iYwI/zctAQdJzbUmFgy3+qtQ1oJnShCcb0t8P5Uf3pwG251Ba+SgWo8vd+4f4FvSp4hCK9fHuBbc2Vffm2HbFu8bq6URxzpX55zJMwDzk4M7UBAYca0YH+EnkWLudAeYdQs7W3q9VrjNEdlWUSt7dX7mhvQDhd6Rhqeyso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o9MOadRl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582ACSD1030589
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 14:01:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=4nUrsZtpHAT
	W+DRnY4OX8R5uwVqSv0TAiSweK0q80FA=; b=o9MOadRlWdllZshToc6EHL7ZNdM
	vsBYKb73KcInqDN61sc0lKCayFIbMYuMaA+AAEbbrduhGdH0jFVHVw6ukHdB4qVH
	buX5P1t9iw0qiyuXtd6a0Xdw6YF4xComRCnJ5WrgWkWR6wXMdw6ufi4iALNm8GEy
	X1EFASyQcyQHrUP9UffC1lSZ9o2JeMEIRGZvb3Ysbyxz2NeMTFj0FejaSA6evpP6
	UIBZDSF7uC50TV4HlVF6u4RgsOYn7rKHtLdSFsk0/rqtrIf3gVZQAn9nBNEjS1rB
	iosP8x8mwq2NbyRqcralEABgpR8EPCdbWXr/Uqn4losO8FmXeQ2eVIhnZcg==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8r08w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 14:01:05 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-544b0ac7eb9so432996e0c.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 07:01:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756821665; x=1757426465;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4nUrsZtpHATW+DRnY4OX8R5uwVqSv0TAiSweK0q80FA=;
        b=eALm6XE8hOH3ygaWEIeyTh9KJPMdwDhaFgex9eaB4alWE4HRNZlCr9rXtB1+W8zbYm
         hj5R53A38zoJD3TiUwTyaqpcK2KebWRwRCs4LtL/2LG7w64Y9qdXDs/cnkUzfQzSd9MP
         s5DBIxYI5wmsvni9uxts0d/+5fwsJAff7n8AdGesifDHQFJeaGtNOPpo8V/LuIORTSw9
         qM6i8/PtvJAN4V0uw7p5SG3YjeX6MMsENbxCNvwHJirtz6otIgLTNkrYalaRSIeK/Xc6
         fVm2xOrToYOcfmI6oomtNxE85hMT5Nm6HLB/4vfWbMGUgVVguTgFqfqNFGoxFeVF5Sg4
         tcKQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+4xb9hZP/wRgIEBlcvIxRPJquwFF366m57CQK4J0LWAGbBpZjN8An8q09swFpjMlCD3jJgGuSSvNM@vger.kernel.org
X-Gm-Message-State: AOJu0YzeBMiFAQ3ldhtQR5QGpzsW2PMmzKvfR9Put0IfbhZ7HWJ13+DW
	5Ai370ou9xGa1LPF5UcGAlZvQwqCfH3KFQL9RAl/MKR7NafjFRHYUu94lnit/kzY+XpUmFfki4D
	tKSwEAbdn6KqlMnk77rr66VxSxxuDyTUis5W0Z36d8fjWSR5wxeqnDsPtU6mVL3DX
X-Gm-Gg: ASbGnctNIecVN8d/oh3+vpX0Zrx4Z9844MPEIcRtnkf2zY+ltktHpMF96XH8TJy8e8Z
	8sO9cN9Z09BfeZ7bqq/ObwxVIKnBAJmad0NYSYGsJPFFNIHNlpUAGdlvnU4XwY2vv39m+JMC6Sm
	Ju3Ctv8Er+G0b32C8FCIWSdn0hlI/iAuarZk9z5KwSKPNlGKr1ylsdEbzYMJ4IyTWsBxZPF5C+a
	PejD6gg4pLt6s/rLmiuxw0DbPAmbBavVi1WkpU72125FwTH4io/1iHpJ5yyHKFidHqr6yoOaf4m
	QLb/vDjSESCuVEl3CXZiiW6R86P3+ciZuyl8HSMSmLV5+iYAECX2ag==
X-Received: by 2002:a05:6122:8c1d:b0:541:7a56:4c74 with SMTP id 71dfb90a1353d-544a0306e0cmr3436145e0c.13.1756821662602;
        Tue, 02 Sep 2025 07:01:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHLTYZ/QDb/Ck1fRw3jrSUnp8sbm+lDs1zmyvi4RAl2+EBFuGiMi5sraBYIysTI+XWrBOe6ww==
X-Received: by 2002:a05:6122:8c1d:b0:541:7a56:4c74 with SMTP id 71dfb90a1353d-544a0306e0cmr3435884e0c.13.1756821660065;
        Tue, 02 Sep 2025 07:01:00 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d2250115fdsm14381196f8f.40.2025.09.02.07.00.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 07:00:59 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: srini@kernel.org, broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org
Cc: conor+dt@kernel.org, perex@perex.cz, tiwai@suse.com,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 4/6] ASoC: dt-bindings: qcom: Add Glymur LPASS wsa and va macro codecs
Date: Tue,  2 Sep 2025 15:00:42 +0100
Message-ID: <20250902140044.54508-5-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250902140044.54508-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250902140044.54508-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: wSV8n_y7nIp2SF28x5TwCJ5ACMGA40v1
X-Proofpoint-GUID: wSV8n_y7nIp2SF28x5TwCJ5ACMGA40v1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX9JVCEEO9awOR
 VQqa2OWOUkpSZCQO79Vjzxlg0vryXyNHE+AXSnY3O36nq1ChJ9Zbqfgo2N9//g3bqsmV4wpQeTw
 z+Uo4o7uAPzMGxB43zyGaNh9dilihpaEfwcLCfc6T3G9iBVDEEzxgUgupE4OcW5xrfns8420pTc
 cI1ak2ybVLMdk9TwUCm9XmpzRO4rYdR/bMCR9xsiAiQhceYfegBHlfHJQmp+hTpQ8s76SWJBEgM
 cC77m9sACkIbFHT/XjnYJxr04/f01Zf05K3wjtdod1zm7pUANuew+/znz6UnSedV3C/FEtmkJ+P
 +fO9A+P9JnN7BgeCJF4eu83vorAfnKtc1gfgZ1J1CWPTYG+V5WAgqaRAMd5T537yMnQ9JdKMcXM
 QQRw933f
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b6f8a1 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=ZPdVxaYzjB_9TeNNi-QA:9
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

Document compatibles for Qualcomm Glymur SoC macro digital codecs
(VA and WSA), compatible with previous generation (SM8550 and SM8650).

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml | 1 +
 .../devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml          | 1 +
 2 files changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
index dd549db6c841..2e8c26d89b00 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
@@ -20,6 +20,7 @@ properties:
           - qcom,sc8280xp-lpass-va-macro
       - items:
           - enum:
+              - qcom,glymur-lpass-va-macro
               - qcom,sm8650-lpass-va-macro
               - qcom,sm8750-lpass-va-macro
               - qcom,x1e80100-lpass-va-macro
diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
index 9082e363c709..b6f5ba5d1320 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
@@ -20,6 +20,7 @@ properties:
           - qcom,sc8280xp-lpass-wsa-macro
       - items:
           - enum:
+              - qcom,glymur-lpass-wsa-macro
               - qcom,sm8650-lpass-wsa-macro
               - qcom,sm8750-lpass-wsa-macro
               - qcom,x1e80100-lpass-wsa-macro
-- 
2.50.0


