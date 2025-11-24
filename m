Return-Path: <devicetree+bounces-241742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8F3C81D00
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 18:09:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0BE3E3425FA
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 17:09:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4485314B84;
	Mon, 24 Nov 2025 17:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E2E9pH8g";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Hdrqmdvv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2A9314A9B
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 17:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764004147; cv=none; b=ZbhD/1nW7TBOAS5anmd2VxJ+hKkgI9jYjmbS65cgUgsdJ1Lmx+TTO/Q6ueKA4YLtB7jMENFslUDDcAjetKNifVPvBJCRRayxqkvqzx/7aN9obH8whNUlGgOtTzx7brpj85Iq2HVnkkaHme/d1ZYxNEVlFMgMv6XUMf66KEcD7gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764004147; c=relaxed/simple;
	bh=GEZkILBQcZuFuSsamTbUDcv0GlYXt84BAbmPewTcedI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=FhMgUAFqwNSyLVhDkcjobPRPnNx63L5OBzNPFmhaz8eVGbXPU+3loPjrHkAMB5qP7forJcuPZS1FGbNOlPJdJfBvH5Q+cFgriDnXYIKwKs/98k3Wnoco5H7Yrg0ZmgNgdxv+7A9pxQPLJcIFxYXPvo2J2fU7AnKlrPYASXpZLqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E2E9pH8g; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Hdrqmdvv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AOFuTxg601524
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 17:09:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=nTaVdnsOVRgvHNDCJYfyB4
	IZrgcK8LINikYhlVDs7eM=; b=E2E9pH8gGAo/rOGaj53YBawMLhuI8QuH/D6bUQ
	lL4XkXOG5XMO7m42XtJdpkXXl1F549Ak64vXMDKStIjejuXAYn6ZFPSGFj3BM4Qg
	/UjoCRMiDfaQUwoJKvknqsZcsKueJSpqANac4mv6O4VNSbV/7quXsiVDS1cAHhRD
	sKkYanzWV6c9+C2yOFHEFxkm0gzXM7d3/ZqSalmx2ios76WiK5kn8kC89IexiZv0
	c3q9hwG6P0Omv8DpJi7o/Iqf78bx3d1E6pgwZrnK+hFLMhQ2EMWYIuNn4TgkeKSw
	jaEHSqra+WVCB+QwPi7dRNCn8q5NFPzlr4hFcmzELRK29Tkg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amqpe0rjm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 17:09:03 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-295952a4dd6so56621775ad.1
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764004142; x=1764608942; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nTaVdnsOVRgvHNDCJYfyB4IZrgcK8LINikYhlVDs7eM=;
        b=Hdrqmdvvpo28CXbITqXxG6zxIJhuqqAwB6yPz6gnW5CllfeinJgxbvaXVwzZVc1A7O
         kPVHepIGPxZilyH5tL7C7MApbcGRkDtPnQXHSB8xr+Wv9NV+esSQ4o8oxOm7Cl3eMwRw
         IMVqHAlrhrJaTAskSgNVgpQepCSt4S1opcqbUgMmLUQ+NvML1OCuXS1EtBQXgxavPrH8
         QaB1SM1uOlkzjiJslX1yohaTIE/tyQPZgbyiRbpA/A4uXlQlZ5ro8ihDU/3yXMP8+uGU
         LE/fE/niI5s5RjEnbtL+9wFDvc1hodYDZisI0LAJZFK7J2GkpQCYJc2KvSIeCWUipymZ
         yH3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764004142; x=1764608942;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nTaVdnsOVRgvHNDCJYfyB4IZrgcK8LINikYhlVDs7eM=;
        b=pQQ4fOpLPfXJge5sw6v5tthglgYF0OvCI5Fc3t4l34INzQ+WzL8b6IIJdsNL9A7iyK
         nndAhqRSdxmjqputYfHIPNBHLfHeu2afvh/IgaA5yMtAhQmSFFA7lY3Wm/1v0RYWtWsH
         mMIGKtc3CIhSkC32lEShwAoGqqfGnQRGtf6ZouL169Jw5jY7BctK6/t1H+Ca2BQ7qvx8
         /opsHw+HdIgkwBiqtnsqUOzCLr0mv5dMaTciirqoIgn/xMQdifYYhhIqOXh4VqkR8bkS
         tTAgwhVE6ubGC3CG8lz9JHbhcZQ/4RZISGtBAvD81erhFYzL7k88rYhqi35pMlJkqusI
         nnmg==
X-Forwarded-Encrypted: i=1; AJvYcCW29yIVfYgNSLPShA9gkCrNSqfEK2HhcWDZYha0ky7WAIr8hY1OB/pWYw8wSb2S2Kcf04cThDkq8U01@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+gzmg8IhN40AzqTR6KPCvjInEah0FOpnNaePIro0qsYeFCloG
	ugjKzl+ku/RhP3xWYnYudWO7iNsrvk7rv5dB8NZr6F6SUqTYM+oraPzeJ4kBaGCzeOiGu7owI/v
	J/ze/EF5DSNjK1Kv6CDuh+MCGIREt3tR1qdsY0nS818FTvjPzasGUOGDRNvZetLhB
