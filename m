Return-Path: <devicetree+bounces-161544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A760A74842
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 11:29:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AA78618950F9
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 10:29:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A36621ABD7;
	Fri, 28 Mar 2025 10:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pV5pup4M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E15221ABC1
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 10:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743157746; cv=none; b=Vop+LvQuG/8OBp1ZUCyOK1MgeuaXGr/A4FrDzhpLtXtuJldGki4Wv5OECO/XHdsFSruajhbTBoJHKyzrMG99R013ACMqJ+HUE8exY8HZId2BJWemZWOAIS7L4YdYm/58bytzPI4ts1+y8JLZ5Gfo/y+xldlCNYpcx5PmPGs3qDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743157746; c=relaxed/simple;
	bh=3xtlvs1vbdz9Lx9DTGncf10UyrhBPWHbtrA9J6tHahs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WNM9kbCLFY/nODmDnzSA/KA4zD3PGJLx/fML9/vyPhGAQ7nb31J68/VHYSff2zTAIzd6JS4N318uPFMBWNl+VZECkd95WO6+WvD9kiakDeoh7UDVzMSadFpiNK6JuFsTabViWntxNdR1LoY591alWhBHlTCS6RsX/xu4BJm9yPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pV5pup4M; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52S5TE2G025687
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 10:29:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OOCWk2D0zXdlqRt97flBwH+ovhY8VuJGcvABkqQ95gA=; b=pV5pup4Mmye4wiWE
	riA+ELf6VMimGnr6PEFmbK/OHkV1ZWSY5Kun6KqTs7rKlXdptgaUwrMm9R4MGSsD
	YglQ1pKMhE65oar/bDlKtdF1zpMe1u12/q+jtPo86kh4ilhFQ9tOA9rD+JD6ryxF
	tRV9AByl5oWC4+vErii1+75viy1DnJfU0cVWD6/0gymhgjn1SBuRFh44L/M1d5dD
	i5rLiuxirj+rOo145YOS1qC940wtVI8kMYO57FRg6hxqnSUktnsSLb98y8OTGT9f
	etOrwXHM1TfieNBB7Rlfchuh6oodLMjpR6uhKoIak69ESH1TKCP8ZSQf/C7MC5wl
	W1kj+w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45n0nuv902-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 10:29:04 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-225974c6272so32995775ad.1
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 03:29:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743157743; x=1743762543;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OOCWk2D0zXdlqRt97flBwH+ovhY8VuJGcvABkqQ95gA=;
        b=F7yGsSl3Q+eBiSHfqnhLOCsw8BQVfxKUyyGWfDgJcEzH82TfWD90Nd36axDiCcYA+s
         ueHuXuZ7yLxSQk0TrFgaeMuSi3KxFwEmuD44Ek+FPq5DPeSjkYDUk8oEZZT1L9Xzk4EC
         JxOev53TKIqKx2wzn8TrgPSjxSA8YlTdI0TEM+9Ef9QeYPAfExoAHknysfDQSbUKT1DD
         lx2C7l6WVB4Yz4OS7LUukAh9hTx9OPuomnSZRZvmvIAFzubMWH+64gOYKCEjq0r9tQxH
         PJbnHKecIDqx4Ek4nrxyOAGnpe34W/LEGhf7aqHtAR0VYkjnS+72lH7QZ7cCGnPwwhTT
         c7bQ==
X-Forwarded-Encrypted: i=1; AJvYcCXu1QxHq0Fydak1PZClxp7omb2tTDK3dqmp7NRSLAt7Ag18d5m+ZW8vT5jIxvrVoifIvu3jtWc3Nmw6@vger.kernel.org
X-Gm-Message-State: AOJu0Yxm+kQ1lig/QlUKHRgGGZZcmLBuUeocKK9bVMeM6McJFRCGk17e
	GEdOR7qX/sJeVQS1lM3WLl4GE5zKp3gsiXKvHa7DmfL2kZvB5qb5B74/v6hjnOb3Yx8vX5FKY8/
	aklzFH8rQR1jljfq2/tgv8/446it5cpAvXF1gAPmTPbDmbwF8gFlty+k+8znP
