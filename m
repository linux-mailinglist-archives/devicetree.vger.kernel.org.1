Return-Path: <devicetree+bounces-183500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA63AD0DD2
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 16:15:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7E2F21894410
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 14:16:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 246331A4E9D;
	Sat,  7 Jun 2025 14:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FL8FIhGi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92DE8EEDE
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 14:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749305746; cv=none; b=l6X88+zW02z7IAvK3BrmMkC7ASRrOTqJyUCUUlHUZ9sy7pLrisUHefjQXHvJriOIYaPwebULXMHwcK0E8KjUP8qXCdwY/Sce/pZYwsWKF+KX3+7lh4f3Af2f/ZaeoJMqQqrIDj2Tst6z29KY2g15k2XGAmDZRBvqmBc6f7ziHic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749305746; c=relaxed/simple;
	bh=1R/4cAeIAzLJOWp/GuFrSGG6zEJyy/eVJqkUetChkPE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JY2I9EAyj7RTsuFzeBSvHN9iAE/lxXIti6cafbDo97Bf//dSN4G0Zl+ptRpIS140jVCN2XKeuOEJU9RDW3HwD4FGeZUHiYtuOpDPObqiT2VJR8YJsIJqCKuHytoZQiGwtJEI8kvfEn+1ru3GKiDOXTYynmaTgPIhkeri4Lj6J/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FL8FIhGi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 557Cwv4p020264
	for <devicetree@vger.kernel.org>; Sat, 7 Jun 2025 14:15:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=jQEDDMTmKsjlbrJ1T/mYsq
	l9DaM6HWHTltiou3XAwfQ=; b=FL8FIhGiYfRPpEb5zkLb6X5evl8aRpePWsUbgj
	woUE1/DwDvnrHExHMp86Y2NnGAGH8/6eHoXVwl16OL2JwcBbDMgPU+BeKCwWRkEX
	64IVk1M3Ymg5qahJWQOyE049C7C5MfZzR26IjVHAgH4DtOE8wXEoA5Il4rsHSqqG
	Y5HfoXWT4TSlOhEICgLJmvhmdl0qxpl8oWL9ND0t8lGt8H8nWaGhkJA2wk3qgPrE
	FD3O9AfKYzcbbK2+/46BQwXO/yiQr5e6FjlpJsbcZH/vOktcLBEcH/729bn7MLpj
	ZCIirVPQgI7MuWu0Fuk8GMWZF8V/fE3hPnGyhjop79OUPT+w==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474dn60ns1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 14:15:43 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-6c8f99fef10so3199518a12.3
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 07:15:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749305743; x=1749910543;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jQEDDMTmKsjlbrJ1T/mYsql9DaM6HWHTltiou3XAwfQ=;
        b=NCyANcyEMlyIlHAgcs7Wy9SI5hSQamu0uQstsMGxQSeyAKU69v1XDks6xW4ldr8sgX
         iZCX1y914IWsgIOI02s8I7CHcqEN56wNmksOvaS2WZx+/KE/gEvDcSQBb+UFwXxV0PE/
         Z7NlHAgskOPmTVvt6X7fBzQkaTwH4ZJPmMcsRpNb8jJGOXUPGOUcVev5KYxV020Z1Zux
         9L5dEtF6/QPRymO/KuvsAWpleLayQFH6gU95bum+9pNJIfY1bnr5jX2OGdOYSqpgz5yX
         t8IeUdxNMKf8qJCEifu8cxxaFmXiPCc7nS/sg5nxpkWhkoPqphkcvm/s/x1CNJwyH1v3
         W54Q==
X-Forwarded-Encrypted: i=1; AJvYcCWH1yaXf4ith7KIi4zNecqVLg9xk2Byq9dMovfLurlMdWHR8QZrSEjCpaP+MEshCSM5FipGO2JUCBTT@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+BFnzwCG+eEYj3FDLOivWqrFWn7jtVPiQA0VFHtQO2tZw8JY3
	2TfXm61Z12s+0F+UQXfc73o+n9moDzoFGY4SWgCH6oPX2N5u385508KT0SsB7XMUNZ3vvX7psB7
	afjHCHaiTv/D5/EtT/WqOjnNCcoScqc11Jhf6vOs0MzJrAvWbLo1dcgS9I9cabZrV
X-Gm-Gg: ASbGncsAZiHD7n+ZA4tbyan/vbOfotCTu5P6BWdc+9ClBv2y73yZ/Wp57COaIflu0LE
	J8nqACSvejvYZs6BtUsOJrGKZHlUqJjE98aD2iRg9lzMOicB3rNgyNTIIby4My1qCioEFHA2eLN
	lXXG7p28K7MTnKIhS9PShLIvYeKHEmx9dwfHDme4QkaVmEZmYUfmlET5BqiXAiNcZVGUQJ4u02n
	PIpYFqb8MWTuKsCVZxuNXWePLCvzFSx2nLpn1IQd2FOS71EufdKL4ev62Faaw+a/ZahUu8ezAUc
	R3NAgwVdqnKZk6bnT+okN4gLtp7mI41u
