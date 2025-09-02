Return-Path: <devicetree+bounces-211626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B770B3FBBC
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 12:05:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B8753B6519
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 10:05:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1664B2EFDA0;
	Tue,  2 Sep 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sz+w930p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658DF2F3634
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 10:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756807433; cv=none; b=ekws1BAnP+fOgy3zmeszcfY7wP42RU3i5kNq6hTujwUxG4R0woRNp0HMEBAiGcfB7/fUd+vy0hQc0R0pn5VLF2X7FRnPvp9uwL3c6x80hRvdenUtzLQJ7E58nonBvi8eeQxc0g/mOMqsbTMom84q+2MUonHJOh3ecY51kNl2nYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756807433; c=relaxed/simple;
	bh=OMH911saib2g4n2t2zyb4J/lG3JZViTe0mTvakxSTq4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rv4QVF/Xh0gFdZvdZzjlPpOBZc1s9kKV3TZkNvFlkzTpRFdZembI/7NYDzjOIGYm6wY8hw7xOdBvV3aPso8Juj7Gk4NnB5bTh2SpkRh5LMA56Pq43AvFXkqUMEOyzZ2naqTSzpiPXkGHiHt+GkFAUrdwni93wcTHQJ5kN1IN9os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sz+w930p; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822XGgF031614
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 10:03:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ONlt8yJ8zIOJ8ImlXqcGWu+roYh6In+yuDvxr9b3xSk=; b=Sz+w930phOpuCD/l
	/kGW65qil3V/1/dSCo4OTEgTUCUFo6CbyQrcqCZ3CIYqnVn2tiXUclDbWCwjZHhS
	8BjhPPFxjsUEr+aYsN1JioJnazBKMgzR828tLxouwiJvF4HJly8e5+N0r46ycsEi
	5zXGDPo/2tPlwN6Dgdb21Q26ii+BQ51AhP1Y5TxxLH3jIdJxJzjWPpNQ4W50BpMy
	iGc3NeolKVlIsm7SLYniteNYuYONT1q7IABB1SW77W9tyMbz0hGniHcA5SNmvpWT
	PyIrWFht1ziHBSFvwgrdn5kli9YGXZd/v3HQQ6woJNMEd4WuWxGbixyOvXVFmdlh
	eW42hQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48wqvw94gx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 10:03:50 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7148174e111so6482456d6.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 03:03:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756807429; x=1757412229;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ONlt8yJ8zIOJ8ImlXqcGWu+roYh6In+yuDvxr9b3xSk=;
        b=LwrLFWRkHQMMzuYdsrDVwCuFe3DR+ha+94Ff5vEDy4z/OHaJWp0ejOSq5lkxEO9CTa
         cVxv/nYDHmD/J0M9Q5gUg13UWRMWGo5HML3dePp4wSR3cL0Jw9PWYAXH+4+k+adx09m7
         jgkmmTJjQ/RW+BwFwNTO5pEwqa4C92MQtRg9H6X3SYPBIW18xTyCetSVmDAMvj1rVZw1
         6NS/qRBJH3D2pcRxwgO1bG3hVB1IVQ/R4gf/cLx4093WobWcDpCiVWW4d5GJRG7b59OQ
         l6tYpYNIUNK2u+mHSGBHbJ4STc/g7Zwmmr2EYDY5sVyxtte5Hao0xoV5gpwdU2rf1dEO
         X+cw==
X-Forwarded-Encrypted: i=1; AJvYcCVOQBVFOEAMb69bGduyBXCpcj7RsHoEWU3YzNntHDzaM+yeCn3MilVqWX16nxfu1cR+vIIvrYJ+Ogid@vger.kernel.org
X-Gm-Message-State: AOJu0YyPGl4DugkM+FD6LiPllqVamruqQu5KPC3s9Huxx7iQNAnplUbl
	qFrTc11mJh+JKEGcf1+JX2orbmuUzsEsE/VHxWD6nnVEoOVWuHI+rfVceIgI5RNfng1m/u+qqsX
	JUE2x681OydGp6GG5Aq1YVcfwaZkzNcDS3Y8LEbwYW11fkImp0Z2VIYVAp/BjFyLL
