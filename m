Return-Path: <devicetree+bounces-167657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 010F2A8B3D7
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 10:30:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9525D444F64
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 08:30:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAA7522FE1F;
	Wed, 16 Apr 2025 08:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FF/CFZ9k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3263B233145
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744792182; cv=none; b=nyQdWZiGAN1X2F2hRnlJqknQBTJxpfqUl1mprauqQuoHaDTngToXTDCERdzIaj77rH8BPMH6j3vYyysJrqLpKArSBmvtIwMj3C07+g1HFe9O1OLZ9NjX/YiKYuX/SwMwhwAAcHrO57iMyQYwGrExqhdNc7BJUE8wsxbs+mChIw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744792182; c=relaxed/simple;
	bh=u+Slyka3f+K5iPRwbFIc5bGO5YI+Q+BDcS1hNApu66I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rGuVWOFpPuM+RttIuGeM6hDa8P5bZKHS0c/ENKrxlyJy9ln9M6cNWJCXWnMSxUHnO07oTEaguGkV4A4TQ0TIB71EtuJfCVNdOjfT3QH04pLrJsVIEIF59xpUGcPO872dV4AEdyrtLJqGCOSJI+jlZYvW1pKSx59khlvCYKpwBWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FF/CFZ9k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G7JO0H002589
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hA6wQwwvAtFG3FutF9qg11R1y77VyhpjOoIs9S/ctHA=; b=FF/CFZ9ktsaur0U7
	NpsMuvf754grp2HPqH7Z4KKAGoWK1LCg9bSKVGh67xBFv36ENe4EzTNr2lJzRT3J
	NpKIOVoLQ0DMo18lxDJJ1IafYJc8CBRuA5XaINsyqqUmZgyMu0nXqMmxsOqsR9FX
	EiTVEzlfwBGM+knkpv44yovfsvclmOsSCx4tWPy7tnqjGD3Q2lrcwZh2tlqT2T5W
	MFajH8zSRo6Htn4/Dq4+SIbiMOUgfbKMPlsuG1JoIkZPQifK0NLLXR5Ylci/O0OQ
	VBjPpx3wLtw11Yc5t5uZBuCiOXnJxQWeOI/kmM+OVLEMY4JnLtKCOhGKNx0fsQnl
	hM4sLg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yg8wjurh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:39 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2241ae15dcbso72196275ad.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 01:29:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744792178; x=1745396978;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hA6wQwwvAtFG3FutF9qg11R1y77VyhpjOoIs9S/ctHA=;
        b=Ez26zLWnmkWcW+Y+Gjc5tNFYC5t5Bk4+Iyle24FBdAWJjRpbAUagOtizbvP8BeC7Jf
         PpEnLUgWP+kixJBCWcw2WF8nmiwEtDRvTgGgw5nxvQFjguISIXQr/DSPLt/1HSyQPvxr
         zZ4MNW7va/H+uSj+/d8dLasrRWRb9sWvxZnhrWMNvtNbBWsrY7GwgvirztVR9PiuXnHt
         3ESjH6RtUyQJFBDjQ25Ecvds2aRcibVAV/bFgZ8bMuqgwIdvjS76XoTzjq8ispAAxreY
         Ci21edJZjDvpH7QDyy9/9Ed93F3X+ImxFx5Od8G9M2hVyPFkzVUA4t/rwc4pqSSy4HtT
         RemA==
X-Forwarded-Encrypted: i=1; AJvYcCU5wpAzF57MX0/dBCky5+cVHFoZRBFWU24Z6qsahgAXdkLfTIEU0D3+6X5SLz82NQVZWwVWK1Mh/NW2@vger.kernel.org
X-Gm-Message-State: AOJu0YzWsrC+dvDI28QLFFZOqb/7KogT2ZHExiRerurrhJJVgL4kiH0G
	Oy3vH8+S2qtrCL/svI8Y//jiuEolFZvqTPkscz310+B9opIO41ZB/fM3wXZbu4uDp1696uFHy5u
	mqt86GjiUyOGUYTZMVQPc/h87mRRi86lpNQ1QmjEgjvsBsDvHAe5XiWasQTFE
