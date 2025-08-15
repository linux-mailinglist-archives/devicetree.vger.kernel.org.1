Return-Path: <devicetree+bounces-205144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFE1B281DC
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 16:33:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F180F177AFD
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 14:32:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49794279DA4;
	Fri, 15 Aug 2025 14:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CkuVGHKi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9C46273804
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755268247; cv=none; b=N8x73kilbTnclG2tCIzJ7oQ0KCBkJ90VJ6wU49vWPcAvrO6+tUxqa1QC0UKTpLkcCcOZ9ORUz1uLzGcgltQDZTkqPVupuGt/RSsCxcFDN9eck+ldMyZ5d8fLBplpbnYJF2Zca+Q+m0TsaJcfXLVsrQJchMqb2De2XkWPCJ0E5Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755268247; c=relaxed/simple;
	bh=hyEdJsmw3+fD6TBt6iVEMz+fGqwSjLU+mgD1J/nj/Dc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mFo5dZjv96KLKGckCzntZ1BndMvaAOjPJr+Y8ktdXO9Cdsd4GWsAH/N46sBGy2Ufi22huk3J+r3KaD8P19krMAtsq0tnKEo3r1i5P10b7Vt57THDWqDIpmCXpaRnKy8BsWlwC2IIjRopq637wuSXeuLKubOdDPPanPnuK+hU1Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CkuVGHKi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FEIpu0005450
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:30:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p0Dga2ququ/iz0C7Gew/O16VrwuI8lG9clwmw5naUV8=; b=CkuVGHKijQzWfx5R
	OhtRYg8n8j7M+YBvnJkBGk/dA9m1ZY8m0wTtl3B4Y2uWCdo5QE8uhwLa4y6sZ5ZS
	B6Idoi7x0KRLt0FNqhKPsyozkAbv2qmkF1XWXUH1Eg3y8hTe7wzvJt9Uo/zpBfNd
	OmWE3tnewWd5nvxZREv1OPM9MPggCxCaG8kr+i9n2C/6ki9Y6hLa0j5297GTsVlz
	jDZSXCQPb4v9nCAtwiCT4FB9MeS7PEFFRzFKr1LMFeLnkU4uDVe52J9z2zNsuByV
	KM4vjkoMxtS/UrzPOP685W0Yf4qQOeB1gGFDn1KGnsiGvXkH/n4rDbQuRHSI2jDU
	rUQO1Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fjxbpexr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:30:44 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70a92827a70so43317276d6.1
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 07:30:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755268242; x=1755873042;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p0Dga2ququ/iz0C7Gew/O16VrwuI8lG9clwmw5naUV8=;
        b=KEGtXJRH8bghrmInhFfNzk4lC38O+DfA/lm63Kdm2ofQZfnOeCYG0FMeo2RagZWhoA
         dh5O0t1EXMtNhAU/aBbueiurFW2TYtLYpSfsh3pp1VhWmRXrO721a9P/IS9Y5CpMLoBR
         yOtLPnr1M+/wLsHL7Ey1dulkzwmI1wot9oKgWpCHYjucF7GpkvF6NZ5lsGnblJQhQKI0
         epJM2ixLOmivuOY3bwHcCm0BkTArJnFDLalKZx2ieRs1qWv9GVAUbnnHXuFxRu+MvvGl
         jzd2RdyF66GbTU1YjtYjZDn+vscSq8Cw3UYqgDJnxH8R03b5+HImHy45reXaufyWjJ63
         b6QA==
X-Forwarded-Encrypted: i=1; AJvYcCUagVko8VA9ZtI7FWAPxf/48juNk0gJ6OiprFdCnPfkCqNi3bOl5if+kDHPKnw5s61KywySj/JViyaR@vger.kernel.org
X-Gm-Message-State: AOJu0YydBFPdeVxh+3CuAbJ9qNcsswUj/GfDFW4GU+eZIOwtfkbw5/A4
	zGxfwpXogF167gGKqR5E8/NGkwHZRGcfhDk332Pvq2CFPe/G0n8eF8Uimrj1RhcE+bsIBN2Vz5H
	Z0nsYA3hDQMEVHGa6P36cr7FK+aUT3hHuQPa2bFU0WRCWWfYlKGzUSSHpXv9ClDzI
