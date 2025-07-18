Return-Path: <devicetree+bounces-197653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D3320B0A0F1
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 12:47:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 979CD3BCB6E
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 10:46:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7827629552A;
	Fri, 18 Jul 2025 10:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N2Km+4oP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D044729B78C
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 10:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752835613; cv=none; b=awf7owV9qe48yShcTm/mwNYLVS0KTMoTif+AwyG/74/GtFkFeGReSXfUYLfSs+dzS3QhH5MREt0GZDsS0Qr+n3+FhjaggAr0Kok5Wp0nIBc54zTsmpQ6BbOGLFBQ0sVfaT4Z3DUKmnMoT06i3XYz0EMU2ov2yG1fC2H6pXwjXsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752835613; c=relaxed/simple;
	bh=ZCzgqQ5wClK+CpOspY0xkNzERE+nZ0OAJ4Bui5yuNYE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aAiXyPdrzXZ8sbof+DSDOYzbjK+HDTC6Q2vnqrNv+83sjzRCQOGDrZRiWe0ZRnbGN+bHqKwfvHXljzZT338xF3h7tVqW9nc99rjDj930aORVhRpAPdnOVxRSUq2R0em8b+gVOIy7AgyMa/eeDgdYmxbBLVH45NIysZ2qTUjZ0aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N2Km+4oP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I70LbU022251
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 10:46:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Ii7gkbQDsBKlsIJbbjCqaJyes15tBplO58P
	17UvUF84=; b=N2Km+4oPwfjpujrdM2mZ5jUpTNJuE0rWP6QSfUbBFuau6XKkLwc
	nG8KQ16CcGbpEwVptjno9cwKyk40YkDjgQzExwu6MW4qCarwbhABvOOPojVwlZnQ
	ieuOtDe+98BL78x58lW1NdVexVM8XB/hWzpqfaYt1KWyECZfUPrpXqifqPghOovU
	8+VER+xCszmMJXwaNR46NW0a9yjc4znlpLnlq0JbjnM1/mXYkn9WyRsRJon32m4W
	8FvFBfIN08vHnpp9l8LrhaP/oKBmQsJQvdphm6YSvmc7oyae5hkJtXmDiT5F10jU
	Fr9sChhiYHn5p1S4wSvfZKZ/6nchUY4l1Dg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wqsyb6r4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 10:46:51 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-74d15d90cdbso1983962b3a.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 03:46:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752835610; x=1753440410;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ii7gkbQDsBKlsIJbbjCqaJyes15tBplO58P17UvUF84=;
        b=L9EIL8qPjpR539njINGvCB2A+RsTAAUjgZ6QLGe+9AasKPubc+ErLSjR0hp5XFk7Gz
         eJg0pLYc2ae/uxD701dAiYwdQgRCppdzNSSZQAaSSg3BUjfIJQoQUQat9auZtSjsUaif
         GR0SY/i8sq+Z1XLHE2K2mT7oznNAieXUpvvkOv0onjqx9WaSHthB3BmUJVP2dfQvsaw5
         SYZ3iYKecdyYpfVM201q8Ez1c7FdwE2dvV3NmuKbo/AhHE3tPCCoOZ0Z4dv+B1GXgv3k
         QXOzfVfi7+VI70WZTRcX1Xs9qEzxENR6pWZiRBb74NQiiD1tr4d23XdfcbbA1RMn1+XE
         Efyg==
X-Forwarded-Encrypted: i=1; AJvYcCU43vkHbDbfPXEYhTrfQaXr/9RPZuyf315r6Q/Lwko4klbIUOpYhKfYby9REcBWf8xgHuhQXt4XnR8b@vger.kernel.org
X-Gm-Message-State: AOJu0YzHCDmCsyhB7yIs5SHaGHwywaBB112scBysgGyoF+nyWhG4evFI
	mDXEp7jJIViz5j+f6SYL1aRr87iGHIUVRr1lToC5DwwCxksE2uJ5o32bvhsW8YqbsO06CAUxvUh
	59+3zE8Rxf3wjkchDRX61f0eb6IVZifawLcgKjqUHa1PxdViHVa+W4sxeaM2Cc/Ix
