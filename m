Return-Path: <devicetree+bounces-214562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E98B49A23
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 21:40:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 653351667A1
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 19:40:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72787DF6C;
	Mon,  8 Sep 2025 19:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZgJAKVmF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A168F2BE63D
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 19:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757360412; cv=none; b=AwndKpbs1yfCX8Ld77JXB3F7H0vGuvkdBcGJWzGQepKzX60bnrHRTA1sjXm+k0b2dZkXns5/FiZc0JkbZdHhDsYupjrYYL9eZukA9MxQ+puoYOF8vM9DAKqsoIsjKpRUy2AqNdBiE6E8yrxTQkLSEH/OfYZXNG7pofKl+HpFBEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757360412; c=relaxed/simple;
	bh=4UqvYbOo0ozDV/YFCMOiziYwPn3/KsWgI2LYvHpmupw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VxxxxiTkGtKmzvSSW59jMkZHSLP/weJBrvZD31Lts5mKFJlVx/9YW+LZTA++3Zxwgw8PYZb6sO/wBHQ6ChkONxDF6ABv8Xkb2gSi5aXZJvpXx2mZWA9gjSWA191VwpsoQMAsz6Uf3wiVAZ1qf7ZixvK+LMbu2/r+8ktMY6PJigY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZgJAKVmF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 588Hogxb008162
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 19:40:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=TXIW4CE8LYawHSDmEPYejS
	9mxlDCMmxE1HIHyddZJyA=; b=ZgJAKVmFyhb22rOwYthN4+S7xeNSiDeVJ9sYDc
	0Yrvqls01S+Ry3cm43SdQ8JkLdeMBQwZovkYZ0okReV6BSQ/NnOZEQvem+PbBJOk
	KzSEJMiC9ocF5GF5qBa7vbVC4zCffyqu8ras+w6Lo9ClBNvVW5pIpHDSjfIEQd6X
	zCTbLiNBNQvXS76P9rU0aN8vHBItltk0mvseZ0100PoXUwNf1Vk42sA/77KxHysu
	GNGT/3jIM999/fpRCAPnV+I51ugXnIjc7aCDQOnD3Nc+2AM3gkHfOektmy5/d4u/
	67MsvvaOnWn7sHV29Z+Ri6U9jpkdPtzgfcah1JOuMr4iuHFA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490cj0nrx7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 19:40:09 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-244581953b8so53690955ad.2
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 12:40:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757360407; x=1757965207;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TXIW4CE8LYawHSDmEPYejS9mxlDCMmxE1HIHyddZJyA=;
        b=PQ2s2+RUqZS29SKUgdH2/DC/yJke4BCj7aWlUy70vVytR27MkYaB6lgkhyhPpKH6WR
         hnNWPvCKGilo8PMVWW+At3dpcwDFK69FOHEKExgDxZAOTDdhTkqm+UqU8CFPoPqMWunX
         XayBdnOAX0+TXJSi7VXThE58992UA8y6WhGhJs4WYbf9EkhMVASYopbpmRYrzBeRQXlj
         zGRJvFe6KD7Rbl7Pqnd9e/hLH8fBurHguuX5pMCBsyD89aErA0BMV+7bktAkSD0cb049
         8Rk+KybXHTM3IDFwUNFoJP7t+BqFovtXmmL+xBBz3BvtfvBj8DsWgsiVsKg/u2ngPtei
         75nw==
X-Forwarded-Encrypted: i=1; AJvYcCUXAlL/CatQ0dB2ilEhL3Zl6uXfwccqc6EOO3yVrEbdT+bNlq6x0IZ2G0ym3L5REqrNqliKc/GCyRxy@vger.kernel.org
X-Gm-Message-State: AOJu0YwGb9iV7hkbnLPYWq+BMA6/+Lgvz98U5/bPtuVRJQAWzGh3hX8S
	PhmXjViJxeHn4FMOMAO1avNa/4aEnHgZTlkENkEaLPscgAqkuchdFz1e+VUYhf+3cLR9yk6bFh7
	66T574XqiHTkPuqXCsaPv8VBQPZbDXphSSBWy9OT61svIdKHzXTwXdZsQztwEEsse
