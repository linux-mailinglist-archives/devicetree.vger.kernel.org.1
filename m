Return-Path: <devicetree+bounces-205207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E643AB284E1
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 19:24:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15BCE1CE1938
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 17:24:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B5E22D8382;
	Fri, 15 Aug 2025 17:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NFttS+lY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A211DAC95
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 17:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755278667; cv=none; b=bhhxrGFPUFG9LuHD1gEbTnyNL1DDJkBatjJLi4UBPSDyxBVMrILDCJadBpHMwBOMTtGyvKriN77wShPBYdzB7Dl+prf+2zsCi7r8P5bqRvuIM6wmug38oxVqiFxV1RuXQliZDkJi/SFkFFNXeSrbxFF6RcgHAIHs7ZMCa8vvJQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755278667; c=relaxed/simple;
	bh=/LB1x4MuYCAm4u9ZYS/2Z2F9Vv22NA/IaCMMGFomePc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=T1gJTViIZsfwWu6LJmgEuyp1JLSBzKqm3957Z2fiedUoXFsOJkZxZ1jRM4sC1nexxxH6BVZXsemRar5yTo+ayN7cUagFW1AaoF250tJhJxaBrv5wBX7hqceVAR33BsRDUFBMzcZJrL6fAG/o6923jDWpRsOqKW3xBuFda+rsTPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NFttS+lY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FEKDnT024029
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 17:24:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=3x6BuZcuYvtL28nrF1fEIU06Y2Cx3qSZPx1
	q+SLHa/I=; b=NFttS+lYGJ4HkhxFyLnAE9QA7jZYFyR7yQpMmE5ox3E+eJyMzkc
	JGm9yyHNHpzQKBFALNPvNrMKDGJEkc4Ho1rrHsd7P8VOTv+3ph5meiUHmK8pUuZc
	y9rrfGskjdJIp8bPEsvV43cs2nIpKvF/uulAm95Gjfy2/iNoaY/3+sho3UtLtFaC
	BLUAVvLe6G0MCT5p/804a6UOVKNq2witAroElcVUg/JfwXJt3XjhaJmzpidqEUVR
	QBmS6Jlgl5AmcVNUHAf1nwKnFcLSDkTpLxb3ieZpF+Bw4cgl1RIGegvISJRuDBhQ
	hMOBkvQBDFlr3P4+NXr/Eo+KOCrX7CPyxDw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g5hmknkv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 17:24:24 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2445806dc88so48022185ad.1
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 10:24:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755278663; x=1755883463;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3x6BuZcuYvtL28nrF1fEIU06Y2Cx3qSZPx1q+SLHa/I=;
        b=mMZ0sQmAS45Dz7QDKLGEqXNOYQmsnpOOxDjkR0nlWQk4okZW1rJ4YoQEor3S62K86a
         PASMz9cLMS/aSqozx1EZqKgAUp9lP8z2kj4awvS3gQClaay65GeaDzl3zVK0rLinwMDS
         UGHE+h3wSkECZm3Souo6dWg705OEnpDNzc/ISkyPANk6idaDi7TlnLmHdGyTMieqoS2V
         2T9UCk4Ng31NOSghLSK3S6vQDdiO+LnJIANPDCF/Hf7Kj66k9MjY81Sy91XiiIgEIiOK
         0F1D5US31QoAi9OWYnLPRuU9+0GhonZiAEICebq23pdiCgvqp2+RPJVlpDIcbg1XrCjs
         15CA==
X-Forwarded-Encrypted: i=1; AJvYcCVtQPQma7mvlHCPEZTvqC0Y2Vfl7+jXsO9SBv9fpOvO2vd6GhJ2d2q6R3mvgdbZxAwF8RiVDqSgzqAr@vger.kernel.org
X-Gm-Message-State: AOJu0YxHJiHXR3ZYT/vQBjxkkc5qMNdqHMtL0uRd/ITEd69tcc8k9iQt
	4FO5CS3GDAbMF2/j3Aufay8gwj7vFvidvKnrE/Ckf7w9yg13k9z5D7NOg7ZqeR5JdIeHF4SbRW0
	057+Dpg9hMpgAWUVQu7xab/oP23ohc8YULwyCEPaO1vUcCnjle2xHbwylCPk/vgs+
X-Gm-Gg: ASbGncsb3fTOi2LQu/EPID2ZqWh0N7g57DRbV+3lOKevaPTabaOdokpCBiz4oG/YOBk
	8KhV9kTgCiRAdYKQCHikm2DgTULHlDGzl1tlwNu8/kSb3v6K/4VyVNzkwECZk2hrotFlmZoHnYF
	/8VOBoTtxxKHGN6UR1URPw4XIl4+dHSu8h3cc/vUyNLPu+gwS4TkscoIUYcXLeGxTJrDHxY/NAX
	JWXe4MWoUIpE1EZzLgK7+WLuvKOXdKG9HeUpiT/1Zuye1dk8gP2Tz1uRrLb0EJrUx2Zu+U5GRyy
	gtBLfBFlQcCDXTt0S4Vm/1A+vsc2zXhbKuTK9EDZP+BDpsds1HT93hzru4MlCmNGN4QQirn6qAU
	j
