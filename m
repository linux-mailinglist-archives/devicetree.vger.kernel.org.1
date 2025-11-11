Return-Path: <devicetree+bounces-237335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DA3C4F6FC
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 19:27:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B9F93AC7BE
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 18:27:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 898D336B06A;
	Tue, 11 Nov 2025 18:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TOV527vz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PmpQBvmu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C779426E158
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 18:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762885676; cv=none; b=VppyL36stlfhMg/wAGZ1Iw6e6rfaq2euYpOyO/ZUkSM0xRtlqdEjEBhSZbZlqVCDTO8pIboKJXmz46e2nqWnmyyuO1zSh1kNNg9ebiMX0oWueTvG0R9ytvBwfMidB4FipNFlDok25/Z6TPCLYfDG3yjjT4Uh/diNM9elXv2TEqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762885676; c=relaxed/simple;
	bh=P6Hq5eazFbHiwrRwjywNeq38GYTzPx86VVs7XBojXq4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mfFOrYRLGMW6/QAXD8frsvIr4tc9BYIRfXMflU9MDcOgZn4r8GYhilYBxTcpMKfBpEgGqFfzX7dUB4o0FBYFuSpvxZufxSPSDI+5MSwDaZUrMA4cb75+ZshvHfcQi2jeEjvGQl+3vzbnLZwCLpmbvBdL0x94oPbSVWXiwSA6rws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TOV527vz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PmpQBvmu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABH60o63060096
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 18:27:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wXMK7iv7Y5ax90Mvge1AFiOMhl71sSjL+BWtcze+a8E=; b=TOV527vzeeDL4EVp
	8XDBEZXH5szITiGV+ofRvGrRVCaJMrhicekWw9QDphgzpFD1gC+VckK8jeH5wK6y
	XytOj7NDMsGWAD32fyCIo7/8fernbjzGM97VBIf0RFIQGLvzGVW1yVYK1jJZd7s6
	cxz2N9lOR6KNWeyFQCqDHhtSxifS32yjeBKOjKOhgGh1lYNum4OnVSvHrinwBb7p
	QmMTYZCYfgh0unQIMMFGUAoT+Q9GfvKF4JEE0Qj8v9hGpLYmsmzx57gMpKGmo9ej
	FeHlXFcfW78wD5XRekUpmQdzNWB0GgsOPhoOJUBSCxxdBc3Lf2rcRg26kWuKMbF3
	NXeRCw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ac988g7j9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 18:27:53 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-297df52c960so70175ad.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:27:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762885672; x=1763490472; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wXMK7iv7Y5ax90Mvge1AFiOMhl71sSjL+BWtcze+a8E=;
        b=PmpQBvmutCxLp4gB75zf4RbscuFNMo3phncslAhekokzVELMNYU+sebKXuedPpeKcT
         D60hzb2DFQ0pcVFFr7stt4dPkCvu7TkK5vQamXhsH88U4B7pjSlMN/T061DoCHvm1GkN
         2DO/Zr23zZXRYTlGDK52UQZqiNsacTOrWUiLNQf18RftKm9BRkGmmKvQM8aq3nie1NHr
         bx28q4yEkm0bXK+J3CC0DnuEAxxSlPWOZrjtaIfDfYeZJ6lh2Kv0NS/tQeZJWLpPob2N
         ZMD/hk9XXBsr/IbENY9YgT7L7FQwYsvfcneDeZrLsQe3Uj8BZEXcEOmPE8bKY8kdaMV7
         ko8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762885672; x=1763490472;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wXMK7iv7Y5ax90Mvge1AFiOMhl71sSjL+BWtcze+a8E=;
        b=BaNMaIr9zYVeKMV3XbpyPph/CsncDf13dgPc633gWVi6pow60Y8b3HDvnOcPJUBHFX
         7gGcA5DLnE85PKHmgcQCsBGP8NM7vOhUC+ScY+Zk5lSdFiizXsjin36kvF6ZMZcRrbmN
         RYWbHyAj4iHghMMzZ4pCVgqcwZv7tKnSBF3XxcgxDleaW0lpu/fYmqGuztDkAUExzPUT
         M8A3/0E2RLKG+2OMI4RbMI92hY3rWlNN5+c5RCy96YdDkRHlZTFoKjBuvgQ7M0ptgI9U
         aUTjqohmqFyW368YX6q+HhUSryoPtx/ewXu/2iszVF2FQf1SiajozMJWyLdGAoExl2KX
         FGQA==
