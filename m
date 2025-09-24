Return-Path: <devicetree+bounces-220917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E79B4B9C795
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:17:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5EA71161641
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:17:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99ADF2C234E;
	Wed, 24 Sep 2025 23:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UO1djkn5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE75829AAF3
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758755773; cv=none; b=UKtD19LdQospN0Rfz9BpeImww6bK223ArbbxZFbL/9erHNbFkf+02mr/x6njHvlTgB1jDyx8OQgCV2qVK/gp+7zJrM4ew2dnhHHJZdXGPSNy55PLZrClTtULDYmoAXBIRHDiO3alQ0QXrszhAuS2TlgNOSLKTwE263O7wxjg9cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758755773; c=relaxed/simple;
	bh=ivlwUUQlmRNXZlh7F+6fYULgHiWE/9fkPiEhxumB3rQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=t7mgq6ztG9q2wD43QLynG0CKxcsikZ+N4PXggKAALhb5DtoE+P764HzlWW84A4A4+KB6vVUoBMQ/yNurdmez4d4k7bGYSwTebIV2eCKJe3gc1154GMMNEDJdS+cpTw08P82Ree4uDFNR2EPOqTfYdWbDpMbDy7uCY2MnVtNQEFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UO1djkn5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCTQLP017434
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:16:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=wTJiF4BIPwE/2c1eTUxFT0
	H6zXGwpZWLXUqTjd5z6pg=; b=UO1djkn538dFcbyhVvFC5DZEYy/t3S/yvEa+Ta
	nzEx+tVehw60gbo/6pRY6yt5vuFwHJRpmAxTuwCoqOwcRaMAhSeBZSqQTXs3OLBb
	VvOhtih9uqtaqT98375KmIrLEkr2CihZhsWhB1IIiaiqi1CO+7IR8o6wtoOgFOSy
	aVEunlcQqZYBoPb36fCEYuSSbn6vAYF0ctdq3JTYp/Vi4F0Udqi5h7k0k382pVnl
	DH8JCi+9slkSGnYl5A/WiqPKvA8vVukpIZdE6gPWoTiFsA2YxyG7i4fFNVFqTpUx
	VrFMVlbE6VF0Ba8LfR/Ip2k9QiOqsolzfFqTGXRlePO1OnMw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjyb72-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:16:11 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77f2191717fso253421b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:16:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758755770; x=1759360570;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wTJiF4BIPwE/2c1eTUxFT0H6zXGwpZWLXUqTjd5z6pg=;
        b=Ybal2AVeQWFPFVnuzx5I/pYRQEQWivJR/1cK8jWYnI5c6nE9c5Z8543BnSUiU22ouB
         qvJmfE4r0lfmR0kfi1sKn0wVRfnlx+lMHXMKqcQ+gbllGxosF/I6hbm6UYXseP8MiOGR
         PTh6t98tnat1iw7rOU0GdythNIv9JE6ViUPEhL4ZN6R4JyldaH9NkclZrNjYebgTHCdr
         O370Vbd8MmK5Wt8Qsx/ULs52sweK29tM8iluOclPNwu7cvba2adY72Pv/8+3WZplE4E1
         M43W2KNwcOFfazapfZpBo/OyRa4sFmD+Y5AYTk5nZYtrkjjlOn0aB1XKwH4A28rA8XeM
         Ji/g==
X-Forwarded-Encrypted: i=1; AJvYcCXwb/D5+V9wIlYDYJOB29jW/bATQw4r+KfQCNXlFDccVI2yn2iyxGlS/afrLl6SBlQDWgk0eWJpShnQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzYO3d2RN8UarK8LZdTdNibTyc8erU1dB2Azn0Ln38XA3W4q2vO
	zeGc+pk1vKU8GbPqlhz5Hok1o8ZAH5kTA70t1Ufzs2QGondWWl9I1T85UTUw/zrQ+lf9wXHSgyF
	g7p3YOUtTU0PYh7/5g/RU3EMCQzMMUgqlBMWIr0tMU76c4LVg/xAwzNijQ2HVdSkL