X-Gm-Gg: ASbGnctG2WT9D1YPcyPGzZzXzIIjcqy5xll6QhjvkMRVFiZ96PHvTQWaRxturZupu4m
	iKwOq6s6X6mAmSpp/GNM7hfTEkwEfA66HVQoAYCdTrvngF9Upbvh457TaM1A5cFHbEkJ788uqTG
	4IqLgTPm3hhoAYHUUKIJZn1Ts9A/0PlqHT7aWjZJBysBFUymamC4O3U/GagrNeP1S4sFdgCLY93
	ZqFSR0kj0PuoM5JnXGrXP4eoRyvLbdqp7UMX0/H7pHEPHMvkp5zIC70zPYteQKEwC6W4Gx+h8e8
	Itbk7mbt7Jr49P4C6UuwKwFyC9yImU2IRQ6IB6jq26NT5o9K7DpVOYOWqCnJS0RWYYbTsyFh30k
	E/+2FFkD9stJ16qxbbcOWfOvvjvSMJWngviU=
X-Received: by 2002:a17:903:2383:b0:295:557e:7468 with SMTP id d9443c01a7336-29b6c00b02dmr140316575ad.28.1764004142110;
        Mon, 24 Nov 2025 09:09:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFprP6rxA6/T2c4BwZxvgggU1iahHX7R3rpt90bPcjZsWL3XHIYeUVXg4tgCLb6TIFSE6gKzw==
X-Received: by 2002:a17:903:2383:b0:295:557e:7468 with SMTP id d9443c01a7336-29b6c00b02dmr140316175ad.28.1764004141639;
        Mon, 24 Nov 2025 09:09:01 -0800 (PST)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b107effsm143949275ad.14.2025.11.24.09.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 09:09:01 -0800 (PST)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Subject: [PATCH 0/2] Add TRNG node for x1e80100 SoC
Date: Mon, 24 Nov 2025 22:38:48 +0530
Message-Id: <20251124-trng_dt_binding_x1e80100-v1-0-b4eafa0f1077@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACCRJGkC/x2MQQqAIBAAvxJ7TnDNwPpKRGRuthcLjRCkvyfdZ
 g4zBRJFpgRjUyDSw4nPUAXbBrZjDZ4Eu+qgpOoRlRZ3DH5x92I5OK6YkYxEKcWgacPddKiVhZp
 fkXbO/3qa3/cDZ4KccmoAAAA=
X-Change-ID: 20251124-trng_dt_binding_x1e80100-94ec1f83142b
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Harshal Dev <harshal.dev@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764004137; l=599;
 i=harshal.dev@oss.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=GEZkILBQcZuFuSsamTbUDcv0GlYXt84BAbmPewTcedI=;
 b=bHOePMxySrpnBKqm1UMiYIn/NHf0e2w6to4onexOLo6gutSKTgjyDZ70ChhmcigO5wvs2b/Y4
 U+vgnJrP+WmAdqJjAoVJj+9AMX6Uko4WAUnsCCecsxTXfAq5846jAUp
X-Developer-Key: i=harshal.dev@oss.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDE1MCBTYWx0ZWRfX61g7zUUQqT0D
 DwO7YxU5JWoH83+yUcaU64Fi8H7MbWzkQ5YETdvnnlyNmFHhJ6mkCUSzGI/d1xVlcZG/nbudGrz
 8XKyGJxT0JmN6EE7/XT37RuOoOlsQbgKIERXeMoMm0PG5bMyr17KHehTRKArzJAntLyQEwIo2j4
 oN5ts5RCcDiWDD27zX6Uq3ho4NbtVMFfEgRaC49qSgAB4CMCLkPpKX6JG/hp3toz7eNK2MHsQ/G
 BCr8qk2YYZc4ap3TxW1tOQlDJOZBT3baCHgnY4zD9wHRlmUHQ1OQWyFiFA4q9h3z5e4l4ZnxXO4
 wOqyJDOthHbOiVE8zbD3TFCWGBP4uBtSrmOQBJsB0eyPMchmhorc6IEkuYAylEQjDwcWW0CS8kD
 NZsG2XeeUaCbAaYj5/BbNqme877Cng==
X-Authority-Analysis: v=2.4 cv=OYuVzxTY c=1 sm=1 tr=0 ts=6924912f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6ZNt1lSE2E78l_tYFJ4A:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: FAyfnNcHBKGDN6ZxsMCuYK99Y-lQE5_C
X-Proofpoint-ORIG-GUID: FAyfnNcHBKGDN6ZxsMCuYK99Y-lQE5_C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_06,2025-11-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0 malwarescore=0
 spamscore=0 clxscore=1011 bulkscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240150

Add device-tree nodes to enable TRNG for x1e80100 SoC

Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
Harshal Dev (2):
      dt-bindings: crypto: qcom,prng: document x1e80100
      arm64: dts: qcom: x1e80100: add TRNG node

 Documentation/devicetree/bindings/crypto/qcom,prng.yaml | 1 +
 arch/arm64/boot/dts/qcom/x1e80100.dtsi                  | 5 +++++
 2 files changed, 6 insertions(+)
---
base-commit: d13f3ac64efb868d09cb2726b1e84929afe90235
change-id: 20251124-trng_dt_binding_x1e80100-94ec1f83142b

Best regards,
-- 
Harshal Dev <harshal.dev@oss.qualcomm.com>


