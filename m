Return-Path: <devicetree+bounces-255964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9BFD2EFE6
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:48:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A9757309C39A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:46:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C559935CB7E;
	Fri, 16 Jan 2026 09:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MNOxRExI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UxF+jjZ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1BE35BDD7
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768556763; cv=none; b=I/lsYH8ujPOByIc6dWLegpvsPmHxNlPft9QOdWJW64n/i5BBufiEJvdJaNfyREpCIHvfLp1VABUJB/iGBdHhz5eY0Nf26I27QXGlF0/jfA6q+cW58svcrKvh1u+pi4MHUGg3lnJnpTnBtTcCCpmcJwVm/JbEP3txFBPwB9kXuTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768556763; c=relaxed/simple;
	bh=7twTK1As1864tT4chkQdbOnjnjGFP9Y+GEZUdpzWZ+I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ipc5fEZuMrMhaPuo/SqmBszgFtYnB39Pi6mstRF5qVRP7KnE/X/PxIfXiD1MB7auk551SC9T9KTyjDvUdp4D9Ksgew7ibDlzQVAfUrY8h//fJSBZBRglG1Pmv8JvP/hnrUg6bpzbme2JmhPmdyx51Dt+repduywEaEOcrPtiMRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MNOxRExI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UxF+jjZ/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G8D0Ab3596383
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:46:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nyC1Xon9RSFTOalVdJjpfVTTX8JVBLYa/niJiu9b/4k=; b=MNOxRExItw560+Xj
	nPNOPSX6lO6sIa3si/XrACUFB2NoRbgMl6xGcnmyu+eVKMVI15oQeix/StJ8GV8F
	xnl+b6Zf7ZOG2Td0xYP+N7S0T7KCounTsOO0rO363NwIC9PASKZUEozhhLrQSmcd
	AchdFWpqbFBMvB90NBZ+16TFCH/p3ja+78leX/kZFOaxjw+ELvyMryLga7t/Pihx
	SLgdhTn1ruEl/4T/DFXMSpU1ELqmu7zENr3u2EyIRwRQ4WpuwMGyZbUDsUw9oKNf
	0NfZh59I8SWRYpS4ao8HK1Cwwzc59W9DVusJiYvFd2pnkvDk8zElNK1O/PPW7r09
	7CkNiQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq96rsnwc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:46:01 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c552d1f9eafso2933564a12.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768556761; x=1769161561; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nyC1Xon9RSFTOalVdJjpfVTTX8JVBLYa/niJiu9b/4k=;
        b=UxF+jjZ/uKhxJM5ZEgsWc1jVeDzksslp8dLINSIMPd8crDGYrExlRYE/n91pb2NO7p
         gQoWfcFFXcNiAYXaBakcB5LdlPalKkt+1M6KLYPWdEJ0NA6WS0qt+YuS7D5t8MfHVVg2
         DLs/spgr6IhbgJsY3MOWwmBkYiHeuRA/E4fDezBIedKZ/UjkBcByzYN/RoagxrZpOYs+
         X8JPhz4BtqpP9t7ZZ5CbJ+2WNkjikl7AKVqq9+JmYmI1QIqXxfj4Y4jrYfn8ueYdRwXK
         QIarQ8Dk8Y4xP3i3NOJalotyTXX+KUgTgzFsbOu3kkZR2r9mY9tecYJ2CGKl1YEYDL4a
         7XYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768556761; x=1769161561;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nyC1Xon9RSFTOalVdJjpfVTTX8JVBLYa/niJiu9b/4k=;
        b=QefS9UlCaWkBeGUwYHMIT7QpYPY9WKcmAWXRA4o4YcdEfpF/WTthuLN4Hj7q/dsiH6
         7/uc5Vo3zIw4AHO0rLplWicJX5/cljUsqoFIQD3aaiiO8Je1YAbujUAbUFeLt3tvxni2
         hKfcc4Y9ynw7kSP9WGEnoejndjPcmkA3NY7YXlRc3c+9Gfbwsr7zguK5KIYMiVEwSW2w
         PvX2MApFTh609bMqamEuczagm4Vkvim6LVkNx+16cAd80+TKfXzKcHlwCKoK87pyISv5
         t0od0mIgBqQPsIYwFkf+AyLR1nt9U2Lt1mqvUZdu1SKpWtLwtqI9kbINoPIggcFcOXcR
         W2Hw==