X-Gm-Gg: ASbGncteP4qdlponGeA63PXS73A6YmtY36QSJ3+/8N0XmarF+/Dp4VcPKZpP95C9rah
	kgcyutpnypL7q9qKGwADeWORfIkCkKTAqRISBnztvcxMRuib4h/1mWTN86TLgZfeXUkKJxDO/Fe
	gyS8/Nmg/L/Dn0jXpAL39R3AdlEt6d9GcPjz8mQGJFFsT/3untPgCQP2DjkKtR0kXNPV9EmiZg6
	aT5P3a0B8o+bpu91A/jbhtmyPcHaIyVSsyZbjxDVnSYOEpErgG++on77hh9PNCpPmvcTITQ+pWU
	o9KedcmPBlI8Bqww67tZMbFTltpK+m1wTpJ/w6dbH5eEBwuBd1yK7/LopA0g0Vz/5SNeyHUCpGM
	dQkh+x8mN6rKCAKA=
X-Received: by 2002:a05:6a00:3917:b0:77f:472b:bc73 with SMTP id d2e1a72fcca58-780fcdc7f7amr1729481b3a.6.1758755770075;
        Wed, 24 Sep 2025 16:16:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+6K/1ZFPyR/zAwkK0azv8gcDU7cAcbMQSe3Bc31YPHGam1kxpHhJxChPuGrl7oC0rfnontw==
X-Received: by 2002:a05:6a00:3917:b0:77f:472b:bc73 with SMTP id d2e1a72fcca58-780fcdc7f7amr1729460b3a.6.1758755769659;
        Wed, 24 Sep 2025 16:16:09 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102c27686sm144845b3a.96.2025.09.24.16.16.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:16:09 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/2] pinctrl: qcom: Introduce Pinctrl for Kaanapali
Date: Wed, 24 Sep 2025 16:16:02 -0700
Message-Id: <20250924-knp-tlmm-v1-0-acabb59ae48c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALJ71GgC/x3M0QqDMAxA0V+RPC/QCkXcr8geokvXsLVKIjIQ/
 93q44HL3cFYhQ2ezQ7Km5jMpcI/GpgSlQ+jvKuhdW1wve/wWxZcfzmjc32MkUKgwFDzRTnK/14
 Nr+qRjHFUKlO6BplsZYXjOAEsexcWcwAAAA==
To: Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758755768; l=769;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=ivlwUUQlmRNXZlh7F+6fYULgHiWE/9fkPiEhxumB3rQ=;
 b=/G3wgQ4QYN4y/BRvhzhGFePmtWPvBXmc43/t/mFWyQxQdB1XEtMwNHtqxJgw/bMdUHyC7v7bw
 Tk3WuLolbEEC0M+kbTG8Mr59QbBhD6CvoK1JxyYn0aECaGLnwhpleDB
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: ET6ZM6FG5LxtjrF3_JHs7YAzlwEHiNAD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX6plHp4M2aYiT
 /pEkvIBvELjPkpXeyJKcXaz769kK6f/xTyNzKvGNXOecuWn3ZN+zJNXog7+TanIC5pRrW4F5U7/
 56Plr72haEe+I/h+T8mQCrKWXmbK6H/1tn/7PmbjxVXFesHTUIIfGJt9ukz/9PZjz23QcADBoC4
 tTx/vetTzuk7GSW0QadLn3MGeMLOPrytS5RTz24UIpdDn/I8ADIA+XHNzO5q+piixQFN9T/vYwW
 ud9ieP1gZyyzEJ7w7YgzpvoCzOAhr426UEE4L4Osr2ZT3Qf1EUR7tJSYao4GKsS96UGu3SZ8Qnp
 KQORr3/gwBucZiVDAj7/J6W7QW5Njckh3BcCHYD5kUPH3o+4DHYOFKlcgyq5eMNqPon89t5QWWH
 /I672Xtm
X-Proofpoint-GUID: ET6ZM6FG5LxtjrF3_JHs7YAzlwEHiNAD
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d47bbb cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=0wRmexETLPsNm1jg2zQA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

Introduce Top Level Mode Multiplexer dt-binding and driver for Qualcomm
Kaanapali SoC.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Jingyi Wang (2):
      dt-bindings: pinctrl: describe Kaanapali TLMM
      pinctrl: qcom: add the tlmm driver for Kaanapali platforms

 .../bindings/pinctrl/qcom,kaanapali-tlmm.yaml      |  127 ++
 drivers/pinctrl/qcom/Kconfig.msm                   |    8 +
 drivers/pinctrl/qcom/Makefile                      |    1 +
 drivers/pinctrl/qcom/pinctrl-kaanapali.c           | 1803 ++++++++++++++++++++
 4 files changed, 1939 insertions(+)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250917-knp-tlmm-009fffa55a5e

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


