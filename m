Return-Path: <devicetree+bounces-197363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 344DAB08EC2
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 16:02:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EBF0B3BAE3E
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:01:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF2922F6FAA;
	Thu, 17 Jul 2025 14:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DIY9YdKR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4585B2F7D08
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752760912; cv=none; b=Xc93PkP/Xm+OqybmaEBnrE7D5mq+IWd2JmD7i0zroGCHXD28edjia03hUQK/sArxh9x5bDqBu5qjIsZ3Wr9InW7AVzlzOGchXN/IUozmoaEMT4CIG4H+J1N5HBuiEJ4ZQpu1f49MJLnADoFovsDcY4xEGEtd/QHFd09h2siaocM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752760912; c=relaxed/simple;
	bh=Dhmeg5kW3jkXRtEQU8I7P8ZNQYm6stnF2VGjRncNTvk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AQNH5v1oGcntdtA7/qAk3tUbvwtk3AFYqhHb9GG7f61jr9REgJU46q9UA0/eN4pi4t62Beuk1YQI5XUEG5VOsBJj2fq+RokUqW5/GAQthcnpXdXR/2Wz8EmxSZ2pb45re9uYVloxlSFwFcq5aNoh7EpN9zGAd19jMwoExygAjvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DIY9YdKR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HD7wxI008493
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:01:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Djf6erG+ZP+oc2BSetwCL7jzmGa3Zd+9Ksh0jXCgHwk=; b=DIY9YdKR8kgent7u
	ZmxoiG9MlHN8ZlkmvSnPuryvCLYsAxGlV+snUfCE2j589h/23QR59h3J//O+TAZo
	RBz5Y2GI1SKnydn+gnFpRijuuPT3h+qussb+M7ncrUf3FG8qzB+D/dtJuXRwpff1
	/qlIX4+4b0ZfOCZT3WZWUyehYFugYMbvbztLeOCsT4F5N7PiYbmz4MD0xlhoOGgK
	u7ZlJOXZFqcUgJlnB78/SD8vJiHKRNmDz9HJiUzo7QA0zZyKsXXWJp26fLIy1VoY
	uvcQl/9FpHr0z8BTr9QStFcX1MELlYhW/Siyu4sf0M3QbeQV7XdWdisCXFeCyci+
	QjkHCg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufxb7wsd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:01:50 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b34abbcdcf3so726758a12.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 07:01:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752760909; x=1753365709;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Djf6erG+ZP+oc2BSetwCL7jzmGa3Zd+9Ksh0jXCgHwk=;
        b=ibUBQwauj7a52G/Cbxcdz8rMuowi/sWkc/WO2L2JdXRpA4Pt6uH9cYdhh6QJ7nSQIs
         CzdIjHUZvvS7z8rYAfcDzWQp5Gw8d/iDkN8P/GPqmCOTocsVFzZXqx97/V0OEXhUC07v
         Z60mkzoARhVd1T5GL28O0fHpLIbC6qaecEzHoo2w3Mo2feQUa94m85uajixV5705sWQW
         vgcha5LV+b4srLOzFgpo7AS5d6SakiI26h14N74u3DaWvTmj31WBJUKbOqk9I/tS15P3
         WJJMPhcRCF6PjxMPn8UPYt4Aan70642Zm1uUVJNrGKDVUTqu0WaNsnpyUBTRlv+bsx3v
         yqOg==
X-Forwarded-Encrypted: i=1; AJvYcCW8YvQjtjAAq3quJHiYERED/WrgO+uIjMPgzb31lCeOoxxCPsqv/5dESbpHvtNudHrZjMGXUABNpCRz@vger.kernel.org
X-Gm-Message-State: AOJu0YwKDBn2j+2FE1cCePgM1Ebw6fwidjROwy7adPqZe9AuF38gwFNX
	Hb3PtzK9hpV/9voQ1EfXrAhJ6SBcV772m5tRaQYVsafshyALUnGQAD4Jarcx6lLmf+a+L0cFBfa
	iRRPWjoU1D2oPrzLc/dQo+SXIUzIf/SAtRfTakd8o0aeJ1mX2L7ZeNqPcbnK2hyIL
X-Gm-Gg: ASbGnctX+03OM1NeKhxyIoiwDgRq5+L5swqp+z3PfXH59Mu4rakoeepzszqjpXDRMU+
	RUZu5ZnmnUbi5xoLtfqjlIZPIfAjlERLNfPEl21P0PaN2WqYceDMC9B9VWys8nmON4bFhyYFzVa
	X2TTBqy9voF75bVlvjn+pXentpYxBgmAufw5DPcYY2uRwe0/2T34SZPVgHJrPBIvGDsqfvkbsL9
	1grZtZ7vLA1MhHB+8VrzRkdzcGzYDvkCX/f/jzn6NgCoEIW31AtS9YlYIZdc6FtoxN8yNLikscB
	BvH7CyEQWUv9Oc7+x36HdssK55yP2mFAL0eF9HwhRukBlRMFiNp8FnrKWp6/JQp6hZgrBa35m84
	=
