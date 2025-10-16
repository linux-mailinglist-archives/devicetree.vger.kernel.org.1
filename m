Return-Path: <devicetree+bounces-227857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E35BE512C
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 20:37:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3037C3591F9
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 18:37:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 450492367D9;
	Thu, 16 Oct 2025 18:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dYm4RAxv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F35233140
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 18:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760639834; cv=none; b=tuwTOlkhvek3Jj25Y8X19DBisEPcDC7ZbDaD6xz8gAF1rnJbzk9FZbnhOOJ/6Px65FbGcKjwFUFSkEKcJPtpNhJanbb0/N6iVKRDcFkBwUMYRZ3fM7lkh16cab9mTwXMn4oaceoDBaOUOIvcis1MkAQHJNBK32Wgzf6XmN7cPxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760639834; c=relaxed/simple;
	bh=OB5eSYWFZISVNnfXCEn0GDxedvGCMQF6SoJ+Ow7mZKQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P7DrjMqiWDBtk+Qz+unR6BiWG0YFmDQ5yJVqNFYtdVgO+46LlAWdGf+h3XF0cgUOjBBcPUJLddhIjDjNRmpF3xb6yIJoWV+YgrMc8wKU+eORvDBXqJFZlh7a8nKjIsU4d1WQL3ehcD2Ypi7f3qCYk7ThKV2zVj1ncWVgjYndFRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dYm4RAxv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GEsOKN002591
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 18:37:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+/Uh0mqL0LErWoe7liCsyTCPPXrnktV2gL3UQ900aTY=; b=dYm4RAxvOcNd8pKf
	wLZRQWzDYFESSAXoZVX+5lcwFmJb8ZOC5HQq3U6Lr2DL0+7l7FbQ7atF3fkU5mCn
	iTPEDGxWHJr9i3EJi2YpJxtnDTlGuZeWE8G37vo/OZoeC+uFGzsu+JurLfvAMEWI
	lsISHFnuy11JtNbGyzQhWZZ/LaK6+PKLelOq99T2oin12NUhgbMtxIbTHw74N0wC
	xPAf2OOgKVeSpaVA5Jjio6m5S53gJlnEu19uIEw9jQiwnMR708cSFCiP9aYGm4wK
	XKdy0AitUNOZjxIv2yKPan5hV3/nNvqRpYrSqctjnAN0JFmJCkviY251u9YfcdsS
	IfZpjw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfa8hdr3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 18:37:11 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b56ae0c8226so691907a12.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 11:37:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760639830; x=1761244630;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+/Uh0mqL0LErWoe7liCsyTCPPXrnktV2gL3UQ900aTY=;
        b=olE5oLAhxiq1jQF3Dr8/HpIZY+RP9bYnhWPLxyznlU7EnNFl52i8QeGtWJ/wAySZQL
         EXdLBDyeSqhppMZf80D1PZQ2K/gr4vPJLzuPmr8Q/x5Ax6IfOTt4WTv3E0UX55wKKUyY
         sGc3LXM/x8URZXBFKHFqhekLOvIvt/OY5vDCg3KdnSEx+/44tETlSBNqh3ayluJBMG2M
         t5PYpnF8mYfEI7/m2Lg4KzmOuauh9i6GwdWQaqduw5IBlHPXohqwwLERdGzvWqzRHhSI
         p98WQeXVXjam6QM0kZamSwa8OUhGH1+piWPZG/+2AW+re4TBEqRux8KdFjJrQW6p4Js1
         LfnQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhAe8Vv188GmOvoGSG3WlYZHRENMVFa9M00bXGB0dsJFYYzNkjVYuZ/DW91toXpKafXHFfWH19GDRT@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0ugUu3dNqMPyGeDEONFbNQ847kzEwvJSDSG3K5zSnlHuvqgvS
	NebYiEnV3LnfN5S3TkP5acNqIuP1eWeHEvg/885lQ8+sHM0N2aqXvpyrMguVocrwadMuW6FTEs2
	oz4H/xLULktoPHXk9ku29pm5yoxZabX0t9T/tp+lfoPGuVJuLfQs4DwhIbNpDQ0zAewOIEQqL
