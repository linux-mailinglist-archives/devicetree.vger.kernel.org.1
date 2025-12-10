Return-Path: <devicetree+bounces-245670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0892CB4089
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 22:11:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A1086300699A
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 21:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EE5D30EF9F;
	Wed, 10 Dec 2025 21:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CLaqhhBy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kjXDYOMk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4752FF16F
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 21:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765401065; cv=none; b=qQmynTjFEMkvXo9joIihxwCrjy/XzoobrQ2b1wne6MMW0OXpwN441tzNzBeQ3KSIlB108DJVrSiSPUXrFw9pMeppoFG63NAb/YreOqxKRU8TT1o/hv1R7QohgG1CI2Vq3bmeoZYqHgCVwyhqbhTFpoe2NNcI+W/tdY6MX5pCQsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765401065; c=relaxed/simple;
	bh=+T3vUfJ11E+U0yN9uerHgOG94gZT1ZMagZYXKT+rbWk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=goGEh2EJC4iAQ4+i960J1y7cPgvnEg27l4kE+6Bf+hfs55zCyLA+4Ml7fXw1/0JsNIAZ+CXEZbaqWtodAl3/zqFjZZ4EBzJU6My0t2DfSGu6BQSaYAfTZUmaGANQ2bw8qnyjH2UDgFrkKbKNpGo6wrT4bgxmbsDbyeQIu4KY3Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CLaqhhBy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kjXDYOMk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BAIROlX3524785
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 21:11:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bfNgQDXXb8iWBGKdAi5rKgqEDEYcr51IEsgHSku4xr8=; b=CLaqhhBy0oW4NfTA
	Veh/x0/TcqmAMrnMZj+melezU5YkN1Sn4u3O5BZF9GWf1Oydv2qBr9vlV9g9iy6i
	8ObpTD4fXGzeoWt4gR5fxLzJN/+uXBw6IPXdnul5A2w2XAkTcnuAEGCGEf/rRte/
	/lQBFIsui7fpwgW0ErDDu2a/kaGxYyYY3A0gLQQOZuLPcj6ABdsmYE4edx77sceu
	JQxpOVVNIGvJWV3jC2orOCXUd2iOY76RydmzCF/vgA3rn/5224ZeZK3BTCgQgnkz
	T4WpqsogsirERyTFdMK0QcV0FgVHurTPG0xhJKUNYWhvqoJv3F2rY90CdDniVXkW
	SWghGw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay5tx288b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 21:11:01 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7d481452732so424538b3a.1
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 13:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765401061; x=1766005861; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bfNgQDXXb8iWBGKdAi5rKgqEDEYcr51IEsgHSku4xr8=;
        b=kjXDYOMkn+zg75PFV+W6X5EQiJLQov2osyQMP9a5sa6sGayaDSamJVdEI5rS5M/s8w
         z3+K9r8dbQqgCpm4McVcwsC4FJKY46y82UXXASQSRURykoVNudecT5rLyfOfi44r8Mup
         CvRQ+fILP57MgM3Q+fUlUEymwCdSz/iFemruhPPFI1PRqtpUfgmH7lnXJM2sDDbjerhm
         JbGUY8aKFzfFie/IIwg3N5HX68xE25E97hMP+LR1kpM6K8+RxTwoUIsiaYY+F+3AUwC7
         xFx48QZ71GuSow0DOyMdp6ippYWYvvfXwodIfX3C7Q1tBeoSNMcjDUDxtAfTBQDOqsDv
         RVXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765401061; x=1766005861;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bfNgQDXXb8iWBGKdAi5rKgqEDEYcr51IEsgHSku4xr8=;
        b=OCpj25aF0i6/7OUGhfVyxc1hOwVVBHePs/zIh32P+nhCdXz6839/CpPMjQ6g1jgXVH
         2X/NeFZ76tR3TJ56xqVij3TjqN/ohxgJYvZRtbvITpFGCZ3ftRDiZtkuf/i/qWKugCMc
         FMt2V6M8WznI4u56fGm0UqVQMtdT4nBW6vL+owovsJYPrgIg8O1fMBSGf1xG0Hz4JHnX
         9I3Ds0729/DkXWoe+CLZv3E9H8PYC9RyIu+527wHEFEMDSV9+NZmCuGMlMmZiv4XP+Pw
         cvpxDN+Ob7AuMJFv0cJp2y7hVMtZ7xNjIHOSDMMSBnYDjC6+xCuCkEYsv5EkgF1DFJbC
         rTEA==
