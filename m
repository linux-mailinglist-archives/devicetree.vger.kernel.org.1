Return-Path: <devicetree+bounces-214563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAA3B49A2A
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 21:40:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1106418968DF
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 19:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA99F2BE64C;
	Mon,  8 Sep 2025 19:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cKbcjy73"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A59A2C21D9
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 19:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757360417; cv=none; b=eUXlU9PUI1bml3gG448l/EaQzbOZt8NFpe9F6R+GXQ7/XS0rDDGefnfhm4LROTF5YSMj8UNMxPDMwyJpI2mnH+9CR/+7zvzWHU1bQla4ZNEJJl62Gvsc8emMCt8lRJmJaZZRdvfaS8n8VwplcaepPa0RkF7e4/twh/KSLY/QfXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757360417; c=relaxed/simple;
	bh=uzPVmN95UYA3m4eO5APKZbdkhOvUBX1OERZwHXJ9QPs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JLAJ0RDIuZNb4s8BpzztjEZBI7gz19H8QSNT4Ew2TMCfwz3hzCbNblSN6Hhl1MSTxLcn/h7PlEDkXI1HVLmaMfq68ueJU/xlzUqcnyfPwslLKtp9HP3WfXu9d5wuwR4vFe7oOM2WUpGwCV9lBCgCl9nS6zSSZ9ePllnLzWqPeVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cKbcjy73; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 588B4e5B011910
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 19:40:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gt3lMrqxrsh5HFvqVveVdKW5qqiAGEIrNSWV3HoZYpQ=; b=cKbcjy73p7A/LPdP
	+dQiSLTysCusJfzF0jeou7kvxcNAVuTSbWsNmPUmz7KGTjPQawqk7l+5KQTY1+F0
	Sf6AWAhz0vJT5ld5jE9FsCg7+zMK7Yth19A0WBtsTpQvAX3iZIDCHMklvcP5Tqv6
	0nsWnpoF6ES7VeT4o2Oa72ytl6s9I0TvT8+6IpkIr0cvaXiXkW/Rbjm58YHyizYh
	BhyQG5Na11XYYW8tCMdfuU+ux0v3WOu41oaO85mLZN0qjvtNR+73xdgj0ke+8/B4
	cwO1cHJMfC4FWAZxJmQnq259HYMG1FqBqRo1SIQ3C24IhIKII0Dwr0opHHwPeZQG
	CVbdBA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491qhdtkp7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 19:40:14 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24b4aa90c20so60211175ad.2
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 12:40:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757360413; x=1757965213;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gt3lMrqxrsh5HFvqVveVdKW5qqiAGEIrNSWV3HoZYpQ=;
        b=bXOw8w7wiYfPzi0kJjDtVI5Wb+iPdEoYWF6Y8JkZeEqPnP5akqeYM9S60HLMYQZAbl
         IUWx81a88eYG6jagXkAs4VmAqujQK00UiwsOqKx0uBS0qSgxr7acuz/uVQnRERkUlfqm
         fY5SjqiSHNtd66V1LgtQgWWPV1wLNNsMFalhQd/b4qFrrhRVl8pfWeg7KyX3DI2w3hTw
         Y/0V04gFaW4jzI9DqfmArdtIA45OiJHjDNWrBgNUhdR+KILyuNapAg0JUXhjTuvW0Bxe
         G/Jk2Hp6zZr0ycQw5RtMc+EYnyQu8nnkQtsHY+pHXe4EuO+jriFlLzeQ61F8RTyNU6fd
         187g==
X-Forwarded-Encrypted: i=1; AJvYcCVZpr9rqEQ8fhZjF1JT0pbaYM5vlMzYW3Ipxxhn2kSFsoa/b14XYCBvY5fYMeuv538dhAmnv5yvnClB@vger.kernel.org
X-Gm-Message-State: AOJu0YwuHjnXDGzx1p3gT+s+9ym5eXAs2UIYs3yyf3YAAdfV5Ckx0ySa
	S6L4aP/V+ZkLQhBcaKGyxDNi0LPHDkSeJ86E+hLQTznyQK5A0R/Qds1yDIiEr8Gtw2aUbsPsrpy
	2tqV1VsyD5zN4HpXWPkpt3kArL0iBserPRFb+ZVc1sED4RMa1gJt/J1aqO0WAOuQ5