X-Received: by 2002:a05:6a20:7290:b0:235:b6de:4470 with SMTP id adf61e73a8af0-237d5a04312mr13021376637.13.1752760908492;
        Thu, 17 Jul 2025 07:01:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqfgvPvr2MPvSRydxqMLEX8fOncC77Ga6bNoSEBZPXqpAQm3mCkG2jxNO5HoVFg/84ZPlWmg==
X-Received: by 2002:a05:6a20:7290:b0:235:b6de:4470 with SMTP id adf61e73a8af0-237d5a04312mr13021329637.13.1752760907916;
        Thu, 17 Jul 2025 07:01:47 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7507a64b57dsm10311986b3a.14.2025.07.17.07.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 07:01:46 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 19:31:17 +0530
Subject: [PATCH 2/3] PCI: qcom: Use bw_factor to adjust bandwidth based on
 link width
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250717-opp_pcie-v1-2-dde6f452571b@oss.qualcomm.com>
References: <20250717-opp_pcie-v1-0-dde6f452571b@oss.qualcomm.com>
In-Reply-To: <20250717-opp_pcie-v1-0-dde6f452571b@oss.qualcomm.com>
To: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752760888; l=1499;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=Dhmeg5kW3jkXRtEQU8I7P8ZNQYm6stnF2VGjRncNTvk=;
 b=084KUxFpeuJmftJPk/FbKVmIaYC1dXtazX4CPnFK15rWpGQGjjydZZMBNZrWPmRUtVBAw6skJ
 SiJ78PAdaVsDM9kS62O4m0IJwHUNPuuA2uMAA2Ft7ClH2vU7dOebCvY
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: uZtdQ1JFWlhFztCymKXkz9d2Ja6JlIFA
X-Proofpoint-ORIG-GUID: uZtdQ1JFWlhFztCymKXkz9d2Ja6JlIFA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDEyMyBTYWx0ZWRfX2nkDq32suZH8
 CwefsyJbT1A/k+8eUVR7eAJFZ0LGbCJsqGQxll98cl1y7MyA5MnWw45SZ+P9cZ+4B/8HjiPjsJR
 hW0XHC2RXF+igNiMM66SmTIbqd7wC3lUFPFNM+PWkrmX07YZnIzVMp+3QGn2fk81h/czK6Q0Fh0
 drlV54LytV1n3HEPZijk/KzSdfZ7nXZ2/TvWcflW5UQ1oh62d5BemqulVbJf4AWt1jsa+JhStg0
 +DwKH3LE6ds4uFFt0WdkMv8jPA1ELBMb975WqU8dthtAm5S4wUSaMli8+tC8j/hmJoAe9dAOZMt
 6wNVvQWgKRQRn/seP6VGiLGOFI+V2N4mca+2fJ4FrPw6NtwQzVqQNK6FZRt5P9gplvZyDM+Kb1S
 n2ba/ZohDyhYWZPxMs0xznpf4b+cAU87+GgBJVw9K5rSa6jYyxLnbK9FFxICWslnvxal3xCS
X-Authority-Analysis: v=2.4 cv=Xc2JzJ55 c=1 sm=1 tr=0 ts=6879024e cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=927
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170123

Data rates 8GT/s x2 and Data rates 16GT/s x1 have same frequency so using
same OPP entry in the OPP table.  QCOM controllers may have different RPMh
votes for different rates. So we can't use shared entries in the OPP.

Use only data rate freqiency and remove width in it and use bw_factor
to multiply bandwidth based up on the link width through OPP.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index c789e3f856550bcfa1ce09962ba9c086d117de05..fde9fd3fff6bdcec0c9618d3f4b003a3d823307f 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1505,13 +1505,17 @@ static void qcom_pcie_icc_opp_update(struct qcom_pcie *pcie)
 			return;
 
 		freq_kbps = freq_mbps * KILO;
-		opp = dev_pm_opp_find_freq_exact(pci->dev, freq_kbps * width,
+		opp = dev_pm_opp_find_freq_exact(pci->dev, freq_kbps,
 						 true);
 		if (!IS_ERR(opp)) {
+			ret = dev_pm_opp_set_bw_factor(pci->dev, width);
+			if (ret)
+				dev_err(pci->dev, "Failed to set OPP scale: %d\n", ret);
+
 			ret = dev_pm_opp_set_opp(pci->dev, opp);
 			if (ret)
 				dev_err(pci->dev, "Failed to set OPP for freq (%lu): %d\n",
-					freq_kbps * width, ret);
+					freq_kbps, ret);
 			dev_pm_opp_put(opp);
 		}
 	}

-- 
2.34.1


