Return-Path: <devicetree+bounces-249778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9977FCDEE9F
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 19:32:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A0C323009055
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 18:31:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 001522222D0;
	Fri, 26 Dec 2025 18:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZS2uxvuP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GBbB2sxc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCA9299949
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766773854; cv=none; b=DKqItokC4CqDzcF3nQOuESH7w5q6ZG9Ef/denJe+GcJyik/cBv85jeUT4/xsqwLVYvGwzm928FYvMvy54Xsd0Ch/4vf4QBVLe/rWDh/WLpEmpqFDZrnOE2+0yf/Tbn0Yinn/r6632FxjbM2gNfVqli9d+Y53HniA/235WsKotPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766773854; c=relaxed/simple;
	bh=a83xXodd7cBQBZtIVL4BfHsn2syK66CfRKrb3SuBQGg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ICrq5SQwyw2RMGttSBqErUTOcq+FDUcdlGTVdEw2OFqt8sGT/efUlysJhxxEaqBeSwxAQUHkwO8ufaXhTtEzgWvSsnhGt0vU9cc6wq/eYt6QCtFHbYqC4Y+6ANBpVJfAIxEuFbZXL1PFqsgJQGVu5d4UF+4eUVNORjbnExSt94k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZS2uxvuP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GBbB2sxc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BQ8baV62454345
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8RhnGzHB7RJ4bB614S9CKPMqT7/ALI4I5qiLyceTZ9Q=; b=ZS2uxvuP4f2qblcT
	irCe/kbwueqooKiyfXxyE+NnHEHCjERNh4OxYdv+9ngOmwjSzB997qvTuaw34mRP
	qBSfxq0cSfA+EFppmxvkYN+BUz72D/hGESnkqrgoWeXyABT6kNyFGEdoNEwRDhZ0
	5ahk20k2T8NOD5gRfYQ5X9yvCqdne7Tly9JQ4oBJjNHpU6XOmq1PoPelnFTX391t
	dBA43Kk8/acR+Hsfj3bXWQsRfel5BXqS2E1bGizkoIBrjgl4fznHGdWYuSO7vHSZ
	FNrlaQPRgPPgSVZMfQB/HMBL5jdLFwJTZWzGU8a14TxsI0LHvP+vVgllIo53w/K4
	K8Ykjg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b8hwe4uab-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:51 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34c7d0c5ed2so8126205a91.0
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 10:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766773851; x=1767378651; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8RhnGzHB7RJ4bB614S9CKPMqT7/ALI4I5qiLyceTZ9Q=;
        b=GBbB2sxchieE1G+L8hSMwPwhja5jc/b7owXeAdcVnHH0cvBlmzY85QR0aL9yd6LIEs
         5+eFNr0DrTG09zKgZjnDamWppcCwz2zutsFWm3EevC+3IwdygGuE3eNLUvQWOjXSrEc1
         fpUJ9HKiYzNymDBl0OyRKCunizLMhl6DDiUfFHA+Ga2uT+1rHuti6Eyjd/GJAzy+RAYo
         FLcoZyFPfLAEP1PcDyO/PgXkccvO6U6TzteyVb/eA+EvmDXdXhGYzEOsqe3D+VhxJBbq
         zO9xttxZdeQSKFv8NJ/eWIs7Dunz0jXA6Pnjl5cViTOsJeeBhIXsyyOm6FVLSJQzQdmp
         8nHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766773851; x=1767378651;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8RhnGzHB7RJ4bB614S9CKPMqT7/ALI4I5qiLyceTZ9Q=;
        b=i4b0uTwWNTm1saKL3Bx6noI51gDKfUUg5yfn+7xwF9lGwqLlZI0o4TwW1MydmE9MzI
         boK7H+xNky406UlurSbbMZyuxraB++tQvbS0JVRpjMwLIyFNn73RTq2rAobjx5zPnx/+
         8OvwnsCuuzf6WuBDXVXHDvFYwYewb+SIWmyoYLUJyUTQBH/ax/hJ0qQfIePRHwBXCS7N
         RXbU/+S96KcU+tpG+yfJ8bP+7MRidG3oNEpxYHqNUk/HF2pDc+8j2oUBt8po4uxxaxLU
         HLpRfsy67ucyqMRsoZ1noU14Z5mFU3Nv6RcgJ3xp/eUzuzJgFrczm+jhv9Cmu3aZ8Sdw
         PzFg==
X-Forwarded-Encrypted: i=1; AJvYcCVWgZ3Ej2818sijykyBR81VUZ4VJ+i7sEki8H4XQETQNUCfUPjo4oyXwk9orEEjCMeNGj3kx+w1ZpbD@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3gg7SKOCxMAWnas1k4i620e+1kAd5UPMFWeQOsiax5IkKTcsQ
	ds1Q/px5giB7O9AVu6G6zmK57DIM4w2lCQfra10tml7gmx9J85Nf0T0lGq3TKZ3BUpyHPeGOGBN
	NmNUgyy24iITfRAtOL0UevQiDP7Qe5tiLuBIsp3VoTGh0eG5ISfqcqF8Z+iQ8lus0
