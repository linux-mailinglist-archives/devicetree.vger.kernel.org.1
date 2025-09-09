Return-Path: <devicetree+bounces-214778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D16B4A587
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 10:39:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 794E2162EA3
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 08:39:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A30C25228B;
	Tue,  9 Sep 2025 08:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fUVli2wr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678C42472B1
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 08:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757407152; cv=none; b=UHoVMhE+HgxzW/AhQrxNaVHVrFbAUTr4k6zCQqlKwRZsRCIPgm7lDoXi6y51qylHmbvjLD0p8xn/cqi+6+u6mUvx23plZyXKHefKni0xE6y+9IKSvbdtR9LXBbBZzNRly9QT4ZYirfjhWJIxkUnWw3BH6EfMV+njo7y0EWU7lYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757407152; c=relaxed/simple;
	bh=9x89MYAZJz0x+vKABEiiN6j8efnz+wNuTOK2EljyTs8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WQuPkIDH31sKnp5wYItR5k4pQMlu/VtlNdyqYBckNzwVy9z7Dx2gN9pzXSNXatAlO7pVyEf8dgwP1CClQm4ZzjJSHfgw42tgKk7rURmD+VkZcsIzupBz8aUC/XZ7fhQfhJMM+6d2p68fSwJAlBah4opSEzGixsUdoR+1dIx70GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fUVli2wr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5896SZhK023940
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 08:39:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VsL4naCSuZYadG1mnMalW2GA4pHt+PHpJI7P94ns/zE=; b=fUVli2wr20waZAWs
	+qfrr/MmV99cqUjx+DG4BK4pmP78Au0HO3E/J9wcXnfRS65pKEUuNMjb3F3bJdfM
	U8I3aIbv9a8ymXUXbt+jlPF1MWZPpi7RMtIx0v1hrH3HtguyhlIo8+TiZKxTgBNe
	9wjk/J/ouJQgw/UMAILAcqc8uFyp6Fp6PgGalCGZJLKQjEABP8BNt6bFWKSN8fJA
	288sWQgLJP1lcJCsOTp3QLuOt46L+N31rg1P+UeB0FJDEvYBpflkwRMh5OE+DisT
	uCwFKsk87jWdgrV1hylzeL4CwUneIjMA/9uICYdbTK+pu/HA1aoSBzj9x3YTl0I1
	G1r0DA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bws7nfu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 08:39:10 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-71f2e7244c7so7106236d6.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 01:39:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757407149; x=1758011949;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VsL4naCSuZYadG1mnMalW2GA4pHt+PHpJI7P94ns/zE=;
        b=F9sGQVE14wfwKsTRKTCOK3oeVf6k7TRCO4eWpVZKM0nhmtXtA68KYe/geYqOMpjLmB
         Ceba6Yax/1nAXsF/Z59HUg/xWvXAGT3JcwjuzGA1r5fCylOzLE1/xvFnsM32y+ifwPfo
         GevUKErc81Xy0+XNTuERKpsVA/5PEm4oRS5O/emTKyf56F+Qa+cpE0fWEn4e8/xKj2mi
         OZKMiZRUSVKPrZD4E52MhbqfpD0Y/VDfvei+Oyn7t62SfVIlCplUhlqwrERTpqcPBdZx
         QJh/8xfr21D7wLN+M6JdEe2j1qFfXkSMvrIpIzSqi0sKR9VwzB4DRQTYPL3YROuRy0FV
         xJag==
X-Forwarded-Encrypted: i=1; AJvYcCV8Chs1XV6+k8Rm2rwfkyI/YYqsiJICvVaBwzK06nwuZVKEH01dKvCTpjnyoWhRJDab7wSgpJfhn7CL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3I1HfDKrRNz4rN+/NGgRJNFap+6tFGiJGJ/Lo73AoaNB/aI7k
	TvCM946+aSlFzkr3J9bIMXoqM46Cs8of4QXxCCldVTqh4Yle6Geilmii1zZ7oDSGiFFzuCwrfYH
	pjzIVF1jF29ezvkfmlJ0Grt8hExUVYEhOUBDuAhJObM4i4Iuds83LUAUpwMGRwOkp
