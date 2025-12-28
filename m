Return-Path: <devicetree+bounces-249939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A59CE50B7
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 14:41:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 272F43002943
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 13:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEBA925DB1A;
	Sun, 28 Dec 2025 13:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rwl+ucHg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Gi+gsUjW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0077C1E5B7B
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 13:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766929257; cv=none; b=B3lYN8lrkiCRy+l4UYPjuYfmtMjX41KnInT9PotSRSFK0B98QPSaFMjwyN+fI0SBQTEA2x0j59PasDuznDegpKpzNK3wAvZoaes1ZnlWRTdCyO/BupG4CRxZ29QNmkj3TpX0MwVcxWTCSqBKSSZg30vM1xvJuh/c0E6sTes1gPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766929257; c=relaxed/simple;
	bh=tJ0OhhU1TyvUwelPIODPcQ0pK+ThKb8rAGtvupaBgK0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Nv/VL+rklIhNW/4wyvd9FRYmi9dk5bdyVDW7wA4NJeJkUfLVT4izLgZfHaE3GO0Yyq2N1JyBbT0Yqojdpcxn5Mi6bTIrs1nVhJ3nZJL3UTCyCjKOY5tPCA3FsO9bsB9VDIR1MF07DwdfeSYG7AO3EwJEIM/dxwQNZkF5qinwKoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rwl+ucHg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Gi+gsUjW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSDetUm2825523;
	Sun, 28 Dec 2025 13:40:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NxFDoHWzZhwklxpJ3qKUCTwBDJrVUnpwUHIaeNpeqbU=; b=Rwl+ucHgUCCwupl5
	mYC6wGoTHIzyI4pvBCXGfpuAM3kbhvdUfR1Tevuo52REL0LDL73yFOvwQuK6hCrW
	SH1jCeKPt0shgqvCMWPqkniayWsK207bvhg/BWbWK9epZhDOpP+4BY8GHFWiY5a5
	vJqbW9kYBrs3aHv/eeMo9xYkFvyg7y2ShRQxNZI8oy73nezMidRfRHjuRgE96ccC
	20IarSqKdztsT6XPlLvsUCyxQDqaWLaYWsk5toNXfco18KSYPtAPgG92oHqdRHt3
	AA7DRIXqmdnIhK4L0dhibI1aw21GjNllkCEr1cEDBwk6IeDZnxovlFnXohzpwCbl
	gdkwhQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba6dr2bnp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 13:40:55 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34c2b8720faso2992676a91.2
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 05:40:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766929255; x=1767534055; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NxFDoHWzZhwklxpJ3qKUCTwBDJrVUnpwUHIaeNpeqbU=;
        b=Gi+gsUjWcBUOi42VPRE4kPvnd6aFZdz0Dp5w1pLMQ+F6IaG9Mr070HVDRXCt6BVtyF
         sRQBriRpDXtryWwHZwECOSoHXJZk9cmPiMVrkYrdFow941R7XnJ9dgAJzcw03gEIf+8Z
         NA59pe8Xam4vCmnF3Qv5LU42igV5zJW+Th/Dzy/L0xbKBhUyd9WlSTCGVU9ArqJUafuP
         ZWqRaZ87QtzvTgSAfwonS6F2mSq+bL9gAgTiYXgPH/6Dui6DWYHc7otqqvMUZB5TPMgt
         smVyD9coLo2U0geWedFMEjSmvyT1N4/34WAJuuGG7b2mThCDTVI/AI1sQBdbPb3pAepO
         TJbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766929255; x=1767534055;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NxFDoHWzZhwklxpJ3qKUCTwBDJrVUnpwUHIaeNpeqbU=;
        b=fJDnfEbDVK36goJ0HyTRhIGKDo7Ogli1bHG8pPKxsjNhryR/lUOs5/62cagAvpbtU4
         imApDkVHwaz9LgDz+wq9nrqcm3jfYeWDACxxxK/948n0+2Phx6Ni0Uddhz7V7UHwYeSl
         pYGXHmQbSziRgHrmlt1WYvPxRv8y9+5UXlWbMnweD9fUjZU4CEEo/KNsrePKCpCOpJmO
         kJvW6axd41mEGC6urVSDQQkL3TLwVxOAc8gmWmwCLVf853Pg3GDtk1PHlRra1pssO6XR
         eMUi0xCcM+/foQ5T0t3yq9a5mFiJ7P//M4+2vWRqW1ITW1209SMMhS48EB1gug1gj8e0
         u6yg==
X-Forwarded-Encrypted: i=1; AJvYcCWP1A89q9yjcu712JpEN62FVqBixZqsK2btCwNYgBFXWn4awCX7hrOAEsfkpPn4bYPUNasE8roi8Om/@vger.kernel.org
X-Gm-Message-State: AOJu0YytCF3d2UzKwn7rCHpZ0ySKUoYYpd9bRjclR8Q4AwfduICpw8d0
	XbzWWGU9DNzLTUUs/IXvam22TFhUGLQD58JuAYK4W4Vlt1yiPBLi5pdWSaQo8qj4AQkoB3hZq1T
	X+jHWbkqtkMl+i/H1nIjn8Hnb28t3SXl0DxA6zZulk6Se95oiJX0CR1bzFpEUqOhP
