Return-Path: <devicetree+bounces-202911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FB3B1F39D
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 11:17:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD073581D04
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 09:17:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2845F28032F;
	Sat,  9 Aug 2025 09:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HETUexZq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C04F27FD71
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 09:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754730991; cv=none; b=jLxKv0TjrIqC7GJecJbiQwakiP4sfnNMUGxn/SVU5Vh2YjKZ68DdaZRzSuqit4aMVbneLt/Wh26cg/xAeqrH7Bs8deFHjYVPxI9keNXgWHblUNC2Yu8AMJtU3ZpczQqcTJwPcCnDdWyIwYnxaO5K97bH68FtbfmsyMDzfuX0kQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754730991; c=relaxed/simple;
	bh=cH9mFD81gjvWgXR9gnN/Va1aF7qgFbqJRVc2CfvcnWk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZbUjTSVG8JKsQG+jS7IznVAhbGiTYXHelNg23QA2WR7LW7h/54/8B4R3BiGm1NWCXD7SMo7i8jlLsl+ACEq080idqmA549wu0zG9uOBhu8E+doqG7c9Pqf7A9VBBj7gYdzNSGewChmnabGTFka0m5jaTLGPQT4rNFNLEi+hb6JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HETUexZq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5796Fj6t016007
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 09:16:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cxfuy14u1nD4xI/i3c1nKgU2lIEUsDht3WPVHTU7Mno=; b=HETUexZqTVdDOGRP
	RWasJYih7V6A+xvow361DxvLJY+SHqeJbak02pkjsA+kJQtjdMd/18Vgb9uIY4Eb
	TM2viu6jTQEBxrNvN43BLhzGYkq814eQ28TKkQpwhsQvEY2X9M7zw5b1kAqPRWez
	HqNeh+Nd1/8ZSG0EMyHNVNWNV4B7IeGww0yVR4u+VKsfQcg+J7tmEeSaGnPyn2ZY
	NyO7WfeAy9v0eYEA6rI+6QijwHiemy7vPKJFco94VLx2rN93ZffGF6z5Z4x93GKd
	ecNsesXKjUHtln0854kKQyiEfyvLVRuSUh7yV7S4Fd76x+A+tGjiEAXWIfX2A4sE
	2cXlLA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dwwy0e6e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 09:16:28 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4af1a20cbcfso71904151cf.3
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 02:16:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754730987; x=1755335787;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cxfuy14u1nD4xI/i3c1nKgU2lIEUsDht3WPVHTU7Mno=;
        b=dmBvzbpOrg0MuqZLy3yuZNt9WCMoObx6V5gY3OWvqkRyGAcdLI92vy7Yg0/QuDm0xV
         /V+Ly8kHkUZB+5qmnLf55KTdif/umdNbWxDz6FKULjM4jFPjZ85Ab1q4UqgBMk45qZij
         VSqcV9WfB0WtehpI5LiMlo6uvrQuBTzfodI6ZKYMC2DmYuKKq9tx3fiAPxeYs3rcELIA
         n7rbmDDy652gTcTU57GkZjRaKUzev77OEuEo+yQdXRMxnYs6SZQDCWrHh0FyH2h+YKZr
         wmQ9X5xU6hRHELak0iVrA67p0hXkoeVMEOiOUNMR9waimz42UP2Tpud8ZGX3LgaNUKAQ
         lFGg==
X-Forwarded-Encrypted: i=1; AJvYcCWP4lTK7sNmKI9oZDzGAbFuMbTcqJ/400RngcjbV8hU9p2fexsj+e0MsZ3D2H4xfSRgFNa36UDLUReE@vger.kernel.org
X-Gm-Message-State: AOJu0YwAfqEc9kL7WOfbEuksLaoS8JNCPXZPHxTLsCT1dEdnBUYQs7nU
	IA/bOPrzdwyehCkUa8dxK4PNUMDu4Cb0ftUse5Nc9q3h/LSuEYq4UqwmZ2qVRrIo5Rn4hIKArvD
	02to8uebPWz3ZUCZ/JdxdXmR1Td1+PnHEAqRqiEtO+LFKMNLmdHp/I5R2fI58VSCj
X-Gm-Gg: ASbGnctowL1hrQRUxm+ol5M25Po5Ym4R6BJwAtWm9b/3voy9Z5Hb86pFJQDB5FjwZUL
	ePYP2Mjhq302OXHzIZlf3rfpVxRlD8qrRQ0FC++/adBfFbAWDvpSIZtlhwnhkByAZfu8Uh3DqZ5
	elpCgUZaaI/xDMDKsucJd+ALxfa5MFL0UoEJF5X2Pot085tUZPvYYz9/W9l3FLWLjgjtw4+P/Hw
	/TstACB7tG6OLKvYE4N+4Cvt+QSrJOoIhsJVX+079fjDXJUKjk1gOeRXKoVqQGLHQ3H+VaeP5iO
	aTHwXHFz0ZZZUzK90+D62FzoW28saft22D/MH4RHsH+krpmqMJrvbwDOL/w9CXdFHkbvBSefyYN
	fxh35ycPegpHuBgkCR4n8eZk8gp7pZ93x+QRvotsSWVQ95idwsS68
