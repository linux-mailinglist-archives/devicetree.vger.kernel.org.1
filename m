Return-Path: <devicetree+bounces-193478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 460D3AFA9E6
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 04:51:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92A243AB165
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 02:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52EB01BE871;
	Mon,  7 Jul 2025 02:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NnXL0akU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA5D14A82
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 02:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751856679; cv=none; b=k1oX+lTTj6ChYoLzOxugey1EcVv+wVUK2SLVqBtVDFhyiwXy3eOf9OzSd3gG2MJf4tNVlCQb1RtkAgnnyBRSRBjuvQvaOt926g/xBRwnxWCB1i6lNQFcD9jk4Kp7MBsmuTPFze6EmB9tifgQMqgIspKly2J/IyTTtmXXVJnPccc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751856679; c=relaxed/simple;
	bh=8VuaTz/PyI5W0xfSrY+b+q3IdWDzSGo4YupyKmm2TXQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NazO+Wh5Iw+I3tSGD8BAazzstZjOgf5rq3GfRRl3qgntLH+cg9CHGofpb32RCHcCrRvPD9/aReK/1PVYypf8w0diZDuAB4FlcwJ2LU5vOyDPq0F1/srysuYsJgCm2rx41Gai7URXpUNrfHGyL1IfwsHZJDDtvLU5uutzZCSnxdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NnXL0akU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 566LRJ3k020237
	for <devicetree@vger.kernel.org>; Mon, 7 Jul 2025 02:51:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=6wY/oy5P/6vj4rImSNsVIq
	hVRyJitnXPZLi7GI/mCEo=; b=NnXL0akUi1wBVi2Mt+xOJVnUu4gcaFblP7mNeP
	QWcexJHrk8fbgtafzR1bVJ5+4qDDFEk+Ue/Nqqkqn7NiyLy/+csynwGcyVN+w6ZB
	leQ5QAr6C1J633VbQ0x1wutJ6P97qf6NlxIRblQAcRXlnx9HTv9gP6UBDPBI+xZa
	9EWdF8gnpUztU9j4nf92mYZ/uSILuCcoMzA3f1YTIGBog5Nu2PyxM29vHf16dQzc
	1er2R9COaOlzNAOLfiNX52krypp37WDdtDCAGezn+VJI8pOJElFqVm38AAoDtSyX
	v1fvwzyfZwOYb1KctfnXRlNWwrRMoNv7Q+LwTyQSGlOA/mDQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pwbd8353-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 02:51:17 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2349498f00eso30483065ad.0
        for <devicetree@vger.kernel.org>; Sun, 06 Jul 2025 19:51:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751856676; x=1752461476;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6wY/oy5P/6vj4rImSNsVIqhVRyJitnXPZLi7GI/mCEo=;
        b=Qygn4IXt5c/7nOj+ZqS25P8D7oiop2p89CcZpQmWH/SRxBOQLifqOxOMEeg+3bn8EW
         ylvX8ce3wlI/AoXaPNUtLw1gofaF8Z2lX8010tOJ64QZwOkUSjCIKVv9uEn4SrtPHsfh
         4ds0ItoeTsPKmMFvusAlxugBd7YEkvIXd/XMf+saEze7xEI11rrgpQSEqAxaoknpupWN
         OPawqLXCW0hZRNLcOsyqBMc0IUVDcVW3Il6EpYhf3BE7tGFz8hc6YSdwj7WkgXh1pRkA
         G+ezzcGFCJ1mB0iHelJETSV1dfg6s9+Jl+RCeJZSsW81lCxiU737tvMfFiVyuqKnoPUx
         xM8A==
