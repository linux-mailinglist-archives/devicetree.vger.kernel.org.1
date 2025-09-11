Return-Path: <devicetree+bounces-215889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B199B5303C
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 13:25:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4A6E582B58
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 11:25:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8345A319873;
	Thu, 11 Sep 2025 11:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BqKg6IrP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3367319851
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757589871; cv=none; b=QBbdqrTRT5NwuxbL3bY2tDm0GXwHSAyGf6VPfN+EcRM1TJJD8u8UoGEb9ZyhmB9sNy7+F558pc/pjpT/aqPU/pjnei77jrLfcY03c2xt07LudcoX/g7rdEE2zcYGs6ictcv5Wp7smXhCILd/ukw8SZLC7D0542ZecINsxtoBxvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757589871; c=relaxed/simple;
	bh=4NxcNPcdZQwrNtW6aZHc1wxhueG2DBgaJO6CuwtD5lg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=utoUEQny6W5NtCqlgO5LoaDppeGTeHGUQeAU6zvsKTZmjq4Jb+J/4j54XwmgOtDY+Tb1YZ8ab9tIAlPhpXjxIuy3t6nsyCwsVbGpxN8JQMI1ytqPFDYdx1vGMaNrH0a7VStohv7yH3gBNDtyZnsugzpNSEp67MQm38QvRMjDvvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BqKg6IrP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58B4kGm5019107
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:24:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RIm/FeZHB5M/ZxlpskEh0DOJRMp0J1LnIz0T8jbvq2o=; b=BqKg6IrP7ksbjhNx
	qUq+ScJ5X6x6zGWzLKsu17PvB5HrueS81NxC+sJZa4CSWl+fpLQ1i+fF4YsiqN7J
	shL5DTpDCCkW0syzBS200rW84fXlIGxM6mmHmx4qr68lx5KrZkgkxyJ/QlpKbzRS
	a0Ces7kuoIwm1s13q/WjdR1/fVM/NFG6syzo2+Kz1GfCaiszMHdCBjIYNvjdbAZt
	SiZltamuJ28KpK43nZCBZ5dLV+7396jc5nmyMiQCVwhLgJio2cqRuWcN/RmI6Lny
	7Rf1u8XmIJ9YFJA6rk9P6Jl0iTAu4LxrCzIRQRHQLKdZEbfE1Ld/A/A75478ZPFv
	Hmn25A==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493qphs4nw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:24:28 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-25177b75e38so8019815ad.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 04:24:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757589867; x=1758194667;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RIm/FeZHB5M/ZxlpskEh0DOJRMp0J1LnIz0T8jbvq2o=;
        b=kXj3HA7yrbIhCYSFp6aWNK7lqFYyiJUgHIFqfLlxRTtjFEJjwGm1tdcgJka3icMxpf
         22jz6I0NmMC6LF4sZQF2HBASnh7nYramrdeeTDp3JXmikZBV8cSBJBRCSRVTbqBbVc7G
         OWUPFbIpadK09oLKrSjXDUL6OQ6pLESrUjyAUuRDJGesFhpWeQz89+q5fT1WcnZOv4Zk
         XnVm/ExA28lI4o6hoSVXeoSbKRWDj7NcZ3c1TlwRxg4fLRHgyseRNUIlx7fzNVIxm2yk
         4Fu8AM4SQU2AW/Pn2CwhV9xOhNb8dv6xrVhfebGtDF59RAIe/m5s4pl69JUASpoQbZiF
         6XFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQWMVtw3oksMM6zzT8bmTzMhE+2J+n+JKk1cOVgsxzo8edPh6bdyYhMFTdOLnUEPk8h6okzEPHOpU0@vger.kernel.org
X-Gm-Message-State: AOJu0YxAe4SXMbKVuQmPuX0PsD6IvBMgxhe8MyKQlbUbNWzIc+5WzOFg
	cQb7IFHvt9TzSP6lofRen6Iep/om5pQ5TwKHzOxazZRhCrPKQonBggRqnGQYmcTTASdCV8bywPK
	NZWEUM0LbDHmQ6r7Ay3/+Bc1g8R6EQRaQwhQ8kBoJN2oukn2usdYDuqkQaXzMp7mK
