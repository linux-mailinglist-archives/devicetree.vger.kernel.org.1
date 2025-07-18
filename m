Return-Path: <devicetree+bounces-197777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B2AB0A96F
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 19:27:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 555187BDD53
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 17:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C2382E7193;
	Fri, 18 Jul 2025 17:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WkhBU3LM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1F32E6D26
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 17:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752859614; cv=none; b=tAs3GburfZh3/Zi0diJlqbagJV5cjt58dFlrRSzy2wM7UXG4uuMUYFr/UGgkF75H6GACTwdnzhGipqAIZ7CMPz7Mrk52cx5CRosYJ6OwJkAXP5eo8XSVycgtDleCJoJiYokeliclnfzWvyUobRGAn4IUpcFydE6DTo3g1Ut/wRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752859614; c=relaxed/simple;
	bh=ZQApwEQ02/d8oHeWrr7hvbCAGhlqib0c03SG7L+E0gM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UrFg/yOCBrmwxqzIkcqOW+x5hKJKfm8Qfmtem2t1BfynGKcfTlR/TkL6dyyBVuS6UZBKuYWzthbhdfazisTqhyvEvrQhMUIxEjTF3arlt1//FvS5vPACgigXmKF4D1aJTLpve2esxdq+rmIFKhoOMsmp6LCg3ypMzCO+BgKR0fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WkhBU3LM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56IGaWQc025180
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 17:26:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fv+mEh4f0MhcLN21Yyg9tehverC4r+K2gbgLijocXdM=; b=WkhBU3LMpFoMdlPM
	vAqhiFUJdo1Zy9EYgRDMvp+udPTuHcKx9lPDzeI2ZXq/5cm7elI1QDI9LLxeG7gS
	hM6o9dZC2AWKDDE9ER2UAtPb/2eWJ6s7I3lTT8VDrIQ8Lz+8/oZgNsOnR6tkiv3M
	94c+I8oV1nqbS5IF9e9qGIAskI1hdNYx8UqAIqikMGRgjMivqEVAGMXOOwgcHFDw
	86IzJ625OAki5wWOvc3cxljvy5wf4/Gn9QN7kvCjiE5iYaW7iZNCxeJgbNqMtIKR
	jnNnOF8dKB9rBjiPu7wk4qG9V5hUF7oHJKiK64hHUIbeNs/4uKN/X6SZ8025kYzP
	0hTlwg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47xbsqgkps-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 17:26:51 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-75ab147e0a3so287940b3a.3
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 10:26:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752859610; x=1753464410;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fv+mEh4f0MhcLN21Yyg9tehverC4r+K2gbgLijocXdM=;
        b=C2bvpIr8znLpC+PfByADOnybSg2GVnp4h0xyjqY/zWQneZkmukF+vjzPHop/8ajKb4
         RsfXvU0hbRd9gyrbIMK2TW277cDXkIRpvViZjALbPijsa5+c+0xV6Tm1DYlGlG56FrdC
         5k/DQHnoYKMHYPReusjyQoluFb9j+TlYoEUi9l3MCxLpqIfTMnsB4G8JblvGBBtVL5jy
         /5RdjeOavpOGLwuF663/o9L5HGnSWaotmBzg34766gaNCB+BUrLr3a9yTYDsndUPm8+8
         CWeBPe3DDRd8zR7aOBs3DV7ZcZmxmrUS8i9FBA3Ike6DSHpNROJri/zBWldaX2OiDVsx
         fw2w==
X-Gm-Message-State: AOJu0YyCcPc8IHOzVVSTB803TzqF/mZ14Bw7HEWTSdKOQUfeONbxNHEv
	H0M7o+4n6uJwzrIBL/xNex18dLia1zD0oglWz/tnVrxagwt++TPT6Cj8EsiZ/93w9rZHdbgCnoK
	1w3oHIlEtwxHaG812O7Kdcx9hS6vJTEaQ+/IGA9sczGjGhk+lV/LtVlQK9MPjAvXc
X-Gm-Gg: ASbGnct401wHiO6i+CK2QvMcJiITnfyOO2cBq5GR9qokg6tUE55lIZdwVJ7tWRiO1WX
	Z/vpfGGtr0iTw90svpJivYJFbl19vVziAYSQ7tHND/2DCdSfWaW99x/PVNv9tx6/F2vozUf33Sm
	7dfBMljnRNuJkCjBGFwsvpmsbhmGlHk2K2LnihG8MJ/mCtLRWGsbizlio+EvR18RcmHs/lYuyfN
	d2jf2QC2/dAmeeyfkUkMUkTf7cOufkPsOgUmyQQSGeaVqfT/qdxpzMhB0oFveGERrLhV9sEWiY5
	M00OydrYNg5Z33+S3PimGQkbIiH8jspbzDdf3xh6Z9AAL07V1/OGkrCPnCDDftNAG7wmGGMl5UG
	9ajpK/cq9gTkPBQ==
X-Received: by 2002:a05:6a00:3392:b0:740:9e87:9625 with SMTP id d2e1a72fcca58-7572267d1f8mr16458201b3a.4.1752859609726;
        Fri, 18 Jul 2025 10:26:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqQ9S63kSJn6y6OyUDc3uTWz9C+4cH8naBY6AZisiTbM1Dmrh1Aqbj7AEM/eK1YFdABEhA9g==