X-Gm-Gg: ASbGncsVa6rMlwAmOVACgety0e4qfbjHjSQogfQuOcy4NF0Re5+/2lW1D7KGmxHWFhs
	TkkP4x7PitfkIK8LNBnVFHSnnQxx/fUG07gzLLs21xJMKmRBVnte8xV8Zz8X0esBvfnSwNjudE4
	Yo3EIABX1AS597yaMHMt562Z6Jc6bF9Qr1jieF95akoxc9sZLRQ7axVrku1naaGaQW60DVh3UWx
	OVH3t1itMzFKjxn+9uBtgNoI0WlM1+QnoEE6/p0lz7wgA79ROMPJ35ym5DCLZKOgCKImzCBsMdd
	1iYJ23RgKyRR00rLy1QvCry1sWWkwOB+yMUOHX+FmeX8luDJWY42UoABqVZKQyYP
X-Received: by 2002:a17:903:3d10:b0:258:2476:77c4 with SMTP id d9443c01a7336-2582476792emr35062595ad.49.1757360406962;
        Mon, 08 Sep 2025 12:40:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE3I62Y0ox2cbIu1BL+fkNIJFm5SwRP6C1uf8ev/c1vxlfovckwXEI7NkLSZwAzUfOtHCNDfQ==
X-Received: by 2002:a17:903:3d10:b0:258:2476:77c4 with SMTP id d9443c01a7336-2582476792emr35062145ad.49.1757360406497;
        Mon, 08 Sep 2025 12:40:06 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24ced7ea5e8sm104008475ad.104.2025.09.08.12.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 12:40:06 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Subject: [PATCH v5 0/6] DRM/MSM: Support for Adreno 663 GPU
Date: Tue, 09 Sep 2025 01:09:35 +0530
Message-Id: <20250909-a663-gpu-support-v5-0-761fa0a876bf@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPgwv2gC/23R22rEIBAG4FcJXtfgjMYcWMq+R+mFUbMrNIfVJ
 D0s++41CVsKyeWI8/3yeyfBemcDqZI78XZ2wfVdHLKXhOir6i6WOhNnggwFKyGnSkpOL8NEwzQ
 MvR9pDSLPdIGFZJLEtcHbxn2t5Nt7nK8ujL3/XhNmWE6fWLHHZqCMYtZYxRtupDDn2+S063Sq+
 5Ys3Ix/BDDEAwIjwQujeIFcyDLfE/wfwdkBwSNRmwZMqa1kCHtCPImMFYevEJEoc4OyrhGEsOc
 +hPQ2qY9ItJvz2NryNurBjVtlpFbB0uWSG6tklmns3GtYmm1tCGr9kSo5bdGMAzAAngoGJeYU6
 KcKrk079eP8LvI1Zj5+AXLB0wzzAQAA
X-Change-ID: 20240917-a663-gpu-support-b1475c828606
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757360399; l=4370;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=4UqvYbOo0ozDV/YFCMOiziYwPn3/KsWgI2LYvHpmupw=;
 b=6UupagRBc3X3EiNbsn33g8Z8cblahJQTDZ+nEM0bW6eyy5xmBiDLP9BRh9J7h26NjLOHYEZ7c
 tH021bkr5QtCtOtMfzQfny+WGvfqenhlESUO8KrufSntO9Pgcw5bhx7
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: p12M_16MiTlehAoa9nk4XRYNIuQBwcHJ
X-Proofpoint-GUID: p12M_16MiTlehAoa9nk4XRYNIuQBwcHJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyNCBTYWx0ZWRfX69EwEvU2EFbx
 qYW0GTUEq3f2HQycyCdXY33YeIM5zjoDyrHMhdvbBXYvEEqJ2whtZUnqyhG85LCbEMP6P1lTeCo
 A1C3xY625O/xUZmXCaVA50YPUG2zr4GXfXRcIT5lSbM1rPtqPE+E6SyZTusJBSRrNxYt5etP+Q/
 3pQv+u3Rst6w3jgo2CZT5J13DP0Ky9Vmejv0Z9LM/cINS4c/eRYql5hIXmhamRrosNqIpYYrk+n
 1KTnJm5CoTR4KIEqHU4FhGQWTabes3Wg12dXcK+ipPSFcVrZqgQv22bv/M465hk2Y9bVELQPT+c
 DmHUAcELiWpkUcwLF0raYbAUPueHdnGVPKkFFHQiUus7YN40rwu+cSjLFw5Xqn4XPkiQkOqMgql
 5QVfo04d
X-Authority-Analysis: v=2.4 cv=QeFmvtbv c=1 sm=1 tr=0 ts=68bf3119 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=pGLkceISAAAA:8 a=KKAkSRfTAAAA:8 a=tVI0ZWmoAAAA:8
 a=QyXUC8HyAAAA:8 a=e5mUnYsNAAAA:8 a=jTv6lf4Jh5MpNzVl0_IA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
 a=-BPWgnxRz2uhmvdm1NTO:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060024

