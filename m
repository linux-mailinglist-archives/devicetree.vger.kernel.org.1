Return-Path: <devicetree+bounces-210220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E81B3ADB8
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 00:48:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D8CA3A6A84
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 22:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 639F02BF3E2;
	Thu, 28 Aug 2025 22:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o0Y2KGyf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB04B26B75B
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 22:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756421305; cv=none; b=qyDmJlLLB2iZSMVNj05HxBiGi3XAx1w49F0r90WpLpDS7MclUvNhK9zVBoRrCZmkHpSEBFDd7i1rnIX5XVJUaapgLN3N2H5VDvsTzMca2O8qSk0KdhQO2jeuIxa/Ajls7R3l5ILqQgUAWXfSLSByxUwCSxLSq0qlIQ4PlvQA8RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756421305; c=relaxed/simple;
	bh=Mg8cF8dtHa8FBVVXmu7mhjOEv6I2lafX52Q7aTfQdic=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TidbA+2iysDIhLU87W3mgoAZgub9+Z+Kz9GtIYRpS+yXvV1YN15cOrukztXtCrtuRBwnDaatiE1iYZDJau9PWU/EPrhybtElE69ca2XUmvYFl163IuU5m6jM+z9JtBizFMnH4qulcnMDkA02fUNwlGPy8AWoT9MEPVJv0OYPrR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o0Y2KGyf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57SLWbxg013489
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 22:48:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7m1HwxzI8G7RL+o2tt5C5+jDIvVaSDVT2O8wP58iCTY=; b=o0Y2KGyfjiibXHyi
	UHvBhhr9jxTNElF9xkvZ4X+sHdGNSPl0hXxnKjesSzv093yBTrlM/BIrCNUTmwl/
	2OzZWaosrENu6C8wGf4F03qbY86yymv7jRH9QLb0+m5NX+ch7HpYFAqy415vKehl
	cQS8Dr2sy1du+MjRZDAPiqaoNi+Osq1kKksLyJyVyCEfT8qlhVPkzPC0JRcKGNeT
	FxmB13pRZP9dzagUQ7uksPuWUyF92hoBw84aGGmho1zI/wjhJlXwjLzxwcQHzW7l
	996WyGS6cYfkqCTwaBCh4BtWwRx39En9qkkRdycahWALxUpORj2MIzJGGam4CcnG
	hkMlSA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5y5ssq7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 22:48:22 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b29a0b8a6aso35156201cf.0
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 15:48:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756421301; x=1757026101;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7m1HwxzI8G7RL+o2tt5C5+jDIvVaSDVT2O8wP58iCTY=;
        b=KMru2p3f95j5HdBIp4dQIhZ49mSLqoVfp4SSYRxy0X2TomZsbIRO9JzerJ53AGwW5a
         WGuyVlp7xFEHc70ZFToXUPr3khFp9ab7EN6hIt2RR+GdS3xF9V55EbLEIFydHQ1P2+Qa
         +9kEjo7864MY6cHMj+9edxWTS9uuGcQQ/9cg/qCyltuvVksU7GK/Ez7br6Alt3HTpyBg
         k9a7T7MTx35NLAS6xhyZC+EmUb69EmUpNfk0tJV7mFAQIcfcDeAAf+ttmwdM/T8hednU
         bcHNoETQv/qMmBqmbZH6nVs/85pK+icCZoqHqghAk/EXyKStyMwVTwWBfJJOioIqbDfL
         iLyw==
X-Forwarded-Encrypted: i=1; AJvYcCVw7Wdy44Faw+OvfKMKcF9yFVS15VKy/EQFHm+pAHB68zLoUiWeHVO+oHteAWmrLqgrhNTJsdZ8///E@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/QDT2HAyLs8Er7Lx1yQJmhT22IbG8dItwJYDVZIBv0n0Q5tEq
	KUpLzh75nEInnYqd8aGZljrgV3kwsT/fevv/KU3EMUfCBFsgK3F3AYPkbEGKa/6TyCL35TRjJID
	NNR0cTPI+q/kZ4ZzJFYOaASxnScINLcBg/WrmaZZt/Rvv0pCtoUetApgXXJ7y/ZoQMjJm3QuW
X-Gm-Gg: ASbGncsGGubbms1I0puUisGA1GIVk/Wtrp7WE6qwEapDWaamOW8kVFJ58IPANeEiJoo
	6Ma3AiyEVezz0sStM55pfrBBSu3kZytjNa/J3sMHHZLNyam4UCY12iTjTXX955maTd2HeQb2UzO
	HDRIHEJ8RkE8KjQBQl7ZLiz+v14Me+GOUJ0YQt4dv9pTjWoOZ0IZDQYgUFlxwhKzqbF+4krFUXY
	CR+V5PjKT+FDAsMIV82ETUoi/NFAMDX/cMIg79CTDd5aIsLwJqT/iYbT6BDERBF1bUwpQxdXddx
	Ah0DfZmmn0Y3BCjAZ0+m0T62TFf9LcYUsmxjw5waAgGMgXjXc3+Qysjo7QAW2ygb7oq1zCZnSOB
	2NO2boujy8VY/taWmFlLk/yYyDK+GxqS+Er6l1eLBQe8P3egMDJqt