X-Gm-Gg: ASbGnctQbweqrz5bzSFmjlhk4d6eo/opki6RwOAwJA0ezXdu+UU5ds5jQ7H2qsA7a5T
	c0OO7/RjJO0KqL5UYi8ETYTKl+px9OxUZjQZCbL1DhxAaCD0cf+u2DqRNwDAiivNcEUAA836Ury
	R8cc8+tWYyuzxEarkRtR6uobiwGeZfxOsZrFr2Zw9OOMYvAdjST2KLJbON6hkxsSdLfVVzrunbu
	BrPOL0mp0jwhZNfu5st6ARl4S9CeB5+6RyUOEoaOSgMWuMa/sCfCC5t0gZaXwhqkKHH1Wpc+CLq
	Eh4D/zv4SyjfOZlPmgYhwQlbzr8BcPaUGkUAjv3i0BIMO/WHHvP2O5eTgwqJRNKx9x+Dgu5/52b
	z
X-Received: by 2002:a05:6a21:648d:b0:231:6ba:881c with SMTP id adf61e73a8af0-23811d5b72fmr13279537637.6.1752835609907;
        Fri, 18 Jul 2025 03:46:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+oIQZv7zeP2XrajyPNGsv0HOcYRrzrBPX4o99YzxCFVD8DkN7dyHzSjoLscfcsLRkcELSfw==
X-Received: by 2002:a05:6a21:648d:b0:231:6ba:881c with SMTP id adf61e73a8af0-23811d5b72fmr13279503637.6.1752835609468;
        Fri, 18 Jul 2025 03:46:49 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759cb678cdbsm1028989b3a.108.2025.07.18.03.46.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 03:46:49 -0700 (PDT)
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
Subject: [PATCH v2 0/2] Handle shared reset GPIO for WSA883x speakers
Date: Fri, 18 Jul 2025 16:16:26 +0530
Message-Id: <20250718104628.3732645-1-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDA4MyBTYWx0ZWRfXwNbvynsOMY9B
 62sd2+Znj/JxdCAuJt56DKOCemlJdZF69VHmeGPWMu/fk7CniY3kP78uQuQzV4eMbyCxkSvhKeT
 WjQtcfHUfrUfWTehhHXU7oPu4BWjgL4C9zYQblA1nLu9d772g9p7hbqA71zwfRzemmFPukaxYtv
 C3f50v2U9zD/OgLfO2GyEcsnViK/d34TceF1qxY3+bCNP2TueyyVU2PaRP1c1dZkYizGNpqz2Cg
 II4EIlU3PDTzYtGHZ5jnED1VLIVMIZVTMPy5OQtoFuRebcJVqWdXfo8l9GCO6HZ01N1Q0bhYoUX
 0X30JATldDxefEXLj5xCkXFh9RbX+VxfIee8mc+NJqXwex3temld3Gip5Wm+dwJEiCC2if8RVwa
 clhFaonHG13AelijWNkcXhX09RmUqZph83Z4KdNyvZrbtnTenih9M6QcZ1Mb9ywGMEV3n3Y9
X-Proofpoint-GUID: KBAehrZvUvrlYZNY--YTNJPNYGERIRDM
X-Proofpoint-ORIG-GUID: KBAehrZvUvrlYZNY--YTNJPNYGERIRDM
X-Authority-Analysis: v=2.4 cv=McZsu4/f c=1 sm=1 tr=0 ts=687a261b cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=sKMTf-CTBu6bTl4tlAcA:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_02,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=888 impostorscore=0 mlxscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180083

On some Qualcomm platforms such as QCS6490-RB3Gen2, the multiple
WSA8830/WSA8835 speakers share a common reset (shutdown) GPIO.
To handle such cases, use the reset controller framework along with the
"reset-gpio" driver.

Tested on:
	- QCS6490-RB3Gen2

changes in [v2]:
	- Addressed the review comments from Krzysztof, Dmitry, Philipp.
	- Used devm_reset_control_get_optional_shared_deasserted() api.
	- created deasserts/asserts functions to handle reset gpios.
	- Register devm action to safely disable the regulator on device removal.
	- Link to V1: https://lore.kernel.org/linux-sound/20250620103012.360794-1-mohammad.rafi.shaik@oss.qualcomm.com/
	

Mohammad Rafi Shaik (2):
  ASoC: dt-bindings: qcom,wsa8830: Add reset-gpios for shared line
  ASoC: codecs: wsa883x: Handle shared reset GPIO for WSA883x speakers

 .../bindings/sound/qcom,wsa883x.yaml          | 11 ++-
 sound/soc/codecs/wsa883x.c                    | 93 ++++++++++++++-----
 2 files changed, 81 insertions(+), 23 deletions(-)


base-commit: e8352908bdcd2d0bcf0aca8c69fae85fd5ea5edb
-- 
2.34.1


