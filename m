Return-Path: <devicetree+bounces-237166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA478C4D8F5
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:01:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B76783A5A0C
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C2F3357A4F;
	Tue, 11 Nov 2025 11:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SWvagOSG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VDLYhqg0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C6DB357A28
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762862355; cv=none; b=ZPPwUkKmwPz6eL029KeH5GBfmesISuX1FCNjBW/Gl3F3THd9Gs3a5VysQybBFlpBudG34xpCSl8kOk/uRSV4M4MmMZlS+APZWkIDhYSxQ/6QcwAOKucH1CVhT2nU1P6KDTp6IgPcA9YSYyUNaGcqbMi9Iw9LZ2EHqfo5r7woRMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762862355; c=relaxed/simple;
	bh=umYRjS14VQvk3pNqjkqzwG2eubUYVYeF5yKU4mUAtdM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CmwlDSKu3vDnkV1pFvwn7wY7fA4pwEn/45gm4GP2CcGZ/QfiowKGwljQpFqZsy+sDo8vrRsUCUA6uyj9I03Bikkg/0Uj6Xz5S5ehpqqiz5uMcMnL22rfrtAIVqiErGcnB6rO2SQjq7OtT0DPYzA/yt1nMRFVsIuCAfgqHE1Fd2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SWvagOSG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VDLYhqg0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABBGNf02165974
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:59:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Igj9Wy9J+oZcbew+QWuqZEjGT7xng6V/MPrvRFcOcn0=; b=SWvagOSG+F95pVqR
	hq95ktNrCJfL3CZpSpwX8NSKa4u3toG/cguT7mQ9M3GopTd0lp5Rio5Tm/fevFmy
	TeJ2DEhXyNboy7CWFRbAMXfYtZkxCbP7nqDSCn1XVF6wnEELZw+UzW6pshaGoBzO
	YUMFJlqlBmc4CD6s/xte8MZo+Afv90SIlovvRyVZKoyGj2LXwGHCvS+Qm5H8AjtQ
	V27yPkXiM6/DEbXKkAMxfwrmQxXbX/H7t9B3VbMhpWmGmSu+1ahLYklEarrc8SGG
	/WwFLoeLAT4yAs8ZXqpqiUL60uRKrS3mU6J4hmSGvazr4hnJU2Q0GmXLuzL/bC6X
	25YQqg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abxhhh670-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:59:13 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b630b4d8d52so3639049a12.3
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 03:59:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762862353; x=1763467153; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Igj9Wy9J+oZcbew+QWuqZEjGT7xng6V/MPrvRFcOcn0=;
        b=VDLYhqg0yJI+DDtLWLRVtWS4VpTDiylQ9x5txbIPe51ovGu+Qu8fdL8HvJy0gQWl+0
         y0ueR4K+ObvjIkP69XKqU9pfSgnlRStv8DqAL5mj9LFj/PYFP70guj7T1NBhvcXB+MZ1
         soMeIt3zLIVDTTOqnQWtn2Fe5EzTGkSAOnm4JdIp99aeX5d3Dj0u4zLmnQHI62tXiB4G
         zjOFZ6eZTq8XJ3Gernn0qmyZIGR7RGCxASJfOTTqWFG8q6PiS/57cPj2/hLu7pPvuZK9
         BiEmWZj1Z7i+sqoYcbZzA7N/dbp7o/1EV0Q3xmQG/QmFJyWEn3B6+yQUX3I1nZUj/xbX
         K2xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762862353; x=1763467153;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Igj9Wy9J+oZcbew+QWuqZEjGT7xng6V/MPrvRFcOcn0=;
        b=QgXlY+OBlUC2tbkkMCEVuK96C0+1bOXjBWIRQ5VySROAgldp2StXNYmj7+M4sumbbt
         cv/FH4Hy/pubWrOCvRazsgnoNe4Cma6Gpa5bwqlhWotlvuh6v7+yDmDWMfQTq7wi51zw
         3Birvokp1Arlu39QhvXM5SnWWQDOOl/3wXPfWnSyvBxOKw0xIsYDbQ3CCOOBD4jzkR+l
         O5YY9qS9HzgwRVr7VMMeV3PrOhmEpm9TpWMab0tgpEVs0yJl7q5JAwzukStBGaZOQpxq
         gXrrfUx/7kgdxaeW2F26iIwQgig4FOO7Yyr7PaOvD594iIA9R3GLb3Dz8NIwFLh/RpG5
         2fYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVheb6tc32pw/NZhM1cq++6HkmX9kvkCrB8Q2FhKvvc0VoHr2OOCZGoGZ7i1fA1Q/ZNG5+PasLvy8ER@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwhqr1bTGqFkOUMZEjvzcnYuQpEKKgtHyb6xKyT+sCQXq7kgPr
	sHenjEdIaYpePZ+/T5ha7wFtL8uiRgMxDSZysBpRc/dLidCU5NNJi58I3LF1dzPUGe11fu0qX6K
	h4A+N5o7C9nm4Kfd6dsE5nsPrEZgpBb86HRoqZGUk0JM756dicDFjJUNLuPneuyt1