X-Gm-Gg: ASbGnctuvfiWGU5H8QO7+cQZdOFZaRmfuwbq+93EYGQQA5y7BLBL+sC0GkTyXdRS6Wh
	up19IZaoiFO87I+feeZR8aGxAemAPfDjVH+SGgiGDTCAkrTgZCUS+oj1dFvybj2frpkAb6Gt4oi
	CCUKIHrWG6QSzQevCAbFaerTKBxAUQjL1QyMeKucxe9uuDD8IZ34XNqfrwvehw1iXB+F5PJrAKk
	UhmP9x5iGhoR2T041j6wBUIs+gS/24HnAWX7AJVQtpHuW+z+ffaNMInm3tFq4hGjPF3J7GMX3wI
	3dolRPMDm3L1vtRuEEoSqJt2FL/Pt0T0N0iZb/ghZjTxWeKmR0dNT5nkT2qjbNfv
X-Received: by 2002:a17:903:1a0c:b0:249:3eec:15bf with SMTP id d9443c01a7336-25173118fc0mr96729875ad.33.1757360413547;
        Mon, 08 Sep 2025 12:40:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjqeusIpL04rY8ls8FwSDva5Pe9CV1TXx4tgUoWYbubTFCMLO7Q0B6W23F5L1gZoCDbDDvPA==
X-Received: by 2002:a17:903:1a0c:b0:249:3eec:15bf with SMTP id d9443c01a7336-25173118fc0mr96729515ad.33.1757360413073;
        Mon, 08 Sep 2025 12:40:13 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24ced7ea5e8sm104008475ad.104.2025.09.08.12.40.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 12:40:12 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Tue, 09 Sep 2025 01:09:36 +0530
Subject: [PATCH v5 1/6] drm/msm/adreno: Add speedbins for A663 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250909-a663-gpu-support-v5-1-761fa0a876bf@oss.qualcomm.com>
References: <20250909-a663-gpu-support-v5-0-761fa0a876bf@oss.qualcomm.com>
In-Reply-To: <20250909-a663-gpu-support-v5-0-761fa0a876bf@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757360399; l=898;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=uzPVmN95UYA3m4eO5APKZbdkhOvUBX1OERZwHXJ9QPs=;
 b=2DYkGp/UEYjw1rxjpzCBGWBOfgtQjv0WWe52H42SW/jHnoiESuLk5OX/bOjRguHDDaOhH99Ck
 zF+SzknO2X0DkRR7baMmQbI8lbEfJ2BsQEJwiQPu9s0NvgMYJLYWhL3
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: V5bZdf0SF1QvMa5FaF6DawCGYGzCmylN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDAzNCBTYWx0ZWRfX3xHPURglOXRL
 I4DVTqMoHjehXYwnZ7fTkfVgbpdk0T1OFU2+UUaswwEFLQAc+EyeuDfd4YFuxMYCr3xpludOSd+
 K8PK/lo/eqNgIwRbrcllHXdjJ9+C5vuUq22gGg1WiXT6VHMwoYNQe1xtTBsNNEicADbnRd/ulR0
 Vsi3dOdOYaKPPji4CWwoZLJF69JL/j8DRkbAqFeFJi+mqUP7Xsbj0b4nPnqIf0IhVryJ3uSiBYk
 lDA8+riFyXoBC6EasZUaBnQZV/FS+d3e8hm89MOEjPUU7+oySRCgtbN+04xOqP0RvrQSWifHm9c
 dGgQ2AgDEq5qIMt2sTIvEJTYs3TeanHbK8wc4P2v21MaRK4P/I0XDry2Zmwo8V1/lRBjkXInr9Q
 QFGattPi
X-Authority-Analysis: v=2.4 cv=YOCfyQGx c=1 sm=1 tr=0 ts=68bf311e cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=92do0itG5Mw8xxZS-WcA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: V5bZdf0SF1QvMa5FaF6DawCGYGzCmylN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080034

Add speedbin mappings for A663 GPU.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
index 00e1afd46b81546eec03e22cda9e9a604f6f3b60..2b1c41f6cfeee912ba59f00c1beb4a43f0914796 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
@@ -1024,6 +1024,11 @@ static const struct adreno_info a6xx_gpus[] = {
 			.gmu_cgc_mode = 0x00020200,
 			.prim_fifo_threshold = 0x00300200,
 		},
+		.speedbins = ADRENO_SPEEDBINS(
+			{ 0,   0 },
+			{ 169, 0 },
+			{ 113, 1 },
+		),
 	}, {
 		.chip_ids = ADRENO_CHIP_IDS(0x06030500),
 		.family = ADRENO_6XX_GEN4,

-- 
2.50.1