X-Gm-Gg: ASbGncszPPC8bq9cbAkfwWhSKb/k1UJtlTYdwEDcDN5yHjr3aQRklnKMb1ZG9/OvR3t
	Ce+1Llb9Sl4yL2eU178HTfVZ2/EZHiZPdlySwnUB9n3fdNVID/NS7w32ha0nBxf8LKEjT4NeZBh
	TGkkpbhlfld+qM6PQ/FtsQQiM095m0BmVaeybsuwxxekBYm1h73eRc8QseSfo2yq0BIpHUpqv5h
	0UULD9Mee/DwaSKJPVEsDA24KRa1a7rT2wdGphouh08oe/47WeVhKyqPAGwqaug5rkk0tUGCPvG
	eGu+xCVy8I2Zw8ZeLw/49C+0z4MPPt2ghdJKUfruOXpFVkI5mum1toblXmcjQI/voQ7nSBYlJ7z
	njMJ+2f4n1C5cu+hPRKbpOA==
X-Received: by 2002:a05:6214:628:b0:736:261c:d636 with SMTP id 6a1803df08f44-738fc406159mr87757906d6.0.1757407149051;
        Tue, 09 Sep 2025 01:39:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYGwk8ZE59MI/Irv05zhk5fDouLJXaxh2LsAl6wlKuzaOHesC4R2VhSrJb0gbbgWFknhr1lg==
X-Received: by 2002:a05:6214:628:b0:736:261c:d636 with SMTP id 6a1803df08f44-738fc406159mr87757736d6.0.1757407148563;
        Tue, 09 Sep 2025 01:39:08 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62bfe9a0198sm866920a12.10.2025.09.09.01.39.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 01:39:08 -0700 (PDT)
Message-ID: <4fed1de1-fe02-4631-866e-80bbfd2ab455@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 10:39:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] i2c: qcom-cci: Add OPP table support and enforce
 FAST_PLUS requirements
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
References: <20250904-topic-cci_updates-v1-0-d38559692703@oss.qualcomm.com>
 <20250904-topic-cci_updates-v1-4-d38559692703@oss.qualcomm.com>
 <aL6Vp-3er71AJPJd@linaro.org>
 <f508bf92-a513-467a-a946-17c41e1d72d1@oss.qualcomm.com>
 <aL6X-RiCyPVbHlYN@linaro.org>
 <5178a6b1-1b5a-40d9-af40-68ee13975509@oss.qualcomm.com>
 <aL6nZdJCKmnWcswB@linaro.org>
 <1899862b-530b-4a75-93fa-c70c90d98016@oss.qualcomm.com>
 <aL6rYq5gmX8CdeE-@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aL6rYq5gmX8CdeE-@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: eCgUnDjd6Xu-LclLeV7vyPmAsPgWpEFp
X-Proofpoint-GUID: eCgUnDjd6Xu-LclLeV7vyPmAsPgWpEFp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfXweUkb7NTPqYB
 9qA3umds3zVf8Q21+6tKM1dwIrQ+zhHyCwkjxE9WM0RmOcpsb7l6tCwOAQCN4rSPCJlBFN15Y3L
 MERmkrfrEGTWeG2DUzMsBwH+jYSfre9bkA2tjzLQxi+08L0R+MlCTiMnPUAHCGA9rxQqX03B/Qm
 g9ikb7c4qQuHbrDivk6ZLE7ssWgv4aM26Hmkc4zIICfgDcpp8RTWDMA+qQiZK9IDSeFg7DEipt/
 W7B/lCWodjeIq11s93SAWd9gUP5S5CV5Ug7P8HsHpAuMJPWrOIcaap/5rT7zC6qttfrTbU+1u06
 lyF3P6ZAxDUL7sNU2/06b2nRMGDWUTssyomSN0gJqFyqtHZy7yVtntpePOon9Str7OTny838jmC
 hqLnpAne
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68bfe7ae cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Q5Xro-IcwC490qZTrIQA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