X-Gm-Gg: ASbGncvXv2J43CFlTBrI20qd68vQBOkGumxy2EYxIqLHlzoH7Y/y5i1ESHAVX/40Vxc
	O5mAvCXCMDHJ+TohIEzUwiAjOmK+fTOeHF/AUrmTCo+IGEQqOnPQiFy2WUZpA69UJJyzf9E4d6Z
	VZPDpQ1dXjD7KQ9FQV/zGerxyzbJxjScDyR31D87YHlsgbBoaJT+Xy4bmgJe+OFPRbSdGYOQ5vY
	5ALBXyMBfOrBJCI8B7m4AwiwyeYO5Pf7l2duQm0mAT1Yc1IbPAEOgxgjKMDPZI/LSZVz816shZ/
	uCHs15cCONU0b3oTZxZRV/kY+k8TLj+2kP59CcnH6gv0Zm5S1Q9sInTxqr4yg5EO75NebLEq0q0
	bCR61bdR3dxQBbo/shWQ7eQ==
X-Received: by 2002:a05:620a:1708:b0:7e8:12ad:1e93 with SMTP id af79cd13be357-7fd83f260f6mr793076885a.11.1756807429248;
        Tue, 02 Sep 2025 03:03:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHI/oDHG5/v/2FWXfHEB2t9sSEdJ8GtrjSJ3wf6sMVoZu9vN5NDGMwWVG1wNAgVIl0g9nUBXw==
X-Received: by 2002:a05:620a:1708:b0:7e8:12ad:1e93 with SMTP id af79cd13be357-7fd83f260f6mr793073685a.11.1756807428741;
        Tue, 02 Sep 2025 03:03:48 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b034db02d54sm761267966b.106.2025.09.02.03.03.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 03:03:47 -0700 (PDT)
Message-ID: <1bbacc5f-7371-4451-b503-cdd98e9f9688@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 12:03:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] soundwire: qcom: prepare for v3.x
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org
References: <20250901195037.47156-1-srinivas.kandagatla@oss.qualcomm.com>
 <20250901195037.47156-6-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250901195037.47156-6-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAyMDAyNCBTYWx0ZWRfX0azBHgjiv/eP
 FqXCowbQ6rXOTpksF7cZk+7FAg/OpHTNnRh0gZaXtLX+vhoLB9fY6nwyBB/hW+p6M+krVQWfpgj
 yoJ37rdWiSMgyRzo0CRZpXdLONtQvQQhJGB//xY3orIHmMJjy4qmoA/Ih/STFX98C9/NEf7KgSo
 5aCMTtUmTPZVX6aToDV41i3ak1pQ0Q2/Jtb/I2s16+RmUqPb8CKOVL7KDLAyiwR/7mnGrU1ejGO
 sZh6eiX4ITHnYAUmCA3+ZhlMYOMYwEn2n3YdSK8iA/xgLc6MyI9gvqWP5pTL/9eBsSs1AhjvUDR
 MNPxVidgjDQoVaUhHvdcDs3lre9eqQL3qjy8aM+Sx0pcMVPDczKv7lShUzJ5H00S8fxsHdfFObd
 dqR8lrw+
X-Authority-Analysis: v=2.4 cv=WKh/XmsR c=1 sm=1 tr=0 ts=68b6c106 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=2vpAE3o8IOySRsMUN-QA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: 7CrAelHDNrCXImXoXnwdX3yl7ChcYz3a
X-Proofpoint-ORIG-GUID: 7CrAelHDNrCXImXoXnwdX3yl7ChcYz3a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 phishscore=0 adultscore=0
 spamscore=0 malwarescore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509020024

