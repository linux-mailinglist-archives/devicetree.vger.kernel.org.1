Return-Path: <devicetree+bounces-241903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A5ECBC842D2
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 10:16:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E1AA734DD71
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 09:16:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE48E248F78;
	Tue, 25 Nov 2025 09:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l0J3iZqs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VCeXhwH7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1863C846F
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764062201; cv=none; b=HJdzjWCu3C9vzeMTgy2EyFVhbMnYaRI0QXbxSvLq88nCKLqnTWSaKIHCTtTGs9pagzp8RPSRQoyRYdsXTByruuPLB86V9ZY3gtulAXfniVn6F813UQFxNnktdMcPiRFU8osfoMa66RpIel+d5qv1k5N8RRYoRfHGv1eDoG4suKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764062201; c=relaxed/simple;
	bh=lpKqk+txzrx+3eFBp9iWcFlFALJWT0f3evvH5dpVAoU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=U5ijHYSA2ljB7v0EkftqPOtpwOrpdXHYovFuB52uqR+aIAGLgoOBaYyXoaIs+E0fobW1aeS1Kd+3nJSPdTFy3vPWotqf6dJXgPTHH+hGfyJGV9C8VJ2L540fJwlwoB2OG2BjbwzN9SZlAdgQ8u7Cg7qyiav47kmK0NW8XkLFXwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l0J3iZqs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VCeXhwH7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AP2gvVK1940187
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:16:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=4n8WnEgH+BqhO0fDi2/HU0
	87EN2nbA+rpdxtzrTFbjY=; b=l0J3iZqs1ggxG5L2VCVRsT4jXwsoqzfuszMXui
	+dY7hXC+ByvlUIa+UB+bP+wVpd4zniCSLh10NI5WwafSIm017+zJkHHz0pNbV+BW
	R4rK1WeydKwD693e5LVmkqzWdAkZtXlb0HHUJpOQziJizMJ+4r3eO1/WlYE9XSre
	TeaJoux4Kv73hGmz4N3fmovdGZlZYMBRgZEGc8JfnBqhVO5/YqhbnNoMJizB8U8q
	7ZE0iNCP6Z4tnOPUSbjZAnZI7pVElmHvqayhsauGbau5MOQodVefp3xC9W4h76Uq
	2P0MyvnBuxZqfKnPEGjTmBMCySY8lsG5avPeoMmAHCOpJenw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amsst2t0n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:16:38 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7aa148105a2so4848634b3a.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 01:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764062197; x=1764666997; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4n8WnEgH+BqhO0fDi2/HU087EN2nbA+rpdxtzrTFbjY=;
        b=VCeXhwH7uCAx5SxJ1BrIjs9qeA4k8nZS8VGEQjsITAjzHhsu9cbZZdhi/etxzCcAK7
         sK96Sv8VE3WGQPZ80/xFSKL8aqSHpNoCQVJZSbinhYb/A2wLUtplCYYupWD5oU7DNm8m
         MY5fkKI+Blfm1iLZFkgGa7ZOULcj0uowIMpAdOlyg7Fga5nbC3mc59u81EqOrqfetsH+
         4BduEP6pqNQFWhCTcQBDApMT9l1QK5wkyQfCaqqIpfzBkd5sz261ptcyzEfKo9dERgcY
         Y+HX8sTQBtjgJ8G0wU7LS/UWzWR3fi9mxjs+j82/SAlVKhyJ+Fi5oxvVu6uttofffDps
         0Zvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764062197; x=1764666997;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4n8WnEgH+BqhO0fDi2/HU087EN2nbA+rpdxtzrTFbjY=;
        b=KSJLvvfS2RqUDeAy6Mz3u71fYpAzFa85Dfl4LJV8kzNqA5LmXpb0/9SONTDq0WQAUP
         qKRDjXmOQDTrjaXakPF451FnDVFra04+ThuPVbygZGNcq22EJQC1IFUj5Q57m13ePLdh
         LGB9y2VAVpFPIj9ry0ZaxxwrzeUp58Yx0skL4XLZCymeJAMvucsGgm84qmFWz0Tvqeyh
         AYw/Phi4MVDrRAP49FC1VCVmbjyTnO/m+fcKPMYWMG+OCo684l/J9AHrkozxUL0R1ntD
         QseEzz7qHO0xiAeT7y0u8RFQoEJth8rpriCpOth1ftLvqRyQlIWgLae3TXr82tU7GFIb
         OaWw==
X-Forwarded-Encrypted: i=1; AJvYcCVDrB5EW74TNv1TY+2kObU7g9FPx411BvID+Xf61Kk3oiN96uQiJkj5NCk+I5DI7V1jfjm9yCKNYs9A@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0q/BKd0YWIBW6vULH80GEgTnfkC4y9dJ9lgrIy36Xti6yQ7JQ
	g5AMd8SC87iQxtzwsYENWENL7cQrfAEtIqE7zI1EyDflLg1VmqGdFhfwwQP7S83+BVJ8AOnmoK1
	zq0tlr+ZanBrfYkSI4E3GBFZiABTGaIAVjZnsPB3j8uZz2E53wWlvDgxkL/A0M7fzkg4Bm47g
