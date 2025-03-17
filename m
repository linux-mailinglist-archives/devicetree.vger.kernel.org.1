Return-Path: <devicetree+bounces-158319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD58A65B51
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 18:46:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E73BC17E0EA
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 17:46:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B93A1E51FB;
	Mon, 17 Mar 2025 17:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dyrhuZS5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D11D1E1DE6
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742233506; cv=none; b=eDYu7qjS8ORO/xNC7eWUSUGj8ulvQvCfvVXX+16vG+wCRI8Kmknbgz6FHIUlT6fuGn5osXoCDPXz5p4IES4Ixo1NA6r5Cy4S9VNVBfnO/0YKyXlTUzNzWzwCGRGObawazKyuTOVBKvAuIiMpeorhqWdpGyFl40Xii9jF36Ayi/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742233506; c=relaxed/simple;
	bh=txiRpz+F35oG+X3p1ZZlBKKL0xEtuncaqk683Q7tOLE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GX3vdaM4BuMwU/PyJ3W8gWbY7TlV8U9r7z3xdlI3uKqrA00F58/4yoJXFVt8Cme3PrmEnwmnYAqNeGbnhHZLPJobtYb0a+YE9XzRz9NP8Ug55eolnvYOwOAJeNJWjon0YmASB9/t6KGB/fX8FjWptcGziU5dlpjVnZgQRu8bTms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dyrhuZS5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52HAGmn3002997
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:44:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5RUXefn1qNNUFYpYyqAwzEaojm3EYakk9J0kKXfCQO4=; b=dyrhuZS5BJE9o4sV
	07Ky9QlmwDtTJXbKA5chvgKzd+XzN7LdgB+hx2lf42tfKyZq4XAUofkh2ZZoKaua
	+BZc25fNzPT0upHcHpW/uiW6Dl48ielUZoSWQ7xHVMLINtIiCNEpuV/UEbUJDFBd
	Omq6Xl3ZiqbTItRk+Gr7Aiqo6rducoaZSjIop/AW+aiPZBv1PxAFu2FD0qZjlnuy
	i1zqucgS2pda6+tUiukHz7fub4MIQYYY5i+N6MNSbd9W71Gi/B/IeQBRg2GLsGSl
	/A8J3HeBrPSlqIM5BbGX3fuhUEq2f+QkWYBjJwPyCdQDOGjqrBEetbuhJgP9xowK
	1yvs6w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d2ahdgjy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:44:58 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e8feffbe08so128715466d6.0
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 10:44:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742233497; x=1742838297;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5RUXefn1qNNUFYpYyqAwzEaojm3EYakk9J0kKXfCQO4=;
        b=eqEy8MzkAWCpaVP6KX8Su/p6zqjRDoFNbls3o+c5rdyF3870Xi29giDOmSpfTEy/Xb
         EpEFRNacBqxXWSVBnl5BLLCNM/J3CmiPsuNQ9B/cLvT3agMkwHmDSgpt3xbV82qLQ8kS
         VKW5KnUTpKxe91fSMSUXNPSGvWWCE/S2fqBI366cxBSar/HbxVKLMm6iFIYhVKZYGpYq
         aq3H0m+AgavtV5hqh5fjgsz5SR+5RlVtTWoFbYe67a3qm0xwSo5NdljaHK212hS000u2
         3fkypwmtQISHYP7snDLUBqYMnH8SgBEduGyzHbrIFcPc3196ToNm0KeSW0olme5V9pH8
         Gs9A==
X-Forwarded-Encrypted: i=1; AJvYcCUbyn4N+Der88/o7WMJkhnd+kBpOZEAKSYhO6hJ2C+iP3Jncq9g4bXEU8/l0a/FaGtDlNcXa+YelorA@vger.kernel.org
X-Gm-Message-State: AOJu0YyYyZVM1dcb1E/DaaoYeST+Bnb3ngwu12GoNMTaAIng/vvJxybO
	KGtW4dstR0vSOi8orIj5WbkEEpGzyPzHDKAdXkoMOJrqTwu+rcWCKlg4QWdC8UgObwgws4RWjtc
	7TB6EB8SSTf23wkBy5DL0IwnqKp+45BzGvRo/1goE6+NmYw4syacaqZOdSjfR
