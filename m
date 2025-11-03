Return-Path: <devicetree+bounces-234384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D49AC2BF35
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 14:06:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7C084188A9CE
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 13:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 756DE30F94D;
	Mon,  3 Nov 2025 13:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jsJUpml1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QgSmptG3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E4B23A99E
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 13:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762175140; cv=none; b=P2ybvaEF5GpYXUq+J6ZMCmguNVvJqfJwpHlGGICWWG5m2wbTf8QDnQWW+e6YBxXjxCl61U/7wx9a7iJ7HVLe9OnHJgg4Y628bDXCdqrkvAKZGx03Iz3nP2Y45jrWHA2Chj5nAQ6VUZ3H5EPvxt1NXszcg2zkVsx3UIXeDsxr9ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762175140; c=relaxed/simple;
	bh=yHCkviYB7M5xI4hGCFFCPDT9TfosWOcdZS/ol351SPU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XEXx12u8b4vfRqTO5urzr5ig25+RNEOAnYyoHfDpR/RO8MZj5zN6Q2yeOhpQGtzBkbIp6f0brXrBKi2phLGhY+4zzlVn5brzpKZ5t9XAWNjfHy/MMLA6JxCGjoIFvdGvXvipAIM4NWbqbWjicmqwev8FFH6G9v7LLtYZhyjx0S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jsJUpml1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QgSmptG3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3D5DZe2267853
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 13:05:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GeXclhcYrkoMtS5yu7RA7XBghe72qg0x45eGAc3ksmM=; b=jsJUpml1jtH4azie
	Z1Lo8kXi+F8tazgddFUeS61mFy3TqIyFQdaZe8g6Xig0TKR2l9dgbPbTliY3j952
	DOcFeSAZ+dW5gZwigeN1RIqPMWxzc9DoyBhBbFQ415LzEFp49UyaXqxAYMP0a+p+
	ftBoAyzq/kMbZR6yh67vp+9F0E4lFb/gXX/IkS9HlUgLw2HU4UmfugVvKdeZI+mG
	Rn/1dBlIcYDpiNpjwdjhxPN4k3TDqJ9WkegaoKwFm19q3WypD3aMkvGZ+3m14VME
	b0chFpUrccU6bOm2o2OH2L6Cv4zFxGem5hBG2r0aR49Ky3SLxoTZgD4uWoE6hoYn
	KdT+8g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6pwah62t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 13:05:33 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-826b30ed087so15220626d6.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 05:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762175132; x=1762779932; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GeXclhcYrkoMtS5yu7RA7XBghe72qg0x45eGAc3ksmM=;
        b=QgSmptG3qjqzIyYIhw3MA/C6ijsIz/WVO8TeQ65tuhMbGdEuE6TUVDg6HckgEGI7Oo
         vmHKT0tjnltRe+QdStrdD8b3q+881SjVGqe6MdCubJptTGOSgrUfglUsXZNsCAPYEckn
         Q+SgidXLIxgHCsaqvSFoT4qIYnmJN6Uw8jWL/kn0RXesaBpkjCYFSA4anP2mHvko5APz
         m0dImIyx7FSYKmpS5Wb8Zyf6nH7PdkO9WqqzDiMd+ivZNtg2YANKystB2ard/08FhhL/
         MlHO5IhogfVyIM65MI9jO4Vnf36BCJ0GlhmMbfREnbEOEfBGzi+lkUrHlaEscazpy9+p
         23EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762175132; x=1762779932;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GeXclhcYrkoMtS5yu7RA7XBghe72qg0x45eGAc3ksmM=;
        b=P3IsdLw5qHxhh37X/6J5GXnWXJW6i6AyG54NRwx3GGNINPyfW0/hreaOllMDUJm6Uh
         581Ve3GmM4Txd71h8OJ1Y7zjvbQhqFtgOoFC6NeQQDeBlWAQetpylvZNEo51GqF8D5QM
         eg4/dJK880ijTVmVZiiFd+/9vIKro+uk7nJCiiQ98HacDQsGuROYfpwkFN2DFjTRELsr
         KvYCBJz6S14xm+E1nH8ZfGMxkzVyqjVARI144vC0bXWRzANBM4G3raCbo7rNDyhTiO7K
         fn0V9BpSTw+TyXGW0qUi/FQc2KB/yEPEvx4CmaxGcr8EqQdHyyi3o2X9ABzweu5tMalk
         OS7Q==
X-Forwarded-Encrypted: i=1; AJvYcCW293dMPf+4rXgPbKrpPKeHYq5jYd0XzhSA6LfBKrcvRWhdptYfpMFS8xVpron31MLkPucm3h28aO0C@vger.kernel.org
X-Gm-Message-State: AOJu0YywjU7cT0Je9PhWugMk2U+/gb0WWVT/Jj8TLQcc6wAQII2U+rAR
	Gx9GTQiyref5+CE0EDUzAk2ijl5jNvA/nAlDp6jN/X/sDmw1PshMMlxWdOm9DfLTnGDt2Ysgg2e
	/S7LAOkAZl6Ja5GHNyPxgamNrJvzAHFHfGo4cpmDalJdnzFpR+hlgVfG3pR0T5e2j
