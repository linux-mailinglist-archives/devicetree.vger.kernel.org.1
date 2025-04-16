Return-Path: <devicetree+bounces-167131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9347CA8983D
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 11:40:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 28A5A175228
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 09:40:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E57828B4F0;
	Tue, 15 Apr 2025 09:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SB6nraEn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FBA289376
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744709984; cv=none; b=lZbVJF5vUYUFtgCirD09KkeEUSwyOqJFRcuRZpLq1aFbhXfuC+99Tx1A8Zz5mL4d5MpJUG9v70vKzm7Ytd8A4u0ep6KBMRpo4YU+uPE+3UF4zCGnztZT3tBNVeh1VZgzd+FXTssn0l2//9Osn6Jnox3SwlLMuvHzhuGlCdaCQf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744709984; c=relaxed/simple;
	bh=f5nEiMxpCpJ8tG4rxgWOSIOxABVTgec4J5cSa+ld9WA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t16pSUl/rQyJ1DQ/oESmnB/reOBEsHcZsxjb4JuVl7TnRjbX2ZuhUi5u2qxneA2NF5eNGQtCLGRWmbWDVxLzR0bC1RPDxXq+y0G0hKvUc9dvVZ+wAx0BLD99yYYDqd+sMQhqcNHZIE44ZJPS0jvZWtC38F8+NL6OsaZ09diwVK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SB6nraEn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tGWv019617
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:39:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EMjst29DNTaDM7RdBr29Vu4Zmfecm1OtVXRpr93QCUU=; b=SB6nraEnl5B3L6i3
	XkVG35p0i6+ofgk9E7yggVrXfq0r9Olv7vhSl6sjdYC0ZCA7B1xixp2/xcMDlUEs
	PwUnsLqpRKCNrAiqwhUtbathZVEwNg4xmRrW4XaeI5UeJZikPC+7g8UMutqOEqL+
	EnvQTtx64givPQ4YDie4CscAsv2pgVPRELlB8ZiTiBVR2Go1EKpSwMc97UJTXT+q
	SFiG0Agz+IIA9aEBoHebc3p1qK8k9GPDkWcwCkT6gEwX+5cUO71SnQ/RSoQHw695
	sEtieM/DUJmqBhQUGGpi3aTwxd68nE4l0OYbuk9VixsoQZhWp0q3X5Ym+WmsqlBp
	yLuR0A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yhfcydxp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:39:41 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6ed16cc6e39so90022186d6.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 02:39:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744709980; x=1745314780;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EMjst29DNTaDM7RdBr29Vu4Zmfecm1OtVXRpr93QCUU=;
        b=pqSrgB/d8+GqIcSq76dyud67khw7tSatk5FPMe8y/0LTo6wCBuHoLo8FbqRwHzgusD
         3qndaZ9KT18CO5G7296wg+4KjnP/db8mfIoT3oTs/tgdtAluGxdG+1ZI5d2BNwfBEV24
         WJAirJZjbnVc8bL3uZdO7E2T+quVzJKn8nhOAnAaD4dgi3NKVDdtuuYUWohTJdi4jHED
         yLU5pHNCQfS0PKB7/TMbcvpbpEyL6Lx9AlAxV2cWM2/Oaq13oyQ+Zz6Py3gVA5zPkFxi
         rirjXjPrZDPDdWMxT/EPmR8IoQvvQ5/4a4SDN8aNVoxIClukqTElkfXqVwiF2cdMcK+e
         E7xg==
X-Forwarded-Encrypted: i=1; AJvYcCWajOmMIeqld/2vUmElBS9OX5z3FNN+hEmnBY9H7V/8DyKq8mj8uZRPhRyyQCWvZiP103cHtQPT489U@vger.kernel.org
X-Gm-Message-State: AOJu0YwWoETQ494s7/e5JS8kT7g4IsAv8ngyWfXldXVyI7OT57GAGYor
	XRFccUmj6Uaq8AM0NSMXFa0sNL8rCJwIR07txCwqtlBSu1tNtEeX1yhrP2YVvSAedypuq9iBBgi
	YeSXWdePY1tPfMB89hxfkSva1NlPBHLumRMDAgyZoGmT0pvojePmML3hlCQbs