X-Forwarded-Encrypted: i=1; AJvYcCX/HVX2rpl/rL42QgJjuaExphG0aHrA72aTszDNAfojlJZfMDGZP82t44jDF2lclfb4HfMr4yIvNU1G@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9PewpzxjRppWgKI/kc8gVgHBVUmfmaOS3WLgx4/Ku32V0rukc
	Hz2R/tPDRsvduXTZuDXGq42DPqDrTcHsE6Q7OIooddgvWWLvlJeJgIG1QID3u4NP0fSJi/H7lct
	S4//AI2DLQtW+k4wqoswsuUk5rCQDlVfPJpSS2IqVv4iI6YcYlRjm+4LRbwxeWbWi
X-Gm-Gg: AY/fxX4DD0ckKEPVbdXM++O2z9C/WAj5BcqbGeDFoKXOl1a2cJTGbf2N5oWo8EvkoLc
	Bh2fR4LNU0leRAh2hTjQX9K3cSL+7aL98gU/1Wac4QYxkS03N4pFOB5txgDwP3tsgc9KPoCHWFB
	RaNzuEo6XcJteuovI4SpWGttYI+W+YFulj+pBerF9dpKlqP0cXhHsOJ5QrKInrOXPxvae42y8Re
	Z5Q8bOaEpTbsXosDv1tEwxqfqItl0eOorEOdGXv/njU2DBm4pR/V7U+xuYNT3oHVIYyhjZGqOPv
	XEsWHx+O6g1mCumfl/zVxpw/TPxeDBFmEq0Rl1XYSzGaqyhlzIU9LabU12CRf7OPUkgAo2B7xfA
	nYPwQO81l/2NOTSWN4d8MDbyEApiBPN1N
X-Received: by 2002:a05:6a00:b91:b0:77f:efd:829b with SMTP id d2e1a72fcca58-7f22e0a30bfmr3813231b3a.22.1765401060896;
        Wed, 10 Dec 2025 13:11:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHbBXzDiOXtSdMaF2b7fdEH4r75SwGnJGdOCk5npK2CmpZqJ2QEVbCBDzn/HBSCMic4HCMWZw==
X-Received: by 2002:a05:6a00:b91:b0:77f:efd:829b with SMTP id d2e1a72fcca58-7f22e0a30bfmr3813195b3a.22.1765401060352;
        Wed, 10 Dec 2025 13:11:00 -0800 (PST)
Received: from [192.168.1.5] ([106.222.234.96])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7f4c4aa91d0sm402642b3a.32.2025.12.10.13.10.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Dec 2025 13:11:00 -0800 (PST)
Message-ID: <9971bd9b-88db-4628-b36b-de50c1619396@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 02:40:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: sm6150: Add gpu and rgmu nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-5-9f4d4c87f51d@oss.qualcomm.com>
 <8560ad26-4756-4c2a-97c3-2c5c0695172c@oss.qualcomm.com>
 <z4gqro2bx6oq2ht75m2klogo5dsirb74tmc3u3shjyalxmaxil@5sy7ufmqhdgw>
 <6fa1da5d-9ea7-4d72-a03a-82edc4bef099@oss.qualcomm.com>
 <3gqq3w6ovy5srgvabyeugsjbwrhaxmjvicykhjmlcxd74gtsaf@5u6wvvzeq52z>
 <90bc84e7-19ca-450d-b41f-fd96367e8cce@oss.qualcomm.com>
 <2e5sqv2gnxdfwnfsepzdkchxip5zdeamp6bzbamq6kbk77kr3p@u5i4rrnrywno>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <2e5sqv2gnxdfwnfsepzdkchxip5zdeamp6bzbamq6kbk77kr3p@u5i4rrnrywno>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 8IEBLAJmXm0axD3QLI9C4YHpPpzzlW7l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDE3NCBTYWx0ZWRfX7ZCagowFW4c1
 D/zthOncj3czxhAF9W9JQfBQ29M8PmwLrnvWjeQIs0nmRXNCBiOOb+ITepccmqV5NPaNcVbEy20
 ybcjZqZQDTFQDwtb//HeDJWpvOgYCSoihRpCcpPOZce/jVkWG8l+3SDkU4TCgpgnT7/oU6x+hLe
 Pp4r/RRjPpMi1ln3DA8eHiFYIoOmfHxXq1pAjFpxyZ7062EcyaigVtB8nmZ9tlSn8j4aoYCwuss
 gZpd2xnX7MsE6e3KPcrBiQF1reK0gaYJGD8acu5s8W23ujImJmW+kHUWr+aTSgPtHDpa6cpXZVz
 q6oQD8hRaaq3TWyCyLGncdLJO6Onsf5HaibJkrHGrS/HAwwqYfVusKJGDf8u6xa2/YQs+nNR0ft
 jjx1/dpgFeLYO4ak5WrdVpwOW2bE0w==
