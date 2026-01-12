Return-Path: <devicetree+bounces-254148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6570D14D6D
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 20:01:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D8ACA3007659
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 19:01:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1421B311948;
	Mon, 12 Jan 2026 19:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TQl7DYCF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XucoZU2x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9090310630
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768244506; cv=none; b=pTL67Bf06/D136IyzWiN3xuO+ru6GjsuAljgiVC1r/8V9X+pt6b92xbROqDiHhOEum1/SSiHGGK+WJI0YI2jm9f/SnFj+Zu7vY7amuXEI91dfGpBYm9vIeRfkvY46JQRBv/bbVHftlTufObGflhzEOSRpsh93f8J4MmgBjf6WhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768244506; c=relaxed/simple;
	bh=z4eQr0eex10z9x3L22NaYdnJLofS5JqgIZan2urwgdY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=diUOVUUtveq0E/Vm6e+Se/mqblRVa5jQvquI1Ys6R2sOz4RU/sdcIsZHj2LFbaS+FZkB0uI6TYtyAUjC90KZFiHoQ7F+U673DLuHGov43qK7+upWR5H9lYikPjdULHlN8Djvqi0wwpRXbwWQuoYGYgkEPkJyESAVI3Y7cz1Gizk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TQl7DYCF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XucoZU2x; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CHfAf11426489
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:01:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=ub4EZpexSoQ29tSqpuI17Y5hs92pf2Di8Ce
	kObKFRw4=; b=TQl7DYCFoMBK4RgorI0H7fx+UMD3irgOM55hLFx0xX/H/DsCfPX
	74vrHrwiR39hGhwnXGONCTpKa+lvCe3d55b3iwwIyYNG915mZGxJsnfqGzjnI2BY
	Ln/1Tm2KQlQl/8YeC7fTnFl+reSI5FiRkB0fmIK2hyaLDpYf6rShpWszZLdImcHC
	1a/Ezy1e4a+aB/3Gp+z/cX56/rPkT5w3VnqcPlkpfPtIue7XfyCt3Wyqs/viT3pj
	iI/qfpC7emNVsUD7PlUByfPDAuZv6+HxO+Dyibk30XycEAFCWMf1arpFvXLvLnVF
	U88BSKzSUO1q9RhRVJX5t5Lf1q6xlawBKWQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn34g8ukv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:01:43 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a089575ab3so71816415ad.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 11:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768244503; x=1768849303; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ub4EZpexSoQ29tSqpuI17Y5hs92pf2Di8CekObKFRw4=;
        b=XucoZU2xgA9l6h+B0GwyJiogftjxFOfp4eZrrt9ZWm1QpVu3Q4HbhrRmkq9sf6vhRl
         zgXls1i5cDFAWugYwry9wmuUOzX7YN3YDyxTwQDbqvoPZPtUg/vR4J8k7sC4Yv/xg63i
         6NEA/7PKcfAb0V3dsUOPeczeMJXsseqngeRop0tp5UInu8QmsVv7EmDS7f1BhX7Vvc4R
         O4XR4Hzz++KBtWNIfGC4rnVNgrhLry0SeVAFzcL6rEbt9rNxWUysxInxQZcD9NoOz2vg
         v3hyFwdLSraUEvbd1yhHkjA43yqIHPY/pcYm7z/Mjf+oixAxl5cg3QZmtt0oEYcqNICB
         PRKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768244503; x=1768849303;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ub4EZpexSoQ29tSqpuI17Y5hs92pf2Di8CekObKFRw4=;
        b=uqcRa2m/ZOiGJ6OBYvLmXrK6A1NrLm8byk2ROVLy9OXb0SjuuuFrISASixc0TG5TX0
         Sb+q9YtsgWfeNmOPS5+LB6IO9RZSsCClHULGNjHDYNOTX9Wme9MyIslzVd2VBIuTY1JX
         uZr9/QQ+/fEfL3oN/lelKjzOE2XeQQEYPYxsX/GwZkZFd63NIo2+ckSmmxoYClbI1KZT
         USmftNhykwR1vb82mKefrVd5dHxl6Od5hIRplQlSoKZJXGEWhvKIt7xF3t0+EJkjQw5t
         s5vYaf9g5mY2zTdo/leGQfJBPVXq7YIChe3Ewd/bVWlR1FuIF6Npb7G1IhXfQHYUXJux
         GoSw==