X-Gm-Gg: ASbGncsWPhOzTE60dN8yfpHB9pEwIAP8lXjNPFpOYUVX0KA0n/Z5Z7mTNHJpkyM7RXW
	MYKRYcP1KE7yaIkChT+LaIMpuqZV4A38wFiZpUTxXv423B9o5y6+JWkA1mTuhzi19VeNoMWwcYT
	qAwM5uQ5v4dKMkL2fhjSxk6YsE5qPRvj+s1jNwszcuetupUyS3GM9oBJltzkB5Ey5VOZ99bMGRz
	Wq+BRlukKl8LRjdlKxuWh/qMrzQC1/Ps6mh4LqwG9VUE7TMHpEO1JHu+CP+kW75qJrbVO8Z6jTL
	FVAzUfmY3/UIpqC6jUigBlCs/+RZI10ULJttAZVXOv09WJixintpYUD194C92xsp46VLGFnVW0W
	+/peN+JxYIC68/fxj0GGU+VWhL/72LVG0lC1f6tX7iLSFC1PFJwPA1Gka
X-Received: by 2002:ac8:6997:0:b0:4ed:4369:f3c5 with SMTP id d75a77b69052e-4ed436a0077mr52918691cf.12.1762175132320;
        Mon, 03 Nov 2025 05:05:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHdZpqjlsH4evhdYWg1SpJwV80jysQWoUG6T2/da6gxZov34vLvmoCKJT9nSGjcekLTkdVJEg==
X-Received: by 2002:ac8:6997:0:b0:4ed:4369:f3c5 with SMTP id d75a77b69052e-4ed436a0077mr52918001cf.12.1762175131517;
        Mon, 03 Nov 2025 05:05:31 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6407b34a7c8sm9460589a12.5.2025.11.03.05.05.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 05:05:30 -0800 (PST)
Message-ID: <542654a4-c7c9-4af5-9361-084fb88af862@oss.qualcomm.com>
Date: Mon, 3 Nov 2025 14:05:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] spmi: spmi-pmic-arb: add support for PMIC arbiter
 v8
To: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        David Collins <david.collins@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com, jingyi.wang@oss.qualcomm.com
References: <20251024-pmic_arb_v8-v3-0-cad8d6a2cbc0@oss.qualcomm.com>
 <20251024-pmic_arb_v8-v3-3-cad8d6a2cbc0@oss.qualcomm.com>
 <35ae8415-9308-4cbc-b14e-c3cdc0a2318a@oss.qualcomm.com>
 <28e2020c-8622-4bc3-aa5f-516a7d2abdb1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <28e2020c-8622-4bc3-aa5f-516a7d2abdb1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OrdCCi/t c=1 sm=1 tr=0 ts=6908a89d cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=bSyc8OR0nW6-KXhRdkcA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: nHgkAz4hEt1x-hQgnIDVw6L3NzNao7wq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDExOCBTYWx0ZWRfX+znlU5MaVwsG
 mcTsmZguDiOOLOtd3tZso4YViXi0UGPGbjE019yrBsuXWhd99kAHAu0Ymd8J/zed1tlhdrCbw+i
 ahY6eXwgdso49913jWNqdRhXCbop8c112gMU0mkS/DEDPdDWemSOeRDW71Ntd7gTbAXf295OIHH
 azXHO004nf0W43Q68qfOQKjge3K/0cWgQ3RwcgV7JISpXLy7DZGUg57m20RRGj2Yw6X9B7SOZe3
 MVzZTuGVeIkM4LMAqJ+xfLB1FPpanM26REFLVvvaGZW811RjRhwJLGuYczgDWdOu9pAczNVcPtm
 N7Glf7fYHFzRamrcSol8uC0WLTPjm/FdNGQl+fcjavChIN6XHYqMAJxGv4g/GCF9BDvhu4HcW6V
 cocgAYtFKz8vo2xSev4c9rZFRVofzA==
X-Proofpoint-GUID: nHgkAz4hEt1x-hQgnIDVw6L3NzNao7wq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_02,2025-11-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 suspectscore=0 bulkscore=0 impostorscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511030118

On 11/1/25 3:22 AM, Jishnu Prakash wrote:
> Hi Konrad,
> 
> On 10/27/2025 5:47 PM, Konrad Dybcio wrote:
>> On 10/24/25 11:33 AM, Jishnu Prakash wrote:
>>> From: David Collins <david.collins@oss.qualcomm.com>
>>>
>>> PMIC arbiter v8 supports up to 4 SPMI buses and up to 8192 PMIC
>>> peripherals.  Its register map differs from v7 as several fields
>>> increased in size. Add support for PMIC arbiter version 8.
>>>
>>> Signed-off-by: David Collins <david.collins@oss.qualcomm.com>
>>> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>>> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
>>> ---

[...]

