Return-Path: <devicetree+bounces-241269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 6312AC7BC9F
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 22:52:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9D8EA361225
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 21:52:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86CF02DE6FF;
	Fri, 21 Nov 2025 21:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E0oOZYqu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HgZO5NnG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE72C2C0273
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763761970; cv=none; b=kjukULa6zu5887rEzNFOv3n9qRDR0NDburw3Gu0Q5T7Pi59ZBVdYlFiKa6Dq6daB1GmsbPiIrNqNE+LAr+Q1upmC3kvjioa5mrMezsQSFFw+SGZlNEhWbEYEgjCKNl1J+S0Hgit2OsCncWf0LH7DNgdZahxlz4sVpfXwxFQf1Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763761970; c=relaxed/simple;
	bh=q1YoWf3ORQcN4tOPmLohOft5QpHgD41Hzvz1QG0Fgqc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kwlARwrLoaLQRjOtqeIAGhlKdLvUSCGCNQaRfIOKUwiA5Nnu72md1umyDjgL6t9P13TxRJvdEo/46IcJLJECP0ava9pLx/OBcE1YX5b2R0uRAxlTY4AezkGTK2SimzecEd7jNJ/Np1rbX2KNa2FwhbzfRFrvGywiBxkwxhDhawY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E0oOZYqu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HgZO5NnG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ALHICT43541448
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:52:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=mWK+CI4HwupZHnn55PN39T
	AW5BHeMV/LpUHSqvy4YvQ=; b=E0oOZYquK8VEh4uMIPFS+ad/6ck8+y7U2oiwtl
	yRv+KqQH60PiIL2tIoj9zo/z32VxQzfdReM8VMPgS+ptCxqZkoQnChsl5e4r5EG+
	9VUt0+6VZ5ZWMdUCtuTDBnJKi3gkfwk55GpBBT3Eu9Mk9V04/jLJxf/I2WRxYCCf
	BUGJeoZIB4ywJ17cN14TyqdeKdMZTrNQIG/bXbM15xbGYv1xCdIiuxrIAxxSKnNO
	LNfUeMmLOr+kt2okD5P4AHbs3VPyuQB1HSS4XwWyvBL69ux14KCWrocWQ6ENztCX
	l72y0TeNeKyqM1vVUGvZwm7OL8tv5uEGo6Lg8WSh8/x8v8oQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajng025mx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:52:47 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7ba9c366057so7623034b3a.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:52:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763761967; x=1764366767; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mWK+CI4HwupZHnn55PN39TAW5BHeMV/LpUHSqvy4YvQ=;
        b=HgZO5NnGeckK81yIEJtN9SAxeuyQGlN+kSeMRknkOKcX5D4LDjXFQjFc7kbMkDlCSn
         4nrMbiXh+rP537MO0Pu6XVy0mJfovWxWZFAiF/L3Y1uXjTzvRL+kiJFGiWHWM84ERDaP
         RcOsSGh1mNY0xzdy8egPk+hoHbsSrsreHYcJoAS6uppQ0nrIkk6X0wav9Y+rB6iqpIRX
         V6aPQhiYcfcQ0uesn0LG7SZ1C2KejIZx61hQ6TMG5AdA8mDTIGSjwWpBL+UIkL8GY59d
         tEKAJ7XNmIaSphYX/VdvWOB1vL7ny1W5cVGIKczFhphSr+stj+uN8Sco++Ng607FnT60
         OD9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763761967; x=1764366767;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mWK+CI4HwupZHnn55PN39TAW5BHeMV/LpUHSqvy4YvQ=;
        b=NrBGeqw2oLstRqNZ8yU1rCEzsnVoLnCpPDCzEkiLHfd3pNO4i/PQJO8Rz8uNRyLSLy
         c23JkToAtYPRjHg0elaJTVwcSJfPbpu0cXXnwtCX0BE5N8KgrKjmhW9BBWW94GZzij6U
         hLfZ/I2TboWGH56/pn/LBpWBu5E3cpgW0yfLUfjD7r0ICaPO9gHrYPLt3CaFRwq/Rbns
         nM8d6MAMIkqe63EeeWitHWPLgEr829tNa3hGoewOAUsgxM4K9cR32ph5ngZILjhYna/Y
         XgTOBWPIoMD7Dzww4U7U8sbuLzhW+OYNrRY0lBNiRGMgtaL8kvcaIg7BMK7P6JWLKxBY
         Ca0w==
