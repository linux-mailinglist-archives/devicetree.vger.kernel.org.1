Return-Path: <devicetree+bounces-181757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4A4AC8C81
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 12:56:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79A114E4756
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 10:56:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD8112248BD;
	Fri, 30 May 2025 10:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kZRVEeIj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9C6221578
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748602612; cv=none; b=pVVZ0xkJrnki/FRn4AYllWSYqBVBP4LuDfJjPfQSVSTwCGNOd1KWK2+W/G8aiNzQmF1lnsbdhgZ0lNWLpXZuVECWvMpO3znbs+YpsLcJMsfkhiO5uxm/dgIf6F6mHVgZaEOg2np2tctyvY7q8tFDdd4nOsgel9w1pTdhDUBJJuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748602612; c=relaxed/simple;
	bh=wXzNltEAfvd2Z9TuqPjRTjSk3qvDN5IHyR2ohzs6boE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lBgvvQ2KzcpfpMNsOeQqOMkUGMyZcWQu76+E9CTDM2xkCF0l74DFFyFLZlLIRgRH9mQEb+zPzvpyedlO1RfVtGO3w93uQA8qewJ6ENmPvX1sTYWRNO39ZJGke5Watdq16ByiRewBO3r4cfsc/vzsf2FSxNyfp6YIJ3F92RyK70A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kZRVEeIj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UAFbUt027500
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:56:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	odW9Gnbh0pAigIu977/CYjbuP4cZbGddXolCkSLXzHI=; b=kZRVEeIjcFr+g/o2
	H7opx7uDuqhRJhyu3p9dKmR3VsPNX2SDDngRwAy4PjXS2Kny+Bbf6LwhzObSjFO7
	bbex/gcsQN7IWlPObXnT64+6u5Hyzxvst3C3zVCOTk36cCys9SuEpec+NW/f8kPH
	kr0jXKFwvI4LN+djLvmlXOuP/C1faSFbBu6iApc2MqPMflDnwerCyhn1oAzD5CHw
	/CkkIdGXRtTJfCxfZq5eJgHXcM+f/z7CvymjPTrXOvHBmd/QZS3JYdH+7JOeiYxC
	QdmULlmPJKse2D1ChjNTmO0NcNAn7xTURhiMSPTymdFklTmJJsp8e05H//IKrP3/
	8bJJ4w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46yarh02xs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:56:49 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5841ae28eso43870285a.1
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 03:56:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748602609; x=1749207409;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=odW9Gnbh0pAigIu977/CYjbuP4cZbGddXolCkSLXzHI=;
        b=R3yo7HL2vr2/yUATb1SFTv+flrwDp74W+XPozdhn5A7GJ3HQugje1jCsmmYZNUqH42
         YHIjvsXNl/QWoow8rNw9dnW8qkYqFEZRA+gWhY71ngWxlcSkkvjo2H2sLiX+WRVA5FCY
         3HyYx1cid9nkR5VovzAorC8mhYUDw7SY/d/yQdpKBLLUySYROEhiZi+/esHIVEDfrrji
         hpIqxRM693108BA72YQulqAKj7+3zm4L4UsmZwaxdtUW7KmqqrWAZt406mJiGPWjVn7n
         HTRdGVC5llNEDx0GWBkE/XwjWBQq6qWI9IXLfkv6RBX/Q9r7JbN3fliDrbXlypVRX/7u
         gi1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWpzX6wXTEksItlmVQhfbUYJuWTH8hYzic6OwOI6zJ4UHT1kkEq/NaMYcyj2NZNH8Lw2k1A1cUomdQX@vger.kernel.org
X-Gm-Message-State: AOJu0YzdW8Q79zaDbT5E2cmd4uuINCv4bA4t9whNiMImF5Pyn5SGf+wV
	Cx+/ZrK4uwOvTHiEJEzzbPu/DFdvA9BWMGaRVsGSCV72QdXyra6q1pmnaBAxRLByoEwenkAfpQi
	rotluMhZfFuBhMa1VOOAjovWglVKuoUr0IufQYG5Uj6zf0KDHhvLfsHfn8HLESnXH
X-Gm-Gg: ASbGncs13sY4bxl24Y2Sgyr/8UXj/LmhWrrlEq/+lnE/reuQV6awq9e6A9kH7kih87x
	6EKGQnI06QidwooeZ9UdyrXRNEaSwjxIE32VkO+RT40EHbRoVQtyoGdCnsSRgTG6ynyANSsfebC
	XLIwmrmExYwxYnXaOSX5nSE3kBeZ+t7IqxfizQbFnajPXsnWtMbW2c+PKKzKUZE+pb4tw0Bi6tY
	hFacBjmV1wcCKAU/IlvL5g5hXNW+fkWVAec24Q8JCZ/nYqw4A/1TiAMQX9MH+2XKlew4mArzOvg
	meHQpv0PmWik8Cy+twScmiwiCc/okIt3HGY3HUTuqz7AGLYgmvx2nJqzQE64LaOQYQ==
