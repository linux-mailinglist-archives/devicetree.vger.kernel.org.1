Return-Path: <devicetree+bounces-199921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FB1B12E97
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 10:31:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5423A7AD925
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 08:30:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F5C01DE3DC;
	Sun, 27 Jul 2025 08:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cQblERF6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147081B85FD
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 08:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753605108; cv=none; b=RRklDS6ed1k/0r0e145CYHyUrz6SHJO2bUXsMuZJ179iTQ6oaKuEkrjmTFfeYGb8SSPmRZYbbyP2id4JLr0GNSmwsGOq1b+L5LSXn0OEL2ReAcZum/D4uzqqmFqeoVsCRIMuzkgPmk/uT26+3BMfDXhfvYXrax5SQSySL+PXRKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753605108; c=relaxed/simple;
	bh=mOh9JSF12KAgNeLKrysjhxC4RG1o5eujRw6xxWhT4tc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=eaKc+iupNMEcLp4QUcivjttjR0K6cNWTe57UKvWPh8vdongqT73ZS0TzJYadMiPgYL08fFJRe3PmSEivjtPokWrqm0wbWK78ZWcqtBWHApAtRzCGmn3vn6kebZ9ELEhn2UkMb9RTTytP5tXgER3WJG1hn1n2NUkhE8+CxENdjkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cQblERF6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56R6g704001815
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 08:31:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=UkkP+2zoex5kty2tl/9eEmLK71LbBAa/yiJ
	a2uZkD3s=; b=cQblERF6eM4d3QW3HnNX+BbnCrxZ1QbkggD7Ruw88RdJKXlGG1O
	jQ/as5ItS8lrVe4iMPtqOF9g1aWDdDo7EcsVAFfflWudQzLTz43j72+uz2ABYuOi
	c9mTtQQJR7mG5ZlrmNtNiLfBT591Jvkg/jM3ZcFQSRmAlWzBZHjRgvSTvhEkNZTG
	jf+MBF+GxhFa7LHgXEk3qBwUIXp3W4Muve6BHKeWXKi6D4F0B9W40O2AyHvtzbZF
	GpHFcXSAOxFOeBTtRwx4+xvx0cSvJg+S7nP/pS0m3ZBJm0EuK/dIkNUC5n+3qZ9k
	dRSSnWz2CwDb8bKauoFXEkpWhHsT07kc8RA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484r6qhs9p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 08:31:46 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-237f8d64263so35124075ad.1
        for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 01:31:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753605105; x=1754209905;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UkkP+2zoex5kty2tl/9eEmLK71LbBAa/yiJa2uZkD3s=;
        b=haHJH5XdBSZ6tpiuZIv+sPtlBRpPLXF2DjnYdfOF4CDToIYfrdXUZQ91duBcPYw9q6
         x4cKQx4AJiwAnx2sH4A4FPJTpbsPVV/zAN6GqCki76sGuKyVofX84Byd4+R6u+SL2Tb0
         SEIAg/3l/ZX7jrMwolOjUcPq13n5QI8xFgZ8dHhklZrVCGL17x7JFFZf5Y8kYDF6T8KB
         j7c2hyW7j5nE+qooV1gUKKwu08E6roq2VjO24xy9hOYQLSadJGkKcnrVCItkaTcygDvD
         y2ckBnZJMiN6uwPt1/hq1DrPA9y7l5q0aCMfqs0SCixrN3vDUts4XMkNgLRGRvc6y15h
         Yh1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWcEIOGMYyavejMrgSqaioifg6za8itCrFCIK1E1r9P46vKpreyzaYQHzmsaJQGBsGj37Fva5CUniIF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+5DzxtujW7iudMU6UhnNqR6BxrQuU4D8b/Sg2YawZuE1zz4kC
	UmHKFNoHKrLCeoxHj706yERk88TluTX8Pi24j7H3r9l3Qsjky6LB9nF7uBGmeVPGTG3NUMQmk0L
	Gu4Ykz0BKOs+64xirOonvcrhngchzhxq2KUWaJQE0B6+Vk1kphyWWvKFso7bsJ+5K
X-Gm-Gg: ASbGncvr5xBnqPrdCA8Peq0t91F/lnztTSoSmc+eTLVBwvPaQBGIK/HZ7MMAtDUfcHa
	R/lcB8OmTwK7mN+fTTv97bymgN6O6Ks1/GuyUlW5hs9ISsV0i9b8NzOCUn++a6ADiDovTXsWbEi
	xvmvUm64G2I5wZR1Cmh9jjsA0OsBTVaGaueEjCcRtpGzZ6x53MdDorTBFZ7d6lvQIkMRb73QL7l
	qVPGdiAyL18Zjcggs5cw9CH0ptW9PQp3vU1lkZ9uWrfSruzigWcKTcXNwb61L3HJI1groDiVfd1
	+HCPuH4NGaFB5QufXUq/ax3N0h8TJY+CwgnUibpnC75hXO+VPuPR6LbeJaSfEdCHB60xKFi6f1q
	O