X-Forwarded-Encrypted: i=1; AJvYcCUdb1RtSVBvf2UkrSkKVBQiwq6m9PFxP6sez77oWuLrXPxdCRhpqIelQv5REUTZ/t7jgbfoWOdvydTR@vger.kernel.org
X-Gm-Message-State: AOJu0YwffuS5QIUEdfKRW1unBcpxvjBQS2uLSVlZd52EisHV6vwaPYOc
	afkQntMmzqMeNuyAY7Cks7SI/CwxRDkgVtpCE1ymdnDVST5ix8LqGUAQRwtAgc/aBJcjBTixDDC
	4hsxY5Q3U6++WnfgP6pEgoeIlGW5FBAdykADY3bIZIJJoQFNDWCwnRxJ7/jSJWKCq
X-Gm-Gg: ASbGncvk8Myd5l2nyvDjZXy24mGdmYXM152DcMBxP91SpwoyZSiqsgeNKBuIDChSvbV
	S85u8VX/kKXvwe9P2tmmW/vsqnLmIcscX6SboCqvRfswDjBaNdNwG2W8EeP8UIlsQjrCxr3q1e1
	qxKh1g9RTFoEbuAI2WDQJhxMHCrFLaxiZz4sajhn+N1HR+A32pcNK/f3fiRawEOZDU+epo29iSr
	Jwr4L/wrCfvIYY4JRQaX9fSgWJIbGqNhyg8p+wP4QHyDR09jqbo594oO/oG7YBUN5IQZaUHOk8z
	Z8lYgJAkFKlDaSu7o+6m+fAO5igcmWod7z06QQYGAr9omlhVZfCPIhQzIEsLCDz9e5YwaJKEDoH
	yuFZ7mmGPlM57bP9XQaZ9K7XTduWbVoO6lw==
X-Received: by 2002:a05:6a20:728b:b0:358:dc7d:a2be with SMTP id adf61e73a8af0-3614ebab4admr5105574637.17.1763761966658;
        Fri, 21 Nov 2025 13:52:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGnHfCt4k+6CJ+tOfjv4eYF/1fpI7D/vvqO3cnpPwlQLdA69tw6iZHE3iQ4JVF6Q6vP0IkLRg==
X-Received: by 2002:a05:6a20:728b:b0:358:dc7d:a2be with SMTP id adf61e73a8af0-3614ebab4admr5105544637.17.1763761966177;
        Fri, 21 Nov 2025 13:52:46 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bd75def6314sm6399270a12.7.2025.11.21.13.52.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 13:52:45 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Subject: [PATCH v3 0/6] Support for Adreno 612 GPU - Respin
Date: Sat, 22 Nov 2025 03:22:14 +0530
Message-Id: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAA7fIGkC/23OTQqDMBAF4KtI1o0kqf+r3qN0kehYA9VoRsUi3
 r0xFgptNxNe4H0zK0GwGpAUwUoszBq16Vw4nwJSNrK7A9WVy0QwEXPGYzqUmLgHe91RQaGKYsU
 qUHmeEdfpLdR68d71dmQLw+TY8fgkSiLQ0rStHougg2WknuaCk73QaByNffp7Zu4b79Xp1+qZU
 0aZkjKK6ozlLL4YxHCY5GPXQzc8OIsPwtkPIhwiRZWWUa3qBJI/yLZtL4ud2UQnAQAA
X-Change-ID: 20251015-qcs615-spin-2-ed45b0deb998
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Qingqing Zhou <quic_qqzhou@quicinc.com>,
        Jie Zhang <quic_jiezh@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763761959; l=3668;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=q1YoWf3ORQcN4tOPmLohOft5QpHgD41Hzvz1QG0Fgqc=;
 b=n7GJeHf+8hii2Tyoce/nTIdSA3kkKOm/VH7B/k6lEYSoWYKYh8aqeS2EWDWgLs5f+qvh7lPxJ
 obSQmr9izipCbpc6Q5wkU11+P8WrTEW6S3/oriQGLtnDgPCZG+NF+Nw
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: xNcCOP_qkBmCWqkSlv-lFmrCL2k0dX09
X-Authority-Analysis: v=2.4 cv=R+UO2NRX c=1 sm=1 tr=0 ts=6920df2f cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=vemyJuc05ARF21wryp8A:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: xNcCOP_qkBmCWqkSlv-lFmrCL2k0dX09
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDE2NyBTYWx0ZWRfX+KAaYtkwTLO8
 Z0K/1U2VBLwQ/V3Id4rxoB5Rg+LSJp19cNZcvHTX13F69NsQCxmEyiNCiNInmhh9wsjYPqIlIba
 HWuW5NmG6NsUEoilfA6TkMtVQ8DOVacO13mcWx7JP8gH6BHBobJTfa1GiKFClUvLEBsVGmJXLt+
 t1hDFMUfzRpQtgDdqNlwfxXKLKru7WR7ufbY4pFuAOICw2c3lGt2HJJxDN2sEY+vSMXXBZkTtAk
 UD2lKutVhEdpA1mjH2XHKar1zqEP24hjJ9RZ0Be+i50u1MlVv6qtXW85JKzEs9SmG0CFBFd/wTg
 nlPH3GnSzp89xKk4yrmG53AI6eyAy75FmSUuAkQs9t/yFhk96RvvReZRf01kUjeip0QAfow2OIN
 Ygg9kWbLg/FMS2GtyXXDQI9KtCkx/g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_06,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210167

