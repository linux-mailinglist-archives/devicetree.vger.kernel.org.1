Return-Path: <devicetree+bounces-243007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F197C92646
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 16:02:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D93003AA757
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 15:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 067F332ED38;
	Fri, 28 Nov 2025 15:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R7+SIvSg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VkpECwNK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7464A32E727
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 15:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764342112; cv=none; b=EpAbJ+EIm+zhbNz3/HLm1Gl4jyEtOzwM5OVCapL5i0oI0harU2wHUaYPMk1aMS2fm4o4kYSjmvjzhE8kLRtUS7j/zqz59kUw04xLQJjfcilsPsm3qkNntvKo+BQ0JryzVpSTqMyZcOlc5i9kzw4Y7f+s0DnxMvUey5yjPQIth6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764342112; c=relaxed/simple;
	bh=xEfRUtmqH7shVoSYTWEh+/jIlgLDvmWXykH2vAbwbU4=;
	h=From:To:Cc:Subject:Date:Message-Id; b=FFyz7Iyq+ydQ1gO9Ne0uuWYxESRAkNAwkamz4iaXhVwdz7wOcoKe/LzFoWXLGaMBHgw128dx7hrjhPDHoNtLHdJJ2HK8mcmG5knWc78reseu5C7bKEabloiB9bDH0qhuXCRyNaoY5kSgzhEfSzFT9N+8bAK2uNHo84QVO5oVvZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R7+SIvSg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VkpECwNK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ASEjKj0738392
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 15:01:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:date:from:message-id:subject:to; s=qcppdkim1; bh=y7p6yQCcke6d
	kbfGd76T3swz046SLZ5QbkD0+DxbteA=; b=R7+SIvSgiQNW28881A/JuOXei/An
	Q1tLuuIJ2WW/+W5eGC/EBcLtQ4BG60dsjVYMkxi/ERTf3le7MnaHtuA1ZNQl+/0U
	1GjbX7WABw/MtgMEphMi9DkiEZm1PTFxZs5b6omg7+J2qK/tID5ZyewY/3yePkeT
	5VqFEAPWPxIFJR4qWm09k9uTuU5BATq/t562dWbDVZtFgGZD137j3H6Tl6bPZXmm
	KXAsyABt8F7/QuDZ8yAqtbSDzudiIZe/OTtQ5t/uZQvlIq5E6eEkjaiQ7cmzqgBF
	unlDsNbJy+PXjqMVx7mfj85pDgIePyulWCeAsZwmH1TpDUe5k1LXAmCTTw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aqdsfg1ew-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 15:01:50 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2956a694b47so25659355ad.1
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 07:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764342109; x=1764946909; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y7p6yQCcke6dkbfGd76T3swz046SLZ5QbkD0+DxbteA=;
        b=VkpECwNKqYn5YSpdfl4q9Qs3+8YRzSo2AULn4EcQ55sJsPK7u10z0wiIHZiyY5S9lK
         q0K68DvHD7ksJrIu5f/Sd2UHF9nPEkHWkjEsmfFuHUWLJhQBsneAYtnIkp4yzyQeZM1d
         R5Hx6an6ApWUiUcw6hgzRf+vgJCNuP5mrQstkSyjYIMX1jlqzNKg/QAeYK2EHGODFHkU
         LDTfknj1eR0D41ekvRJW4ouRTaib2MdM3343whAstE4NZSh6lfpAjqM2FIZtvPglq+Mr
         vrlE7+ycQewFSjhJ49qXhEdrj3CBEtUBmBQD1nKMqjlMfCAspLyMD+EtVmjnVwNOgQDP
         dHyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764342109; x=1764946909;
        h=message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y7p6yQCcke6dkbfGd76T3swz046SLZ5QbkD0+DxbteA=;
        b=EdF/9QrohDqPV69JTprG0+uCxIU9QEXOlv9JEsPYBoVp6tx8HMFRRgqWud057yOkuB
         iM3p/PPQJPv84aAWOiRXjbe+oNOzpX4BnHK+mD9NWDYqlH37HoNMzzV01FGsFg7LkOg+
         g870z2fbY5LFJqrYwqPIpEcRcdlW37otDq9D1xFeKDxs7BBsCeXNhrL4k7BNbm//LEih
         lm5K2Phgo5ABxOL9Brd5H2UMKNewYLWtvxAftO3L9DSDNr5WJtXGldMytfA39L96c1dR
         bS+Et93HKI/RZ7Ir8S5w9zq6/JH9ZibsVg4q7dEYM3XkObHg6Bd2sDj7pon+L75H+OF7
         YXLg==
X-Forwarded-Encrypted: i=1; AJvYcCVfbGx0xjvS0U7nDACigP+2BNHBBfciXzRB2YOC2uy1JXo1jIHWKfTeY2CqwuGlneGsi+3WKPXhaRQP@vger.kernel.org
X-Gm-Message-State: AOJu0YxTmrTsfUHG4KAgSfLwWTKK+WjXHJQwPF8kEkCntNFf+XBVnpRO
	JilOFDKbXEwx0Bm+Lb29fydiAezhc9LGnJfVtl2ZpQF02/CIA1JehmkRxbweQuEj6W8vpvM/NkY
	8v7k26uAV9aOLgdzQmcvBHTuXhdpG2iC66hdxSca9I8aqQZBJIVPgc3axePHdZGcl
