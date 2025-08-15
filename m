Return-Path: <devicetree+bounces-205145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0D8B281F1
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 16:35:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 586973B2F2D
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 14:32:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFF91285058;
	Fri, 15 Aug 2025 14:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bU5G5Z9K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B7D27FD44
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755268249; cv=none; b=N5lF5RvSlRfoOvBKYDAzlJbcvibt3K/XhqnUC1Af52gI95OegshQltdNpkxKBqQ6h7KiPsswk7ClfWyrcmCt9X25aJkFs9uMJ3WVDNjtA9miw0MSqwu4XlQ81kJvpVf2/cXqsRRaFkDqv4M0aA3dyDYF6uR0YJg8K/3CZmtPuwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755268249; c=relaxed/simple;
	bh=aHkNnSNkHMObxomA8INqUlsiwn2oQOdrwfE4sv5oQas=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K1m4APmhFPHm209Tjht/MZdwGxMYDL+Vn2vCBqjSS1bjR5crGJCOAN/H/TaH5ZqUpjDO5Tb/1SRE2qCmmnHHcratc/AF16pGURkvchpcQtcFEoHGVnxJlsWHI3BUMsblD1S8TgaiP7ooqmOVlBb01krUB2XFEjxpPyU6SfF5Gnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bU5G5Z9K; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FEJfL3018749
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:30:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UeZP5gu8Ml5GeHi89IxWND+YNXl/J6sv/jZKNvLERcI=; b=bU5G5Z9KnhpOrGXE
	4UD45Nr9mfzRIw15OSvDy1iqRUnJUJBFSPo5Zn+oRgBFIJ/YRpPkzpinTwMVcwJ7
	iWdHKCC7nFlbZOeQIQZBcXE8sJdQqPVt8ggik+6vKNICPnGieJ1hjWz6qjuy0V7E
	VsbxPw8yMD9yga4wZ2qpXb91+DGEUlkAagf7vBFq8s7VWbaovrT8/jrdPU3oU7cZ
	B4PrFLnjLV7H+hwgWfOEr/6+q/yOWFGZPheACSku8QNrC1JNk/1vNWUE0PJ7rKVw
	byyHtCKx6a+PLBoxd2F5PANh4q2DJGRK4f7ASOuD2QUG4OLjP2X5LXJnn5Uhk0oE
	EfrnLQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48eqhxhfc2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:30:47 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a9f55836dso44998876d6.3
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 07:30:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755268243; x=1755873043;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UeZP5gu8Ml5GeHi89IxWND+YNXl/J6sv/jZKNvLERcI=;
        b=W/YEZ8wYwLnP0Luk7ydLQWLggTxeQx7tzowNjx3UgZZkxqqmVZjtLOkIV2R5lWlOrU
         ZTDI1nS13ZCyCJrZqxa8Cys4/mEwf/VPHtwp4bl8QeexcN34LBpICD/xBD9XRGgN4alm
         FM2bF1C4Q+fRbT4FIU/fWu79Aotcii1zBDXwlYoS4bK1LEfC7bnz5xlxMm5AhPl5lLOh
         QUvg/Bt2d0xz665ysDnpcxPAxb1PrRsN3Zwep0fNAfV3TNr5eIPGHv4cnGVCz5itE2Hu
         QWmSHU7OBNSLCtgooQcPXDXHO1q+loZ+KXL9lWY0re1iuysUaJnz6WdUBOdIro7BIcZ3
         yqNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhyXUkJre0ev17hHkKF3bymN8okiOaHJVy6fb9+qsPJYvfCFWXMtQ5VJuydyeDPUEeSKF/tPOWrcTZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+RtrO/3tBMyxNcasi70bAyVMqFqHF66x0t7dOUMTueuWttXLw
	RK1cPgzZUGKZG+O4Vd6MLW+pzfEUJCTnDTcC96YOejfoZ3eVrElqFbL6RqZU+nWENXlHtsR2ND7
	v2qKOBlyYNOnCfTlYXo6PNR4QzvbU/6Xa8rTKX5jGi9olFMRLekYvAjx6Dv1Q8oNK
X-Gm-Gg: ASbGncsaXbR6Z5Afoz1tYbzET/KLlTmIO+tALjFIk5sjAXBCIEZm7eBvBoiwOujZLFK
	q0xzQ92xzZU/IaSBOW0xikFja+aqb0D9xkVa4DJUjyuDdYawRlcb6I4E4qhXYd/4RLxRpxa4Fi5
	YMG4CFPSPEjTbVMuCqdQrVbwSY5kImivpwT7JFplxC2E2uskFLr9hDFQc/GIEPbVlP6rfPFrw9u
	HXIEJIgXeKYVVxfwBG0T5A1Ouj0AGi4aGll1sRTuWiGCCC4FcTQhfHiGosJ9ESxn1Hs0tklRrqY
	A+tmiWPQPiRJrDlVW5Itd7leW7h2fBRHtjc7tEziwUEnAVQW0Py8/EUaibxpEJW3Q0iPAQqBT5r
	6UYJ9lo1YsV1ZwJ+qD2BjVsCCk6gZpgZ4ekP/vHObVbqSkR+OVMKk
