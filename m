Return-Path: <devicetree+bounces-133478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 620179FAAC8
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 07:52:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0DE4A162EC1
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 06:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AD6718F2E2;
	Mon, 23 Dec 2024 06:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iR+7AoTI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0898918DF6E
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 06:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734936697; cv=none; b=kVnqSbdNAoLjLrHbSDLac8bEv8ejp2B/kYZk82CvyZaum0pUA9ril1oZgHHqYSs7GxwV1baZnAW2fCbyiB2gJmw3BBwH0Z1rjIYW4oV6dL/1j8OkbQzPDFT5BJO2F+Hwp2HZYCcpFrIvJTI3OmfAfoQ4x/wQnVZZSr4nV1OIGxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734936697; c=relaxed/simple;
	bh=1cCWyVa5AK2/6g1dA5pRl5YsQKIo2vs/YZuAmrzjF+g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TEf3J/JGwOqiQLR0pQZ7aSRDuQoyhjRYlTC2+kndw6Xjd2BLa99ynNNRnWB9krVT5YLB8R3IepF9cmaOOjUQuhAwzXc4lq+E7op4Xj35sovUHQkgx2HXdNA8Ep7Da7BzrUnKyX9CpFeb/tXL53O2OltxX73wegMqaaLBy1LgV50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iR+7AoTI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BN5rXG1018305
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 06:51:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r3fyHfyMlBiD4pkCqczBKmlgoz+Ny2UI/7GNprFqSSU=; b=iR+7AoTI5k1sOEGT
	xbNmaqLnVFj5LCAgmfT+Cf0JZ2g3NSmkr39YKReYMvI+YKdCO8b0ncGjxazOavms
	iDZ86bY7NbfXgiWnV554EwqzVhEvZKBk9Kk7OiyXu+WXALUjmwY7w2ijPqHKMay8
	gNkdYB42gVG0YgRpeoS7mcpQ6JYaFefDiIWhZT8hIvPvchksPMvgy9ZrKp9rS8jC
	uaCBZlwM0LLyKn9aYw88bsNdcMnaUs3Xc9C0PR36D+XcmeW98ugBCDo3dTaLBL2q
	Gy46DpusJXiayfXjfvXZEem9IeaLcGeJn9GquP0+O4TUeF798Jt7NNF//atsyQJ3
	gXxCrw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43q24587an-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 06:51:35 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2166f9f52fbso58421765ad.2
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 22:51:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734936693; x=1735541493;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r3fyHfyMlBiD4pkCqczBKmlgoz+Ny2UI/7GNprFqSSU=;
        b=ZseCOJLFApueQgwuPA9l5ZEoYCJejOUZANzf7rS6x64U3wlM7jUCar/TvtSIKMp1wd
         TU0WfXTr3bd9xRVMlbLLx65iB7/Y2/tUQkcVNw1DiI9gxagqrrVS8ai/wSWm/9ciGAc1
         yjYUKqE/tyi8T01H9tISRiKsTV4dFlSem5itlb6C5ARLNHxAixVUIlpwPSICKe+VFP+Z
         Bt0uY4XT+q+QwdsQtbm72mtxNVWqHJbhqREUnY4PlsqkrKwLrj02/AQs13Rl/N8GWB6J
         NtTBjC4FDibHG8h9NfpBooio2S7p2ErmR/qjQHuvVrJ+mvIiIeD7+jJyJnJRUg526+X5
         PRtA==
X-Forwarded-Encrypted: i=1; AJvYcCVB/nvdHOqYR/ZWVO098a0X98iI1Arw7T2ZxtNpyKmQVwOdCYR5f5fNR6L6jn2mLIabfl1DWmtmNVcN@vger.kernel.org
X-Gm-Message-State: AOJu0YwYs8JyztBJKxEmrM3mlWePxuqFHghNG1UTqLYV1DqgjRVfNPSL
	AURcMTtsqAe5pPMpFNVTjWPGaAGbNBnzNeZSFhXzx+6QlYxiNqHEnZ4+fiRFozpyWyMjfW3chrv
	v8tUto2wJimy7yEtQFpKTFp5+svr/jLIudWKnfLqeDlXcgdQyb3NtwLsme6f3
