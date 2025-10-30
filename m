Return-Path: <devicetree+bounces-233359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ABEC2168C
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 18:14:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 811A9421073
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 17:10:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CFD13678A7;
	Thu, 30 Oct 2025 17:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="muou4IBx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MROLzjUq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC8C513D638
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761844224; cv=none; b=qx0BPparLRhwkZ3h+DOlSpZ8Z/sqrcR12eRUGj4G64ed88HEGJJEUQrtGldzqI1uPfG5PHN3b4uWMQYDuF+YIQinlpy6Qx0EaRdM5qQxEFbOuyF8AkxI7oFFuMsCiO70R2Q7Pa4L0MRqDwhh7vzZufSZCL8ZAuie/7Z5KKPFt4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761844224; c=relaxed/simple;
	bh=cVkr53SDBMLQWUGHuVm+c+kIfixzguqDkGGnVI64njc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c5Xc6uULfN+J68LLYgBPmxXeUnC1OwhMXBOoMi5gkWbtsI9B7FX++S4MsY4TVNp1QjhFded1CXkGN3EQPx+3tAOQGxj9Ce5xQNmPZw+Ji03/Zp89J94Aw3D+9z9ntIRXdI0t6lGzLKzP2yjSSjNwSyToKE8HmfpyHBV5A1T6cIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=muou4IBx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MROLzjUq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U9WSLX3117240
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:10:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1HhsBIycfRlsSRAWjkPbFPu8VTdBGs+uGLtnXTtFM5o=; b=muou4IBx5e83/w4c
	82rbd9Quz6LNk5tYvNyJd+ovqfqAJQH3TAH/88qRBzO3U/x4MkgOqdyk0lMrCU8w
	TVQt49SKuHoF0ENy5WB7hIMWn0FwaAHRPIrStTmkjDqe6lR8eeRNcvbUthYBHzr5
	7VpniwKhaDDI/EaC3KvLFVmIPB620kW2OfPRuMBJug1IRVPpyZMuilYLSt9BI1/O
	FRSofLGAuwU/NaIfGBunq3KkGBoCcPlnsLA0zX5oUEcF0f05WjBUFT7EkYhtm9Ym
	rh3w4NjO/htT2QHoQCVXEieQshDIbEXrjUYFHpiMo+if/PxKdVXGVwRobA05UzMT
	KVlEfA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a45frha2h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:10:21 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7a28ccb4c8aso1236519b3a.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761844221; x=1762449021; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1HhsBIycfRlsSRAWjkPbFPu8VTdBGs+uGLtnXTtFM5o=;
        b=MROLzjUqNouG5S+t8oFLH4Ew3QOvqJpHSWGdIueHmKJQePaqyzxpjmZXxBF3SoBHaa
         JPIFAsMvJ1fvzmdwynfm/ZLTnFVrwcfEXZ/CbXkBtQyj5dgrcUzhyTmVwChAGJtwLbWa
         DdfpojVq1Q5tc3P3h875gsbEBrMhY+u3fVJN0lDqG3pl4mF3P6b+NdJH9PAq0/PpsCK1
         IfEcxzDoek1BkLKpko6J5Asna41KGJnN6T+WhA0QbtnRBsDc83fr9bacRt7qEYKFVIn0
         3TgW7IZZ1PTV2oG1RkNLsDZgHufjyzLNodMRBhgJnbTuRgy1/ByMvf5F7blTb1V6eLxt
         e6Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761844221; x=1762449021;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1HhsBIycfRlsSRAWjkPbFPu8VTdBGs+uGLtnXTtFM5o=;
        b=v7JvWwvAkXSx5lGY1IsYG3UzmWQkdWf5WK7IMPXtW5v50pTeJ0fB+nTKf4wQchsHRS
         KQZFLMQmj872d35CwmSYi3qdWTIxx+DmpA+tGHyND9iofng6YnrTtLVvXOzSzCJ7RoMP
         E+2A62VclxBtNjWr4Vk+cx0S6NST8cIBzO57pJgNqux+n+cjTP3LKUDPUaSh6XRVx5ap
         umE+nF6gfoXCy6Hfn+SffgOz+/uZUC8mJfEQ0c2cGsL/ooCE6SSn/jH6gTkc4s+uqQ84
         cVql/XC8vwRbkphHO+Mk360AxopppFtocc8Dd8wyMhQSJ/8/xAxSHUm85NCP4Sj222pr
         gcyg==