This is a respin of an old series [1] that aimed to add support for
Adreno 612 GPU found in SM6150/QCS615 chipsets. In this version, we
have consolidated the previously separate series for DT and driver
support, along with some significant rework.

Regarding A612 GPU, it falls under ADRENO_6XX_GEN1 family and is a cut
down version of A615 GPU. A612 has a new IP called Reduced Graphics
Management Unit or RGMU, a small state machine which helps to toggle
GX GDSC (connected to CX rail) to implement the IFPC feature. Unlike a
full-fledged GMU, the RGMU does not support features such as clock
control, resource voting via RPMh, HFI etc. Therefore, we require linux
clock driver support similar to gmu-wrapper implementations to control
gpu core clock and GX GDSC.

In this series, the description of RGMU hardware in devicetree is more
complete than in previous version. However, the RGMU core is not
initialized from the driver as there is currently no need for it. We do
perform a dummy load of RGMU firmware (now available in linux-firmware)
to ensure that enabling RGMU core in the future won't break backward
compatibility for users.

Due to significant changes compared to the old series, all R-b tags have
been dropped. Please review with fresh eyes.

Last 3 patches are for Bjorn and the rest are for Rob Clark for pick up.

[1] Driver: https://lore.kernel.org/lkml/20241213-a612-gpu-support-v3-1-0e9b25570a69@quicinc.com/
    Devicetree: https://lore.kernel.org/lkml/fu4rayftf3i4arf6l6bzqyzsctomglhpiniljkeuj74ftvzlpo@vklca2giwjlw/

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
Changes in v3:
- Rebased on top of next-20251121 tag
- Drop a612 driver support patch as it got picked up
- Rename rgmu.yaml -> qcom,adreno-rgmu.yaml (Krzysztof)
- Remove reg-names property for rgmu node (Krzysztof)
- Use 'gmu' instead of 'rgmu' as node name (Krzysztof)
- Describe cx_mem and cx_dgc register ranges (Krzysztof)
- A new patch to retrieve gmu core reg resource by id
- Link to v2: https://lore.kernel.org/r/20251107-qcs615-spin-2-v2-0-a2d7c4fbf6e6@oss.qualcomm.com

Changes in v2:
- Rebased on next-20251105
- Fix hwcg configuration (Dan)
- Reuse a few gmu-wrapper routines (Konrad)
- Split out rgmu dt schema (Krzysztof/Dmitry)
- Fixes for GPU dt binding doc (Krzysztof)
- Removed VDD_CX from rgmu dt node. Will post a separate series to
address the gpucc changes (Konrad)
- Fix the reg range size for adreno smmu node and reorder the properties (Konrad)
- Link to v1: https://lore.kernel.org/r/20251017-qcs615-spin-2-v1-0-0baa44f80905@oss.qualcomm.com

---
Akhil P Oommen (2):
      drm/msm/a6xx: Retrieve gmu core range by index
      dt-bindings: display/msm: gpu: Document A612 GPU

Jie Zhang (3):
      dt-bindings: display/msm/rgmu: Document A612 RGMU
      arm64: dts: qcom: sm6150: Add gpu and rgmu nodes
      arm64: dts: qcom: qcs615-ride: Enable Adreno 612 GPU

Qingqing Zhou (1):
      arm64: dts: qcom: sm6150: add the GPU SMMU node

 .../devicetree/bindings/display/msm/gpu.yaml       |  24 +++-
 .../bindings/display/msm/qcom,adreno-rgmu.yaml     | 126 ++++++++++++++++++
 MAINTAINERS                                        |   1 +
 arch/arm64/boot/dts/qcom/qcs615-ride.dts           |   8 ++
 arch/arm64/boot/dts/qcom/talos.dtsi                | 141 +++++++++++++++++++++
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c              |  14 +-
 6 files changed, 304 insertions(+), 10 deletions(-)
---
base-commit: e93f8002e4d244f0642224635f457bc8b135c98b
change-id: 20251015-qcs615-spin-2-ed45b0deb998

Best regards,
-- 
Akhil P Oommen <akhilpo@oss.qualcomm.com>