X-Forwarded-Encrypted: i=1; AJvYcCXHdYjWGShPTePYc5nUaWDyrFInQg7OUBzCjAT9QGE/j7tXNiNvOvw4mvIFt85qbEIDza6tiFCojrwJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxeezyhUJq875qbOPaCTlvePGOEIV+E2fOEGMOdOnJSq6qPQqNB
	yter3L0UvZxL7VlZyYL3844FzeiMXn1fLTWEunyke6MfTJYbkTLcL8fWZYabb9VaDtZU+QzCep3
	MSGN7plsPRqLVkJWXH+/1gpRRkW2/wR5uaHALvbpH18YTVN/dwOIX3ealDPm9nZagOWIlHrw9
X-Gm-Gg: ASbGnctIGBnSAfdiNM83tcqWsOAwDYHDfPMAHHgZ6eLRQG2m678FxCw2oqaRcZd71kv
	FX0XVIVbqGGJEzdkFWcR2Jb/DeBF49LSA7eamgkcUaGUjNA0Po8GZncQMsoq9Ot8ATPKYpcZsrW
	4D86NhfZkrAkisNU0HeAasOLw1nGx7Tcvx84PXHXPrCKN/kq9tb/fEVEImpWAMp0zaVTXXymSZI
	f7LUOOLZvtb7FfWZGyZsypyOYtYt18aVMsg1g2NqNrG2vlG/LXtVIBG7G5cyxJc6r0I6I0QGBXp
	ygBpnCCWXBJqdpMdrVHCJahj6zRUNXx9PHS+gBtaGj0XbDqJKvXk9a+BjFRa3ZPA7GBGtuAZyXR
	AybPNJu/a+hH/si4ZaL4Jk88n+Vuz
X-Received: by 2002:a17:903:3b8e:b0:295:9cb5:ae2a with SMTP id d9443c01a7336-2984ed7a2f4mr3089855ad.9.1762885672413;
        Tue, 11 Nov 2025 10:27:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEEpP/8AYxIDGKStsptUmFuUXHwM64nISKiJA6fogMhCFVF4QWZrv6y/K7jzM6L8LC5hze2bQ==
X-Received: by 2002:a17:903:3b8e:b0:295:9cb5:ae2a with SMTP id d9443c01a7336-2984ed7a2f4mr3089505ad.9.1762885671913;
        Tue, 11 Nov 2025 10:27:51 -0800 (PST)
Received: from [192.168.1.5] ([106.212.255.55])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dca0f28sm3940455ad.60.2025.11.11.10.27.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Nov 2025 10:27:51 -0800 (PST)
Message-ID: <351373ed-c699-4945-a978-cb35412918bc@oss.qualcomm.com>
Date: Tue, 11 Nov 2025 23:57:44 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] of: iommu-map parsing for multi-cell IOMMU
To: Robin Murphy <robin.murphy@arm.com>, will@kernel.org, joro@8bytes.org,
        robh@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
        bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        saravanak@google.com, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <cover.1762235099.git.charan.kalla@oss.qualcomm.com>
 <0319bdf5-0a46-40fc-93f8-30d74cf6475a@arm.com>
Content-Language: en-US
From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
In-Reply-To: <0319bdf5-0a46-40fc-93f8-30d74cf6475a@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: YPXURwz_wg0yd-E4nw9vqgWGBmqGh6nl
X-Authority-Analysis: v=2.4 cv=eO4eTXp1 c=1 sm=1 tr=0 ts=69138029 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=pJoDNl42m32kJ7anCML+mQ==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=7CQSdrXTAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=fCzo0u0MxDWb4Q9EyFsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=a-qgeE7W1pNrGK8U0ZQC:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDE0OSBTYWx0ZWRfX3QlaWUxeolZx
 kDUjcq+MlVLi9aFDZ2c73TBlhQ22pVIU+NH+zfD1gRsElyF/GgMEvdlmLCyZ2dJpvcf6vgFP8rc
 kxcX3IhPSP8n4FM/4b4SCPIuvug5GejhIMamkU+gdmsxgdXgCSvZVRkTHwKYfImTAb+TSr2wthC
 1SQjesv1mbjt8MTyzeuGZ+mlW0yqT+/+gAJLXLjnt+NTfLBZs+TsnUHe2kI+DKQKYe0TYSTAgYt
 Pcwoy5P781khLZz2MAwxVJLi613rDOh6UMPCCTBIPm9EjnFSdRxJBFXBID0acQ/vDopmnwRgB/8
 Sp0CYCjc4lbQXqdTTPjkmlkHgXi4YPktsvPitRbdYkdAAjlPSofgOwjr9Rm0IKJFQTacjY+MAOi
 Mfhc+51po2bFzqPu7QX/AYLCl+OByg==
X-Proofpoint-ORIG-GUID: YPXURwz_wg0yd-E4nw9vqgWGBmqGh6nl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110149



