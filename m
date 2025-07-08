Return-Path: <devicetree+bounces-193959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D126AFC5B7
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 10:32:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33D2E188472E
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 08:32:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D3EA2BE022;
	Tue,  8 Jul 2025 08:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q1Cfx1hg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7073D298258
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 08:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751963552; cv=none; b=a1N0bRQhf997T3uGSSUwwIQPtSmJygGBWJoHj0jtku9fmTG+6yE75x0pdh3jf97j0aIamRbOlqRfAmLffvUqMfAKVlM/1tnFYl/g3pQ55II/S+FWTHqzv4jjALjyXCnmTVmjlnjiiK7o/8Dtfet+ej5I4jYKg8mA1qX6FGlhEc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751963552; c=relaxed/simple;
	bh=1YiweJG7PJKgZc7ct5gW5B7eOHZFvQdVgCTtKMPZJ6E=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=r1feBialjz4Duvrdf1NfxDGMs0tJkiOjQHIFIZcwYx+PuuGTdT/RQ3dEW2x/VsxMd1LDe+Jdf1JCrJoeUxusE/hMoDymo+rZgeYBb6I4veZXQ9v08GXBnawjar4PIOiZR9YjWx27LdaIGZ/OKTU+mqq8fny1KdDP1eD5ScZnPGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q1Cfx1hg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5687tI0s027384
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 08:32:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=hDVPc02Smyom8gWGp9VQVfjqXXqRWspmOX7
	qSqClcY0=; b=Q1Cfx1hgntcw7SVNASlFOFPejuF2PPggOmzz68zcuGbXXckqOAY
	B/98SpuIAnfgHyRKgURrWml+z8mhPfYgxJlC0gDhRbWx8pVHUUfAViHI+KrVmiTz
	AOi6rcvaaHl/p0lUIDaSdbyCTPt5DUw4upPA4MDGGao7J529kRqFfWfZU14A7V4l
	dhLm/Zb7QotJK5ICrkhHZ+cNwyvvAL8tZ01MCl+NBNsll1jM4RAZ/sTQn/rAb+aQ
	hhO5Gnl67FEO0DTB7L4T3xnM9Hys7qdo8cv7gDn5QGQA7ZrfbYq6p2LKF7Ikjk/3
	UvrKNdwgK/SQk77Cs9w1P1bZhvFhAbk7jNw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47psrkkpka-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 08:32:29 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d444d21b24so664006285a.1
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 01:32:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751963548; x=1752568348;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hDVPc02Smyom8gWGp9VQVfjqXXqRWspmOX7qSqClcY0=;
        b=qLK4GP9j/gxLRqzc4lAMfDXT82Ra8w3Eu0Da4yu0aH0T43TJFC+XyjRnKkIz12wqtz
         Y6qhVFYIu/+//S04ccheGOIq4cud8/817yzeke4BpAjGEyax+RIxUlxqJT7RZHG4HFdn
         xx8dQd+6VuEDuw8zECqbgPxXR9rTUz5BfPui1rkmlYS2iCvRilxa/oMLstnTE1K49MDo
         S1qMO7jTGF69cd2MGdSkxtSAkRgS168tChrl4qxnuwrNTCCydwasuNZOtyL7j/YIavTe
         P2keu3yA16kiRjTQ2n1Nnk5/8Hh1NZ+gbRMLTjTT01ccVhiLlIsI7jM7IxqIbMtsV0bf
         UXUw==
X-Forwarded-Encrypted: i=1; AJvYcCU1jAYpFw+GsTNSmni+3ZkMGgXih0hhwE2REYMleYn9JzFHJxUGIQ/Jcs9e1Kdk3h7BE29xZGBefWr0@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt3YzDNoKW7MVZ8Zw5Uu4TlBxu1CzYO+4wTEw7VzbZFik1snGB
	mkkKDKwWonbubXCdFOjsWkm9zr53+ejUuEMSkNYOu8LBXznx6KbrIk61wznkmzjaw3/g53YnLCF
	eCA+/OJ6NQN2+UQNhSeJYqntdrNQmzrmMuNbP4RmQZHc+X6P9G33gZfI8vUOQyDKC