X-Gm-Gg: ASbGncsrHoSY2Tu4sLToGCYGYoXRx3U9JyV+5SZz3/X3rUfnv+jQYbX0RhW1NaMfOYb
	ZmuALpVJ8LXk5TDmXA5YoeZ9O3YdbB80bPRyUzxYvjAK+WWXayGhNRrIC7/WGCVzt7HGeGI9Ruo
	DSXnNR8+I86STKN4d3TQHV4FHWnzNI0gXfY/oooozTuzmj0XVNeG5v7A+wNwU9ig+f61+dITXfZ
	27L6yXN8hGRrohnFdLxGinnt7iyxG7bcQfiwobDdsAn1qXamW3MmLO17JnCQUS43gZ3tSIo6w1A
	F/olQ9mxmtSgm1lD7e6x6PigisPeC7iQJyjtiSjglxzlQQpQSlbwrOOiRHKDN9MgD8THiN05ORa
	0i8jAIguYLJPcZONUdKFTav8FAbmFlKR5SA==
X-Received: by 2002:a17:902:d584:b0:275:f156:965c with SMTP id d9443c01a7336-290cb65b61dmr10962985ad.52.1760639829648;
        Thu, 16 Oct 2025 11:37:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFopTCf5Sn+ugIQazeLjzMKZ4AaB+rCH/4DczDVKRWHWy44mdCx7hroKoHEE+1V8Q7zPobuqA==
X-Received: by 2002:a17:902:d584:b0:275:f156:965c with SMTP id d9443c01a7336-290cb65b61dmr10962635ad.52.1760639829227;
        Thu, 16 Oct 2025 11:37:09 -0700 (PDT)
Received: from [192.168.0.167] ([49.205.248.221])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-290c5c7d305sm11890295ad.70.2025.10.16.11.37.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 11:37:08 -0700 (PDT)
Message-ID: <c4c40efb-ceda-c13c-115f-a473af5e8fcb@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 00:07:02 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 5/8] media: iris: Move vpu register defines to common
 header file
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vishnu Reddy <quic_bvisredd@quicinc.com>
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
 <20250925-knp_video-v1-5-e323c0b3c0cd@oss.qualcomm.com>
 <gbwjh4tqaoxq2ng7moytv5vtalxpajdid5capjfqzare6dmphz@cmnv4p2q4eov>
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <gbwjh4tqaoxq2ng7moytv5vtalxpajdid5capjfqzare6dmphz@cmnv4p2q4eov>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: PYnh4797fa1hDTQAtgz_qsup-gIPRqpL
X-Proofpoint-ORIG-GUID: PYnh4797fa1hDTQAtgz_qsup-gIPRqpL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNyBTYWx0ZWRfXwNDoYiwXOTQL
 MKFM9vRjSxZJXGOaxt2nwTcuGi3pnmRqLSyELdZCyzeQ5FpHQXfOAi23DGRMuC9IkSq/qEzER+T
 0yUK+O/Bxy7zQmGUGY5cRryY8AG49qlTEYyaaRDe0Q4iJxzD83iglIjJI9ZbIpua5ft2qx/mItT
 lMGZFghtTLGq+nfj51vjZHDQ7ceGGcWoEQsv2WGZwjB8S/vmnBMj2vCNvn3pqcuHnfQ14CWTiu1
 H1nNt4OUS/x9lvajjVMZDHbIjpF45wGd1d/e2zJ2nqEtPEfzFVFf6NNGnHhi0vZOErBSricET5t
 LA02CmdWtxE5sDjqK3N9aKbQfpZJchyDPiY4yRnKf4nNaI+DIt8m1xMT3d7g4bFNnXqiIh5rZXZ
 tKf/LpwEYv2kv355kS90Wiq1mkCK7Q==
X-Authority-Analysis: v=2.4 cv=JLw2csKb c=1 sm=1 tr=0 ts=68f13b57 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=LqmlnLjRnrQCSl2bsDkM0Q==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Da5OPgB5uXQvAvJx2EkA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110017