This series adds support for Adreno 663 gpu found in SA8775P (Lemans)
chipsets. The closest gpu which is currently supported in drm-msm is A660.
Following are the major differences with that:
	1. gmu/zap firmwares
	2. Recommended to disable Level2 swizzling

Verified kmscube/weston/glmark2-es2. This series is rebased on top of
v6.17-rc1.

Due to the renaming of the Leman's devicetree files [1], this v4
revision had to wait for quite sometime.

Patch#1 is for Rob Clark, Patch#2 for Srinivas and the rest are for Bjorn to pick up.

[1] https://lore.kernel.org/all/20250803110113.401927-1-wasim.nazir@oss.qualcomm.com/

To: Rob Clark <robdclark@gmail.com>
To: Sean Paul <sean@poorly.run>
To: Konrad Dybcio <konradybcio@kernel.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marijn Suijten <marijn.suijten@somainline.org>
To: David Airlie <airlied@gmail.com>
To: Simona Vetter <simona@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
To: Connor Abbott <cwabbott0@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: freedreno@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
Cc: devicetree@vger.kernel.org

-Akhil

---
Changes in v5:
- Remove unnecessary labels in the gpu cooling patch (Konrad)
- Update the RPMH corner for 530 Mhz
- Wire up the gpu speedbin node to the gpu
- Link to v4: https://lore.kernel.org/r/20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com

Changes in v4:
- Rebased on top of another series which renames DT files
- Enabled GPU on IoT boards as per the latest definition
- Picked up SKU detection support
- Added GPU passive cooling support
- Link to v3: https://lore.kernel.org/r/20241030-a663-gpu-support-v3-0-bdf1d9ce6021@quicinc.com

Changes in v3:
- Rebased on the latest msm-next tip
- Added R-b tags from Dmitry
- Dropped patch #1 and #2 from v2 revision since they are already
picked up in msm-next
- Link to v2: https://lore.kernel.org/r/20241022-a663-gpu-support-v2-0-38da38234697@quicinc.com

Changes in v2:
- Fixed ubwc configuration (dimtry)
- Split out platform dt patch (dimtry)
- Fix formatting in the dt patch (dimtry)
- Updated Opp table to include all levels
- Updated bw IB votes to match downstream
- Rebased on top of msm-next tip
- Link to v1: https://lore.kernel.org/r/20240918-a663-gpu-support-v1-0-25fea3f3d64d@quicinc.com

---
Akhil P Oommen (4):
      drm/msm/adreno: Add speedbins for A663 GPU
      dt-bindings: nvmem: qfprom: Add sa8775p compatible
      arm64: dts: qcom: lemans-evk: Enable Adreno 663 GPU
      arm64: dts: qcom: qcs9100-ride: Enable Adreno 663 GPU

Gaurav Kohli (1):
      arm64: dts: qcom: lemans: Add GPU cooling

Puranam V G Tejaswi (1):
      arm64: dts: qcom: sa8775p: Add gpu and gmu nodes

 .../devicetree/bindings/nvmem/qcom,qfprom.yaml     |   1 +
 arch/arm64/boot/dts/qcom/lemans-evk.dts            |   8 +
 arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi   |   8 +
 arch/arm64/boot/dts/qcom/lemans.dtsi               | 174 ++++++++++++++++++++-
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c          |   5 +
 5 files changed, 190 insertions(+), 6 deletions(-)
---
base-commit: 062b3e4a1f880f104a8d4b90b767788786aa7b78
change-id: 20240917-a663-gpu-support-b1475c828606
prerequisite-message-id: <20250803110113.401927-1-wasim.nazir@oss.qualcomm.com>
prerequisite-patch-id: 765475c5f1418d986e661a213cfb33ee6ffb9548
prerequisite-patch-id: 03c6d1a5b0ae9095845828fc5cbb701b00f41131
prerequisite-patch-id: f7b8a288cf4ef309b4027f0b617b7435c17d6b1f
prerequisite-patch-id: aacfb31f99b75b2f5bf2f44bbd9abf8db0f66b1d
prerequisite-patch-id: dc442a0932abeb5139daa547a1b1f4282fa9a6fa
prerequisite-patch-id: e8a728d629b4bdd22bc1ef21f3d593e17a8d3b44
prerequisite-patch-id: 067fe8f5151b3fea9cbc37192e559a123abcdb71
prerequisite-patch-id: 62150f33bd304fc34b8fbb4aab953c6c4bb8a566

Best regards,
-- 
Akhil P Oommen <akhilpo@oss.qualcomm.com>