X-Received: by 2002:ac8:5810:0:b0:4b2:d35a:70d8 with SMTP id d75a77b69052e-4b2d35a7edemr182346841cf.37.1756421301206;
        Thu, 28 Aug 2025 15:48:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdoOUw7ATcWGp0Ua6IH6jvR/mrsJOnfEZJvEPJmeKyRsASOxjwEQ/HWMxbA6oMEFqxqL5e/g==
X-Received: by 2002:ac8:5810:0:b0:4b2:d35a:70d8 with SMTP id d75a77b69052e-4b2d35a7edemr182346591cf.37.1756421300738;
        Thu, 28 Aug 2025 15:48:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f678452e1sm143807e87.85.2025.08.28.15.48.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 15:48:19 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 29 Aug 2025 01:48:14 +0300
Subject: [PATCH v7 1/9] dt-bindings: display/msm: dp-controller: allow eDP
 for SA8775P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250829-dp_mst_bindings-v7-1-2b268a43917b@oss.qualcomm.com>
References: <20250829-dp_mst_bindings-v7-0-2b268a43917b@oss.qualcomm.com>
In-Reply-To: <20250829-dp_mst_bindings-v7-0-2b268a43917b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1543;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Mg8cF8dtHa8FBVVXmu7mhjOEv6I2lafX52Q7aTfQdic=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBosNywCsqu73xOaKt7zEWE4x0GdbQNxrAI+KeSj
 JntiOFcogGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaLDcsAAKCRCLPIo+Aiko
 1cijB/9xZIf4Hhs5tcWo1x0n2SHDJulufkTbQaT32JWduvU4+NIjiogvLNlUCHiNRzYkmbnfiw9
 wdOKNlPthTIz7NqebuGtuOAUCOtSqjrChZvp6oVoM2lIczNKhyvqUmeJl4ZiMq7NXVbHGkVz0DZ
 z+iu3EW4P4hCn+/34/nU1sKcU8C+0jQCuuYZqjaFBnJ9KF1xF19aemPYflg1xWMUeZmePYtqA8O
 gAMb1VCsHmSsKvwA2jZ9fUj/+Zoda1bLuf05yCL3bre75RmncJWAmc2/sOiL+aBRCw4LekT7Dhv
 uCf8aVotEO6WN+Wd1hp2/+nKronI5uZElKvuVDGFCfcCPgP9
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX+E3MrkOEEqTi
 vJezcmhYCGBqTMnlIeihQ/dVbYmFyPuPcOYu1sUR4oIkQ3/dSc84rDM2vmDxYI1kcQ1Lme9j59n
 Z41PBZaGTLd3ySwQNt8DtpMfa8Ex7B7hGKfqQ8W6M0JGLhWBWWCAkyDdElsRO1zz7rjor+Fi1Nc
 M+Cq0kHF0SoPp8llkK9TFU3llg+OYuxYSAH9zjrCNnUbY6oXSt9EeZv7bvEl8Z5I0GDjc7Cam9j
 1IXKDVOAv5IMeDeHtrg+TRsFYKaND9MOIboN4OrhVbmiQ1T0lS2vs65V+BiXj4lQFhLjxqqQU/D
 IqQVA4ZQ2bjfzMGj+yXQ3RWli+xklYU4wLcTn8XHkLYTrn2jihnV2kZnvKXfLFr77pN/dRbjneU
 eqS0+4ce
X-Authority-Analysis: v=2.4 cv=Lco86ifi c=1 sm=1 tr=0 ts=68b0dcb6 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=iBDq5nSyD7x731avtJAA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: sHdFbB-0TqAjMWs60xLy4JE4GmMyWvqD
X-Proofpoint-ORIG-GUID: sHdFbB-0TqAjMWs60xLy4JE4GmMyWvqD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033

On Qualcomm SA8775P the DP controller might be driving either a
DisplayPort or a eDP sink (depending on the PHY that is tied to the
controller). Reflect that in the schema.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../bindings/display/msm/dp-controller.yaml        | 25 ++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 9923b065323bbab99de5079b674a0317f3074373..aed3bafa67e3c24d2a876acd29660378b367603a 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -174,12 +174,25 @@ allOf:
       properties:
         "#sound-dai-cells": false
     else:
-      properties:
-        aux-bus: false
-        reg:
-          minItems: 5
-      required:
-        - "#sound-dai-cells"
+      if:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,sa8775p-dp
+      then:
+        oneOf:
+          - required:
+              - aux-bus
+          - required:
+              - "#sound-dai-cells"
+      else:
+        properties:
+          aux-bus: false
+          reg:
+            minItems: 5
+        required:
+          - "#sound-dai-cells"
 
 additionalProperties: false
 

-- 
2.47.2


