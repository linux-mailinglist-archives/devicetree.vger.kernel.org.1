Return-Path: <devicetree+bounces-211958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 93119B41638
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 09:20:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0FD14548727
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 07:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83A5E2DA769;
	Wed,  3 Sep 2025 07:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WhP6YCn0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6252D9EE8
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 07:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756884020; cv=none; b=sHnloyw7hJM5Q+BPWvGEjtZMGe4Oer7EQcw+BOSn2gIxCbmtqxlMw8dBXV0LYTKRBCVjZf2JrNv3Gou6QQF/DIpP6we60Hl/kWwIuEbIL3q1cX2CLz0dsqw4hELTPphqbPyoCOWCMT3SmZPMJuJkAxyXQOUlQtDQ2G8RzR4s5Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756884020; c=relaxed/simple;
	bh=OqO8tYRqtS5572WtbMixP6NoK2GKv0qjh/+BfhYV+CU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GopzQ8DvGsOaLfWm97Syeqn8fviTcqGj2bBKospTV+peUKz8/P1ipVTqQQEyBJdZSOPTtdak6gvgLLJrHVu3hnFmAZiN36wgKDyhpKS1uPJHD42fj4xx5Qkn2WTYsNt0K9MQM1TJ3dLxd/Uf52cm/3PapobN67aq/JQQCBY0OKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WhP6YCn0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5832WsVx024068
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 07:20:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PR6KqsPCNUM+EZNcWonweXt6CFzY44sPfHX2M7jwd74=; b=WhP6YCn0bkXXOkys
	EFEdGtm70REHJV1emT2YiqfAql4S28V40ku38wqrVS+fWnbF2Db1LAqThyrtw1nz
	dvkzSygM8E9XmT/TMc+mqjYY8q831hCkTv75Y6/NO+XWPVVBd6zK8Cc/wgp/Dd0Y
	lMs4cvXFdBb2texc9SxEz9RaB11usHC7hJHIKW+YH2Oa6cCYJLs5wHl7Yiti1OqB
	5G1rEC6bfwJBRN8D7O9NnJomdiWg6JkW+5DO6ky/byHqpm7lJtE503E2gHgtXF/Z
	EW5uOLbdh0JLGl3urfzT51ncIugEhqPmDlWlNgtqyVU/Np8frLrjhtR0Pov5x09D
	M1Yh1g==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush32fe8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 07:20:18 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77250d676b0so815914b3a.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 00:20:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756884017; x=1757488817;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PR6KqsPCNUM+EZNcWonweXt6CFzY44sPfHX2M7jwd74=;
        b=oj3+4mgwCjxQ7+l74KwekR9lILkfLY41QhxW+LAzDv5d2tEuziJ22c/GH/7sMDTjfR
         +j/jnVBxHRsp8bIMO6HQrCygXmOm5+VHlrlh+cIiSIKTscAUFGUuy3uNRMs3Res8MGCE
         kaOJuA2A0OecmUokpiHR0fitoG5Q3ryExTi/aOCjhQpPHO6r0FBKYQwwGIw0o2ATndEX
         u2B+O1fPh30hAH8El+2IfGOFXeCau5nktqIgZ3euKO616IKf+VGFGWK7O1gJOAGRCg8a
         Yi3FFNwtxUdm8NtJ3aWRQ4rLS9TplGyYvaVf4Xfupj+nOBZQohZeOendGGNfF0ZPqg9l
         Nubw==
X-Forwarded-Encrypted: i=1; AJvYcCVOr4nP7ihcUJyTWwIHxtKh2JxsTYw4QJtflOvx/SJrmhQfVDIS0OwOzo+Jv5FoTwNAOC6AoOKYY2Sf@vger.kernel.org
X-Gm-Message-State: AOJu0YxckGmTNYb4pDAckrPoVnXTXrnDMuXFk5hBpb1X8RWZdT7d9TWh
	M9msW0aQ7rjMjMqiWpgO44w8xxX7sEL0wjP5EXYzey3egu8zd3jWLX2chgY63bcAY8G4/6d9UYx
	55I8oC7w1MjnR7ntPMoIuW79itf5qAKMbSA1sEsEh3AqmVPVP2QC9W7TPTIqQCBKW
X-Gm-Gg: ASbGncuxZDnmhZvjSVi4jqgr4DIQaxVSZoPKhUJZ/l3isijxJNE128IwXR75IXKU6mf
	YsTOqkzOlq8Y9DrsTBulI4L0ofcVNiKJ9DqIoIkzdvehDSKplWBoMH+cuMMNRYZhMZR6seT+xi2
	/fYpkuGXmSM/0igY/OJJMqPOEpA/5RacbmNY5KQbN4BkPdhmPfMB2t5zdEXZR51i4/Ty0B1JIfv
	fiS7izMUPGDnDLjR3WbNTetT4+ddFhjBlw8gtfc+X4o7SqtKJAVotpIE/yALN6ICIi+1Iggwd9B
	gCu9AvkjcyyEEP9du8ZwBpfomM2w1R7ehwAiI5Zk+hCkXARsHDsVQxsXz7nvY/XI
