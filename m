Return-Path: <devicetree+bounces-218866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA85B84F48
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 16:04:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1568E4A3A25
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 14:04:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 031442222BA;
	Thu, 18 Sep 2025 14:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OR1qvIEf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B10E2206BB
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 14:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758204257; cv=none; b=d6aZIibYOHluiM698TqBP39G4iMMyfaTTSsj9gZ/C62hNe9JXOVgdC/xdbComWNeE92NSp9VZut6FSu1F7suPzFu9OgDCSJNTlNIoDvz/iYSM6Wndv2pp+3jZRfIDWEzzNVuP85tIOZR6QqIaQp9jU77TG3j60kpLKtepS9AHpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758204257; c=relaxed/simple;
	bh=QJCrq9EVKnqtcGSGyMsia6+ZNN3uVWUCcTfFO8R7JlI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=O3OSQLlwMdEjkwdVcaxPayfOIJnxyazZLEfiHVFAfpa1uK2tgfXR7Y5dB9mfH4Hsq9QtvfOi9WL8vrF70nCMiHmrVPY+eAaWGSC5hzHYLyWHQVQMubesXKbdAhlo4dvYlhrQWzpRkzVL8CvWr1LtAt2mL8xhibcxgx5dmidaCpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OR1qvIEf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58IB6JlU018260
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 14:04:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=hCe2ZbZE5TuBVNf+FdOD2ubfL6oSGqfUPA2
	MUMjFgRE=; b=OR1qvIEf+OaL8NOWmRXRZtGkuCd7/FL97sgR6ef1cfSgNTpYn4+
	Tnv05xS0cKWk1hbBmUxiRlCZxYU7MT2N3D7PT26tc9UVb8a6qwZWYh7sWItZiTJV
	knbFr6jwNXpAJ27D0lnRtYRya9R9y1g+5xXNzbLO9hc9qncyA6+FvtKAZvHSzWOV
	g6s+VaXf5eQkfVbUEU+6Hpe70GCnLHp4oJSzoc/jSVWOxJREPB4KN9r3bHi/kMJv
	8iV0W5nuHGWETC+rDHqBESKdgoZXmz16zSCxJIRRK2Vuu5aWOfOXevCs5pf0zLwU
	a2as9UnluFRMLNkw28z/JUiRIKNblcUMNyg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxwek1p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 14:04:15 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-329cb4c3f78so905700a91.2
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 07:04:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758204254; x=1758809054;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hCe2ZbZE5TuBVNf+FdOD2ubfL6oSGqfUPA2MUMjFgRE=;
        b=o5eLgWUcR2AIPqghdCrUehu5GgRkoWW9m+8T0gron+xCOGO0+7A7gGTYK1EDwbFzC4
         lc7F4sy7ORUDByewI+JLL24qIyH/OraFqV7bCU2wENEeeLddZCWCvfLRVranlFaiK2YG
         lEbbOXVzmj4D68X2Dhf4/VT3S5Krf8f6549hAMMHkr9bca3gEbAegdDgQ/60iQMXB2Ua
         w6f5mw/dU3ZFV0YJpi/6VGUGmw6DATCIDx+0RrP3cs2lfdmLt+C3hUvxesHzIBnUeDQ3
         vdmz3z2CvoLCv0EVbftA+0yngZmlTI42zCYRee43HUOf9hlpz+Iuvhcrj48fg7Z9csJm
         BpHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnPjjdxpgPXTvmrfKFsrbJGVVvTG4WHqYheJVF6hF7LeRd1nuR6CcrLrizVeQzD5DkF2Q/8B8nZ3/s@vger.kernel.org
X-Gm-Message-State: AOJu0YxIPlD2VFcar/h5zWo5gmibXVVDF+BqrwubbLPvkKLFPrmoZmzN
	W+KY1hJNQR89s57qG3izTjSefTGcKqE5CUN8jTB+/j1e92iim0r9TgEO3CpK00RF/YA08Gaqrnl
	NigzK+dSmtfMDMtpVtfvsHnfW85O7WDseFaOrKq9eUGsft9mDpBmx8p+nnhFCZYta
