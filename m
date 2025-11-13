Return-Path: <devicetree+bounces-238395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 65401C5AA2C
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:37:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F09E935627D
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACCAF34575E;
	Thu, 13 Nov 2025 23:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ThXyaQTD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K6ebtLN0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187EF345CBA
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763076738; cv=none; b=KIQfzd/Ja2aja/jbpgZfVCOSO9jD0BzHH6bQm2FDYeNG4HX2n/Aqn8ons4GJnlWgpA5sI6kAmxkN05VVb7yQYojiYpuoFxWrW7UmIJQbbwtHHiywb90pv+HiRNvjUKWcQXBpfjpdV5ZZyiy9p0jupOtresVQL5yZ6bqLSstqE1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763076738; c=relaxed/simple;
	bh=DBrZfc4GPezP/e0loWuAe+68GknA5/X9CxqWpGUm6+w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NpwawJJETNdNWds7qUOl0NALlzhNHWduefm/6qo+GIkm5buAq0qOqOPVwmNPX5oWXCoyaKu8+Ez0P/zSTCFAmEtD8hxCto1Tr7tq+PtWa1YqE3rDLQuL3BFiN/CgfUoFN6vS/i8cknCiniOD/lA0rD6AgOQM/YMqq/7TwcEODK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ThXyaQTD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K6ebtLN0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADMakNP1699539
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:32:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jRYfEhQHO/l4hKm8jFGZ03SmUwr6xcPm0oWaVVNpW6s=; b=ThXyaQTDJPqOcpAb
	1tEkPU6On/laF1l3L7aoaFM6DzJ0yGYot74k9fRZpKoFQ9jOpKf+ce9rvXeL8nXC
	Jl3z7rn14ut8dTx0fKahmsGm6xSazPsfYpmZCsw/J8CqgPizB6jlxTNGOVbwtv3o
	GpgA6+7Id2RZ10O6s9GbGLpPE0IYh/f5F/T79qhql/yUkYl92xyAd9nVpvw/FT/W
	kq9Kw/rN6m0YqrkxiYBGdnddkNctuWrY0WmfZwbamQYVuhOHo867Iil/qJOhs6hG
	fHGf7RKjzmdeHDHtO5h9yooAHvlEGBi/rXyRpnYtuQlKvtbVtmVhBITOsp9ImlN1
	Ww9ijQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9e04a5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:32:16 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29846a9efa5so34550405ad.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 15:32:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763076736; x=1763681536; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jRYfEhQHO/l4hKm8jFGZ03SmUwr6xcPm0oWaVVNpW6s=;
        b=K6ebtLN0hOBZHNWb5G25mz1ZBcxTx+PQIz9Usb6NdFWTJl6+1d7GSOlc+ONYuGB/Xk
         q/V1yoKvgD01Dvsf91dp+TYunqia6uvMnB8iK3Pfbf6KOtJ6mhb/3X/DMRAQISSDKIYl
         nX9bT5BvHlF45zH6pCe5STpWKTSClWmtvRVJfaD6gGUuBdakKs5hJtYjkfdUBvplcnmK
         PkpMhnKDtXWaJyhreX37yp7nLWcFcO7EAfD52O9NH/rvcyTbKDIz0UvvxhIne18lagoU
         rsQO3jGF/T+paCdZ7AxaxoZoxacCuDidYtxIkgvWWj6YT7i8d4tLCcpfPH4UhDpTeMnR
         6bdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763076736; x=1763681536;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jRYfEhQHO/l4hKm8jFGZ03SmUwr6xcPm0oWaVVNpW6s=;
        b=lyNJEItjP7mMaTf0brdB+fcbHp2rlWfppyKgPufNoRsjNLhCbxuWq5UDX6NoNDvxCd
         8WLK2tMsgjye5ALbetGNMIT8kCexTInlHYpMRcQ3+g9fYD3C/BN9WnXdK7kVmUQtZqL9
         KNEhhCft6YbRZ7M6Cdi+FrYlCXezPpjl2gsoIhSAFghPMiAs4ta0irxD786IQLyTtqaO
         F4+74Wwohvsrj/iAvbxPrHjQybBofazEcuWGeFV1oBjZqJGvBIVV7z0nIvh1RPzP8MKB
         jmyo7GnHKlQGaaTf18gg44Hlk3JfcqJ3wURbhf3aT7YxlTohpirlD6S+bbxorwPve+0K
         bRkQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUJGnGKhRfHJQbeGpvY1xmCGNGjUI0DoytNQUcL3CV8Zu/le94nMBCzKwHaGpe0RmcrmzFebkgqe2k@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw6Bh7nzbzbKbd3utOeMkmhl37nWfbZh/dTsBqTb3oLbVtRe1m
	2sU20WmH+vLQEDrSQGBQLBKyq+aKZlgmCLxWgSQQMTzwap/n3LJTen81JWZOVniXXiH+N3ZZRrg
	1FkCC7uJ39wppLaJgB1JDFYfTOHygoa6BZ4gSTzA2MDEwPaogTqO9h8R4wlaq+zO0
