Return-Path: <devicetree+bounces-187762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 679BAAE146B
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 08:56:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D95DC3B939C
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 06:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9D12225A39;
	Fri, 20 Jun 2025 06:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SeR6SXb1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D86A22A4E2
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 06:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750402535; cv=none; b=iVBFnLIhPX4GlfcnqN9BI3ZW3E8qf1jKRtAG1FwbtrLyUusVDPxLzjSY5bA7MyLwsTpL/yvEXSDPUkYImDtHBWXgAN379ObdyIAOhsN1OtWRn0S/rWJpVybn7ApEPSuo2ngxpZTdXoz09CXovmL6A3u2uwpWbcelxgOUdo5f8Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750402535; c=relaxed/simple;
	bh=1oxyf68EFFylCmMjwV5jb0pfG0MEgVawKDcLqM/rxmo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AkKywKGbqR0U2goBKa8fg4FUJCZwxpq2i9PH2IkqievmR/U+UWFDZc2nnjd7kwF1zyxMCstHFvcS6HKMbwwJbLNPUS+Frz/+eFkHZPo8d9ixH/X5mToajO4sdPHlTfkJHs2oTa5pF1wEGcUvfesoNkskX1ueePVd2+zwmslI09g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SeR6SXb1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55K60QCA016417
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 06:55:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UY8Xz4SAGxjtVkpxY96irg9pXQ6T1NS4IVwFIY8UKPA=; b=SeR6SXb1TsEqQHdC
	p4UluYnmYhsk4gwBJmQfy4n+8j4Cz+An4psweTNeUyZJjCsMFcolWfWiW+v6sFgV
	USDgaX5x7wWUCQnz05F8cgU2NwqCz1AhQTX6/arHEx4E9wVFYy5gwiuODz7I7+lz
	piH2xfuojK08ZNCR2N/pkz6AQ0zKJ8MUTNKfVMLSy6RuvNFZbkifc+SYUF9tzkqm
	r+6V+kioif4KO8eNavxIWQtehgMaePypIL4YyHQO8ce3XGB8PH1IlOi8wws1RdBc
	1injVwtI4E9WRE7s7Hm6MaEsO9g7Q+ckCZYVxs/YRLbUe9lmKZPXQ54XH4rjCIIX
	JoEHBg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791f7j9g6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 06:55:31 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2369dd58602so14370805ad.1
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 23:55:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750402507; x=1751007307;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UY8Xz4SAGxjtVkpxY96irg9pXQ6T1NS4IVwFIY8UKPA=;
        b=LkPBsAeZNxNmmGhu+ZAY+Qod9sC8/PDftZE81KCvdDQC55JDlf7s29VMycW3vM6BTB
         alyMVqEDTWlXJ7acVSHqT5UIpth+7f05a6G1TXedhxjpa8Pzsby1pTYgVIoy6rOR2i8W
         KN5WKR+fMgh3vhjTsmklPjT7ERDf4of96/sDgup1gEdYD6vcxEfwDX8VONzL86OspqsQ
         GGyUH04ah2wAAYzhe+QT+u29u8fjbfkQ7rHRyb8ju9GoyRuo995MqNoNA4G/EyMeg3mF
         xhaawZZ1JyZCelemxlKYOqql+v2LrHC8h9rvh6rCSamRTxwVAsitFJ/OEE7bOdWN3/BB
         GJ+g==
X-Forwarded-Encrypted: i=1; AJvYcCWCS6rVMH+NDR09aEYO/YkMvmI2t83wfbkCtiYLTjw5tkVpvX2MGSrh8ngtYmXCJllIPPk50f+fakxF@vger.kernel.org
X-Gm-Message-State: AOJu0YwNBjk6L6XhD7emG30IuIsVve0vpCwoQ+EuTFatPpEbDLuLIUfL
	0Jt7lg4t1q0sqcFxb+qBgCJcZtlFH/oZcsYMId68tUxlIJTWhWlBvMrX7qYF4nOD7tGXI81aCw9
	wiqJ85+6a+3G6WY62aVOeYOu8Gou7Ny27Na/ebvKfYMtY7Ax6UpPA60d5bG27THDj
X-Gm-Gg: ASbGncvWe38CYbBGma7hMAegeBegXS3OaT3tJDAeNBATKK+QdP6vw1nfmwsOqxi6gfd
	+l9hx3E9Di0Eq/6zM5w292slK6vfg2uYb1+MQ5Sm0oLQXyl0t9SJfNtNenqRVoB68jznomLh0fj
	yv9bPkxZRS9qx6bfT8UWFZeQqFwz4KpBIB+/RGDOK3owQ+9lbR+bby/pDaiv43BfOzAcqI1JDNa
	7vjbMivD4XUGyLfv7yvlyFCUQpQ2qTu2RxNDVz8kLocIg2kK8Hjd9vDaAwdZ4IcBPwp7VndxUiJ
	Jbc+Po8OMgdzYehXL+Uq2j0TnbBP7cVu