On 11/5/2025 10:58 PM, Robin Murphy wrote:
>> The other motivation for this patchset is the below usecase.
>> USECASE [1]:
>> ------------
>> Video IP, 32bit, have 2 hardware sub blocks(or can be called as
>> functions) called as pixel and nonpixel blocks, that does decode and
>> encode of the video stream. These logical blocks are configured to
>> generate different stream IDs.
>>
>> With the classical approach of representing all sids with iommus= end up
>> in using a single translation context limited to the 4GB. There are
>> video usecases which needs larger IOVA space, like higher concurrent
>> video sessions(eg: 32 session and 192MB per session) where 4GB of IOVA
>> is not sufficient.
>>
>> For this case, each functionality is represented in the firmware(device
>> tree) by the 'rid' field of the iommu-map property and the video driver
>> creates sub platform devices for each of this functionality and call
>> into IOMMU configuration. Each rid(function id) in the dt property
>> indicates the bit that can be associated by the driver passed input id.
>>
>> Example:
>> iommu {
>>     #iommu-cells = 2;
>> };
>>
>> video-codec@foobar {
>>     compatible = "qcom,video";
>>     iommus = <&apps_smmu 0x1234 0xca>;
>>     iommu-map= <0x1 &iommu 0x1940 0x0 0x1>,
>>                 <0x1 &iommu 0x1941 0x0 0x1>,
>>                 <0x2 &iommu 0x1942 0x0 0x1>,
>>                 <0x4 &iommu 0x1943 0x0 0x1>,
>>                 <0x4 &iommu 0x1944 0x0 0x1>;
>> };
>>
>> video-driver:
>> #define PIXEL_FUNC       (1)
>> #define NON_PIXEL_FUNC       (2)
>> #define SECURE_FUNC       (4)
>>
>> case1: All these functionalities requires individual contexts.
>> Create 3 subdevices for each of this function and call
>> of_dma_configure_id(..,id), id = 0x1, 0x2, 0x4.
>>
>> Case2: Secure and non-secure functionalities require individual
>> contexts. Create 2 subdevices and call of_dma_configure_id(..,id), id =
>> 0x3(bitmap of pixel and non-pixel), 0x4 (secure).
>>
>> Credits: to Dmitry for thorough discussions on the RFC patch and major
>> help in getting the consenus on this approach, to Konrad & Bjorn for
>> offline discussions and reviews, to Robin for his inputs on IOMMU front,
>> to Bod, Rob and Krzysztof for all valuable inputs.
>>
>> [1] https://lore.kernel.org/all/20250627-video_cb-
>> v3-0-51e18c0ffbce@quicinc.com/
>> [2] https://lore.kernel.org/all/20250928171718.436440-1-
>> charan.kalla@oss.qualcomm.com/#r
>>
>> Charan Teja Kalla (6):
>>    of: create a wrapper for of_map_id()
>>    of: introduce wrapper function to query the cell count
>>    of: parse #<name>-cells property to get the cell count
>>    of: detect and handle legacy iommu-map parsing
>>    of: add infra to parse iommu-map per IOMMU cell count
>>    of: use correct iommu-map parsing logic from of_iommu layer
>>
>>   drivers/iommu/of_iommu.c |  59 +++++++--
>>   drivers/of/base.c        | 269 +++++++++++++++++++++++++++++++++++----
>>   include/linux/of.h       |  19 +++
>>   3 files changed, 314 insertions(+), 33 deletions(-)
> 
> Hmm, I did actually have a quick go at this the other week too, and
> while I though it was a bit clunky, it was still significantly simpler
> than this seems to be...
> 
> FWIW: https://gitlab.arm.com/linux-arm/linux-rm/-/commits/iommu-map - I

Thanks a lot Robin for taking a look and sorry for the delayed reply as
I was on vacation.

stripped code_snippet from your patch:
	offset = 0;
	out_base = map + offset + 2;
	id_off = masked_id - id_base;
	if (masked_id < id_base || id_off >= id_len)
		continue;
	for (int i = 0; id_out && i < cells; i++)
		id_out[i] = id_off + be32_to_cpu(out_base[i]);


seems way cleaner than mine...

Actually, we also have a case of a device emitting 2 distinct
identifiers, eg: a device is emitting 0x1940, 0x1944 and 0x1A20 sids and
attached to a single context bank. If I use mask to cover all these sids
in a single iommu-map entry, it does overlap with other device SID.

I don't think that patch you shared can be used to cover the above, or
it is?

Hence I resorted to the approach where RID used as the bitmap of indices
to cover such cases for platform devices, which it seems you clearly
didn't like....otherwise, any otherway we can handle such cases?


> can give it some polish and testing to post properly if you like.
Sure, I am fine with it ...
or If you are busy please let me know so that i can take it forward as
_you are the only author of the patch._
[1]
https://gitlab.arm.com/linux-arm/linux-rm/-/commit/3e1bd87ce1a7b6f567ab17a0931e4294d8982ed2






