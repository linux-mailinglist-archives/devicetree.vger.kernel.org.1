Return-Path: <devicetree+bounces-229593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C7446BFA23F
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 08:00:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F2CC1892C3D
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 06:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9B0F25A659;
	Wed, 22 Oct 2025 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RZhPjwr2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D9A17C21C
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761112834; cv=none; b=b16lRbpGzVn/bsNKGhC0akxYskzF+qaQgGmnCL+wlNsy+HThL9zIYZBFNu4Eh+RxAtTXLh4RrW+goWlTN91sg3aU2EDb1skLazfYEjdX8S5nVRuUafmw9UCS8A2OZBBX6m6vUpdZwsomCiysP9CY31UGE+s6fQ/vKueGkcL/3fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761112834; c=relaxed/simple;
	bh=yQXrAqjTG7BN0GCsnlOIGGeXITJFR61e1qODGkTt/HY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=gwLTSZJcLcg2A+Fplzc1jryWwF76V+wQbkKJGvKxzIvwD3Y6MWbavFr4m+gSphhCyStbcl6IGXOevUwQf227bM/d13qLMFTkQZDgwpyfY2hSOzxxyA3W/8UeTv2yfoezKn00BK2ecl3JSoqaBn07J9sY/q2gk+uxY+C6kYDtNe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RZhPjwr2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M2XxHu031065
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:00:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=KiHfETugvxtw4u23LQt/a1
	R2Um1zLYjRMwuZfIZP8GM=; b=RZhPjwr2AS5FcoPchY1w4vkn2lFjTmhT0U/9kZ
	Sxlyh+jo3DNgkCy18N45wVqFaUucT5iXD7q9T2nylY8A1qQk0+Vvj2o5kimLVm0Z
	tL6QcDOsnaxYu5AtmI4GoDMSPIF4JS6/L3+tiPlUZ2MYOTy+zseaRCK+fy0q+Pqz
	yKC/x/eFxZfmJV5Kl22tGouhn9/3A4M0IB2EM1Wo3Q0nD3IJhb+wXFWVi9EFKiK7
	jI7Q8oPvWk2+aMcZNmsAyxbgfwEKwUzIPTHCFKZ6i3wWKZxYy6PERu+1yL9bK0jy
	FuYXeDeZdqcy1PNSAvCK7cmI4Aq9N1hjvTMG6l2V01yVBRzw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v42kb8fc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:00:32 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2909daa65f2so7661315ad.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 23:00:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761112832; x=1761717632;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KiHfETugvxtw4u23LQt/a1R2Um1zLYjRMwuZfIZP8GM=;
        b=Mo1wW06XV1p03gMmW/IZRAosU/QpADKX7L3qMmJ4K7+JO0uS16f1EzUHoDgpBsvW8D
         nq//gvjD7WQnyM99+mXvRlc7jCFlHhAunGrGtop1PsDTYYYh+tj+BXgNUSW+9LdFMo9L
         BNWV1rXoCeglp3ChcbU1jBgil7xXze1qctOJuMdQzrUqDn/01AgRGQNjJQNu5J+kCy9g
         q8+edjwfMMn1IyeGx99eN1IlD+mcxEyu18t3p2qjspXH8fbmGPaprqZ/fkxbGVGtTZTV
         TW55Iz7A7BFk9WHlDung5qcLGFAZPuk2H039qwYGB4SG/xUtASrlb/qAwYzus0ZMCJCk
         TiEw==
X-Forwarded-Encrypted: i=1; AJvYcCVVn0wlnyeFSP+fpdBsmHth3++1iVd54pQLDp1kI70ymOpXtbSBlTFTp1tZm05wKt1lgh3M3ss0oqWU@vger.kernel.org
X-Gm-Message-State: AOJu0YwyFckEsGqpwqUGno2FZw6qM3SfB8Ha4Ge9m4aDNdBRvL6DG3pO
	xZj0Bmtmmc5zU/n+B41Me3SdQdqgSuNWGZEG7gaevWzQjD4WbCZ/Xq2vF841F8OOMzZ7cvk2o5H
	4QWQ9PDjMYtpK3MN0FDWa+3orjpHmf52JbsIb26MlQaaXd0CogfBddp/2mz6hrZ9n