X-Forwarded-Encrypted: i=1; AJvYcCWgYNCxREMa5rX+Boy09no3dpsDrZ8wOBuhXGvOFzGBhG+HL3TOdJG52ywS4or/sFFSBdDh+xvooDXi@vger.kernel.org
X-Gm-Message-State: AOJu0YzVVi4LwKin25IZ7D3rypmNrbwHgjY+M0/Yv8fIPXDp7afs+OjK
	nhirki2Pbz8rFJctljFhY9dxaTN7G2Y08OZulFzSFvQ5HJWBV1TDhNU4KsnvJ5vsp2ETwRg7vD0
	dIa0zG9HQ7sWLWPL17THzUIbG1/fY0OuhZ5ImcWRLSZ6VJVQOdP5jfgM+ePrG8oNx
X-Gm-Gg: AY/fxX6HSM7NECyjMAsKMx1vMVJY+KD3K0RI7vPcAMOr9xOl+WX3ANggBDKevfycAle
	UIRf+SYGSArgAXuHr7N2xp7TRGEk9742yG5gCQyWHX7/dQ1WixwuE0LHy0a/wJMGvH+k5/qFW6e
	ogjgXJ8xdtdrJSBXZHsOeWKBSeFl6xxQqoxdKX04Z2U1z0lG6NbF2uvto+63TQuxh8tTDHaGcOc
	jWMKgcv1FuSbtvj91UnZ9cAYwKe4xLI4Bw4udToJZQNAFEpccjWL7SMrZyMV+RidijTmFbvXAA5
	Lapj+o4L2W3/p/Y5DsfTKanJR1R0M/T4PBaSfo9V+bC2u8YPfUX+vSHt34EzW5K/HdK6lQTy/3G
	DzMmLyaeCAbjjuXTzq3zy9Ccu5Tkmko38zf+EVvszvQ==
X-Received: by 2002:a05:6a21:6d86:b0:38b:e398:b9fd with SMTP id adf61e73a8af0-38dfe604ed2mr2800289637.20.1768556760708;
        Fri, 16 Jan 2026 01:46:00 -0800 (PST)
X-Received: by 2002:a05:6a21:6d86:b0:38b:e398:b9fd with SMTP id adf61e73a8af0-38dfe604ed2mr2800259637.20.1768556760234;
        Fri, 16 Jan 2026 01:46:00 -0800 (PST)
Received: from [10.0.0.3] ([106.222.229.125])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa108b23asm1647523b3a.3.2026.01.16.01.45.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 01:45:59 -0800 (PST)
Message-ID: <564c05b4-a41d-df0a-abb8-564b22b9a45e@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 15:15:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 4/6] media: iris: Move vpu register defines to common
 header file
Content-Language: en-US
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20251210-knp_video-v4-0-8d11d840358a@oss.qualcomm.com>
 <20251210-knp_video-v4-4-8d11d840358a@oss.qualcomm.com>
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <20251210-knp_video-v4-4-8d11d840358a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA3MiBTYWx0ZWRfXyC1YAV5UbrRz
 68RfZFT0xqrw1YhLxEyxiSMPsG41GKs2TM3S87MGyVdAVvTbkDBE8eHAlaIj1loVx3Wgd3P/hVo
 WCGcbHWO/iXZmNBaJObiNA5cABAzdE/RqpuzDaoQ2D7VaB9Yn4uKvv+LYdfqYFC5xaJgKOpZSpp
 K2CFOcCwH/4Wli87J7gZYIXmOYT1pH98kmia8m9pjXdygz1+KZgKtWPzUSFVm4IdH6bTywUczsH
 v0jqi09Pe6V4mj1vzqKYUlhWSMNFeYMZg8eu7uvPQ8AXIR8CEhOePr5NpItH+F/jc9gNWIQfjb4
 +C3U8+c8/qgaeBknKqqAua4IRy1Q7M21JCWsc+2YZIRlLxcKxGnaDX2yeb8rGbcpLqlyaqsxJ8d
 67rkj7duvtKYP6nZN55GLMQFQ1ISR6hc9rQ/fn3TqvIZyAxSFLZIjTlKNhcB4JAEHG741Oafwd0
 HV2AEdMw/i1UHMt7hLg==
X-Proofpoint-ORIG-GUID: 1FCe1RwG09vN1NlhrjQEUtlNSRvuFWfb
X-Proofpoint-GUID: 1FCe1RwG09vN1NlhrjQEUtlNSRvuFWfb
X-Authority-Analysis: v=2.4 cv=TsTrRTXh c=1 sm=1 tr=0 ts=696a08d9 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=blWSk0AuXjsE0o78ys1YMg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=vXM2DW8_tl7Bo0BeeMgA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601160072



