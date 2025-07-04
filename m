Return-Path: <devicetree+bounces-192982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 046EBAF8B83
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 10:28:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 020C37A400C
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 08:25:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EB162FCFF8;
	Fri,  4 Jul 2025 08:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kwrhar5n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 948872FCFEE
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 08:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751616945; cv=none; b=OzzBgjkvA7ls+d9HcKMOmFsysbIX/+lSlimgZnoVbt6QChPvQ+GLWZKMQxeN72Q7UEi4QubYLBb6KNixMFybPVFGDraLUnZfAD1HlLYY54VDnjLGRwSUVSPmmiieDMhPWfNqomfEIu4yii7NqKROH+rbXXLJbgFjlIJ2DidXBGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751616945; c=relaxed/simple;
	bh=Pj/tYIKKqwKkMqL1bIJHvwLfeOU0zWWpn4f2N/ynKIk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=FRXNlH+0M+Ckm0uyS1UsqU+E7lbKzknM0i0deKUjilI+gEgZcreNlZcmac6qrUuHW7nEYV+uqtQp9XGccyXnBOZSU1pCOxxD8I6zvhoRE7x7XHmAqvrn/xzm+47tlYRYWMA6vugMXqNnvN4TmJMfmXdsddEGyQVrDg0GVP37/KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kwrhar5n; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 563JlWtd025048
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 08:15:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=egnAFh2CHr6jf7UAS2g/dHOdUWFj93fB7wC
	YrltYTe4=; b=kwrhar5nL+SryUQBK2wPVRSgIxtvk8WLWAafYIWGXtNgIljsjI8
	8xozyucXsxdcanFE0v9N0xUcsLudDUUBx/CRpgAN5bDA3uB1JsT5C6YjedLyWqM5
	O0iZHNegrJMgYgy1KyScSp8fbiMV/xAFFYKkyk3jeD4XtarpuA/zK1BjdK5NNueV
	0we7TkodlNhcY/wl6Mm6eN3zzku6Dw8wYpLtbOuJkTNZnSzPQm7GgxIpzWoC2w/H
	eSBrsCw6EJGW6IetUk3TPLWG9Mgz2IADvevRLpdYNvwl1caNklbfx2wgJgYKiY9n
	BM2IMkOdbNRl9AqcanShnJ0JNZW8Dn8M5Jw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j802atwy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 08:15:42 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c7c30d8986so195914185a.2
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 01:15:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751616941; x=1752221741;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=egnAFh2CHr6jf7UAS2g/dHOdUWFj93fB7wCYrltYTe4=;
        b=dYACo69KStYqc6kZyHw9zvAnpnBQ+ujYEiEvg7vUX+gv36GKOdQK+BYRAjXMyQrXlH
         AHOVg0npn1k9kH7R84g9iwWQ7T8mltEsgkdNhIsXgXwTShuT3/+tCpp5JX9cE9cWCJdy
         yS+GXUFYzOkFBqDlmJvCLatNku8pz4ELZGMTKUXFgVFugcxn5K3XtH+VMBQxazLRZXx/
         JobClOFuoLJ00bDsgEBc7zS/HKiWN0C2fzwohM+26wOrgaos5IYfA7IOiMyMyK4isato
         ASPox0N14I8/HpK/pViiXgLACmU2+4854GmNInkEtvmcNz7KIxmbh/FHVWXUi/pMt3tx
         tlJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtDIgdTqOYLaI2r67KnbD50V/DCwZDNi3zwBoRoMy0fl0sqO1pb7U5GLZAiqMW63s1tOrLrSeinQvC@vger.kernel.org
X-Gm-Message-State: AOJu0Yza0ktw1ZmNVlwgGTXSpft6UGzaKZcXHmoSw3kus5l+y7aDCxIK
	9D9UEXilspkq0t5kekq456GcPln3cnU0td9qbyH0PQXX4ZIHz/c9ka/Tx1Vm26hDew2EVCT33D2
	/xZtoQ8zHHgSI5vKjRpowheLua1OlobSZO6a7YPFyozu5QVTe+ucFN2L/PyBSxt8WRkInol1e
X-Gm-Gg: ASbGncuCHkKcSf2wOvdMXe4NSOMT0UzRjrKmQRfpF5NyEy1cCiF2YM73yu7JC2FNqje
	krvq2jpKG6lhUjFBd/T9ty8RDBNcmKxWrXb1NLmZUli4kaAOMOpzxAk1rXK3WVCTRqEIbG2xWZ4
	ZdcgmQoh2QGP6HVP4MP/D1WtcLbmX7+sle5K0LKWgsyeF/HBU1LV3v3CVm6XsY8d8g1zGw/E1OO
	HA4nyhfUybEnNzjDfKsagJsGPYxoJxYWL4A3Y5qlL8pMmLTQD/UkDXktM31eWtlGGNjlCpYkf1x
	j130EdkPJw4LVO18cAlystgnK+9bdHcGqlmLkVt89B6mzEnk4cExhH36Dw==
X-Received: by 2002:a05:620a:2991:b0:7d3:f68c:5778 with SMTP id af79cd13be357-7d5ddbfe672mr240706785a.54.1751616940950;
        Fri, 04 Jul 2025 01:15:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHXF60Y0F2ErCw1va3vR3EOkW73U6IVC7914Cns3C8QMKyb35z+syYZEs1ZyOOWYs3ydcfQvA==
X-Received: by 2002:a05:620a:2991:b0:7d3:f68c:5778 with SMTP id af79cd13be357-7d5ddbfe672mr240702985a.54.1751616940443;
        Fri, 04 Jul 2025 01:15:40 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:e0ed:c3b0:c674:7c4b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454a9989fcesm47991835e9.16.2025.07.04.01.15.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 01:15:39 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v5 0/6] media: qcom: camss: Add qcm2290 support
Date: Fri,  4 Jul 2025 10:15:31 +0200
Message-Id: <20250704081537.1716613-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: kV00RPywrlqDEaLSspdh1Ie3OqIJYTrj
X-Authority-Analysis: v=2.4 cv=YPWfyQGx c=1 sm=1 tr=0 ts=68678dae cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=Wb1JkmetP80A:10
 a=EUspDBNiAAAA:8 a=75QQF6Qy0Hqb6vHseJMA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: kV00RPywrlqDEaLSspdh1Ie3OqIJYTrj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDA2NCBTYWx0ZWRfX+rMj4f7SSjBo
 Zzyj7hpdyzS6z9Fsxp76+RchYI0l7FuH7BXIrN1XmhkqMai9U/YgfYx8A2w8EZKC8TOlt7/sFOD
 1i7IJLneMXiQT9ZwXHiKLlCYam2jaASgj1dq+OngbhC3dzf3IKcHRIvkukHhlAIjiZvA4eY3UXh
 YH5PUuUQHGsc/AxcF8TgA898up49BYjtT6rusd304tLYcA2VpPa90ZuCKZxfMbUozSa+Wv1+n46
 NsVw50yCCvqOLv4SY7xsMV0Qh8umtF/2amMI6wS3z21As0xwxCaWJ5tXW9cfat0mvHZHWo/Y6Kn
 eA44Y8/EZ9ooJEbhyoIVhwF1dJUbwTftGLChjbsT1vOCOQeQ8WX1k2dj37ks4Pqivl7oiu9l3LZ
 j7WWvheNYTRMFpUshPDmJz5wNDnil3s/pkntY7LcAU53brCmTUl1b7JvkgBwT/64+KhvgCnR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_03,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxlogscore=999 mlxscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507040064

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


