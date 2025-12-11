Return-Path: <devicetree+bounces-245738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDEFCB4C5F
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 06:33:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0AEF8300EA36
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 05:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BFB020F08D;
	Thu, 11 Dec 2025 05:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jPxM/3bd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QQwFRWZt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 743391A238F
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765431131; cv=none; b=SVa8/1fUDoHjevxEw3tlGOQle0vGU3tFzedE9iSd8ZgtKg465iCdlAw1cxzLskAJrsYhKxImdddlWpILKZXdIJWQnDbISNmmXwEtxv/BZS8XKAt3N//t7gkkp2001CEkr+QFHlf1zdZKGszRN6Qbbn8sD4hyImaEAAc9c60bhyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765431131; c=relaxed/simple;
	bh=P+lHOHWXjvAOs321BtvZyVk0mTqu/Qmb51KszHoj3Lw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lStYnHisld3KOTTomoWpMOBF889AfMYzjrIOZkpwkxpMRPTp7ZRAZLL0LH11/0bofG/lxGr9OEHd7VdmXWdpfxl98FCvB23+ZtgWl4/6Z5OQjng8OOm6lY+7GrK6N1y4HqM8iXfyw6YyAWIAsVN4UGsaxJ1WNTNKP+R/1uUHFDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jPxM/3bd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QQwFRWZt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BALP9sI3544375
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:32:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YQrszTRLCgjaFeDWRhRpgkpyhibPZUre0zeW0/meuFw=; b=jPxM/3bdQA88tER8
	VKE/rDf13NfB/5bUalKmwCOmU6RGlmS48qBAgmThxXyutp/QzOcnSUPgEMbLvp3k
	+3uzsNs24joaQRFK54shU1sVbu2P2VGJJAOmWN/xQZOQdD2+jVl2jQmC9JK8yXa0
	zTM+NxdnASq0Isn2ZJ1NIo0LgVGWNCRH+jKjndP4bqeYVr9PhjJ8m3He0nmAlYq7
	Z2NpflvzAnlCUbbnDxJbJRX8IXOx2o7zp9iZbBWs3eXq/lvJsUcu5nZZOYc98/SR
	iT6MUvpJWa8OLOCgtlDE27nV0UjgdtwqurXX6cmRZLyRfnrXgdD3sF4xxVILNcvP
	Qemg4w==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay1xp4904-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:32:06 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7bb2303fe94so687700b3a.3
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 21:32:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765431126; x=1766035926; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YQrszTRLCgjaFeDWRhRpgkpyhibPZUre0zeW0/meuFw=;
        b=QQwFRWZtGtFnJBRdEdRQnr/I6wixe29KxD9Q4oF/FigfJrMDA3/0SHfIV7edBAJLWb
         qBxHtAHz/inE9OKK+Ze6ZYqIQMyDGR2NvuqdbnSIt1hkM9hsGz7z8VkwzP9SyxktYeLS
         mrrzAzbvJREsTqfg8Sj7vcs0bCDxVP46k3U+Xba1i/H1A7MosKs8CcHhcWhoGoyMhGGF
         8/qQ5w3i/tEOEwJ9IzQDrtN50vpgJ1/SbhuO42VMB4qCPDKenzu+1SKlNfjmdiNLdIUG
         DDAK93KfMr7U/exQnFEz8b6NlS37s2PekDiWU83oy3FvAJF8CCIrCWkhKPPnmFc0wwMs
         hoxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765431126; x=1766035926;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YQrszTRLCgjaFeDWRhRpgkpyhibPZUre0zeW0/meuFw=;
        b=cz3xMxXIDik7h/HPexSu9jGQBzHqDDehVI0trwHgDMEP0pHWZqiK8TN2C/y/I0brnq
         3PsfvKRbnA3tay0/4Km5v/8t80Ex3jIsbjH4oN7JmjXKFi3IIg7HgA5kvsb8zGJcd3ec
         oPBttOof2+30UmYyyRx6793agzcuafcS6Yh+qCp+AobzCWmQHU9GU9qusT2C5gMDpNDa
         DjSfpnYkX17V0lS+UwLuPvVbF3wncV0yzf3aF+KJNTqeZDhkWBiCFcpFNU6xONBNuixY
         xYfd/ZLvppLvf+Fzcu5aEWPRmV/3nf7N6+gPOD9N5Pq52UVV7UB9d5n76NycGhgai9fL
         Hg5w==
