Return-Path: <devicetree+bounces-221007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFBFB9CC67
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:03:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09D0C4A0CED
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D56F44317D;
	Thu, 25 Sep 2025 00:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NHjGhZkr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60A21367
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758758580; cv=none; b=rhcYzc/WT6UrdPagsd42tZBavEaPF8KEGfT6gtw7W2InRU5hSKcZZSV1Mg8QmAxWWi7lZjqHIiJVwxGhTukbKxvom0hZIUR0llg4n14iNzPa6Tto/yqBdjp2oBDeHuStcwyIpwD5XZJUf58Y+eg6ROYhVSz1fp85u9bjaai+2UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758758580; c=relaxed/simple;
	bh=WBOdnGCqtO8/DJkdBoR28EHJL+lRE3iOJ/Mmmvw684U=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=XDt6nvtTabID6KJYqf8QQyU0eJQa8wevuZxH1KOVVpeQWybyDXWD8KsyacyEYez5uPgfSeNXJTZOZsVuaS1i3O9WOb8k4GW6u2h/LrfwyusrYVOk4lCiauGBkCoRFwuzCQ4M+3Wu3G0uZ/fdjwR4yLQ+XqlzfGFqtGqrHXwrVgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NHjGhZkr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD4AKR002118
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:02:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=FVDJLdbn7C6FBvhh2FmnyA
	hinN5l1LuKxaCC0VoE73I=; b=NHjGhZkrpyzFeyJAR43y0NKgVD/KJ8vyVnwa+C
	GVVC7JOBE1gTnYtrsY8t9Qgw8hGXUAFue2bJ36crMqBgt25ccZakEA35hNSftrPe
	LS5VBLPPOaFolDjcfLrlKDbbIKohOI64g3hMRtO9Duypgr4aMv87mMiCV5zrw5rd
	HYKygtEErPrg0GwWDZAfHXK59OY3Yybx8GL2sb9tgqyBbkzEM22fYzB87LcjY6NC
	i9nJkSgNVkrxeinZyCjUFk6jUvOpY9RPSp+myPdiNQ8ARwYOwbutlm2TU2yR2OEY
	sQfsFr56fsWvVjSwajYMTbA1QLj4Fj2ARd9ee6YR3oWklweg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98p4hm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:02:57 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32eb2b284e4so521061a91.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:02:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758758577; x=1759363377;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FVDJLdbn7C6FBvhh2FmnyAhinN5l1LuKxaCC0VoE73I=;
        b=TpCXRQnW4Am2gvYDVMNVqHQCl1/w+A2Y/ioCM4yBSmEjWnY19Ci1WkURWSIeoofYMW
         QPtPaYasZgZnpvlbt4AVU/sVRgsxBcM3Mdn0nL0dKwGerNmz3Xc/DVxpI6KothmLqg9e
         yTgpDs5cq2Kg99kh8Y4+DPieMqwyJ9Z+XFR+Bern+TyULR0iKAJYR77vv5VfSxIzvjgH
         lo9gPcVp/1EeQ7zdng2HcMkwFDLY8lDUO3Tu1xswulrm+SSrrg6UxoMQkgEIGAO2P2Ts
         oRHxxcr3uRkuY/Iw2a3EeNO5dQ1ax6CjLRp0kG6fsKTJEOMrdsxj+FKiUTPdpCrNLkwc
         mLGA==
X-Forwarded-Encrypted: i=1; AJvYcCV5HEJG0xqz/oQpsn0YUsJO0APv8/t/KQPIpauBpuAizjpqMd4nooszct1cgpuOInsfJIlqvQTDjn/P@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/wJixx3l+ClWI+VdsLdNylTYTcjgVClCofTEEXYavFdrVKgFp
	fxMf1Hzurj2brjH0EQlOtBB3335q/Rqwiqr/tCE02MPLd5x1F1x9vR26kA5SYWSSZ79bSaOCVl7
	Mws0MoGW6vmRoWWQ6Tgy5XV7oBF7RQ2vJY6hFM1pkfiA/pdCzoQhrAb76fl4gPNIu
X-Gm-Gg: ASbGncu/BaE/I+H6bDaUFL0zZD88ZJ+ORj0OF+7Yg+BjfF2APKlJp++laJd8E7cVJ9n
	mCQSxqoZQeU4Yrjpg4aXb2IMGSHmJsf9SgCP1fqzk1ruogBQXOyewf2mwPMOVKCQbA0FSgR3eJ4
	8j7XEXkqojWb2MbjjyIsrp2dhScRi4vUTGRWPrGpGFZkmvwtUAR2qgtq7mCn+R0uSF8GSjE8s6z
	wXZy9DUXLQ2JODnHfuQyE1CdWJpgazyg0JXhiacNavUrKdlLYT0GLaDkdQGwoqPhnmYNG0CRcZT
	24siCsFF+cLsmCkswX1FNd9bnXJCtTmUJeIf1woGH3lHkssC02jav5o+dvFRpus3/GVEZHYcI9A
	YVrcF+9UI76l5ofU=
