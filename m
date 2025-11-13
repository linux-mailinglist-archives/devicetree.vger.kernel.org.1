Return-Path: <devicetree+bounces-238394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9309DC5AA23
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:36:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 80C3A355F10
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:35:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51080342C9E;
	Thu, 13 Nov 2025 23:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a4d0xxhx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fhx0bs4L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B064433B6FD
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763076732; cv=none; b=OwPF06FaPLSUaWmLwUBWxtJ+ZcYaKIYZ2daaN277yB6G6a9lu9F+nnCM0jsk8WZMixjXtJ1VfC+pgyvOWwndpxsc4SQoTcxk1dM1HNVLjkqGWNpZ1O/X9OwNqsowiaGvmSlKgIarL03uxSJAgyKdvgLko5gCjgEx0k33Nb4gREg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763076732; c=relaxed/simple;
	bh=NcxT59isJ8a73ABBo5632Wjovo4V8SjmsWcRhDa2gQw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kCfuqEYk40lFDzms3oAWHGI1idZr9/jxMouVHUBpP4A8Ip0sYlH42b43IZKVc8Bv+X8s21qxaj3afrtLafeoAFduaVZBIPBjyUARzsdzjhtiNpxOvWFgiYOIfKUHBPCu2K1rTlWvkbzldiwPsdhDLsHZp6a6tXYDZO0VSBArhE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a4d0xxhx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fhx0bs4L; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADMaoVn1581110
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:32:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NK80NgI1LQ+xDyFsHtTpc6wl2L9uxC1wWhpBghxroMY=; b=a4d0xxhxjAelyvzC
	14qB1RZU5SzKhTR/+8uaIytjkRy615Ki7P82uR95s3soKwi8eYt4+fVbmC68iRZ1
	cbe/m4YgKDZ5Qr+q0IEYv0hqlcQu9CxDIb9C43JVtTCoaRId43Hisw5E0Q/n4KoN
	/EVgjaHKveYm7TrD2OA4QrJ61Gc2nG3OYuth7Zq6XZWaeHFImep4FTP3BYgGQL5k
	ALEDs0hgul8ieiSqAoIJFPE0N3Bm823Na8XfbUWBaZW9MNXm1/6gZLJhjaXo7NCK
	0+72Fh1qLvBCq/a70+gXsIdjmjsYEHHTPQfcd6B0klU/bo/daVsp9Rira1EA52W4
	9VeP+A==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9fr4dt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:32:09 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b8ed43cd00so1721606b3a.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 15:32:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763076729; x=1763681529; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NK80NgI1LQ+xDyFsHtTpc6wl2L9uxC1wWhpBghxroMY=;
        b=fhx0bs4LSUuyvFUuGzzxnt/97breSA0ZLmRzNDVCmG5Xvi/zlXBxQSThU5t4otGFms
         hRQi8c6lVWIQ7p3CV6UCvMuSwJsIi2KLfTssiUo2T1dA8iKZp8AcpKe3xId93lWm610G
         Br3U+PRJTxvi1OQrOLtKM/uRtLD4WeYVVuA0FPhcxCm03nBFQX0yng06yWhsrUYBAT/w
         fRgpxiPmpyttqp8cIVeJ5I6g1NDBbNKSrO/cczVucDsNV4/iSd7agFy3ryBIz9biwpmW
         arb10dCB8kIwYxxs6wdEdMoPOCnaPZxZf9w+uuFGYLPewJuWJ37sHEKwCHcyYDuhoNbP
         p6qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763076729; x=1763681529;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NK80NgI1LQ+xDyFsHtTpc6wl2L9uxC1wWhpBghxroMY=;
        b=vhhDzD/f6CUBRABIBgkBkSx2Wbtsm5Hh2SDodWRTyr1PeZf7ibhmX4KjfWGLoLMY2F
         AJtHjwJRZ2tTS2w2U4GF2VuRs4FVX+faMKwEObOc6xWqactUe8pwZTX3R0arfzcsSdUX
         TI1OU09fQxvkaRfj2u/5o97kT/Xux+twE8S2rsjqeWBS6mQylBZXiAZgjx5fJxZheqCx
         4VUxUEds1kg0rx2tYl7s9foIy3hfrCAaf98U9nPgFfrO73BB4ePJmWUMsu71rnJBKY7s
         xSxj8oN6EutnkrtKzT023EyWgLBNMB4wcDk0xIL+6NDg5GJI0rtkyaGy22Bkzys3Be1Y
         JYyw==
X-Forwarded-Encrypted: i=1; AJvYcCVVmt0JyD7ZmxRbXp219fqkZpluQQP14JrHtMvjtscCkKWW30+juJQugsrCkSOkQEMVLR1RrnYAq8Rn@vger.kernel.org
X-Gm-Message-State: AOJu0YynkZDiOF/QYLGsVw6lKSNcMvBIuy6pJpCwb/QhE5SQ74pgULFo
	ElDwf7rwLDeuJJYAk0lrg3UO45UVKYntaDa6urZr7YhR91aPfw/43+/MnnRhAZP1RTWtD/uxBy/
	Uu3f3yDgcRB/nmEjNIqsJoxlnCoeTeEgvjnCsiHCeSp97LCpAjY5EIEyeKVZRGctr
