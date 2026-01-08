Return-Path: <devicetree+bounces-252928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC4BD0545E
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:58:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9CC9331FF41
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D95E12957B6;
	Thu,  8 Jan 2026 17:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XSzYZIxz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BBNceNAx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184A92882D3
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 17:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767891961; cv=none; b=sEWf2CdRaumLffRWiak6yBqqhhvVnHri08/mNaj0FHGi0QQb3MSLYy8XbToGjbZCV1HKZKKQkI0Ozz1hK1M760qfY19Rg1XBaj+2SUUMXSysTRwC6ivOCrY+k3ctN0Gg+xBwMqd1j83S8d/TMhKgUFcpjkfZhHVAqzdZHbzM/9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767891961; c=relaxed/simple;
	bh=ya6FNJc56bezIpiEzC8SzhEZ5ozdDIxIqC2RODiXuwc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=uhAE6eBG3p0rMZWzIxgGJ4a+9Td36ArcUu7uX0mpG7FxM56dt8VZBdtOI6HWDJxpF0n0HMmqroRmnDF6tUyIbB5/U7U0e77GLsuoBBf4GD73gxgIuQ9XCm4JXoRNjjq8qQORMctvFdU3Pac+MyzCVOEWSrrYy6YvsOjKhYMs20Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XSzYZIxz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BBNceNAx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608AiAR93701355
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 17:05:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=bNdrUBPzOWJfDd8RnafUYcDc3JUosbBw7eX
	THZ54Zq0=; b=XSzYZIxzeu5Noj0mMbGMKZqupZzAIF25zURXXmDKPCtm0yM94yI
	fSt5Xx912ZgEfCdmwii4tR5QWM+Cunz/GiWUNbO/Lm0MzkA/baUus3ORGPlfPCFO
	rqgdgPo8DVy1aUeHuuOErXJohMy/cJXedaetPhggDUsYStft27PvW7QpaqqW2cVc
	NsNRHS2tUsmGhMcnm9hSxoP0CTznkhCWq+uv0QY8Btu6AxBB8JpdwOcVv3WTr5uy
	GTnAlkWrOcxbBJ0/IKxYlEp0K5F6kzuOpLbnFXRrWLq+buo3e7saGJTg5yLpTpIL
	+9AfeaDJOad2RxruUHsoWzvCiJlZ2kjKa4g==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjb39s67d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 17:05:58 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-55d05bf6490so2811816e0c.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:05:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767891957; x=1768496757; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bNdrUBPzOWJfDd8RnafUYcDc3JUosbBw7eXTHZ54Zq0=;
        b=BBNceNAxbXzDfOaAjeiHN5KV9wPtoJrDYdUs7iRX3MSW30H96zEo0MVJ+QFYAbe6sX
         uq9XrPDc6vKybEwE5h7Opk9THXep9Pk18Lh/p0sTrjdnkPlGihdF0AXrq8nLTLc6BDfs
         Q/Jo987liWB9eCOlSTYIyBpbMhwvofvrCEghKypZVQcukwZrOEY9G6aIV9eU65cffX5D
         ViF1fb4JqmuQlgInBBEf0perHHtY3mDUTXKTv4umD+YfniEPcLSvch4Wht2GriYqSo8o
         +1vrLAd+sIv29W7nwrf9X9Lpuh+yDX8uoKe5X5AhcFff+iUwDQaUPmX2tePTcQSGRp7r
         6h0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767891957; x=1768496757;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bNdrUBPzOWJfDd8RnafUYcDc3JUosbBw7eXTHZ54Zq0=;
        b=OtjGMmwJl3h6v6m17RkXnN4pMkNBEhhPAzCx8BxYjoRnvtu0BbMVwyVmSC3EODvxIz
         cF7hyx+HFQJ7PL748/LKC48Z0rctRTwkmlg8tiZU019uOt3w71ew5UDzZVp0j+mpYiCS
         i15DLb4c3peazGu469fuVunnVM5JaMrHJFV15j705M2+jdwMNfjFcxIcs7OIvLHxg3Jp
         3FMUFzQYnR4RSei6Zu97NFbOEeYfMyHJPNiDnTdUzI9O6C9mjvo3Efe2GY/9lds3xVhK
         pygG2LUNpfVD2WvQNXVez2IF6B8RA1xWfuM1El7QryxJirdWShei42bXmztw320fUL6u
         pLSg==
X-Forwarded-Encrypted: i=1; AJvYcCUNElROJDTx9csArjsIGD46GksNlVQGYxtfvWI182Ax/D1oXBl2CdWKf62fYHELkUC7JmsflXdhJYPA@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ4RVCyqIAviXjxz9soMyCJkFVjdcB3oy3wuuBhWuvYUtzlpvt
	wF2cJIOinydLvd0Tw9WIH9Jn+qb0gX11mn+QMT7dNUEShE6yioTKjWIwmo1cKSBjOF4Fq6vhpjD
	ADdGmNTLDDVXwRE0M90xFtb7gvgJBkix7PvqeL3jQGhXET2ajlGgyiw8h/hpaE8F/