X-Gm-Gg: ASbGncvOk05I8c5FWdDH4PxJ4Sly/Rw+QGcCBv98th1Ug2Rw7rLPccGHyBEobiYuip7
	KE3Q7qDEqXkum/gguVS7tvbV6SnkBJGLxxfFMvs6N0i1zJrQuiCdK5Eg5YpQFVA0mq6gKnph6xU
	/hmzwlsH6NLmLT2e/eV8ve76Fa9qleuUv5zg0kp4aVxV7ZvxjM4bUV2NggG4KMHyw1XBMg8ywIs
	YML4QEwizXkhqGLxK5b/MafL381uDTGofGpYLLpEJHxFlTLYTD5dDj3PkCw66KZ5QkeEFy2A8eK
	ySqh1NjbFXYpcekIgSuIyxxjtzOeXH1n1FNwLy8Ha5Gq6GVZLMsdJCCaDVRK/dSLah9L+W7IJkh
	K7B6ejRRd9uzEILRgLk2WmF1+WQn4B9GlpwjGjdr8iszstJ553zU/8ucN4wS3
X-Received: by 2002:a17:90b:4b49:b0:32e:87fa:d96a with SMTP id 98e67ed59e1d1-32ee3f20aaamr6825863a91.26.1758204254159;
        Thu, 18 Sep 2025 07:04:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGENvX6pNCbs5T3xIr2t/OTES0Nse0RZmu4cE4kFv/Rf1wD33TIz25khTZjTYD5A34y0lVUTA==
X-Received: by 2002:a17:90b:4b49:b0:32e:87fa:d96a with SMTP id 98e67ed59e1d1-32ee3f20aaamr6825805a91.26.1758204253549;
        Thu, 18 Sep 2025 07:04:13 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32ed27612b3sm5624894a91.22.2025.09.18.07.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 07:04:13 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: tglx@linutronix.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: interrupt-controller: qcom,pdc: Document Glymur PDC
Date: Thu, 18 Sep 2025 19:32:49 +0530
Message-Id: <20250918140249.2497794-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=HbIUTjE8 c=1 sm=1 tr=0 ts=68cc115f cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=9VwqXn3BcVUWGglbYxcA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX4srLavRyFg1I
 cjdkBA9P+e9PTzDOToYmpZop0w3JiyODOSbGu0WnFNMAMEW4x14GZ09/7JqtkaqDiDvz0G/KOzi
 BGAt0lIaJm13iL/mJpwuZvKufBwW2WfOHRJct1fOEdPMBgJzwuYaiLHt+AZTVObAqY63m//whMe
 WY020sXcXOyUg5i+tpctXejaht2MgAgtPA7IG/yR2+1XWSXgUKoI4zrZnvs28OybhXx+hh9D2hL
 b1gX5fxi1kt3v4gF63ASJswCYXdozTuCEooTXX8gK5tgPqOiXhql+DFw8eYOHgFBX98g+mh3Z5Q
 53qk6gk7bcePYG0kuItyVGw8FVY7zGPygQLniNmNUvfxZEItjx6ZEMJTGCaBfDLgIFDp3g6ih9R
 qL3/8cba
X-Proofpoint-GUID: VM2GwwSqZSwXN05BhmweCP7S9ZbXjhuh
X-Proofpoint-ORIG-GUID: VM2GwwSqZSwXN05BhmweCP7S9ZbXjhuh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-18_01,2025-09-18_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

Document compatible for the Power Domain Controller(PDC)
block on Glymur.PDC acts as interrupt controller in
SoC states where GIC is non-operational.

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 .../devicetree/bindings/interrupt-controller/qcom,pdc.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
index f06b40f88778..38d0c2d57dd6 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
@@ -26,6 +26,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,glymur-pdc
           - qcom,qcs615-pdc
           - qcom,qcs8300-pdc
           - qcom,qdu1000-pdc
-- 
2.34.1


