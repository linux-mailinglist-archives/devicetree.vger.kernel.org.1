Return-Path: <devicetree+bounces-168572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE42A93854
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 16:12:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB0B73B6773
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 14:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A97E15530C;
	Fri, 18 Apr 2025 14:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R3P08wQP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E561547F5
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744985514; cv=none; b=qCSQzcaF4zFqoXEBOqGESvFwmyT+KNAdKeW+oWsK7WVo+6oaCn8hsqc4sjJQf2Ae1RithlGTLUvvxhzOZAlek96X+uTHOkhXYKbqOlD5L5BSurr0kvyv9eqQs6emOXb3w0nSKiplUJrh5oldcajQ38KnDiU8EgxohhGnO4d60D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744985514; c=relaxed/simple;
	bh=TtClsOR9nEz1r57x8mbU4vYT8Nv/niCbGuKpOjQMWpc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=epjKmmC5ayW9NKzt8GNIWiFFLFiFyp8KmtkX/Vzl7Po1wRLAA0YPmH7C0Qc6/qyTAruPFwjhZXKKJLghW81yCl/RVzWH6v9BZPCgKDWMcxjjJ/ehr6zwFn9dTZjy73e/Z7R1IYZ2zXRV9VncgKLWGiMzO01GlFZJDek6T9xvVKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R3P08wQP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53I2jX2A030108
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:11:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=mP+QC6Sspq8hVQXXKAnIzxI0e1pBB9rIH+/
	iVKKSupM=; b=R3P08wQPor1jHl4ddri0Bpp0cQN7elK252kmHjkXc68xKWi6MNs
	XIUmZGUxDXcDhvyqRwx5oneSgnQPIm+Bi6xXWrOmA/7WEVth8EtRS3X/EGFpdWqT
	1SQqeNrKfosOB1tH2X2v5qvvdQTjg5ze/oeHpXT/8nO2Vy6Z/ar0WGPUFCIVMCAM
	eXy3RPy4RAUW0t+LmYEBcIJSTPm9gsD2tqWiBSKpEOViPCTQaX9UEz+f5KNBQMMx
	S2W7o9JwW5t2aq6AHhbFhp9II+3Nul/0JieC2Wh0AzjGm0xL/W952TkfaLLsWz4M
	OSZhL91dMwEPC8WGu0tCpssRwkFWVmpGuHg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygj9j3hu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:11:51 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5d608e703so316273985a.3
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 07:11:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744985511; x=1745590311;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mP+QC6Sspq8hVQXXKAnIzxI0e1pBB9rIH+/iVKKSupM=;
        b=Md7aQwRDWpIq1Wo1JhOpuUghwxjO+rAS3EZ0ZaQsApEhO55ut+9ut7f5Aw5A+3MVyr
         eMqTsil8cBZL8q0a+KNlsARzFWDKp2TR2YAAV9p49hvTxdJ22VuesabcasSwwVXRkc3t
         cTycp495M0jOcyulEMmCoRDyVnGXn7ZSE5P6kqEoq7545D+feNcM1HwbMhWpXD/GH/zS
         EuSXGrBWl6bQipqNDMStcG8tU1jSyj3DIrrhId+f0gtMpz9Cm3CA3iVdmHoRrkRbM01E
         kKr5OD2HnS4m5NBQxZ+vF4DWdAVW1CBRNavvvKIGDtBDh+AsbRgdTZyCEmb8Cmm9NlPl
         J4Tw==
X-Forwarded-Encrypted: i=1; AJvYcCVNn7EvFsjLy1ItYYm3k6CrKU3RbFyNesc1q2pjSEdXftMhMcviFnNHF8o0THsGfGWDE1kl+I+VNLve@vger.kernel.org
X-Gm-Message-State: AOJu0YwnLgP2/lclg2lZBejQQM95qYSpHPtPRqepS4Udx7deCVRgAGjL
	fm3ljl6mNhGKgxYdPFclGphWHLGB+B+YjH9auep9ZOPwSe3dz4VAi2zy2VsiuNWL4UoZfDKs8bZ
	BoSTpEfcoRrqxIFQ9ifGdP7/NJUlZ/8RDwT9s75r50N9vN+gPAuXzU3BkQOYj
X-Gm-Gg: ASbGnctm4YR6CgLeDOJK+0yT91RQcv3ab83lVCLF/QyTMkfyztNwX95OIza/UnXqz2S
	I2cHmX81tBt3oG/3gnXNE8WRyyAzRzk+zT//5hB+CRCET9+dRlvBav8facHx7sUsTANncfqasGu
	AmXgrF6uwfVzl94hd00ruiRJQPq9stWXUcglkeucLrsQtBXzbA7JzA+t+ajwcMeiUGgKFCPP+jD
	5s3HH0xQfW4rBpOiQikwMFe864YHc/b3yCOUbc/OTKEVJg6aseQNoFN4KWsjOOQhd3MJqTM1EkL
	98h1a/WLgcAjYfcaq4jAJTH0/fLAGcqyQUcM1+MmSMxtiR4=
X-Received: by 2002:a05:620a:4154:b0:7c5:9a1b:4f22 with SMTP id af79cd13be357-7c92804d88cmr469713985a.56.1744985510778;
        Fri, 18 Apr 2025 07:11:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPpKIz9IWoxSYMAft3ZXonmKawbdmddaWfw+CaK0MG7ZvjfHGp6bTTJ0SY+WITg6QBt77lHg==
X-Received: by 2002:a05:620a:4154:b0:7c5:9a1b:4f22 with SMTP id af79cd13be357-7c92804d88cmr469710085a.56.1744985510396;
        Fri, 18 Apr 2025 07:11:50 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:2dd5:219d:5008:1bec])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4404352a5f0sm81172835e9.1.2025.04.18.07.11.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 07:11:49 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v3 0/6] media: qcom: camss: Add qcm2290 support
Date: Fri, 18 Apr 2025 16:11:41 +0200
Message-Id: <20250418141147.205179-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: YeRjyrI7aqo8LE5qDf65miaz2-haPR-h
X-Authority-Analysis: v=2.4 cv=PruTbxM3 c=1 sm=1 tr=0 ts=68025da7 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=XR8D0OoHHMoA:10 a=QcRrIoSkKhIA:10 a=EUspDBNiAAAA:8 a=75QQF6Qy0Hqb6vHseJMA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: YeRjyrI7aqo8LE5qDf65miaz2-haPR-h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-18_05,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 spamscore=0 mlxscore=0 mlxlogscore=999
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504180105

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
  media: dt-bindings: media: camss: Add qcom,qcm2290-camss binding
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


