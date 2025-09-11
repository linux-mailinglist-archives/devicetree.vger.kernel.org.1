Return-Path: <devicetree+bounces-215888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7ACAB5303F
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 13:25:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94896189B9B0
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 11:25:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E521531CA6A;
	Thu, 11 Sep 2025 11:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hwRPrjMO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640623164D1
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757589863; cv=none; b=JZcWaqwN3aLvtkCAN3jPv15ePPiCedzClHB2aO8AaW4EKFztZrOYHG2fSDK9hQpN5UwxjlyIXnHVoxc6QPN7dDZyYv47tLM47JMze8iqgRRzn37RHuv1/yiQWLjgkfaeC6gKQO1b30QNy+eIJHxhYH8kylYgP/cGO8HkoIszZQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757589863; c=relaxed/simple;
	bh=fxALVBYM7qYW96U/dSw79twk6v0y6XKjhtJ/F/CsPC8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TZ2XxdeZQTBgwhkQaBBTjtZEoFgc8G3x4bbYN1cgBU1cY8e0qgZjSIl+U01MJvstcLS3KHSYWF59e6IzJ6JQq48wAccd8lACKnVQq2vgPl4KNMteRFpE/p2muS243cwU0Jcsrz/pkqvp6+NvvDM+QepYffLTEPP927/xtq+d25k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hwRPrjMO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BB6Mkp031005
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:24:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IzFssouc9mamtc9gsC/kHechOIc88AvDywUnbNXgus0=; b=hwRPrjMObMo9ewQ2
	bZ2FRPfklMfCBgxcNDuAMvSOQJEL3OMOZlMu22wXiTQ/Pz0gaSk3KdaFtYdjMPjn
	BM+kYpzsBf2pGeklKaqK8OVdsf38EDkH9ghLHcrgiNadZ5msZEtjFvKhP/Y6vk/Z
	25J3im2pggNKTRSiUHvsM6VM+4tTDeLzfhoqOks0xJZNWMvoaBadFD8oDGSjXNpt
	dcBA8rPJ6whZC+LXskg3pisw/6FUnvUrP2OfcGTD+DmObqhRGbzbluS17JGj2xEt
	vGXGHkkUX0/hbwcBLd/elrGPvcW7DSu7SNfaRPtCYcpIftlluAxDOeKhdW20MWnf
	az7yxg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqg762r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:24:21 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-25c2a4c20a2so7345665ad.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 04:24:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757589861; x=1758194661;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IzFssouc9mamtc9gsC/kHechOIc88AvDywUnbNXgus0=;
        b=qvAH1eUA/iDIgKW/kdCVk8UYj8qbs14cjaZSbGv0gPD5nVawxo69nvg9v2PlEvNRiN
         jIvcRjtG00FfX1HtySbR+Qhcu6fhDslcKEjA0aEXpK2gAtrTYyNxN2gsueR376ih5mpK
         WwEooY9sA+oAN4oMA7SQEnRK9OjNJbXQaWL0y+VZj9++zN8ZRCYPuAkulDXvZmykQ8RX
         DfpnybP+2vW/cIuteGBZnRrOLG/aKKpkTiMvcl8A/95SqxHgpottotkQIFG+YPIl+YdT
         xEwIM5gVgi6Hkhkj7gVZmQVVVnkFcNr0MRGLpi1oTWkiIbbc94B0NEFUigj1MIiQHbSD
         7NOg==
X-Forwarded-Encrypted: i=1; AJvYcCUdKvIT7IBQy5tiRFiZZ51tDWeZ+tDKhx4bz+6/YKRrv45UUSnBOL5zWUdxHqRKrq9xd7IEC2jFLN31@vger.kernel.org
X-Gm-Message-State: AOJu0YwhgdPLpuyMvd4ja2enh2zSrTivEsi7l/SL7XOE0N+ifWRgsoLF
	AbR/Z9Lj/Jg0BEMkA2RYnggsQjmScYrEhg2TmAbr27f9Wa6QHFaD6tnfsdEDXUuXPRcteLSHHRx
	FlzyNbV/GY+6Q1im3x3uVzpNKJpYFoQ854TV1Oh0L9ECB0HA4OVRVoyXAF+wzm1uO