X-Received: by 2002:a05:620a:22cb:b0:7d0:a873:41b6 with SMTP id af79cd13be357-7d0a87341eemr23248685a.13.1748602609023;
        Fri, 30 May 2025 03:56:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVhwGo6eIBUc8NIPWCq/VAYr79CpNK6ZT1bJU+Fx1YS9w2pL/7LMaola04s9DtuAsRXHuuOQ==
X-Received: by 2002:a05:620a:22cb:b0:7d0:a873:41b6 with SMTP id af79cd13be357-7d0a87341eemr23247285a.13.1748602608611;
        Fri, 30 May 2025 03:56:48 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d84f2bcsm306618166b.83.2025.05.30.03.56.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 03:56:47 -0700 (PDT)
Message-ID: <8972adb4-b6ae-4ea9-986a-32e59fe84c50@oss.qualcomm.com>
Date: Fri, 30 May 2025 12:56:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
References: <20250525-update_phy-v3-0-5b315cd39993@quicinc.com>
 <20250525-update_phy-v3-2-5b315cd39993@quicinc.com>
 <mcmpmaapzv3vbiynlrp6sijdjvj6a5j3dxzoixz6b4cxqsvbsl@ecljexn3zg2e>
 <0aef1687-0158-4d7e-8e3d-b6eafc38d049@oss.qualcomm.com>
 <CAMyL0qPd2HRv4nr2C9=5SgzSkuKO_1cfZbOUO2aUj3vPWnmJbA@mail.gmail.com>
 <41ac26a6-7a5a-4c11-b05c-9ce688ad1856@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <41ac26a6-7a5a-4c11-b05c-9ce688ad1856@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDA5NCBTYWx0ZWRfX8oLX8j7cKnmx
 fst5uHaWpqPi7siBGoTrGFPfBbmnvjMReRBA+egtqVTphte785n/2EBYN9BGsyE42n55WrO7VbU
 iJWDXIeXmcBCxSnIrs6Wo7i/ZrL838muKnsr+5GgipusEXGV7ZxJclPD+BUNa8k4UBrDUQrVSEH
 gi8qajHOxVscKl+PyciQpOHc9Jt98KBZ4zqvBFlnrdZvhX8xhiL+MTSbds1Q5CUuliC7MXqIvnx
 ddN3jeWkjfVS+OsRcqU8xfqR5wwKkwX1kIsAHFugqvU1qpS41iJa/8f9J43j/5wvpzS6eRzK3/i
 Dy3KgPQiSC4+luFzfqpH3cYDdZ9XVds0oEhPOxYcQeMpxc74hKnH8BQCwqqrbk+CtuYY8pQ8NIk
 f87j1hUfk6ISJ3gOFoAslq+xKH2d3WkKKiDQfC4WGb/MRMP6IPmkt+N2dZN3MZ+xg57CmQ1Y
X-Authority-Analysis: v=2.4 cv=EfHIQOmC c=1 sm=1 tr=0 ts=68398ef1 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=ra-v6aFW90cMH64V2wwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: Wg4rbYee4iuiNoA_SNHGHBzVW5HHgdY8
X-Proofpoint-ORIG-GUID: Wg4rbYee4iuiNoA_SNHGHBzVW5HHgdY8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_04,2025-05-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 adultscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 clxscore=1015 bulkscore=0 mlxlogscore=860 mlxscore=0
 malwarescore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505300094

On 5/30/25 12:50 PM, Konrad Dybcio wrote:
> On 5/30/25 7:38 AM, Mrinmay Sarkar wrote:
>> On Tue, May 27, 2025 at 4:06 PM Konrad Dybcio
>> <konrad.dybcio@oss.qualcomm.com> wrote:
>>>
>>> On 5/25/25 3:29 PM, Dmitry Baryshkov wrote:
>>>> On Sun, May 25, 2025 at 11:27:18AM +0530, Mrinmay Sarkar wrote:
>>>>> From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
>>>>>
>>>>> The maximum link speed was previously restricted to Gen3 due to the
>>>>> absence of Gen4 equalization support in the driver.
>>>>>
>>>>> Add change to remove max link speed property, Since Gen4 equalization
>>>>> support has already been added into the driver.
>>>>
>>>> As Gen4 equalization is already supported by the XYZ driver remove the
>>>> max-link-speed property.
>>>>
>>>> "Add change to remove" is a bit clumsy.
>>>
>>> I'm more worried about this node not having these gen4 eq settings
>>> (i.e. the part talking about driver support landing is true, but it's
>>> unused without the presets being explicitly defined in eq-presets-16gts)
>>>
>>> Konrad
>>
>> Hi Konrad,
>>
>> Actually stability issue was resolved by this patch series:
>> https://lore.kernel.org/linux-pci/20240911-pci-qcom-gen4-stability-v7-3-743f5c1fd027@linaro.org/
>> and I don't think we need to define eq-presets-16gts for this.
> 
> Okay, so there's multiple parts to it..
> 
> I was referring to this series
> 
> https://lore.kernel.org/all/20250328-preset_v6-v9-0-22cfa0490518@oss.qualcomm.com/
> 
> Please check if you need this as well

If not, we can get this merged as-is

Konrad

