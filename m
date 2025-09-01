Return-Path: <devicetree+bounces-211207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4FDB3DF3C
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 11:58:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D130189F3E8
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 09:59:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0FA630EF86;
	Mon,  1 Sep 2025 09:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gjdbIv+n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C43330DEC0
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 09:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756720694; cv=none; b=U1Y9MngRLfUWvjy+IKDMerFcmjPbnTATQGxF2t+conoR3LEiZ3t/zKGSt74rHG6XYLVaOVQLx0DSTKL4fIFm2g3Sf2JzlNyRBjUDLADWiQY45QMU+xdy+jo8DLrFxDYZ19LvnH1V/QACCW6TAsS9Wk5vG7FwhYJOT1EPaEcZ6LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756720694; c=relaxed/simple;
	bh=3rkFDkEG8LVsFjeJ4SQMC5Gt/HRXtaQnkmz4irxbEPk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=k4WG4KvOaR5mUrMiNcYdu5r7CqUegVYStLx+opPcnC3Yv3j32+FVRKYAF7lDPNhq3NAPGxnZ18cEycGi1XTFzJjzbeUAacEpue4GvXiXE7GnbB3xD6D5YdUc4Y0eI1AqQPs1Ke2QRmdkhZ1GCHIQmYCqCXXqu3zoNzQrKzKcF0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gjdbIv+n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5819ePXo026353
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 09:58:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PC0P0KeW8pKD9FQHWaVlmS86Em46YGeoi5IHSPfP7vk=; b=gjdbIv+nHm6u86Jh
	RNuWwgpHEJgkJSts8g/ySpsmyfzr5gFYe4uVsF8TrcVVxKiMgKV9WKPa4bVGBDdo
	CIsdF/bD7WsUB/XThT69KAnhHQPTqpH+f10B27KLs+pn+Xhat4JhIdmbOjOndKeb
	NRmse2w7ibWg28qiamem08e91QBi6p0tSA8EChyPcSNHan90xIagDHWmfeuS6Cvu
	hVFYZFnu5+midXHStNMsKYPlqsQfZJcxjRNE50O3jVHvngSN4dT36U4ZlJOpCzeX
	WJB6XauNkERmQ5fht4RhOm5eG7ueXP1KSy9y1qKHmkSwWRfrJY2i8MUAVvXbr4do
	C9oo8Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utfkc6y7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 09:58:12 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-77243618babso1613453b3a.0
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 02:58:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756720692; x=1757325492;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PC0P0KeW8pKD9FQHWaVlmS86Em46YGeoi5IHSPfP7vk=;
        b=EAm5srYANMY55CqIrgrLxMlC0ZrYxNLVFmQ17MWgRch7f/4KovS+KWi3IrF8Ltd5wD
         1oDIM97BIaT9pQpHjfmEqwJigO5oq23BZ9OreZH+cD0GsnxMHTRGdXWVZ2F353WffpMd
         hJSEi5RKMe6fbOtS6ANhEegRCeVitZl6TyefXOxtuTUBWWg60Go0qlpiT7/88J22NLqd
         I/wmsrv4OI2qVk9zs6h8m2XSiAZhX/DGoGBOX6LkBWYiuSomZaqBbYKV6Aq9LyzO/8gG
         AKSINE3FXtUfZiuRhezpkS7TWhTPJ+DeV4XlnbXCzkDFneDZrScy7chzuxADKOBtFUcn
         xjag==
X-Forwarded-Encrypted: i=1; AJvYcCUl+n9dvr3y5b+Gr5v2RyK/jpmGfYIdyIaI3YPi0shdP5YWhCiaX//6cTcvKPOJVi86AfKjEsNby9jQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzuXl6tEnl5fQSGhJQc7cWmAchh/XpAbxxrBLeWqq809byaNb/O
	Zr1b4Pl9J/zbWXewubNBXivZQAeOiD6hmttPNeu/0GukX+HPekRcKMZhyubsaXB0FRl5TcOkPDq
	YRiIrcoir95S02+V9dIgeybnoeiiw/uzITo8SL2PzLFWWBqzmaACtBxx94UqbcAUS
X-Gm-Gg: ASbGnctd2s4IiBiUHCN7acQsXJo0zZjex0HghGxGXDsAD6K3itzEsCOlR7wJMVfxJX0
	MvTdjVpbHjOyL405pfjwSwwqQGaG3u74oUX2rMbzQ08p0dhkSLyqDKCJxOqAZeqGrHfJKh93fXh
	ETRcvHjHURU7uFjBuSZFHEjpoyhSMtvXerD94SuSACFzJqHnNnALkk/ivnL3dHkCdzeOx9CL3pg
	zDrNLlNz5kxyiQr2Mq5hzHwFKb1RO0BRm56pti0xUz6CAN54j4Ro69uguNPLmdvhYzmhAMNRM3y
	zdJyVc/znUyAzjuqeZ3mYlEw/rs18yRAOFqt90PeAwZ4NMmg3ZcDN83ijXdU82iU3G77yzE=