X-Forwarded-Encrypted: i=1; AJvYcCV4iruj3eTELV/xNbfWh0X+mfK6ATTmzzZJI/BU74B5ZNOG5qoqeohzcbEd5cf7F7vLyoeXg/jyPWuI@vger.kernel.org
X-Gm-Message-State: AOJu0Yzch4VXywZKaWxIIef8djyNmEV5hbeKmrJWLNGu7IV94foUQHbc
	ddUYmUNA8NLQgPBIKuPRyJz93KGtNX3rVT7iog1rhabMXhi1Fk4ywDz7RiNd383vRUPsXJXRMVX
	TiLRdTO8lkzeZDoNx2yIlUtU9t71kjSjfcBNIi0DPX7V9AtWcAeoZbfhRTmcefK5U
X-Gm-Gg: ASbGncujj36NFxQuf8y2J2d4hDpnrHtAMdFgge5h0TExjKpiBIIZ1BP6eURqMF3JptW
	fjcxN3v8igIwaatN60ahcJ+McxPX0gOZklbTJ6ewf4XUYQgWFU0+mHQw0Fu+nBGcfk+cdKRUGq5
	LpNyMsjkHIJ2xd8p2JrW+kfg8h7OSv0KNpXNt/edDKY0mddhrzeNOSm1RUnQpD6Yhc7ExuUN4V8
	nMFtMtJcO5LltQUMpzuxN5TpJaGE0VKROgpCtP0YLymf8xF5LUWpDQxbeRUv7usnjdm3LA8H5X8
	5qhTMasS4Bv2hcRPp7rUPjLTNUA6Q+4dwkFWQiWBvLqEUSc267T+MD1rL77ZplsbAYhAM3ntFe9
	4E0JZ5JkZRw==
X-Received: by 2002:a17:903:1b47:b0:232:59b:5923 with SMTP id d9443c01a7336-23c8596c685mr161544285ad.23.1751856676183;
        Sun, 06 Jul 2025 19:51:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHXRKp49qoVbd5742kpkefg8x9X8+sSZiqFJfmiqlG0wO4fMHPt5CQu2bYY+L70n4Pi1KXzQ==
X-Received: by 2002:a17:903:1b47:b0:232:59b:5923 with SMTP id d9443c01a7336-23c8596c685mr161544075ad.23.1751856675776;
        Sun, 06 Jul 2025 19:51:15 -0700 (PDT)
Received: from yuzha-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23c84593e0asm72478025ad.193.2025.07.06.19.51.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jul 2025 19:51:15 -0700 (PDT)
From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Subject: [PATCH v4 0/2] Add WiFi/BT node for qcs615 ride board
Date: Mon, 07 Jul 2025 10:51:04 +0800
Message-Id: <20250707-615-v4-0-1a2f74d167d7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABk2a2gC/3WQzW6DMBCEXwX5XCP//6CqyntEPRizNJZKSGxAT
 SLevcbppSq9WJrVzjezfqAEMUBCTfVAEZaQwnjOQrxUyJ/c+QNw6LJGjDBJNBFYUYkZ9UxSasB
 Si/LmJUIfvgrl+P7UEa5zhk3PIRogJVdgTfX6w+LESsVJrZQlQmCK7+E2Q33fYg9jSvV1dp9+H
 IY6P29bTusS4G0SpqYynfLScM68dqZ1mdn73mlljGmV57prPVjFOdoanUKaxngrZy60VPp10UJ
 zvreWCitED5r/KVAwC9uxsmzNn9FpRbx0jP5j5TtWjgnOXY0AIjTp2Y51XddvThvSF6UBAAA=
X-Change-ID: 20250704-615-21c25118e919
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        "Yu Zhang (Yuriy)" <yu.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751856673; l=1613;
 i=yu.zhang@oss.qualcomm.com; s=20250625; h=from:subject:message-id;
 bh=8VuaTz/PyI5W0xfSrY+b+q3IdWDzSGo4YupyKmm2TXQ=;
 b=hcd7ZMQVoPdjK/naX02adRhFimctL4scbH3wSTcf0898lgbWIlqBvwtJ/W9j9pyOdQDbhVGNm
 m+BI+vEV1PECqn9IwVPjbUU+pr5JvcK+PhBqqw8pBl45h2qxvMF3AFH