X-Forwarded-Encrypted: i=1; AJvYcCVddHwJKntrTDNLvOsk9Z+hKFuePYX8lZJgYg6Vqf22BNUT1/yS/tGpW6Kqbt79EQG3YEeYvNcIbQM3@vger.kernel.org
X-Gm-Message-State: AOJu0Yyp5UmS9e5T4Jyy+BOsdycp7OTPm2xCsIhxibL1QLCM+VjM+af7
	8VkCcfaHGIIBnrlBNqGeyqLLVoP7uZa0zj31n4Blb93SgP3+qldhe4HZZu0WX4l+bVlQkfCsTUn
	RteeHkGydqMdzOy/NTDxr5ppqbI1EBH9fQ38SqajaLVJ1qFt2QKjh1b7uD5uWiGW7
X-Gm-Gg: ASbGncthHGd5YOI7Fa7vQc3T6EnfXuu4CKL9mODiovgRVCEXeOEmBy1Pq5nORBKNJlJ
	hvZEkaFzsZaYhO9sqF9/hPkBYdLAR5d43IS6mANStBqrqsFjs4APvZrsn+YWzyHW7MoFoZPVVec
	/9xUdWiOBfYc6/WnyyWV7urkI6JoohdlqdDX0Ul5vVyq6DkvWbhZlZfGT34VNPk+89TZhf1f7gL
	mLUGLDH5JXqkPErlZt5ZW1DlNJOLCW51rzzdx68GWtKNsFle3gZBNjHioMyKcmmNBW67f4mswNP
	Wx9I/E1tZdUhXZa6sWe4HtaZlJppUarXiEHsZwFG1lHGNVQdn2XpKALc/5BBfAd90cEZOoLJnk+
	yT3iYqU55C68f2MDSX073FOedLa8=
X-Received: by 2002:a05:6a00:99f:b0:774:1be4:dced with SMTP id d2e1a72fcca58-7a777576df1mr127108b3a.9.1761844220683;
        Thu, 30 Oct 2025 10:10:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHpVyI3SYzlsHFGKlaP/DnDt5s7dOcaIyHFJw2iqv5mOfOnAsbhrxBDiNQMBB+iz3GHGEeXLA==
X-Received: by 2002:a05:6a00:99f:b0:774:1be4:dced with SMTP id d2e1a72fcca58-7a777576df1mr127063b3a.9.1761844220021;
        Thu, 30 Oct 2025 10:10:20 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.28.130])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a445156004sm10128574b3a.51.2025.10.30.10.10.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 10:10:19 -0700 (PDT)
Message-ID: <27a1ba7c-6e72-4c86-8eed-bff9ab6f0c0c@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 22:40:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/24] arm64: dts: qcom: Introduce Glymur base dtsi and
 CRD dts
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-3-24b601bbecc0@oss.qualcomm.com>
 <2960a6fc-106b-4280-b4d4-9c1a3a449454@oss.qualcomm.com>
 <0a47016c-1d7e-4026-92bb-a13ac2ce169b@oss.qualcomm.com>
 <gg7srymb2dspk4jeycc5su5gjl434ymgzapqqyqw7yq2marzue@ql27qx2ptuo6>
 <a52ff3b6-c5f3-48a8-a8d7-812026b0d87e@oss.qualcomm.com>
 <CAO9ioeWafyhCdcOt0V9DBwupvSbGg66T-JUL_2rhcTpxQxj2vw@mail.gmail.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <CAO9ioeWafyhCdcOt0V9DBwupvSbGg66T-JUL_2rhcTpxQxj2vw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KupAGGWN c=1 sm=1 tr=0 ts=69039bfd cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=kYOnW6kYNC4MuwyOue8uGA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=RH4B9Nl3qsRc-XDkDe0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: RT9nVu8QPWxN4g0W-kRIv7_aezHx40ik
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDE0MSBTYWx0ZWRfX/A2B1kkAK972
 jcsMQedrtdJlBWIZkxUXcuzp6b82Rrnws28sfXM3Ljkbq3mEAyt0OWIbbqkbWXeuxKgZlkqAImq
 OVruOjM8em9XjC2rLPIhTbNfkJBpSyWnTjXoJVgoThA5M27RWNxwksoTxbc2LuIbKMys8Ri5Jal
 AwjlWMaDxE2/uCP/Vx38X6uUmTHXpuOuIyjKiCvZp6MEs+4DgIUWqClO+HnDtdrXESWN+S9OOTJ
 Ppc25mcoHADW5ontdTFm5lwQ3zagpw5Ppld4fGSoYPGIJ1bh+GXyB+m57rZddZlXxYMbdIzmR1a
 +m8OOCUP3X17TQea0/fzvW3mbc1ILd/qdn5dWCWi4rgdn52QzJgTvEOISnZcqFOcLtGQWVgIT+b
 /+HzQVPIMvgcfSMW1d9X72LSpFdG+g==
