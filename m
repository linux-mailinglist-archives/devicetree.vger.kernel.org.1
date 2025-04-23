Return-Path: <devicetree+bounces-169717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BCFA98082
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:21:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B14E217237B
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 07:20:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5938821FF20;
	Wed, 23 Apr 2025 07:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WKmi07AY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6822519ABDE
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745392852; cv=none; b=e7RWt1hokQ90+Nv/NnAOg2Ls0tMtogCqtvx6Ga9adbzly8/8BHzOo2cpu0cRKitiTpJDTBfpYvfmrJuZEi1eTSA4BqU6joP/XDNuO9KJY44Nwn/VVk3yI02IwTCb6d0iCGPtoOViQjvN7U+VTdgh+BWVib0ynG+o364OeaU3yTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745392852; c=relaxed/simple;
	bh=FVUUzWNCaizJlFwaJ+xT+SCG5bL36aadHi+RveYJeS0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=qVzv18jPl5xmSCnzAPB6gbWbP8bCmNOB4kL5w9F1FlHIy8o0mL/8HthIzEFP9stMxhQa00CIj7aiKubrwvSh3uj08/sXYEC5EPZqnKE1V1dl/L2pw01k1LfSucNVKfvBFVR80l3uOssf+PHQZ9aRNdegaFM4wKUvDdptr2GLAT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WKmi07AY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53N0i7Rl016810
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:20:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Uq/XpaPtjmbgtsfilak0V1w5e+ICyfduXDM
	fc7UCv5E=; b=WKmi07AYaBmrdWM4H0s/9XgJG1zhewP6fc7Uld9UZaxiIpDjUcV
	ZbwIs7htRAfBUTPiaZ71Q8Qz7rqd1d4i2ohvRW0swtm1ivbaapJ8B3ItzdZR42Cw
	gYzWBvw9nC6DmVr6NegVV8ah4VfUG0tVMb0EkKCvLlQ4Oj6coOdKtk9aJx81muX0
	fq6jMHtk6XxSY1N8Lks4IS4k4+rSUDMDrsVwgslHstQublRcWRvtCI2mJnX+9iKS
	gv7BYQ/4ZcSgk91MPJbxYJNx+PzSZrALv+IZ0pHiPk65ILpJike7/XyWBa+YWtvT
	08364cSOabSL0dyWmY10IBb6g/bRovBn2Yg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh0180d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:20:48 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5b9333642so759257685a.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 00:20:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745392848; x=1745997648;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uq/XpaPtjmbgtsfilak0V1w5e+ICyfduXDMfc7UCv5E=;
        b=h5DhH988B9QNOZIC84+w+kpHQ1sB5D1TrWQC0aElredWSotGiQVt/U3mMehUnpedFe
         UDaAMAS+YW82l43HmhmluN0vl053K/dMmvewggJ28Iegmfn37cA8lAMvE3ZWZD5rpSNY
         u1CDfhHih1M5lmM3dbOZnrPnDXFbcxBBEGBJyPIbIgluEJQm13G+pdqziFUW50s6RWvm
         GGKigyr85UYgQN29wjgMDnVr92kBJ8PDrrx4ORR8LFEbz37B2neHZGTyYNfD70ZKS1xH
         SBPMT6JbAxAZcJNiWf1LB4HSDlxXyKEpbOULoTGCyE/MCzkHGof3IuiFY/jIHE+st3vU
         kAAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaKXG1yH/Ikl+yf9YqMjLejLpTNLrOMbirA4xTLngN6MLlzkRXTKQHPnQhH6/eoerNSYIaa4cz6JMB@vger.kernel.org
X-Gm-Message-State: AOJu0YylgFDPxTgBZq/7hbXamF8ivWClBnJ/rIvptX8EnCNoQWNhlwx3
	O7zmDZWNO/NNdmXwWPQc/z/B1StMJfA1GgzIwwoaFjT2+hrAF+K7bnRKSq8Gh+t+vRFSy8UgMPY
	dx7wcJ2t4+W9tDTgEiTlv+jKg+V/wRM1rkYEhvG98O1yIBH97R5HhMvoTv/50
X-Gm-Gg: ASbGncvK0qTwSaJyviEB283gPigoNwvNngaorbzlK4VsaPzuEMSIkRNJENYGvGK1GCL
	uz/9hi8cMtdorfZAlcIo4GTmqrqSVU7VPBSkdhqstv71s2gjX4xCOqY81JTDxhMeZCSvK9jb/Rs
	Fvq6pDppOMwu7JBewcppaKdIAZIQ0Dq7PyBLYKMbfBxEljNWP0L7es+TPlRMtBp4zWpjv9ZGKTM
	ZOrLoav5eOcT05Zr83GdSC6kiQCH+tAxE1pWFML8o5f/fj0jKs2QM1mMtFOMOzbvh6CrjtXoLaY
	zkn3LgXq+TqHO4h9m97h17I4iOr1tzIK3pwTciVW7/nUD8I=
X-Received: by 2002:a05:620a:199e:b0:7c5:5fa0:45f8 with SMTP id af79cd13be357-7c927f77543mr2768658885a.17.1745392848232;
        Wed, 23 Apr 2025 00:20:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHucGD5N3fscZJOZ6ac7Cm9cw2w12TDz/m0VrumWrUL4Hrk3v0xXq+RpRT76laBagngM7ul1g==
X-Received: by 2002:a05:620a:199e:b0:7c5:5fa0:45f8 with SMTP id af79cd13be357-7c927f77543mr2768656385a.17.1745392847921;
        Wed, 23 Apr 2025 00:20:47 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:10e3:ecaa:2fb2:d23a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ec42af6sm757138366b.43.2025.04.23.00.20.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 00:20:47 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v4 0/6] media: qcom: camss: Add qcm2290 support