X-Received: by 2002:ad4:5d41:0:b0:704:f7d8:edfe with SMTP id 6a1803df08f44-70ba7cac75dmr21978006d6.51.1755268243184;
        Fri, 15 Aug 2025 07:30:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlhZhbyqG3cH5xHr/mni5fGRBnmZIlpQceroahyM/jC/fuUgwrUY48x67IMWRmk7AbqVGppA==
X-Received: by 2002:ad4:5d41:0:b0:704:f7d8:edfe with SMTP id 6a1803df08f44-70ba7cac75dmr21976876d6.51.1755268242086;
        Fri, 15 Aug 2025 07:30:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3f358bsm305661e87.110.2025.08.15.07.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 07:30:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 17:30:31 +0300
Subject: [PATCH v6 4/6] dt-bindings: display/msm: drop
 assigned-clock-parents for dp controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250815-dp_mst_bindings-v6-4-e715bbbb5386@oss.qualcomm.com>
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
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1630;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=TKheeYZlrDlE542Y1+bR7LBZOvYB5G7ICDZN7296XdI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBon0SHRLofGqaxwkLuQ1Jev5FRpRuGH0QqlMJ6f
 emRF3fPDW2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaJ9EhwAKCRCLPIo+Aiko
 1eKkB/0eb5Ex4GfTYVpAF32D7vYX1W9cUNX5JlubXihv/127iTGUWyeTQwz4w7vttMgxwQM9mUj
 b8oB2v42i5O941rUNZfgmyYYH9hwUfF54Da+Aybf+GChMXFSZ7kTS1EOLMaRbrQ1WHJnImpl0Wg
 DsC+euXqouEL4Bk3ADH+NVQeHUhbCFqBtzGCyoUL1nnVDcQbzDal28dXX/LpqQT19m+8zckgbHz
 aWQWdu8OVvwQg1v3w3+2xXWlNXbJqOJ/2leZLdARMua73o67jYP0xWVKlNCt/H+7SaYZvItpucO
 /rRUYDxiJwOdWocIPMwDUikdwK3k1NRgdqg8curwHYNaAt+d
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEwMDA1NyBTYWx0ZWRfX1GeMusnSmY5Y
 xRycvX8d6XaNwgFm9dwK2VPSpcbu9AIGpoLDsPK28RSPp0ArYL33sa2xZcgMKi4gi+wbOyO3Agw
 XnjN7F6hgcdnMq9UK+8DpKy6CZC8aVmmzxOvusyX872zEs1q48OsJiUoSQLFF5Rva8PA7yiXwx2
 2FDVINTze+QLc/fyAZrbbxrMc7KiVs1iOns/2Pw/Uy5AVNQOQN7FFP/dTWYUKS4fJS3mpubjpSF
 a8FWWHsBs33TIWP07yQcXWHBQwx5c6QGJrwcmb4tku01frBMMrLoMqHXAkMK0yUE2wvqlODdhfk
 ygQS3NB4aLiH7+nDB4/4IwpK1yJrGhdLaupTBHAb+OpvUI7eLkFu2SSRLoeuZK1O67p/47YUAqm
 +rtMirem
X-Proofpoint-GUID: 6m6FP8CcZS4Iu06NMQFAnN1D9drwcHg6
X-Authority-Analysis: v=2.4 cv=aYNhnQot c=1 sm=1 tr=0 ts=689f4497 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=VjVaSBsDX57WhQYIrYsA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 6m6FP8CcZS4Iu06NMQFAnN1D9drwcHg6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_05,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508100057

From: Abhinav Kumar <quic_abhinavk@quicinc.com>

DP controller schema documents assigned-clocks and
assigned-clock-parents. However these assignments should not be a part
of the ABI: there are no actual requirements on the order of the
assignments, MST cases require different number of clocks to be
assigned, etc.

Instead of fixing up the documentation, drop the assigned-clock-parents
and assigned-clocks from the bindings. The generic clock/clock.yaml
already covers these properties.

Suggested-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/dp-controller.yaml         | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 55e37ec74591af0a1329598f6059475926fdd64e..352824c245224d7b5e096770684795625fc9f146 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -73,16 +73,6 @@ properties:
       - const: ctrl_link_iface
       - const: stream_pixel
 
-  assigned-clocks:
-    items:
-      - description: link clock source
-      - description: pixel clock source
-
-  assigned-clock-parents:
-    items:
-      - description: phy 0 parent
-      - description: phy 1 parent
-
   phys:
     maxItems: 1
 

-- 
2.47.2


