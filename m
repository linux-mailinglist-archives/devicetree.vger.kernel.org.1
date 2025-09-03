Return-Path: <devicetree+bounces-212146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DFDB41E06
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:59:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A7C61BA506A
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:00:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E2302FE59E;
	Wed,  3 Sep 2025 11:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ntQiwgTd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4397D2FE078
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756900716; cv=none; b=uI2Lr8YSB0lwmXGFOqo1rR9Pa52hrOnMOCHS1Ud1PryZS4uroTChDlsmMJ//32G+UPK3/T6r3+l1RZC577Fv4KkKKSOmmlREPGOs0q8OxiZq9VmFdDUU9tEj0Ttjo93K2hI7wXp592q2TE0XyjXMEz2wxP4i5sdjdbgYghAsx2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756900716; c=relaxed/simple;
	bh=xYiJqMlXkF/RmUEDi8Jx/sYOhGWXsP+4BXARGjRG51Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pTYhcNebr9m66NLw/LgQS+BE+fbEaJp9rZF6Zy5FRiJnuIWHwOVwRiUHyRV4rpOTbiJaOHc7FJ2cKMe72f4N/PWcA0I01zt4LhXBFyYho1TjD4n8WAIFqPYQK1Tj17uFZZLgE87FuEdZsfLAbNeqgkIgIg1Az9lc7n3hSf7X/z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ntQiwgTd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BEwPC001988
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 11:58:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DvS+pfSkiXK4ob+ewthYnY+XCoXOveBrZR1sStGKsLY=; b=ntQiwgTdufLpb0Zl
	mWz+4Kvk/qRELcJZblqrIFNw9oARFmbdNAN1dOvp4iHFwcNHaJJ2z9f8F+WCDXw3
	DXnn2aImGRVi9gHSqOJ+NjnxSMqaxVgIuh0yKseq0MmE6Ty5Dg4yYGE1H0S+/jCM
	CfMtnxrN34psB9slJReltftm7v9gVyYqpmFF3CToIP1ozTCxo3ALyfd5GuuIE/V9
	/gChH3SPNa45oH8BeLGvUsHBMcWZFuep9b9iL0gvZUKY7uJ58VAw5wtFBDK721lT
	fS40SjLjESLNk1AHpGvL1DT3+kqyaRj+3V4SxpetyTObR/N+Ui8Uc9/uMIlXiU6N
	oYnB5A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urw03k1t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 11:58:33 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-71ffd145fa9so45170936d6.2
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 04:58:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756900712; x=1757505512;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DvS+pfSkiXK4ob+ewthYnY+XCoXOveBrZR1sStGKsLY=;
        b=G7JLELuQSdfRtkkx0prL07mkK7A+4KeAdBJjpyz3F4eoXkVcxcIWtO6mPXvTLPxSW+
         AHfQbB67foOV+XexHigT4A4ayLWOz11JEQysCTJTnvPolqr7jSDuQuPr28o5lQ+0lcEG
         Id/yyqAlsUSxgB2Ano20gvGvQdZVe4zvaW9gV6k1hKe+3iArAFiSo/an0AVi8guGnZGe
         UvCUVFY1IglnzBuMxhRY+hrwgusSakyUcIRhkW2ReAQbV8Wk1LPfQtIj4H2Nt+4M+ogK
         ghubO5AMDccZ4Ief6y3+2nqK5Wwa6depv7Ju4pdNLYPtlTYfsWM13BwlNyb6Af4yjvwG
         YQjw==
X-Forwarded-Encrypted: i=1; AJvYcCW6vv+s3ptsRC7nKBjRdHxy+HBDtZXnu+2OC2ZeI523LPqpPqi9eW48r169V/ayeu5Xr4YzBQyQXXkf@vger.kernel.org
X-Gm-Message-State: AOJu0YzKa0pdghbc6yfJYxv5ltwqa4IkaPKwDbE4Y1P+v02HQpkw541m
	vTR4FJICy8dq3pTrSMn8EHb/UrWzJI+doVfYrU3Pb/YpsS69VILFuYebCWufuPNYBJtPnwihL1B
	gkdEo7cNQRZ2JT3A7bi926knjzvqOs/RrfcKIR/iW/GKnJbXZ7sQwNSwvRbFXS47A
X-Gm-Gg: ASbGncsjHUzyR+iRA92Wphgo2A3O828MYRHjKlvFPK+ElxThCFVtcV168JBvhPMBKFz
	7xIzPmdbEY/LhbXh7SqFsMsmI7Ptm1J1N26zS+mwpUxKiCwDUwntk/f25jniGXiqHc6GfY9OYdG
	N5DHLXqaCNtLtOzPLerf+gE7BT/xyoFXw/PiSV22x+MQaJe1o8Y0KogHnK48v4r8Ehw7fvw+LAL
	rvZDm5M0ycB3WpU1DBOow8bBJRqFZx1dgGkD/S4t3dw+v9far5p2wH1jYXbOk6zFaaO/InmfxNB
	SqiBszJ2y5NR7yr5V8Cq04ckKGKkSW+mcWq+AUGPkoSAT8wDakUShXbTqYkULM0JQh3Mg+B1BAd
	yu6bum0f2A9zoxDWFTl6Jb8/yUkOT6rdf0110Vz6se9tJtQ6YK/05
