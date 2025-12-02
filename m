Return-Path: <devicetree+bounces-243609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 93132C9A9C8
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 09:10:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8B2DF4E2EBE
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 08:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B991C3064A5;
	Tue,  2 Dec 2025 08:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c8G7sPOW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bQMHmLS2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCBDA305E24
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 08:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764663029; cv=none; b=tUyaF26DpaXNQgkwJsZ0LZ97QB6c2pWdB2jnZvDCAEJqpIGtllJ16FpFlTGnKwGFHu9ZzYYYio7Z1VegvHrfQaoYtzS1Gl8LvVS6yyyaixLXm9uDkDlrSw5jFAyP0LqryiMWliA6+n7bWERQG1OevWz4kI80FvInE6xCQDO2uxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764663029; c=relaxed/simple;
	bh=TM2PWCsUIm9itNucX5QsGbxrkbAIadxyZQEgaDGFPrk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=OQG8Opd9/7qHlTBVxgnRMehrAvY4g0koca/QAEYm5T7xMQ6m6/vN6GPqnSK2D7dIMfr/ZlOtPM0u57rDELVB2DE2DaI0C6nUTfGmnNDeoFb1js1ogwyYfS5RWc5M7J+1sErbKnlnUvoWTAhEzakob4GKxeauOpPwzN1jBM08dks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c8G7sPOW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bQMHmLS2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B271wpt1742493
	for <devicetree@vger.kernel.org>; Tue, 2 Dec 2025 08:10:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=xw4n7QKtCSjg1ZX8a/id12dlKeUndubCAKa
	CK+KYtDk=; b=c8G7sPOWFbcBxuBY5ZrwljsnlaFUNGqZvEOmsvO7khaU2O52Wj/
	xMYZI1kHCWX19s3FbqrhSA5K6+Hi4bea1q+mPE/Mly9yOgZs80DYwQ2DruDK1Lvy
	E4VP5I2caFIWicDiKSrC0b24yRx5FXsdDyTa7FLMPHLfXy34ZrANhpgxv5KtrPjO
	HMWZnVrkZOGHRGZJkHCdL0QqrWNr6elfrkDf2OQTGroueqkRb3mwZk94gaGq9SWo
	tla1qhDrN/mxoQTlUL7FPpkS4VC7eIZHFFGRXrgM6EbOtJIqW4wsXn4IURgTCGPI
	3a2y7lLNjlO/J/VXoSDUYB+MfYfkqUiRmMg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ashtksv1y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 08:10:25 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-345896654e8so1334403a91.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 00:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764663025; x=1765267825; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xw4n7QKtCSjg1ZX8a/id12dlKeUndubCAKaCK+KYtDk=;
        b=bQMHmLS2uxai2BMHeTPQkrk6V7/XdNMBs7UxCG8v3WEz7eEeQRCRrkmr/JFrLnRndx
         Tjkb/HjfoIoIU+6WuW3U51/5Ins5roi8skm6zq9lBvG2xqRilzteqkNQ/lGixS4O//Z3
         1arl4gMEIzyj7GdPmPc0V39a9vNh8zeNifohw+UG5Kd04R15qIaRuRb3TOyAjGq5CMV/
         ZoHSHtx9NUu05cUzrYrN8Xa8oBhzW4ylQWpEvOMbfkSONI42NgohdyXyPUPsz/fKg7L5
         9MmEghwBhSJltM4e7pds5ps6qPYCE7ZXNuS6I1G93e+73jNXAKGKKrcdFdfZoH+alcvO
         7fcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764663025; x=1765267825;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xw4n7QKtCSjg1ZX8a/id12dlKeUndubCAKaCK+KYtDk=;
        b=K9AY28PI/VMr1K7MKhEp0kzAiaXyGo+GQ3rYU2Ud5Z2FmRFOHCRgOFmqs/F8Qm+22p
         5k+F3okibdmJBdzTn+C6BBie/Q7BgWBzVadkTlLISVempjcGGwqi3jHPwblRu05S4ehM
         X8VrgFI4i870VcE5XMaVmVu/hOy0fT1DSyg74OtC8U5Ej38dL/Koem3oni1v+gIxvlFy
         1Uk0ZS8/WAnM/LXkevbhItd45P99bN5/jMEkHz6qvLYPRFWMCQPD5rySy8lrjpO3OARI
         JymtdfqhCjAYMweL3izvJryc82TzAIqGN6X0yPSUifJXlJmTNInlhkbnjoYIuUe1RGMd
         aBSw==
X-Forwarded-Encrypted: i=1; AJvYcCW36VzagiobsU3HsyIzaS+BbV59c2haoBFjAcyHJ4BJXoKty+uZCGeOSKgzwZDG4WAsTzD/w15S58DH@vger.kernel.org
X-Gm-Message-State: AOJu0YyMYAd5anWe75oWsEGA428zDycVj1tZSZ9xThST0qN1aPmIO33J
	ppOl3iPWVJiqj7ZuxSOfh8hRipTkGDBw8THcToBQg3A7GRw3QiFfzSoOB1YEOZskeDRR+L69QZ9
	gZgWuW5otgJ9P/gtrOsbgXzIBaucCK/ji7JTlIz2BbHNtTgWpekBDFK0BKtvgRWE=
