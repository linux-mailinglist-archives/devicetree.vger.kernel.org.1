Return-Path: <devicetree+bounces-130201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC639EE429
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 11:33:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BE98283EF0
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 10:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51CB0211274;
	Thu, 12 Dec 2024 10:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m6y+Hs1K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B428910F2
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733999576; cv=none; b=QqLyfoFnMTSr89rbQ1tngNA5C6GcDzPvgJyTYErgZx+oJtiVuzHKgey/eKPfNHrJ0r4udDkfJvnkS7CwzNnDS5m0z+V08IZktSB3HQrJYXPV9KS96K1PU0PYHB7A0KTYkCDpBQG2FWyJptdFNAF0L9Xmxq5VCPDTfa+x7WQl0hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733999576; c=relaxed/simple;
	bh=bxd2KxdukoFBLKHWSR4dEbD3FlpHwRsSJWIrFzkd7Aw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=FoPHqNI6KIRyk2sqRsOqa+3g81X6aVw/aNiGgsNjI9HC8Rq0ztNbsf2xSUvT/A0P/P07wUX5Pmkdpq8TF7r/byVG/MRpvtK6mnLKes8afGGt/hkvMPlq5u+n3tVVZd5vZay6jZcDqHfPasqZxga4lXO8fmHZdIqIXmsUwD4Tmqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m6y+Hs1K; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BC7gVx7029034
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:32:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=kssPaDPxup65Dty2dKSXA+
	jcEELLywxLYi1f+671RSg=; b=m6y+Hs1KR4Q0NEMez5Fi6c0CdG9prgxWYT9D44
	GautF2jzEAhX7uVPfNUgnQNYEFt50SluD51n5W+YMjCuUyU9SvntS83vDYwxobSB
	NTXGjYg0iNbOP4vjhROxU37hBgorASECs3oy8tEEpfFrKojsJg++bEHFkX1e4Je6
	9naMJtVPL6A9aidWgKnUN19ZNoO4QDthOoCr3n42Lqs9gKItedAWgo3mYUWzAizJ
	t7kUnxmfGaWQDh03WCABq6mQJmq/5PC9grQkIFeQF8Z80kmUyZLcLeUSZauGzkGb
	R5rBraAR5SVf278KzveWV8BhsANYDMOZiwgzBNq32srrPxhQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fd4xtjxu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:32:52 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2161d5b3eb5so5008435ad.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 02:32:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733999571; x=1734604371;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kssPaDPxup65Dty2dKSXA+jcEELLywxLYi1f+671RSg=;
        b=bWyivsJYHLvazEEmZp3Wby4ppvQE8exVRbNx6MhEe3xHuLefW2CtKp9qL7SsX934SZ
         yVh0KlqJY4qjD8HeuljGyAxYPkLLkAGsn+PiPGDy6eCEEEvNQ4LXrmU8lnXfej5YEQ9N
         riiLQKtbzonG/cAUKyS9tr/x4mKdj5qQo2pC3WpjhQN4kUmkmw4P/Zg55Ok1gCxsRUkO
         KdgZ9jXIuWexgPZzFjMP7qt6pcooOL1lovXvqhDjR386tV13EOQCmvb/tzU3xHPXDdyW
         CmnP4yP7BF7vNzG1u8R/sisoN0jF/nMivm4WrIjtHgtWeHD82M87YkycaqhZkCqDPgzt
         PJ4A==
X-Forwarded-Encrypted: i=1; AJvYcCUrAgjorh5QKa19By4wPiASxRaMPLR27IY2knaDFj1x07yf2enyuSLEy/V2Nyf1VaiwLXi2/Gc8srHj@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp7jCvZd9fVWkK81IaWRM22Ih17XuriyBuHDC/mModHOiFyeme
	cHO1HqbGnRVK13fWRDX1sTTqyATTk15EYITswAOXvROOnxRO3/81MV63Fui/X1zsLQ22mQpT44G
	i1tJr6qv53EQl6HnOhS2zHvGz8RcSstQfW3394/ebiaUoT0wG1PQNRPsmQNNw
X-Gm-Gg: ASbGncuuVvPZZ3HjTTITSGtRDV3KaDS3ZTB/zj5BN9jHJF/3ZnlMu48gMzKPCvF51wc
	HWmeXZ0XpeHOKqDwM14HrvqIhQFszC/hh1rkQfEYstAvV/RsmLipgSwMmcWkwOwF8gS45aIi5Pg
	Zk2dYoCHJRtoRFhM/49KXHSl54v+dCOjCKjeiw9EXclSz4poAdHn/po79Otvm1LI12RjIy4Lpob
	h1VkP6fgtLpPbT3Mi+vt6NyEZbtB4H7s3amxfCwL4tmtLc6neFxdX+KnM18i6Cr/498YBHr7JsR
	mTKJ3xfyUCP0vkSJ