On 9/1/25 9:50 PM, Srinivas Kandagatla wrote:
> cleanup the register layout structs to prepare for adding new 3.x
> controller support.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  drivers/soundwire/qcom.c | 69 ++++++++++++++++++++++++++++++++--------
>  1 file changed, 56 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
> index 4fa3e1c080ef..e3d248432d49 100644
> --- a/drivers/soundwire/qcom.c
> +++ b/drivers/soundwire/qcom.c
> @@ -107,6 +107,15 @@
>  #define SWRM_DP_BLOCK_CTRL3_BANK(n, m)	(0x1138 + 0x100 * (n - 1) + 0x40 * m)
>  #define SWRM_DP_SAMPLECTRL2_BANK(n, m)	(0x113C + 0x100 * (n - 1) + 0x40 * m)
>  #define SWRM_DIN_DPn_PCM_PORT_CTRL(n)	(0x1054 + 0x100 * (n - 1))
> +
> +#define SWRM_DPn_PORT_CTRL_BANK(offset, n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
> +#define SWRM_DPn_PORT_CTRL_2_BANK(offset, n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
> +#define SWRM_DPn_BLOCK_CTRL_1(offset, n)	(offset + 0x100 * (n - 1))
> +#define SWRM_DPn_BLOCK_CTRL2_BANK(offset, n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
> +#define SWRM_DPn_PORT_HCTRL_BANK(offset,  n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
> +#define SWRM_DPn_BLOCK_CTRL3_BANK(offset, n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
> +#define SWRM_DPn_SAMPLECTRL2_BANK(offset, n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
> +
>  #define SWR_V1_3_MSTR_MAX_REG_ADDR				0x1740
>  #define SWR_V2_0_MSTR_MAX_REG_ADDR				0x50ac
>  
> @@ -171,6 +180,13 @@ enum {
>  	SWRM_REG_CMD_FIFO_RD_CMD,
>  	SWRM_REG_CMD_FIFO_STATUS,
>  	SWRM_REG_CMD_FIFO_RD_FIFO_ADDR,
> +	SWRM_OFFSET_DP_PORT_CTRL_BANK,
> +	SWRM_OFFSET_DP_PORT_CTRL_2_BANK,
> +	SWRM_OFFSET_DP_BLOCK_CTRL_1,
> +	SWRM_OFFSET_DP_BLOCK_CTRL2_BANK,
> +	SWRM_OFFSET_DP_PORT_HCTRL_BANK,
> +	SWRM_OFFSET_DP_BLOCK_CTRL3_BANK,
> +	SWRM_OFFSET_DP_SAMPLECTRL2_BANK,
>  };
>  
>  struct qcom_swrm_ctrl {
> @@ -230,6 +246,13 @@ static const unsigned int swrm_v1_3_reg_layout[] = {
>  	[SWRM_REG_CMD_FIFO_RD_CMD] = SWRM_V1_3_CMD_FIFO_RD_CMD,
>  	[SWRM_REG_CMD_FIFO_STATUS] = SWRM_V1_3_CMD_FIFO_STATUS,
>  	[SWRM_REG_CMD_FIFO_RD_FIFO_ADDR] = SWRM_V1_3_CMD_FIFO_RD_FIFO_ADDR,
> +	[SWRM_OFFSET_DP_PORT_CTRL_BANK]		= 0x1124,
> +	[SWRM_OFFSET_DP_PORT_CTRL_2_BANK]	= 0x1128,
> +	[SWRM_OFFSET_DP_BLOCK_CTRL_1]		= 0x112C,
> +	[SWRM_OFFSET_DP_BLOCK_CTRL2_BANK]	= 0x1130,
> +	[SWRM_OFFSET_DP_PORT_HCTRL_BANK]	= 0x1134,
> +	[SWRM_OFFSET_DP_BLOCK_CTRL3_BANK]	= 0x1138,
> +	[SWRM_OFFSET_DP_SAMPLECTRL2_BANK]	= 0x113C,

lowercase hex, please

[...]

> -	int reg = SWRM_DP_PORT_CTRL_BANK((params->port_num), bank);

all (?) the defines that the patch context shows as removed can also be
dropped now

Konrad