Date: Wed, 23 Apr 2025 09:20:38 +0200
Message-Id: <20250423072044.234024-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA0OSBTYWx0ZWRfX5Wfcxbe+c3uL MHNN121W+4/fEgEJOrdtp2uf4ko4JY5MOdzjqKVo9mgMMhNrfFsbEJRtdPfiP01RQQoeDnQGAeC LICxhYbDp07dTcXKktAOEtCJr1iqyKRktqA9wAY/AXL3b4jGFec2bgECydErahA6sHhKF44EBD/
 mfnBihVyUjdYbDGxTjJDGJ7xLyhpjJa1tsG4qu0STYWmGIqhWW56Lj9C7Qr0VnbL/yrfVnd6P/O DYTiVo6QmauS6gqCa0wT0q4jUGjATI1b485/4EgM097Ht9EbVLsAq3vt94k8k3GjwFEFruTL4Dk SiPoLGejporTiiKhd/3TrqmlYWmpj9N/qtwfSZIQXQzyocbshBds1CdbNbfax0byl5LrJfgfKIu
 jpmvTia1JKXQuSWWpHxAmbOIoVENIwsuEaifxbd82LAnfLDBm26UaAVAbLwxrwNI/XkSuclm
X-Proofpoint-GUID: xRw9XX7sk_T6Nalp9AGV5tNX1fb6Y7Fv
X-Authority-Analysis: v=2.4 cv=ZuTtK87G c=1 sm=1 tr=0 ts=680894d1 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=XR8D0OoHHMoA:10 a=QcRrIoSkKhIA:10 a=EUspDBNiAAAA:8 a=75QQF6Qy0Hqb6vHseJMA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: xRw9XX7sk_T6Nalp9AGV5tNX1fb6Y7Fv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-23_05,2025-04-22_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230049

The Qualcomm QCM2290 SoC camera subsystem features the spectra 340 with:
- 2 x Thin Front End (TFE) - 3x RDI + 1x PIX per TFE
- 2 x CSID
- 2 x CSIPHY
- 2 x TPG

Support for Pix Interface and TPGs is not part of this series.

This series has been tested on Qualcomm robotics RB1 platform (QRB2210) with
the Vision Mezzanine (OV9282 sensor to CSIPHY0):

```
media-ctl -l '"msm_csiphy0":1->"msm_csid0":0[1],"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
media-ctl -V '"ov9282 2-0060":0[fmt:Y8_1X8/640x400 field:none]'
media-ctl -V '"msm_csiphy0":0[fmt:Y8_1X8/640x400 field:none]'
media-ctl -V '"msm_csid0":0[fmt:Y8_1X8/640x400 field:none]'
media-ctl -V '"msm_vfe0_rdi0":0[fmt:Y8_1X8/640x400 field:none]'
yavta -B capture-mplane -I --capture=1 --file=image.gray8 -n 1 -f Y8 -s 640x400 /dev/video0
```

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
Changes in v4:
- Fix dt-bindings patch subject (remove redundant media prefix)

Changes in v3:
- Be more strict with writel/relaxed usage
- Add more info about CSIPHY configuration
- dts/bindings: alphabetical order for reg/clock/irq
- dts/bindings: Use patternProperties for ports
- dts/bindings: tpgX => csitpgX
- dts/bindings: voltage in vdda rail names
- dts/bindings: consistent hex notation for register addresses

Changes in v2:
- Use RDI_NUM instead of RDI_CLIENT for consistency
- Add comment listing bus clients
- Static maps for TFE ifaces/subgroups + Warning on invalid line
- write to write_relaxed for reset function
- Use GENMASK and FIELD_PREP for register bitfields
- Fix coding style: lowercase hex, unexpected line break
- remove inline for reg_update_clear (pointer callback)
- Change avg/peak interconnect bandwidth to match downstream
- Add IDs to camss CSIHYs
- Reorder camss dts node similarly to sm8550
- Fix camss node name with first reg address
- Ue RPM_ACTIVE_TAG for APPS->CNOC

---
Loic Poulain (6):
  media: qcom: camss: Add support for TFE (Spectra 340)
  media: qcom: camss: Add CSID 340 support
  media: qcom: camss: csiphy-3ph: Add CSIPHY 2ph DPHY v2.0.1 init
    sequence
  media: qcom: camss: add support for QCM2290 camss
  media: dt-bindings: Add qcom,qcm2290-camss
  arm64: dts: qcom: qcm2290: Add CAMSS node

 .../bindings/media/qcom,qcm2290-camss.yaml    | 243 +++++++++++++
 arch/arm64/boot/dts/qcom/qcm2290.dtsi         | 103 ++++++
 drivers/media/platform/qcom/camss/Makefile    |   2 +
 .../platform/qcom/camss/camss-csid-340.c      | 189 +++++++++++
 .../media/platform/qcom/camss/camss-csid.h    |   1 +
 .../qcom/camss/camss-csiphy-3ph-1-0.c         |  89 +++++
 .../media/platform/qcom/camss/camss-vfe-340.c | 319 ++++++++++++++++++
 drivers/media/platform/qcom/camss/camss-vfe.c |   2 +
 drivers/media/platform/qcom/camss/camss-vfe.h |   1 +
 drivers/media/platform/qcom/camss/camss.c     | 148 ++++++++
 drivers/media/platform/qcom/camss/camss.h     |   1 +
 11 files changed, 1098 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml
 create mode 100644 drivers/media/platform/qcom/camss/camss-csid-340.c
 create mode 100644 drivers/media/platform/qcom/camss/camss-vfe-340.c

-- 
2.34.1


