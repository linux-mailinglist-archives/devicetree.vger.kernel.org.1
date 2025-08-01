Return-Path: <devicetree+bounces-201331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6173DB18152
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 13:54:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B8045188E63F
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 11:54:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A350E1F78E6;
	Fri,  1 Aug 2025 11:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jp/hcV3q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19D11DF98F
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 11:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754049271; cv=none; b=aBdlO/lX5pW1Nxpf+aCEjAD2VzNMThuSmh6pf1HJHQ/viIjWFJ4Vcb+Lu8sCGig/+o50WRO6k2mofuYDr/4k7EBKNOKarjUCjD9vPvQ3/b6qxd08nhHrC147sD63A6HKS1fUC7u9dAkSPp6t12xM+6rmv2cBsWp8UQ00lAhDkj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754049271; c=relaxed/simple;
	bh=L1ffq+YnAjiE6H9FN6/GOqUbgu3aX3Qw0xclYiGdav0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wm7xqJOITdT+zwi0yo2avqiOv+yZKohRp0jHYBkBOu5EmFi85mxiV5VGfgKGVkWIYjDHH46kxXplrYwTgV3CwRALT+aDAeIijTFLCLSYNo3iRk2tRx+d2nPLyqtEBEtnmSAHdVTmSH0xHlK6L81dKJk5JtivPk3cv2eA2M1/eIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jp/hcV3q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57194nRo002405
	for <devicetree@vger.kernel.org>; Fri, 1 Aug 2025 11:54:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y0yAyctewBGcrkhnpcRUCf+/nTscTMEDN7WOB2NFG1k=; b=Jp/hcV3qVABDrEwv
	WDncH6TBNkGa64/U7vm+13+Z/WyxPjKJMzJNHKHOcYsi/iVnshw+P6XueQPQTSvj
	JxD1bPC+L2URM7wjdGd2cFKPLJr4hsqJo3llLkwuvkGuwB4BPz/Vi7DvJd0tQThw
	8Vo1Evho5Xa4eFoMfQuIY3jYXAhwgDHPVbp5XGh8VXdey0N7rbtSFTruAGPPhGhc
	2SY2lwxv5HcS1iMpBl+M8vv+au3hBrggXhoim/EvWP8CnbRUoJWjn7qGwCha7dfe
	SFNBLsrlfSLZeRD+FWD7hp9P6Zx20v25Q5Vec6fZj7NQBj6wu9RTWqblzLim5CRK
	uG1xrg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pbmbhfw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 11:54:28 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4aef8afd26bso3992231cf.0
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 04:54:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754049268; x=1754654068;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y0yAyctewBGcrkhnpcRUCf+/nTscTMEDN7WOB2NFG1k=;
        b=O9PsW7VkUiqln80TaeY/9q3Uv8+Kzzq7EZ2IgFONBlO3N4iJ5Pq/S06bs0+5z7sGWN
         f65+WXBR/9U279xoE4kjkATE1a4hBCg9uiw0WSvSOjj9FjBhgitIBTJrNMVl+LNGbGUK
         BDsu0VTVAKC5mPSLY8862gK5iQgWBttUTVvtZz5IEAuLuScztk78sL2xDjTK1S6kGhfP
         Es1gQhLvBWyr1W5GrosXykdItQLfIthFfQIuSpD1FJJ8ZFbMetphkJ4/aqidvcJtPxa3
         RFO/ng0gCIk8uaiNj2+6y0R4EIY+kEpvJJiay9zxFE0jd8kWmEZZ/gB8a5Q7X+q6PSc0
         pWAg==
X-Forwarded-Encrypted: i=1; AJvYcCVNHbD5hs6fhYEasEYtLJiBTq7okPHYGGxKPCAOrn9TvO/aDXGshKy7kg4sagUFXYEaA2NKUBgx4h95@vger.kernel.org
X-Gm-Message-State: AOJu0YxiotEix27KomctfbJO9oRIn8DoZ55T/8kMUyhehpr+wg3hkmT2
	dhz055JhmRcwGLGMqUsDG9h68BChE/+uS/HoW5AGD70GJbjoILveJ9FM5VhchRWwu7UIUfDh0Pf
	l0ap/X/jKG+MQzPxJG7o+WlUHWw6CXToEAbrJsQWWsucvx+TkuGS/Et8FBAnQ3aed
X-Gm-Gg: ASbGncupx69FTEUmEv1UNfZnXJWPFhbJdMUQnFQBUmDySCiDoIbjX6I7DSUUOGjcSGD
	oFaZB74fjOYbyaQnZ3cEARMDIjYysg4RQtRR7sj+k4rikmgiCdciyDz5TDSaDdk0pXY+pr9pMsp
	Wv6em0dplyqADpEGqLoEuXnApGe0FF9hV1KA8zF4i8/m3v/9Xn7zoRy8gkz/qUIQwpA+Y/0blTX
	r1/CaHxmMDzfDfQcbtCb1t9AUZqceulfGty4XCXLyba17p0u6F2T0D+aSxaKYN7mQyR328ueFUi
	fY/qeQbI+OtYYREkuGHlknFTDUXEGjio1/SwyzGAQmq1kETwRuBtl3CQkEjYxdC6WKOSP3iRYQX
	4QWnvLMrhM7dZTy8MVg==
