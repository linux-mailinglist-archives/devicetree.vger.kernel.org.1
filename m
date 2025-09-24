Return-Path: <devicetree+bounces-220835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D51B9AF23
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 19:01:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D40F1710BA
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 17:01:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ABFF31354A;
	Wed, 24 Sep 2025 17:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U3elQ7GN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB48182B4
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758733278; cv=none; b=WNChKg7sMn+gEnrQIgZ96rD/8M+OyaUXjhONu8wRRpzuq+D7gGI1pFl6tenrkMHWpR8AJLp6Cludtqh33FcTzRXxpROnM0mN8jLU5Pn4nn3LXDAwwz9kH7UncvxQima+uFVy1md6nXT5/h7uDO1JsNW7Z1aQJ8y3R24qG23iRC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758733278; c=relaxed/simple;
	bh=kXDI7MEXFf6z8gjpvhdqltoRlqilkIpnmYKOs1pJ2QY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QWyL9NO0x9gmSUMu7cD8riMbFxeOJ6U5ZahrgItEmc6XJDG/nM4rA3i++q/36oEAwEX6Vr9pbrizzPQSwK50NMIDOF0SRrdhTp1nHQAroA5SU1M3HYxHUqUDyKkMP/KPlF+OXTqfjNA7QPl5mjvnHTITYHP9tkfzzJ88bQdlyGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U3elQ7GN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCZoNE002789
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:01:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=N/oDRnmqGat4xmVd4FvGyX
	KUBtNVsnITDdUnNVC6S+A=; b=U3elQ7GND8JRW2U2fpbEX3a4DyuBDwJhxqS9FQ
	x2RmRCwc6ps8b58XiGpPesoGFjhmrLy3kKWL+e8UIaPNlNd1a+OIIPEdNRlwJgts
	iDwzJpBBJamBUX+3z7mIp1i4Yz3nBrAursF726M+8JPwd4Zc86IYliOW4MZRraMy
	chodoQxxJdWnSWnZ9q1J7GwoaxE7Vbrl5pV3uj1QRPleRxBHlMt172lxQ0yoTF89
	9/IaWiD4kaErpgsaFLwUYd5yKH0EJCE5lty1TORdLcAJAHJw4i2mjJeRWDzY378D
	EawItb6wyHVE+7koqphel1I4nJ80tdamhyxrT2Drzuwi9vcg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajeyptk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:01:15 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b55153c5ef2so18399a12.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:01:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758733274; x=1759338074;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N/oDRnmqGat4xmVd4FvGyXKUBtNVsnITDdUnNVC6S+A=;
        b=dtZh/EIWHY+9O2TQDnz4TkZyWzX7vrLgdtDh5PYgHNCHcYx90t+MvZP5Q2YWAL+2L+
         R+zrLnIkgsvDsc/1DnIDJ/Y20b/odSGnlpa+SXoK7Q4p3Et6CvAsJiUw3Uo5gzL1RGdc
         /H163EKGd8lgjcfGqmZzLfsvpL8o6E9kErIpvO9IJThnq48AncF1bnB1VLEC0jTMV4V0
         0gRrWcYgWVC38McBxUU/qBW7D1JYedttWSdmR/H2BhtqsLe5Nsdq3E0TXd3y8oXaCTRu
         mdBoSRIfymo8yYpSShH57WQrF955SoVDDQQxulkAM/egYfpjfL9pCbbSLQSz0sKITk2V
         hwtA==
X-Forwarded-Encrypted: i=1; AJvYcCXrN8Y3VpZBu8siHtoH5YbZtAgHq1i5i3DmpiHk5+NkllSnmPhw4ZZNn+GS4obwNiXH6+GoU1W3oJDl@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5/+Rp1Jdjm0H/PhqiUMiM9SfQi7S+tkadMzVTP66A5BSjIxzi
	ZeuMYG+JPa2ZaLwOEe8HTbhVOzjvkfc5aPyVisEAapCjjBhxra2sJXzPO5DX6GJWaTfJmKZahH4
	Guy/iNOjVIdX5vCxgJ27/PDaJRbkWhbWMzQklf+1wJQ2CYgOUDLjowWqMDksofadk
X-Gm-Gg: ASbGncvlKmmKLoKIZUwYW9VKppnOgosHCAxoPglAa1d6GqTjHtRrWPckXHA0VUdKf2Z
	VAtyopyLK8q69BZtimmq0BOWBK2o3eMIcf4x0VbABKhuTIogVlcdZ89OHFoQ6CtFLIEXB4bk7NN
	suJjdpn0/Ey5YIx71EDxjmsxaUyO3449Wm6j+WywpZ+ipXoJ2FBlZaLkqyle4mOImUtNXfTAHXy
	XXYUPzV9WF7CXk/43I/7r9Yl6oPtqJFxsGQdM79B2Yd80+CUbwESoV4eUE9VJ25/IuffR2Yq8yu
	OpdSjAGTpF7x0p80EasyZh6AYDDXit49Ga/5p0fqX4sws2KvUqtax39W+4vMDI2NSTq7mtWmImJ
	Qg/Q53fdmkzDYYfIejAdkobYxzA==