X-Gm-Gg: ASbGncthXRRLEfeiUeJk6ArXVo5bzLLAyZfvVkeCQz69W926wlh9EXkve0ML0u11VDU
	Xgvn503NC0NSeQPGDmhfM5kcRjSA4iNER6o+AxKc/raJzU9km0JtgpRRRzxZATEa4L2s4FRol27
	Ig175akCpRUqIzOEa+SViVnDXI3+h4NCuSGsJJ+3t0CuBeNvADiX8l9goTloX/7N6+2Z7CG/10S
	VIk3DT5mjcAZTTXrqh+E+saz1ryBm2H5I80JExp25HXd8K0ToLDeWHE96WR8s67yXVuH/bd0OOn
	EwL5YyiOVKRyMs/vbLaDgdySeLIOB7D54hGBYScdW14blutPO3cL6nojgOt03GNCaJxqZ2cVISg
	Xvsr9Zc50+cTXze3JZhMRzp4=
X-Received: by 2002:a05:6a20:6a05:b0:344:bf35:2bfa with SMTP id adf61e73a8af0-35ba22a50b8mr1324558637.33.1763076728261;
        Thu, 13 Nov 2025 15:32:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF6uREXH/Pc10p/MC0DwkzSPYkXnu24e85a2vO48Pf1B0J1ZDbHns3wpDriZyiRRICYi3KciA==
X-Received: by 2002:a05:6a20:6a05:b0:344:bf35:2bfa with SMTP id adf61e73a8af0-35ba22a50b8mr1324510637.33.1763076727731;
        Thu, 13 Nov 2025 15:32:07 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bc36ed72cd1sm3049486a12.11.2025.11.13.15.32.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 15:32:07 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 04:59:16 +0530
Subject: [PATCH v3 19/20] dt-bindings: display/msm/gmu: Add Adreno 840 GMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-kaana-gpu-support-v3-19-92300c7ec8ff@oss.qualcomm.com>
References: <20251114-kaana-gpu-support-v3-0-92300c7ec8ff@oss.qualcomm.com>
In-Reply-To: <20251114-kaana-gpu-support-v3-0-92300c7ec8ff@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763076574; l=1792;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=NcxT59isJ8a73ABBo5632Wjovo4V8SjmsWcRhDa2gQw=;
 b=1I/n72yonmFfJu99nuC9pKcCGZtwySI6gaBDPVUw9OgLX+cy2aGKw/hC07Gf38Zy4Sr4ku1tk
 cZ+/e9WMsW/Bium1P82WjaCDgxrkdRPqz4svvg+Jow+9tYBM2ylPeAi
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=SdD6t/Ru c=1 sm=1 tr=0 ts=69166a79 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=e8idWDajkKX97RI96f4A:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: BqLnU7jWE1RkQ92wSEDnbvv9jbtnJY_B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDE4NSBTYWx0ZWRfX2m7jH1TIPcaA
 o6XnC1Dd0DFjeRtrvVAtQy6TJAfqHkVqqFsd6EjtY+jGH+cIBNn8hu+Qx7VMGON8zZEZGyW07Wp
 lUq/1dsosPp9IXQPS4hISdGxp3zP8nD3ImCV0iGztWflYzCC/z2w+E51esFIkgF86ofqjRW8bma
 nX1FFqyqwUeJM7ZD/kqnFMqIWhL4QgClnnyOndeDHRJLMeTTsqOioN8dpniVaNiu4hEKqCFVk55
 nqpLNjdz3rfVA3HOj490lMzARCm7EIDXCeTVLV4kO6QXDObqyAPoJscXmSXsBx1QNu2AA5EnVf6
 45sgouJti3tZVcgwX7XAioVz3+NOzLijlFgzrQ/N3uNtxhUzUKKU1cCIIZcUyAgzDR3hbL4N5od
 Y513cqagoWRxY7+QRiNkDGagFT5Y7w==
X-Proofpoint-ORIG-GUID: BqLnU7jWE1RkQ92wSEDnbvv9jbtnJY_B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_06,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130185

Document Adreno 840 GMU in the dt-binding specification.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/gmu.yaml       | 30 +++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gmu.yaml b/Documentation/devicetree/bindings/display/msm/gmu.yaml
index afc187935744..2ef8fd7e9f52 100644
--- a/Documentation/devicetree/bindings/display/msm/gmu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gmu.yaml
@@ -21,7 +21,7 @@ properties:
   compatible:
     oneOf:
       - items:
-          - pattern: '^qcom,adreno-gmu-[67][0-9][0-9]\.[0-9]$'
+          - pattern: '^qcom,adreno-gmu-[6-8][0-9][0-9]\.[0-9]$'
           - const: qcom,adreno-gmu
       - items:
           - pattern: '^qcom,adreno-gmu-x[1-9][0-9][0-9]\.[0-9]$'
@@ -299,6 +299,34 @@ allOf:
       required:
         - qcom,qmp
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,adreno-gmu-840.1
+    then:
+      properties:
+        reg:
+          items:
+            - description: Core GMU registers
+        reg-names:
+          items:
+            - const: gmu
+        clocks:
+          items:
+            - description: GPU AHB clock
+            - description: GMU clock
+            - description: GPU CX clock
+            - description: GPU MEMNOC clock
+            - description: GMU HUB clock
+        clock-names:
+          items:
+            - const: ahb
+            - const: gmu
+            - const: cxo
+            - const: memnoc
+            - const: hub
+
   - if:
       properties:
         compatible:

-- 
2.51.0


