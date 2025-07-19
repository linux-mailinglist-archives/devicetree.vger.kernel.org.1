Return-Path: <devicetree+bounces-197828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56696B0AF0D
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 11:17:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71677587D3D
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 09:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E492397BE;
	Sat, 19 Jul 2025 09:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ajGrBT/U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C6A238C25
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 09:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752916491; cv=none; b=Vvda28cMJx8QwfsuaOQv7DlgYQ5vAm7pl7LJ+ZGd6Do2pkfKx/9TR/5oy+pkgda88yY9JVHeQMB66a0GASuANBoRw2kSGmb9qA0cuWuIf1Se+OE2ttqgWq9JKgXbA/CFV51lcO/3J0wh9OSd7hO6yCichwl+u0ZRCSXrPll5B+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752916491; c=relaxed/simple;
	bh=jwVRqM0theHy/Aua39lYnAS5tUnNexlBP199jrO9fzc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kDo47y5oMxKE5FpFjW0No3SMuZk+vz+wsDsGYDRciImPH+ABzj56HZz4uBlfeC/hEuxASOH8ieqOaXakMgUt+8q1FkCtc0C2lYPAoxyNScfd6Q24/cUzFyxujwcvIMyneBTQlefcushBQUMy0JoW4KBPoyXm2m+X6XV12owMkfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ajGrBT/U; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56J4e349003634
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 09:14:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=5wZDc5GWMWk
	tbr2LV45DqbpFgPyVLPIoTjpMyPCwwzY=; b=ajGrBT/UWPZPh3lDzNJCKksjJ58
	ScqhDdABcfpZ1w+Pw/FlHyanswabIFUYVjxiW2c0uAWzDWRwhDruiy58CXBe0OHV
	tYpBE68t5FVXquVTi88ZGucL9ul5eejn66A2LNvUqvRRgMg06QXf59zjKFaLuEBT
	zR+jQbGo1syi62E+OhIjEf5iTcn20thjkNH1cVBk4+XztCEfN7mSH9aMtbRzVkpb
	riEdOQqJSPb1nrNToDEWSsDUyFU9eeosMMGBXXfa/H6gvhX3ar95EbIygdcA6e5l
	icOxtA7C1CHRR/J/cQFL3S0tWECv3zJR3n5MqA/1tL76U9qbiHl1LZydpVA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4804hmgbgg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 09:14:49 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e269587d8eso493847585a.3
        for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 02:14:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752916488; x=1753521288;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5wZDc5GWMWktbr2LV45DqbpFgPyVLPIoTjpMyPCwwzY=;
        b=VkWoY1NqYVpoYlL4YsCtFoNwlmUDd7W95SQDBk3dOo5E7l3x0GtmbQezPUynZkIDFp
         fvN0Hhm8TCnU72gSdYXtzleIXQcfGGk2YizICorQ2yl5q7XQEu2OxxTkaXFt3d5CCr6T
         i/YjU+jbaUGRUdJbIcM5gpgNfAxIV76QsNzwkBRX42DzwTZhopJhz8olRO+sF/Kxy7nq
         nxN8VllLyV7Wz9FPi9e1nDmNroP6N0JshtfZ8I1Ch6B7SnLbfRI4Y65TERsv1Vtu9wi4
         50rcAMLrCqpG6Yz3RsY7SHgzu3FxhgtZtuEl9tb4g2YSShgpMa+SIQ+sqmPheJrcy1WI
         bGkA==
X-Forwarded-Encrypted: i=1; AJvYcCVbcl3+6EyI9kAXuHlaPjH16nQy2R9/vQOQbhMVXiWaLNBcctavhghHoWG64zAwAAyKIZ/zUiUSnE5o@vger.kernel.org
X-Gm-Message-State: AOJu0YxT+IXGEWz6xsnd0tw1r8b27R3jawMSxvne7V9sToK4SdKI5V4E
	lQuqOOW1ib2X2xFFdEOAHCxdUSQ0Znsw8dHdMEtIYUo6rCHzk2+Rom4xMp+JntMUH0tHq7welCS
	n6UD5bthWxkqySz5wsR/OFf+2fnHSmlieNNVdq1DR2wuyRkU7NYwDgi777otMh+NQ
X-Gm-Gg: ASbGncunyNkf8jo5IgZpD1/TrrW8HpPNEsnFtQ4lY+K70OqkGgiI909XkEsKSnZ9ory
	ayM8GwUotoD2EXrmvxPvG+cdrwMRnm6E3ca9Yol3e7nia3kJdHXSE1cbdZfQZy0mgXVDhr1UucK
	uOkbBysEQDkwYSjFUNF/XIe13cL3sKTGnDoAuq31ieWrm3RECsT51E/npckwjJowA3jFalU6Bj7
	SZVLUOlQZjps1XmGx/dpNQKFPV0T2wbReLSG7WrCfdGkng0RsrTHlVUWjJ/4dd5V5AWCgAPExp1
	zxn7gxwmBfEpEuReyenYI6fGe8N5RC2AZCm0afXaMr8uPcrfQ/tQ5vnEd0yz6e97fCkkaa/lRnW
	DdMDHOfxOWHdbdMV4QmO0YViSry2L8c2Ml1sGygu+Jw0NQEaAWKsM
