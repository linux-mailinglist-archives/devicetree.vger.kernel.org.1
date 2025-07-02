Return-Path: <devicetree+bounces-192098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E36CAF15FD
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 14:45:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F3A34A826C
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 12:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67713271446;
	Wed,  2 Jul 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X/5x6WQx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6DC82367D3
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 12:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751460353; cv=none; b=gMm/dRTcGyU7HbSpAbp3ybyGdQ5kQ9vgFNoFdl4ERxZEly3WZ5mlO3skLnNkqPBWdXLdv6WU0F4cgKET25ZQUL4OXGxafPOPfhSQBcJt4NkZ6zib3uAKG7pSKYOEXxxT90r5HqFdCwF9gMAQ6OHQQF+X1PEfUOvFaNFzVpL0oAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751460353; c=relaxed/simple;
	bh=L6hhUirJkO/7sMRAQX56jA6n5wv/jVQ37SKFMn2Twmg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nEKJ4SmEjnbpg0kW3EAGNINlvi6tPsIxLvHoMX1w+D33aOjG46UV08uFjFsiRYIaLTGARWKNa/YekEkrtpdx5LK57jQJhTOUJGYkWR3tQZ13uGa5mpFkylzgJn/dii1Hca1EeQ2tHzU3jlSB8+KbFC2SCEm1lgDlQGMl0di9M2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X/5x6WQx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5626a7Ma002177
	for <devicetree@vger.kernel.org>; Wed, 2 Jul 2025 12:45:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/aPyaghMl71l2+WzfUFrAleiaGBW4YqofoCOldr6ncM=; b=X/5x6WQxi9fGjLKr
	rheR6uxLJBHs7sCO/OqCjPbI3v0159zQ59jiEx2Qc7IbQiRAGxaVHL0f981YgjQI
	7/vIXPtP0KlBPab7cdrQHK2+O9VmDiyjnNNNNsgVmw8n8ThUcie7QmffSJMRH7i9
	T1pnTkMvWCYnjc+s/QjUbIlnsY2jRBcvlbc9VXR+2mFdCGhg4N8aS9ORaHfZytdY
	EBgwc1t1uTQ/qmk/kgtIeaqDJ+XatGLU2Tc6mpy6XUXk7n/ksouzXz7TZ6fdycUu
	bRUGaiDbIiWNWLRJIit9T/a66HJgcWUMOMGZybp2ZVLzCtnbORFgHWkQf2klhfD4
	z4OiUw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j9pcvj0p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 12:45:50 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d097083cc3so176260485a.3
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 05:45:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751460349; x=1752065149;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/aPyaghMl71l2+WzfUFrAleiaGBW4YqofoCOldr6ncM=;
        b=qMsd5FKPa0TWJ2eLpjfutfBOB+lqDDswA2MQcAQ7nodUEHI+izSwVHI/hkeVNUN+fW
         guRBROLyG9lldKteJyG4zIv5qSzIx7Dv4EZQGRfQoVkx6cEAXydhDNFRiXGuGASkT+iB
         ZxoTxWGCzz3On1Roo6HzAm34KJQAQkCkbGHjvXC611cqW8AlbW3ZX2JB2dH0ZdXpoYn2
         BaI/rg9JoFVuua4m1U+oc8lS2moMcs4Id7lTa1K2SmS45Kwp/oMPW/gwm5CUNKUvsqrn
         F3ajocERsZzwaBW6GRpuRijSdqGq/YaQ/FNR6EThuBl7iGq0LGtriijyPsLhTdwAyBPd
         fqkQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHDS8gKrnBU1Qk0VZx9h1H9ey32Bljx+FkSyZsQ1BFYhwd5YL70fKZfa04FzlZw2Ukdabhb61R/61O@vger.kernel.org
X-Gm-Message-State: AOJu0YxM93BFKhFM9viFivo1ujMkmUx2pNTsAXXmAY+Su74OkQH9bQ7S
	vKkpDW/T6b10cqqsA2MR0Z4lUIfy6Bgi0EEkPW0fQghTK02Xd7LyNpdQRuPeKUiNz1M9oxNMB9Y
	/NJoJpTKTegTv12Iakk89j2RobABvkfn93CXPRRa62JqTmMZlJyKOef6FJyS8Xvfk
