Return-Path: <devicetree+bounces-211962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6EAB4164B
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 09:21:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7D705E1D93
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 07:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A39EF2DAFAC;
	Wed,  3 Sep 2025 07:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k1CvYymg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109F52DA771
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 07:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756884040; cv=none; b=NYcXUI6ORfL/9C/IuTyLJh2uKkBGkPmKqy+ggC6EhJKOWmX1Fv6bFdGGj9OVK1q2C7xpCdwMEerbYJQ0CtVxYNz8iGHR+jU0FripgUReqgvqhH3K76ofXshTH6CyzgqF3pwNBz34fNUjhZWU2A1TdpWEOoU47oNedOtfK1WIWaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756884040; c=relaxed/simple;
	bh=fFP3LqhWTuVccKncTpXmtlgNDY+GqNHMRYAffl99C/E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W/38mZ6bKUrinMFBk+9MjHsdHQF6oGrGnU+drtJevYj7j7+kDOcQ4rMUP3VVhwFkA/DWPW3dhhu7CRRgUbXKwvCgbDNsnXw3+YBl9qLdd/aKlwE49LFkO/d/WiLzTNsCho3N7k31jYANPTDXyuDGxsrkHV1g7tqjG52Gn+jWqGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k1CvYymg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5832Xg58012167
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 07:20:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	783y78yXmBJY5xRlP2M6Gp15FylMnhfNQmsntisnv7g=; b=k1CvYymgnAKcb2Mt
	qjO95wf0KQz6bNKOVJ/pPT6zeeRQ6XWYgfVEHCZ2B7cbyVQL9pmMhusZ1XVDG0JI
	gyO4pYx6rKXwmTSlunTcauykFhNQPOTwNYJQ5OxNJCBSQmz3mKKEPvbDh89HPrh7
	2ZXowxKtmqUfP3EVBTSY+lGOP9jLBuOyyUetOtKYUqvxiIHe8h+LimS6NWA217Rc
	B1C+q0TYkm93BTs++ULYi9B3MLCafMHdFqHFWRWQulPhVWwPWp/M3XK7C7ngleKE
	unsB7WBRWwt4L9sBuepUtWIF+qXnmkxZmZRiSUP+kJ3Y7AtKcpYhETs0Al7fdaZV
	Ac2yjg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ut2fjfym-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 07:20:38 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77253535b2cso3308141b3a.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 00:20:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756884037; x=1757488837;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=783y78yXmBJY5xRlP2M6Gp15FylMnhfNQmsntisnv7g=;
        b=PGCoVUyRmtTEDjTX3tVDP3u/56rg+kQuyAlNLoPxOSmx/N44HHCxRyZvWaXrwyL5mW
         yBFII0nu0vKWEhWOE/FrBaSeljd8t6WJyxEoQXSU+lWwTLE1IHWpF52fGStmeCVaynA5
         QTUBVuv/Tkisq1TwyBIj+X24I/hTJJSyu9N7LpRIoYHroJ/CVLC6DQZIuC81dq7xeq8U
         Sfiw+UJM2AU0+x+byyqt8WhwtSNfiIHEN7QILtE91e+yiT3rwgKlL9Eg1uPdCjhk1JPI
         KSWyFdb/BTrcSf+x/yvArHkJqV+ztmK3m5kQkcwYrrvj2ZTTpcydaPkM51WY3a8YL9jn
         KA8g==
X-Forwarded-Encrypted: i=1; AJvYcCUNDaxyy0/Lo3nbI2ts+BVt8QuIFGVfMNBjbaxqzBpssfO5LPNXewNxR/H87r4oop4cqOLipCZOQnK7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7th9kwJ70tA9AfMvHFcMjEUSwDLKBsZpsrG4s/ZlhPmGXyIFc
	8C5IviJckLvfZLenwMKfJrZErjtwyg9QtUmN5Q9g+8bJMNNVKF5Sv7IzxV5iOK0tNG8fY5JyfkW
	CduzgMybPqU4jC4R6nWNckhjQDbb1ANzfPTpwNPja94fiq453bh0UJS9t7+1u4u7H