X-Gm-Gg: ASbGnctEUViN69p3CcwzL2ffiigrukrjMZqQEnO009UGoQ0GBb/Z/cIWFn7723XnGAC
	vdxxiMuc7oNc3WpYrPuj5I1h39VUud72WRlnOGF4QoqrtetZmjg9Bcy1CLEzR1LG57s87ezPZdy
	BUGnaa8igb+Yx4nZlGm7Zpf/uk/ah1DWHFzaQYMn5jEtDfRjhLyMaMr9f0bcI1nqCong11z5D5s
	RYbStlbg7tKmCLnnGRFZWZQWinFm2NCr+OWgx42Qyd0bbT3IV7tv5a/0RPgLBWhZJFduImF2X/q
	VSIhLPGmMPZgPVcRHRTypEDfO4rOVbPRqx7OvvBsGkHo/UVGZ2OGzgc2TMwH9ba08XKNR84ivIM
	3WbP5XhKmiiBBtslgGkOQA5pwgddZ23eZ
X-Received: by 2002:a17:902:f693:b0:248:cd0b:3434 with SMTP id d9443c01a7336-25170c41671mr260681545ad.36.1757589867398;
        Thu, 11 Sep 2025 04:24:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH63LOEnM0/9yJJk+9ZQU/OYiv5OWDqETgfKsJUjkwvSFJMDA0nSC3vhgmxSerAXE0+xyeKbA==
X-Received: by 2002:a17:902:f693:b0:248:cd0b:3434 with SMTP id d9443c01a7336-25170c41671mr260681305ad.36.1757589866899;
        Thu, 11 Sep 2025 04:24:26 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c37294b17sm17005365ad.40.2025.09.11.04.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 04:24:26 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 19:24:02 +0800
Subject: [PATCH v12 2/5] dt-bindings: display/msm: dp-controller: document
 QCS8300 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-qcs8300_mdss-v12-2-5f7d076e2b81@oss.qualcomm.com>
References: <20250911-qcs8300_mdss-v12-0-5f7d076e2b81@oss.qualcomm.com>
In-Reply-To: <20250911-qcs8300_mdss-v12-0-5f7d076e2b81@oss.qualcomm.com>
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
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757589847; l=1035;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=4NxcNPcdZQwrNtW6aZHc1wxhueG2DBgaJO6CuwtD5lg=;
 b=Yv0UlU8te3uLa+M0miLX218hpaQHvae7QoWDa5xnVhgy4kK/K1R8ctuX5xgeGWBo64hQZOoGN
 3bUH8bIGNC5DZdOxa/8f3UiqemI3/n7/4sxV3qoHkB1r+WtLos5vvG/
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Authority-Analysis: v=2.4 cv=aPDwqa9m c=1 sm=1 tr=0 ts=68c2b16c cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=W7hmKyP8XuOziMQ-xZMA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: UGovM1t7KivPgqKXGUzZWkJC_CtVhlgr
X-Proofpoint-ORIG-GUID: UGovM1t7KivPgqKXGUzZWkJC_CtVhlgr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDA0MCBTYWx0ZWRfXwOWEitUuyX9a
 Zzck02vzpX+2cdzeTkFQF/HbLxmmAo0TUdz69gFJ6fNZXM2Rt8pkERgLajDYWPBF34MKpKI9sx2
 fNFrhCAWsfE1JyBhYbB5WYTfnc27fPE5Vj8b6jnn3417GYPKO5OafBkxOlOTsSs1kRvyKzgKmsp
 Xz59HmIcud83dWL9FrCnzAbkJFe077CvqHSiZtb6QuUjI24wbEHRv9/fbtzY7pvouBAcuoYgYlV
 tJpRlbri4Aa5WfiHgH8J7tW2uqORT23LFnh0V5wKbIjVQ+OFvFitK21pAFEy51iI5CdMmRi1+Ck
 BaAZxkbcgHfJUt0wCHptKgZbVm1M+iwOf/5R0aeWGqdn/ZcdY2yc3QdzY4nM/u221jA5O0w5xAd
 UlEbl740
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509110040

Add compatible string for the DisplayPort controller found on the
Qualcomm QCS8300 SoC.

The Qualcomm QCS8300 platform comes with one DisplayPort controller
that supports 4 MST streams, similar to the one found on the SA8775P.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index aeb4e4f36044..ea88e1903f26 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -31,6 +31,11 @@ properties:
           - qcom,sm8650-dp
           - qcom,x1e80100-dp
 
+      - items:
+          - enum:
+              - qcom,qcs8300-dp
+          - const: qcom,sa8775p-dp
+
       - items:
           - enum:
               - qcom,sm6350-dp

-- 
2.43.0


