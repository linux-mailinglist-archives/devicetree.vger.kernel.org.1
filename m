Return-Path: <devicetree+bounces-220934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 22127B9C85B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:21:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5A39E7B73C8
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 663B12BE7B6;
	Wed, 24 Sep 2025 23:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="amDcCKiW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D528728488A
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756058; cv=none; b=OzVC/3nr+QJEaXRelBdN3V1CAR8bIR2BioMlLlcOnb8Na2nw3PcN+sCzWnIAT0tVA5c9IFprTxFD0pCQz2BcTe0gTYNd+glyLp2MQb7il4M4YeSnPcNwZZTTmgDu2XtjKweDRj/+RF1McYggNz0zMgg3jDfykZFuM5/Y2bVzYtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756058; c=relaxed/simple;
	bh=JQS+dRPb44MuhTEHQV3reczj3jSZa2Vg5ixi+Cc9Gd8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=XjV12Stvdq+k5ZaKoY3S9+ZFDU1AYGkJRpy7uhGnMW8PHUna4xsZ67lyMyzWCcZFQjnVRYRug1sEegDl9k2QrVx+yiOarwTxLt6g4xLPmhazK4MHoCOv6h/LCIlHzqKJdDIQa1oxt/LKU8VDC6zbtfagWPCqe0UEdah0W9YwpkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=amDcCKiW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD8wOL002776
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:20:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=RjRBZCuI5DbmcoTG+ZKVHV
	1RlO3aWsPq6ZEeBIERzFk=; b=amDcCKiWTcDGoDh1j753c/Odbaojd6qIdRUfUx
	Ida29KHeoV5PNPd1YK3K8TjE0vEiEN/LFyRb39Y3ACMyxpKmmHN6YeVT/RB0lnJo
	xD1d44gfZeHRHQhu/Ss2jFzN7Jmn+Y8OBEOGtplLvHPbyAMW3+ScyRRZD31zY4B6
	bfjDq0a6S6aWVHXaYqK9BZlxZfXCWBihzuEcb40UOlZhwARx9mjgkW0y4OVHgY1J
	a6dWLh8l+fWlYuF9p9I6A2plVtUWZHVGIEMyC+sU82Dx6a8LpoNm4oCdsaG2bCVx
	LUT5wkwaXToSSLRhhP5br8q0PcezJ3yyFbhRUoBnXdj4cOvA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf0jr2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:20:55 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-27eca7298d9so6481515ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:20:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756055; x=1759360855;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RjRBZCuI5DbmcoTG+ZKVHV1RlO3aWsPq6ZEeBIERzFk=;
        b=ZlIY4+73Nr+B3nIqYs0bMSt7oPVFi+0bPx89ohxtVjLcjdDbf56RLgyTQckRY80eDO
         XG1pw8uQjcypTXFAYv0PVwda/OMKidMFtPKa/daC9Jm2ZKNIdIcCC3XGxwVUau7yuM3l
         L6OLNvPbfgkFD8L0b6ahwnRZ/kaa1bD+qDrrMG8jvMVBXxYTXvaXTLQokPq62IfGtSr1
         OmnzTBExwfkvUgl726iajxD/F3fXOybPqqW0LpFBY4KkOa153LTmTF5WLbDwIlx/7VEO
         vQDqQBGK6e12j3wBk1kMn51mqGyFiU5WXt2R+XsBeh9Qd9/RRkK7WVf/M63qg4orQlvg
         ZFfg==
X-Forwarded-Encrypted: i=1; AJvYcCUlQ1pdPwvYo7ROrdBTdhjU/2kCebDN0KlLHQOtENKEcxOk3RYmuE18X07q0juPJgY+1lJlx3UD9kqc@vger.kernel.org
X-Gm-Message-State: AOJu0Yzyi6IwEt9C+0xfOBpmCmoU9GmUnV8euSeEyS0A0tAtxQwXAt8y
	U3mhPC43q5HRv4rK2xD9K2odiTZZFY57ZoUHkNReXgMSVtCu3tnNwemPu7sLG/MLfeGSnmDrqEB
	iWVUX9Udwj/0zooS6uZ1pZzflmciwXOwjooYTYfDuAgFZn0Ugi00TPLLmBT7SHtpeCR/vu2rgfr
	o=
