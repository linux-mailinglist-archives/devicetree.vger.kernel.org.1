Return-Path: <devicetree+bounces-159755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 365C6A6BF34
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 17:10:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D8E2F3B800D
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 16:09:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB388227E9B;
	Fri, 21 Mar 2025 16:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MBt27kD4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6389023BE
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 16:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742573358; cv=none; b=aJyZeb0WcbQ5VDjJMHrUwluU3Hbb3imk9MvKf6lWArjaBV5rq+lrN+z5Zyup2iTkjj4gG0C8Cvnn9A+66VGgkdyenYgT8bpXbwUwVCg9yKMNjyBRqVTNgZIcvBVNFn/qUMtoGAyLfGAxm1zs98/s9xSZhTbWyOtc/I/QMyfzALs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742573358; c=relaxed/simple;
	bh=llZWZG8vrikSmiw8ydIW6hs/MJhHomqckp7K5dqW3d0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KaJoelN2kB/WKR03vguJ7dVutRlPPTGX3yJu3nIhh9OhBcgfgPzT9Vt9vvfoU7k5sFeLPxfJHW4whxsUJxGIjIjeqtnaOPY8BwGpqi53GzGLCg39k8kqfpxPkJPK6r738Wsj1I1M1yHrzlLta/bj8g606XebNLtgxgC+T0P0Xi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MBt27kD4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LCSgms010551
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 16:09:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fdOuElFLpccoJsuXgqKPQO+xF/9Y5vee1gm2/OiO0Gw=; b=MBt27kD4ga1ISE1Y
	oYW+r5SB7YuIJ+WP2qd2UrnA9bVoMbvLpp5Ag6nBiypSs0xrww2+q4JskgZvPgEh
	FfXtDFZQSKbkuuGSua1GvghQRGqBh+9M0S6PEv7JSilvs2kl6QO1uM2FN2H7Zjnr
	LDT7PioLyMjyMH0rl3DqPfPkkWX9cjW4KzssK3WpktwvD0pvXnotcSGd2uKYVkCB
	JM/Tqlr0ZQUgjKJTcL48w3PJVc/nAGf82cwFwiuHmOegvi9e+AD/uQwQWf5RFnOc
	sVLDE2CO6twu/klPDlOell0cX7YaIgiWxafKlBrI1ye4lLVmpLJdRKzyD+3HWF3K
	IrpZ2A==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45h85e0ka1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 16:09:16 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2ff8c5d185aso6218339a91.1
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 09:09:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742573355; x=1743178155;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fdOuElFLpccoJsuXgqKPQO+xF/9Y5vee1gm2/OiO0Gw=;
        b=hQy8FiDvkCtwQibFwiE2PjB+7GKFZNoZSjj8yM8TLciu7AVLhPTDoIDUFM3G4uuCB6
         D8F+pC1nx/DnEu8EON2jyOm4P14dydS4OUVzIE3VgVI1IrNKHKybZIDAGim5SBQV7idB
         QHtTj5RihuMaZhAyOuTc7E4KSBjBoIUjIi7Vznevd1CTY1ZERhk7vTLoRLPU6HCkLE6k
         HK5Iz8FRhyVnyduzL8kwPy/oBKqzgDhqnBIYDtrqLAsDRxr4nDsp92RmrDAgRoFs/Ho0
         eTIdXIb+eaL5B2uXqeCb9kjytppzpuP/IEFO1WRBGdJxpd2z1LzFcA7pManlo37EqEWg
         d67w==
X-Gm-Message-State: AOJu0Yyv/PjNYTyrfU3HBxnZzlOC77UMGQ7gTC2DrKIXqWN96LU6ObFG
	iiTU2A8hRximcuHKmhtqg5hd9wrHT3pZFHDp88PX5JtwkeAv3OdrPtvga1nSCiZs3mSfnk6YXQD
	YMjY3i8BkdG5mgArV5IYWHU+Zk7JKzBQYddk80YgeUrgluu3IZLmz4YSHeVQp
X-Gm-Gg: ASbGncs62es6zO09g3tUlwX6tVsPLXPZqPE5KY95j2OtrghyO1U9ulIStduiRdaiI1h
	eGWH/v1/pMNCSkeBfeiH5SFDXK8ZLwvV33orjPo+Q4B00DI11jhUt1fU2cv5ixbjkYmzCBypH4e
	zoqRZJcb9jw6y83nOgsk4hHMqHQVAwx+gYLqe53cIa2HeU2yQE54udyQtvlrzH5dzX126PvDGar
	90NMw2CaafbMsoYE86R0tyXcpBl8Cun0a4o4hGnStiJfTsu2kC8f6nHmv1FV5horhuz7r5EQubX
	lAa4xC4pqOJyXVZrsr/782G5kddMmCSLCrWzwJ6nFyLk9h+vVknSy6/inEhy824ing==