X-Gm-Gg: ASbGnctELi0hU/HNUZsNiaGQEOadHbz+MXtGAJPJhGnRl/6IPJ7fmX5IDODzK80pFc3
	Emy1HZ/EOFHKMHcA7AfQX4sFplwDDVD9NwLiApB8IhoV5Q4HMGt+0I2otLBwjUWkAfucteO3RRR
	Ykc8O921pzX25uNTJklWtatgMfdtF+gNaSjQOGJssRP1CaLFf/GBFAlDsybA/2TKPPR+sCmlr9m
	GlWP63cl58AfxkLkwtrqaAi7L4GQKySt93tO5g+0fJWwtq7DtHc6NOgQ5RNHGN6zUJWVfBCrGku
	Pwtv+ppVgD2nHeMNzOmlhHGz6kmjXEVj5NcN/zEC+C9KxX/LARfEN+arh2ENyHdJId5RYdrqvzn
	fSaz15OIehSwWlUhf+FjbND1JA4Ob2eSP
X-Received: by 2002:a17:902:e886:b0:25c:a9a0:ea60 with SMTP id d9443c01a7336-25ca9a0ee09mr5665115ad.42.1757589860754;
        Thu, 11 Sep 2025 04:24:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGwhy+ThWRQzuFVTo3tgTP57p2T1jMEsKjOoHNoY7Em1lQydlaLgExlKlN33CpwQLV12SmqA==
X-Received: by 2002:a17:902:e886:b0:25c:a9a0:ea60 with SMTP id d9443c01a7336-25ca9a0ee09mr5664645ad.42.1757589860248;
        Thu, 11 Sep 2025 04:24:20 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c37294b17sm17005365ad.40.2025.09.11.04.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 04:24:19 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 19:24:01 +0800
Subject: [PATCH v12 1/5] dt-bindings: display/msm: Document the DPU for
 QCS8300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-qcs8300_mdss-v12-1-5f7d076e2b81@oss.qualcomm.com>
References: <20250911-qcs8300_mdss-v12-0-5f7d076e2b81@oss.qualcomm.com>
In-Reply-To: <20250911-qcs8300_mdss-v12-0-5f7d076e2b81@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757589847; l=1242;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=fxALVBYM7qYW96U/dSw79twk6v0y6XKjhtJ/F/CsPC8=;
 b=5XItcEhzZr/Ql1Cbibe/YCArxvl6ARnxlQ2S6RUK1cWoBIjKyauD+Eq+u4y6FKJtpzjf/gEjm
 RCFyyfO50tzC4Yl+qv/XfFLb8u3DpagmsLf0DbQDSM/if3MSmoeMw5X
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-ORIG-GUID: QxKQDo_JeSVILT9Bbvaa-_SNDB2Vo2qH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX3ngNzuP1y9YC
 KqDzHGzPl8o2gwo67pKMEDR/7c49gf3V9roHU3uM4H7Q5vBAPlENjLp06EWp2blR8aSCJZirbeD
 R5VZnPZN/ml6ylY+4jXk9QfS983NLwUIzK3grZ3DEvfcJ/qqUsjk34+Mx0Y1jA2uHloFo3lb67Y
 iYcZ5SE4PY5KXZQ1guSWeV8CgbDTDVPMMML7qU1X4zvpAu5R/WGcbqpIXWDV5D1tbAowV2CJMQ5
 ZtS7ioTW0O97yvx1lu6xz+gD72bcCwn+GLcalUiBoC9PZoxF9dzbOONHuntZClufb4VlZvlN69p
 /mpJSxchmngXQiETewVqP0mUU4Vihw9LChJ4f2Y7FH5enLTHtNjWq1NZ6dTFJo5QkQ9yAVuzUm/
 CDXaHj0E
X-Proofpoint-GUID: QxKQDo_JeSVILT9Bbvaa-_SNDB2Vo2qH
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68c2b165 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=0ru3Ub4c0dYyKLRCKckA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035

Document the DPU for Qualcomm QCS8300 platform. It use the same DPU
hardware with SA8775P and reuse it's driver.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml  | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
index 0a46120dd868..d9b980a89722 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
@@ -13,11 +13,16 @@ $ref: /schemas/display/msm/dpu-common.yaml#
 
 properties:
   compatible:
-    enum:
-      - qcom,sa8775p-dpu
-      - qcom,sm8650-dpu
-      - qcom,sm8750-dpu
-      - qcom,x1e80100-dpu
+    oneOf:
+      - enum:
+          - qcom,sa8775p-dpu
+          - qcom,sm8650-dpu
+          - qcom,sm8750-dpu
+          - qcom,x1e80100-dpu
+      - items:
+          - enum:
+              - qcom,qcs8300-dpu
+          - const: qcom,sa8775p-dpu
 
   reg:
     items:

-- 
2.43.0