>>> +static int pmic_arb_get_bus_resources_v8(struct platform_device *pdev,
>>> +					 struct device_node *node,
>>> +					 struct spmi_pmic_arb_bus *bus)
>>> +{
>>> +	int index;
>>> +
>>> +	index = of_property_match_string(node, "reg-names", "chnl_owner");
>>> +	if (index < 0) {
>>> +		dev_err(&pdev->dev, "chnl_owner reg region missing\n");
>>> +		return -EINVAL;
>>> +	}
>>> +
>>> +	bus->apid_owner = devm_of_iomap(&pdev->dev, node, index, NULL);
>>> +
>>> +	return PTR_ERR_OR_ZERO(bus->apid_owner);
>>
>> Is this any different chan using devm_platform_ioremap_resource_byname()
>> like you did above?
> 
> devm_platform_ioremap_resource_byname() would work for mapping resources
> directly under the main device node, like"chnl_map" , but in this case, the
> resource "chnl_owner" is under a child node of the the main node, so we
> need to use devm_of_iomap() here.

Oh, you're right

[...]

>>> +	apidd = &bus->apid_data[bus->base_apid];
>>> +	apid_max = bus->base_apid + bus->apid_count;
>>> +	for (i = bus->base_apid; i < apid_max; i++, apidd++) {
>>> +		offset = pmic_arb->ver_ops->apid_map_offset(i);
>>> +		regval = readl_relaxed(pmic_arb->apid_map + offset);
>>> +		if (!regval)
>>> +			continue;
>>> +		ppid = regval & PMIC_ARB_V8_PPID_MASK;
>>> +		is_irq_ee = PMIC_ARB_V8_CHAN_IS_IRQ_OWNER(regval);
>>
>> [...]
>>
>>
>> If you parametrize the masks, the diff against pmic_arb_read_apid_map_v5
>> is 3 lines of code instead
> 
> Are you suggesting we should try to have a common helper function for v5/v7
> and v8, which does the bulk of these actions and can be given different
> input arguments to distinguish the versions?
> 
> There is at least one more difference which I don't think we can easily
> accommodate with parameters:
> 
> In pmic_arb_read_apid_map_v5(), we have:
> regval = readl_relaxed(pmic_arb->core + offset);
> 
> In pmic_arb_read_apid_map_v8(), we have:
> regval = readl_relaxed(pmic_arb->apid_map + offset);

You can make the function accept this region base as a parameter, rename
it to something like _pmic_arb_ppid_to_apid_v5()..

> But in any case, we would have to add `if` checks to distinguish arbiter
> versions to use a helper function. This itself might not be a good idea as it
> would break the abstraction already implemented in the probe, by having
> PMIC version checking happen only in the probe, to select the correct set
> of ver_ops functions for a particular version.

..and then create a much thinner pmic_arb_ppid_to_apid_v5/v8() wrappers
that will call _pmic_arb_ppid_to_apid_v5()

>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static int pmic_arb_init_apid_v8(struct spmi_pmic_arb_bus *bus, int index)
>>> +{
>>> +	struct spmi_pmic_arb *pmic_arb = bus->pmic_arb;
>>> +	int ret, i;
>>> +
>>> +	if (index < 0 || index >= PMIC_ARB_MAX_BUSES_V8) {
>>> +		dev_err(&bus->spmic->dev, "Unsupported bus index %d detected\n",
>>> +			index);
>>> +		return -EINVAL;
>>> +	}
>>> +
>>> +	bus->base_apid = 0;
>>> +	bus->apid_count = 0;
>>> +	for (i = 0; i <= index; i++) {
>>> +		bus->base_apid += bus->apid_count;
>>> +		bus->apid_count = readl_relaxed(pmic_arb->core + PMIC_ARB_FEATURES + i * 4) &
>>> +						PMIC_ARB_FEATURES_V8_PERIPH_MASK;
>>
>> You can almost replace pmic_arb_init_apid_v7 with this impl
> 
> They are not exactly the same - v7 arbiter supports at most 2 buses,
> so pmic_arb_init_apid_v7 needs to restrict the max value of index to 2.
> 
> Here too, using a common helper function would require us to add more
> `if` checks for the version, which leads to the same kind of issue as above.

Add pmic_arb_ver_ops.max_buses, set it to 1/2/1234 as needed. I really
don't want you to add a copy of an existing function with a single
comparison argument changed

>> [...]
>>
>>> +static void __iomem *
>>> +pmic_arb_apid_owner_v8(struct spmi_pmic_arb_bus *bus, u16 n)
>>> +{
>>> +	return bus->apid_owner + 0x4 * (n - bus->base_apid);
>>> +}
>>
>> This is identical to pmic_arb_apid_owner_v7
> 
> This is not exactly right, pmic_arb_apid_owner_v7 uses bus->cnfg
> and pmic_arb_apid_owner_v8 uses bus->apid_owner at the same place.
> They are both already single line functions, would it really help
> to try to simplify them further?

Sorry, I misread and thought they were *actually the same*, scratch
that

Konrad

