Return-Path: <devicetree+bounces-212144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E28F1B41DFF
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:59:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A93D562791
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:59:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB9E52FD7C3;
	Wed,  3 Sep 2025 11:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JyskRiBb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E962F3610
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 11:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756900710; cv=none; b=ILkEElR0EoYZKeyf3zuFhaHd/bKAWJNaRS2DdKAVHMZYLsWR8dLUtuX9MJhZ4qROOVh/6DSp05AOc3kbrYZBdlWWEEugj3hM3dxcSHYhi8fcHjGsVP4JZsQQ+/hHmlsfFZPaEj1Vn7oJdCYz8LwdIFd1oBfeNY503Gcg6/d8ru0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756900710; c=relaxed/simple;
	bh=7SN93yAhsVlIHhAjv83yfgqh9HpWqOytsXh6bquwkv4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Kszrs+weS0v/M6/crViv/zFJLDKhWcZGFWhoaT3fHj01WwJlckXq7SYzNgQUCU5zqab8EAsCSXXyqjtFoYACvOzGH9BZDHifP1F6JGBmbOs4r80bGcsE1hwGjweqb2phFl/ZudCyUKfB9DoftZj9cxZWni6Bygusl3r8vMxqqtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JyskRiBb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BEnk5020212
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 11:58:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	atpsxElvXgCLWEtnfNMUFNLYSDL18dufzTm3oOR6c98=; b=JyskRiBbpjmESb46
	EDPO31Z1EZ6yvegcHcH5dnSFNCxtWKQweEDJiHgII5QuNkgrqz+jiyEukqN5+ZZg
	ODBPnlNl0Q9itxQvhstV5cVyfsurT9JDf+Ql5+L2VmbrSLjCQRY9ILs3m052p5y0
	xcOe31KxSvXy9T8oQfx9f3XlR0Ikc5H8uzUqNw8gBlJllJOjRsumjxgW+AphYR0g
	3hl/KaGrvk8E9kf9WO5BCX3lRE6HRMSsYctWj7E1+FMr0IzH6sQKouRhBytHkF7c
	4SrhuCfWG3+EHxuM18Xux1+Vm2tzcymxAditpe76q7TWDLXW2giX0PYqSY/H+SZV
	mxys4w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk93awb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 11:58:28 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b3316dd5d0so74020841cf.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 04:58:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756900707; x=1757505507;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=atpsxElvXgCLWEtnfNMUFNLYSDL18dufzTm3oOR6c98=;
        b=tcbtUj5Xq4oEHUZ+zDyh6UlkS/h2oUCb1VagW0JVsV8bImLmJlcXJl0sXUqrXd/dni
         AaqYpRSVVq50kthro/2G6GaQ1tIRPim8D7uWtGUpqI5QkemItSzfMOoO1UgaX1mBdmPL
         kDtW6Px8j7dWlZBpKJqUdQvl5X4j3jaUMK2dOEwpcMWsH6UJpoQIgPsQ+z3yFCj7yKuX
         AZ4t+HXYz9edniDz7FZCv9wbRoOWXiVXGUm2kJ7yq+AyL3urJGsRv9cFOwdInVkfV2Sv
         vsTTpB4pd7L88MTmWT6qGANIrx/oMwSDyIcaTQFxO5DsyC9ogBEs4+xXwDQwkO7tGwD2
         FtFg==
X-Forwarded-Encrypted: i=1; AJvYcCXQaLW/9GktsTvVJ+/0Cb+fOsq6WSMmkkBlTSkBWpd7VizkxCtV1r2ynrIwj9xFZbqRjB/m7N76dvy3@vger.kernel.org
X-Gm-Message-State: AOJu0YxIi/Zo+D3ecBVpdmu4r3xLx7aimmNuoRw23GcObo2Ez/wHfz7u
	yQRQJvlM6Py9blVB5/BQyRuGKtAQ35nK5UVaJ1Ilrm0RkYG0piZOH6wj/SV0v/pBb4L6Nbpbfvr
	UV6sqeqomCifMdYip8b9cv4nbuNJ0CLspE6C0CJCZMpxSCgE4MOJlXKnGfEt2pEBf
X-Gm-Gg: ASbGnctTig5J0szZxnKgz3Dz1vYC8yTkKSy+VPFXj2G7gJlIT89/CKZpvDREMo28ewO
	dSj44wERLovV+X7dBDCaXClFMVWFluopWsHPICcPM/8bV56StH8MH8E3qRUkPc2qWCiNcHiPfPY
	7tjZZhu8ld5MTvE6745nss0JaGy30XQ2bStN4JGqH8UWzhCBiwz0AN74MF6tdJdznVnLXqP+5vs
	UjECZY+YC/0FvdcfqYsxhem+yydlK1JranqfGknyrceNLRZvf+ZZxo7iIUEv46vwrILswXmaLGe
	kWFxSBfpk2KvparkSARZcWtJ/PzdqYb4w2QNdq+sSIGUNRmFxBmCcglfTwat3LOFHIt3EizHK2H
	Gn9WOpUO013XEOvhIpcFpL5yq1Nm8p0hcbZlLJ3pz6GcS8NDEnOxh
