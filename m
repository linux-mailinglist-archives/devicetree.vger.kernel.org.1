Return-Path: <devicetree+bounces-248173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E80CCF986
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 12:34:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2B5E307CA39
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 11:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ADDF318151;
	Fri, 19 Dec 2025 11:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CQWQyPwE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="b8aKlAIg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4AE9318156
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766144002; cv=none; b=aCWCwPXYZl7TFILUudBelMn/BEJFPFuwwvCVso+fXhPqIF/kQ7UERNK+IZGcx7UZ0TomXibLtsecnyUqlom32rEt495+n/MOiyuJibCdCrSmhwHPcoNhJf67GJTZTGXyqSBqMdHJwpmrERcKGmB+MkmigYc++nbeKHVSRxS58J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766144002; c=relaxed/simple;
	bh=tJ0OhhU1TyvUwelPIODPcQ0pK+ThKb8rAGtvupaBgK0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uShurOPIKUsIBYn36iIToWjfwBXQdmvIprRaax5KOVWSDTm6lLher0TcK37DU/2sGDhPcM/tPxxKNVxKcyRIizT2vF6p5tYqjfElKLWFVUAnwiehSH2aK7AYsgoKV363gqnhv7tzmAQufKmUPJ8BofzHtrA1HjYyTbIJCAxauWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CQWQyPwE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b8aKlAIg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJB2gfX1771763
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:33:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NxFDoHWzZhwklxpJ3qKUCTwBDJrVUnpwUHIaeNpeqbU=; b=CQWQyPwE6nOEQDDq
	uM04ilpebDjlz0tRl2kaXOUfMVUZEUulv4xzLvATqfh85pz99uh+E185CJD3lOc5
	uRioQQpKzrxi8dmbClSGCAmlFPVUxUqYfl/qY7Pci3xrycJFYTpXwI+Zw1ukOTHB
	hL2N7uB4FvcAvBLHJx2Ux3qYAgAqCJpymoPW7s7lAEcOCH5rQhFovzM/KSaTMD0C
	VkNslUXOBYcPjRz78GoYRyoRtdl1iB9AUko9v3dhpFhsrIBCecLWF+ipM+JonRdw
	jzrOashO3VbO72RzNPoj3ntx9mlNLxcO0JKe+e3t5p7Oqcl9RX8iuzTOjC+exSU4
	TdDyaQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2bjg85-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:33:20 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b94527a3d7so415436b3a.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766143999; x=1766748799; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NxFDoHWzZhwklxpJ3qKUCTwBDJrVUnpwUHIaeNpeqbU=;
        b=b8aKlAIgmqHLrHwZOrzkbLztBXfE6aUwWCFI5S0wGWPhBIc+5EZYz3YCFkv8L45V60
         nhCvmqLE41qBc8NJ43LuVPWbB7VkWT3pS/tx6Kg/mGwjcHyfj9dmZLSaaFPFARIe/ZWF
         9Vz7TAwwNMvJTdls0PE7SzagafkXOTzwTatoGQaZIzixB4kUKwacyV5VeS3OOC0Vb3Hq
         v9v7CrW5VMDXEfgHpVpJbMtVHZ+ZXDXuWEMCdh2k1/dDsXEzy3yv1br+Jj2XD6teuuMP
         WfLXDFP7J+qTdgda36ivTRJ/sTZgobU7jkBYj7MHrQxH2iyAKlS7zju9wubbE+pfG/pM
         a9LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766143999; x=1766748799;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NxFDoHWzZhwklxpJ3qKUCTwBDJrVUnpwUHIaeNpeqbU=;
        b=Gr0YECxvKtVnn0xbvXpeRCm5ikpunfO55grh8tZHcu9hbsamBQ2nDfQ/HrmBRlmqIu
         1Ot3iVwKU/6q3ezWzgr8OqvLrKDmK7Ua6Sl62hCVVsRY91lQW5SGUiFlmP992U90Qbwp
         d3EuSttpmVCLeCamAgjmyrOtradRcHLKn7M3GPWUaxk/LFoqgwE6t7oRM10xXIjehvx+
         tJcpJkAGPyaaNKxthAQkrW0omErfxBMAmGo/AzAqWVtOHmi/N2x9JWugxEyiz0fqryCL
         1publshcds4Xt8rtmPgTWUkjeOp5nu+KDw4Oppgdn7nkocQhHHpppNYubaofh35MPWho
         Fz7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVnSXf6SNs236TN4BKZg9JSvSDDJQDLJVm4d92srlUYnb6KrETNA4vFoCqu8c6PiIGC7rGcKjiJo/pF@vger.kernel.org
