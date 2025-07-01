Return-Path: <devicetree+bounces-191650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEF1AEFF91
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 18:22:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE6C93ABD69
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 16:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBE0627A44C;
	Tue,  1 Jul 2025 16:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JUvhWPrk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C397E2797B2
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 16:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751386871; cv=none; b=l97U1XmnfE0tKIm64xbXKQWxv+NEUd1Js0c0rdwunImxwVJ4SJPBmWxvn6Zru2EKkJ8S6ZP6evAdu3GbdgPyg/MYjfieS/JZWosGeEO1JW4YoK5NKGQBVftD4uHU1gJSMTK5Tip+EoQuLcqfugwC/nBs2laMQmgRabJ+rHs5gqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751386871; c=relaxed/simple;
	bh=PXhlqE+RLKyz8eL7ircdqym5btkHj/B/miez7UaEoMg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=MibwYmqBMckjgMkREVr9oEVrlnx4kowgt5CjFvwNdEXStedY3SDuaxs4ihRdwstb2lBHq3x1xdjK/4iD+GQy4ZXpCOpcDyEhvIrep0iV/2K3KTiLuQVsQ+XpAiiMM+lTQPLBPfSvMCt8+Y5Uu8W4EEKVLBycfeo6jnIN7VAZ9Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JUvhWPrk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 561A7WvN025200
	for <devicetree@vger.kernel.org>; Tue, 1 Jul 2025 16:21:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=d/3iIbnpeu0qJbEV9ptsqW
	QCU/46RuJv94u+DuK5iMw=; b=JUvhWPrk6HsCBLsPYyQ2nN1Z3YHNct/c4iTIaf
	qpW/UmtI2RY9qCbXoB08muE9by9ir7bNv/QFGuj1FUZhAY/BC3vsS00tarygkaxb
	AApX0irwbCyYndDLOE4Crp1svDyLJj9DawQ/SNMfHm8I9y1JP+mQwcQ9TtVXK9ZW
	pIkNuMw/mRy1w+8qW1apVSHs1yoIffvdA9OcD5cc+2CHJSj7wA/RQjWt/KEC6cuS
	w+DCfvDdox4fwWToz00MaSVuORc82GgKzGn0zI2FB16Dyop3/xbjT2fuuQoqKbxT
	kSY5eu5uLmRz4GJRF/OHuSATKHr8+Dy9rb+ArCbo9/0k6R5w==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47kd64ptjb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 16:21:03 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7394772635dso4434045b3a.0
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 09:21:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751386862; x=1751991662;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d/3iIbnpeu0qJbEV9ptsqWQCU/46RuJv94u+DuK5iMw=;
        b=stPFjHJqSm0T7lTWHxgGEP4+DacRaojUM5wBcC2kuJS/H6hDJv3Xq2IDARBU+mOE4u
         7xAUpTI91rh4C1CSwIlTCPZG2vgv37zWjt7X/W9+l6Ycq3nGpOag3oLGv/NL1vj6mjOb
         N4ZVhSuVnmoq0ZJN2aLZVTsIGPNohmhuSs2CQQ83cphB3YKqFrVmY2hS0QQwvMX24pOg
         WWLj4YVMwgkS8etbKS76v5DddDUzTTghOxS0vCGJRa8AJpvIG5hULk4M+1CEuf3DnYwI
         3ZmKPtYUftO76opuECsqd35GoeaRjYJk3QB3hqN8+7i3bQrAkOeGKjCll+jaeJNSjTfG
         f+xw==
X-Forwarded-Encrypted: i=1; AJvYcCWkzfXtPhy0mLBvDwaeVMuAEuqdVvA0fbsv0KAmiwKpzbLnPulDnv1BOoXmhOESKJvR1sGKHzxjnlLw@vger.kernel.org
X-Gm-Message-State: AOJu0YzPKS6S5i75bdZxdOlGo8O9ILvmUi/WC3w+Dgv4ztSk1IG4eBvz
	Dd8IWD0fpveVgqGKICVqVOUiTtvso2vUIKptGFYi79FroofkL15j2E+kqL+IYowJY0BU/tMSFh7
	fUeq4vG+q5TJ9C8351uJiDaHsHuGQB+z0Xbmb+l0+RdOiB8XYJPub2mEX1QaE3u3r