X-Received: by 2002:a17:902:e88d:b0:263:b8f:77dd with SMTP id d9443c01a7336-27ed4a5ec57mr16017055ad.57.1758758576434;
        Wed, 24 Sep 2025 17:02:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDia2gmtmkvCVOrNQm+dLiZu+nms2zkdbZoHc/NFzjpKjXRmJZ2zf89NbxCNarVMVoCxn2Qg==
X-Received: by 2002:a17:902:e88d:b0:263:b8f:77dd with SMTP id d9443c01a7336-27ed4a5ec57mr16016615ad.57.1758758576011;
        Wed, 24 Sep 2025 17:02:56 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6715f0esm4807215ad.52.2025.09.24.17.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:02:55 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/6] media: qcom: camss: Add Kaanapali support
Date: Wed, 24 Sep 2025 17:02:47 -0700
Message-Id: <20250924-knp-cam-v1-0-b72d6deea054@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKeG1GgC/x3MQQqDQAyF4atI1g2MsS7sVYqLOBNrKE4lKSKId
 3d0+cH/3g4upuLwqnYwWdX1lwvqRwVx4vwR1FQMFKgNHRF+84KRZ0xNktDKs6NmhFIvJqNu99O
 7Lx7YBQfjHKdrP7P/xeA4ToMmEEFyAAAA
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758758574; l=1899;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=WBOdnGCqtO8/DJkdBoR28EHJL+lRE3iOJ/Mmmvw684U=;
 b=r4eDTZd32hxHigyWyEa52AxJeKsEUWCWng3+hmyr9O8xR4vdHrn/0zAUu9fBaojanEFuQxsky
 Q071JVU2c8nDO1WcSYps9UiWc+7pL/dwA4h5x+vNynWx19+elT4mvly
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: Z_AkWSFuLWZwMFrZSvuyC81cIS1-KRDn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXwFvSd5WfIxAL
 p2HUEztjn5qjSxLLM+lzzaJ586jKtJ/e+nCQVI8ot5+OD1y3pX1zptbam5r610IEPSAq7IJgoqj
 jkYK3Eei8zH9gIOyeaGBqHiNpxohMyo7Q4yiTaYv8nevu1Y3DvAHk+8wVfVQCzA/Wfq7y0UMSwC
 YFR1cNtH3875pf0HVwY+mO/e1z6FHMrVF7qzbCLVge/aJLsSnFOhQsTRa5PGUtFiqFU0Li4TKLZ
 wOrqywBcAHtkrZPcblOg5522qkJEGBP1fMrdCfOHzNh47U4hlTEWp1YmUYR8i2QnjPyAmKiVi0c
 jOFDuqwK6rySDRg+94uU73d9P+VmYWRL6Sbuz1sOTaXxCJSryPulVa4FaWhn/IImtGIpMfJ3O00
 /oXjyOW/
X-Proofpoint-ORIG-GUID: Z_AkWSFuLWZwMFrZSvuyC81cIS1-KRDn
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d486b1 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=BuH3vWvutgcbvWnSHJkA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

Add support for the RDI only CAMSS camera driver on Kaanapali. Enabling
RDI path involves adding the support for a set of CSIPHY, CSID and TFE
modules, with each TFE having multiple RDI ports.

Kaanapali camera sub system provides

- 3 x VFE, 5 RDI per VFE
- 2 x VFE Lite, 4 RDI per VFE Lite
- 3 x CSID
- 2 x CSID Lite
- 6 x CSI PHY

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Hangxiang Ma (6):
      dt-bindings: i2c: qcom-cci: Document Kaanapali compatible
      dt-bindings: media: camss: Add qcom,kaanapali-camss binding
      media: qcom: camss: Add Kaanapali compatible camss driver
      media: qcom: camss: csiphy: Add support for v2.4.0 two-phase CSIPHY
      media: qcom: camss: csid: Add support for CSID 1080
      media: qcom: camss: vfe: Add support for VFE 1080

 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml      |  17 +
 .../bindings/media/qcom,kaanapali-camss.yaml       | 494 +++++++++++++++++++++
 drivers/media/platform/qcom/camss/Makefile         |   2 +
 .../media/platform/qcom/camss/camss-csid-1080.c    | 379 ++++++++++++++++
 .../media/platform/qcom/camss/camss-csid-1080.h    |  25 ++
 drivers/media/platform/qcom/camss/camss-csid.h     |   9 +-
 .../platform/qcom/camss/camss-csiphy-3ph-1-0.c     | 138 +++++-
 drivers/media/platform/qcom/camss/camss-csiphy.h   |   1 +
 drivers/media/platform/qcom/camss/camss-vfe-1080.c | 156 +++++++
 drivers/media/platform/qcom/camss/camss-vfe.c      |  15 +-
 drivers/media/platform/qcom/camss/camss-vfe.h      |   1 +
 drivers/media/platform/qcom/camss/camss.c          | 347 +++++++++++++++
 drivers/media/platform/qcom/camss/camss.h          |   2 +
 13 files changed, 1575 insertions(+), 11 deletions(-)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250922-knp-cam-d3de05e4923f

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