X-Gm-Gg: ASbGncuTfcsoppdCROOJgAjeoNH48z3jbus108IOm4Jc/kJWpb3o9T0yFbkz9/CS44q
	IxDJHgvZ+nZB2Q6g/ZN3iqp/GfvNfvZV79jtF/s37WMcnH/G3dHGb5W+wpHedLI6bCQBrI0mGnn
	nOst6b7ZCIoS57LFlUdFS1EBHAhf6RmaaxCh0qGOojckMKNJQG0avCv7MJZi6Sl0nMxMKMhVit8
	l9eZ3oJK4vWnXvIVP6uThjEAo/yuM8inyBZmOgWi2kAm4EyBjbuUqrDuQHfKtLjcaWbpZB5MB2m
	lAU2toaAZuybQ+6r8LeoR6iVyvulKUzDsFyIIuRcoc8QnBfO/ioFcDMB8yO6cZ/K
X-Received: by 2002:a05:6a20:918f:b0:246:d43a:3856 with SMTP id adf61e73a8af0-246d449839amr2736669637.22.1756884037351;
        Wed, 03 Sep 2025 00:20:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0ffvTpbw9jwjShL+IZyl85/Z8YDW9Xu3u0FzQcQbXXtMwKarzlqKyNTe2+dQNLNFvdlmQaQ==
X-Received: by 2002:a05:6a20:918f:b0:246:d43a:3856 with SMTP id adf61e73a8af0-246d449839amr2736633637.22.1756884036835;
        Wed, 03 Sep 2025 00:20:36 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a2b78d7sm15816191b3a.30.2025.09.03.00.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 00:20:36 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 12:49:55 +0530
Subject: [PATCH v5 4/5] arm64: dts: qcom: qcs8300: Add GPU cooling
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250903-a623-gpu-support-v5-4-5398585e2981@oss.qualcomm.com>
References: <20250903-a623-gpu-support-v5-0-5398585e2981@oss.qualcomm.com>
In-Reply-To: <20250903-a623-gpu-support-v5-0-5398585e2981@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Gaurav Kohli <quic_gkohli@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756884002; l=2002;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=UGkqh+jUsBw9mlPVt984D/vluR2NHRDxt6PvxoK841A=;
 b=NDEzUe2YZLbW04zC7rx7sOBjGheYbp3vZkta1FEKZ4HGbqBSid2Hgn6oXufkMZhSIhcl0n6wu
 IcawBTpY5wAANJYwEG1Iqja1oZ25m7RDZbr3a7ucqz1yPUkHx7KBJg0
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzOCBTYWx0ZWRfX0/F4Z3v9vJ17
 qe6gDzbdFoi3T7ASaxdx9TRVUyrGZtj7FERnWxUYSEMUp0zom2Rx6wJ2+SkRp+HyAnTDbRXzjVP
 VtgFqdMhpT0C8ncK1GZMkM3kO0poTqhzGMLk0nQE+OtohhbFWmIRYjn4MO24qR7wn3oysVqvy05
 gIagFXUsk++LEPojnuPzR8Wi+XdiAvyBOh5pSYwXrXNge86ANJ2tBD92/k4geOcoNrahNxyQh8J
 gpNlHJmUIOfuqLebhUvCkDEI7p2POq03JjH8C1StMKMigZyEBRBbzm1ZYlrlNuEtxfpR+gGgLxU
 gfhMNmAuArU0YmHsddZHBJZ1+2jQJiYHM+KXidH1iydF/AMlBgS97YZFucrbUVJMZYow/5aWTyG
 ELKnqwaG
X-Proofpoint-ORIG-GUID: qApTWXn_qLc1asbxmFvyAhN-UyAmJbS_
X-Proofpoint-GUID: qApTWXn_qLc1asbxmFvyAhN-UyAmJbS_
X-Authority-Analysis: v=2.4 cv=U7iSDfru c=1 sm=1 tr=0 ts=68b7ec46 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=deFBR-s-QiaC76FCe2MA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300038

From: Gaurav Kohli <quic_gkohli@quicinc.com>

Unlike the CPU, the GPU does not throttle its speed automatically when it
reaches high temperatures.

Set up GPU cooling by throttling the GPU speed
when reaching 115°C.

Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
index 00e6131e6b24def4ff9566c14398aaa86efe557c..57b8bd6a089ce8b9a1a63be3fa778a633b4025a6 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
@@ -18,6 +18,7 @@
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -5846,12 +5847,25 @@ gpuss-0-thermal {
 			thermal-sensors = <&tsens0 5>;
 
 			trips {
+				gpuss0_alert0: trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				gpuss0-critical {
 					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&gpuss0_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		audio-thermal {
@@ -5966,12 +5980,25 @@ gpuss-1-thermal {
 			thermal-sensors = <&tsens1 5>;
 
 			trips {
+				gpuss1_alert0: trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				gpuss1-critical {
 					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&gpuss1_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		video-thermal {

-- 
2.50.1