X-Received: by 2002:a17:902:cecc:b0:215:a3e4:d251 with SMTP id d9443c01a7336-21778395944mr107145815ad.6.1733999571134;
        Thu, 12 Dec 2024 02:32:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEYe777zzUhTHTuqNo5FOPq34CzI9d/38zQqThsmvTBvj9oBnfzkvHRdu1IFQisMei1L+OcTg==
X-Received: by 2002:a17:902:cecc:b0:215:a3e4:d251 with SMTP id d9443c01a7336-21778395944mr107145585ad.6.1733999570764;
        Thu, 12 Dec 2024 02:32:50 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2178db5b42asm11102335ad.244.2024.12.12.02.32.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 02:32:50 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v2 0/4] PCI: dwc: Add support for configuring lane
 equalization presets
Date: Thu, 12 Dec 2024 16:02:14 +0530
Message-Id: <20241212-preset_v2-v2-0-210430fbcd8a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAK67WmcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDIxNDI0Mj3YKi1OLUkvgyI11TE8sk88TklEQgpQRUD5RJy6wAmxUdW1sLAAB
 PgsxbAAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, quic_mrana@quicinc.com,
        quic_vbadigan@quicinc.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1733999565; l=2373;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=bxd2KxdukoFBLKHWSR4dEbD3FlpHwRsSJWIrFzkd7Aw=;
 b=DS3iYf3bome2HEuPcLoShlifxY9EyuIqIt6CCIxnuV6YhKtpdI2UDLVPPd//UbAY3ahz4aSGy
 OU70Bfc0teGBz1gwKR8IZuS/zGEbcE/XzgfqMvBQRWkC7nxD/j1OwX0
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: a_4MnnVIe3zG08eIR3JEW9W0vDDgLmXI
X-Proofpoint-GUID: a_4MnnVIe3zG08eIR3JEW9W0vDDgLmXI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 mlxlogscore=955 phishscore=0 adultscore=0
 suspectscore=0 spamscore=0 mlxscore=0 impostorscore=0 clxscore=1011
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120074

PCIe equalization presets are predefined settings used to optimize
signal integrity by compensating for signal loss and distortion in
high-speed data transmission.

As per PCIe spec 6.0.1 revision section 8.3.3.3 & 4.2.4 for data rates
of 8.0 GT/s, 16.0 GT/s, 32.0 GT/s, and 64.0 GT/s, there is a way to
configure lane equalization presets for each lane to enhance the PCIe
link reliability. Each preset value represents a different combination
of pre-shoot and de-emphasis values. For each data rate, different
registers are defined: for 8.0 GT/s, registers are defined in section
7.7.3.4; for 16.0 GT/s, in section 7.7.5.9, etc. The 8.0 GT/s rate has
an extra receiver preset hint, requiring 16 bits per lane, while the
remaining data rates use 8 bits per lane.

Based on the number of lanes and the supported data rate, read the
device tree property and stores in the presets structure.

Based upon the lane width and supported data rate update lane
equalization registers.

This patch depends on the this dt binding pull request: https://github.com/devicetree-org/dt-schema/pull/146

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes in v2:
    - Fix the kernel test robot error
    - As suggested by konrad use for loop and read "eq-presets-%ugts", (8 << i)
    - Link to v1: https://lore.kernel.org/r/20241116-presets-v1-0-878a837a4fee@quicinc.com

---
Krishna chaitanya chundru (4):
      arm64: dts: qcom: x1e80100: Add PCIe lane equalization preset properties
      PCI: of: Add API to retrieve equalization presets from device tree
      PCI: dwc: Improve handling of PCIe lane configuration
      PCI: dwc: Add support for new pci function op

 arch/arm64/boot/dts/qcom/x1e80100.dtsi            |  8 ++++
 drivers/pci/controller/dwc/pcie-designware-host.c | 21 +++++++++++
 drivers/pci/controller/dwc/pcie-designware.c      | 14 ++++++-
 drivers/pci/controller/dwc/pcie-designware.h      |  1 +
 drivers/pci/of.c                                  | 45 +++++++++++++++++++++++
 drivers/pci/pci.h                                 | 17 ++++++++-
 6 files changed, 103 insertions(+), 3 deletions(-)
---
base-commit: 87d6aab2389e5ce0197d8257d5f8ee965a67c4cd
change-id: 20241212-preset_v2-549b7acda9b7

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