X-Gm-Gg: AY/fxX6Al4H13et3zgOD0D0G7N0+WsE8sTZawiFDP7zP/jO5LwvFnPLh+unMCwPaVbu
	Cc1NLJdZudY8EYXPDwHmKG4RN30JSnFerDMvV2cBbm8ew4x1J8SR1a2rXaWjSR91MH0uqkbK4mI
	RkAPkGE0nBWTWS1Zw0cxsBhz8OWhjYI/cNonjBAaruUqAT0k68SKqCWQrEbvUEY/wzIn3PmyLji
	fj4fE2snv7pQk0Sb82EvDAw04aHERv4Nlqyitv1R0RhI5l2no6ACrZ2GwWrU5g9sdHpTKmcNao5
	exCwxWKOT9m3TML8LcFkq1BHLlDVrM0d4mQcODiYfeKNyZGqH8l9265u9cOxz09e35qkckaDMeK
	ME1o1DYWIERi4B3J54kDBO9dlknRXF7AMMPfxmFVI+fg1D1hOgIA4qAtFx8QQ88v8//JnOx9WE6
	KC
X-Received: by 2002:a05:6122:31a5:b0:557:2551:7e9f with SMTP id 71dfb90a1353d-56347fc8cbcmr2111377e0c.14.1767891955861;
        Thu, 08 Jan 2026 09:05:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH7hLUzBxDZnma0HzfbOKgZSeKauV1CDq2LnADRaAs9bQCNyYBBa5pKpGui9SDrcFTvVaZROg==
X-Received: by 2002:a05:6122:31a5:b0:557:2551:7e9f with SMTP id 71dfb90a1353d-56347fc8cbcmr2111208e0c.14.1767891953964;
        Thu, 08 Jan 2026 09:05:53 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:211d:6051:c853:ae97])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a2cffb3sm856373466b.31.2026.01.08.09.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 09:05:53 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mchehab@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v4 0/3] Add QRB2210 RB1 vision mezzanine/kit support
Date: Thu,  8 Jan 2026 18:05:47 +0100
Message-Id: <20260108170550.359968-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: z_U4UZvx_lVq21YYK-dOO4tLjtRrx2Lh
X-Authority-Analysis: v=2.4 cv=X7Jf6WTe c=1 sm=1 tr=0 ts=695fe3f6 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gu6fZOg2AAAA:8
 a=hhlFAB9X3wEbsQVaBmMA:9 a=XD7yVLdPMpWraOa8Un9W:22 a=2RSlZUUhi9gRBrsHwhhZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDEyNiBTYWx0ZWRfX+uHRewFCk8bf
 RbeNQcTOI4mCkOQ26pEPrLWUa6n0XPlQPZuxwdfJn6zXQiy5NM4jFEpZaEOmygMaqjqBybYFWcV
 yKohJJYo46/7Bauo6E2poBUP77kU2LuM/KMby0QI67SOjYIErWQp6EIS2UJYw2rjpK5JVUxeous
 Zr0f4vpsenJ8El4fOHH1VKp98IXP6FLbl8Rwgq269jUdkxTC0gBN1Hg0yNXVX8GZ5L9rbaui2Hn
 r/O8A8uHTVCBJ2j2qny/+DL3u1WBvS0byo/n4ITFQRSC3bGOPPspT8a2BnEhFzgpUMgpBjBVaMN
 AVem9oPMVPnrX1Ie2MAOUytAojwfKiSOChqfKlfFWz5I4LUsnHTryZ4/65FMn6QBbVMHVF3zu7O
 0Ad0ExROPnznxpMeJw8bPsjtV4+66GhJzGFtNSMUSRbe7HFHizlFN81eOcZcYONJ7O0XYfzvEIf
 6seeQ9MOfcmTlapbf1g==
X-Proofpoint-ORIG-GUID: z_U4UZvx_lVq21YYK-dOO4tLjtRrx2Lh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 suspectscore=0 phishscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080126

This series enables initial camera functionality on QRB2210 RB1 with
Vision Mezzanine.It includes device tree updates for camera-related
components and a fix for the OV9282 sensor driver.

- Adds pinctrl configuration for the four camera master clocks (mclks).
- Adds the PM8008 camera PMIC node, which camera power management.
- Introduces an overlay enabling the Vision Mezzanine board with OV9282
  camera sensor support.

Changes in V4:
* Revert to using active-high polarity for reset, as discussed here:
https://marc.info/?l=devicetree&m=176711209404226
* Drop Konrad's review tag from patch 0003, as the reset polarity
was initially a concern.
* I did not reorder the mclk pinctrl entries by GPIO index because
other nodes do not follow this convention, making it difficult to
align without updating all nodes.

Changes in V3:
* Move mclk pinctrls to soc dtsi
* Ensure backward compatibility for ov9282 reset logic
* dts cleanup

Changes in V2:
* Use correct polarity for ov9282 pin
* Fix ov9282 reset pin logic
* Remove always-on from pm8008 regulators

Loic Poulain (3):
  arm64: dts: qcom: qcm2290: Add pin configuration for mclks
  arm64: dts: qcom: qrb2210-rb1: Add PM8008 node
  arm64: dts: qcom: qrb2210-rb1: Add overlay for vision mezzanine

 arch/arm64/boot/dts/qcom/Makefile             |  5 ++
 arch/arm64/boot/dts/qcom/agatti.dtsi          | 28 +++++++
 .../qcom/qrb2210-rb1-vision-mezzanine.dtso    | 66 ++++++++++++++++
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts      | 75 +++++++++++++++++++
 4 files changed, 174 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso

-- 
2.34.1


