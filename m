Return-Path: <devicetree+bounces-220937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC54B9C879
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:24:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 683F01BC3E98
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACA67296BB0;
	Wed, 24 Sep 2025 23:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EGj2TUpa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E868126C1E
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756270; cv=none; b=hfqrpRpHUxvdcxTFMpbS9UvKc0L2yqEiSxNhMTDiRLkfe9eIwUbmkFqfU4sxWVVG1/N3MwiX+7OZ/bXj9GOkKB+2CMKmaCCBuRXkQOdXyNU8hknEC4L8IRzMKDQNkl51+/oYEWVQOiiiBJIjg87xL1OnCeMI3Y+co5iRZojCHvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756270; c=relaxed/simple;
	bh=mTfVTgvSGDQYS4dMJifAjU/6hmANPLDQIL/o0pGn4sU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=TFKIo+xBZSzSdUYGjnObTAjilC/NvTdrobE654QU4zEVN7IpG/qWOH7lHdSdZGP58t4U9/weD+ZdWgswoF/bZQdTYIRnA2k3nhEeD3IBba9eeON/BUiByKsVHAwvtmi0Mqp4jjYFdMJtVWYx7u0Vo0OJb13GV+tc6Eutq3STxdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EGj2TUpa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCcTTY027779
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:24:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=KZNciS4xoZfftnPqYXRVX1
	EdzFS/TnwpUdZGiTkk/xo=; b=EGj2TUpaVGpZ5tAQWyrIQHlWmzqhr8hTR3EeAH
	3Odz2mmt+PPa0ETeRJHsSIy6R6Uvv6thRgcaGYChQv/1ueZi7AnAeqnWfc3T9PWh
	jO2A29JEQEgMl/etWTwNqvRh8HFEdAyS9HAWp4HxofVK8BX+qMwxXOkyYAsB1oOV
	qEeOoglBrbBjLlTjGDUny/jKYFo0TATGJO/ocML0dYcYfB8X51HGVPH/1BeeM9oV
	5rYxix3D+eIbaA0Wv2KqWwaNnq7N7vCryoXubzyuPsxKoDIhDxMoxa09AJkGT7RQ
	TQnnH+Sw2z2MvDp+49BPjJEc0aQ5FNy4kVDHIj2uQ1HQS8Rg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnxc84-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:24:28 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77ec1f25fedso573289b3a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:24:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756267; x=1759361067;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KZNciS4xoZfftnPqYXRVX1EdzFS/TnwpUdZGiTkk/xo=;
        b=qLzHrHc5MeQQDA+Pv+d4EDAq8fc43d4SDiwcj4UtErCgsAWMo+vfnJQ/HkSxnQEPUY
         ju7E+mAXmmlKd9JFCf5aCTq8VW5QE5WwIlZwOF2ctvnCJeyrosKkA9Olzuw44LlcvdLe
         5/2AMJv7BFt8oOO2LhiMh7D0SS9DnWRJ5SNEup0nptihVIIHMquM6mDFG3gfcCEngh7d
         AyICHH4AxFPtG3DdJ2x1QYUW+WtUrFkJ2rHVYiOrcUw1YKa64dI7SxlpcSem+i4lSkX6
         XxWxRd8aVkcL0zVFQGkjszMToy2ifejVWc1nY4edQNr4Ylv8LG+Z5YmnXhPX+2LvUAE4
         p+4A==
X-Forwarded-Encrypted: i=1; AJvYcCXt3fQfc5Pm5vBaZwatpticCsE8KLfCo4swzE8cOrziG+4Pg1L20QXmWTCIqSxf1bHCjqBKSSb7YpDT@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0ruIt/sZSi3d3EL4P1FwRHC/eXaB3lbCQbDrtfNYihT7or+MP
	ceiqEPjTisBUGuMDBC84VcJ7JUbOmdgOvpWO701gpsOa/ASMAiloSTqGftVy27m17cW3SBi6SLO
	+eqOJtjPYvo/stDgOty88E9wc4UWyW8QDcCA67diTzFScDUJmUf/VQcS8qmBJVph3
