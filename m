Return-Path: <devicetree+bounces-187871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAB4AE18D7
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 12:30:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D21E81BC11C8
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 10:30:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D5E82836A2;
	Fri, 20 Jun 2025 10:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AQk4H/53"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9DB11F130B
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750415436; cv=none; b=uHFdT10q5yk7GXgVPug/RIhadIqmJmYx2lJ7wuz/RlGc/g4VJr9q8NeXbdiH8OaO6tmKKJQs3ebtZdzv1FjrX931UyezNU8NvePnh0hz1505vdmeqEDafpGl1IMZn4K+bkMcamFggxNQoRrkfCNPAURIkSGmbKWSiie8YoJCHlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750415436; c=relaxed/simple;
	bh=sgC2Whj/3vbEMtngfmMQs476p3QnA1X+r6uPn3gJqi8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=dWCJMXzimE/03KMVQcOEwDwSh3nH3/lFtr49JwX1Qe5HXgm6LhkzE8SwL6FBT+QeM+xL3TuIzKTkRNWP9q6c9RHmjBYN9MwGEtNi8DoV4j2POsfAXVZvvfPb5/wWEeVRemSqkp1rnbGaSzlWIqtOMbQ+Pj7bhKTA2V33BnhcfTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AQk4H/53; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55K4VOq1017863
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 10:30:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=FbdfOeO0bVc+E5H6UtRtwG7+flUxUfZRFPi
	czgwcF5E=; b=AQk4H/53ukaLwBCaxJXHl4npS4D8ADrpNpOQP1P2Qa1DLDqW6/V
	dIt59WjYkF39/XIGD+zTUZ8gf3AY3Bf7UbQWhr0ndEEvmT4nGbz4dyvl3CmGOXKv
	H9cq5C2vLXUBLStG/Pa5OMyB8TbHmQBMOr9sDTYWzvROZo85jCu7wpuUq+eGU5M2
	I/05N2S9g9cdIo2NjqSa/VX25JEPZ/MYjDNNXHSPLyvBuQ/XVL4WTik4sUaw1O/4
	+NDP78Bq7vhE1QX2aUgajWDKdZEHrMQRbVpvECyIXZFiSRvh8p7PnCBAhzX87Ut9
	qSGqA/z88o5tIIU8g87hzPl6AGSoU1CPZkA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47d0pcgy0s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 10:30:34 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-747ddba7c90so1631597b3a.0
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 03:30:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750415433; x=1751020233;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FbdfOeO0bVc+E5H6UtRtwG7+flUxUfZRFPiczgwcF5E=;
        b=qA64k7mlbsy5NI+ld5rat8iPN22DZ8FkJrkR+mGiMSa01WS7CSEV1j4yCUbmIrMmAl
         SWOBNY9tbIub7/jiSCgG0Y80NdHnbt8XzsYnUNcC1VeVU1ObpeoKph8FGCpb6zNC1ehi
         rVwje8V986WB6Vktdh0Pffr3yJ19wtiQ96uW905bqildMkhb5DG/InxBZzpsXCvh0xKq
         tv2ENQSr1Kq94U04zgYFOBrw+fHTwvKQ2QhAUV9vN50WlMQ9Ee/xX7OeSI517bYWm4Xv
         +FJlLBHZCRvaFc74tQcWLKzzb2wTprGrZMsgB3VHUuDJ7Zt0FdDU4lKBEjy2g871H7iF
         UAkA==
X-Forwarded-Encrypted: i=1; AJvYcCVD8i4/sNYWEh8omisVwR9FvQ8oUYlvL+jiLLFOD2eeoEUCEygCknbwRxle6rLsDHE+HGXN9d+CcwsJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1BpNC5eLFd7DRR15W4Rfjw/lJCm9Il2k1TcF7TRu+gWDPFEWh
	s632jZ10stUUV2fjP0sA1bGEqWeJNw3xxB+VUOwSJEkLEujRvrw23hXqQAt9+Yu1zpeyF7U5bvm
	KGOSdjl6BBqLt1zEd2tF7Rmu1tEH2pnqRRmO+MAthNaMjfaLGtYHZpAXh9vLxwO3y