X-Gm-Gg: ASbGncum4bMddvaX1Syd8MzWCRom6I2BTxg3TPqkwqVPuSUEEseCWIKFc6epXdMqiLq
	m9wI+Edjh8nLU0EHc1gB9dJ+Ff1pvG36ruG0DpFOE1JrgngAGfi+mvHea3DManbZHXqxObbsbW6
	ajJiJoqF9efL6NmER7KLQDYDEzTW9nGjn+W1W1V/6PngTIzSnLDCbY6FP0T91qoNyAbyE1S2OEb
	sYIeOlZP4GLBAvGiigyRWHR7e6+KuvOASPBbZCW/Ql14DP/+/Dqo1lRRGy21lNiY/JAQEMREZkU
	iwui/uhmZhmcoUctjwuFAjW9x+iZsTKntFVoibqc0YSHJd6P606vuAI0Mvkr9+v5OPg/rL7yA/j
	glnmqTBIoC8GvGKQsfpdWTncDHxoJIxrDOHkFZoYIrGs=
X-Received: by 2002:a17:902:ef50:b0:298:34b:492c with SMTP id d9443c01a7336-29bab2de50amr165713515ad.54.1764342106363;
        Fri, 28 Nov 2025 07:01:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEpI/BufIbwOVwPHLz/kJYkcxerhQ6rcnfU87Bqc+reHKOFkzwqLvCM71gMvDDQnwywkhuxDQ==
X-Received: by 2002:a17:902:ef50:b0:298:34b:492c with SMTP id d9443c01a7336-29bab2de50amr165712795ad.54.1764342105618;
        Fri, 28 Nov 2025 07:01:45 -0800 (PST)
Received: from hu-okukatla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bceb7cf89sm48930635ad.99.2025.11.28.07.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 07:01:45 -0800 (PST)
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: [PATCH 0/3] Enable QoS configuration on QCS8300
Date: Fri, 28 Nov 2025 20:31:03 +0530
Message-Id: <20251128150106.13849-1-odelu.kukatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.17.1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDExMCBTYWx0ZWRfX8se1n9PDZ+qo
 BjGDkb7p+gCIG6WhnzuDUHQ309AZxsUhfNlcIHPeo2J62kBPVcVAAb2LZtFL7DIP5tC0OHxihty
 zwi+v8BZMILeBAVU6qnCJOMlPyqDjhWpEpB+2957noMtyH+epKXqiGb4pKqLwCWo/SW2G5ZTtAj
 HaHIlO4jQvg7xVz1BkDsdifGrYR2os2ShRdKmPY5i7vbzwgW8BRgfvEMZW1UMr+4CUJKaDoiyVL
 FiBues0R5YMudZZGSWw0hDGk9Zd7/vyLWfmpjI37Wfq15c4UM+twBVAePRJdMkAAvMRi6n7785l
 vVOjeI45Dvy7Uy06vKVhGB1Rk4k3woG1cd4c6vP3FLbNGzYQSMGGclvLPR4Bzx+7ZoJV4MFfLoF
 QFVo1AaDKYWJTIEjDXDdwUZMz9jAfQ==
X-Proofpoint-GUID: aNfBlRmb_1XyZPlN9IkoNcm16c8iL-rE
X-Authority-Analysis: v=2.4 cv=Qc5rf8bv c=1 sm=1 tr=0 ts=6929b95e cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=fIl7fISSXmXrEScvsbQA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: aNfBlRmb_1XyZPlN9IkoNcm16c8iL-rE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 clxscore=1011 adultscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280110
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This series enables QoS configuration for QNOC type device which
can be found on QCS8300 platform. It enables QoS configuration
for master ports with predefined priority and urgency forwarding.
This helps in prioritizing the traffic originating from different
interconnect masters at NOC (Network On Chip). 
The system may function normally without this feature. However,
enabling QoS helps optimize latency and bandwidth across subsystems
like CPU, GPU, and multimedia engines, which becomes important in
high-throughput scenarios. This is a feature aimed at performance
enhancement to improve system performance under concurrent workloads.

Odelu Kukatla (3):
  dt-bindings: interconnect: add clocks property to enable QoS on
    qcs8300
  interconnect: qcom: qcs8300: enable QoS configuration
  arm64: dts: qcom: qcs8300: Add clocks for QoS configuration

 .../interconnect/qcom,qcs8300-rpmh.yaml       |  53 ++-
 arch/arm64/boot/dts/qcom/monaco.dtsi          |   6 +
 drivers/interconnect/qcom/qcs8300.c           | 375 ++++++++++++++++++
 3 files changed, 428 insertions(+), 6 deletions(-)

-- 
2.17.1


