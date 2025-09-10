Return-Path: <devicetree+bounces-215395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B9945B515BB
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 13:31:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AF1757BFE31
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:24:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAAB9311595;
	Wed, 10 Sep 2025 11:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="apieVwrZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB252D63F8
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757503569; cv=none; b=YoDy7KX9O2UwI1jlMx1MiYRf7M4v0NeXLKHbqky2kO96wWaR7uMnq8nS82YPd1ZTHipPTItrBKtDEe9YlrCXycnjvhjNDfUAhdiJhepVRzca74LjgkRMIKsoDPjiqCIENBDH0CflOPhUwFvngRGRm270XMve0HtEWbAHx+wsooY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757503569; c=relaxed/simple;
	bh=5yZF6bmqwbJzi/kgFmyA3BkJ0IqhI9QGlG1cdUqtMgc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VPaX1CmPJlsC9EtD4FecZQA7C19vcnSyKM2dMJw5QKakW4hc98H9ICtWTHE7Tcc4jwXa4M9CxINVBp8VISEOdA6G0+8U/PsAmm8Qe9QBXQPWTLAAt2ySgYbP7mcIrtODnSEx44Qgk+/3R09Decnulebq85mfPQlCR/aM757rlsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=apieVwrZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58AAF7bx031900
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=FHhzcXvmnJzlLpLtrDG2iU
	oRE1MaY8/8WafeWyBwNuE=; b=apieVwrZnDaUOpWKUW5PEVxN3kp/le/2rjWcsh
	yGLx2EDmuRvRStEN367zPcEDWalE7AgGsQryHYRYcd0/ihXpd5qDMM5Yb/w2L9v2
	ekpOuBWtKx+ngBYm69NRcxU787SzTc+jEsdTO5AFTsJLdeWm+ZFNprnJ/Q7ZNLX6
	+W19Ofnu/rEPtivb4fS+D2xjpLg0IK8obKRmeS/uM0efGug8mlDoLqEjIF4APXwP
	nC5d3bNJIsxoVlahSndo6xFxmq/8W+OE5Cm8HQXpNJZVuAe6Qx2fUcrDuUFOXF0t
	P5G5+g/Z/TOeEQwdUBaTECT/IjYkEF0uskxmXPpxX654Hsjw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490by93nny-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:06 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77278d3789cso14327813b3a.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 04:26:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757503564; x=1758108364;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FHhzcXvmnJzlLpLtrDG2iUoRE1MaY8/8WafeWyBwNuE=;
        b=AQpdyxCiUZVLMfWEZhOj18oJ6Jn1/WWoohGCFoidrolmOVZ9uzGx16BUJHtJLoRRWe
         jqMY2tz5ILolSTpuI/AAZF7t07YOsBqYSxrSEywsx7dkRm3kwjyVwkuuPgxdVexgdrWf
         0573C4DVuIeUqSSv+YJ70YElw7IIkzraJU4YebU1OP0Z1T1VCv7IgjHdHD6ExC1Ma1K7
         EaufuDh4Z7SPpXR/8bM0rtQqdjr8tIJMUb2AdHcJ6Z81YfqE+K+MTM+TpXVnmQg7jA04
         Zclzr8mN/y1qP/jivowlD5aCziJiw63xmtlH4fGpUB/o2Ialq67tzrYDrbQd4aJb6Wg7
         hP7g==
X-Forwarded-Encrypted: i=1; AJvYcCUlAv2lWfN4bDDELKMoRqJbmMm+h5CWaFuhUGiGvU57TZDihiSE0GUvyPZLbMOhJK44NBkrKhFYKZKq@vger.kernel.org
X-Gm-Message-State: AOJu0YxYZZtt9NwhW4LsqE5ugtX53tyi5Qk2LDmlx3wjn6UPsta3B5mb
	M1/Oo71qPem+YBG9L44P0XNr34wij6YdehRr6LHBABjvD8TAyu9KCJRlAY3NZWB/aGx02ev8YGX
	ldOa4pSC0Ds7viT0viehkCOsX+Rgxff16SZ8wBKtuK2AiHMQPJdFX6NJatGVbBL5q
X-Gm-Gg: ASbGncuMVnDU+r0I/6hcWsyJwOba3E7rVR+LOxsssxiE4UKuaHQXaiZMZyn1q2JUNSI
	TxEwXa+TTwnzrO9amIn2ZNa65sCylNdBtTlhgRRwLZdkNpvzCTJdlDsBRq0A2Wop8CzJLy2azkF
	yDIymRKWNe5h2snpB/1BMdXPy+v3ZAxUr4srxuXYTgp7HCPyNAVpt2FR0R77Ib5Vyi69MfW2Ldz
	QTLVWnfSfu79n6s2zHkZ5EKQd4qBc9gcNWeIPhYmAGW/8/BWlWF5tdM2jjXwh025hHwfZGhDrk4
	BZ2e5rlKdysPtPXDpQhxVjCpLTpSORjUfEVY7oA3YV+Ti/Z6CZiSjzE8P6behbRf
X-Received: by 2002:a05:6a20:a108:b0:24e:2cee:9589 with SMTP id adf61e73a8af0-2533e573184mr18642252637.9.1757503564288;
        Wed, 10 Sep 2025 04:26:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6WV6LQF7N+NPQIu+V/b5WKR8adK4HEz5XjZBgfNC0CaTeuZn/CfRi9iBd/M7owUtZ1xU2hw==