X-Gm-Gg: ASbGncu2YxzsACzB3eXXgm0SLapxmz2ES+ndQdV9q6YKkk5FAa3bLqAOpSVn/8ZkpxJ
	KrkFoY+/S90VW8KRi9n4gHCEUAHhXe6FMvwnM2OkTJHqGHsisw1upGDqzoukPg+s53gDX9HdhHe
	fjgcwXFrzdiG/r+AJcLhFnAPg8SacuURHUKyCMxcV3ePTYbjfl6kLjLTQLGEzPMk6Fpzfk3ESiE
	54v/jjGvl0WAOLzzVZvxmusldxw8uM/EAKjefc1qSApVtVeWl3iu10G9z/1Hkjb0XX1dv1PovSo
	Mm1Yy2HH97G6Yt3s1sUM2LSoeGGMRKY42ijroCMRwxSiW/QvQnS2UpMPaisY+D13wrcc9ciPWgw
	3bUvf2+YqzgtkmtsUVikWhX8nPEM8mxE=
X-Received: by 2002:a05:6a21:7982:b0:354:ce3c:50bd with SMTP id adf61e73a8af0-354ce3c550emr10615733637.60.1762862353272;
        Tue, 11 Nov 2025 03:59:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEbh73kg9FHM9k+viUhgefi/Z0wsiwaKFPYW5/80n+UP1ah3qNbGn8RBoac2xMpqqcyhkFU7A==
X-Received: by 2002:a05:6a21:7982:b0:354:ce3c:50bd with SMTP id adf61e73a8af0-354ce3c550emr10615706637.60.1762862352742;
        Tue, 11 Nov 2025 03:59:12 -0800 (PST)
Received: from hu-afaisal-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba90307193fsm15420333a12.38.2025.11.11.03.59.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 03:59:12 -0800 (PST)
From: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
Date: Tue, 11 Nov 2025 17:28:55 +0530
Subject: [PATCH v2 1/2] arm64: dts: qcom: hamoa-iot-evk: Enable TPM (ST33)
 on SPI11
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251111-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-v2-1-101a801974b6@oss.qualcomm.com>
References: <20251111-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-v2-0-101a801974b6@oss.qualcomm.com>
In-Reply-To: <20251111-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-v2-0-101a801974b6@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762862346; l=800;
 i=khalid.ansari@oss.qualcomm.com; s=20251105; h=from:subject:message-id;
 bh=umYRjS14VQvk3pNqjkqzwG2eubUYVYeF5yKU4mUAtdM=;
 b=19hNlQ6yuFBlMvGpjl3p5vsj+s9c+vEYltfLSjjDPPyY0td5cpZOP2r2/dZ9EbWOM+ffyk3bv
 XgLA26kvfgiBWiKFiST1aLwR3L9nTR64S8ustdiExjVH6ATCuSV5eAi
X-Developer-Key: i=khalid.ansari@oss.qualcomm.com; a=ed25519;
 pk=eBXrIUgTWV0cgG+GsNeZPPgvj1Tm6g9L2sfcoxMGrKo=
X-Authority-Analysis: v=2.4 cv=Pc3yRyhd c=1 sm=1 tr=0 ts=69132511 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=PNAbdjlqmVCGte-Ijy4A:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: jKzSVX04ZfxlBdLYCOVMNY37r2451iQi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDA5NSBTYWx0ZWRfXzuR9pkfuc1Qh
 agJunkKnnkEpttt+8buCefsou5vz0iS0q7l+/GwIg1W7UwaNsf5xUmM0aBPFOg1X77jA1LAt+g/
 zP0fgZmP8XEmDhqdMtwlibOenCE/SaoJMnDfLzKAgpTfvjwxAe9AeUdC94xBuvGJhoCSIP1NDCE
 nJ5qD8sjbLf9G1YPMC1vu1/G2nuZcGiregSY42B+kZpyIFEDoU3QfOi+hT0rMTItQ11cGfcPC/T
 NkQePfvDL4e2xE7cBLCgzUzP1PyMA+J2NGbweTulDVvaXMacNWktJm0Uz7xyXugVCXSn3M+x5zx
 DX6Lw35PzNOXA4vWOlRlZ2BZ8J9a3fZkehOjZK4NR357Nktm82Rhy+VnzDhk1ERb54W5lCFDGUI
 DocToLgVcgio8TivZKyslS/fTkU1Mw==
X-Proofpoint-GUID: jKzSVX04ZfxlBdLYCOVMNY37r2451iQi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_02,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 clxscore=1015
 suspectscore=0 priorityscore=1501 bulkscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110095

Enable ST33HTPM TPM over SPI11 on the Hamoa IoT EVK by adding the
required SPI and TPM nodes.

Signed-off-by: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 36dd6599402b..08465f761e88 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -917,6 +917,16 @@ &smb2360_2_eusb2_repeater {
 	vdd3-supply = <&vreg_l8b_3p0>;
 };
 
+&spi11 {
+	status = "okay";
+
+	tpm@0 {
+		compatible = "st,st33htpm-spi";
+		reg = <0>;
+		spi-max-frequency = <20000000>;
+	};
+};
+
 &swr0 {
 	status = "okay";
 

-- 
2.34.1