X-Gm-Message-State: AOJu0YwO1aS2nVnKBJO0okCN6Sz9Peu84dM6WC/fYi9Usck0AkT1+zje
	oHJiLwjUUWY7sIentlja2bLRdhfZ3FBYnMwywnIMY722TboxuOafgJxAOyL8/GvYigOTc95biVB
	E4kX0OtlsGfjnjnHpZ6nRV4xw/I4tGJIIBcVUCPjVjTmDRK8rweLGXHLCdWuQbHHRPtH84Ft0
X-Gm-Gg: AY/fxX4Vv/nCN4ZUNRyqjnFqtWeQ5gS1CgB0ogQPTE/NycNypSXE/5dUY6cL++nDciD
	m6mHbvv2GwL62YC71a7e3OsfCMAuwqul5k0mmRiBmZnttwq3d0oLuYkPv91mt2wpu/VNFzdYMTf
	3DskaNh7A6vnhanxsKlDaAJze3mIYpoP4mUbafyMKxcA2WzXi4AFS46gLPtAM/OPdHRBHeGz5nf
	ImYTPkce85XJ5t9efVX4Rn9wLr1Ki64nQeunlvoe/J/EWLvaeGhduxXrISlcAeSsOevVycg6ZDZ
	cCqGjgM0L6pgsjhoguIuouJOE+VXCgGwQSM7yTOSLvUKlq9xpzkXnCxQkNguRdvl3aUfSuLYGzc
	d17y0fk8O3sFpw+/wGBde/NslJxafs3x4YEbFfDPQWYcGPtK0zrCkcoo1DO3M4UN64p1/cdYIuE
	TwI/TP/u/shszttT9m6BKq3Hb/Kz1iMw==
X-Received: by 2002:a05:6a00:889:b0:7fb:e19e:2dbb with SMTP id d2e1a72fcca58-7ff66b6d01fmr1717962b3a.5.1766143999348;
        Fri, 19 Dec 2025 03:33:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGZ/8mlr9ZESqcQ5uIpuYHT76hVJ2WR/tAT7MmWrVaoM4UFG8DWEmXa0ESkrscvuyoF5XPA9Q==
X-Received: by 2002:a05:6a00:889:b0:7fb:e19e:2dbb with SMTP id d2e1a72fcca58-7ff66b6d01fmr1717941b3a.5.1766143998817;
        Fri, 19 Dec 2025 03:33:18 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b423d86sm2181867b3a.26.2025.12.19.03.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 03:33:18 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 17:02:11 +0530
Subject: [PATCH v2 2/2] arm64: defconfig: Enable Lontium LT8713sx driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-lt8713sx-bridge-linux-for-next-v2-2-2e53f5490eb9@oss.qualcomm.com>
References: <20251219-lt8713sx-bridge-linux-for-next-v2-0-2e53f5490eb9@oss.qualcomm.com>
In-Reply-To: <20251219-lt8713sx-bridge-linux-for-next-v2-0-2e53f5490eb9@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766143989; l=843;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=tJ0OhhU1TyvUwelPIODPcQ0pK+ThKb8rAGtvupaBgK0=;
 b=+NemZ2pw97rgcJw9oZQ8LBrO/vGeaebLJClq0Ji4ci2kXDNbACnv6apJttno5qkbTm/GkhSg3
 q7fWDF1m51IAeV9H340I8cKg4ZZJdS86tPPVZKqaoxxWsRPebQN+Wem
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-GUID: CG-edWNC82DlXrZUsG8T1KDAeMWka-2Q
X-Proofpoint-ORIG-GUID: CG-edWNC82DlXrZUsG8T1KDAeMWka-2Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA5NSBTYWx0ZWRfX5z+tCa0LgOhy
 njyqEpiwueUQfgUxu3Pe7lC9nXa850dCvFb0bgrVwSr68ISgkfpnKXEWQUjh5b1qd0cAIJZBxI1
 Xx8pmsMFgCgKb1v5Qde8voJ6BQ+bq+Y0V6Jbg6q+VLf+9p0yIBgtpfq115orhbed/itj8KnP930
 yBXIIYWJVLuP/PpRczDMpSFsvDPCJkjftEOmMBybkOghNPIwM2ZyfyXG8ms+cmNg6JvXlfffwY7
 H56mhoDnaj+rfplgqU4JCovIW3MyFTYn/HkEdQ0ASoucNRgC2tlvTIgLoo1OKQbK+UQpifyqF0d
 m0F3txC6p89CIQ+Lo8mJdAtcQ7P9UTRZiqcT8MTlpg8WSRnjj79rnC/W7t3Umw+fpDiLPPfH5yQ
 gyZW68Rsd5FlsEx/UrCsG6Kkrw074VKpNCdh3yt2S+uwE/gND71BoBfRwOG+iKqy2lnJko2zDbO
 /DJfBzKNqeLOErbmF9g==
X-Authority-Analysis: v=2.4 cv=WYwBqkhX c=1 sm=1 tr=0 ts=69453800 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mes9G_zLd8qmkOzsJuYA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512190095

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


