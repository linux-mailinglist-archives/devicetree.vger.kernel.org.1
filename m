Return-Path: <devicetree+bounces-250759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 124CACEB976
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 09:47:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 512FF300F276
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 08:46:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9216B314D03;
	Wed, 31 Dec 2025 08:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M+FYPg+h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Pqg0b6Ni"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4D931352A
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767170802; cv=none; b=Dlxb6FMdxj/QmUxpdxWYCF2XOu5V7/M7g9pkkEW6l+W1hkIShYRvL8hnKOrx+sau/2tywWGcxD3m8Lc7SKEz5tAb/G5PSZiM7N+i2k3lAbPwmwE+4dmuYxY0VIvGzymXfYut1jluAG0BSXrn2wFX78SJgLgWE8N8mjEaw/SW/v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767170802; c=relaxed/simple;
	bh=7g9TAerjfKwdpfZPTYPbKsR61B304Bdbp5f6xLA+7uo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OXepYnen5m3RNWKj6xOblyBs7OSdr/WbdKQU2ZoSiLsffKLw3vo5Iy4R9LvzZ3UVYhfrJtUX/I+1nhtegt2ZPk9/k6x6z6qdAVTV8C8E5rMSZoOyfwsnh8FX9NuQZ2jgVpPDAHNxvMgEBGWMvsNR4+/FOR93qrlVChkhh7j+X0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M+FYPg+h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Pqg0b6Ni; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV6Fo5O899362
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:46:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hSJVO4tK87kiMBy9KdDNkzWDHU8geTacMo07r2QMtRA=; b=M+FYPg+h+wwGyt4K
	J4uNakAEcu7oXIxs1dMPENFXZuor+sO7IM9qoWGbpH4xca/tqPZS7HmZYH/YOJbF
	5lf1QgnlYHGvqBEi4jEeTcXUzVvodN9SecSqF1FqfoZanZ6fNPz2qfOuqXsXQyJi
	0HcobTvHj/iHlEeAWbGw3A7IbJLwtFXE8muYNx5WqEDB/892IBuFnBuqgRg4cvaR
	SYT5ycuikmKO0zjIrSpTY6QzpcpRDkCzYcNeWuMhKJDmcJOqPin54Cmv+xbnSAMF
	M5YH1ytZ/meYgC0NEFjEKXGG2I0va8li2jIrFXWZlA+zrolGEJcoDVtIYWFseMYP
	2Nmbyg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc8ky33eq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:46:40 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c704d5d15so20677274a91.1
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 00:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767170800; x=1767775600; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hSJVO4tK87kiMBy9KdDNkzWDHU8geTacMo07r2QMtRA=;
        b=Pqg0b6Nik2h6mR8Nu+uljhFsUHOhktt7/Ayi2dZ/lGcboWV1rbB5ECJSEtt70Xy2SZ
         WzNiZSHhKhaDmYDLGeZqFRyC6kwdF7JEC3BTcaL2LoBEDWGueoIeF/q8v33or50y6iYj
         07grSLkqK4uP1xueUWZwHo8L7e9r+tZ3eIX1ZJQT+nGEtFJcE6Mh5FSDgrZkL/gVxBMQ
         z6YYMOyK5pxn96UMn207QkjddNlAbCUFguZ7X+QmYzoLgyt1uio/eJVEHRw4488rdKwP
         picJbA6zc2D3GII6HqIOlZVdLcbrkzRgYa5/I0dYt7szRAYX1it8TooBAXthrUG2aLkP
         b+6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767170800; x=1767775600;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hSJVO4tK87kiMBy9KdDNkzWDHU8geTacMo07r2QMtRA=;
        b=bhnFLemptU9/Qz4myJguSQRzkfJV7OvAoM95mLpiBt+l1lNNoPVT3qXYXv14387nOj
         eMxTFeFRXoRuvFmB8YJkKSOUwe5zUqO8yULouuw3EEDB42cYD4NWmChTDZlJllcL8m2h
         SWA3lBVrlYDCz91XnbpM5yUvtNNq2jaRRhD/rMvrXx0fr5jEugnC1ZYhoGCx9rxZlzJZ
         l/zCEBxRa5TIwqKNt4/Jr8OjVpzrEtpH5gI1OzQUebumgv6TfCmW1/c7vIiNkiZ6vlMA
         r8aRd6BQS5YPlWGez/mXZiVeldLu4x9AqOetR3lf6RpEE6PzpDE+sOtHiGBM4P/N2/gr
         93kQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMyMF5ORBuxRyKSuIoTdtS/KPragOFQaoIilfaZAyq9GsictDgjUT2EB5mT4GeS4QhPqxJz1V4jZi+@vger.kernel.org
X-Gm-Message-State: AOJu0YyB4unJ5ohk6X0a5Bel72UGEakUrkDlKJ9VYEmz19bdgAs6pf5l
	HJ+D4LnRXREOFDKUw+9SKWktuZJ+h+RjvXkpuDda+u02/RZ30IMWIuCABnhNadhfh5Kkvuor3z8
	7KG/C57uaHgahWiXPa9ZkmiGp1AeD3QfIX3Jz71wuo31W9rz86z6o+zNr/Iw26uFu
