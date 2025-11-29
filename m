Return-Path: <devicetree+bounces-243107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC3CC93BA9
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 10:46:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 030004E170B
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 09:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 382CF275AE3;
	Sat, 29 Nov 2025 09:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="boe/txdt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MvIvx/9W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09217263F34
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 09:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764409580; cv=none; b=YfBcDMcrtHpVw0bHUqRDkCj8NkzVlMDpzDIlj50rIXX6wo2NvtnzalKuRsqUiNwIC3LgsldexJ15I50QyosihVBaHSSmE1ZWIs3G49ab584+t8iTAMtRsWElOolI0Ngbnhe+OjKk9/+voWWqN5HzQ7Mwzu0cBYToT2hPAkfepUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764409580; c=relaxed/simple;
	bh=uRpd2cn2vp/H3EIwALlopjhJwKq2UcM/mwO6ghYAUeE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mTwoGIKFLRatc8hAQkKU76Ac2UjE+t/Vp4F+x+kG+WbjIvMXjYd9iF9p5/N01QwAeh4R4aNPZ/6bKod5JA9jS3furP7iFUzjLO4sd0922q/Ixm5IM+6RMtW3M1fUh4zXFH23Xnaj1XT1PI/0djiJcfifL6cJptbBxzWmksXf9G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=boe/txdt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MvIvx/9W; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AT4dgUS1264232
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 09:46:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=cv+2iS7qHjsBq/waCdbpd8WWRy6Fwb6PhkS
	0TY3pF6g=; b=boe/txdtHz3aIhmo96ti2OkhcKyIX3U28cMaghzUN2BObJuvCTt
	/WhMXnxyTsDqdutijRpyBsEYJ6PxoYagNS1plLKxtbWgvEgTr0bjbRh7+aU/eU+d
	jevhiWsX8ckeNSnu9mT7vTN3Ujnh+RsNdat+Ot267KOfvcCTY5FD58BrqNYps4xF
	fMPq+GwPyHsHMvk8zjRpIadznEWc2kf1Ouks6k/WLuSf1MqTQ7kAfXBR/TqXnDWA
	XFfui2RBUdWy4RMfS2HWVK7vIbeFN7XGFRtZVIUie1Lc/fCuaTzwH1tRkNsISvJO
	oWHgXY4WhD/Bam7bD3Ydvtu3A5JeYLRWemw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aqt0j0c1w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 09:46:17 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2ea3d12fcso444594385a.0
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764409576; x=1765014376; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cv+2iS7qHjsBq/waCdbpd8WWRy6Fwb6PhkS0TY3pF6g=;
        b=MvIvx/9WmpPqeM7vdxGABt8R0KGt6d1XyegDVz3bbDR2Qts0mIhRx3xdnZMPzBi/LN
         dM4wGK3zuCyGxEU+U3o0u6pcO0NdyIOsUfQgJpGyaoLnpaIxxdthQdmnSWmncfbeDO9V
         h2Dlj14bSNsbn6YtMWxtkSn5eO/oR7GnFLdkKa4kGk4OiXkIlYA3nDjcyI+x6mnulrJT
         firJG8RJ0OMZXi96Ujd65Sw7hfwdbqG2hecsVQDhglKGpld0KFuUFbwdHDcw8d9XK/mo
         9eMb3RTboGcYnhK4k/KRLHJKEKTzNzUodX27DvZ9bXh7xQ41KgL25u6nYFCyByXlq5C6
         8zdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764409576; x=1765014376;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cv+2iS7qHjsBq/waCdbpd8WWRy6Fwb6PhkS0TY3pF6g=;
        b=UOSnc9SBPyVA1SVzZoqhBY7j8HSc3WraDP9V1F/n0mhUt2TycVDnMzAVg7a9Zqioco
         CKyCCBBOEjnIzFutV12IbgJ3qUqG1apniPQiRyeSLurqGXDn8v5Yv/wLc4oOa+11Llvg
         RyBJ4Mb0lFy4wMEQM1UFlIukgVhISMkO2UJspjEHqQyCnqViLlRf1HXOPxzX44GdhNoD
         Qw4O3s8sO9IReCm1HcWzCCRxUOXKEg9eFSvRi6xxfowGLDgsY6PTXImA4Bpo6MAGlQC+
         a7Mrtgsi8+QhLZG75gdTdOiJbeSWuUw/nbqGz8Nz/Gr/vviUdHy5FfAa2Czl4MJQJ/5O
         RR3A==
X-Forwarded-Encrypted: i=1; AJvYcCV8ptnk3GBvad+Oco6i2U6wdhh+sHOHLVwf/bSXBVSfy2igfGtulyf3lukZ3zBiq35y4EhpaKtv+Ttx@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8zSVDtK/eO3g/ll7Z+665WjSBdfey3rs5/N5r2qc73XjQg5qc
	iOhjLVo5l9WTDt72YsT01qR9wyOarOxwGO+hdNE275VrC+xlgxfcrJpZYe8BHm1Ji5lB82EuKMp
	35mbCK0VWWLDv/j4m1Wm5Y7XRrrKNj54BJD2TJeoE9jQ+oO3eJjH1UHuK+hbHISdQ