X-Gm-Gg: ASbGncvmtMU4DhYjL11BM7WbeDfjvwOFGdpv+QFxZgWvq6/SUfRiH40GxqPbkq94/YI
	hUiuL8FSrMvyADTQTYmVka7RdyHelewXyyyxyXHcnPnxzsypq+ZBUAC52jZo5gTuKKaY6nUkbyy
	/DIqykjzqoV4oRbembmVyWuKh5tmpcrWN8YhYxzKc2yib3r7YR46JIicyt1eJXBYSaFxH85iahx
	XUeod0ol59MmFZ9xLHXQVDICLIjRaUk6qHYio6CUBdxevlURIzfCpVhZPq755SlEpPo+Rrq1mpE
	Pd/ECAiT0IzXM7av3Ief5KZm8Ktskq3pQeQLTwRLw2AE9RpYfNCIXp+G9bhUXF1vurMPC2+QPCk
	FyTI=
X-Received: by 2002:a05:620a:3954:b0:7d4:1ecb:dc36 with SMTP id af79cd13be357-7d5c471292emr162613385a.3.1751460349401;
        Wed, 02 Jul 2025 05:45:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGenMXUQ0DABCm6z4G1Os0/aj+Iw9lPISHCubjt8QuuBByfXmzEI7utX9xCWSS65elyzu6UuA==
X-Received: by 2002:a05:620a:3954:b0:7d4:1ecb:dc36 with SMTP id af79cd13be357-7d5c471292emr162611685a.3.1751460348937;
        Wed, 02 Jul 2025 05:45:48 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c6bfafsm1081492366b.130.2025.07.02.05.45.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jul 2025 05:45:48 -0700 (PDT)
Message-ID: <13046a5b-f66e-42f6-90e3-17f7adb709b4@oss.qualcomm.com>
Date: Wed, 2 Jul 2025 14:45:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/5] media: iris: register and configure non-pixel node
 as platform device
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com>
 <20250627-video_cb-v3-2-51e18c0ffbce@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250627-video_cb-v3-2-51e18c0ffbce@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 7owcjCgcK_EXdOZoCSgPs5U-CebVo1GK
X-Proofpoint-ORIG-GUID: 7owcjCgcK_EXdOZoCSgPs5U-CebVo1GK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDEwNCBTYWx0ZWRfXwdocYJeG9sy1
 CpxfpCd214sVyF9McVmwNWm9q+dx05AGWw3eB/NPKOMe2us6TbD1VqZBpzmm24vnwOmOHv61mJy
 AdEYNK/bO3MgI8csI/CS7S8abS3i7sKBrLnzULA3o6dJZAL1r06L++n/Xl4s4S9A5oeW6hRPaoS
 Pa/zC9p7mLKNwQhodgrqRpelIp9Plt5uV7zMOi03rq3mMGq6Q6ie9y0BU0c1W/f5UZX5tzLvL76
 37burINe3R4GdxWnyz4drAimQdxSzAOpARv1A3oXqrM1duDz9rgKLIinEjbnQy2lqjnGiRMH+cl
 Jg/sIZ4+L5X7eNqBa5dcu4i6i6Rjjhg1W6On3fPvfSPEZf1YVQx6a5o366iZbsoDgZ2SsPnXj71
 G6u7N1pFTSQ4OyWZUcL1dYvqtINWFrb8SzBQAvNqzgrp/xZHbGtrW0CokiGvvRtWqBGI67q5
X-Authority-Analysis: v=2.4 cv=QMFoRhLL c=1 sm=1 tr=0 ts=686529fe cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=Fpb8j_qVfG1HvjMpLOEA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_01,2025-07-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 spamscore=0 adultscore=0
 mlxlogscore=999 mlxscore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0
 clxscore=1015 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507020104

On 6/27/25 5:48 PM, Vikash Garodia wrote:
> Register "non_pixel" child node as a platform device, and configure its
> DMA via of_dma_configure(). This ensures proper IOMMU attachment and DMA
> setup for the "non_pixel" device.
> All non pixel memory, i.e bitstream buffers, HFI queues and internal
> buffers related to bitstream processing, would be managed by non_pixel
> device.
> 
> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> ---

[...]

> +	memset(&info, 0, sizeof(info));
> +	info.fwnode = &np_node->fwnode;
> +	info.parent = core->dev;
> +	info.name = np_node->name;
> +	info.dma_mask = DMA_BIT_MASK(32);

I'm not 1000% sure, but I fear that with the current description:

iris_resv: reservation-iris {
	iommu-addresses = <&iris_non_pixel 0x0 0x0 0x0 0x25800000>,
	                  <&iris_non_pixel 0x0 0xe0000000 0x0 0x20000000>;
};

this only works by luck, and once we introduce a platform that needs >32b
address space access, a change here will break the existing platforms, as
the higher parts are not forbidden.

We can work around it like the Tegra folks by filling out the upper size
dword, but I think it only further makes the iommu-addresses binding look
silly..

I'll submit a patch to (in my view) improve it soon

Konrad