On 9/8/25 12:09 PM, Stephan Gerhold wrote:
> On Mon, Sep 08, 2025 at 12:00:13PM +0200, Konrad Dybcio wrote:
>> On 9/8/25 11:57 AM, Stephan Gerhold wrote:
>>> On Mon, Sep 08, 2025 at 11:49:52AM +0200, Konrad Dybcio wrote:
>>>> On 9/8/25 10:46 AM, Stephan Gerhold wrote:
>>>>> On Mon, Sep 08, 2025 at 10:43:50AM +0200, Konrad Dybcio wrote:
>>>>>> On 9/8/25 10:36 AM, Stephan Gerhold wrote:
>>>>>>> On Thu, Sep 04, 2025 at 04:31:23PM +0200, Konrad Dybcio wrote:
>>>>>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>>>>>
>>>>>>>> The CCI clock has voltage requirements, which need to be described
>>>>>>>> through an OPP table.
>>>>>>>>
>>>>>>>> The 1 MHz FAST_PLUS mode requires the CCI core clock runs at 37,5 MHz
>>>>>>>> (which is a value common across all SoCs), since it's not possible to
>>>>>>>> reach the required timings with the default 19.2 MHz rate.
>>>>>>>>
>>>>>>>> Address both issues by introducing an OPP table and using it to vote
>>>>>>>> for the faster rate.
>>>>>>>>
>>>>>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>>>>
>>>>>>> Using an OPP table for a single static rate that remains the same over
>>>>>>> the whole lifetime of the driver feels like overkill to me. Couldn't you
>>>>>>> just put the "required-opps" directly into the device node so that it is
>>>>>>> automatically applied when the device goes in/out of runtime suspend?
>>>>>>>
>>>>>>> And since you need to make DT additions anyway, couldn't you just use
>>>>>>> "assigned-clock-rates" to avoid the need for a driver patch entirely? We
>>>>>>> use that for e.g. USB clocks as well.
>>>>>>
>>>>>> This is futureproofing, in case someone invents FastMode++ with a higher
>>>>>> dvfs requirement or for when the driver adds presets for a 19.2 MHz CCI
>>>>>> clock which would (marginally) decrease power consumption
>>>>>>
>>>>>
>>>>> If 19.2 MHz CCI clock is feasible and has lower voltage requirements,
>>>>> then I would expect a separate entry for 19.2 MHz in the OPP table of
>>>>> PATCH 5/5? The DT is unrelated to what functionality you implement in
>>>>> the driver, and that would make the OPP table look less useless. :-)
>>>>
>>>> The frequency plan for 8280 does not recommend any rate != 37.5 MHz
>>>>
>>>> For x1e80100 however, the lovsvs_d1 corner is recommended to be 30
>>>> (yes, thirty) MHz, sourced from CAM_PLL8 for $reasons
>>>>
>>>
>>> The 37.5 MHz rate still exists on X1E I presume, or are you saying we
>>> need more changes to support those odd 30 MHz?
>>
>> Yes, any corner over lowsvs_d1 is 37.5, sourced from cam_pll0
>>
>>> Personally, I'm not fully convinced there is ever going to be a use case
>>> of someone using a "non-standard" frequency. Even if "FastMode++" is
>>> invented most devices will probably want to use it.
>>
>> Not really, there's no reason to make your i2c bus go fastfastfast if
>> the devices on the other end can't cope with it
>>
>>> And the voltage
>>> requirements we're currently talking about here like "low svs" during
>>> camera use cases are kind of negligible compared to others too.
>>
>> Again, this is an I2C controller that seems to be associated with
>> cameras.. No image data has to actually be processed for the
>> communications to take place and you can attach any odd device
>>
> 
> My point is: In the unlikely case that support for faster I2C speeds is
> added in newer SoCs, I think you'd just get a new "standard" base clock
> frequency, add a new cci_data struct with adjusted timings and everyone
> will use that (even for the lower I2C speeds). I doubt anyone will
> bother adjusting and validating this for just one "corner"/voltage level
> less. There are much more effective targets for power optimization than
> the few bytes of I2C communication. :-)

There are OEMs that customize some of the timings (e.g. Sony) and I would
expect SV efforts to at least cover the recommended frequency plan (which
like for x1e sometimes contains >1 frequency)..

That said, I do agree with you it's a rather niche/improbable corner of
the SoC to worry about.. But using required-opps in dt-bindings for
non-trivial hardware (CCI is a little bit more "fun" than the today's
state of the upstream driver makes it seem) simply feels like asking for
trouble (i.e. a ""real need"" for an opp table will probably come around
one day, so I don't think the additional 10 lines of code to support it
are that much of an issue either).

Konrad

