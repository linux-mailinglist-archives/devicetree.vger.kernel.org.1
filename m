Return-Path: <devicetree+bounces-252819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4126AD02D5D
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:05:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7BB24300B91E
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 12:59:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A824E47200F;
	Thu,  8 Jan 2026 12:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BqyjAUZU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gM7+VL4S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132F447148E
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767876732; cv=none; b=fC1V2Bil/hjzCFxeGdFjSwC9ByJi05I5e6JNWb1SaFNTGtbGongn03Gv6iBiNDGBza0RowerwBUS6At+Q0tmWJEjFFfTv+dmu70WqiiJ0YLSWTAEAlXrseN8JozaRmmw2BnA3yG2sRSLZHaTvkP4w1m8SDcgetrjgKnu/CvfaaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767876732; c=relaxed/simple;
	bh=v+R2GyEEtLy/jrg6DaQ1HaFOQE6kRXDmQZsAdgSSTBA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=OUanQzq1lQzT/M3BOGn4bFZz0OlYCWtKsotldgI73PtGH8kVDnTrvyRPAv7C6pnZ6zIDdkom49/xhY7+fGNHFnyqEtVoJ3+Vmg6xD3EkAeLLwyl38B5/f1QwEPHxUdytcIZBJc3FXJMbWOilJyXtn9rWZZ721rELuRxVkKXhXO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BqyjAUZU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gM7+VL4S; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608BiHoW3751433
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 12:52:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=bRHVxDjLYahn82U9zuLx8+
	cgT5tO6EUiRW1cbfAHVoM=; b=BqyjAUZUeHnKpDWtMRo7NBsTqrk1Y7uPN5h/Ez
	X5dJjx++eCeuOosYxPM8crM/EvaDyGuUxcxzNG+K02aPgJtr1moH0q7iPnVjxJff
	7MP36bR7YLBZtND1qcT0PCmHqAnQLWsyDhYwRcS9ws4k3mFqwHb2GE/XIejueBtF
	FvvV8horiF2grobt9QhyVpK2vyWQkgmGB9yVQDsMnog/oJmNzzImjp2fwKP1NPtE
	A0+f9vCsRQUvY4zUDM82pIYONHOkWizVaGtUX6TsmjM2m28Ylw9oxhZFL3cxEjWv
	JB2IvIcTVt+hr7x2SxuaQQV/4VoBUEq+dCCoinFjT5JbpmNw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhuxcu999-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 12:52:10 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7a9fb6fcc78so2392975b3a.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767876730; x=1768481530; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bRHVxDjLYahn82U9zuLx8+cgT5tO6EUiRW1cbfAHVoM=;
        b=gM7+VL4SnuI62qy3S6X+OnBCK/+UOh8neiuo2Recs6ZOH1wDYaLQmvFyyTQR0GHZnx
         D5WwiHlBYLYxqw3+QS2r2GnT7q9+nrMMWiHz+Zq3itCkMZbPAf2EvPU0Y+smXTJ1b5wR
         NBF+5CUPVypFiDuv/5Z80R8QW2YzT26/Kf+pfEHX1WqZaJy0EDhynNL1kddP5EMRXAJL
         OWEi6m0WkvAOOEIUCRsWY/AiT48+TN5/9fRYBAT0igjVVp5qFhVQ8MqXroHr8wJ0WVny
         Acog+uhiEEDLExyP/2Dx02a0B8Or/4q+TBJy5onkYvc+GiAFhUx++VspuHS2jraqeimj
         bWQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767876730; x=1768481530;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bRHVxDjLYahn82U9zuLx8+cgT5tO6EUiRW1cbfAHVoM=;
        b=P+i60I55Hb1P5b1tpmy+vBP7XVkhrzB7YlLrfqY05DG21CDyOxKuDYVjMQsh4llgz3
         ahD4bASAcZLcs+6oIL44V9CbJFt3iBPC9kRIO1FZ/uKZSZnH670Vs3D0/ddjIKG+OgQx
         UY3tdDr2wIxBXk7Xo2VJAKOJ6J0bUsDfXz/q432368LN4nEu6xL+s3JUyk6iCa+wmO6o
         utsqvNU6VaAee7+NeGtE4fo0vuaZG70E3KeH9y54jqSGn4XSVOpl8hs6UE+F6Gk1zl/O
         O6f0ujPT1MXE2f1bX3LfN12WaHVX0a+DfY7bwhQUEeuvJGnr+9M+trCFmhwns/os9/U5
         KRPA==
X-Forwarded-Encrypted: i=1; AJvYcCVFLEK98SaH1lesaH8CdI5hrEaLh2DrIecoT5c2MNUtUT1bg64kDyxiyZ2ccsvEUJysFvMS1FrQADPS@vger.kernel.org
X-Gm-Message-State: AOJu0YxvayobQqIkAoQE6Im+v9s4bhnK/6KAxNnxKEMpKazTflgfX+pO
	+BlYxAr527TrJxlE2hlmgfHPKUIGNsp0XVoJRI0WLoNa/uj4aT0HzI7Jgq5StphHfKqvh9WXTUo
	Z/INlYM/ssCOyW66TV75FGbWJtuaPr3tcTiw0ymY/ULZ6gvvpFr7Sowp+CTaw4G6b