On 12/10/2025 6:06 PM, Vikash Garodia wrote:
> Some of vpu4 register defines are common with vpu3x. Move those into the
> common register defines header. This is done to reuse the defines for
> vpu4 in subsequent patch which enables the power sequence for vpu4.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---
>  drivers/media/platform/qcom/iris/iris_vpu3x.c      | 42 ---------------
>  drivers/media/platform/qcom/iris/iris_vpu_common.c | 43 ---------------
>  .../platform/qcom/iris/iris_vpu_register_defines.h | 61 ++++++++++++++++++++++
>  3 files changed, 61 insertions(+), 85 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu3x.c b/drivers/media/platform/qcom/iris/iris_vpu3x.c
> index 339776a0b4672e246848c3a6a260eb83c7da6a60..cd53bcda3b3e1d6f234486df49a51150a7ec9799 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu3x.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu3x.c
> @@ -11,48 +11,6 @@
>  #include "iris_vpu_common.h"
>  #include "iris_vpu_register_defines.h"
>  
> -#define WRAPPER_TZ_BASE_OFFS			0x000C0000
> -#define AON_BASE_OFFS				0x000E0000
> -#define AON_MVP_NOC_RESET			0x0001F000
> -
> -#define WRAPPER_DEBUG_BRIDGE_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x54)
> -#define WRAPPER_DEBUG_BRIDGE_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x58)
> -#define WRAPPER_IRIS_CPU_NOC_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x5C)
> -#define REQ_POWER_DOWN_PREP			BIT(0)
> -#define WRAPPER_IRIS_CPU_NOC_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x60)
> -#define NOC_LPI_STATUS_DONE			BIT(0) /* Indicates the NOC handshake is complete */
> -#define NOC_LPI_STATUS_DENY			BIT(1) /* Indicates the NOC handshake is denied */
> -#define NOC_LPI_STATUS_ACTIVE		BIT(2) /* Indicates the NOC is active */
> -#define WRAPPER_CORE_CLOCK_CONFIG		(WRAPPER_BASE_OFFS + 0x88)
> -#define CORE_CLK_RUN				0x0
> -/* VPU v3.5 */
> -#define WRAPPER_IRIS_VCODEC_VPU_WRAPPER_SPARE_0	(WRAPPER_BASE_OFFS + 0x78)
> -
> -#define WRAPPER_TZ_CTL_AXI_CLOCK_CONFIG		(WRAPPER_TZ_BASE_OFFS + 0x14)
> -#define CTL_AXI_CLK_HALT			BIT(0)
> -#define CTL_CLK_HALT				BIT(1)
> -
> -#define WRAPPER_TZ_QNS4PDXFIFO_RESET		(WRAPPER_TZ_BASE_OFFS + 0x18)
> -#define RESET_HIGH				BIT(0)
> -
> -#define CPU_CS_AHB_BRIDGE_SYNC_RESET		(CPU_CS_BASE_OFFS + 0x160)
> -#define CORE_BRIDGE_SW_RESET			BIT(0)
> -#define CORE_BRIDGE_HW_RESET_DISABLE		BIT(1)
> -
> -#define CPU_CS_X2RPMH				(CPU_CS_BASE_OFFS + 0x168)
> -#define MSK_SIGNAL_FROM_TENSILICA		BIT(0)
> -#define MSK_CORE_POWER_ON			BIT(1)
> -
> -#define AON_WRAPPER_MVP_NOC_RESET_REQ		(AON_MVP_NOC_RESET + 0x000)
> -#define VIDEO_NOC_RESET_REQ			(BIT(0) | BIT(1))
> -
> -#define AON_WRAPPER_MVP_NOC_RESET_ACK		(AON_MVP_NOC_RESET + 0x004)
> -
> -#define VCODEC_SS_IDLE_STATUSN			(VCODEC_BASE_OFFS + 0x70)
> -
> -#define AON_WRAPPER_MVP_NOC_LPI_CONTROL		(AON_BASE_OFFS)
> -#define AON_WRAPPER_MVP_NOC_LPI_STATUS		(AON_BASE_OFFS + 0x4)
> -
>  #define AON_WRAPPER_MVP_NOC_CORE_SW_RESET	(AON_BASE_OFFS + 0x18)
>  #define SW_RESET				BIT(0)
>  #define AON_WRAPPER_MVP_NOC_CORE_CLK_CONTROL	(AON_BASE_OFFS + 0x20)
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_common.c b/drivers/media/platform/qcom/iris/iris_vpu_common.c
> index fef192a2de48fa47af421632829184c5896326cd..50242fc6b4653a7d74ff64500f40eb8a859a6548 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu_common.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu_common.c
> @@ -11,13 +11,6 @@
>  #include "iris_vpu_common.h"
>  #include "iris_vpu_register_defines.h"
>  
> -#define WRAPPER_TZ_BASE_OFFS			0x000C0000
> -#define AON_BASE_OFFS				0x000E0000
> -
> -#define CPU_IC_BASE_OFFS			(CPU_BASE_OFFS)
> -
> -#define CPU_CS_A2HSOFTINTCLR			(CPU_CS_BASE_OFFS + 0x1C)
> -#define CLEAR_XTENSA2HOST_INTR			BIT(0)
>  
>  #define CTRL_INIT				(CPU_CS_BASE_OFFS + 0x48)
>  #define CTRL_STATUS				(CPU_CS_BASE_OFFS + 0x4C)
> @@ -35,42 +28,6 @@
>  #define UC_REGION_ADDR				(CPU_CS_BASE_OFFS + 0x64)
>  #define UC_REGION_SIZE				(CPU_CS_BASE_OFFS + 0x68)
>  
> -#define CPU_CS_H2XSOFTINTEN			(CPU_CS_BASE_OFFS + 0x148)
> -#define HOST2XTENSA_INTR_ENABLE			BIT(0)
> -
> -#define CPU_CS_X2RPMH				(CPU_CS_BASE_OFFS + 0x168)
> -#define MSK_SIGNAL_FROM_TENSILICA		BIT(0)
> -#define MSK_CORE_POWER_ON			BIT(1)
> -
> -#define CPU_IC_SOFTINT				(CPU_IC_BASE_OFFS + 0x150)
> -#define CPU_IC_SOFTINT_H2A_SHFT			0x0
> -
> -#define WRAPPER_INTR_STATUS			(WRAPPER_BASE_OFFS + 0x0C)
> -#define WRAPPER_INTR_STATUS_A2HWD_BMSK		BIT(3)
> -#define WRAPPER_INTR_STATUS_A2H_BMSK		BIT(2)
> -
> -#define WRAPPER_INTR_MASK			(WRAPPER_BASE_OFFS + 0x10)
> -#define WRAPPER_INTR_MASK_A2HWD_BMSK		BIT(3)
> -#define WRAPPER_INTR_MASK_A2HCPU_BMSK		BIT(2)
> -
> -#define WRAPPER_DEBUG_BRIDGE_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x54)
> -#define WRAPPER_DEBUG_BRIDGE_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x58)
> -#define WRAPPER_IRIS_CPU_NOC_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x5C)
> -#define WRAPPER_IRIS_CPU_NOC_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x60)
> -
> -#define WRAPPER_TZ_CPU_STATUS			(WRAPPER_TZ_BASE_OFFS + 0x10)
> -#define WRAPPER_TZ_CTL_AXI_CLOCK_CONFIG		(WRAPPER_TZ_BASE_OFFS + 0x14)
> -#define CTL_AXI_CLK_HALT			BIT(0)
> -#define CTL_CLK_HALT				BIT(1)
> -
> -#define WRAPPER_TZ_QNS4PDXFIFO_RESET		(WRAPPER_TZ_BASE_OFFS + 0x18)
> -#define RESET_HIGH				BIT(0)
> -
> -#define AON_WRAPPER_MVP_NOC_LPI_CONTROL		(AON_BASE_OFFS)
> -#define REQ_POWER_DOWN_PREP			BIT(0)
> -
> -#define AON_WRAPPER_MVP_NOC_LPI_STATUS		(AON_BASE_OFFS + 0x4)
> -
>  static void iris_vpu_interrupt_init(struct iris_core *core)
>  {
>  	u32 mask_val;
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h b/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
> index fe8a39e5e5a3fc68dc3a706ffdba07a5558163cf..72168b9ffa7385d53d7190265d1c0922ee04a656 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
> +++ b/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
> @@ -7,11 +7,72 @@
>  #define __IRIS_VPU_REGISTER_DEFINES_H__
>  
>  #define VCODEC_BASE_OFFS			0x00000000
> +#define AON_MVP_NOC_RESET			0x0001F000
>  #define CPU_BASE_OFFS				0x000A0000
>  #define WRAPPER_BASE_OFFS			0x000B0000
> +#define WRAPPER_TZ_BASE_OFFS			0x000C0000
> +#define AON_BASE_OFFS				0x000E0000
> +
> +#define VCODEC_SS_IDLE_STATUSN			(VCODEC_BASE_OFFS + 0x70)
> +
> +#define AON_WRAPPER_MVP_NOC_RESET_REQ		(AON_MVP_NOC_RESET + 0x000)
> +#define VIDEO_NOC_RESET_REQ			(BIT(0) | BIT(1))
> +
> +#define AON_WRAPPER_MVP_NOC_RESET_ACK		(AON_MVP_NOC_RESET + 0x004)
>  
>  #define CPU_CS_BASE_OFFS			(CPU_BASE_OFFS)
> +#define CPU_IC_BASE_OFFS			(CPU_BASE_OFFS)
> +
> +#define CPU_CS_A2HSOFTINTCLR			(CPU_CS_BASE_OFFS + 0x1C)
> +#define CLEAR_XTENSA2HOST_INTR			BIT(0)
> +
> +#define CPU_CS_H2XSOFTINTEN			(CPU_CS_BASE_OFFS + 0x148)
> +#define HOST2XTENSA_INTR_ENABLE			BIT(0)
> +
> +#define CPU_IC_SOFTINT				(CPU_IC_BASE_OFFS + 0x150)
> +#define CPU_IC_SOFTINT_H2A_SHFT			0x0
> +
> +#define CPU_CS_AHB_BRIDGE_SYNC_RESET		(CPU_CS_BASE_OFFS + 0x160)
> +#define CORE_BRIDGE_SW_RESET			BIT(0)
> +#define CORE_BRIDGE_HW_RESET_DISABLE		BIT(1)
> +
> +#define CPU_CS_X2RPMH				(CPU_CS_BASE_OFFS + 0x168)
> +#define MSK_SIGNAL_FROM_TENSILICA		BIT(0)
> +#define MSK_CORE_POWER_ON			BIT(1)
>  
> +#define WRAPPER_INTR_STATUS			(WRAPPER_BASE_OFFS + 0x0C)
> +#define WRAPPER_INTR_STATUS_A2HWD_BMSK		BIT(3)
> +#define WRAPPER_INTR_STATUS_A2H_BMSK		BIT(2)
> +
> +#define WRAPPER_INTR_MASK			(WRAPPER_BASE_OFFS + 0x10)
> +#define WRAPPER_INTR_MASK_A2HWD_BMSK		BIT(3)
> +#define WRAPPER_INTR_MASK_A2HCPU_BMSK		BIT(2)
> +
> +#define WRAPPER_DEBUG_BRIDGE_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x54)
> +#define WRAPPER_DEBUG_BRIDGE_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x58)
> +#define WRAPPER_IRIS_CPU_NOC_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x5C)
> +#define REQ_POWER_DOWN_PREP			BIT(0)
> +
> +#define WRAPPER_IRIS_CPU_NOC_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x60)
> +#define NOC_LPI_STATUS_DONE			BIT(0) /* Indicates the NOC handshake is complete */
> +#define NOC_LPI_STATUS_DENY			BIT(1) /* Indicates the NOC handshake is denied */
> +#define NOC_LPI_STATUS_ACTIVE			BIT(2) /* Indicates the NOC is active */
> +
> +#define WRAPPER_IRIS_VCODEC_VPU_WRAPPER_SPARE_0	(WRAPPER_BASE_OFFS + 0x78)
>  #define WRAPPER_CORE_POWER_STATUS		(WRAPPER_BASE_OFFS + 0x80)
> +#define WRAPPER_CORE_CLOCK_CONFIG		(WRAPPER_BASE_OFFS + 0x88)
> +#define CORE_CLK_RUN				0x0
> +
> +#define WRAPPER_TZ_CPU_STATUS			(WRAPPER_TZ_BASE_OFFS + 0x10)
> +
> +#define WRAPPER_TZ_CTL_AXI_CLOCK_CONFIG		(WRAPPER_TZ_BASE_OFFS + 0x14)
> +#define CTL_AXI_CLK_HALT			BIT(0)
> +#define CTL_CLK_HALT				BIT(1)
> +
> +#define WRAPPER_TZ_QNS4PDXFIFO_RESET		(WRAPPER_TZ_BASE_OFFS + 0x18)
> +#define RESET_HIGH				BIT(0)
> +
> +#define AON_WRAPPER_MVP_NOC_LPI_CONTROL		(AON_BASE_OFFS)
> +#define AON_WRAPPER_MVP_NOC_LPI_STATUS		(AON_BASE_OFFS + 0x4)
>  
>  #endif
> 
Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

Thanks,
Dikshita