X-Gm-Gg: ASbGncvhdUo5Bebp+E4uJNBYUU2hlD5feoTXzwDsnuzlhhAVACSFZ0X/P9g80S/0gzN
	CBQHpor1Wq24IUOaDWf+uA5N7wePyC+FqjQON/JCII46akTqI6xsloQ0Jd01T1NggUJz/yyk73P
	nzYDdF6Hhu11CAIk+uH96e6IDUTtaHHElKXB2RDDsfAWJdNKxjE1NERFGmKiNj1BxQ9i9yR1rHR
	MWbceAZo1nyEef4y3tGCSmRO/tHCj7fbQRyykCrLh1at/wGLsb/RQDUnVlTCWZnDF6W/bESl4Zc
	lpuVG1NEU2e6XV1jRIsIPwxx25ZuHGJKc+yupSKlBuiZC8jEnS9tO4crAXIVZpDacy57d9/mKuA
	wiapQFk/c1T2sX8lgpHzgznEqmySh3Oz5hs1UH7dOlCWDhORWxX5n1OjsoDC/A+kUcYSvmdd2oB
	ptC5LFRhp+Z9y1z7HKEISMNN2vgkXdDQ==
X-Received: by 2002:a05:6a20:9148:b0:334:9b5d:3876 with SMTP id adf61e73a8af0-3637daaf589mr2372757637.4.1764062196849;
        Tue, 25 Nov 2025 01:16:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHktHb35KAVI3HX6XVjNajJJ6Z+gYDQKmRreGn2F5GazLD3+ij1wi2Mz+4vrNkksCxAvH4G7w==
X-Received: by 2002:a05:6a20:9148:b0:334:9b5d:3876 with SMTP id adf61e73a8af0-3637daaf589mr2372715637.4.1764062196355;
        Tue, 25 Nov 2025 01:16:36 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3ecf7c29asm17288851b3a.9.2025.11.25.01.16.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 01:16:35 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Subject: [PATCH v2 0/3] soc: qcom: llcc: Add support for Glymur SoC
Date: Tue, 25 Nov 2025 14:46:21 +0530
Message-Id: <20251125-glymur_llcc_enablement-v2-0-75a10be51d74@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOVzJWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDI1NDAyNL3fScytzSovicnOTk+NS8xKSc1NzUvBJds0QLQ6NkA4s0k2RDJaD
 mgqLUtMwKsMHRsbW1AMBpcWhoAAAA
X-Change-ID: 20251029-glymur_llcc_enablement-6a812c08f4c1
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>,
        Jonathan Cameron <jonathan.cameron@huawei.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764062193; l=1505;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=lpKqk+txzrx+3eFBp9iWcFlFALJWT0f3evvH5dpVAoU=;
 b=88Vm43Gaxl1wBtQF+hf37aZK8bmzPR+C9iXW50ZB70xRi2keSjnPb0CJ9DUf6h6yedqE9UE2S
 9r5h1vQ6or/C95HuXcf/XsPBmhwESaPwc0KKZNweoNkybTOLzPer6i/
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Authority-Analysis: v=2.4 cv=bM0b4f+Z c=1 sm=1 tr=0 ts=692573f6 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=P8xJj-QnlYWevmRsA_UA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: mr6p7EvLAt9OgCpCfyxLZjFWCuhObD83
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDA3NSBTYWx0ZWRfXxMGIDdiw8ZXW
 pjxgdgLQMIhr1UfFUIHzYtCjb3pBwcL0lW3tD+w+u1mrXFV6nzh6XH6sADm2L3WuHTK4QlkaiBD
 QsJB+oIh2K85RbVVQ+jOb8CBCc4rABaxZgJMP1W6O+V9TMZOVqgPeUVIHxAqbjcCR6gHpwQa6BC
 78x6BR+v9MICEAZ2cwfTe4DY34zwclz+OEG2jHbIa2OHoUhb9jgAZF3Hy3AErr2wiUKDLtsii1c
 pG79OeJc9ZtEaIq4y9qTmh5l2T58aRvp2zLZU0Py76VlfNcy3pfZ7xLmxdugbLK1c4GZHYUomFZ
 fBkhWuefxmMPR1cnhbLjcnBCwY6JBV8sb4TbsoLz2Qp0u/0YZbpblfZ4uFAml6bAC/uMH68B2qR
 AEGrRb7LyK5PHR11Ht0IoLAkbcFq/A==
X-Proofpoint-ORIG-GUID: mr6p7EvLAt9OgCpCfyxLZjFWCuhObD83
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 phishscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511250075

Glymur SoC uses the Last Level Cache Controller (LLCC) as its
system cache controller, update the device-tree bindings to allow
maximum of 14 registers for llcc block since GLymur has 12 llcc base
register regions and an additional AND, OR broadcast base register.
Updated SCT configuration data in the LLCC driver.

Enabled additional use case IDs defined in
include/linux/soc/qcom/llcc-qcom.h:

OOBM_NS
OOBM_S
VIDSC_VSP1
PCIE_TCU

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
Changes in v2:
- Updated dt-bindings for maximum no of registers to be 14
- Re-ordered the fix alignment patch to before adding a new entry for Glymur
- Squashed commit for enablement of usecase id and driver changes
- Link to v1: https://lore.kernel.org/all/20251121-glymur_llcc_enablement-v1-0-336b851b8dcb@oss.qualcomm.com/

---
Pankaj Patil (3):
      dt-bindings: cache: qcom,llcc: Document Glymur LLCC block
      soc: qcom: llcc: Fix usecase id macro alignment
      soc: qcom: llcc-qcom: Add support for Glymur

 .../devicetree/bindings/cache/qcom,llcc.yaml       |  47 ++++-
 drivers/soc/qcom/llcc-qcom.c                       | 207 +++++++++++++++++++++
 include/linux/soc/qcom/llcc-qcom.h                 | 152 +++++++--------
 3 files changed, 330 insertions(+), 76 deletions(-)
---
base-commit: d724c6f85e80a23ed46b7ebc6e38b527c09d64f5
change-id: 20251029-glymur_llcc_enablement-6a812c08f4c1

Best regards,
-- 
Pankaj Patil <pankaj.patil@oss.qualcomm.com>


