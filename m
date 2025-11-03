Return-Path: <devicetree+bounces-234478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD36C2DA39
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 19:20:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D7E43BE028
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 18:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3B4C2741B3;
	Mon,  3 Nov 2025 18:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z9zzrCtz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RQPeYjsR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0C82264C8
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 18:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762194017; cv=none; b=Xd4uTXuAECKIIifLsfD7NWIbmIxd6I/wFsT4JnnsUMj1Vj77LV5wgW9OJbxl1HTLJDph/svtJu8nGjKh9zhjbcVWmKXp6c0+2f7Oooy2HkHUzR++P/dZJTvne4fJCXk8k0eXAePZW0tGqZSBN3F6hfBjcK20EeiFdpV1NhCSBwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762194017; c=relaxed/simple;
	bh=syrVo5iAk9XaMLm2MH+TdWb0GD40r/RhxWOefaejDCs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aEvudfr2H5lGG0CjyBkOKmLD9r+sBgR6sXfHb2RI9zB1cbo2Gm9Rb8XvzjKTkpFIU8iz6zHHMk0ZD7SjyJ5BXcUBfV0xCft5DVFK2JZN+AEIjAaseHIyvFdBYvQpLRajwzG/rJH1OoXGBt8qNSuzZ0YUh/l2/A8GnLEASCpuqzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z9zzrCtz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RQPeYjsR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3Gg28e3684447
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 18:20:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=wPVHU2n1xWHeMQ/KtrkQ1BmHwX9kME/Pa4e
	Pu4JGIqk=; b=Z9zzrCtziM2uxHm5o5pqGgv3IlEUO+2hr9zrosBrqJvA33bbX3C
	et8ajjKheRir/dq8nstHvNjXvWtOgz7ROySYNSfd72RfUfbiYvJOywvbI7H9UKr6
	fegPCEKxboExzyuegKmtURDTErZ6A+8PptCEuzdyMT4GIa7FZpiz/InhNJgEzZDV
	UMM0CFscqv1ushalZ/ytBXK9/bjUPKP7MDdyQt0epqZh+OdCQ+yB1StXBHP8Xrnz
	ZSsqsUKj+QPfY2+0LDRS+/iRYEvM0lAQgAZSRFFexgcvmc1XNRWiE4nX1hUCDU5o
	LZOPA/qSJmGzEHIaby48paC3izzOSpL2AZA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6tnrha2p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 18:20:14 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ecf77618a5so151337281cf.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 10:20:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762194014; x=1762798814; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wPVHU2n1xWHeMQ/KtrkQ1BmHwX9kME/Pa4ePu4JGIqk=;
        b=RQPeYjsRe3yA8Dd479ekOoJ4wuIrti9RoFRV1Xx7SsjikiK6Q3aDwUzP0k35OxLleu
         ytE0ePNpDeAnNxHuR3GX/Nao861WK1qJxzS2cxtQxQWMB1VVbOK22vDmRcypz0zVZ1/G
         l6XE24vFsLTvhVo5iF6cma+u+zT8LTyM/+9Rr2VcClfGa/LrZmsqdeNbiPILrN6iZKRh
         dGigHsecDZEw7UciGArYA9batOqh6kK5DtpdX1O5oSuhrs4yVggE2efFHfdbHyt2bbvJ
         2M+dUtytKsQ/A7SFWoeSWOxcSybsqTTqpMUEoXIqoHvvTUWu5N8XQRDVe6HjzzGypxiH
         kRqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762194014; x=1762798814;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wPVHU2n1xWHeMQ/KtrkQ1BmHwX9kME/Pa4ePu4JGIqk=;
        b=jHcLTXrOJ3uIsQqKrD2hOTmMmXdlWPvVm//PWHilzijdnsAiH+oHi/wC5KM8POpy6D
         UVkmwaMIajyibpycOMbtloDjtALZGtm1izSir6NXsY3OWN4S5nZjhmxJHq2qTBGGiVc6
         bmG83AW5uIHHK2W+gsZN2hVUURHISiwsAksbiSVXKEBmnrNz1xOdjjXrWH6SksFhiyE5
         ev+ox9QEjdcr29t5yVN9KMSyKY8qAt84P/vGcJIQZuyNLw7ttJA737FVqfenXHbG9Z7p
         NcDO0mEh2pH0trgNB3Abhmn1KuXl8vW1Esv8B44/GpVIfm0RdHWzSWgZQU6sRScOhG4v
         Cvkg==
X-Forwarded-Encrypted: i=1; AJvYcCXwOKkNZiEludZ5yOThg44Hw5b4/4CxyAeeim4d4hCn2Eoth1+z25HWXZtNImfdXuYbd1TQoves+ivD@vger.kernel.org
X-Gm-Message-State: AOJu0YzkduRQVlSGh0MUps41nsjxaECm64UxHxya1tktDpq4B+rJD+cN
	h5xlFjdMLrGkS6OPAk6vJ5NjEdZmqIv7PzrgzSwQ8NEqTLp5v78VpaywAcvyyoyespHccu3uCPn
	RMjCvMUAaPNZn1MeeNAWiS0vIIr/apINyU6XeW8pCq/foXNVlpEtxcihBHDmN+8XP7MgMkGC1GK
	Q=