X-Gm-Gg: ASbGncvZ9aG87IR2HkYrPlNdVe3KntfWLPb+JidYdJBEJPDfwR0qmRtPHIzN/CQln+q
	4lJHpD6CDCNTdYQPLyuRVyMaWFxUe5U6AnRjEAIwK0PcCGJi9kr82mF7K5HZcHwySx0qoz5/aSS
	rBaDIXyJGqu7hP1uiIZNLHTBmYSHvEPp+BXefrDCBT7zjiztxd8aZ+RbNYzMTkLR2oDwbx7D3xR
	UQQfp9b/SLl/LBpSb77tEuWL3K613iD47334rYJs0kGMveXSJPeYMcEVCOmSY6vT6BhahBFFf/D
	KrC6MMfeNIL7qIBqiSjjfdkmQrwLCm5CtDCLrfu1coQNf800ggBaouxAD5O99FRNsyapWfX842F
	3Kf4512SoJtmgbg3ZVD84e+4J4+6J
X-Received: by 2002:a05:620a:1729:b0:8b3:3879:7dfb with SMTP id af79cd13be357-8b33d269d2bmr4024110885a.49.1764409576175;
        Sat, 29 Nov 2025 01:46:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGbxU4P0DNxzVjULeiiVXoLtq1gZ/snvDZrCOwLHi9IB7JWNikxZfAdBZHFLnzoOJ36FCvvxg==
X-Received: by 2002:a05:620a:1729:b0:8b3:3879:7dfb with SMTP id af79cd13be357-8b33d269d2bmr4024109185a.49.1764409575696;
        Sat, 29 Nov 2025 01:46:15 -0800 (PST)
Received: from kuoka.. ([178.197.195.159])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64750a90d5dsm6430966a12.12.2025.11.29.01.46.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 01:46:15 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] dt-bindings: interconnect: qcom,sa8775p-rpmh: Fix incorrectly added reg and clocks
Date: Sat, 29 Nov 2025 10:46:13 +0100
Message-ID: <20251129094612.16838-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: BmNVB6LGftRstX66PSV8LnFMx4cABN_W
X-Authority-Analysis: v=2.4 cv=WpYm8Nfv c=1 sm=1 tr=0 ts=692ac0e9 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FPK7cjBCgYbqzSTDLBmM0Q==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=gkUskBmUj5qaP5BcApMA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: BmNVB6LGftRstX66PSV8LnFMx4cABN_W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI5MDA3NiBTYWx0ZWRfX7b1IM0J34kzZ
 FS+p+323isEjY85m0zvvRHMnALN+DLDdrzUjOcHBwKlaPtgUFfE0xR8Yo43QgRJt4m+htKfGw/d
 2nMyEj0iQbZDYqJqX/xyTEdGWHdASu7z6YXtchEVMCFBZw8MJm7hmptXQdA+XOurOf84XvGP3gh
 XdNnBDlz16rEBVYmG0HtuRTHRjC6r9v5PXklWUt5o+/PPcWn48uAMdTlEDG0meYDJm0UXzJbY7q
 SCuSDkljAN6yXIa2A7ZnxPdFFUJgwRR9M1hjz8rSlQG57s2asuXTyrCFrUWyBZ7iDX99sloUVQj
 Z5nyIT30u61+/Q1RAz3ovAHlmTg4E1VWAd+5UsD+PjgbIBLT2gyZVutQyJbH0t+Kd+JP15/jJ4H
 68pfNvUza3/8tRYETJy3b1YlVUemrA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0 bulkscore=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1011
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511290076

Commit 8a55fbe4c94d ("dt-bindings: interconnect: add reg and clocks
properties to enable QoS on sa8775p") claims that all interconnects have
clocks and MMIO address space, but that is just not true.  Only few
have.  Bindings should restrict properties and should not allow
specifying non-existing hardware description, so fix missing constraints
for 'reg' and 'clocks'.

Fixes: 8a55fbe4c94d ("dt-bindings: interconnect: add reg and clocks properties to enable QoS on sa8775p")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../interconnect/qcom,sa8775p-rpmh.yaml       | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml
index 71428d2cce18..3dbe83e2de3d 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml
@@ -74,6 +74,37 @@ allOf:
             - description: aggre UFS CARD AXI clock
             - description: RPMH CC IPA clock
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sa8775p-config-noc
+              - qcom,sa8775p-dc-noc
+              - qcom,sa8775p-gem-noc
+              - qcom,sa8775p-gpdsp-anoc
+              - qcom,sa8775p-lpass-ag-noc
+              - qcom,sa8775p-mmss-noc
+              - qcom,sa8775p-nspa-noc
+              - qcom,sa8775p-nspb-noc
+              - qcom,sa8775p-pcie-anoc
+              - qcom,sa8775p-system-noc
+    then:
+      properties:
+        clocks: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sa8775p-clk-virt
+              - qcom,sa8775p-mc-virt
+    then:
+      properties:
+        reg: false
+        clocks: false
+
 unevaluatedProperties: false
 
 examples:
-- 
2.48.1