X-Gm-Gg: AY/fxX6CwVw52Fj66nVTiS0lt3VA9tf7Kam7XUsj5/s8v4/77jes98WIRSxk3bJ7Uj4
	5a/V6p4qt4qFPhYvgYv/KTI6b2DfL5XbvWq4jDgoWD62bZCi4gB4wzq0QsVSV1CrWB1/lIpvM0Q
	0MwMZgKFovBzPXGMD+yJTzqk64Hi59u+LXabcDlTKdjZ25NnC/F/edF+7AjQtMSIqWAbUEnT94K
	8VFQ7Uj4axTyq1iYebBYHyb1u+i1ngqRlVLXMstT/w8lPawuMGv4r/HrtaGYOGpGs8rBvWiQtfo
	LK1HbiXZHELGqlc55LJXAKnhqg10/gfPXBQJt3k//FE1ONN8uB32cWyoFWHcYHVwstNTDnEIT4G
	Vk56LcV/WmaNo5y+VCjlAjINB54Z0sCoH8Q==
X-Received: by 2002:a05:6a21:3287:b0:342:a261:e2bc with SMTP id adf61e73a8af0-376a75ef289mr36084149637.10.1767170799749;
        Wed, 31 Dec 2025 00:46:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF3LZj3aQ3RmMZbRWDxlR3G3JhJ3X0q7dn5q/A2YUImhvN5Ny7zsayFNxHV8gsdTQfjWlbRwA==
X-Received: by 2002:a05:6a21:3287:b0:342:a261:e2bc with SMTP id adf61e73a8af0-376a75ef289mr36084134637.10.1767170799263;
        Wed, 31 Dec 2025 00:46:39 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7a018eb5sm31356070a12.16.2025.12.31.00.46.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 00:46:39 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 14:15:29 +0530
Subject: [PATCH v6 8/8] arm64: dts: qcom: qcs615-ride: Enable Adreno 612
 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251231-qcs615-spin-2-v6-8-da87debf6883@oss.qualcomm.com>
References: <20251231-qcs615-spin-2-v6-0-da87debf6883@oss.qualcomm.com>
In-Reply-To: <20251231-qcs615-spin-2-v6-0-da87debf6883@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jie Zhang <quic_jiezh@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767170740; l=885;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=svB5zAKLQ4ilLlulEeGxv7KOsmVUcgmPTb7ChJwfn9M=;
 b=SKf1bNvomDSWmG3I8m4P7wZQxwQfsnNcfm+afJ+hVBPYV2hrCwZL4JR/ccPbJ5L1auWMMFXym
 jLF8qQlA3EoDRG8q2Cgu1Ohk4yJFgA49MCX9/x51y4BAwFJrJjdAWNM
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA3NSBTYWx0ZWRfXwxPPktjQVCCY
 L1grbLM3UeB6w/CcQmayK9HD1ycz0HopgNbbUt25OP+hKBljKB0xFEV35ZplFnHdFVIRbbwBaCc
 lzMjt6U8cTaX/6BmUVyUnuzn3rW1F1fxNm3PtGmII1UVLAUcvmaRHQsE8m89sTMb5cbf83/MKgz
 CsLo8WwKd/J2kIMNktQvtlqyWQhw9Vgtl6wTd3iky5g532BUzehnv7olPkYGiYkCVxpwmPP8u0f
 NbzKAwefPWCANhyzn24g4dWV//23vx9oCTpsOPcsi3V1IOwE3146jdyZQqG9sXKl4RXMzJA4S3s
 ZOVXYP4vmrgDglDXn3l+VXPQh6Pek+CvjvVajtjQvWkGFf6PgbH1Wiubo2YvKDnpDIJdT+v35WV
 FD25IE02nqsYKNYqS2DpvTvrPit8CTzLNOUEWdnG9U376Sh8Xq6q8UBTA7C3SiqmTJUvjOQh7ba
 R9YRB+dwEUdi8sqPieQ==
X-Proofpoint-ORIG-GUID: 1ETcLckYLoqBp6c_bMIncG4iTbXg1DrO
X-Authority-Analysis: v=2.4 cv=BuuQAIX5 c=1 sm=1 tr=0 ts=6954e2f0 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=DDenb0FKNr3EH7qfFfMA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 1ETcLckYLoqBp6c_bMIncG4iTbXg1DrO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_02,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512310075

From: Jie Zhang <quic_jiezh@quicinc.com>

Enable GPU for qcs615-ride platform and provide path for zap
shader.

Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index be67eb173046..33e33aa54691 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -358,6 +358,14 @@ vreg_l17a: ldo17 {
 	};
 };
 
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/qcs615/a612_zap.mbn";
+};
+
 &i2c2 {
 	clock-frequency = <400000>;
 	status = "okay";

-- 
2.51.0