X-Gm-Gg: ASbGncukkf8sy2ini7Ql1z64r/islRufdAfmIllSezn8eZH9UxdijLSVgDCp6TKik7m
	oRz/jLqWahDLRd0aw/kSxiwZrwr+O2B/v4e+iSvQfi4j8ocCbVJBh2K46DGYUeTn5HpfU2gho1G
	UAV/q80gz1ybTQksroiUvVZqQVacB69TJKf1qfbrr1S/mnafmwDy3B5M8s+TSHOQsm0ZUuQkGgj
	Wlb80u4FPCR0Dxa4WRfW9pG21eBIeNO1ndei/gnbNymOYV5iRsdT7zj1iotsNR5d0S43uAhm6ZY
	jcZdIVRRnYfM/V/YvROo1QjeRGcHw7R9/Ol7eYxUF45Pv/3dYvpKrNwD7ZI=
X-Received: by 2002:a05:6a00:1903:b0:746:3025:6576 with SMTP id d2e1a72fcca58-7490d7603cemr3495646b3a.14.1750415433202;
        Fri, 20 Jun 2025 03:30:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJ/+4QqsS22JhshP0B6PhCXUoUSpqou6/RFBXaJnb7XCQOCglCYDgi5mhrBQ2/geb1J7USsg==
X-Received: by 2002:a05:6a00:1903:b0:746:3025:6576 with SMTP id d2e1a72fcca58-7490d7603cemr3495595b3a.14.1750415432767;
        Fri, 20 Jun 2025 03:30:32 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7490a69f3e2sm1651347b3a.159.2025.06.20.03.30.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 03:30:32 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
Subject: [PATCH v1 0/2] Handle shared reset GPIO for WSA883x speakers
Date: Fri, 20 Jun 2025 16:00:10 +0530
Message-Id: <20250620103012.360794-1-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: rCZ_v562CRlEEqSlYXY3rf8o64mSx9SG
X-Authority-Analysis: v=2.4 cv=YKyfyQGx c=1 sm=1 tr=0 ts=6855384a cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=6IFa9wvqVegA:10 a=_GLtVs1PZ0YSqw2nQxgA:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: rCZ_v562CRlEEqSlYXY3rf8o64mSx9SG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDA3NiBTYWx0ZWRfXzs/8DHQSmglh
 A6pvDEG5egRP2JipFqUWTcqfJVezQeXu+7nIWxo/FCZQrxev89K5JyRteVYH2xxMXQ41n+bcfaG
 ncAj4+wpeAsi1jiYGJCO1+heg5LN7ch73iOFzY4lIcLOuA+u0Sip1jnaWCiCZPcA3d4sstdZ+Y2
 G0pcL9gwJHBmvUWX+q3qvgTwLKp9KMnbA5yt7ZEaxC2f8SwHvHAiM2CNcL98yaH3D+l5MydNAn+
 Nweb1Im1Psor5+6RBZsqe4+tOYT8nneSrS4dozBOBLPQggph+fcKTOc+z9IulOhdOhqiNMPW5gf
 FJ+TCIKwFaahRVoeP34PwN40ynWfS/R4ymgg8LyebgGsW2jbxGyGOIhWuBYyKHbnTpuQ9NmvMpm
 VtXoksV54UKxZ8ngiFeunyTGRSygILzKIqdlBMYSm7n+xGQk5RQUYml5X4UIotzTnraNnz3r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_04,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 impostorscore=0 priorityscore=1501 mlxscore=0
 malwarescore=0 mlxlogscore=876 phishscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506200076

On some Qualcomm platforms, such as QCS6490-RB3Gen2 and QCM6490-IDP,
multiple WSA8830/WSA8835 speakers share a common reset (shutdown) GPIO.
To handle such cases, use the reset controller framework along with the
"reset-gpio" driver.

Tested on:
	- QCS6490-RB3Gen2
	- QCM6490-IDP

Mohammad Rafi Shaik (2):
  ASoC: dt-bindings: qcom,wsa8830: Add reset-gpios for shared line
  ASoC: codecs: wsa883x: Handle shared reset GPIO for WSA883x speakers

 .../bindings/sound/qcom,wsa883x.yaml          | 11 +++-
 sound/soc/codecs/wsa883x.c                    | 57 ++++++++++++++++---
 2 files changed, 58 insertions(+), 10 deletions(-)


base-commit: 2c923c845768a0f0e34b8161d70bc96525385782
-- 
2.34.1


