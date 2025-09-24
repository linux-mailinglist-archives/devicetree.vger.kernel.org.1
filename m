Return-Path: <devicetree+bounces-220832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F99B9AEFC
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 18:58:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78E5F16B02E
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 16:58:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD72314A63;
	Wed, 24 Sep 2025 16:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cDoQF4iF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FC231282B
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758733084; cv=none; b=mbY3p3/o2PkEA2woLPuOWhg7Qf1MWCP1e3MSx1F7nP3PQNoBdj948m4sHcz20BzAKpqKH5vIDa9OkvXJpvLEg64SbrsPlYA3SKbdMhF0kwyhdBqniF9Z8Re0jKGP6MJR/0MyRPA/bcFpxKQOjmXai5kE1ysEFrgAZms3h6FB2Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758733084; c=relaxed/simple;
	bh=cfSBFwSjwoQmCQsFiqKfw8JSBHbIagNIApfS7uUEC/A=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Ddp7oc+zr5dzLVjJoXyq3jTCsz73p+xMBJJxiVBxWIhRlxiAmjsbO8rmNyfC7Y45jF/jBJUjuOPRNKUXJ7DYhiI06vvSbcMjLl4IcL0LJP7LQMJHHUtPYA6b6Dd+gW0k8NZS/WtozWEJwsJjKmKJJYfmAt7efzgUiyxaJU++GVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cDoQF4iF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODLLsm025133
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:58:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=eWtPgG+KOFtNwSmjhrecLj
	9/bPWZBlTGHCrdFRicffE=; b=cDoQF4iFZeID/Lz0bQdFvy2um1Gnfai1XwUJkd
	hWpZIGpXx/Ja37WpG/Nwa+aGZmamXIvylUDwDz3tGYtcSkdl/Gl/89ksFbRsvZv1
	MQw7TsFF8fed3UetknP4QIpCr9TVeWQ9BILZT/yIlApz5aheoFtjyFS1vbboB9Eq
	HbPjtyXy7v8pC0gUpVto2C2rYr12QwcNPWT5jDYbirGSOpKkhOpG74Z9gwVQVSwm
	6Mr/1TNSaUlfyruFgrfyfNYdHKXnoQnD3plr9STC4wSUtLU79SdA+o+VVtbWdJvm
	foZV/j/wbBFTkOS4NW0wgSBu3plpegZqR8CwYrGeNVkX1rLw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv1553w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:58:02 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-244582bc5e4so97705ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 09:58:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758733081; x=1759337881;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eWtPgG+KOFtNwSmjhrecLj9/bPWZBlTGHCrdFRicffE=;
        b=vOfTfTno+JnpI5Jyg5KykPRNb+G4xZdmA/p78/x3QnGgber52XKCfySPKszeyjx7rt
         jZ3ngW7+qGEC8aN1N/mhUI7FBBREFgFNAVEGqTLjYjyl1uPNzKiKMhjmesSbVamCDU+V
         OuS496/kgczRxKTvirOP/RjCZbFg6T/zK1Z2cwr4Gu3+zM5rWMT4sZMTydcl1qYi4Kzc
         UO0E+BXWRBBoC7q88ZRsiCfHvv1XGhUadRifHLcw8IfTYnP1t/lryU7zgiwJUnavUcPs
         DBbNTXmQaQEXMotgQyVLyQ92MjEQsnPj2OtfMoUiO42mXb1SYy6BoDXqxL75ndCZpD1I
         S6cw==
X-Forwarded-Encrypted: i=1; AJvYcCXkCT63RfQhs46//WmhqRgTiy6fF+aaNZMH0jBpXK9PSVc/Xq6Vi0t5MPl+w2KK7zH67lHk8e2ivE8O@vger.kernel.org
X-Gm-Message-State: AOJu0YyrQhdcaZUnJiMiy8hoH8RYb1YZzLGi8G30wucC2W+JOMFqiTB/
	/SWREuHqXAT8Xqh/Qst2tFgEtvzmDFwrZbaz1iGl6Pa2+ZKGgwM/Uzq7/pvLaXFFpn1bxvlR2MG
	DmsimrgvQAw7o34Tg4njQG7pyrRSq4bhv4ZXgMlwSv8zSZrDrAn9DYLhATYa1NbgZ/MyHDPSWCn
	s=
X-Gm-Gg: ASbGncsgUSDXT18I+Kcw9hcrNsm1Kdv3OOdqJHwv8p3P8Ys2Glp9j2BEUJ8L1xeU9by
	+ShGiBMxiD1MTSZNZEOzveSueddAY5fLNJSQ2IiRra1+ewTuypK8TZ6k/TkoTYN8sQXxY/LiMLv
	3vOWBPKp4OQKUTcOfJ44FLje3H5tbGZYO2fAwmx4WzkwSEBeGDPCn6eG3dCnPjW/Ap3o17DNAFl
	tzHVVq/aIShCDlm3B3WCh2/p/UgFOyzo6uYfYLBtS5cJL8w9tghD0t68YgEBupIrpPjiZAOshEj
	TE2elF8jZmULIY4czfxs5XcLbbo/BSGCT0xXgFCHZXfhy0ASpmxC8OCxhjMeNzp6K4cFi8DX2Ik
	CVCqXVqLUE23OP83t4e4sg5Wwrg==