X-Received: by 2002:a17:903:46c8:b0:235:f3e6:4680 with SMTP id d9443c01a7336-23fb308523emr119243905ad.21.1753605105121;
        Sun, 27 Jul 2025 01:31:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEalG+mHbRKTRUIQDZWr2gEWXxh0RMJdEPGdsr5c2OukHXnD+E8VZ1SQE45YkaP4nrQTj3/Yw==
X-Received: by 2002:a17:903:46c8:b0:235:f3e6:4680 with SMTP id d9443c01a7336-23fb308523emr119243535ad.21.1753605104705;
        Sun, 27 Jul 2025 01:31:44 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2401866c2c3sm2848645ad.30.2025.07.27.01.31.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jul 2025 01:31:44 -0700 (PDT)
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
Subject: [PATCH v3 0/3] Handle shared reset GPIO for WSA883x speakers
Date: Sun, 27 Jul 2025 14:01:14 +0530
Message-Id: <20250727083117.2415725-1-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI3MDA3MCBTYWx0ZWRfX6xLxi3ctJ30t
 xIrSy82RhHGLWCAxKL0ifLXmMcwuO4UlflconRGJ/Bp/wXcUzzL2OaD4t3SeMBlDYPTnIjxTgUT
 MbniNxUA40AL9bKB3jWoyw0XC/xcxFBcfkG5k9aS5s8S9U1J1trJJNLHLJRed71Vq3jgX7rj613
 i3yAk8vOt1whN8tA+EvUjs3HrLV5keWfhh7Yq96sf/TFIX56UGzYzgRQh1ooYvQbRI0fPtepaLX
 N2/McK4M/CaIb/M33kTZ9sHy1sujkSz8lKReRT7Cex3RV+QSYYnLCeMTgzzkNsysTXHukjEbqpT
 YjJrztk8gIN7evKv+bkcsaUsEACoSgIQSGMI9nsfIk1anwRRh97CrSLefRVP0dq829SzhqETMto
 eXiLHAE5UtuR4TQcaWKbQl8UDaZoVWQyeAK0GfuOfAdmgvwbshcmaOamwu132EtaMyg+zy6Y
X-Proofpoint-ORIG-GUID: gfEaaalhga9vA4sDlZ4Jj8y9Oa_emfPP
X-Authority-Analysis: v=2.4 cv=ea89f6EH c=1 sm=1 tr=0 ts=6885e3f2 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=4I2HGNnryxoGv6TmyWEA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: gfEaaalhga9vA4sDlZ4Jj8y9Oa_emfPP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-27_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 spamscore=0 mlxlogscore=723 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507270070

On some Qualcomm platforms such as QCS6490-RB3Gen2, the multiple
WSA8830/WSA8835 speakers share a common reset (shutdown) GPIO.
To handle such cases, use the reset controller framework along with the
"reset-gpio" driver.

Add devm action to safely disable regulator on device removal to
prevent potential warnings from _regulator_put() during device
removal

Tested on:
	- QCS6490-RB3Gen2

changes in [v3]:
	- Created separate patch for devm action to safely disable
	  regulator.
	- cleanup the v2-0002 patch.
	- Link to V2: https://lore.kernel.org/linux-sound/20250718104628.3732645-1-mohammad.rafi.shaik@oss.qualcomm.com/

changes in [v2]:
	- Addressed the review comments from Krzysztof, Dmitry, Philipp.
	- Used devm_reset_control_get_optional_shared_deasserted() api.
	- created deasserts/asserts functions to handle reset gpios.
	- Register devm action to safely disable the regulator on device removal.
	- Link to V1: https://lore.kernel.org/linux-sound/20250620103012.360794-1-mohammad.rafi.shaik@oss.qualcomm.com/	

Mohammad Rafi Shaik (3):
  ASoC: dt-bindings: qcom,wsa8830: Add reset-gpios for shared line
  ASoC: codecs: wsa883x: Add devm action to safely disable regulator on
    device removal
  ASoC: codecs: wsa883x: Handle shared reset GPIO for WSA883x speakers

 .../bindings/sound/qcom,wsa883x.yaml          | 11 ++-
 sound/soc/codecs/wsa883x.c                    | 93 ++++++++++++++-----
 2 files changed, 81 insertions(+), 23 deletions(-)


base-commit: d7af19298454ed155f5cf67201a70f5cf836c842
-- 
2.34.1