X-Gm-Gg: ASbGncvl7X0nxrqADeVh29QHdp/MgF+eWl1SzY7YIZ3XbICqd2uzyMvh0UFJvm05FTX
	WKa+jGHSEIHUHCwdTTI+HoxsnEJA/l4b+AH3ViLy0SrZfPKXj8eKegkmC+TvJ6fHac/o8RrrzyP
	+vLazr3Kcn2YCN7Z4v0KbAS8ZsmgBu+TCw9b7aOEATz3Byk1pUDG4huYz/m2HKKAxba+IcoGmKz
	2L4mIxbI+p29RypgQCeWBLl0xj5HxOgrBAkPU+E4n5YebK3F40XEiMwIzw5JRqlsfpPv1LsQXhc
	TVAsA13A/vBpXwz1
X-Received: by 2002:a17:903:22c6:b0:216:2474:3c9f with SMTP id d9443c01a7336-219e6f38177mr158490515ad.52.1734936693199;
        Sun, 22 Dec 2024 22:51:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFlj6SyzFJBx5rNy9TZZL+0N5FIrCQWKe50bVBLK5VVHJb/y3WmnXlcafYRW6ANLlzpYPjV5w==
X-Received: by 2002:a17:903:22c6:b0:216:2474:3c9f with SMTP id d9443c01a7336-219e6f38177mr158490325ad.52.1734936692892;
        Sun, 22 Dec 2024 22:51:32 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9f4413sm66570155ad.172.2024.12.22.22.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 22:51:32 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 23 Dec 2024 12:21:14 +0530
Subject: [PATCH v3 1/4] arm64: dts: qcom: x1e80100: Add PCIe lane
 equalization preset properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241223-preset_v2-v3-1-a339f475caf5@oss.qualcomm.com>
References: <20241223-preset_v2-v3-0-a339f475caf5@oss.qualcomm.com>
In-Reply-To: <20241223-preset_v2-v3-0-a339f475caf5@oss.qualcomm.com>
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
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734936683; l=1380;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=1cCWyVa5AK2/6g1dA5pRl5YsQKIo2vs/YZuAmrzjF+g=;
 b=s3e3TGtJRqA29PmDdzWAUKd4dKAi16hOJG07WXrsTiXkTuNMf3o+/YJJJUd7aq/bDpszcnRCz
 sczssJdJRTeBx5zj5yQMBEY6jqJG9fv5U7MMmy2Lgz0fyTUssPFfBbG
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: CUP-F4IV_gLC1OPElEIVCjy6VhaSojmf
X-Proofpoint-GUID: CUP-F4IV_gLC1OPElEIVCjy6VhaSojmf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 adultscore=0
 mlxlogscore=905 priorityscore=1501 malwarescore=0 mlxscore=0 spamscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412230059

Add PCIe lane equalization preset properties for 8 GT/s and 16 GT/s data
rates used in lane equalization procedure.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
This patch depends on the this dt binding pull request which got recently
merged: https://github.com/devicetree-org/dt-schema/pull/146
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index a36076e3c56b..6a2074297030 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -2993,6 +2993,10 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			phys = <&pcie6a_phy>;
 			phy-names = "pciephy";
 
+			eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;
+
+			eq-presets-16gts = /bits/ 8 <0x55 0x55>;
+
 			status = "disabled";
 		};
 
@@ -3115,6 +3119,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			phys = <&pcie5_phy>;
 			phy-names = "pciephy";
 
+			eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;
+
 			status = "disabled";
 		};
 
@@ -3235,6 +3241,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			phys = <&pcie4_phy>;
 			phy-names = "pciephy";
 
+			eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;
+
 			status = "disabled";
 
 			pcie4_port0: pcie@0 {

-- 
2.34.1