X-Gm-Gg: ASbGnct1R90ZOdRUPQVVYzNMOkvM2aCU9+UE60swEUGxhMZOKJghZKBRJ5A9u9WgfmD
	NSTyq0K2jEsgkfY97Gu33FpOx+IB4xk6Y4quxowgbqX1HZ6NDQoE6Mib046G0wFtC+gFYJmd9d2
	UQeVBAccB8raJQo7Q1zFITIV1w5D//6kviBEcVz2GSt1cadVGRgAlNKCjVkMpY4qCx7/Q1HzQcO
	dl4IsmCqNa4W3EllE0UTcQtR+UhqlhzxfVtAogCTVFXhbJ+kF5WJCK8+EU52JxG651LV05vGGWh
	lwJvJoUKXd3ClFmwI1brfuhVhDicKPmMkMCjs83qlrkREfKpLTzZqdS6V+VnciwEzuM/0ZPnHRw
	zjhvH2pBlibNUT6W7IMnwLQc=
X-Received: by 2002:a17:903:90d:b0:297:d951:b4bb with SMTP id d9443c01a7336-2986a7435ecmr7356075ad.47.1763076735695;
        Thu, 13 Nov 2025 15:32:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEodQqYgRJkYLIy60kg92PboSbyAXwzBxQKHsvJ7k9auT4mdj7T3WB7cWTBc3Q78iQHPbKACg==
X-Received: by 2002:a17:903:90d:b0:297:d951:b4bb with SMTP id d9443c01a7336-2986a7435ecmr7355695ad.47.1763076735212;
        Thu, 13 Nov 2025 15:32:15 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bc36ed72cd1sm3049486a12.11.2025.11.13.15.32.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 15:32:14 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 04:59:17 +0530
Subject: [PATCH v3 20/20] dt-bindings: display/msm/gmu: Add Adreno X2-85
 GMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-kaana-gpu-support-v3-20-92300c7ec8ff@oss.qualcomm.com>
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
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763076574; l=1677;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=DBrZfc4GPezP/e0loWuAe+68GknA5/X9CxqWpGUm6+w=;
 b=VcSmbJTK+AwALI8XC93AXkctqWpbKLucIhitRFtg+TnNd7qWT/+mcPon0M8DxlJ+BMR8C3A3A
 P4jrORXACVYDIs9gVsH1RAPyI2NIJ+HFj6zCe6e8XrFttR2KeLzGgOY
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: gxD1h2fvrVH_Y7ra7vPfp_PZRgsKf9Oe
X-Authority-Analysis: v=2.4 cv=SvidKfO0 c=1 sm=1 tr=0 ts=69166a80 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=_Uo5JhhLEGw40-SN2AoA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: gxD1h2fvrVH_Y7ra7vPfp_PZRgsKf9Oe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDE4NSBTYWx0ZWRfXxo4PiquGsvc6
 spd3gh9xs1V95u1+l3UHVS6eu44H+Rm1BR5WP6V4vEGXAf/aAcFGEsCcbS0ZPCwMFajZth71v2g
 sk/hRKkWa73du5gmjVBJYESA9GqaprSSr5bONwFZUB3Flgz+HXEeM4t8J/2e3kzoypD+GxtHbnN
 4mCF++mW1d5sCuNJJ0R4Tcb0g9E4Nypmh/GLPI1+CtNBwecRV6ayAn8OfTb5cey+yRqJg+lXinl
 gDxhony5k3kd8zr6Rq4srOJ5tgcH3rYrDFhAepgDnlJDyMt+Gum3UbI5TS2nsf1/GmSxiA0E23C
 M88VdITwEea3RqWS3vSrQ28OB7dU8dSvP/Ze9IhbdxVAW8FAl9h4nI7UYptYZNSD+Adb6lKDFOB
 hcNdz5U3TNIw5olQCo73qk9PXPlw2g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_06,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 malwarescore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130185

Document Adreno X2-85 GMU found in Glymur chipsets in the
dt-binding specification. It is very similar to Adreno 840
GMU with the additional requirement of RSCC HUB clock.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/gmu.yaml       | 30 ++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/gmu.yaml b/Documentation/devicetree/bindings/display/msm/gmu.yaml
index 2ef8fd7e9f52..e32056ae0f5d 100644
--- a/Documentation/devicetree/bindings/display/msm/gmu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gmu.yaml
@@ -327,6 +327,36 @@ allOf:
             - const: memnoc
             - const: hub
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,adreno-gmu-x285.1
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
+            - description: GMU RSCC HUB clock
+        clock-names:
+          items:
+            - const: ahb
+            - const: gmu
+            - const: cxo
+            - const: memnoc
+            - const: hub
+            - const: rscc
+
   - if:
       properties:
         compatible:

-- 
2.51.0


