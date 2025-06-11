Return-Path: <devicetree+bounces-184791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E25BAD5382
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 13:16:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A064616C4AD
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 11:16:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EE97235069;
	Wed, 11 Jun 2025 11:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HxXrh9Do"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87C912E611C
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 11:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749640559; cv=none; b=E3Wa2cBzfiVMa67JUN5XR14/fiHdnWX6v6v5aqSWbyEdIBfAPS5JLMl4Qst5Ag9tWjBTvJ3bm4J/Y6CA+po4g4VQKO2KpXoiLUnCZ5bz6wxzUg+eZEgm2NAK0GW1neevzINoOQBJ4S4Q+R8YgVuQtCpiUzuNhTNfTRVQEPBHe1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749640559; c=relaxed/simple;
	bh=tir53TSjkw3/xfxcfRmGyJDlmk+DY/g391WffwmPdjI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NSS4rvtt77e8YgcMO9a5ue5EsIg0TpgcVW7enaqlgCgGIGFzU310O6wfU9tMMsLq1sl27lGcQmZ3oBk+SOGLoV6vVuYXYihQHjs+zqcHT2AmEHa4AtZ7WhwI4053kCsUK7FtS3VVLZPY1nAaLVgXIlHyprSWEtp7Y4ZnEGcX/Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HxXrh9Do; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55B9DEr0002500
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 11:15:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=6bcwvX4gEpvYIjcBEapn8g
	GSYzu5mivrPS7uygKQxHA=; b=HxXrh9DoaapoHyvbZTEERKhkYjwPTYRb1wFUpV
	Qw0ee7jPdhV5kF5iykjlS+oAAwRVI1bAZ1TZxmCmrYXsx4lA+s8QkzcgU1MIoltC
	v5PXVqgWDGVxOpeEQsvSrU2FE9rU17ilM47eC1pDZzv4YAIlAmZncOP0fXCL6v7w
	iPCHYaTaf7vu7jTnVG8PCU5roiw7EzUAS7CA5Eo/9ObNOKCwrm3MGg4KUf4dvhjg
	4JFlmA5x0tOAlQhUni8ctyHXANZTuMIDsxvyBsGMD/5VJ3KEiF/YTqKUC/rCasu6
	htulFI8VimDqlmGpe3jE1iBjbXC3+ZYWJ/17g0xN9dfjhHyA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474dgxvyep-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 11:15:56 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b2eb60594e8so3882749a12.1
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 04:15:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749640555; x=1750245355;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6bcwvX4gEpvYIjcBEapn8gGSYzu5mivrPS7uygKQxHA=;
        b=EbOEr756SwlQgIYulTu6Dglr3XtLyO5fYOlYQdk0XVLVX6Wh0yC0g8CAcAlXcEKW+H
         yfFAZsyj7kJyUC8VJnfpcPJE54Rqu7v+sUjCEYqcM+swpSauHqhxxXEd4JxelJac1srY
         vby2/H82dbrixiBLDFvdX1Ydu0y3+ZFXt7M+MuEUw4dib3fT9cKe2KARuna4oolYL0Sf
         +S3UL1sZVchHgJxH8SIRVA5n5EJmiw/IpEYZ63jy5FcjZ7OFTyCXV9518LBuZ5lW87Xx
         xPKtJ8v354V5SVdxKUii6Zt+sFa3TyF22ZPapV8LlEepOqHNqmLvhpc54QGs+/1bDWHZ
         U3Gw==
X-Forwarded-Encrypted: i=1; AJvYcCXoRkR3jiMqMFYOtQmmVL2FD15DEoVGKIt0z2OdVTLE6MzuafugzAxruZt9k/pNJGWtl1gIXCRR6WRS@vger.kernel.org
X-Gm-Message-State: AOJu0Yyd8x0Be4KM7/m4LOvSGuLb3b6MHsMo2NfFq0OwNV2WoRyspElS
	8WMBEiu9eXEbwpwFTCdCxX0p1kkKWCANrg1jhI2RYWKa9JEZn+Z8QhT7Fu5JuAypvABVl6LpUFh
	7yly34zNLmVtsXCXRog1KWojhXbJ0G2sHXsbOhpcp2uyA6qWsliPb9wUXjnbfjPKZ
X-Gm-Gg: ASbGncvYS7T5UyZatbJ6bbRkC1RtQddDSXjhLI4nG9hCJ3BfbWp+/2I/3I9253ho/u/
	ZsIaXZPts0d1+OAtX7PdbVx5jbX8ZBoryTyv/3Y8bLrZnqJm/nk56dtV0kdCaUf6NL2aljh87GV
	DTEtTUI82w+zF0jpCPaQxFk1CCSobVS925FDOjAGQvUzVRvi9lzKvetDXe+Lszk6lrHyLCBlGQR
	XXjFCVlOqjT5us1z2VgwH0xuxOTu0igxrjyXiuAWkoo0PTtV+1xchlAqkfxMSD941Nd8qMZ5uJJ
	gqoRLDRc1zzvuSKLJcdBzM+VfdMKtdHK