X-Gm-Gg: ASbGnctY9/KE7efpRJrHZeUpfOHNwVKfLUxSIpI9Mm6VpHe92MB5diISIQZAMztZbMr
	Ka2l96tdylcYv4QgsYLMvftuxoXMHjoUYKgH7mAPMwvskvTUiwIvWUNgPCcYEEFKAEpEzTJp5cX
	7ArutZlPheaPPVqsJ+zmZrePkpYid0SGRumvpC/qK1mNt3P3DKFhVknrCBQ27ruQtoUBVtoUdqZ
	0hRIe80y/diY1faC1YKkrZuNzYdlyxG4Zv1lKtXxQ0I50DdbMT0wnL5+fQjfvXVK17c9wvn3wt5
	cNYdaM4zjVGduaBEPLJBUS/ZvoaeP+xy8Q8PiTH5IS4gdvuh9Ce5Xn6SHyrZNC07sL5P9a4CYW8
	mUeYTCSpgKWwHMfNewzjPBzgDmCB50Gl6Vz5upfHLGDWh4auHRXA9
X-Received: by 2002:ad4:596b:0:b0:70b:9a85:2cad with SMTP id 6a1803df08f44-70ba7c18289mr25048626d6.24.1755268241344;
        Fri, 15 Aug 2025 07:30:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEbsP3wUZjJKRwWIURXbOZAQ20XVRCrWirWqOKB0kfzOToUE9mXBEuKx41mGrXm/2dIDmhmNQ==
X-Received: by 2002:ad4:596b:0:b0:70b:9a85:2cad with SMTP id 6a1803df08f44-70ba7c18289mr25047686d6.24.1755268240622;
        Fri, 15 Aug 2025 07:30:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3f358bsm305661e87.110.2025.08.15.07.30.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 07:30:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 17:30:30 +0300
Subject: [PATCH v6 3/6] dt-bindings: display/msm: dp-controller: add
 X1E80100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250815-dp_mst_bindings-v6-3-e715bbbb5386@oss.qualcomm.com>
References: <20250815-dp_mst_bindings-v6-0-e715bbbb5386@oss.qualcomm.com>
In-Reply-To: <20250815-dp_mst_bindings-v6-0-e715bbbb5386@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1327;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Kzfz4h3GQy4csg0TV4VQd6f6s6q0jIGQMAOr/+KricQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBon0SHNIR9djh0MjZ1tAnVRLTcBlTqr7v2pS+fV
 i55+ZtmNFiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaJ9EhwAKCRCLPIo+Aiko
 1Yz2B/90KDCp05bcxoSE/R5Ptv0P1HM2cMyhnRTNSqf61aZa+Zg0T41QAwIA/s2ruhs1y/91atp
 SSJdoRo4oKpt0xbspUUvsUhu/Bi5d9Y2GtFcY01iOda3UGCVagrzaTyrl9qgw+KMqQYmAX6/QyY
 FWzB2oEllczxtuqa7SF96SqhD7MRUZ4IHXgZpMJsHql5d67w4idjtto0Q/x74OFAu/SaF+EZhiN
 1D/Pma4X/LHFqFde2Aubk7T00ovQH4hbOlwyNa1XQA2SQ/aFlUWtax6F6Wa4R9X1gO5kFOaWuU/
 e4Hm496V3GKBtyX6Ha6kelAiIIfycSCxXblTDJ/gVwLixQGZ
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=G6EcE8k5 c=1 sm=1 tr=0 ts=689f4494 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=LXTjkAqqvG_e-hvHT3MA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA5NyBTYWx0ZWRfX2WG/wWKqW1GQ
 8xuZ81CjF8gvWEz6OX0gjH32E2O/rt3bLRDiyMvJfZIWs37N1BgR181+KyNc3LzmGppa1Za01t2
 Ax+LrhqJP15VV8kfyzEEXNH58FkpaQkE9gy0Mq8ZGQxthZxEwyNlxdLUKAh5wjnTPNBlr6+AhUd
 laLUw3szh1LJCUzBDMhTqPb8FgNsxvl5sD69eiJ3k1azCqJtNydbUHuRyn9tIZJS3ORL+xjLnD7
 05cu0zCPKZZxbRVYa8D4RvZ4HBTC7HBxVbaUULN06+K1XBLRrosobVhebHOgUBrht3rAvWXi3NB
 pWm2mmq1lFjghetV2JPu7H9cGDeJt1wHLykIFHPk22324QsFEsu0oTqXsvMJzju969vptX4dTIh
 RSqcSZNm
X-Proofpoint-ORIG-GUID: tkiTz3N6CQ784WgMyK-VCjDfV6cxNpDC
X-Proofpoint-GUID: tkiTz3N6CQ784WgMyK-VCjDfV6cxNpDC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_05,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110097

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
index aed3bafa67e3c24d2a876acd29660378b367603a..55e37ec74591af0a1329598f6059475926fdd64e 100644
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
               - qcom,sar2130p-dp
@@ -180,6 +182,7 @@ allOf:
             contains:
               enum:
                 - qcom,sa8775p-dp
+                - qcom,x1e80100-dp
       then:
         oneOf:
           - required:

-- 
2.47.2