X-Gm-Gg: AY/fxX78o1PvPQh3TytE0cJfHyk5pKpsiqnCSH0hvXEu3HvNMSnrLhNODeN2IRiHAJZ
	APfDp4beM+2cZ+fjN8FOqfyYd4tVo/xn5HPAfrmecIl3ed7v7LNSPvFqV+kvOP/lk0J5VLYszjZ
	PCs7geKzarLHEmZt4j1lSVy0seoS7yl0hd57G9+hGYfGFmELZJ/YbbIXbCY6KeBnfRstppsmUpa
	hloz/pLnMJe5LArgI6b1U+R1aqfNa4WY1eIo+DKSTnMAEbnwkouyDNAcqmPTloIMyVTR0XoJ1MM
	MsbJX7TBTOgkkRGg+uWSCVXd5YGuMtC6K1wS3K90GPAY2p2QfEJsQPIHlyzZJaLVDpiBriwnesE
	VJoo+ipSP7j0+DZhphGmXnEkptSmBRo1TU49lgJy5tfDWP43eYn230bps0KDPmYm1bGpVG0wx5/
	IQKar5PMn2dcAMnEjPYCdVGNXZzdRRdQ==
X-Received: by 2002:a17:90b:518d:b0:343:684c:f8b1 with SMTP id 98e67ed59e1d1-34e92119af8mr18063346a91.2.1766929254736;
        Sun, 28 Dec 2025 05:40:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGGpILZ4XZH10oIqtQZLSgAftZ+jvO9KsdGdbywYn1Gp2cEbrxPjQa88kr3Osv3rRnNq9+ltw==
X-Received: by 2002:a17:90b:518d:b0:343:684c:f8b1 with SMTP id 98e67ed59e1d1-34e92119af8mr18063337a91.2.1766929254329;
        Sun, 28 Dec 2025 05:40:54 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7c14747csm22981950a12.27.2025.12.28.05.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 05:40:53 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Date: Sun, 28 Dec 2025 19:10:39 +0530
Subject: [PATCH v3 2/2] arm64: defconfig: Enable Lontium LT8713sx driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251228-lt8713sx-bridge-linux-for-next-v3-2-3f77ad84d7d1@oss.qualcomm.com>
References: <20251228-lt8713sx-bridge-linux-for-next-v3-0-3f77ad84d7d1@oss.qualcomm.com>
In-Reply-To: <20251228-lt8713sx-bridge-linux-for-next-v3-0-3f77ad84d7d1@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766929244; l=843;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=tJ0OhhU1TyvUwelPIODPcQ0pK+ThKb8rAGtvupaBgK0=;
 b=hSiaf+eSL+Hu1t6I5LOQ8zhI67jO5Zjx3A0kfHT+oDP8cucRncSakipPuY8MkwZAg5lX76Pvx
 bpbm+ARa7kuDwL8bqPcF3TmomrRGu6B/KCsmWzjLj6PleCdys9WujyN
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI4MDEyNiBTYWx0ZWRfX4OGdy82QfAsb
 a9p8VF53xZddALOPk9eHnWVtkpbSvmBSDQa+n+ZQcoYRi5g2Y+rVazDZdTEJ/jSjUSk91BCfS96
 WgkivpT/jDWXjV+/KgtNAYy9Yc7ewRUO0LspMaZ10a+GQhDogxo/FRom9/6NJUPloPOV+xztYFM
 8vy0+taGX8OM1SVp0vfLH/wHPCvtoPA+qOeQCSBKyg9gSpti7hEwwl+D5LGrfnseqWPUPJcsFqt
 Lr5pbLVhfDMz+27X34wWIGTb5T7MtQaAWherT3P+I4TrkaKi32lbWYgsQjnBirNXzakb0Lt4sIM
 5QhOCptjVzdmjW/OJx/up9d/eAsrjzo13N+QdME953Nq47QfWru2xTXIJ9oaTFN4XVaySJNY9Aq
 AIIFMfCXqggux2kv6ppvM70rzlAncS+EAJYBTI1cpKo1AWPAB/RIrNlZAhRTeiW/X+h9N2dN5KP
 gLTL/qZ7avkLxqnB5fA==
X-Authority-Analysis: v=2.4 cv=VdP6/Vp9 c=1 sm=1 tr=0 ts=69513367 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mes9G_zLd8qmkOzsJuYA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: s3rmJAQ9X5f2_PnfYh1dp1y81_kUBUPC
X-Proofpoint-ORIG-GUID: s3rmJAQ9X5f2_PnfYh1dp1y81_kUBUPC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-28_05,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512280126

Lontium LT8713sx DP bridge hub can be found on a Qualcomm
Monaco EVK board for converting 1 DP to 3 DP output.

Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 00d15233a72b..5f21bbdca902 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -958,6 +958,7 @@ CONFIG_DRM_PANEL_VISIONOX_VTDR6130=m
 CONFIG_DRM_DISPLAY_CONNECTOR=m
 CONFIG_DRM_FSL_LDB=m
 CONFIG_DRM_ITE_IT6263=m
+CONFIG_DRM_LONTIUM_LT8713SX=m
 CONFIG_DRM_LONTIUM_LT8912B=m
 CONFIG_DRM_LONTIUM_LT9611=m
 CONFIG_DRM_LONTIUM_LT9611UXC=m

-- 
2.34.1