X-Gm-Gg: ASbGncsKTKMnB7KDUD1jkxvfSZYe7r/5RyUaXbeY1/5RLGGg9rtyX+bHaF287HxdrAr
	O/AAIPzcL50cFWmdLbc1A0JOwljz6F+EG7I72UjS8jVIFEbVT9SxfT2pAOu1+vUcDNVrWQPeFCy
	yGtZsgGNzGYtsqONdF+L9nlWwQP8d6YRJGMBQYnaZdWGQ7AT8boX+DSnTnam7cTbeBsIsNqAcQ+
	yOvx28j9N1xKphl+InFRx+V2y0J3NnbXQG065bfocHsLMS2DQd78QDgdwyqAO8nCDaE6ZA9jpq4
	8SQoxaLVyy/ZnIva4sIkIPtERYkQ79HjNIN/5702ZKZcX4pGTZetia/PD3tQYxXs9eV6s3j1com
	M4Zj3q+OBukMsDco0Oiqxn3fCqQLm
X-Received: by 2002:a05:6214:ca9:b0:6e8:f3ec:5406 with SMTP id 6a1803df08f44-6eaeaa1d006mr201930436d6.19.1742233496948;
        Mon, 17 Mar 2025 10:44:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3cSX1c6SJ9kLCUiPChpT3soohcu4UzGIqx2wB+7KFeneHQMOwxrAqObCKaKdSyWhaKcyCug==
X-Received: by 2002:a05:6214:ca9:b0:6e8:f3ec:5406 with SMTP id 6a1803df08f44-6eaeaa1d006mr201929896d6.19.1742233496615;
        Mon, 17 Mar 2025 10:44:56 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0e9985sm16687121fa.29.2025.03.17.10.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 10:44:55 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 17 Mar 2025 19:44:39 +0200
Subject: [PATCH 4/9] dt-bindings: arm: qcom,coresight-static-replicator:
 add optional clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250317-fix-nexus-4-v1-4-655c52e2ad97@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1169;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=txiRpz+F35oG+X3p1ZZlBKKL0xEtuncaqk683Q7tOLE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn2F+Gi3a2yLvvEDKt7jd0IO+ZfP38GqqgQok1B
 tT9MqSCwTWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ9hfhgAKCRCLPIo+Aiko
 1bv9B/4/pumYqZ/XAfocif+U1tbBb3jivCcFFyihCjH2rt+nL0YHk0nuFKb0ECkOKK5WxkkBdnx
 RFT4KI2aTmHnVBMEUs6JSijZgYpAHmi2DmGxOc6t8Pym61paG6IkuHPBWtjRYJLmUK7bcAuZXED
 CC0gCwzR+bB+indzwn7Ze0CU87k7xnym3FfdNsSIviNE6j1kBW3Ez1395Lx9G4l2aLfP3b/OzPX
 jGbkMW0bRFPewsZigG6l4WU58XfNyL5SGq7OCK+UPsKfc7HkBAAka8Xkj/D8f4hpqPK3Qzar3uG
 hCGLHiWRd1Qq/We7axyNNHEzmg4LI9tInYk/7Ykiaq74W9zM
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: 2mlkWYZV7_2uAX5LJIfDKK8_A38Fe4QB
X-Proofpoint-GUID: 2mlkWYZV7_2uAX5LJIfDKK8_A38Fe4QB
X-Authority-Analysis: v=2.4 cv=R7kDGcRX c=1 sm=1 tr=0 ts=67d85f9a cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=9GbQm46mxl9eb08TZg8A:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-17_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 bulkscore=0 mlxlogscore=999 mlxscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503170128

As most other CoreSight devices the replicator can use either of the
optional clocks (or both). Document those optional clocks in the schema.

Fixes: 3c15fddf3121 ("dt-bindings: arm: Convert CoreSight bindings to DT schema")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../bindings/arm/arm,coresight-static-replicator.yaml          | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-static-replicator.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-static-replicator.yaml
index a6f793ea03b6c193fc0ff72a45e0249a63a2ba3c..56e64067ed3d63c5e293a0840858f13428bacb45 100644
--- a/Documentation/devicetree/bindings/arm/arm,coresight-static-replicator.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,coresight-static-replicator.yaml
@@ -30,6 +30,16 @@ properties:
   power-domains:
     maxItems: 1
 
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    enum:
+      - apb_pclk
+      - atclk
+
   in-ports:
     $ref: /schemas/graph.yaml#/properties/ports
     additionalProperties: false

-- 
2.39.5