X-Forwarded-Encrypted: i=1; AJvYcCX5SW3QVgqlvRg6FU/tBxhxkrqaWXl8DNsB0KB+p3DqvtUpiHGmeWbpgOoCMmin1DbDLieE2H9aFUL8@vger.kernel.org
X-Gm-Message-State: AOJu0Yyul6n1RIzKHYV6wRaub2r5QA6AeUnd1E1Iff8SHnW7YZTZPIDG
	4143sMjJZOEh8WleUrsO3FXf9BNuA2ZVwJEJglgTh1WJMgtDvP5w2r1BCma3+3yqgZLImfrfl4h
	p6M3crgyBy7Zp2+0YlggSkp1QEBy7ktqOQH0Yh2JiZ1tJAVAFV6HwBSTh2CiMr5KA
X-Gm-Gg: AY/fxX5gS8pV0mx3ESXMfOJzRo0y144YIWD7e5/HOGBs4OpV/6b6SN8yoRil9wdrpc3
	rRfmzRt8x9tE7SjCW5f8eWFeCKLo7Wop8Uh6AtrCgOvGaKM09QlGo/VDCLWD4q5G3ML3Ag8uxzN
	9euIyle4NR41jZww+SpbI75zHGcmVakSbd/mQ/HVQLQ+3kA2emgniIneA3pszek0CLRl2+TrhPn
	pIZfGaTR6amL5PGMPpv2OCwm5RbK11TYf0n35WwkH0aFmg1+dH5zFsoo6typYsKyyppm/nvNS2y
	KIJa68sBvtLsxWbHrpPQGngH6hDubWUDScb4FuqtiaaFoUA5eUxI+1ZFPu4u49XTkVc1O6PaZK6
	LvwqrpE9D06PUD8fYv29RSRzaV0mWjqwkiLsC/Av8mCCb
X-Received: by 2002:a05:6a00:1702:b0:7e8:4471:8da with SMTP id d2e1a72fcca58-7f22ee59c42mr5058022b3a.59.1765431126272;
        Wed, 10 Dec 2025 21:32:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGdlBAenEG9k4WZXMjAKhXkXY6Hwmy7kVFGx2Dnk1gO5DRq12xQb7HoT5VYM4jytxe1KwTyBQ==
X-Received: by 2002:a05:6a00:1702:b0:7e8:4471:8da with SMTP id d2e1a72fcca58-7f22ee59c42mr5057991b3a.59.1765431125725;
        Wed, 10 Dec 2025 21:32:05 -0800 (PST)
Received: from [10.219.57.109] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7f4c22848a7sm1192386b3a.3.2025.12.10.21.32.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Dec 2025 21:32:05 -0800 (PST)
Message-ID: <c8fa7f92-db1d-47f9-b771-3c787a0988d3@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 11:01:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] of: Respect #{iommu,msi}-cells in maps
To: Rob Herring <robh@kernel.org>
Cc: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, charan.kalla@oss.qualcomm.com,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com,
        iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251204095530.8627-1-vijayanand.jitta@oss.qualcomm.com>
 <20251204095530.8627-4-vijayanand.jitta@oss.qualcomm.com>
 <20251209201725.GB1015230-robh@kernel.org>
 <a0a5cf96-70fe-4005-a100-58ae0b72b4cd@oss.qualcomm.com>
 <20251210210414.GA3329469-robh@kernel.org>