X-Gm-Gg: ASbGnctAdaWgD7/WIL0SfK3rJHV0pPXSfqiA1qy81hGquLqQz3O2gho55NvU3vzZuD3
	XrfOZA/Cf8sqvV0IqLlk0qVgpYDS9gsoRwAgJBLC2tm5swBU8/J1t5Q9jDhUVeBtMG5lFT81UMh
	xaviDaDzGyubNTQ54ysgEGbVs3isZnf2VCkB+5dIf8WpMpdYJQptFps/r2ZGageuVoxzsZNbgEW
	P76Nhfbo0h5MPQucAAG2vcngjy72r8i/tHc7kch7aYxlYA+if1Ssxn4O7solO0VFtMn49GBKDN8
	jqovKcZnu8arkYZ7O+XlDGq0r0LGGPskF6YEPUwBiqSt34vKaOB53GrtwF7XR6fVvFPB65sF1pX
	CFi4Lgn96tYpnhxEW39GZSOJXWXsqa9y5Sh17NNCR+ZxiMsYXOZFK1dEwdMdxKprrDw==
X-Received: by 2002:a05:622a:a957:20b0:4ed:4367:690c with SMTP id d75a77b69052e-4ed436782c2mr106020721cf.70.1762194014132;
        Mon, 03 Nov 2025 10:20:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEnmkpLdRJfLyfrfsLo+5DFqcgDt9d5665umRIC/cdopqANzLtOcjv7bkzUR7TAplZYJhjATw==
X-Received: by 2002:a05:622a:a957:20b0:4ed:4367:690c with SMTP id d75a77b69052e-4ed436782c2mr106020041cf.70.1762194013354;
        Mon, 03 Nov 2025 10:20:13 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:8842:5746:daeb:a8f8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4773c53ec2csm169096545e9.11.2025.11.03.10.20.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 10:20:12 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 0/5] Add EDL reboot and warm reset support for QRB2210
Date: Mon,  3 Nov 2025 19:20:01 +0100
Message-Id: <20251103182006.1158383-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDE2NCBTYWx0ZWRfXyzu9YIrpqo/H
 qHz9MQfRYlXx4l16mlt575HYNUalT6oI9CxRdWyfiAvrMea2A2trVTtNDIL5/nOwV2FDbMGz9Lj
 U+G7w9bi1WUJCDXJrMsQHSlrGmJLCZjspSpuDpQBz/FLuvSSsamG5kLNHmX0mJJBBEzEiLKVGy3
 0qNTjiKFBfzKVydBJbK9wHtBM065QCaWdHyMEoaCGW8fVhxAraanxuSaCGMNFnkiGK9rN5vGm1H
 lTMQh8mVva1xsBtVQwpsOEJbtyaERL0FMSIdDar2lWH9pVsgfEcKK+XiPU6Qj66VMdAeOk5aU0u
 4CgtpwDMySfLdyXCWWeP+8Oj0KNKx1LELcz7xcmfm8GDs7IBpogt4j7CpP1XrWJkvYYrNnY9bBa
 cAEMh55xfPNDADJR52v8MAXnjeOV2Q==
X-Proofpoint-GUID: dOfpuL3waZ_NFkqMaAWqJyZUqP3ZKzMK
X-Proofpoint-ORIG-GUID: dOfpuL3waZ_NFkqMaAWqJyZUqP3ZKzMK
X-Authority-Analysis: v=2.4 cv=BrSQAIX5 c=1 sm=1 tr=0 ts=6908f25e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Wdf2HVhBgUAoo5M4yR4A:9
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_04,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 spamscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511030164

This patch series adds support for Emergency Download (EDL) reboot mode
via the qcom-scm interface, allowing the platform to enter a recovery
mode through the primary bootloader. Additionally, since this 'mode'
requires warm reset and platforms like the QRB2210-RB1 lacks PSCI
warm reset support, a fallback mechanism using the PMIC is introduced.

The series includes:
- Documentation updates for new DT bindings.
- SCM firmware support for EDL reboot.
- PMIC warm reset support in the qcom-pon driver.
- Device tree updates for the QRB2210-RB1 platform.

Tested on QRB2210-RB1.

Loic Poulain (5):
  dt-bindings: power: reset: qcom-pon: Document qcom,warm-reset
  power: reset: qcom-pon: Add support for WARM reset
  dt-bindings: firmware: qcom,scm: Document reboot mode
  firmware: qcom: scm: Support for EDL reboot mode
  arm64: dts: qcom: qrb2210-rb1: Add support for EDL reboot

 .../bindings/firmware/qcom,scm.yaml           |  4 ++
 .../bindings/power/reset/qcom,pon.yaml        |  7 +++
 arch/arm64/boot/dts/qcom/pm4125.dtsi          |  2 +-
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts      |  8 ++++
 drivers/firmware/qcom/qcom_scm.c              | 22 +++++++++
 drivers/power/reset/qcom-pon.c                | 47 +++++++++++++++++++
 6 files changed, 89 insertions(+), 1 deletion(-)

-- 
2.34.1