X-Gm-Gg: AY/fxX5E6GDCWOGkbimmosEA/2eg88CsQ4HG/22B5TKz/dao3ffidCM9vaSt57pOTyZ
	JroHF0eQd6dgIpjp5gnnzk9Htnu5aUWpST/aWgRYxPLT0/BNVppm0mMkezFZTB3+A4H3fVRUwVH
	fOnEfG9jOz5/t92p1IAF8g973joPMWQlVn4nyDd5h4RY8/hhs9l97ADcKkAgzOgaBuDadac6X+D
	6aThGrs2EkW6qSRTp4eohYeioDvdaFRmzLSwjQVR9QvGu08AmKnZ5CeTvdx9SaFcGpL+7PvzOvT
	FjTsH9Ca0yUPOU0/Nuj9M/WB7VBXx1m9JS+UGQNMxVtTGYiZJk1xhVnxFAe1wLiYfUQvJqUv7fN
	qHOEYRlZ6ll3NXv0B7v0K+pL7RQzHvSfI03r4ysP0Vy5gwg==
X-Received: by 2002:a05:6a00:32cf:b0:7fb:e662:5c8 with SMTP id d2e1a72fcca58-81b7f6e3a8cmr5705921b3a.30.1767876729660;
        Thu, 08 Jan 2026 04:52:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFgScV5G+Nz7moP3oIH4TzGt1E7jfvWoqvlXffiLCn0TQFdYyifLMTpIQmKxakhhybG49WCyw==
X-Received: by 2002:a05:6a00:32cf:b0:7fb:e662:5c8 with SMTP id d2e1a72fcca58-81b7f6e3a8cmr5705890b3a.30.1767876729185;
        Thu, 08 Jan 2026 04:52:09 -0800 (PST)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81dab89f2a5sm253302b3a.56.2026.01.08.04.52.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 04:52:08 -0800 (PST)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v1 0/2] dt-bindings: CAN: MCP251XFD GPIO hog support and QCS6490 CAN enablement
Date: Thu,  8 Jan 2026 18:21:58 +0530
Message-Id: <20260108125200.2803112-1-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA5MSBTYWx0ZWRfXwZbh7ptlAIjj
 xcvm5r4soWNOsPMFo+89hpq97/nHj0dtLv9+ChNu0lq20EvVm/alRIMbclMqyFOyLY/oPKpjOtx
 ezVAFhStexbiG+7nwSWthzbQzlExNX9CbyTOYBVuQJP1LSmVwg6P7qYwrI/lEEZTAYrWQ1XCjpk
 ZwG33wylx8a0pdGgKXI0fD/1Hq30k2dYKzvZSULW8UaNI839xP1u1Qc1+d+EWM4tcvL5krQ3Duy
 VWfzgPdzHYvACUS/B85NlI2ajcowR/0iKax68U7HoEbnBVoa+fbg2s/tXfIcn/JrepMvlBp5P1A
 J2H5NX+yXJUuvDYkQItW4jOJJIBxV6YbCUl/tr6lPSuqpAHi85nCBC6p9IOwq/p3WZ2BhMSprEx
 suo3RPftOXFWgEovHp86KxNZnuAEGnNq7iW3ZQzd0cbF3BiVz8COHjgjax//a7qSKj53+lw/nbh
 p+ti0k4wHOUMuwuBaUw==
X-Proofpoint-ORIG-GUID: FhqhRRiPRntYNtY0SAEjtb9OWtCn5FrK
X-Authority-Analysis: v=2.4 cv=SPdPlevH c=1 sm=1 tr=0 ts=695fa87a cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=nFuhNNRUEVbzmfeY_84A:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: FhqhRRiPRntYNtY0SAEjtb9OWtCn5FrK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_02,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080091

This series introduces two changes:

1. Extend the MCP251XFD binding to allow GPIO hog child nodes. The
   MCP251XFD family can expose two pins as GPIOs. The binding already
   declares 'gpio-controller' and '#gpio-cells'. Adding a
   'patternProperties' entry permits boards to define hog nodes for default
   GPIO states at boot, which aligns with other GPIO controller bindings
   (e.g., microchip,mpfs-gpio).

2. Enable the MCP2518FD CAN controller on the QCS6490 RB3 Gen2 platform.
   The controller is connected via SPI3 and uses a 40=E2=80=AFMHz oscillato=
r.
   A GPIO hog for GPIO0 is included to configure the CAN transceiver in
   Normal mode during boot.
=20
Viken Dadhaniya (2):
  dt-bindings: can: microchip,mcp251xfd: allow gpio-hog child nodes
  arm64: dts: qcom: qcs6490-rb3gen2: Enable CAN bus controller

 .../bindings/net/can/microchip,mcp251xfd.yaml |  6 ++++
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts  | 30 +++++++++++++++++++
 2 files changed, 36 insertions(+)

--=20
2.34.1