X-Gm-Gg: ASbGncsIcbrKLCzJMLqTQ54IBihkO2ENRkWj/qsuACDlOZ59IbeIB+/7tRs0ILd5JNj
	Olyi9jl9penLIgWcHEY5JixBpOIVddeUjfkwzl5mTgVUClEKQsKHk1zHqr/ZKm9/JIxKDq9BbIk
	nZhqPkmFI771JoWvOqRrk5yr4BUtQboL92MnzlMd9j8lmx21b6NAgwIXP++ff2/zPmFtPv9cQUy
	gmGprYkrc75KWmvC6TYas+w43KN4r9bY8tInSK5H3rVJLWVllQ8hlnRBJrMeQTgWQBvtKykga3c
	YUfkay2iXted/6RqMtQYyQEOGIRRKCCGNJ1rX8ClouBeijY3QXVE/q7VcGZTJEnbvem3D9OQs7V
	61Fv+SETT8wPTTsySNqeMucuZbgteLwriv0cHnTy+
X-Received: by 2002:a17:90b:3b8c:b0:341:a9c7:8fa0 with SMTP id 98e67ed59e1d1-34736b7af3bmr22353960a91.4.1764663024761;
        Tue, 02 Dec 2025 00:10:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFCYK4eho9CRfxdxsdOlewllrkeEDFHddrnNnGybhgpdUBIoUzU1IL7M9YhVg3q/1WtNs8Nbg==
X-Received: by 2002:a17:90b:3b8c:b0:341:a9c7:8fa0 with SMTP id 98e67ed59e1d1-34736b7af3bmr22353935a91.4.1764663024274;
        Tue, 02 Dec 2025 00:10:24 -0800 (PST)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3477b1cbdc0sm15419794a91.2.2025.12.02.00.10.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 00:10:23 -0800 (PST)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com,
        Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Subject: [PATCH V6 0/3] Add SD Card support for sm8750 SoC and boards
Date: Tue,  2 Dec 2025 13:40:14 +0530
Message-Id: <20251202081017.2234677-1-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Ap2WNr4K2y_9kXy0RuzPWZYxmPpV6-Wv
X-Proofpoint-ORIG-GUID: Ap2WNr4K2y_9kXy0RuzPWZYxmPpV6-Wv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDA2NCBTYWx0ZWRfX9NmfoNI+9IZ0
 9SA7lySBnCz9Rn3lAet31hzCK4DXa/+pQawbpUlCGwCXXi0AUQSPjdE/a9uBU5WAsoAsL5CdD5A
 IIDMpiBI0RDt6Aih/d2nUBMcdKTVk4RSjso7AEzUmOY3voIOZwmVY5k7xgj5p+CV+m5tkzZRyK9
 x7ftOS3XnFJB1zPRARY6nkZUkUeStNAZfc4Rupi1rbaRSZJP7CCLXLvx4wFvBn8Y841L0Eh/Sq6
 LqsBhye3HPZQ6+ttsObsKFSPLspsiswsEOMTCWcGqbZ7uzf7Iz2S4wo9+thcGMbb6VwTo4/zf9I
 PG1dlwEdJ8ro7S7D59iSLSdgK1JuuOQHy48yzc6myFMEK4/w+hqHvUjs3Q31c/MN+DKwm1tXz4z
 2ZvH3dJ+voOK52X/w/VI5T5GES/Dow==
X-Authority-Analysis: v=2.4 cv=DL2CIiNb c=1 sm=1 tr=0 ts=692e9ef1 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=rfq7y1KLf-xer_pzc54A:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 phishscore=0 impostorscore=0 clxscore=1015
 bulkscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512020064

Add SD Card support for sm8750 SoC, including MTP and QRD boards.

- Changed from v5
    - As suggested by Konrad Dybcio align '&'s to the previous line.

- Changed from v4
    - As suggested by Konrad Dybcio sort nodes with a unit address
      (numbers after @) by that register address.

- Changed from v3
    - As suggested by Krzysztof Kozlowski refactor the code to follow
      DTS coding style and use hex everywhere in reg.

- Changed from v2
    - As suggested by Abel Vesa move the GPIO configuration for SD card
      detection (specifically the pin settings for gpio55) from the
      SoC-level device tree (sm8750.dtsi) to the board-specific device
      tree files.

- Changed from v1
    - As suggested by Konrad Dybcio the patch into separate commits per
      board and did formatting improvements (e.g. aligning < symbols,
      placing each item on a new line).
    - Addressed Konrad Dybcio comment to use SVS_L1 for opp-202000000.

Sarthak Garg (3):
  arm64: dts: qcom: sm8750: Add SDC2 nodes for sm8750 soc
  arm64: dts: qcom: sm8750-mtp: Add SDC2 node for sm8750 mtp board
  arm64: dts: qcom: sm8750-qrd: Add SDC2 node for sm8750 qrd board

 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 23 +++++++++++
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 23 +++++++++++
 arch/arm64/boot/dts/qcom/sm8750.dtsi    | 54 +++++++++++++++++++++++++
 3 files changed, 100 insertions(+)

-- 
2.34.1