X-Received: by 2002:a17:902:d485:b0:242:c66f:9f75 with SMTP id d9443c01a7336-2446d9827b2mr40064945ad.55.1755278663119;
        Fri, 15 Aug 2025 10:24:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5M8anx90Lfv7XqfVtWP0jnq8FQcm1RoCJc/Do3JlKqE7ilXwZ5DRXQ5mWQJWHelWdjx8PWA==
X-Received: by 2002:a17:902:d485:b0:242:c66f:9f75 with SMTP id d9443c01a7336-2446d9827b2mr40064585ad.55.1755278662684;
        Fri, 15 Aug 2025 10:24:22 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446cadff5asm18404025ad.42.2025.08.15.10.24.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 10:24:22 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, kernel@oss.qualcomm.com
Subject: [PATCH v5 0/2] Handle shared reset GPIO for WSA883x speakers
Date: Fri, 15 Aug 2025 22:53:51 +0530
Message-Id: <20250815172353.2430981-1-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDExOSBTYWx0ZWRfX+ozeckB/cQlj
 R9YyKaKikieHEzswYmcUC02D8DdehPSVjjgdFc1NFmPESzMBVEuYo+VQo14t6nzCk4FPu5pUiwY
 HKSkhOaouZFsdtfsWoWjRiPh45NfChWHMRsOVRwwxJHdNqCc/v40Z7S/wya7IptSpSOJ54mcPQX
 jsrYNvp1BQhd3wmnsGffAcbAxjFKMlIKbMmxKO9DMehf/0tv3c5LDZTsxwQ2Rwuct3WjOb1OGBC
 IubOaqDJEws5zdKGfqvKqLQZYW5hQlzPC5ieusuFOLuxsZHRMx+it2wOEoN8hlZPfx6Mn/U4vxn
 Br9aUQ5hZNSys8HhzSaVM+Jkh6EDJPdpXfXXwlxioe/bDL2YRJKxyqm4AOP+Zn+V/L+Ui4jjtgT
 x6c5URr+
X-Proofpoint-GUID: uizD4W2f4TmCu2CA6vO0eMX7BTWQyius
X-Proofpoint-ORIG-GUID: uizD4W2f4TmCu2CA6vO0eMX7BTWQyius
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=689f6d48 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=fihhyCgpykPbXYUG4mgA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_06,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 phishscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120119

On some Qualcomm platforms such as QCS6490-RB3Gen2, the multiple
WSA8830/WSA8835 speakers share a common reset (shutdown) GPIO.
To handle such cases, use the reset controller framework along with the
"reset-gpio" driver.

Tested on:
	- QCS6490-RB3Gen2

changes in [v5]:
	- Removed multiple error logs and used proper shared reset API.
	- Link to V4: https://lore.kernel.org/linux-sound/20250806181818.2817356-1-mohammad.rafi.shaik@oss.qualcomm.com/

changes in [v4]:
	- Dropped v3-0002 patch, which is not required.
	  Fixed with proper error handling for failure cases.
	- Link to V3: https://lore.kernel.org/linux-arm-msm/20250727083117.2415725-1-mohammad.rafi.shaik@oss.qualcomm.com/

changes in [v3]:
	- Created separate patch for devm action to safely disable
	  regulator.
	- cleanup the v2-0002 patch.
	- Link to V2: https://lore.kernel.org/linux-sound/20250718104628.3732645-1-mohammad.rafi.shaik@oss.qualcomm.com/

changes in [v2]:
	- Addressed the review comments from Krzysztof, Dmitry, Philipp.
	- Used devm_reset_control_get_optional_shared_deasserted() api.
	- created deasserts/asserts functions to handle reset gpios.
	- Register devm action to safely disable the regulator on device removal.
	- Link to V1: https://lore.kernel.org/linux-sound/20250620103012.360794-1-mohammad.rafi.shaik@oss.qualcomm.com/	

Mohammad Rafi Shaik (2):
  ASoC: dt-bindings: qcom,wsa8830: Add reset-gpios for shared line
  ASoC: codecs: wsa883x: Handle shared reset GPIO for WSA883x speakers

 .../bindings/sound/qcom,wsa883x.yaml          | 11 +++-
 sound/soc/codecs/wsa883x.c                    | 57 ++++++++++++++++---
 2 files changed, 59 insertions(+), 9 deletions(-)


base-commit: 1357b2649c026b51353c84ddd32bc963e8999603
-- 
2.34.1