X-Received: by 2002:a17:902:e750:b0:235:f4f7:a654 with SMTP id d9443c01a7336-23601d09641mr109277545ad.22.1749305742573;
        Sat, 07 Jun 2025 07:15:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjF9YeOEhWSWfxr+m+2RrgoG06THK+k2+nMjTup1J4LstKl/tmEjXBkTr4o+5QwdlWwirKMQ==
X-Received: by 2002:a17:902:e750:b0:235:f4f7:a654 with SMTP id d9443c01a7336-23601d09641mr109276915ad.22.1749305742176;
        Sat, 07 Jun 2025 07:15:42 -0700 (PDT)
Received: from [10.213.111.143] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603405732sm27500435ad.155.2025.06.07.07.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jun 2025 07:15:41 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Subject: [PATCH 0/3] Support for Adreno X1-45 GPU
Date: Sat, 07 Jun 2025 19:44:58 +0530
Message-Id: <20250607-x1p-adreno-v1-0-a8ea80f3b18b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGNJRGgC/y3MQQrDIBCF4avIrDugNg00VylZTHXSziKaqi1Cy
 N0jSZf/g/etkDkJZxjUCol/kiWGFuaiwL0pvBjFtwar7U33+orVLEg+cYhozd2TnXznqIN2WBJ
 PUg/sMZ6d+PNtZjlHeFJmdHGepQwqcC34d3sYt20HBKPUqo0AAAA=
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
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749305735; l=1043;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=1R/4cAeIAzLJOWp/GuFrSGG6zEJyy/eVJqkUetChkPE=;
 b=T5B1TBD6n1ZXjWmBzYGz79OW1hjAwODNgkAjFeCeljEAqh+W/4n6lU8z1zkK0ykWF3R7mJUA7
 8yVMyFfn9g6BOOwS52MkZTyflD73udKJg7pyStIQ/5hNiAqyx8r065a
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA3MDEwMiBTYWx0ZWRfX3Z5GCjLTNKxs
 YeztkGsY0K8XOZJunhY/y5DyNcM9jHm5U7UoDawFtxVvEtjpVwTxLtXi49/bTqbfKXYK7gAgYgZ
 0Kz1wz7xM5sWpaIlLHaylpHIFDX7R24FnJDoU4H95vLn3icKMV/bz1AAQzfcHrAkqgkQnIOys3z
 TIQlvqWgOno/7zZ7TRGKuNaQ6WtUd0d2K0B3CIzSrIqu8umjNjtB2y3J+TSNrSeN3HmN4TydUJR
 HPlQAS1UgBuEXrHSKQT0sx3cbR9symdDm0wlbLatTYxCzrzyuxvYOXJCQjWkO7SzigrwSXH3oiA
 uq/8So1GBGa7+8xRfaJvqAtYXrcmylUzBDsT0erJ4T9yOzJ9TJMhjcTdcSbRVIkfm8ImDcJ1InG
 OgrwR3w3KrmyyQttoGPMj3w0+g+ztJqjGU3nR9zkkVL47Y/1dDjKHupUhIXRxR014kIP0rfP
X-Proofpoint-GUID: 0whH4phW2QFAtn5_2RsR7CI6C7VBTD5T
X-Authority-Analysis: v=2.4 cv=FaQ3xI+6 c=1 sm=1 tr=0 ts=6844498f cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=vb8sKYNj6oKrwasmUUsA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: 0whH4phW2QFAtn5_2RsR7CI6C7VBTD5T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-07_06,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 adultscore=0
 mlxlogscore=511 mlxscore=0 spamscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 clxscore=1011 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506070102

Add support for X1-45 GPU found in X1P41200 chipset (8 cpu core
version). X1-45 is a smaller version of X1-85 with lower core count and
smaller memories. From UMD perspective, this is similar to "FD735"
present in Mesa.

Tested Glmark & Vkmark on Debian Gnome desktop.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
Akhil P Oommen (3):
      arm64: defconfig: Enable X1P42100_GPUCC driver
      drm/msm/adreno: Add Adreno X1-45 support
      arm64: dts: qcom: Add GPU support to X1P42100 SoC

 arch/arm64/boot/dts/qcom/x1e80100.dtsi    |   7 ++
 arch/arm64/boot/dts/qcom/x1p42100-crd.dts |   4 +
 arch/arm64/boot/dts/qcom/x1p42100.dtsi    | 121 +++++++++++++++++++++++++++++-
 arch/arm64/configs/defconfig              |   1 +
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c |  38 ++++++++++
 5 files changed, 170 insertions(+), 1 deletion(-)
---
base-commit: b3bded85d838336326ce78e394e7818445e11f20
change-id: 20250603-x1p-adreno-219da2fd4ca4

Best regards,
-- 
Akhil P Oommen <akhilpo@oss.qualcomm.com>