X-Gm-Gg: ASbGncs/ZICoItc3+8nXK/JwH3LNV1RYJ8iVqQYWfHF/N9C5NPQUU8Dqu4bqVb68/4S
	ZOHnyanJyw96DmM9g+YCBVywIQVjQDFoxkcPtRqY8XIdhM3XrJEZ144zN23pbS2dXgEBY/NeaJa
	8DVwCWkHlqPcnl9sfxBhudpyUPM5GZ4FunF4FjVPpMF7OIoaqO3Vnd13IHgLw2LHp3Cg4jxqWVc
	FtdQoXfxytFlZmtpNSsolai6E8KtSqEeBQ3hpHCqF5DM3tGxsWxFt6yYO1MyWJqM3Diz5c8656B
	Jheayix0x3LBx92lC2jql3ne6Dyh3WjdDAQuun+AL1wYw12646ngbHkkrw==
X-Received: by 2002:a05:620a:1988:b0:7d6:f801:ed52 with SMTP id af79cd13be357-7da016a99b0mr396937185a.2.1751963548192;
        Tue, 08 Jul 2025 01:32:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEXD9Pllxg6KGYJANDZeW4ePM0iPt4DqJifc9RKLUtfnMpxdb+VIeT4mznPEqnN6ckwJLhUww==
X-Received: by 2002:a05:620a:1988:b0:7d6:f801:ed52 with SMTP id af79cd13be357-7da016a99b0mr396931885a.2.1751963547656;
        Tue, 08 Jul 2025 01:32:27 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:953b:906f:73bc:cc41])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b4708d0959sm12315812f8f.27.2025.07.08.01.32.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 01:32:27 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v6 0/6] media: qcom: camss: Add qcm2290 support
Date: Tue,  8 Jul 2025 10:32:16 +0200
Message-Id: <20250708083222.1020-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: K_J0M-iNlVuXc2Va-D4mnzZO-f0cGnT2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDA2OCBTYWx0ZWRfXwsZ3MPzVmS9g
 b/Bg2hiJIM0fzjZIa5j2UbJnQxjAtP4QHgErOvOswVTPT0cojG0PZCB5n09xVdtryk/UnL112M+
 ZYvwJxFdmrZe3KOB1xuroKRToTnjUtIU/GTvVoTDcmrbjZ51BVb0i+nrLBm8Paksu4vtfxjfbWq
 N8ZGvTNVkdlSCWUtjoXtkd4/7aU/juMS+yzBMgeI3IOp6e8d94Ez3R11WN/+tTCP1vxpXx3mbK1
 iluSVwDOZJMpJX7oU+96i+l54odEvn1RpY9NnWU8TKc7Eke7L6CNzJZDKK38ZnPRV2Qt2t9oGv2
 gb6irJlHH2DiQxWRewdilvFZlbEzTcZjR1tjcyaoZUGr0Z/pnN/TxqY82bHgQ/w92RNF3xH6ly8
 unMRlYop6+7ndj+xaPDesbepo4xRE8IDv+KWZ7Og6jg9CvR8xqLTJlgd9O9WFRFFfjvAlwbM
X-Proofpoint-GUID: K_J0M-iNlVuXc2Va-D4mnzZO-f0cGnT2
X-Authority-Analysis: v=2.4 cv=GtBC+l1C c=1 sm=1 tr=0 ts=686cd79d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=Wb1JkmetP80A:10
 a=EUspDBNiAAAA:8 a=75QQF6Qy0Hqb6vHseJMA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_02,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 spamscore=0 adultscore=0 phishscore=0 malwarescore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 suspectscore=0
 impostorscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507080068

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
Changes in v6:
- dts/bindings: Move the main top register first

Changes in v5:
- Use regular bindings for csiphy regulators (vdd-csiphy-...)

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

*** BLURB HERE ***

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