X-Gm-Gg: ASbGnctgaCLBkeofAXAzx8nbVZ6FYUvteObaEXoT3+VYgwny9jCWXGhBbjjsTI8DLg8
	ylwVK6jTZjQUNDyJcUmECXMAtKBa0W5RuNiO/IUeW3d5S/xCkhcZEmD5lNKtt0i4mukby9UKzYY
	VJK26quiwWWPsVkdzZ25QprDGqQNYu9umFsYKHPV+2ExB8qk/xs1ocwXFTikNGws/AHrD4UmSOS
	PFm96ccFYSjSof4N+AttAUaDMyrq8ahLA90Q/MHymw/u2XDW3fn5uz47ujecQ6dChBumC8Yw4t8
	YQZBhV4PDVhRjM4AnrS5EZdQuRBtbzWBcdFO4XglTmNkEX2FdT3AiUUSTmdzES5j1yj32NV0fbr
	PtCCebCeubi+PwwGGz9pR/hLW
X-Received: by 2002:a05:6214:19c5:b0:6ee:b77c:7dbe with SMTP id 6a1803df08f44-6f230d27c21mr193434146d6.12.1744709980639;
        Tue, 15 Apr 2025 02:39:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQp2HjVEeO0ktbov4KZJe4bJnmpotAkHqTPZqWnlxP97B4y0MeVgdf+Bpf8V/w9ZAnpH3sOw==
X-Received: by 2002:a05:6214:19c5:b0:6ee:b77c:7dbe with SMTP id 6a1803df08f44-6f230d27c21mr193433886d6.12.1744709980357;
        Tue, 15 Apr 2025 02:39:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f464cbc60sm20141901fa.24.2025.04.15.02.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 02:39:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:39:30 +0300
Subject: [PATCH v3 02/10] dt-bindings: display/msm: dsi-controller-main:
 describe SAR2130P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-sar2130p-display-v3-2-62314b1c9023@oss.qualcomm.com>
References: <20250415-sar2130p-display-v3-0-62314b1c9023@oss.qualcomm.com>
In-Reply-To: <20250415-sar2130p-display-v3-0-62314b1c9023@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Bjorn Andersson <andersson@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1325;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=PNM3/R9939920NNRFa+kSPKtbONWgfGTtTNO9ijO+vE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn/ilVrA3uEJ69v1dp520K7RYb5A0BSH4RNdJGh
 6YpzIXJKguJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ/4pVQAKCRCLPIo+Aiko
 1QQNB/46R21cEA9UsOBhj4cdENgoT+GeVGYBZ6fBavXGRXxth9LvnU1MtN5c7S5xOWGd35PypCf
 Ley8En0qAy9vAmGlD67vkSlMr+Om2vHCk5Kxt70R7aWAf6Y+cgc0jId/kpzTz6NP6h+8YQgQnej
 rff3dPK369Ff76/b7EpPBxWhAamZUdKBsrp0KHxaryppLO6veyz0/plFD7zT8NVlPGrdIBkxImv
 557qYxNphcbJOfHkJnUmFlpa84lu40XmCGNAeq3zRzA/5OZf9JvwC0EGyr2TwpiuLYPPHeVBEk1
 G9/qmCs2DRVsxt7TRcvid3UlGoRcF/WHOzqCcyARtgc8WmE8
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=CfUI5Krl c=1 sm=1 tr=0 ts=67fe295d cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=93dKIss0COAcHyiF0SEA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: jkJlCe0hj-IjNxj7EX7xYTGu0Z_RQel7
X-Proofpoint-ORIG-GUID: jkJlCe0hj-IjNxj7EX7xYTGu0Z_RQel7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 bulkscore=0 malwarescore=0 impostorscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 suspectscore=0 mlxlogscore=839 mlxscore=0 clxscore=1015
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150067

From: Dmitry Baryshkov <lumag@kernel.org>

Describe MIPI DSI controller present on Qualcomm SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 2aab33cd0017cd4a0c915b7297bb3952e62561fa..a3e05e34bf14dd5802fc538ca8b69846384f8742 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -23,6 +23,7 @@ properties:
               - qcom,msm8996-dsi-ctrl
               - qcom,msm8998-dsi-ctrl
               - qcom,qcm2290-dsi-ctrl
+              - qcom,sar2130p-dsi-ctrl
               - qcom,sc7180-dsi-ctrl
               - qcom,sc7280-dsi-ctrl
               - qcom,sdm660-dsi-ctrl
@@ -314,6 +315,7 @@ allOf:
           contains:
             enum:
               - qcom,msm8998-dsi-ctrl
+              - qcom,sar2130p-dsi-ctrl
               - qcom,sc7180-dsi-ctrl
               - qcom,sc7280-dsi-ctrl
               - qcom,sdm845-dsi-ctrl

-- 
2.39.5