X-Received: by 2002:a17:902:cecb:b0:269:8d85:2249 with SMTP id d9443c01a7336-27ed4a0b73fmr4109625ad.22.1758733080624;
        Wed, 24 Sep 2025 09:58:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWZp/jrEz0lysruVEq/JdMwVzqihX1dhXJ5tU7EkYr5wM0PX0RonyN+rLKNBO7q8AmofqUVg==
X-Received: by 2002:a17:902:cecb:b0:269:8d85:2249 with SMTP id d9443c01a7336-27ed4a0b73fmr4109275ad.22.1758733080164;
        Wed, 24 Sep 2025 09:58:00 -0700 (PDT)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26980053078sm197415895ad.10.2025.09.24.09.57.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 09:57:59 -0700 (PDT)
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Subject: [PATCH v2 0/2] spmi: spmi-pmic-arb: Add support for PMIC arbiter
 v8 for Glymur
Date: Wed, 24 Sep 2025 22:27:32 +0530
Message-Id: <20250924-glymur-spmi-v8-v2-0-202fc7a66a97@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPwi1GgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDI1MDSyMT3fScytzSIt3igtxM3TIL3TTDRFPzNBMLSwsjEyWgpoKi1LTMCrC
 B0bG1tQAWC7R6YAAAAA==
X-Change-ID: 20250924-glymur-spmi-v8-f1a57f489824
To: Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758733076; l=1410;
 i=kamal.wadhwa@oss.qualcomm.com; s=20241018; h=from:subject:message-id;
 bh=cfSBFwSjwoQmCQsFiqKfw8JSBHbIagNIApfS7uUEC/A=;
 b=lDwhFqEMR+CJTxvPgKeazeYLPyQAmXFBVgRkdtoanUmV1WyEYLVghRAWVXhsTffXq/EbTz0g+
 pa1dUSuv4TjAdj3QzKbAb8CRtcI5GTgxDd6MjEUetwiwU4aZzV/EgHK
X-Developer-Key: i=kamal.wadhwa@oss.qualcomm.com; a=ed25519;
 pk=XbPE6DM5/mJi2tsiYwMCJCZ4O5XPMqColJRlGVcM7Hs=
X-Proofpoint-GUID: t5HyOA607f08JQqxj4VZ4oLOchHQzCiS
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d4231a cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=xuEifUzSIGPJdBs7rF8A:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfXygVH8lfQCM9n
 lVi396Ww/uV5+a5TV8yCF7F1f0GynIDu8kYQu6bvivFSPedBiSoIktRvsL7sV4XdleaD2eqaLq0
 qCHfMZTpqtrip8Cs1RTgpYTZxoCPTCRWcdITXnImGAPi6pNMFnfCEzhdTg2XtwnbXVLh9B0T4RQ
 OaYuoalGYI1EeNOD2tqAbnF/2k+viIFr+PtgVxhMSQWFs6ToUQd+sg3TXPcDkNp86KIkPnt0xHR
 t5MrRehaGtnaQfY6nAiclu6M+sFKz0yG0iNb+zJT5aRe/IkL5eama8LUkiENKduE3QiQJCv6Vvq
 mT2h1Vtc8iLG99++EUx4rWqj/42rnmes0YHsOc9KzV1TOixZ+IgdV2NlFzYypx1yMVrqctqTL3J
 vzP+OdjM
X-Proofpoint-ORIG-GUID: t5HyOA607f08JQqxj4VZ4oLOchHQzCiS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_04,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

This patch series updates the SPMI dt-bindings and driver to add
support for PMIC arbiter v8, targeting Qualcomm's next-generation
compute SoC - Glymur.

SPMI PMIC Arbiter version 8 builds upon version 7 with support for
up to four SPMI buses.  To achieve this, the register map was
slightly rearranged.

Device tree changes are not included in this series and will be
posted separately following the official Glymur SoC announcement.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
---
Changes in v2:
- Split into two series: SPMI (this series) and PINCTRL.
- Included the DT bindings in this series, previously posted separately.
- Fixed kernel robot reported issue by including bitfields.h.
- Link to v1: https://lore.kernel.org/all/20250920-glymur-spmi-v8-gpio-driver-v1-0-23df93b7818a@oss.qualcomm.com/

---
David Collins (1):
      spmi: spmi-pmic-arb: add support for PMIC arbiter v8

Jishnu Prakash (1):
      dt-bindings: spmi: add bindings for glymur-spmi-pmic-arb (arbiter v8)

 .../bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml   | 158 ++++++++++
 drivers/spmi/spmi-pmic-arb.c                       | 328 +++++++++++++++++++--
 2 files changed, 456 insertions(+), 30 deletions(-)
---
base-commit: c3067c2c38316c3ef013636c93daa285ee6aaa2e
change-id: 20250924-glymur-spmi-v8-f1a57f489824

Best regards,
-- 
Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>