X-Gm-Gg: ASbGncvpsJj5mlUU4DY3dxuWpuVPH64YBw65iPB53c6p5H+/1sNR2OiIJAhzRNoqf4V
	dc02fQ36bk5cqlpQtv0loZueN8UQlMfNnJqzuvbfzz6kyxKKvqoLp6vYRsJBgb1Wavy0GYaWiI1
	hdBzNBhHci93L5VUagNnHlSpi3Ue9/+exvDWqjKF/qQ87R5VqMRvnrqGF6PU/U3Wztlu/WapWEP
	M2SA3IrTzNIVsAtsHeHL+MUdn/5mOs521rxf8cwb/owj4lW+i/whGj9FANs6O72oqoSzFVSBCww
	gXqsKJeNh+z5d6dTNDCSaRkXmFLI5qaey/KL1kyIHWiR6v1x+tM=
X-Received: by 2002:a17:902:d507:b0:224:24d3:60fb with SMTP id d9443c01a7336-22921cca739mr35292245ad.10.1743157742727;
        Fri, 28 Mar 2025 03:29:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFEOrLiW9qS/wbDey08G3CBHaVs8TzgU0Gb0MlZV7nWK/tlufZpQxHUCI59tzGgvJMc0Iw7Aw==
X-Received: by 2002:a17:902:d507:b0:224:24d3:60fb with SMTP id d9443c01a7336-22921cca739mr35291635ad.10.1743157742178;
        Fri, 28 Mar 2025 03:29:02 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291eee11b7sm14561965ad.86.2025.03.28.03.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 03:29:01 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Fri, 28 Mar 2025 15:58:29 +0530
Subject: [PATCH v9 1/5] arm64: dts: qcom: x1e80100: Add PCIe lane
 equalization preset properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250328-preset_v6-v9-1-22cfa0490518@oss.qualcomm.com>
References: <20250328-preset_v6-v9-0-22cfa0490518@oss.qualcomm.com>
In-Reply-To: <20250328-preset_v6-v9-0-22cfa0490518@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_mrana@quicinc.com, quic_vbadigan@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1743157732; l=1925;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=3xtlvs1vbdz9Lx9DTGncf10UyrhBPWHbtrA9J6tHahs=;
 b=8wAQ+IxIsnfUS5TRRIA0pmea3c7X5AZ8Oj0Mp4K7+EVTYxybUsChyeiQcrS+yhnAGbNhnhVHi
 0rux6SvyIIYDmTWBwvU9bE6kNh5AJI0y6NhEwXLGTtAleVn7wBQ4lAv
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: DwylFQxqivY-lv33ddebatm08g8Y4Ydb
X-Authority-Analysis: v=2.4 cv=AcaxH2XG c=1 sm=1 tr=0 ts=67e679f0 cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=TRJGHeO7bdl8qYu8Ap8A:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: DwylFQxqivY-lv33ddebatm08g8Y4Ydb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-28_05,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=978
 impostorscore=0 malwarescore=0 bulkscore=0 mlxscore=0 adultscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503280070

Add PCIe lane equalization preset properties for 8 GT/s and 16 GT/s data
rates used in lane equalization procedure.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
This patch depends on the this dt binding pull request which got recently
merged: https://github.com/devicetree-org/dt-schema/pull/146
---
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 4936fa5b98ff..9f14dd13d02e 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -3209,6 +3209,10 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			phys = <&pcie3_phy>;
 			phy-names = "pciephy";
 
+			eq-presets-8gts = /bits/ 16 <0x5555 0x5555 0x5555 0x5555
+						     0x5555 0x5555 0x5555 0x5555>;
+			eq-presets-16gts = /bits/ 8 <0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55>;
+
 			operating-points-v2 = <&pcie3_opp_table>;
 
 			status = "disabled";
@@ -3411,6 +3415,9 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			phys = <&pcie6a_phy>;
 			phy-names = "pciephy";
 
+			eq-presets-8gts = /bits/ 16 <0x5555 0x5555 0x5555 0x5555>;
+			eq-presets-16gts = /bits/ 8 <0x55 0x55 0x55 0x55>;
+
 			status = "disabled";
 		};
 
@@ -3538,6 +3545,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			phys = <&pcie5_phy>;
 			phy-names = "pciephy";
 
+			eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;
+
 			status = "disabled";
 		};
 
@@ -3662,6 +3671,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			phys = <&pcie4_phy>;
 			phy-names = "pciephy";
 
+			eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;
+
 			status = "disabled";
 
 			pcie4_port0: pcie@0 {

-- 
2.34.1