X-Received: by 2002:a17:903:2f08:b0:235:efbb:9539 with SMTP id d9443c01a7336-237d9906e40mr27772815ad.17.1750402507477;
        Thu, 19 Jun 2025 23:55:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJ5LpDJJHEcZBAtNAGjCwyfD1eLqoPaVU68U54gQ31anHAn9sWvOPT8dxNj9uXQ8vEOHStmw==
X-Received: by 2002:a17:903:2f08:b0:235:efbb:9539 with SMTP id d9443c01a7336-237d9906e40mr27772265ad.17.1750402507104;
        Thu, 19 Jun 2025 23:55:07 -0700 (PDT)
Received: from [10.213.111.143] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d8701c0csm10636185ad.223.2025.06.19.23.55.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 23:55:06 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 20 Jun 2025 12:24:29 +0530
Subject: [PATCH v3 2/4] arm64: defconfig: Enable X1P42100 GPUCC driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250620-x1p-adreno-v3-2-56398c078c15@oss.qualcomm.com>
References: <20250620-x1p-adreno-v3-0-56398c078c15@oss.qualcomm.com>
In-Reply-To: <20250620-x1p-adreno-v3-0-56398c078c15@oss.qualcomm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750402486; l=857;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=1oxyf68EFFylCmMjwV5jb0pfG0MEgVawKDcLqM/rxmo=;
 b=8PF3//AD3gGPG03AcLC4ONVS69EyuqXu0pNc26VvETNgzRpHlRintCMdeMBUfPaRptrZsJlyV
 vJLwgH/Zyh0BgDMciHJYI0hdt2oscEXRCGJBuuNwMM8XQ99xTylLnso
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDA1MSBTYWx0ZWRfXyrNTpQGSBoCz
 9F4UnaOak2OWdZD0xhcU0xUlTfT6G9CW3j7/9c8CRE8xE4Mp+9V4CqebjMuSD7fNJa3+rEjdIwm
 DAnpGvm7P8igAgT8N2VkR52LGyywkz/AfCp8igFVbSWIe59FGwubzGNTTwXQ/0XSvIFnqh2TYin
 VZHx5ZaMjmTkj+uAGuon391roLgtt9HpLXpau04AfwfDnr27c+SuyHR+beq7aqbTiOZ7AMdb0w3
 3L4Yj6O6gpBKOBlLbNCACXQjMu5LcdAsBnGmcUVoYRRX7UTUp/oyFN2zWyX5JRQHN58SNEQvhqi
 aZJHyH7wIR4ynLbJwqbcYfFXOmTLc5nSARli3cRFK1LUPy1wDrq6/o67+Gu1q8S38tYf44OU9aB
 opccbeYuhgsWCIR32ciEi81bL+935hruN7SHukxtolLPaFHETGJlcRCYJjaxbtSIZfEpiExR
X-Proofpoint-GUID: KXVFnh-BL407iCBVIDGtrrEsGnKfYpBN
X-Proofpoint-ORIG-GUID: KXVFnh-BL407iCBVIDGtrrEsGnKfYpBN
X-Authority-Analysis: v=2.4 cv=FrIF/3rq c=1 sm=1 tr=0 ts=685505e3 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=gxl3bz0cAAAA:8 a=EUspDBNiAAAA:8
 a=GAw9eemyJ_aXAIuB88AA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_02,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 mlxlogscore=465 bulkscore=0 impostorscore=0
 malwarescore=0 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506200051

In order to enable GPU support in X1P42100-CRD and other similar
laptops with Snapdragon X1P42100 SoC, enable X1P42100 GPUCC driver
as a module.

Tested-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 897fc686e6a91b79770639d3eb15beb3ee48ef77..ccd03ab5de495498281175a4550bc73d3e65f3f4 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1347,6 +1347,7 @@ CONFIG_CLK_X1E80100_CAMCC=m
 CONFIG_CLK_X1E80100_DISPCC=m
 CONFIG_CLK_X1E80100_GCC=y
 CONFIG_CLK_X1E80100_GPUCC=m
+CONFIG_CLK_X1P42100_GPUCC=m
 CONFIG_CLK_X1E80100_TCSRCC=y
 CONFIG_CLK_QCM2290_GPUCC=m
 CONFIG_QCOM_A53PLL=y

-- 
2.48.1