X-Received: by 2002:a05:6a20:a108:b0:24e:2cee:9589 with SMTP id adf61e73a8af0-2533e573184mr18642195637.9.1757503563701;
        Wed, 10 Sep 2025 04:26:03 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-774662c7384sm4862260b3a.76.2025.09.10.04.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 04:26:03 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Subject: [PATCH v6 0/6] DRM/MSM: Support for Adreno 663 GPU
Date: Wed, 10 Sep 2025 16:55:20 +0530
Message-Id: <20250910-a663-gpu-support-v6-0-5da15827b249@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACBgwWgC/23RyW7DIBAG4FexOBeLAcwSRVXeo+oBA06Q6iVgu
 0uUdy9OlKaSfRwE3wzzX1DyMfiEdsUFRT+HFPouF+KlQPZkuqPHweUaUUI50SCxEYLh4zDhNA1
 DH0dcA5eVVVQJIlB+NkTfhK8b+fae61NIYx+/bx1mWE4fmFpjM2CCadV4wxrmBHeH8xRs6Gxp+
 xYt3Ez/CCCUbhA0E0w5wxRlXGi5Jtg/gpENgmWidg04bb0gFNYEfxAVUZtT8Exo6aioawqc+0O
 fUnmezEcm2qdTPR1N9IZTZUcKaAwxSoq62XCu961Hn6dMYbyvHtUmebxcCuOumEWZs4sWloRan
 5K5Jbsr9vcvEAZAAFjJCWgqMeBPk0JbduYnxFXL19zz+gtpn4EQOwIAAA==
X-Change-ID: 20240917-a663-gpu-support-b1475c828606
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
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
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757503556; l=4796;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=5yZF6bmqwbJzi/kgFmyA3BkJ0IqhI9QGlG1cdUqtMgc=;
 b=ygJ9G72zwWC6hpjzqRP78NeDdvp7nfiUFCGd9D7qZug+URgI+Awu8NSG9XWSWv3gN7aVg1pzm
 jpah/vxHAcWBP516SRF6Pbp1o+G8wW3g56J4yWFtnEMo+akBpmoXpIw
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=Yv8PR5YX c=1 sm=1 tr=0 ts=68c1604e cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=pGLkceISAAAA:8 a=KKAkSRfTAAAA:8 a=tVI0ZWmoAAAA:8
 a=QyXUC8HyAAAA:8 a=e5mUnYsNAAAA:8 a=jTv6lf4Jh5MpNzVl0_IA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
 a=-BPWgnxRz2uhmvdm1NTO:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: 8gF9t7ATw5sVELM2EBT7y9PFKQYZkHb5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX8edTF6zTVFZ/
 mTNf6F9/+KCOeMzzBKzQaIRJ/Na7yLabLF3deNUrzt0s2iy219kNn4E4YdZXn1qbtPt/ehrkKt9
 rdKTJyFbhZzCspussOhA4E4cUpIUezRaJT4H3Z1xs6uMr9OkLFMVKejcSrk6e/0ISAHeyIiG1BT
 8+clzlrg9oeibCcOylNLk81eCCLEor9+ppRuHW5yWw86uHOHJ+m2P+PlL8XvlsnacZekoe4ovY1
 IDF8w/fYQmI61a9bRosRu4fsrXvRJcrIPrVALGI8vCJBNzrGuZR+4MPb2zljw3uL9DO9zhw2Osw
 hyUfTfyRKsRstb12mqwDW1lHQrBChx0Is2qfIW9HTqLaoyatSc8rGI1KySTH8pkyr8UZlQly0cL
 d/zbYYdr
X-Proofpoint-ORIG-GUID: 8gF9t7ATw5sVELM2EBT7y9PFKQYZkHb5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_01,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

This series adds support for Adreno 663 gpu found in SA8775P (Lemans)
chipsets. The closest gpu which is currently supported in drm-msm is A660.
Following are the major differences with that:
	1. gmu/zap firmwares
	2. Recommended to disable Level2 swizzling

Verified kmscube/weston/glmark2-es2. This series is rebased on top of
v6.17-rc1.

Due to the SKU detection support in this series, the device tree series
technically has a runtime dependency on the driver change in patch#1.
But I think that is okay since we never had GPU support in this
platform and  the gpu support is enabled here. 

Apologies for the back to back rev bump. I am hoping to get this picked
up for v6.18.

Patch#1 is for Rob Clark, Patch#2 for Srinivas and the rest are for Bjorn to pick up.

[1] https://lore.kernel.org/all/20250803110113.401927-1-wasim.nazir@oss.qualcomm.com/

To: Rob Clark <robdclark@gmail.com>
To: Sean Paul <sean@poorly.run>
To: Konrad Dybcio <konradybcio@kernel.org>
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
Changes in v6:
- Keep the efuse's reg range 4K aligned (Konrad)
- Update GMU's opp table to bump frequency to 500Mhz (Konrad)
- Link to v5: https://lore.kernel.org/r/20250909-a663-gpu-support-v5-0-761fa0a876bf@oss.qualcomm.com

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