X-Authority-Analysis: v=2.4 cv=dq7Wylg4 c=1 sm=1 tr=0 ts=6939e1e6 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=CcjbiXvC7xLhAd+qVKJczA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=iOf4mfiAVVuFJQUywdwA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 8IEBLAJmXm0axD3QLI9C4YHpPpzzlW7l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 suspectscore=0 adultscore=0 malwarescore=0
 spamscore=0 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512100174

On 12/6/2025 2:04 AM, Dmitry Baryshkov wrote:
> On Fri, Dec 05, 2025 at 03:59:09PM +0530, Akhil P Oommen wrote:
>> On 12/4/2025 7:49 PM, Dmitry Baryshkov wrote:
>>> On Thu, Dec 04, 2025 at 03:43:33PM +0530, Akhil P Oommen wrote:
>>>> On 11/26/2025 6:12 AM, Dmitry Baryshkov wrote:
>>>>> On Sat, Nov 22, 2025 at 03:03:10PM +0100, Konrad Dybcio wrote:
>>>>>> On 11/21/25 10:52 PM, Akhil P Oommen wrote:
>>>>>>> From: Jie Zhang <quic_jiezh@quicinc.com>
>>>>>>>
>>>>>>> Add gpu and rgmu nodes for qcs615 chipset.
>>>>>>>
>>>>>>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
>>>>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>>>>>> ---
>>>>>>
>>>>>> [...]
>>>>>>
>>>>>>> +			gpu_opp_table: opp-table {
>>>>>>> +				compatible = "operating-points-v2";
>>>>>>> +
>>>>>>> +				opp-845000000 {
>>>>>>> +					opp-hz = /bits/ 64 <845000000>;
>>>>>>> +					required-opps = <&rpmhpd_opp_turbo>;
>>>>>>> +					opp-peak-kBps = <7050000>;
>>>>>>> +				};
>>>>>>
>>>>>> I see another speed of 895 @ turbo_l1, perhaps that's for speedbins
>>>>>> or mobile parts specifically?
>>>>>
>>>>> msm-4.14 defines 7 speedbins for SM6150. Akhil, I don't see any of them
>>>>> here.
>>>>
>>>> The IoT/Auto variants have a different frequency plan compared to the
>>>> mobile variant. I reviewed the downstream code and this aligns with that
>>>> except the 290Mhz corner. We can remove that one.
>>>>
>>>> Here we are describing the IoT variant of Talos. So we can ignore the
>>>> speedbins from the mobile variant until that is supported.
>>>
>>> No, we are describing just Talos, which hopefully covers both mobile and
>>> non-mobile platforms.
>>
>> We cannot assume that.
>>
>> Even if we assume that there is no variation in silicon, the firmware
>> (AOP, TZ, HYP etc) is different between mobile and IoT version. So it is
>> wise to use the configuration that is commercialized, especially when it
>> is power related.
> 
> How does it affect the speed bins? I'd really prefer if we:
> - describe OPP tables and speed bins here
> - remove speed bins cell for the Auto / IoT boards
> - make sure that the driver uses the IoT bin if there is no speed bin
>   declared in the GPU.
> 

The frequency plan is different between mobile and IoT. Are you
proposing to describe a union of OPP table from both mobile and IoT?

Another wrinkle we need to address is that, so far, we have never had a
dt binding where opp-supp-hw property exist without the speedbin cells.
And that adds a bit of complexity on the driver side because, today, the
KMD relies on the presence of speed bin cells to decide whether to
select bin via opp_supp_hw API or not. Also, we may have to reserve this
combination (opp bins without speedbin cells) to help KMD detect that it
should use socinfo APIs instead of speedbin cells on certain chipsets.

-Akhil