X-Gm-Gg: ASbGncsob9+1wB/uAV7DHbjdo45eMTbWAcBxlY/Akmc+zDPT7TDIGPUSo2kNDEkRrEK
	pM6wn17Nv3j7wwX6DL7x11z83IJqHriOGsFulQurZEDe8NijNACTLkSQeHGJ8HT+rVzLAxh8ISf
	o4zQ9Bk1YtRis0uR1kE0lwZ5cxrF0PJ9Mlfe8Oafh11m62yxXPQBxKSLchRGCByXn7Ms53JFw0i
	Ydy1vopZ2yvqiw9CtYm1/jkxbZJdDVmxPfXsgLQwFFnegmwYBCHTbBQI6lwi17TpFUShP6iCHeF
	TKXacIGrAY16SBYaEgshjc1CgXEFuWTPfND7OSPHFNc9tgS4njrhYGgP3JzAcgOfYttPSAO0PJF
	9gLZPhav4+N5kZCc=
X-Received: by 2002:a17:903:1a85:b0:273:31fb:a86d with SMTP id d9443c01a7336-27ed4a4929amr15431355ad.48.1758756054931;
        Wed, 24 Sep 2025 16:20:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGeM0hbdUN67OpHo4zaljw+tsYzuUtNU90hvs10zQXPj5sC9Lv5GGlOakF9Lou98EdqTsjUqQ==
X-Received: by 2002:a17:903:1a85:b0:273:31fb:a86d with SMTP id d9443c01a7336-27ed4a4929amr15431115ad.48.1758756054541;
        Wed, 24 Sep 2025 16:20:54 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed69ab0aesm3894295ad.113.2025.09.24.16.20.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:20:54 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:20:51 -0700
Subject: [PATCH] dt-bindings: qcom,pdc: document Kaanapali Power Domain
 Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-pdc-v1-1-1aec7ecd2027@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIANJ81GgC/x3M0QrCMAyF4VcZuTbQZQysryJeZG3mglhLImMw9
 u7WXX7wn7ODi6k43LodTFZ1/ZSG/tJBWrg8BTU3AwUaQyTCV6lYc8IhR44hxSvNPbS6msy6nU/
 3R/PELjgZl7T892/2rxgcxw/QcXkScgAAAA==
To: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756053; l=970;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=JQS+dRPb44MuhTEHQV3reczj3jSZa2Vg5ixi+Cc9Gd8=;
 b=9uDL8T2mcER+RlLW37ghYixBiR6KWWl6mrX+pI+XYphSuRT9NL8XLGMy8VmHlZ5nj4Nx9aTqC
 GNuuKW1qPGoBUz/yy77Bu4YcC+knNOPS91W5ukLeRYO8o8erH+qokCl
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: 7Q_hwlUY_-mPfbDxS2uHZ6RzS3ZRO6FD
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d47cd7 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=p7asoEvZpU7-M9pbgqQA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfXz8yU9rAl5a8t
 NI/DONxtqScI+mSboFb2ph01vsYjkCiITtkFCTMAmCYIf9w8khOxcQ1iOfjP6ejQw+/3BFMjJgb
 XkBjjIOpF9tr2rMBvhrVu6VgHZsWHnkm5B3F1VrUVPq6D3xTFwwTyoyFKFfx0Zbu+hnfjGDWIhT
 V3f6XuMatLDrr282QjMJZw51owlf32L4lnXMtw7YIV5jsPRG4JwOwCO992cPXmElRzeqxLqWBwd
 3rHmHqsH4AD3KMOjQZHUuMvNVHjHE02ka3I4VJQ+DxyaD7HPEnqN1h03lo+wo4eZiXz14eZAS/g
 km3jn0Z7XWI4KDakoZflfxHaYSefyURtokSMWejnXJdafmOj7cAN9ep2EZbPUNXl59PY/nmMmap
 NKVV4Oka
X-Proofpoint-ORIG-GUID: 7Q_hwlUY_-mPfbDxS2uHZ6RzS3ZRO6FD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

Add a compatible for the Power Domain Controller on Kaanapali platforms.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
index f06b40f88778..535699de96e8 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
@@ -26,6 +26,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,kaanapali-pdc
           - qcom,qcs615-pdc
           - qcom,qcs8300-pdc
           - qcom,qdu1000-pdc

---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250922-knp-pdc-3d9a90c982f1

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