X-Received: by 2002:ac8:7f8f:0:b0:494:b722:141a with SMTP id d75a77b69052e-4aedbc28da8mr7053051cf.13.1754049268006;
        Fri, 01 Aug 2025 04:54:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCLWAyERKRPjTr99qlj++Pgz2FeFXYlRWohtNL2x48UgquA0olCovFHymfIyPzxvQjxQn5kA==
X-Received: by 2002:ac8:7f8f:0:b0:494:b722:141a with SMTP id d75a77b69052e-4aedbc28da8mr7052851cf.13.1754049267571;
        Fri, 01 Aug 2025 04:54:27 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a21c10asm277886566b.116.2025.08.01.04.54.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Aug 2025 04:54:26 -0700 (PDT)
Message-ID: <d2c17575-f188-4154-bb63-e0b1b89d8100@oss.qualcomm.com>
Date: Fri, 1 Aug 2025 13:54:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/7] clk: qcom: Add TCSR clock driver for Glymur
To: Abel Vesa <abel.vesa@linaro.org>, Taniya Das <taniya.das@oss.qualcomm.com>
Cc: kernel@oss.qualcomm.com, Pankaj Patil <quic_pankpati@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
 <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-3-227cfe5c8ef4@oss.qualcomm.com>
 <aIoBFeo00PPZncCs@linaro.org>
 <784545d0-2173-4a8b-9d5d-bee11226351e@oss.qualcomm.com>
 <aIxRKHKdBHDefDs2@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aIxRKHKdBHDefDs2@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=LsaSymdc c=1 sm=1 tr=0 ts=688caaf4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=pJtBvqx0UPjT60PkLbkA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDA4NyBTYWx0ZWRfX/VsFBK2gDVhZ
 FaJYLHEhbHDFSPEy3NZLk6N647dSymWiLfPMwWllywXWnVkOgCblUzjlGyjybtdnkhIZRbgdmVm
 82nGAXwUmAYkdGXj5A4BwoU8kErjg7mcmwyDA1Y28CuUESqXSGkDN8a9VIhOa6lJdNykvqVwkdN
 9ERKyQVuqlgg4JOCIeIGbDCR7Zm9QJFcqW7Cq8X4/vpaM5bx6bGVjJc6CCZwZpZNT/E800fTYEN
 cFFl/CALNGOr+w/pnohwroOxwsW39VZ03VYc1UQwSzXkbye7PSdLGfZIVpIFFYHzeopq31SiK0u
 Hzl0qcYvFL4QHct6OmAlFdPbpiPrgnU5pRieJ302Rp/zPZj2FywlYvPiui+6pYgJojX0n5+YKts
 qMuFlTlQvWwgIL9haBgqieCCafMZITuXE0ePPwaur/zrKxN6E5CK+/z/HaP5WgOLGLvEREfX
X-Proofpoint-ORIG-GUID: SmKG_ChE8Y3qV8OXlsdmRcDOoxJRnMLS
X-Proofpoint-GUID: SmKG_ChE8Y3qV8OXlsdmRcDOoxJRnMLS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_03,2025-07-31_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 spamscore=0 phishscore=0 suspectscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508010087

On 8/1/25 7:31 AM, Abel Vesa wrote:
> On 25-08-01 10:02:15, Taniya Das wrote:
>>
>>
>> On 7/30/2025 4:55 PM, Abel Vesa wrote:
>>> On 25-07-29 11:12:37, Taniya Das wrote:
>>>> Add a clock driver for the TCSR clock controller found on Glymur, which
>>>> provides refclks for PCIE, USB, and UFS.
>>>>
>>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>>> ---
>>>>  drivers/clk/qcom/Kconfig         |   8 ++
>>>>  drivers/clk/qcom/Makefile        |   1 +
>>>>  drivers/clk/qcom/tcsrcc-glymur.c | 257 +++++++++++++++++++++++++++++++++++++++
>>>>  3 files changed, 266 insertions(+)
>>>>
>>>
>>> [...]
>>>
>>>> +
>>>> +static struct clk_branch tcsr_edp_clkref_en = {
>>>> +	.halt_reg = 0x1c,
>>>> +	.halt_check = BRANCH_HALT_DELAY,
>>>> +	.clkr = {
>>>> +		.enable_reg = 0x1c,
>>>> +		.enable_mask = BIT(0),
>>>> +		.hw.init = &(const struct clk_init_data) {
>>>> +			.name = "tcsr_edp_clkref_en",
>>>> +			.ops = &clk_branch2_ops,
>>>
>>> As discussed off-list, these clocks need to have the bi_tcxo as parent.
>>>
>>> Otherwise, as far as the CCF is concerned these clocks will have rate 0,
>>> which is obviously not the case.
>>>
>>> Bringing this here since there is a disconnect between X Elite and
>>> Glymur w.r.t this now.
>>
>>
>> The ref clocks are not required to be have a parent of bi_tcxo as these
>> ideally can be left enabled(as a subsystem requirement) even if HLOS
>> (APSS) goes to suspend. With the bi_tcxo parent the ARC vote from
>> HLOS/APSS will not allow APSS to collapse.
> 
> Is there a scenario where the APSS is collapsed and still the ref clock
> needs to stay enabled ? Sorry, this doesn't make sense to me.

MDSS is capable of displaying things from a buffer when the CPU is off,
AFAICU

We can do CXO_AO instead to have it auto-collapse if it's just Linux
requesting it to stay on, I think.

Konrad