X-Gm-Gg: ASbGncu4i2UHN+uNtoWHWswmoGvNlwcPGoHsyc9XKns31Ww9KwLogk13u0GlOW0CMt7
	f5j4DZgbLlHdjlQzk3Oh1lhgkxoixBHkZLATxLI+tCASO9KOXaWMuE3VgQy7AJEj9SDoKlv42vs
	XgbHq2IvAaEM1vwFZIxBSeH/SLMoGymU7T6gw6g88uhjVCzzUear7N8615ujZEtMh+8Y28f8jB3
	7YsjTdWwEoz+pgG2sYRTPsnY/FKkdKEgBLtfTMi9ZeyycNNzj8YNswbPLRWHl+jD9Dkb9tBYsln
	MTpaGr0/APtclYiQ2espfh7oSEyrYtkhwtAZk6jqdcDsW9s=
X-Received: by 2002:a05:6a00:b4f:b0:748:e4f6:ff31 with SMTP id d2e1a72fcca58-74af6e509f7mr27760150b3a.8.1751386861780;
        Tue, 01 Jul 2025 09:21:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAHQZsjyCDzYg3ZAR09kxywZO5hi/ZzLk8nMbCVYX6mp+IYAjPdk1zCQc7upgp/wjsAy+f3g==
X-Received: by 2002:a05:6a00:b4f:b0:748:e4f6:ff31 with SMTP id d2e1a72fcca58-74af6e509f7mr27760072b3a.8.1751386861187;
        Tue, 01 Jul 2025 09:21:01 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74af5805265sm12573010b3a.168.2025.07.01.09.20.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 09:21:00 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Subject: [PATCH v2 0/3] Support for Adreno X1-85 Speedbin along with new
 OPP levels
Date: Tue, 01 Jul 2025 21:50:43 +0530
Message-Id: <20250701-x1e-speedbin-b4-v2-0-a8a7e06d39fb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANsKZGgC/2WOwW6DMBBEfwXtuYvWxiXAqf8R5WDspdlDDLWJl
 Qjx73HJpVKPM9K8eRskjsIJhmqDyFmSzKEE/VGBu9rwzSi+ZNCkDXV0wodiTAuzHyXgaNCSa8h
 41fRdA2W1RJ7kcRDPl3eO/HMv4PVdwmgTo5tvN1mHKre1ajE6A38fiwDpT2qpKX8LWh85zKhV7
 62evHHWDNnAL/4qaZ3j8/DP6uAfU0X9P9WskJCo507p8TRp+1W8nARXFxu47Pv+AgG2gXIPAQA
 A
X-Change-ID: 20240807-x1e-speedbin-b4-a0c304d13983
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751386855; l=2493;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=PXhlqE+RLKyz8eL7ircdqym5btkHj/B/miez7UaEoMg=;
 b=8RPMZOE178+e6hz/XUQAKxMLWfSNezm+eVyLA2bm7dQs6OTODAc9guipMaU1GUsXWBff2Q5lZ
 MBzhbGhEwr+DprIPR27QbZOs+kVRos24v4UZSN0NtPB08k9FXyJHQIW
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=Z+PsHGRA c=1 sm=1 tr=0 ts=68640aef cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=tVI0ZWmoAAAA:8 a=pGLkceISAAAA:8 a=e5mUnYsNAAAA:8
 a=yFGAn9Q8HXAzXJEDlGEA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
 a=TjNXssC_j7lpFel5tvFf:22 a=-BPWgnxRz2uhmvdm1NTO:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAxMDExMCBTYWx0ZWRfX/pBxOGGyfAd/
 uOCAiLy+GrtLiGXSN/JhGCpiRQ0lsasz5CcKxA0RCe9yHXHDjv6611iiUV2jH7lYSgoJSNr0IO1
 Et2kt9vWg0Q9mIzdU0jw/WhXaXtexaSFmRNA9QBZ7Hx3ZB4cSGmiesRoyHAsIm46T1OG83J1X56
 ebs/Mq47Nj3Q0gK35T86JSbSY6R/nWdYWBr0aeUswoOun5N+p8JYKJhpZZk/x1+IFnK27kr4hes
 oR41kX1CWHq2Ba8qEQg3iGB2YsAnttTOjz7ian1JgDSWD2IbEXMQdDGwBtzR33yGxk+D+N29T47
 OnTOnfu5+fUvnIEtW4+l0fEpgs+azjlG3vsb2Rxg/vT7Uc8DBAjM0yuS+Ee41xCY6VSG9e8KqKo
 Jp75DVDEq3YNsWQNCavOeMy4c15L9773BYxllW2GzmTYvoQeXB7LophDmeNvAt9Rkr5cjSt7