X-Gm-Gg: AY/fxX6lqgB+g0Rack6ASK5azxwgREc9Fq8L6bsq3B9+K2q1TAoRTBwCbMOe8CGeiw3
	WKSA2I/FO5xAs5M7VARtx69JYhNsh2mbOrBjj2dgN5BPi3SPshk0HpP1fuECqkmhrDcvLvonx1N
	NbdSZeM7x7cQ0R5m7tUWX7TByiUQtS6gx4SGBZI70GVg1VhQl378bX16dxSUkisSp4iisv9Z5eB
	gL9X9L6j1K4NvSTqRcamijhYlX8F1LEcHOkp3ZxZ/pOUQrmdbWsBfyuFzfLVX9sNGHcsXvWfK79
	fLcV53d7+/9A9BwMUOCjq6ATy6ZlzjOWMjk6y5oDitfmTOBEY3BIaOQMx3ov7ej6jVBj4WWiLaA
	jauLt9/xNCJkqewNo8m88/B7P/uCi2h5DNw==
X-Received: by 2002:a17:90b:580e:b0:340:c179:365a with SMTP id 98e67ed59e1d1-34e91f6c085mr19801646a91.0.1766773850782;
        Fri, 26 Dec 2025 10:30:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHuwjIqyDWuI+r2WlpfAbbgG2oxlpEzL73qXhhMKw/l97gOTuAUXO09Ln29/6XAmvuB+4ilaA==
X-Received: by 2002:a17:90b:580e:b0:340:c179:365a with SMTP id 98e67ed59e1d1-34e91f6c085mr19801617a91.0.1766773850138;
        Fri, 26 Dec 2025 10:30:50 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d65653sm23808883a91.5.2025.12.26.10.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 10:30:49 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 26 Dec 2025 23:59:40 +0530
Subject: [PATCH v5 7/8] arm64: dts: qcom: talos: Add GPU cooling
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251226-qcs615-spin-2-v5-7-354d86460ccb@oss.qualcomm.com>
References: <20251226-qcs615-spin-2-v5-0-354d86460ccb@oss.qualcomm.com>
In-Reply-To: <20251226-qcs615-spin-2-v5-0-354d86460ccb@oss.qualcomm.com>
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766773796; l=1502;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=isrCbYef/6HFfpXGHUTvGk7T72MJmXAEG9GHusZsKeY=;
 b=LAosJ33LUhMphFS/+u4ua5QWG/JDH0yjTyYB4Gu6cM8FE/UtAWqcsub05PaeFqq2Jr45a0p+r
 WEStuAZ7EHeCIkBFaLtoV2akoBfgfX9BsdSbUHrJONUd5WK0vovJIaJ
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI2MDE3MyBTYWx0ZWRfXwvP/2Cc8qy8k
 wmImRzUOWwGFd4DKlIHL3ayhYZqMibMXj6YPZrXD7NTLw6eWZ9XlWrHjsOpxkDL7oWezEFP1Ljy
 4URbBJXcYyB5eOAGhIPB4nnct1/ekutyvW2RjQw13KDXD3TIbXbyBWL6aBZxIFYy+rNaTrc4rhk
 TGsakMeZNzUUXymaIrtqscO5jnlq1757ovX81tPVL4GM0+A4g8uYwts8SgMWe4ILNrK1lydOdKR
 tBQURGUQy+2vGeTQFeV90m5Gt9g5PUUtFDxtxpQAU2F4DIDmWxXkXv/RMF6+jQ4j2j53qnRxLhC
 TCTL6KsZEEDaLZ8G0Ic/cg2GKqXrk4HwPkipifnM3frp223Qa/VdYaxTos5vCJTxQinc3mZR790
 OmMQ+re7ZC67vhXxA+SqeQt+9/DtzDoMaXBwBiGs1QTvdm/KPQJxZv7QALCaVTDbdzFW+byFzLk
 HT35iU5MEiwPvi8VscQ==
X-Proofpoint-GUID: DDKHCfbxOH64qF37MKQhh-7lF_0Ou4Ih
X-Proofpoint-ORIG-GUID: DDKHCfbxOH64qF37MKQhh-7lF_0Ou4Ih
X-Authority-Analysis: v=2.4 cv=P9c3RyAu c=1 sm=1 tr=0 ts=694ed45b cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=doS3iEISOceegCkkCwMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-26_05,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512260173

From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>

Unlike the CPU, the GPU does not throttle its speed automatically when it
reaches high temperatures.

Set up GPU cooling by throttling the GPU speed when it reaches 105°C.

Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index effaff88df83d5e6a0aab45a2732a00cae11e83e..7c2866122f9a13b8572fd9e6fa9d336176765000 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -18,6 +18,7 @@
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -4844,12 +4845,25 @@ gpu-thermal {
 			thermal-sensors = <&tsens0 9>;
 
 			trips {
+				gpu_alert0: trip-point0 {
+					temperature = <105000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				gpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&gpu_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		q6-hvx-thermal {

-- 
2.51.0