X-Forwarded-Encrypted: i=1; AJvYcCWCIbdnrkk66I3rXp/M5ROqScrPGc0QF3rUu9hE57GZFKUwxskoIleVioqBjjlKeI0TDTQq666xCoBm@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/V7NMyHph3Txw+yOucPnFUhYPne95m6XIhyPUdddyoF/Hs8eA
	1fIx/2NJOVGRyRowWCfAek67WhVR3ryghxhbTedEqTHOnDcS8JxiSTeW+mh12R/viCpVV3gk5cV
	PEB9SPcEFMix6xhxL8ARW9fNFR/8lwZfmtSfCtkdKBBHZvC05Xi4TSYuoPImTe32K
X-Gm-Gg: AY/fxX5BfegQ+g4cmAy0CJMKx3JmrbB9+CiypiTY0bzT5NqISsTGUBpWEsbuq8jipWL
	EIjmR2ybpNlv+6fZsY40brPlFZo1WnAHiPFj9fQKEoqdktUIfEhuIgQLaRRxvO3qfJ1gayrNUTB
	eF8FT8J/uxz9gG3j3KdkcRebrD4Q08clnByRxZX03oLNAW40Dnbjfan/BvFJmR6e6JLduQDq+PO
	fyv4mlkj5KsPGPCkhERjgWKlm86WGjUkOQqfDzBkDzMbrpqCxFaVmDyXfJY7HI/+N7x/TEo6+9F
	3ChTk4ey7QntNYmNParaDpnE0JKYDKIgd3c9BkniEYuB+oTMec3N5eUt6s37+1hME+pi0cRU1p5
	M/0oW5Hx3WukLsCVnPBjHXj2I4E17Ui4K1lmRZZpfD2I=
X-Received: by 2002:a17:902:d4cc:b0:29e:9387:f2b9 with SMTP id d9443c01a7336-2a3ee45d592mr140344635ad.24.1768244503130;
        Mon, 12 Jan 2026 11:01:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE0tB7SChKljt23is7ptX0+WmSMRFSk9n+Hiq1vowGI0jbs+xhng5CJUxAD6UGqr31W3CTyjw==
X-Received: by 2002:a17:902:d4cc:b0:29e:9387:f2b9 with SMTP id d9443c01a7336-2a3ee45d592mr140344305ad.24.1768244502438;
        Mon, 12 Jan 2026 11:01:42 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8888sm180120595ad.76.2026.01.12.11.01.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 11:01:41 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bryan.odonoghue@linaro.org, dmitry.baryshkov@oss.qualcomm.com,
        andersson@kernel.org, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, mukesh.savaliya@oss.qualcomm.com,
        quic_vtanuku@quicinc.com, aniket.randive@oss.qualcomm.com,
        chandana.chiluveru@oss.qualcomm.com