X-Gm-Gg: ASbGncu94wxRdL3PlDVscIknrD8PE6lm3exvm0riQwRezi4U0yOn7O8WiFDVxFns5s+
	sUUGCNsk4mMhvU06vS0KBq3xeFQRre5Aa6ZtS1jTXoW1yXC4RJ+JjA/n4qZa2zkQJlrmaxUbuAW
	yyTYwvS1lRyuGPNJgoh7Dl9rfG8bbTEDnsJKIH2hztbLQjHKxZZzEJPwbXUBwOYW94toV7QwPuF
	LpE+7XQnOnrIJvr5K9PVTW3cUC2h4JQoN7IF3mZIy3aI4bdebQ9iVv71GwMfjFsWyNnjYsPiMoG
	xB7tbOSf6+GrB0FmXN9G4JsdL9GU1N7wnMy5C4LXnMx4P3Vlk75TawIk3aUr5aEoUeWMd9xSGEy
	pYA0Ob+bCoruL+wYbX3a4DSEcBdy0dUve6xlOfOe9UI2PsnY=
X-Received: by 2002:a17:902:d589:b0:223:f639:69df with SMTP id d9443c01a7336-22c3597f23amr19041625ad.41.1744792178559;
        Wed, 16 Apr 2025 01:29:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEaDikq4deNWKVGeRnXhiofu8wwXSmIJTUGMTyt/nrI9fSfoDeAaQ1w9XHoBOrxbrFgq9N8hg==
X-Received: by 2002:a17:902:d589:b0:223:f639:69df with SMTP id d9443c01a7336-22c3597f23amr19041145ad.41.1744792178155;
        Wed, 16 Apr 2025 01:29:38 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c33fcee11sm8340125ad.191.2025.04.16.01.29.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 01:29:37 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 16 Apr 2025 13:59:20 +0530
Subject: [PATCH v2 3/5] dt-bindings: watchdog: separate out the IPQ5424
 compatilble
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250416-wdt_reset_reason-v2-3-c65bba312914@oss.qualcomm.com>
References: <20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com>
In-Reply-To: <20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744792162; l=1662;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=u+Slyka3f+K5iPRwbFIc5bGO5YI+Q+BDcS1hNApu66I=;
 b=gLTH1Gf4Mgje14KDrgWv1TtP50ZpmbNYjQZ08AaafgTSpPZ+D6EmQDmjWzfkYtYvJnqVtb0Uv
 T1UpRfTUN44A7QtSaBfkbZcn6KWGlM2SBiQTEHHvS9wPMy1wKGdfZZI
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=E9TNpbdl c=1 sm=1 tr=0 ts=67ff6a73 cx=c_pps a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=saKzS3r9oGyBWaH7Fp4A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: fvtOPf8lrFUd7C1WIN2s6VcT3je9JWTN
X-Proofpoint-GUID: fvtOPf8lrFUd7C1WIN2s6VcT3je9JWTN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_03,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=999 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160068

To retrieve the system restart reason code from IMEM, need to define the
certain device specific data. To achieve that, decouple the IPQ5424
compatible from the existing list and define along with 'qcom,kpss-wdt'.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v2:
	- New patch
---
 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
index 49e2b807db0bc9d3edfc93ec41ad0df0b74ed032..e800f53381ef5626787eff1029bc94177e2635a4 100644
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -20,7 +20,6 @@ properties:
               - qcom,kpss-wdt-ipq4019
               - qcom,apss-wdt-ipq5018
               - qcom,apss-wdt-ipq5332
-              - qcom,apss-wdt-ipq5424
               - qcom,apss-wdt-ipq9574
               - qcom,apss-wdt-msm8226
               - qcom,apss-wdt-msm8974
@@ -56,6 +55,8 @@ properties:
               - qcom,kpss-wdt-msm8960
           - const: qcom,kpss-timer
           - const: qcom,msm-timer
+      - items:
+          - const: qcom,apss-wdt-ipq5424
 
   reg:
     maxItems: 1
@@ -93,7 +94,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: qcom,kpss-wdt
+            enum:
+              - qcom,apss-wdt-ipq5424
+              - qcom,kpss-wdt
     then:
       properties:
         clock-frequency: false

-- 
2.34.1