X-Gm-Gg: ASbGncsWD4Z5bjtNEfxKM9uE+MAyp3LGJh19SWILntH2ajOXvfuhp8GpCJQRzNCUN8m
	FFLIH0+hR2E/C2UqhdJOCwaGHjq+xuEaNTx596NyKs1KYTnUWEnMi6Jst9iutYTu8kro0Oabq7o
	8/NkMk1PgXekEmDWZ0CFTg8mLisvpbnX9uvmuDxFW9P3BQqZoX8e2NrpDsL2hWz8Q9qu2+m5yj4
	jbhRfay2pR4IdsU0T0QhBPANrIeBBScsRUZpsjFPadMd3FmQOxhy3G2csztTf61DnfvqGu/MLbZ
	2ghlolenLmLUWq2O6mfotW4fSqObkfk9Qqym0dR58EJrbEPx6a6mBp1LsRPY4sJhIurFThhflj+
	ZZFleg9RGAWNfC2w=
X-Received: by 2002:a05:6a00:4f89:b0:77e:cac4:446e with SMTP id d2e1a72fcca58-780fcf0c79bmr1746162b3a.31.1758756266794;
        Wed, 24 Sep 2025 16:24:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8pZDBqMmBGUYCq5JA6tZWwAcXM/OTJCyVhBNbzZ8u7884rMNBKHjRuMnFGdMkg5lXMtDJQQ==
X-Received: by 2002:a05:6a00:4f89:b0:77e:cac4:446e with SMTP id d2e1a72fcca58-780fcf0c79bmr1746129b3a.31.1758756266349;
        Wed, 24 Sep 2025 16:24:26 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238ca6dsm194173b3a.8.2025.09.24.16.24.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:24:26 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:24:22 -0700
Subject: [PATCH] dt-bindings: watchdog: Document Qualcomm Kaanapali
 watchdog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-watchdog-v1-1-fd8f3fa0ae7e@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAKV91GgC/x3MwQrCMAyA4VcZORtYi1Lmq4iHrEvWIHYjGSqMv
 bvV43f4/x2cTdnh2u1g/FLXpTaEUwe5UJ0ZdWqG2MdLP4SEj7rim7ZcpmXGQc5RSJLkkKAlq7H
 o57+73ZtHcsbRqObymzzJNzY4ji8O+rzIdwAAAA==
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756265; l=1025;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=mTfVTgvSGDQYS4dMJifAjU/6hmANPLDQIL/o0pGn4sU=;
 b=vh2YAAt0+hRveOEVepPOWT2IBEK3RQNJ2Hj16CUoLVIIbLSbTX1JqcSp1y8XZUqj4oKCif9+g
 jF3FskmXJ/2D0SgUkwxFnVNQ0Pooa28J/IXvvBuVuS6WIJ3ijbC9S2h
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d47dac cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=eTIQKQMR0C5kcNTfsesA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: KDiraqMG6s5BtJSNXa5_iBCIrdO2UQHV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX/onlaSiqTA4w
 yP7wobhhNYEsBfP2BDqBSUYS9wryT0463E0Nmrg7NIhW1VNhbh77clusBNQWxVBZT9EOQQUjR6J
 DUhiSSxCB5rc40GEI98VwG+l62Z/3YAqkLC2TuYhbH7LNps1fQMPXjFcSVsb0ITQGrZldgSZI3H
 WaTQlD2S79oMCuMUrC1CVycX8fhMldbmFzj1ltZ2l3tUr9KEglKDvbT5zmuiJBacuitxeGciNFV
 juPJJ2kzwNZqx7kw/A2p8rrQvJpI5PTOScSKOnbOAAfZByOlUrbKTH1YSmT/tlRi6cQ42Pe3m09
 Z/F1AFjUfrAUezwylD7bk+c01L2tm0dtOlUEOwRZGBP7jdsaH8vub7NkIrLBpw4O6TjBfoQfePT
 S9OkgD0g
X-Proofpoint-GUID: KDiraqMG6s5BtJSNXa5_iBCIrdO2UQHV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

Add devicetree binding for watchdog present on Qualcomm Kaanapali SoC.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
index 49e2b807db0b..54f5311ed016 100644
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -22,6 +22,7 @@ properties:
               - qcom,apss-wdt-ipq5332
               - qcom,apss-wdt-ipq5424
               - qcom,apss-wdt-ipq9574
+              - qcom,apss-wdt-kaanapali
               - qcom,apss-wdt-msm8226
               - qcom,apss-wdt-msm8974
               - qcom,apss-wdt-msm8994

---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250917-knp-watchdog-9f42faf7fc17

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


