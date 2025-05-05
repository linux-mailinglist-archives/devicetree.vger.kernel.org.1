Return-Path: <devicetree+bounces-173666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8185AA93A7
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 14:56:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E090C3ADE88
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 12:56:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFD9F1F8750;
	Mon,  5 May 2025 12:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E87ZQ87h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2D29200BB2
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 12:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746449792; cv=none; b=EDz5/432Zy5a1L+uXuqxGkVntjZDW95/mTDcp3mIMR39x4qe1z3TAIKJqn3HpRWpLPGAyIPvqg7CvFOZ3cBJY5/r/VLR2Oe3GzaAXiERGZZDrNI6unFQ5Stgv5/n2w7qIwPgZnhabHrTtrIkUFx5MJmD3qr7bvW/jaPhlQndQa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746449792; c=relaxed/simple;
	bh=+k0XtWiufKi+HAuE72FtHRSUamE0fY4Yy0h5tdy9BA8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=OMC6BPcei6UAVJ9XZAID5v3OuzBHDTz/WmeFz8fabeLtGbWfs0fbQ5Fe5SnxaNAxqvziTWlF2IUN7x8wIRsZIe1TAxWowcQj+RPcuMudD2fmTaH2t/z3LwMlAI3uqRlQnFpGtYyZ24cN2wC/Z5EK9oOjIOBSeG+YU+IiWV61zyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E87ZQ87h; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545CsZTP010458
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 12:56:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Yx8I7F3zA+c4m8GPgjqvko
	/AJSMyut0JZ3vjW9UhZwM=; b=E87ZQ87hv7xX6OPSgRUfPO6yIJ4E5kxlqLT4Sn
	6ujigKnYo+sVDlqOTW3IvOCfW4m9z/souJWwRQjLuaXHG/fO/l2G1zAzhbMlVSv6
	TpEOFPJX7F+GXxXvVWA/1WUCILJzyry0HP0j8wMUVCRMxsMp1/45eV8u+kyjDidK
	7RVV5W6+Bj9BbzQEIQ441QAe9Un60i2vlxcylx65nZDLKa+u0CCPuTGtWxhrBBTa
	zT/2sMyjd/qMBMx1oHuK9/OQmkc4Vb2a6n3XvilqDD7ZAWt7D6D4WpKi7lrqrTBL
	3vZMuZpJdvD7NPFZyW3OONzyLS/kDRc1mXiI+OhxWTmoDsww==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dce9c1yk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 12:56:29 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5e2a31f75so590442585a.1
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 05:56:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746449788; x=1747054588;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yx8I7F3zA+c4m8GPgjqvko/AJSMyut0JZ3vjW9UhZwM=;
        b=j7N4W50y7v/cQIvXK1yuPt/z3AIkpyAlvjrpaTs9QjaaxnbtxvmlHnHtC0RsCPClMU
         rFr+jCufGY3PshA/iVNCLrtAufck6nbzUluifr3ejXWWcz9kOgDyA26fO6wbBgX9T+F8
         3U7QgVAhVQAruYIyZcsFhqEUuaUV86FuAGeKHtiPFWfHVugT5RWDTGXQz275gT/bil4l
         zvEHBVNgf0i/jHzh/PsmkDnaVuJnSzbdQeJZKxX9qwvb7fV4W3M1LEGnjpluruqkEzZY
         DcRXZ49SLDwAljL6ieqi5Tmr071ROvXlv/RkVZvH0b5ae8CJJnokgBJIsZv1QdPRE2ob
         oBBg==
X-Forwarded-Encrypted: i=1; AJvYcCVYhXjmV6kt+xvznpU0vEW5r7kC+llFciBwtSnKGoaIpgf1ykR0hl6ObH7Prx22L6ppKx5KQwq48KqK@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhfihsesw6EF8LQuJR2sU4SJf414UHV3nx19Z660IWlVZrjl3q
	aschKTst5ET0pJwfw09QCml5R8tV/NI4tzoEKL3QgHJ/ZHnORP4gAUEXGpYAesv5QAfZjLaY/s9
	Q9PdJWB2VrLZBQ9u0x1UWha28laYXq7MYKzYSejT9b9X1+1P/C6MCQrQ6nhP/
X-Gm-Gg: ASbGnctKf0GDNMwH9MT5p5wizOiM1jeXGQxfWkILdyfaja9rJiY3rgAASEtroxdyJKb
	eSlLDCQ4cZ7rU1bYvQpK8HNx4gH2WO3VYzGJYnG2eE9L7b8Ib4WMz9vKNaBE1uE3r08y4kTwzqj
	/MXZg4o9R/PdOCIS2o24rURilf+C2NqGr9k1e9rWFghf1xC/6eI7WT7BRr22FMevCH1i2VTKQt+
	kEe0+k7z/7pne4q+F8QaWFPyCMhzD7RNcCPcetmAySVUf4VEDaR6rRjSwRFGG54UzduuexyXVkk
	9VPRXZJNI+Ho0LvTKWE1dYScV5Rkw2ryDE2B/M/XyIEIU4aNNPZAcmnKfgHf/w4vwM7X5Gputsd
	80I491twKJ9492xQx96A0J2RG
X-Received: by 2002:a05:620a:1b88:b0:7c7:a591:4f9b with SMTP id af79cd13be357-7cae3aa5a5bmr1019368385a.28.1746449788380;
        Mon, 05 May 2025 05:56:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVnz0VSsChWmtLFd0TbCjT26/PuhzQw8bWC7FJekrb1rVivPVLn7kfFNV6k6QoTcFkEIEWxA==