X-Received: by 2002:a05:6214:519e:b0:71b:af61:1348 with SMTP id 6a1803df08f44-71baf6114e9mr91601426d6.33.1756900712333;
        Wed, 03 Sep 2025 04:58:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHEi+tlLK0SmA7ZkkpLzHXvsKU3NqR3R6ubhnPBQsbOGPlcQRBLwWi+D2yJKn/0+PaaiwTqSA==
X-Received: by 2002:a05:6214:519e:b0:71b:af61:1348 with SMTP id 6a1803df08f44-71baf6114e9mr91601056d6.33.1756900711843;
        Wed, 03 Sep 2025 04:58:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f50d30b0sm9891421fa.67.2025.09.03.04.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 04:58:29 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 14:58:16 +0300
Subject: [PATCH v8 5/9] dt-bindings: display/msm: dp-controller: add
 X1E80100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-dp_mst_bindings-v8-5-7526f0311eaa@oss.qualcomm.com>
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
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1325;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=UnKbj8oV/I2z2dmxNHPVYZHaNtQSEhlpqnpLKeNGplU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBouC1Y9YD1JgINpCccE59Jg3NJTVxUNq7VK3C9P
 zTiqZYhZvCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaLgtWAAKCRCLPIo+Aiko
 1elkB/0S26d6iuoLR5zz4fqpDYtQbGuszfgEB0ByWRteyw2h+acALJqub1jjv5QbeCJNQ+kn3qa
 iyAQB4n7rXkeh68FuZCRJVh3NfDY0uf942HEkaWzhRqly+FiZdyS4g9JsnYLpPxiYgVhGXxUn59
 VWg6zT0Cey8UA0c2nLFTooGXgbbcvQMIWTJmCk8hilPlIZazmr+SFwREXXeGStgYLHo/wA1cp8k
 pIqt/QhC/zfyiIXxV2arNZ3BxHTkmYXpFl2+ywk4FF2cpRckJ1tilrSR0RZ1/bPob47o64is3gN
 LOGKezrr0bYlXp8b9yi+Zo6LVGTiqwHP4U67Yklt/McRGxF2
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: LwuYdNFYKIBkSE6AIa3Vrv-uybbADkwq
X-Proofpoint-ORIG-GUID: LwuYdNFYKIBkSE6AIa3Vrv-uybbADkwq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNyBTYWx0ZWRfXyGWjvCtYIIwm
 cfm3yHPhUgxigh/+vKTTemfjTEpJmYUcC5LkyDT/ali4rhXWWupKQbuElBBfF5wrJIdlpPWGkkf
 8gAgrUqR6Aaxm2/sx+dBrzhxeYWzbg6140aPmMhEszVg1+bVKWRXp5qCeqSjHGgYySvTZrntaBP
 34nO0oKwEsI9oiQqbdtU1+HVNKOGQDq7A6kaSWJ4YBPKRKvrLGG/oeXwm+rguq2ptc5umJE9AxG
 hZXx7yIe1q4GoIlqDOGt05w7t6YvN5eDHtheuWVehi06KGiP8iwPo9woTvoBLbfQBXp/iWnH+q4
 OAcJSd+Q6Nd4OQIoelXTNjQbGqXsDtxIJU6iDx7/NZfB+Gtp9eaF48DRuvqQgj8SOLNRXawCQmB
 FtthC9GA
X-Authority-Analysis: v=2.4 cv=NrDRc9dJ c=1 sm=1 tr=0 ts=68b82d69 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=LXTjkAqqvG_e-hvHT3MA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300027

From: Abhinav Kumar <quic_abhinavk@quicinc.com>

Add X1E80100 to the dp-controller bindings, it has DisplayPort
controller similar to other platforms, but it uses its own compatible
string.

Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index a18183f7ec21ac0d09fecb86e8e77e3e4fffec12..6316c929fd66588b83d3abaf01d83a6b49b35e80 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -29,6 +29,8 @@ properties:
           - qcom,sdm845-dp
           - qcom,sm8350-dp
           - qcom,sm8650-dp
+          - qcom,x1e80100-dp
+
       - items:
           - enum:
               - qcom,sm6350-dp
@@ -193,6 +195,7 @@ allOf:
             contains:
               enum:
                 - qcom,sa8775p-dp
+                - qcom,x1e80100-dp
       then:
         oneOf:
           - required:

-- 
2.47.2