Content-Language: en-US
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
In-Reply-To: <20251210210414.GA3329469-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDAzNyBTYWx0ZWRfX4fVX7LsK2Jx+
 WAp5uNYLLVMxqnjFpneXPImTrcN3F5wCv+xilGp+KKSgLYJ4voLXHEmI1Uehajw1DJg+CjNsg6j
 KUSqZbOfGGSUCCFXjTai79aOcRP/CiI5XjnhZGhaUWqzP3QbeXJiZwFXwA1L2NX2F4nTNtmQv+b
 oplx9ErBLoSPFHSlRkXnkF6q7Aor3er5YnKXdV3KonjfVSB2wwCkcAUlFxjA/kH5XsoF3DNd43X
 xR9ZQtQY4D/ON041hIfDsmL9NmL3CCY4KIeTtlAinE0hc68FJMMR1ZMp2/IzqskkEk/a2PU5UM5
 D5/y/FJcfrIJshI2UpSE1stlToLkPwaeZcLYoVr9OlEVnJtzeoq50GGoxo5pDoWFuJ5vrF6BpLH
 m1vf6Ie6GUZMMISPouRNp9KD/C09qw==
X-Proofpoint-ORIG-GUID: 4UtvAsIGVsFtAgEmwtFXDeKC3_6aJdJQ
X-Proofpoint-GUID: 4UtvAsIGVsFtAgEmwtFXDeKC3_6aJdJQ
X-Authority-Analysis: v=2.4 cv=A/Zh/qWG c=1 sm=1 tr=0 ts=693a5757 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=7CQSdrXTAAAA:8 a=EUspDBNiAAAA:8
 a=g5k_W2lUybaQNBh0X1UA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0 malwarescore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110037