X-Received: by 2002:a05:620a:4050:b0:7e3:4415:bd05 with SMTP id af79cd13be357-7e34d9f79e2mr1305489585a.60.1752916488082;
        Sat, 19 Jul 2025 02:14:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGDAN35XkTBQM2UPvbexmAbV/sfM9zAiC11TqR3XTg/5fyKgjdicRbMY+x2+0LlwRcobf3JYQ==
X-Received: by 2002:a05:620a:4050:b0:7e3:4415:bd05 with SMTP id af79cd13be357-7e34d9f79e2mr1305486185a.60.1752916487632;
        Sat, 19 Jul 2025 02:14:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a90d4ffasm5480891fa.6.2025.07.19.02.14.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Jul 2025 02:14:46 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Cc: Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Mahadevan <quic_mahap@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Danila Tikhonov <danila@jiaxyga.com>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Yongxing Mou <quic_yongmou@quicinc.com>
Subject: [PATCH] dt-bindings: display/msm: dp-controller: allow eDP for X1E8 and SA8775P
Date: Sat, 19 Jul 2025 12:14:45 +0300
Message-Id: <20250719091445.3126775-1-dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250717-dp_mst_bindings-v3-0-72ce08285703@oss.qualcomm.com>
References: <20250717-dp_mst_bindings-v3-0-72ce08285703@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: pfq27A_P_f-ABx2FXFnR3O4IY2j4bZaj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE5MDA5MSBTYWx0ZWRfX5lDA1bzggmus
 /5dN9F3xOMYtRUswpghFdka3Y/00OWDzUAf3PO62hweii+aVSdFCnX2V3qTKlJln3LlbTEbsedb
 V/BiXQCi0S3uJvkowneRwmIkxePd4Yrn3ShJe0rK44tc2DBw/G71maYVfVExxDkZoXObkjcH4hJ
 NI8Ui9PM4fr8qyyBz1wVpSknQLm+7QEwfNnBekpD1TO9Md6QAgg6si9464bXLM1+cxp+x4c9qCM
 pvwAFfafRcOCH6JwR2J657eBW6ENSRmSpMx0M/j1kIkLoyYcAL2zo2sdgi0XeD1EFVKnpoiEElT
 9Mh5Za9mO+V1ElViHe1N+M2/ZS7u+ZODLgh+kj/mnGzTFwT9Z84V12dhWT11Nq/PiSWIQmytWQy
 i74krbDqQlddeA12lqloVhd82i4ZItlp84UDIEhJiQxlmuvJ6gAS/rKLRJhDUWkiKRJ5kGjq
X-Authority-Analysis: v=2.4 cv=Navm13D4 c=1 sm=1 tr=0 ts=687b6209 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=Wb1JkmetP80A:10
 a=EUspDBNiAAAA:8 a=jb3qBSlP78txkkNFhucA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: pfq27A_P_f-ABx2FXFnR3O4IY2j4bZaj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-19_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=975 suspectscore=0 phishscore=0 adultscore=0 malwarescore=0
 mlxscore=0 impostorscore=0 clxscore=1015 bulkscore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507190091


On Qualcomm SA8775P and X1E80100 the DP controller might be driving
either a DisplayPort or a eDP sink (depending on the PHY that is tied to
the controller). Reflect that in the schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---

Jessica, your X1E8 patch also triggers warnings for several X1E8-based
laptops. Please include this patch into the series (either separately
or, better, by squashing into your first patch).

---
 .../bindings/display/msm/dp-controller.yaml   | 26 ++++++++++++++-----
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 4676aa8db2f4..55e37ec74591 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -176,12 +176,26 @@ allOf:
       properties:
         "#sound-dai-cells": false
     else:
-      properties:
-        aux-bus: false
-        reg:
-          minItems: 5
-      required:
-        - "#sound-dai-cells"
+      if:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,sa8775p-dp
+                - qcom,x1e80100-dp
+      then:
+        oneOf:
+          - required:
+              - aux-bus
+          - required:
+              - "#sound-dai-cells"
+      else:
+        properties:
+          aux-bus: false
+          reg:
+            minItems: 5
+        required:
+          - "#sound-dai-cells"
 
 additionalProperties: false
 
-- 
2.39.5