X-Received: by 2002:a05:6a20:1584:b0:243:b35f:58ea with SMTP id adf61e73a8af0-243d6e01092mr9275692637.22.1756720691888;
        Mon, 01 Sep 2025 02:58:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGE4FEkbxc8zJAVFcBNKH3By/scmpc66RdOPEWIriSFDM5liAVdwxSS2dSJZSUUOeU2APdJKw==
X-Received: by 2002:a05:6a20:1584:b0:243:b35f:58ea with SMTP id adf61e73a8af0-243d6e01092mr9275648637.22.1756720691417;
        Mon, 01 Sep 2025 02:58:11 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a26bfe2sm10305656b3a.14.2025.09.01.02.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 02:58:11 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Mon, 01 Sep 2025 17:57:30 +0800
Subject: [PATCH v10 2/6] dt-bindings: display/msm: dp-controller: document
 QCS8300 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250901-qcs8300_mdss-v10-2-87cab7e48479@oss.qualcomm.com>
References: <20250901-qcs8300_mdss-v10-0-87cab7e48479@oss.qualcomm.com>
In-Reply-To: <20250901-qcs8300_mdss-v10-0-87cab7e48479@oss.qualcomm.com>
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
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756720667; l=1711;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=3rkFDkEG8LVsFjeJ4SQMC5Gt/HRXtaQnkmz4irxbEPk=;
 b=x43dftNhgBfQgNOncIm3bxVBcJJxIETiS2CaQI7RYpFOenwd9rA2BLYjRxTAV3W+Ex42mMN2C
 yk/G2r32mMhB/S1lJzSLq2PRcaVDRtilS7PPRLPBisLMj9OqdzU6Y3Y
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Authority-Analysis: v=2.4 cv=eaQ9f6EH c=1 sm=1 tr=0 ts=68b56e34 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=cUk4fDKarN54sxZTNDcA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: 2OoUhNk6ymXHoz0QKN_wljNS20f5OVZ-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MCBTYWx0ZWRfX6c8k9u1wiFYP
 SClACAnkdODmXfOmqs785HcbF4Xm/aZY7FVtP0b/uPsSP/w7G3LMhyi1j6/1wG8VHmGo7E1Krhe
 5qolsm4wJjdwUkbzCrV5NHueg5b1546wtZbbqNJHiTuIeHXF5UkGL78pROCrJU+OdR+o5btdC0/
 a0GQlb6LLtKP3AEF90bxPHCCJnq3PP1+RxggFKPJyIO+VaSj/z18IwYHXQehIWhvA6gkRDD/XDr
 hTqxf4qk3CrA7CJX5lEr7NGziZE4hXGyqGww9g2PNrymf+1SynRDhj/7wvGccPTCh3QcUWkbBsM
 H6rx59Inu6EsHRAfsf/eCM8yNk10VLuew055UJyKa+mfkHiFo0m+1wSrDdTLvmSDqK3oCvbJhqf
 OE79/6kb
X-Proofpoint-GUID: 2OoUhNk6ymXHoz0QKN_wljNS20f5OVZ-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0
 adultscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300040

Add compatible string for the DisplayPort controller found on the
Qualcomm QCS8300 SoC.

The Qualcomm QCS8300 platform comes with one DisplayPort controller
that supports 4 MST streams.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 .../bindings/display/msm/dp-controller.yaml           | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 8282f3ca45c8b18f159670a7d8c4d9515cdb62ca..4f0dd80aebd1958327a06d31664dd68e02e5ba94 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,qcs8300-dp
           - qcom,sa8775p-dp
           - qcom,sc7180-dp
           - qcom,sc7280-dp
@@ -195,6 +196,7 @@ allOf:
           compatible:
             contains:
               enum:
+                - qcom,qcs8300-dp
                 - qcom,sa8775p-dp
                 - qcom,x1e80100-dp
       then:
@@ -283,6 +285,23 @@ allOf:
           minItems: 6
           maxItems: 8
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              # QCS8300 only has one DP controller that supports 4
+              # streams MST.
+              - qcom,qcs8300-dp
+    then:
+      properties:
+        reg:
+          minItems: 9
+          maxItems: 9
+        clocks:
+          minItems: 8
+          maxItems: 8
+
 additionalProperties: false
 
 examples:

-- 
2.34.1