X-Received: by 2002:a05:6a00:4f81:b0:736:5822:74b4 with SMTP id d2e1a72fcca58-73905a530a9mr6797797b3a.21.1742573354422;
        Fri, 21 Mar 2025 09:09:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGL5fYByHbvsD/gRtsSQfXYP8pBS52gj7BStPaMfEBPmc/gB4ybx9sZflEDEhvH+V7H0dixLA==
X-Received: by 2002:a05:6a00:4f81:b0:736:5822:74b4 with SMTP id d2e1a72fcca58-73905a530a9mr6797719b3a.21.1742573353797;
        Fri, 21 Mar 2025 09:09:13 -0700 (PDT)
Received: from [10.226.59.182] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af8a27de717sm1957838a12.12.2025.03.21.09.09.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Mar 2025 09:09:13 -0700 (PDT)
Message-ID: <4d617199-191c-47d9-a0f1-5bf9c149d09d@oss.qualcomm.com>
Date: Fri, 21 Mar 2025 10:09:05 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] accel/rocket: Add job submission IOCTL
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
        Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
        linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20250225-6-10-rocket-v2-0-d4dbcfafc141@tomeuvizoso.net>
 <20250225-6-10-rocket-v2-6-d4dbcfafc141@tomeuvizoso.net>
Content-Language: en-US
From: Jeff Hugo <jeff.hugo@oss.qualcomm.com>
In-Reply-To: <20250225-6-10-rocket-v2-6-d4dbcfafc141@tomeuvizoso.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 8gSaH58M1YmN9jtPlVzKZj5buOdwU2Vy
X-Proofpoint-ORIG-GUID: 8gSaH58M1YmN9jtPlVzKZj5buOdwU2Vy
X-Authority-Analysis: v=2.4 cv=LKpmQIW9 c=1 sm=1 tr=0 ts=67dd8f2c cx=c_pps a=RP+M6JBNLl+fLTcSJhASfg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=otp63fjl-Mw8CRR8ssMA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 phishscore=0 malwarescore=0 suspectscore=0 mlxscore=0 priorityscore=1501
 spamscore=0 mlxlogscore=999 lowpriorityscore=0 clxscore=1015 bulkscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210118

On 2/25/2025 12:55 AM, Tomeu Vizoso wrote:
> +/**
> + * struct drm_rocket_task - A task to be run on the NPU
> + *
> + * A task is the smallest unit of work that can be run on the NPU.
> + */
> +struct drm_rocket_task {
> +	/** DMA address to NPU mapping of register command buffer */
> +	__u64 regcmd;
> +
> +	/** Number of commands in the register command buffer */
> +	__u32 regcmd_count;
> +};
> +
> +/**
> + * struct drm_rocket_job - A job to be run on the NPU
> + *
> + * The kernel will schedule the execution of this job taking into account its
> + * dependencies with other jobs. All tasks in the same job will be executed
> + * sequentially on the same core, to benefit from memory residency in SRAM.
> + */
> +struct drm_rocket_job {
> +	/** Pointer to an array of struct drm_rocket_task. */
> +	__u64 tasks;
> +
> +	/** Pointer to a u32 array of the BOs that are read by the job. */
> +	__u64 in_bo_handles;
> +
> +	/** Pointer to a u32 array of the BOs that are written to by the job. */
> +	__u64 out_bo_handles;
> +
> +	/** Number of tasks passed in. */
> +	__u32 task_count;
> +
> +	/** Number of input BO handles passed in (size is that times 4). */
> +	__u32 in_bo_handle_count;
> +
> +	/** Number of output BO handles passed in (size is that times 4). */
> +	__u32 out_bo_handle_count;
> +};
> +
> +/**
> + * struct drm_rocket_submit - ioctl argument for submitting commands to the NPU.
> + *
> + * The kernel will schedule the execution of these jobs in dependency order.
> + */
> +struct drm_rocket_submit {
> +	/** Pointer to an array of struct drm_rocket_job. */
> +	__u64 jobs;
> +
> +	/** Number of jobs passed in. */
> +	__u32 job_count;
> +};

These 3 structs will be different sizes in 32-bit env vs 64-bit env. Yes 
the driver depends on ARM64, but compat (32-bit userspace with 64-bit 
kernel) is still possible. They should all be padded out to 64-bit 
alignment.  When you do that, you should specify that the padding must 
be zero, and check for that in the driver so that you have the option to 
use the padding in the future.