X-Received: by 2002:ac8:570f:0:b0:4b0:6c7c:a955 with SMTP id d75a77b69052e-4b0aedc899emr75036281cf.35.1754730987352;
        Sat, 09 Aug 2025 02:16:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZvWtm4YlKcaL23W+nUW97ef++KL1gDtBq38oi2j2iC9f5MjRqW8FMjd3aynm+3WxWfkZZ6w==
X-Received: by 2002:ac8:570f:0:b0:4b0:6c7c:a955 with SMTP id d75a77b69052e-4b0aedc899emr75035961cf.35.1754730986918;
        Sat, 09 Aug 2025 02:16:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b8898beb4sm3361989e87.30.2025.08.09.02.16.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 02:16:25 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 09 Aug 2025 12:16:16 +0300
Subject: [PATCH v5 2/6] dt-bindings: display/msm: qcom,x1e80100-mdss:
 correct DP addresses
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250809-dp_mst_bindings-v5-2-b185fe574f38@oss.qualcomm.com>
References: <20250809-dp_mst_bindings-v5-0-b185fe574f38@oss.qualcomm.com>
In-Reply-To: <20250809-dp_mst_bindings-v5-0-b185fe574f38@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, Mahadevan <quic_mahap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1755;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=NXtQ3bomvI5JzHf8G2204y7/eJt5cmkeL6NKDMpr9gg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBolxHiy8bk2eyMWBCLg7kj5oWCwhIy6ZQzsXJ5v
 Fg6f80aQbGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaJcR4gAKCRCLPIo+Aiko
 1a9RCACZtDdNaFddD3qCGcB/weJbCYH+yRFlmWQ7lGHxAxSSQjfDYujPMeEaA4yIbucYI0Y4Oup
 NuNyAcq9AMWwDBUYJRiY6KKLIUTrd5tlAT9LV7qF+jAUot8QnbFw8sT3XTJFmaiNx0luXWSVfcj
 tF0NCenZp1Mr3dYPKq7kmLPkDSJb5UJItb11+ZKvjP5ibrZkOUQxKiiUpd7YUyk8vGTQiufx932
 SWyQrYNKRXzcas23G902tyZ5HlLxaM1+CJEWGOake5tBi/fbHlL/z+bl5roh/U3XeP3Fo+ufB/K
 uh9QGEy32Ll4xc1qcDI7fJGvkcynbeIW3T+iKj54CGRaUVh6
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyMSBTYWx0ZWRfXwCTY+qYzt7RY
 IWn6OnFogPEBaoGZvIgjFOAluzbt9z53XsXAxyD1lIyQfhFOvtrpNyEEhR5xm/+31Kgq0+g68+A
 cBM4BDm3XWPUOmOkPcantent+WIH2g6yGbI2rSScls0GDNTGZIHTcxsXZOtboMOpmmRTOXJqXK7
 27bEmrZ58YQMS/FQSWnTdPKJrdGTgSC7trt6RwDbOjnZnqd9dxGeHxrkxQgpPnuIP9JnA0WSnTn
 Q+GmLj75i2epNv7EowBDXp4X1f0q+0EH9dEoKwJDrvCsJ+qkmiooiHMK2LJpulHmZd5viRLlVm1
 lJMn7Nd3KaTyORm1qmSEqtw/uR8F28JQtisFm6vdZxrQ8IY02I8duuEmbSUDktKlkbnLjAzWCPN
 81bvqgfd
X-Authority-Analysis: v=2.4 cv=CbUI5Krl c=1 sm=1 tr=0 ts=689711ec cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=fvGZ3mk3BhhUN7shqj8A:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: L0G-aiMuaKSgRus8v015dwBH47yMBe9c
X-Proofpoint-ORIG-GUID: L0G-aiMuaKSgRus8v015dwBH47yMBe9c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 phishscore=0 spamscore=0 priorityscore=1501
 bulkscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508090021

From: Abhinav Kumar <quic_abhinavk@quicinc.com>

Fix c&p error and correct example to use 32-bit addressing (as the rest
of the example DT does) instead of 64-bit (as the platform does).  It
got unnoticed before since DP controller node wasn't validated against
DT schema because of the missing compatible.

Fixes: 81de267367d4 ("dt-bindings: display/msm: Document MDSS on X1E80100")
Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml    | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml
index 3b01a0e473332c331be36f7983fb8012652a8412..e35230a864379c195600ff67820d6a39b6f73ef4 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml
@@ -170,11 +170,11 @@ examples:
 
         displayport-controller@ae90000 {
             compatible = "qcom,x1e80100-dp";
-            reg = <0 0xae90000 0 0x200>,
-                  <0 0xae90200 0 0x200>,
-                  <0 0xae90400 0 0x600>,
-                  <0 0xae91000 0 0x400>,
-                  <0 0xae91400 0 0x400>;
+            reg = <0xae90000 0x200>,
+                  <0xae90200 0x200>,
+                  <0xae90400 0x600>,
+                  <0xae91000 0x400>,
+                  <0xae91400 0x400>;
 
             interrupt-parent = <&mdss>;
             interrupts = <12>;

-- 
2.39.5