X-Gm-Gg: ASbGncs+MYMCZPzt0m09wRVLnygDm1cV/2mfJeVcMiDmbtU8W1Q3tAaDPr/7F8AtJpY
	3W18JQk6iluYstCvQHxWa8JQiquSBP9zXZPDna+c2uJqt6ZcFrNjeeRQNFAE1QLlgK3MiPSTw9t
	XPAmh2uu2GkIZIRiaoEphrb1Hu6dutqctDHaYfEjs8liN3+uwDBabusOzPzepr/IZdgADWmL/GX
	SQu8Du/UhZJ6H26IYegSiXRrECKbtl3UKDkvQXfeUoF+iYrDOYYfjJDzQF4vObILVZp8LMvPKXn
	WGw+neg9tQQFWJDrOQMSZ1W/hkvBMWyQ8/91gLJng6cHsbHjufSkco2C7umtnIwdpOjEd+Ag/r0
	XpXuHgYr/YEisE9XG3OJFVRavQOdQegS18Evydplnr7jUdyFMtg==
X-Received: by 2002:a17:902:f60a:b0:292:ffa2:776f with SMTP id d9443c01a7336-2935e0b4f92mr3968175ad.14.1761112831489;
        Tue, 21 Oct 2025 23:00:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHGcNB9dXXCmTz01IciMyYl/TMG3cpDkUXuT+VDd0s9/0d0nie9Z1Rw8YNrEYSq2MqvMJ4MA==
X-Received: by 2002:a17:902:f60a:b0:292:ffa2:776f with SMTP id d9443c01a7336-2935e0b4f92mr3967575ad.14.1761112830815;
        Tue, 21 Oct 2025 23:00:30 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246fcc78asm128857445ad.32.2025.10.21.23.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 23:00:30 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 21 Oct 2025 23:00:26 -0700
Subject: [PATCH v2] dt-bindings: qcom,pdc: document Kaanapali Power Domain
 Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-knp-pdc-v2-1-a38767f5bb8e@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAPly+GgC/z2N0Q6CMAxFf4X02ZGtSgg++R+Gh7EVWZQNVyUaw
 r9beDBNmtz03NMFmHIghnOxQKY5cEhRAh4KcIONN1LBSwbUWBmNRt3jpCbv1LGpCI3W3lQ9CD1
 l6sNnN11byZ1lUl220Q1bX7q4YUPgV8rf/d9sNnhX6wZPf/VslIwlV5Pzcq0vibl8vu3DpXEsZ
 UG7rusPC8CqPrwAAAA=
To: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761112829; l=1114;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=yQXrAqjTG7BN0GCsnlOIGGeXITJFR61e1qODGkTt/HY=;
 b=oEn7Mzyvj04DD14Hb0ypY0Ca2zNr/t4mQzgu+lJDOMJQ5ki76NYBngbjpIw3UtnfNHRmMwEKQ
 0JGMLud1iaFDDd7MCU3zlczY3fJyon08Onj6QD5QQBrNnCeS9hQVhM6
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: 1R_3Dfqo2sujFyY3c0pGpbvVCURe9ZtO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMSBTYWx0ZWRfX3HbKDb7HbXwZ
 0cdqcuZZbARHnGOuJufZ3f79YMK5uB9qwQqdtDQzJswsXGr5yIpDm8BrwoKiSATGCYa4ZL67l73
 ICJmE/lWItxvb5SbBSxpc7G2IudJlnsw//+GIxoneAg7vrYXqtGXp+LV8tRi+usby5EGZYRD+oN
 nVWeE/TqkCKs3Sd+33FiJD0cMlsQOZiXT3PAoei5hPYGny9i47jKP9BSJnAwbU7akztURBMLuQq
 v12fwCVs5tG799OQ6ooyNAo4NZvBsJrJZBenzVLbs8xjzCgVBYRMQ7v9IyOdGffc+hc736cWq0r
 Vd2fqYiIR9NQMYPsrXa4ZwZclT0qVHdv9KsYmVDiu+kyq2k27zLE0SIG029jv/QfPvQTKcQLBTz
 u2fODvgN/tqzUiyHstmifgimp1QnvA==
X-Authority-Analysis: v=2.4 cv=QYNrf8bv c=1 sm=1 tr=0 ts=68f87300 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=D5gLrYdNfuu7_6MvFCsA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: 1R_3Dfqo2sujFyY3c0pGpbvVCURe9ZtO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180031

Add a compatible for the Power Domain Controller on Kaanapali platforms.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Changes in v2:
- rebase patch
- Link to v1: https://lore.kernel.org/r/20250924-knp-pdc-v1-1-1aec7ecd2027@oss.qualcomm.com
---
 Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
index 38d0c2d57dd6..b26246de3186 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
@@ -27,6 +27,7 @@ properties:
     items:
       - enum:
           - qcom,glymur-pdc
+          - qcom,kaanapali-pdc
           - qcom,qcs615-pdc
           - qcom,qcs8300-pdc
           - qcom,qdu1000-pdc

---
base-commit: aaa9c3550b60d6259d6ea8b1175ade8d1242444e
change-id: 20251021-knp-pdc-395e2100d15f

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