X-Received: by 2002:a17:90b:364d:b0:32b:7d2f:2ee7 with SMTP id 98e67ed59e1d1-3342a22c945mr282048a91.13.1758733273965;
        Wed, 24 Sep 2025 10:01:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENExJBcnMRSaIHCjd/DduchLrLj47zDfDf7++AjetgzThk/lhpjIGtQg+ChueQ7qA4WR/ppQ==
X-Received: by 2002:a17:90b:364d:b0:32b:7d2f:2ee7 with SMTP id 98e67ed59e1d1-3342a22c945mr281996a91.13.1758733273086;
        Wed, 24 Sep 2025 10:01:13 -0700 (PDT)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3341bda09a0sm2931299a91.9.2025.09.24.10.01.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 10:01:12 -0700 (PDT)
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Subject: [PATCH v2 0/3] pinctrl: Update dt-binding and driver to support
 Glymur PMICs
Date: Wed, 24 Sep 2025 22:31:01 +0530
Message-Id: <20250924-glymur-pinctrl-driver-v2-0-11bef014a778@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAM0j1GgC/13NwQqDMAzG8VeRnBdwmWXVVxkeShtdQJ1LtWyI7
 74yD4Md/x/klw0iq3CEpthAOUmUx5SDTgX4u5t6Rgm5gUoyZU0V9sN7XBVnmfyiAwaVxIpsPfk
 LOWuCh3w7K3fy+rq39mjl55r55Rh/en72Z8d5FEwWu7Mz166ytaWqSQTtvn8Ap7+jD7AAAAA=
X-Change-ID: 20250924-glymur-pinctrl-driver-e8c2c32a85dc
To: Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758733268; l=1571;
 i=kamal.wadhwa@oss.qualcomm.com; s=20241018; h=from:subject:message-id;
 bh=kXDI7MEXFf6z8gjpvhdqltoRlqilkIpnmYKOs1pJ2QY=;
 b=OfnaSG/Tgae/FcBfTGMWUQfl2So7nVlRvb/7ycVRmbTPHJpFn4oi8IScj3L10z5mQhkuL3h3p
 M1h3HHusEpyDryQzZotWbZ2oOzZFknSriVvhrCrBmPqve0nmG8QaTS5
X-Developer-Key: i=kamal.wadhwa@oss.qualcomm.com; a=ed25519;
 pk=XbPE6DM5/mJi2tsiYwMCJCZ4O5XPMqColJRlGVcM7Hs=
X-Proofpoint-GUID: 4puUouLT89Tyup61yfBVgadFCcE3Q5K0
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d423db cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=xrc4ZGigH1M6lUekqJwA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX2D5+idtUq0JN
 Wngn0KwC8rn8Xl9txXecoosdpBNRf6ni8GWoFxvPRqLn/CPI74tpRcGuY4DcEzotEUg49YI0qdO
 0W7/ORSeGrYfXdlx2rtG1J5u3VzDg0gn3Gzq66cgm+783N97eTcWPSp7UpT3hMnqMUdL2fl2CBh
 HlVDLBt4SVg8FBja4e+6rOln4MEKnkEaiKl5KwvMip7Cf+OCxYcFrt6GcPRL5vyhwSBuKQrlpI/
 LTTdhZG9zY8SGd3ZBwfyTjZ6h0xC5Mdi0pAiYhHLiI7+PUnYAFxJs3k4/Mk8cH4TnaLcNTqhBnV
 uzzzIytvKdGRNanbHu2nsmz1TG7oPXX1D7v+1uEQbAI0BHZ5gsukDgj1RaNyxMIxQblFy3AmxSo
 QiFjJ/bc
X-Proofpoint-ORIG-GUID: 4puUouLT89Tyup61yfBVgadFCcE3Q5K0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_04,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

This series contains patches to update the PINCTRL drivers
and device tree bindings needed to support the new GPIO types
for PMICs present on boards with Qualcomm's next-generation
compute SoC - Glymur.

Device tree changes are not included in this series and will
be posted separately after the official announcement of the
Glymur SoC.

Changes in v2:
- Split into two series: SPMI and PINCTRL(this series)
- Included the DT bindings in this series, previously posted separately.
- Link to v1: https://lore.kernel.org/all/20250920-glymur-spmi-v8-gpio-driver-v1-0-23df93b7818a@oss.qualcomm.com/

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
---
Anjelique Melendez (1):
      pinctrl: qcom: spmi-gpio: Add PMCX0102, PMK8850 & PMH01XX PMICs support

Jishnu Prakash (1):
      dt-bindings: pinctrl: qcom,pmic-gpio: Add GPIO bindings for Glymur PMICs

Subbaraman Narayanamurthy (1):
      pinctrl: qcom: spmi-gpio: add support for {LV_VIN2, MV_VIN3}_CLK subtypes

 .../devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml       | 15 +++++++++++++++
 drivers/pinctrl/qcom/pinctrl-spmi-gpio.c                  |  9 +++++++++
 2 files changed, 24 insertions(+)
---
base-commit: dd1059140d0608262a3a39591360fc0101bddf68
change-id: 20250924-glymur-pinctrl-driver-e8c2c32a85dc
prerequisite-change-id: 20250924-glymur-spmi-v8-f1a57f489824:v2
prerequisite-patch-id: a27e60b23189b89c17444ad76fbeaa7687a426d4
prerequisite-patch-id: 6940e73d1975830ceb11b4e8bf1be2303e866e7d

Best regards,
-- 
Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>


