Return-Path: <devicetree+bounces-158314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE80A65B40
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 18:45:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A0FC18959AF
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 17:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13D741BC07B;
	Mon, 17 Mar 2025 17:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pof6fHhQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768771B4244
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742233491; cv=none; b=NjFmzRY/Nm5tjWedKVUBvKI/kFoIP9TeRjSEQ7tx3DDtc15kJA2srBfavq3MfdcEOnWfoqOUm9fywlcw9cpVW1DcueFYVLSMIDyI6gwuhaAwSsQYV04evjn3Y9CXjuSV/bg0Vs/oGmX6z1+xF1vC0/IpnKIjK8PeESTeQ2q57Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742233491; c=relaxed/simple;
	bh=8nULrIfJrBwoVzJEZHCD0NA8+LCu25kRS1unw7M1muU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mrk4JEHM/dx4wX5LED0lRxuDR8YAtcZvUOfFdiuBY8StRItJ2TNRipJKRhAkYn2jG2U6g0VZ9WatyY3w2blqqmL11NH674d39jtXE9ei7BBKBTYnLPdUrqAXaYabYVUfbLplw6T4AohGSSCMpPLBPi2NP5aJkMN9KGz0keE98Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pof6fHhQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52HA1Oj5018547
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:44:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j5AhBtS2Vmk9tVlC84l/9eOTIRqJEcsajn1eqDXBo5I=; b=Pof6fHhQoFZBhks2
	qKgZwUqsdkZYD1Lbm9OqalOrwX8wgWg/FtIFRRBYaY8AF8qYYYc5QgSWmdPbzRAI
	klwrwWxIbYDV0kkl49pZO1O7McS9SoFyLP6WN9hUVXcJIWy7xP627uFk04PYdqGb
	4lSWPERjrHSBko0eIl4OaE6MeW6HR2HhF9n1n2RKZnjOOPVtNaEqJw11xPfyxQxR
	Jbo+mhuhqRyspkTZ9H1op9kYLkyzWdRB/ha8nqmB75vBO+roc4kdEriW5YgkJvPz
	Znpa1I/O19NihIo5QIEoyKFRV3fxoIEw+LWijju6FfWLWUsJLbypWYJ9FhCGM/Bo
	imsU1g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1r15jkn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:44:48 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c54a6b0c70so512191585a.0
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 10:44:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742233487; x=1742838287;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j5AhBtS2Vmk9tVlC84l/9eOTIRqJEcsajn1eqDXBo5I=;
        b=mceTwtSx/4ERoTbD14bnYl2GKqj528WXp1E3WUHvdIBr2mGHhdu73+b+LHDU5PKSYs
         YS4CZzq24d38RHbO9/R4+4wcFnKT/iXc3pCFzvSZP2zXHQQAWaFnVnDdrvqMH0RX1CPw
         +VuvwP5XqnXJQO+k9Vh38dLJdwP7FPouWsnNr33x+jRUrYY925n090rN3FocbOGZE8lZ
         h/wJFQZkHbD4kL88O6BNbkbVpmVsx4sB9yllrOU49+eP0DNCfrRfy78dDEAdUIY0TmHx
         yPWQKTYmWS7m47hbVJcz4920Y8spPmHW3CDi3TAbwSGdr596HGiJ2iAO0qFtTSsrIcXX
         TZwA==
X-Forwarded-Encrypted: i=1; AJvYcCV7KJDEIG5oYzq4K4BJKMjtF+tm1vSBuwINrdQd49YejB8BTZwK3VGd3sl+7YL+cjy+D60ecnLVMi/o@vger.kernel.org
X-Gm-Message-State: AOJu0YwNBLdppzPwvw57SozVpncXBjs7K7w8AuEqLjJ5tj2pQYsydP+W
	IHFhYLlAn9oebt2dC9AEhkKT91rf6jJtOLwnQP0+RT8IIiYkqwfDcZiiROA5T844EuPJkfZHCdm
	3LNUcs2IOKmGu0xv/p+cvh5sP/RNguRpWPqpW9SiGjpL1MYXBfewciKyYKRH3PuxlA79O