X-Received: by 2002:a05:6a00:3392:b0:740:9e87:9625 with SMTP id d2e1a72fcca58-7572267d1f8mr16458162b3a.4.1752859609159;
        Fri, 18 Jul 2025 10:26:49 -0700 (PDT)
Received: from [10.226.59.182] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759cbd67ed2sm1530796b3a.135.2025.07.18.10.26.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 10:26:48 -0700 (PDT)
Message-ID: <cd36e463-2499-4e3f-8a02-60ea43de83dd@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 11:26:45 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 04/10] accel/rocket: Add job submission IOCTL
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
        Kever Yang <kever.yang@rock-chips.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
        linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20250713-6-10-rocket-v8-0-64fa3115e910@tomeuvizoso.net>
 <20250713-6-10-rocket-v8-4-64fa3115e910@tomeuvizoso.net>
Content-Language: en-US
From: Jeff Hugo <jeff.hugo@oss.qualcomm.com>
In-Reply-To: <20250713-6-10-rocket-v8-4-64fa3115e910@tomeuvizoso.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ad1hnQot c=1 sm=1 tr=0 ts=687a83db cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=DISFzqtZAAAA:8 a=EUspDBNiAAAA:8
 a=OV0_J1LtQ3fB1FIpcGAA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
 a=aug85vrO5LANNmmtkfAW:22
X-Proofpoint-ORIG-GUID: RyilpvHi3rgUigvqpQXcgUk1UFzmrFq6
X-Proofpoint-GUID: RyilpvHi3rgUigvqpQXcgUk1UFzmrFq6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDEzOCBTYWx0ZWRfX2XO1jmrIg1rM
 waYZOgIGFlcr/0+H+PVClSNiqigXskPM4rfMezEk2gy65xbhAaEyg8oA+a4Th+mnEK0qTw+rqJ+
 m/SsOaBM5iNesKxPLMrHe3i0aQEiPzRWcFCKLLRNiuH/fASnrGWdx3wu9CcNJeSVM3Uf+L/brht
 ND4wdwR2PPRwCqvijw931CSc7IOjmmv+R6MThVNPfFo6cM2dwR3XlGPlk98Si8lTooNPn47ZEGq
 3GewUKJDeksW7PBUfhj7jeisz/vNQ+HhkpvhEVkprEP4U65jzkJ59wHVWGc09CsdSDzJZlSxria
 Eq9w9ailWhcJZZ+RbcajRiqa5HdDMzaj69vYzUpXO90ky1xFT8wZ2DuAYDwT/kCAuVSihW2/UfE
 KvKYZeMjbL3D5IUKEPsTwQqOB2OeM1H3HJ29MTe03cfvtbt+32pjE31XW1So1LjgFOqbBpNh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_04,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0 spamscore=0
 malwarescore=0 phishscore=0 mlxscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180138

On 7/13/2025 2:38 AM, Tomeu Vizoso wrote:
> Using the DRM GPU scheduler infrastructure, with a scheduler for each
> core.
> 
> Userspace can decide for a series of tasks to be executed sequentially
> in the same core, so SRAM locality can be taken advantage of.
> 
> The job submission code was initially based on Panfrost.
> 
> v2:
> - Remove hardcoded number of cores
> - Misc. style fixes (Jeffrey Hugo)
> - Repack IOCTL struct (Jeffrey Hugo)
> 
> v3:
> - Adapt to a split of the register block in the DT bindings (Nicolas
>    Frattaroli)
> - Make use of GPL-2.0-only for the copyright notice (Jeff Hugo)
> - Use drm_* logging functions (Thomas Zimmermann)
> - Rename reg i/o macros (Thomas Zimmermann)
> - Add padding to ioctls and check for zero (Jeff Hugo)
> - Improve error handling (Nicolas Frattaroli)
> 
> v6:
> - Use mutexes guard (Markus Elfring)
> - Use u64_to_user_ptr (Jeff Hugo)
> - Drop rocket_fence (Rob Herring)
> 
> v7:
> - Assign its own IOMMU domain to each client, for isolation (Daniel
>    Stone and Robin Murphy)
> 
> v8:
> - Use reset lines to reset the cores (Robin Murphy)
> - Use the macros to compute the values for the bitfields (Robin Murphy)
> - More descriptive name for the IRQ (Robin Murphy)
> - Simplify job interrupt handing (Robin Murphy)
> - Correctly acquire a reference to the IOMMU (Robin Murphy)
> - Specify the size of the embedded structs in the IOCTLs for future
>    extensibility (Rob Herring)
> - Expose only 32 bits for the address of the regcmd BO (Robin Murphy)
> 
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>

Reviewed-by: Jeff Hugo <jeff.hugo@oss.qualcomm.com>

One optional nit below -

> +/**
> + * struct drm_rocket_submit - ioctl argument for submitting commands to the NPU.
> + *
> + * The kernel will schedule the execution of these jobs in dependency order.
> + */
> +struct drm_rocket_submit {
> +	/** Input: Pointer to an array of struct drm_rocket_job. */
> +	__u64 jobs;
> +
> +	/** Input: Number of jobs passed in. */
> +	__u32 job_count;
> +
> +	/** Input: Size in bytes of the structs in the @jobs field. */
> +	__u32 job_struct_size;
> +
> +	/** Reserved, must be zero. */
> +	__u64 reserved;

It does not appear that this field is needed for padding, and I don't 
see the rest of the series using this. This could be dropped, although 
maybe you have a use for it in the near future?