X-Received: by 2002:a05:6a00:138e:b0:76e:7ab9:a239 with SMTP id d2e1a72fcca58-7723c5c841bmr19009912b3a.16.1756884017225;
        Wed, 03 Sep 2025 00:20:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHoCKD0QFh/hM1sUteZfm2odrN6P+2cM9K5e1ZRXWq6q8tcAxq9HE3dI/77BQtbZrh4URINKA==
X-Received: by 2002:a05:6a00:138e:b0:76e:7ab9:a239 with SMTP id d2e1a72fcca58-7723c5c841bmr19009871b3a.16.1756884016695;
        Wed, 03 Sep 2025 00:20:16 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a2b78d7sm15816191b3a.30.2025.09.03.00.20.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 00:20:16 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 12:49:52 +0530
Subject: [PATCH v5 1/5] dt-bindings: display/msm/gmu: Update Adreno 623
 bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-a623-gpu-support-v5-1-5398585e2981@oss.qualcomm.com>
References: <20250903-a623-gpu-support-v5-0-5398585e2981@oss.qualcomm.com>
In-Reply-To: <20250903-a623-gpu-support-v5-0-5398585e2981@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Gaurav Kohli <quic_gkohli@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756884002; l=1928;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=u87CzBgcXsITaBIhArlZrl9vUsN6j2cKpyp8cwIsM1o=;
 b=CiL9c+CxrSxF6MC52aVaGcpBg9TQe2gy4Y8Jxg1eWT61ioWHIbVTfgmwHGthgwBy6xFhNGIuo
 MlZS8xehYqdC431+l2BX2XaNWR5GpZOMBdClLX1Okkx4eDs3yvXlzfR
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfXxp5beQt6MNJT
 rmadR6XKz/LQRLLwI/EIUlW83zyOHI/lUvilAh95dZW06S9T8+YUSkwY5sMlNkZx8GFuaPvhG2h
 eDnEjjOAhz2SpjJP4ruSaYB83Ru0rKG2ewe/tIbOaFMoCmDojQ5gZxVKzyuqTDzb/ygFo1SWb+4
 +BTptkFiRJxyTR5+sn8zhdT5QVLp5LUa8KMO5RfZGVk+0TU52TXFUTeYaL0S+LVzBntdiAOdY0B
 VCekXJzVNPaSOZwhvghNAZ7VtymskexHFRX8+g4NZ7T1kCJjOkNrvYifdiHa3Kil5RyOlV40PKU
 PwSDvt/L4MDEDDD0EJnPzlZ1F8Egx4IS5tmjUW/xX19j/ms7F8xmAfIzeWCbVwtEQlm9cmKwqCs
 bA1y3A6P
X-Proofpoint-ORIG-GUID: 3GJa7b02SiJKXTYUj480TZaFk2LReNma
X-Proofpoint-GUID: 3GJa7b02SiJKXTYUj480TZaFk2LReNma
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68b7ec32 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=Z2Up3Oz-XkvUWgdIv6MA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

From: Jie Zhang <quic_jiezh@quicinc.com>

Update Adreno 623's dt-binding to remove smmu_clk which is not required
for this GMU.

Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/msm/gmu.yaml       | 34 ++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/gmu.yaml b/Documentation/devicetree/bindings/display/msm/gmu.yaml
index 4392aa7a4ffe2492d69a21e067be1f42e00016d8..afc1879357440c137cadeb2d9a74ae8459570a25 100644
--- a/Documentation/devicetree/bindings/display/msm/gmu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gmu.yaml
@@ -124,6 +124,40 @@ allOf:
           contains:
             enum:
               - qcom,adreno-gmu-623.0
+    then:
+      properties:
+        reg:
+          items:
+            - description: Core GMU registers
+            - description: Resource controller registers
+            - description: GMU PDC registers
+        reg-names:
+          items:
+            - const: gmu
+            - const: rscc
+            - const: gmu_pdc
+        clocks:
+          items:
+            - description: GMU clock
+            - description: GPU CX clock
+            - description: GPU AXI clock
+            - description: GPU MEMNOC clock
+            - description: GPU AHB clock
+            - description: GPU HUB CX clock
+        clock-names:
+          items:
+            - const: gmu
+            - const: cxo
+            - const: axi
+            - const: memnoc
+            - const: ahb
+            - const: hub
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
               - qcom,adreno-gmu-635.0
               - qcom,adreno-gmu-660.1
               - qcom,adreno-gmu-663.0

-- 
2.50.1