X-Received: by 2002:a05:6a20:1443:b0:21f:4ecc:11a9 with SMTP id adf61e73a8af0-21f8674384bmr5182089637.32.1749640555108;
        Wed, 11 Jun 2025 04:15:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHCzs/EwozS2+jM3nfZzo8sHxEcKNC8JH6C8JAdHxa5QTI2A6Hb8d3Gp3f9wRZbV5iIW6Heew==
X-Received: by 2002:a05:6a20:1443:b0:21f:4ecc:11a9 with SMTP id adf61e73a8af0-21f8674384bmr5182020637.32.1749640554632;
        Wed, 11 Jun 2025 04:15:54 -0700 (PDT)
Received: from [10.213.111.143] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7482b0e9d57sm8820772b3a.160.2025.06.11.04.15.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 04:15:54 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Subject: [PATCH v2 0/4] Support for Adreno X1-45 GPU
Date: Wed, 11 Jun 2025 16:45:30 +0530
Message-Id: <20250611-x1p-adreno-v2-0-5074907bebbd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFJlSWgC/02OMQ6DMAxFr4I8NygJlFKm3qNiMMSUSIVAEhAV4
 u4NlKGLpWfrP/8VHFlNDopoBUuzdtr0AeQlgrrF/kVMq8AgubzyjCdsEQNDZak3TIq7QtmotMY
 UQmCw1OjlkD3LH1sap+D0vyVU6IjVpuu0L6KeFs9ObwZ7oNXOG/s5ysziSJz32//fWTDOMCfMe
 ZNUIq8exrl4nPC9q+MwoNy27Qs9+9qt3AAAAA==
X-Change-ID: 20250603-x1p-adreno-219da2fd4ca4
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749640547; l=1468;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=tir53TSjkw3/xfxcfRmGyJDlmk+DY/g391WffwmPdjI=;
 b=boSdoAmoFVFkKeAEz/t/ojFWCig1NztCZfwP8qlXEYtkZ0rhoNdUnxkTTjyrf8ntYT+9A+S68
 e8DQZ/kjg/kCF4HThVdDLAPhzajXNLrZGgxYS+L45XpzVh0R/cEUiN9
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: LxQxZ5H9ciTx1ttDPMD48waGPQbT0ejI
X-Authority-Analysis: v=2.4 cv=HMbDFptv c=1 sm=1 tr=0 ts=6849656c cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=vb8sKYNj6oKrwasmUUsA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: LxQxZ5H9ciTx1ttDPMD48waGPQbT0ejI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDA5NiBTYWx0ZWRfXx66Vu01q9D3T
 wW78D2aLbfnlxxOxolM2VwXDVYLSrQHqVmM+97gMzq5NvJqJPGMJ3iRxpGQxQB714VGxt3oP5jW
 bEiNbPDblqRGe9fNM1hVVlaq5wAgxJcdepVmMYia4aj8Jx8TzNcd5pnseLMT2in9pHfJ+O5xiCm
 Hn0x8I3kE7lJkIVS3hnGimUXvwggpedi80O1TRGAqJwGLJBwOIZqPJGouBFADNjai0j4amuvJ62
 +/Fjk6XdshYb4qZlvfTUBmNpOHixHR2XmEBC9na9nvf77H7WZaRrgd/QTMD9QybCGlI/qW7uuaM
 Ww0/d6zpmb3XirgbTfHqDyoVc9njUzpBZFNgR+Vfkc1UVd3AkZr93Udm/37DpqFkTmFJQpeonNv
 uUT2uYu8h6xo6GBw90/Ohtm2sNUgpgt6UlDMu1lH5yCxA0yS9K0m6T2xzc3a4J0GtJ9E3Dhe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_04,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=890 priorityscore=1501 impostorscore=0
 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 adultscore=0 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506110096

Add support for X1-45 GPU found in X1P41200 chipset (8 cpu core
version). X1-45 is a smaller version of X1-85 with lower core count and
smaller memories. From UMD perspective, this is similar to "FD735"
present in Mesa.

Tested Glmark & Vkmark on Debian Gnome desktop.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
Changes in v2:
- Skip 'delete-property' wherever it is unnecessary (Dmitry)
- Reorder dt nodes alphabetically (Konrad)
- A new patch#1 to fix the dtbs_check error
- Link to v1: https://lore.kernel.org/r/20250607-x1p-adreno-v1-0-a8ea80f3b18b@oss.qualcomm.com

---
Akhil P Oommen (4):
      dt-bindings: opp: adreno: Update regex of OPP entry
      arm64: defconfig: Enable X1P42100_GPUCC driver
      drm/msm/adreno: Add Adreno X1-45 support
      arm64: dts: qcom: Add GPU support to X1P42100 SoC

 .../bindings/opp/opp-v2-qcom-adreno.yaml           |   2 +-
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             |   7 ++
 arch/arm64/boot/dts/qcom/x1p42100-crd.dts          |   4 +
 arch/arm64/boot/dts/qcom/x1p42100.dtsi             | 120 ++++++++++++++++++++-
 arch/arm64/configs/defconfig                       |   1 +
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c          |  38 +++++++
 6 files changed, 169 insertions(+), 3 deletions(-)
---
base-commit: b3bded85d838336326ce78e394e7818445e11f20
change-id: 20250603-x1p-adreno-219da2fd4ca4

Best regards,
-- 
Akhil P Oommen <akhilpo@oss.qualcomm.com>