X-Received: by 2002:ac8:7d03:0:b0:4b3:963:b3c7 with SMTP id d75a77b69052e-4b31dcddb9emr153033921cf.80.1756900707127;
        Wed, 03 Sep 2025 04:58:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEb+EMS2bgzjF+wonzL9M5BRn88S64ov/ovDLLFNBNiMqEsjMGSjj9Gp5N1zKTttlgvTkbhnQ==
X-Received: by 2002:ac8:7d03:0:b0:4b3:963:b3c7 with SMTP id d75a77b69052e-4b31dcddb9emr153033731cf.80.1756900706608;
        Wed, 03 Sep 2025 04:58:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f50d30b0sm9891421fa.67.2025.09.03.04.58.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 04:58:25 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 14:58:14 +0300
Subject: [PATCH v8 3/9] dt-bindings: display/msm: dp-controller: document
 DP on SM7150
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-dp_mst_bindings-v8-3-7526f0311eaa@oss.qualcomm.com>
References: <20250903-dp_mst_bindings-v8-0-7526f0311eaa@oss.qualcomm.com>
In-Reply-To: <20250903-dp_mst_bindings-v8-0-7526f0311eaa@oss.qualcomm.com>
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
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2083;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=7SN93yAhsVlIHhAjv83yfgqh9HpWqOytsXh6bquwkv4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBouC1XzNKs3KOvrfNw9T9A5PinobRn6+BUmHYpZ
 AbXYmzlA/2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaLgtVwAKCRCLPIo+Aiko
 1fDkB/0cdD4STyN4uofga6hg4Afg4alqCVv877OF09D2pr1z2nA5rdLzvmgnUcMuCfflk0wXjHJ
 bXsEEaz14lZtPp4J7G85o7G9VjPzwXeS+sUHRbWrm9NXR+wD2RcdMefCPMdcbueKkVTkQYgbgLf
 1FJVNEdeUy3cTxX6eCsIthEtfOSBCKGU6DvSa8D3UYbrbIpb3au9HwSzcrQ136I4QrjjRc4qZlv
 0hS9T6hv06o7YlXVEKtOOtgPd/PmvrYjHbiN1jnXrHriCAdu7gl5s564TQ8jmumSQFQB4GC74Go
 dV3x6hMYJ103JuT1RIOZFoae1XywiZB+ZJLIyFcu8cy2FZ/J
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: x7yOK4Yy_H_i1aoztMYdsnHNM3fu3SBW
X-Proofpoint-ORIG-GUID: x7yOK4Yy_H_i1aoztMYdsnHNM3fu3SBW
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b82d64 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=QYKTPsKsHukT_2dPOMMA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX0UeKV3Tcbl36
 p30M7bMgS5UaiNIFu8Dr3ShObGwQnq6zHAkm2Zp0Zl/Xr7BA0MH9QDq8hYhuei2VnZz2z7SOn/W
 l/kTlh7YbdAo3dvGHYrzqNjufY3YJwuScrjbP7FguncLO8RTG/cOKEaAtoxBAz9a9h/zrKVvEcE
 c0Tv88tVxnvwDXzVbLrMdyKDnx5RKgZCsiEOi+AoLLXWr0Ovtjte1VSFDPeYU7H0XEnnZ2lrnoa
 6ObUeaqkj56RYzbh7ZyNoIxf1tsPMzcoosw3c3kK6NWSuRHaAQBZcffUjhU9e7HgbPGa49bnAUk
 hw+XjSOKV37dJ9In7EtgM2qaSp99lt1e7FWb7fNPWaJ9I6jIwv23l+gWfaNyBS31LFKBkWJOz4N
 zGoaAcCw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042

The qcom,sm7150-dp compatible is documented in schema. Mark DisplayPort
controller as compatible with SM8350.

Fixes: 726eded12dd7 ("dt-bindings: display/msm: Add SM7150 MDSS")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml    | 1 +
 Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml | 6 ++++--
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 0f814aa6f51406fdbdd7386027f88dfbacb24392..a18183f7ec21ac0d09fecb86e8e77e3e4fffec12 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -44,6 +44,7 @@ properties:
       - items:
           - enum:
               - qcom,sar2130p-dp
+              - qcom,sm7150-dp
               - qcom,sm8150-dp
               - qcom,sm8250-dp
               - qcom,sm8450-dp
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml
index 13c5d5ffabde9b0fc5af11aad1fcee860939c66f..c5d209019124da3127285f61bf5a27d346a3d8a1 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml
@@ -61,7 +61,8 @@ patternProperties:
     additionalProperties: true
     properties:
       compatible:
-        const: qcom,sm7150-dp
+        contains:
+          const: qcom,sm7150-dp
 
   "^dsi@[0-9a-f]+$":
     type: object
@@ -378,7 +379,8 @@ examples:
         };
 
         displayport-controller@ae90000 {
-            compatible = "qcom,sm7150-dp";
+            compatible = "qcom,sm7150-dp",
+                         "qcom,sm8350-dp";
             reg = <0xae90000 0x200>,
                   <0xae90200 0x200>,
                   <0xae90400 0xc00>,

-- 
2.47.2