On 12/11/2025 2:34 AM, Rob Herring wrote:
> On Wed, Dec 10, 2025 at 03:57:56PM +0530, Vijayanand Jitta wrote:
>> On 12/10/2025 1:47 AM, Rob Herring wrote:
>>> On Thu, Dec 04, 2025 at 03:25:30PM +0530, Vijayanand Jitta wrote:
>>>> From: Robin Murphy <robin.murphy@arm.com>
>>>>
>>>> So far our parsing of {iommu,msi}-map properites has always blindly
>>>> asusmed that the output specifiers will always have exactly 1 cell.
>>>> This typically does happen to be the case, but is not actually enforced
>>>> (and the PCI msi-map binding even explicitly states support for 0 or 1
>>>> cells) - as a result we've now ended up with dodgy DTs out in the field
>>>> which depend on this behaviour to map a 1-cell specifier for a 2-cell
>>>> provider, despite that being bogus per the bindings themselves.
>>>>
>>>> Since there is some potential use in being able to map at least single
>>>> input IDs to multi-cell output specifiers (and properly support 0-cell
>>>> outputs as well), add support for properly parsing and using the target
>>>> nodes' #cells values, albeit with the unfortunate complication of still
>>>> having to work around expectations of the old behaviour too.
>>>>
>>>> Since there are multi-cell output specifiers, the callers of of_map_id()
>>>> may need to get the exact cell output value for further processing.
>>>> Added support for that part --charan
>>>>
>>>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>>>> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
>>>> ---
>>>>  drivers/iommu/of_iommu.c |   3 +-
>>>>  drivers/of/base.c        | 107 ++++++++++++++++++++++++++++++---------
>>>>  include/linux/of.h       |  17 ++++---
>>>>  3 files changed, 94 insertions(+), 33 deletions(-)
>>>>
>>>> diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
>>>> index eac62bc441c5..48759cf1d900 100644
>>>> --- a/drivers/iommu/of_iommu.c
>>>> +++ b/drivers/iommu/of_iommu.c
>>>> @@ -45,10 +45,11 @@ static int of_iommu_configure_dev_id(struct device_node *master_np,
>>>>  				     struct device *dev,
>>>>  				     const u32 *id)
>>>>  {
>>>> -	struct of_phandle_args iommu_spec = { .args_count = 1 };
>>>> +	struct of_phandle_args iommu_spec = {};
>>>>  	struct of_map_id_arg arg = {
>>>>  		.target = &iommu_spec.np,
>>>>  		.id_out = iommu_spec.args,
>>>> +		.map_cells = &iommu_spec.args_count,
>>>>  	};
>>>>  	int err;
>>>>  
>>>> diff --git a/drivers/of/base.c b/drivers/of/base.c
>>>> index b8f78a9e6a09..68a7d6ddba66 100644
>>>> --- a/drivers/of/base.c
>>>> +++ b/drivers/of/base.c
>>>> @@ -2045,11 +2045,30 @@ int of_find_last_cache_level(unsigned int cpu)
>>>>  	return cache_level;
>>>>  }
>>>>  
>>>> +/*
>>>> + * Some DTs have an iommu-map targeting a 2-cell IOMMU node while
>>>> + * specifying only 1 cell. Fortunately they all consist of length == 1
>>>> + * entries with the same target, so check for that pattern.
>>>
>>> Can you show what a bad entry looks like here.
>>>
>>
>> Sure, will add an example in the comments. Basically it would look like below.
>>
>> for iommu with iommu-cells  = <2>;
>>
>> Device having below iommu-map property.
>>
>> iommu-map = <0x0000  &smmu  0x0000  0x1>,
>>             <0x0100  &smmu  0x0100  0x1>;
>>
>>>> + */
>>>> +static bool of_check_bad_map(const __be32 *map, int len)
>>>> +{
>>>> +	__be32 phandle = map[1];
>>>> +
>>>> +	if (len % 4)
>>>> +		return false;
>>>> +	for (int i = 0; i < len; i += 4) {
>>>> +		if (map[i + 1] != phandle || map[i + 3] != cpu_to_be32(1))
>>>
>>> Why does the IOMMU arg cell have to be 1? The description said 'same 
>>> target', but it is just all have an IOMMU cell value of 1?
>>>
>>
>> Here, the check is for length argument to be 1. This is to maintain backward
>> compatibility as mentioned above, as all such bad entries right now have
>> length as 1.
> 
> You say length and I think arg/cell length, not that the cell value 
> contains a length. That's because generally cell args are provider 
> defined and specific. So just say the 2nd cell has a value of 1 and 
> leave out that's a length.
> 
> [...]
> 

Understood, will update the comment as suggested.

>>>> @@ -1455,7 +1456,7 @@ static inline int of_map_msi_id(const struct device_node *np, u32 id,
>>>>  		.id_out = id_out,
>>>>  	};
>>>>  
>>>> -	return of_map_id(np, id, "msi-map", "msi-map-mask", &arg);
>>>> +	return of_map_id(np, id, "msi-map", "#msi-cells", "msi-map-mask", &arg);
>>>
>>> There are cases of no #msi-cells and we default to 0 cells in that case. 
>>> Do you maintain that?
>>>
>>> Rob
>>
>> Thanks for pointing this, I see this case of no #msi-cells is not covered. Will
>> add it in next revision.  Also, IIUC shouldn't we set default cells to '1' to
>> maintain backward compatibility of of_map_id in this case ? No ?
> 
> The only default is 0. Perhaps msi-map is never used if there are 0 
> cells? IDK, you tell me.
> 
> Rob

You are right, I’ve grepped through the upstream DTs that use msi-map
(Rockchip, TI K3, HiSilicon, QCom, NXP/Freescale, etc.), and I don’t
see any cases where provider uses msi-map while having #msi-cells = <0>
or omitting #msi-cells entirely.

All of the common MSI providers referenced by msi-map (GIC ITS, v2m,
etc.) define #msi-cells to 1.

So, I think the current patch should be fine as‑is, as there are no
upstream users of msi-map relying on a 0‑cell or missing #msi-cells
provider.

Thanks,
Vijay