X-Received: by 2002:a05:620a:1b88:b0:7c7:a591:4f9b with SMTP id af79cd13be357-7cae3aa5a5bmr1019364485a.28.1746449788060;
        Mon, 05 May 2025 05:56:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94f67besm1703548e87.216.2025.05.05.05.56.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 05:56:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 05 May 2025 15:56:26 +0300
Subject: [PATCH] dt-bindings: display: msm: correct example in SM8350 MDSS
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250505-sm8350-fix-example-v1-1-36d5d9ccba66@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAHm1GGgC/x2MUQqAIBAFrxL73YJpQnWV6MN0q4WsUAghuntLz
 NcwvPdApsSUYageSHRz5vMQaeoK/OaOlZCDOGilrRIwx85YhQsXpOLitRPaPrRBh5l8Z0CGVyL
 J/+k4ve8HS5NoJWQAAAA=
X-Change-ID: 20250505-sm8350-fix-example-59d4d2dbec83
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2133;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=+k0XtWiufKi+HAuE72FtHRSUamE0fY4Yy0h5tdy9BA8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoGLV6TPK3nlTt22KAyPNsNoOsKLryrYDkJC/yX
 Rfhwg1E9wqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaBi1egAKCRCLPIo+Aiko
 1fILB/48klaKFAKUl+9nxSAJSO7grQUrLslNCHvvYped85r/HERNOKp1ug7kLWcRLEqf8d3jfWw
 OoGFHc/JtdzwjCJzyIiq56pHhi1wl/Lb6gS2GH7YZJ7BUCKtacR65z+jzC2jBOQb7evISnRwEwT
 AxifcNlE9NKXmMWPChUiwFY34+i5NqeK8NM4X1VUqzwTyqimsqb2Qa4UK1NoBbxWJB3sDPeZm7O
 pIjILi8sRri6UN1ehdfahrxZTYoSqoh+NfHaQ8nyhMfq/8Vtl+7fvHlchZ5GBGPZQbnJpiVCKjt
 nWZtnR2I5jEbd8OWSiOv+AQDKs7CVfWn59Nbv6pi6l+M+yno
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDEyNCBTYWx0ZWRfX4xFDI//iBmov
 SB2kpj+RECwkdIv7pW9RWuBMQ5eocAeIg5VcKOJTysMSIzQQ5JM6whly5GHHkfme9QTCQ6Kgfvy
 JR6TSVCDWM5XUUj+IamKnAN/fLxK9Cn3PgaKcoCbninO2XrRoopjyoha0UOUdbyC6R5Mdqwh4rN
 XqHt0tGrcfbbvlmcfLhzl+Do1UNp5DaBVz6+8mXp5QJoBm0wX6KQGbPPcAWgqpJ6p5JKPsO5ppM
 dmexgv0M9Fxq20zJPLmXrrF7gM3Q8GiKxDWUvpAdK1F+KmmGKJc4yqswnhmQC+tIMyZzUDpR4yR
 XCZ8rq2sMRCcq+8uY0ZvTBkHkGoz8ZMCwQGNMFcrSk9ilCvJduW8VnOWyLmPGSYVXCuwb4JYPyo
 2YWLIA20MYUZaipfHp/oj0folbHeDpimn0cQ3/HJuDXw1D4DiUqkIuruevjHxB5SQaOM4OAX
X-Proofpoint-ORIG-GUID: OZ8xdeiB3kWj3D-ox89pE9-m8PceSxmC
X-Authority-Analysis: v=2.4 cv=Qope3Uyd c=1 sm=1 tr=0 ts=6818b57d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=l3D6BZmRyASzocT8P0oA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: OZ8xdeiB3kWj3D-ox89pE9-m8PceSxmC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_05,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 adultscore=0 clxscore=1015
 malwarescore=0 bulkscore=0 suspectscore=0 impostorscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050124

Fix the interconnects in the example to follow the schema changes.

Fixes: 60b8d3a2365a ("dt-bindings: display: msm: sm8350-mdss: Describe the CPU-CFG icc path")
Reported-by: Rob Herring <robh@kernel.org>
Closes: http://lore.kernel.org/r/CAL_JsqKr8Xd8uxFzE0YJTyD+V6N++VV8SX-GB5Xt0_BKkeoGUQ@mail.gmail.com
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/qcom,sm8350-mdss.yaml          | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8350-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8350-mdss.yaml
index 3733d8cd2ae07597952ebdc1d74edda330173ef6..68176de854b36b9d5e31bce2753c468b569989b3 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8350-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8350-mdss.yaml
@@ -92,6 +92,7 @@ examples:
     #include <dt-bindings/clock/qcom,gcc-sm8350.h>
     #include <dt-bindings/clock/qcom,rpmh.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interconnect/qcom,icc.h>
     #include <dt-bindings/interconnect/qcom,sm8350.h>
     #include <dt-bindings/power/qcom,rpmhpd.h>
 
@@ -101,8 +102,10 @@ examples:
         reg-names = "mdss";
 
         interconnects = <&mmss_noc MASTER_MDP0 0 &mc_virt SLAVE_EBI1 0>,
-                        <&mmss_noc MASTER_MDP1 0 &mc_virt SLAVE_EBI1 0>;
-        interconnect-names = "mdp0-mem", "mdp1-mem";
+                        <&mmss_noc MASTER_MDP1 0 &mc_virt SLAVE_EBI1 0>,
+                        <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+                         &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+        interconnect-names = "mdp0-mem", "mdp1-mem", "cpu-cfg";
 
         power-domains = <&dispcc MDSS_GDSC>;
         resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;

---
base-commit: db76003ade5953d4a83c2bdc6e15c2d1c33e7350
change-id: 20250505-sm8350-fix-example-59d4d2dbec83

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