On 10/16/2025 7:17 PM, Dmitry Baryshkov wrote:
>> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h b/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
>> index fe8a39e5e5a3fc68dc3a706ffdba07a5558163cf..6474f561c8dc29d1975bb44792595d86f16b6cff 100644
>> --- a/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
>> +++ b/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
>> @@ -9,9 +9,38 @@
>>  #define VCODEC_BASE_OFFS			0x00000000
>>  #define CPU_BASE_OFFS				0x000A0000
>>  #define WRAPPER_BASE_OFFS			0x000B0000
>> +#define AON_BASE_OFFS				0x000E0000
>> +#define WRAPPER_TZ_BASE_OFFS			0x000C0000
>> +#define AON_MVP_NOC_RESET			0x0001F000
>>  
>>  #define CPU_CS_BASE_OFFS			(CPU_BASE_OFFS)
>>  
>>  #define WRAPPER_CORE_POWER_STATUS		(WRAPPER_BASE_OFFS + 0x80)
>> +#define WRAPPER_CORE_CLOCK_CONFIG		(WRAPPER_BASE_OFFS + 0x88)
>> +#define AON_WRAPPER_MVP_NOC_LPI_CONTROL		(AON_BASE_OFFS)
>> +#define WRAPPER_DEBUG_BRIDGE_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x54)
>> +#define WRAPPER_DEBUG_BRIDGE_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x58)
>> +#define WRAPPER_IRIS_CPU_NOC_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x5C)
>> +#define WRAPPER_IRIS_CPU_NOC_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x60)
>> +#define WRAPPER_TZ_CTL_AXI_CLOCK_CONFIG		(WRAPPER_TZ_BASE_OFFS + 0x14)
>> +#define CPU_CS_AHB_BRIDGE_SYNC_RESET		(CPU_CS_BASE_OFFS + 0x160)
>> +#define CPU_CS_X2RPMH				(CPU_CS_BASE_OFFS + 0x168)
>> +#define AON_WRAPPER_MVP_NOC_RESET_REQ		(AON_MVP_NOC_RESET + 0x000)
>> +#define AON_WRAPPER_MVP_NOC_RESET_ACK		(AON_MVP_NOC_RESET + 0x004)
>> +#define VCODEC_SS_IDLE_STATUSN			(VCODEC_BASE_OFFS + 0x70)
>> +#define AON_WRAPPER_MVP_NOC_LPI_STATUS		(AON_BASE_OFFS + 0x4)
>> +#define WRAPPER_TZ_QNS4PDXFIFO_RESET		(WRAPPER_TZ_BASE_OFFS + 0x18)
> Registers here got totally unsorted (they were in the original source
> file). Seeing this makes me sad.
> 

Sure, i will be improving this part in v2.

>> +
>> +#define CORE_BRIDGE_SW_RESET			BIT(0)
>> +#define CORE_BRIDGE_HW_RESET_DISABLE		BIT(1)
>> +#define MSK_SIGNAL_FROM_TENSILICA		BIT(0)
>> +#define MSK_CORE_POWER_ON			BIT(1)
>> +#define CTL_AXI_CLK_HALT			BIT(0)
>> +#define CTL_CLK_HALT				BIT(1)
>> +#define REQ_POWER_DOWN_PREP			BIT(0)
>> +#define RESET_HIGH				BIT(0)
>> +#define NOC_LPI_STATUS_DONE			BIT(0) /* Indicates the NOC handshake is complete */
>> +#define NOC_LPI_STATUS_DENY			BIT(1) /* Indicates the NOC handshake is denied */
>> +#define NOC_LPI_STATUS_ACTIVE			BIT(2) /* Indicates the NOC is active */
> Ugh. This mixed all the bits, loosing connection between the register
> and the corresponding bits. I'm going to pick up this patch into the
> sc7280 series and I will improve it there, keeping the link between
> registers and bit fields.
> 

Ok, not updating this part in the next revision of my series. Do you mean
something like

#define CORE_BRIDGE_SW_RESET_BIT0		BIT(0)
#define CORE_BRIDGE_HW_RESET_DISABLE_BIT1	BIT(1)

Regards,
Vikash