X-Developer-Key: i=yu.zhang@oss.qualcomm.com; a=ed25519;
 pk=ZS+pKT1eEx1+Yb0k2iKe8mk1Rk+MUki89iurrz9iucA=
X-Proofpoint-GUID: IO3vENsKkVXXzX6BmJY6LfFSINFZvW8P
X-Proofpoint-ORIG-GUID: IO3vENsKkVXXzX6BmJY6LfFSINFZvW8P
X-Authority-Analysis: v=2.4 cv=e/kGSbp/ c=1 sm=1 tr=0 ts=686b3625 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=TmzUbGvDyKMaPb01JRcA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA3MDAxNiBTYWx0ZWRfX/fmyK6anWpuS
 QxKUQVOHs2hPA8sYg1Wav6EAWD3Z+z9xXApCamS7KMl3BKgtWkZmVQAce7NBjYJ25FNRscQGH95
 2fgUNlOfMI0/Uk2vUHWCEr0vbZuXJk/1qozaou7y1ONKv9Z+ihlorfVCNUdr95SxAvmuxOMz9n/
 sHBckNR8xitNA3MDvNHj9vN4IpH95szAGNC1VuLg6cVRuC3fNHqlaAAOKPMW/348A12f4Fmn6ow
 lViN53VFjmhUFhWB5NpcrgUNwvgzM91py7l4qPSasYpOz6DUsR1ABZ27aHvq6wYnivcZPzZ7vTQ
 CfNmyogmYyfb6AtTT+uUX7CMxSzXXmjVP+RJqWFnSAReVI/+olXX1ozFXPRmeTxEwSmT5wxcIsG
 Gznr0n4flnZN+PaJk+kUBS94PjAiSaDWKrpYt6APT9V5Ek5Ux7yGLEfAUpa4rAbnhkxuvx83
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_07,2025-07-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 impostorscore=0 adultscore=0 mlxlogscore=999
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 mlxscore=0 phishscore=0
 bulkscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507070016

This patch series depends on:
- PCIe
https://lore.kernel.org/all/20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com/

Changes in v4:
- Fix node placement issue.
- Link to v3: https://lore.kernel.org/r/20250704-615-v3-0-6c384e0470f2@oss.qualcomm.com

Changes in v3:
- Formatting: adjust layout based on reviewer feedback.
- Fix DT checking warnings.
- Link to v2:
  https://lore.kernel.org/r/20250625-qcs615-v2-0-0f1899647b36@oss.qualcomm.com

Changes in V2:
- Correct the version metadata of the previous patch.
- Separate the modifications to the DTS and DTSI files into different
  commits.
- Formatting: adjust layout based on reviewer feedback.
- Updated the email address.
- Link to v1:
  https://lore.kernel.org/all/20241203060318.1750927-1-quic_yuzha@quicinc.com/

Signed-off-by: Yu Zhang (Yuriy) <yu.zhang@oss.qualcomm.com>
---
Yu Zhang(Yuriy) (2):
      arm64: dts: qcom: qcs615: add a PCIe port for WLAN
      arm64: dts: qcom: qcs615-ride: add WiFi/BT nodes

 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 135 +++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/qcs615.dtsi     |   9 +++
 2 files changed, 144 insertions(+)
---
base-commit: 8d6c58332c7a8ba025fcfa76888b6c37dbce9633
change-id: 20250704-615-21c25118e919
prerequisite-message-id: <20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com>
prerequisite-patch-id: 37d5ab98a6918dba98ef8fd7e6c91ab98aace170
prerequisite-patch-id: 1693faa1e23bbb0a37d4fb9cbe13e5dd43148ce8
prerequisite-patch-id: efa688b2ddd5744df7aef40182787ee4ceb90c98

Best regards,
-- 
Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>