X-Gm-Gg: ASbGncsuu+msMuOKHl5CtaIDrHIJ579rAKppXsXIZ+6Iz/GSpV6sBQumOlolggCVw0z
	ZVEC2TF+BT6mVSXX0IfxxR1Zn2a92dZuW5cV5s5MgdcjHBbIhS2XbTQP7Pfz8P1Dh9pPUBXWOvo
	PLZpQTigag3Q4W9hmjvhc+FrHz+TQf1/SzMJPxPMRw70BFtwTQ/9PsDBNqPVFH2uHUJEOq1zQJt
	L93aiRUYx7KI/pZMGtuG3VPQaW8AxSgOpqLh9guE5WW7XM8F9okGm8BrzgPim+gStepQRIEacc/
	B4r4t6eqsYGO9tryS23bZPlU//1BixvFBdS9idlXJCffaZPD/aFus7RQndfh24yp6B7Fbibny+S
	DtpZajBrZxPOJxMUKkFIkv1vV3fzi
X-Received: by 2002:a05:620a:470e:b0:7c5:59a6:bae6 with SMTP id af79cd13be357-7c57c73d882mr1684572685a.3.1742233487093;
        Mon, 17 Mar 2025 10:44:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBxYIzksBGnChS/AovmHUHeN2e5lmyChYe4xYLbphU3GfTQPEwubfYg38kAyG5wmIS15rzkw==
X-Received: by 2002:a05:620a:470e:b0:7c5:59a6:bae6 with SMTP id af79cd13be357-7c57c73d882mr1684569985a.3.1742233486764;
        Mon, 17 Mar 2025 10:44:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0e9985sm16687121fa.29.2025.03.17.10.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 10:44:44 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 17 Mar 2025 19:44:36 +0200
Subject: [PATCH 1/9] dt-bindings: soc: qcom,rpm: add missing
 clock-controller node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250317-fix-nexus-4-v1-1-655c52e2ad97@oss.qualcomm.com>
References: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
In-Reply-To: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, Kumar Gala <galak@codeaurora.org>,
        Andy Gross <agross@codeaurora.org>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Andy Gross <andy.gross@linaro.org>, Georgi Djakov <djakov@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1167;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=8nULrIfJrBwoVzJEZHCD0NA8+LCu25kRS1unw7M1muU=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ/qN+LY9vVJvvG4ptU0UP+XAEbBBkuv81pfWVQtnCtYn8
 HaJzWXqZDRmYWDkYpAVU2TxKWiZGrMpOezDjqn1MINYmUCmMHBxCsBEHvxg/82uqB/ctvpQ4b6c
 83NYnGQkyqb+n36xhzFCP/kYx89ch/jIla4+v5L8ldoUHVIjRSUWB6jk2KQdKnhz7GtObPC67t1
 pVd4/LV39cgs+bDlwYkPxb9ONtmc/dUfda+7bELRWz1wl5c+sjQ/dE9KfbeBcy6V8ujKFl3u5VO
 yCr/d2br7l7ZafaHksyNzDXHy//7MtYv805qnuEffaon9BnEPTQP9uTPyEBpYUwQvffkewHhBkt
 T2rffSG+Bkey8/KdcFiaft3p3ea14rxCcuWc++9zPf0g+Uqt9Osvftfz+oqLj099/XRWYpBnfXL
 P0vJxtvwZre+evbh0lH2mkl75ygb/J13/0Qb/wWDnHu7AA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=LuaSymdc c=1 sm=1 tr=0 ts=67d85f90 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=-Z_mRg2wFor0aBS9cE8A:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 8QaX3zxIiewLe_cqr2KadRLdgfQMp-ht
X-Proofpoint-ORIG-GUID: 8QaX3zxIiewLe_cqr2KadRLdgfQMp-ht
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-17_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 mlxscore=0 suspectscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 mlxlogscore=999
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503170128

On Qualcomm platforms in addition to regulators the RPM also provides
clocks via the child clock-controller node. Describe it properly in the
schema.

Fixes: 6b42133d2189 ("dt-bindings: soc: qcom: convert non-smd RPM bindings to dt-schema")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml
index b00be9e01206d1c61802dee9f9ec777c4b946b7b..10956240df0856a4241d6032d3aff7d447af9ce6 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml
@@ -46,6 +46,14 @@ properties:
     description:
       Three entries specifying the outgoing ipc bit used for signaling the RPM.
 
+  clock-controller:
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        contains:
+          const: qcom,rpmcc
+
 patternProperties:
   "^regulators(-[01])?$":
     type: object

-- 
2.39.5