Subject: [PATCH v1 0/4] Enable SPI on SA8255p Qualcomm platforms
Date: Tue, 13 Jan 2026 00:31:30 +0530
Message-Id: <20260112190134.1526646-1-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=fbKgCkQF c=1 sm=1 tr=0 ts=69654517 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=NeO65QaY_C3oiTlxhukA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDE1NyBTYWx0ZWRfX38HEM4v8CEN6
 mYZU0eD5Cpfkl2AV8mt8c29bznXFeZGsaX5/s4IJfnldUMX0PK9FEKp+WM1Kqo8MOD70YHQ6yEl
 ceisfOWX5Zu459R4PWaxQB77TGVCEJZ3rtreT6m+eG2j0asPjY001hP1M8MpR/KVuW/3BSXwiVN
 ZByziqDi+34S/f3iYIQiIE2KRPb8QlFe1Orf6W5KFDrgMI5c+xjVFh2EpH57Eu9TNC4o8vVF5HD
 PSdD6GmWjaPA2y6YYaLrfE0TOxpVsd+tCn8hq9s848F+B5HezPoiRNUBkoU7hbe1S3AxTPu2InP
 E6dkmbXhKfD7Tk8RbwzX/5ISKvDPJrmyUEmve9kuBrrAD1sBswokuNl8DAP0Gij5PY3FewJNiYu
 9Sa8b35IzfcZ4iJdPLcgR/7w2418cAyepcOFGMjTBgzRlwW7YpOB1Xlwha5pwJ5l3++5G1hCyDc
 03Fjwszg67FHbYQqauA==
X-Proofpoint-ORIG-GUID: iF4lMWZQhuqWyMQerXJadBzOEwa1w7Jx
X-Proofpoint-GUID: iF4lMWZQhuqWyMQerXJadBzOEwa1w7Jx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_05,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 spamscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120157

The Qualcomm automotive SA8255p SoC relies on firmware to configure
platform resources, including clocks, interconnects and TLMM.
The driver requests resources operations over SCMI using power
and performance protocols.

The SCMI power protocol enables or disables resources like clocks,
interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
such as resume/suspend, to control power states(on/off).

The SCMI performance protocol manages SPI frequency, with each
frequency rate represented by a performance level. The driver uses
geni_se_set_perf_opp() API to request the desired frequency rate.

As part of geni_se_set_perf_opp(), the OPP for the requested frequency
is obtained using dev_pm_opp_find_freq_floor() and the performance
level is set using dev_pm_opp_set_opp().

Dependencies:
This series depends on Enable I2C on SA8255p Qualcomm platforms
https://lore.kernel.org/all/20260112104722.591521-1-praveen.talari@oss.qualcomm.com/

Praveen Talari (4):
  spi: dt-bindings: describe SA8255p
  spi: qcom-geni: Use geni_se_resources_init() for resource
    initialization
  spi: qcom-geni: Use resources helper APIs in runtime PM functions
  spi: qcom-geni: Enable SPI on SA8255p Qualcomm platforms

 .../bindings/spi/qcom,sa8255p-geni-spi.yaml   | 63 ++++++++++++++
 drivers/spi/spi-geni-qcom.c                   | 83 ++++++++-----------
 2 files changed, 97 insertions(+), 49 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/qcom,sa8255p-geni-spi.yaml


base-commit: f417b7ffcbef7d76b0d8860518f50dae0e7e5eda
prerequisite-patch-id: 59caabe7cb91dd1cc983bcddb945a9f937f27700
prerequisite-patch-id: 8d9eae225d0a898c5543915583d181dabf22fc5e
prerequisite-patch-id: e2ce71b831c2f22b3945ba4faa9f5387857aafd6
prerequisite-patch-id: 4b4e8774d462676e04c9e14c30720ae559c90643
prerequisite-patch-id: eebfa4f5ef4f3eeef82c946f365e0500f3818125
prerequisite-patch-id: 9d5f48bd6188ace78aa1069c95899f23af2d9072
prerequisite-patch-id: ec7f320c0999d7ca947f7d3a86c4e6ecbc6694ba
prerequisite-patch-id: 59bfd0cd9f7a55a75ffd828bb8f9be94d4074e4f
prerequisite-patch-id: 24266f569d58bb78615ff4207c1c210e265912ed
prerequisite-patch-id: 4dbf9643a0e17e1c93caacec9d6ba170fcce45ed
prerequisite-patch-id: 74a1c1f32213a6e9de05765d721637d58f5baad8
prerequisite-patch-id: ef061474c4b96374ed3c935a440a8d0da830a972
-- 
2.34.1