X-Proofpoint-GUID: DGEgNU_LHbMopt_3mVGpSlBQC6Z-jU5B
X-Proofpoint-ORIG-GUID: DGEgNU_LHbMopt_3mVGpSlBQC6Z-jU5B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-01_02,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 mlxlogscore=917
 spamscore=0 adultscore=0 mlxscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507010110

This series adds gpu speedbin support for Adreno X1-85 GPU along with
additional OPP levels. Because the higher OPPs require GPU ACD feature,
this series has dependency on the GPU ACD support series [1] which is
now available in v6.16-rc1. 

The device tree change has a dependency on both driver and the
dt-bindings update. So those 2 should be picked before the DT change.

To: Rob Clark <robin.clark@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>
To: Konrad Dybcio <konradybcio@kernel.org>
To: Dmitry Baryshkov <lumag@kernel.org>
To: Abhinav Kumar <abhinav.kumar@linux.dev>
To: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
To: Marijn Suijten <marijn.suijten@somainline.org>
To: David Airlie <airlied@gmail.com>
To: Simona Vetter <simona@ffwll.ch>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: freedreno@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
Cc: devicetree@vger.kernel.org

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
Changes in v2:
- Rebased on top of v6.16-rc4 and Adreno X1-45 series
- Dropped speedbin-hi bit because it is possible to identify the SKU
  using just the 8 bits.
- Dropped the qfprom binding patch as it is already merged upstream
- Link to v1: https://lore.kernel.org/r/20250109-x1e-speedbin-b4-v1-0-009e812b7f2a@quicinc.com

---
Akhil P Oommen (3):
      drm/msm/adreno: Add speedbin support for X1-85
      dt-bindings: power: qcom,rpmpd: add Turbo L5 corner
      arm64: dts: qcom: x1e80100: Update GPU OPP table

 arch/arm64/boot/dts/qcom/x1e80100.dtsi    | 57 +++++++++++++++++++++++++++++--
 arch/arm64/boot/dts/qcom/x1p42100.dtsi    |  1 +
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c |  7 ++++
 include/dt-bindings/power/qcom-rpmpd.h    |  1 +
 4 files changed, 64 insertions(+), 2 deletions(-)
---
base-commit: 88bf743cabe5793d24f831ef8240a0bf90e5fd44
change-id: 20240807-x1e-speedbin-b4-a0c304d13983
prerequisite-change-id: 20250603-x1p-adreno-219da2fd4ca4:v4
prerequisite-patch-id: 4332cdf1f4257a45ee565eb0fad3af0e814be464
prerequisite-patch-id: 41ffbd1ea7e32b22a90b5d139e5b1c0dc2d38496
prerequisite-patch-id: 8dbc74e0f6c059ebdfe5ab0d883477011953e025
prerequisite-patch-id: 912297c03c5d233f6e38a91c769cc6518bac4411

Best regards,
-- 
Akhil P Oommen <akhilpo@oss.qualcomm.com>