X-Proofpoint-GUID: RT9nVu8QPWxN4g0W-kRIv7_aezHx40ik
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_05,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 spamscore=0 impostorscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300141



On 10/30/2025 4:39 PM, Dmitry Baryshkov wrote:
> On Thu, 30 Oct 2025 at 12:44, Taniya Das <taniya.das@oss.qualcomm.com> wrote:
>>
>>
>>
>> On 10/29/2025 4:06 PM, Dmitry Baryshkov wrote:
>>> On Wed, Oct 29, 2025 at 03:30:54PM +0530, Taniya Das wrote:
>>>>
>>>>
>>>> On 9/25/2025 3:46 PM, Konrad Dybcio wrote:
>>>>>> +          tcsrcc: clock-controller@1fd5044 {
>>>>>> +                  compatible = "qcom,glymur-tcsr";
>>>>>> +                  reg = <0x0 0x1fd5044 0x0 0x48>;
>>>>> We can map 0x1fd5000 - 0x1fd5094 inclusive, as that seems like a
>>>>> logical subblock (this would require adjusting the driver)
>>>>>
>>>>
>>>> Konrad, we encountered issues when trying to map regions beyond just the
>>>> clock reference registers. Normally, we map the entire address range of
>>>> a clock controller (CC) module in the device tree. However, for TCSRCC
>>>> where CLKREF_EN registers are located within shared modules like TCSR or
>>>> TLMM—we don't own the whole address space, and mapping the full range
>>>> can overlap with other devices.
>>>> To avoid this, we propose defining the base address as the first
>>>> register actually used, and the size to only include up to the last
>>>> register we use. This ensures we only map the relevant subblock,
>>>> preventing conflicts with other device nodes.
>>>
>>> Then you need to behave slightly differently: map the full range at the
>>> basic device (TLMM, TCSR, etc.) and then create TCSRCC as a child device
>>> to that node (and use paren't regmap to access the registers).
>>>
>>
>> Dmitry, I agree that this approach is ideal. However, the current
>> hardware implementation isn’t consistent across multiple SoCs, which
>> means the driver design also needs to adapt. Given these differences, we
>> decided to strictly map only the range of hardware registers that are
>> actually used for clocks, rather than the entire module.
> 
> You are writing a driver for the platform, not a generic driver for
> all the platforms.
> 

I will map the logical subblock and will update the offsets in the
TCSRCC driver.

>>
>>>>
>>>> So want to keep the mapping same from the start of clockref clocks.
>>>>
>>>>> There's also a laaaarge pool of various TCSR_ registers between
>>>>> the previous node and this one.. but we can leave that in case we
>>>>> need to describe it in a specific way some day
>>>>>> +                  #clock-cells = <1>;
>>>>>> +                  #reset-cells = <1>;
>>>>>> +          };
>>>>>> +
>>>>
>>>> --
>>>> Thanks,
>>>> Taniya Das
>>>>
>>>
>>
>> --
>> Thanks,
>> Taniya Das
>>
> 
> 

-- 
Thanks,
Taniya Das


