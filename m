Return-Path: <devicetree+bounces-201212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9760B17BC9
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 06:25:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0638756481A
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 04:25:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F00B81E98EF;
	Fri,  1 Aug 2025 04:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PdC2tAoB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749BB1E32D3
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 04:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754022318; cv=none; b=E56fO7upFfj6ku0zowJDjTz4BIEYeKPHM+uFyVu9jGq2BsoQuvLsHyvSMF+vhc7Ufqm9Tey5XsM831hMEqMy4/NcPe/tJbHobOgVoci4xbfylx1g4t8X5I+1tyCbTAzOJSAxWdPfYand7jVdLeNDwr4bs1MGb+W6M9UXwh6bt7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754022318; c=relaxed/simple;
	bh=uBlorlwIYp1hcEgGWzhSFeKrBrorhnWYZjy/YHECfXg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ILtJ46i1YYtr1br7Ilu/uoylA9VQshJmLQ635dbC32UtrGWZb5ixyj2+ZHIfRm0uMMDJgsLHr9N7mcJMep7yJnBlRlLQNW/tRJw/obq2rUF3+oO/7HShyXy8ro/bLKgTC4DizS/CFBgqn9UU/ezZM0tlSpYfeeP8Et8MCX1OoxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PdC2tAoB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5710ZMSR031980
	for <devicetree@vger.kernel.org>; Fri, 1 Aug 2025 04:25:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zxRRtXcN5asqDedioHABDaioEx42PozHmsddFvNpWDw=; b=PdC2tAoBbSyWFYWM
	rw5Lpp581108vLB9AQws2QgTh/eSPipVej45NFsUmRGzJ6tFyEXfcmswa88EsCq2
	4EOszvfsXOQnHHcHBVVCFLhQ5BxUlPJNmXxO0S1R2DziK0LcLxt778KCSkBnJJq3
	ijPWIpu7tlvmdkWbEsuPfK+AK62CCG0cUqKYxakY/NAC0NAlYS5xjB74v/py+57K
	HeW2cbobabX4iWoriuZsgoCYy6o82hq20HOE9oMOhDM5fQ6qNk1RTX83D0o06CeA
	fl8r6PuWmEhF6MRwqZT4FMAJlDFv8Qw8AwDxER87Is3Pv5czgIOpqm+O+9Pm0Z3J
	dSumuA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 487jwexrw2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 04:25:16 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-23fd831def4so9596675ad.3
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 21:25:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754022315; x=1754627115;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zxRRtXcN5asqDedioHABDaioEx42PozHmsddFvNpWDw=;
        b=PjX8OLGP07v9swyYVnUj7ZgzRnOlanVhJLjf/FAsSUcpyXBX0Qb67oPnoxiEFb88k0
         nUMuwKIWPuQHQF7updyY9GkaVxwf4f/UR7QkhJIVfIleDw2/EEnv1HmjDUxgWLFMXBT3
         aHg88+10ONb3QjRYhsTSYXqpMQice8YAH/2TG3YTmQr0mkHfSPaNiocQWkpPUABDqknf
         j9Pzom+Ti9Pa+C4mKHA7v5dgM35nLoNXE+jo5e17TS8UBkyDeLUFBpzluwVivUyY6c9d
         tFZU5w6J7jsg8R7yWQjMQwN/uz8yek5/NHRKr9St7lqULRGKOLKOZlzW52o2wx2d4b0/
         k9Gg==
X-Forwarded-Encrypted: i=1; AJvYcCV2YQTDGwqW2wb7JDijD4RYR5TO2B2Jl722bsdfKM44znd6LspCXYPfURBQR87+osS6zVgnM4uT/+J4@vger.kernel.org
X-Gm-Message-State: AOJu0YyUxHj/cMBmg1hvRUGDltxfprvaSST69ME0Bh57EYiBaA3YsArd
	ekSTt/XBcNtud+IEQzT+yQ8uDSpJGDERuj+lWQpEXMmXY5cxLIGG0EQ0nWqv1bdz8/tUvMPfrXM
	ts5WfCXoj0jc6rf+Ta4tK9+1qZwto0cD6vLGrvKeEcv3ZM1jOkzwI4l1MYkhdWBVK
X-Gm-Gg: ASbGncuIhJio8ED+Jw7gHxcWQN6MsYkcZNg/zLEepm1UHt8ZvsVASDWxQcGk4ukWE81
	nKHHgZbPcjbdnTooh3BevIswbT/BYybPWhSPzw8Y33RjgLavCzPq5ikctVfVZn/U6z/6fxeXYtJ
	8SzA9ELhmh4lUufKygZ4bR0m7behxBUjZL+F+psHW1WDDMlxVmu2Kje7OeGBpUOcoNEimkJ/iYa
	XpOjwgr9AcpSuB0a6//Dd6SwCXLMywkWiq5zB8Uq7G+Ec+HF7vyldGhk9mgNZKoWpQ9K5nMs5hd
	FMnzpVPy/WePzPPOcIm50AkvaShBjjUS3UJ581XRLKEyJlwE1jBn+Ci53IjdHea55sc=
X-Received: by 2002:a17:902:e810:b0:23e:3bdf:e3bd with SMTP id d9443c01a7336-24096abfe73mr152705985ad.22.1754022315093;
        Thu, 31 Jul 2025 21:25:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFzY+vcz3mT6FLuRg3s6hOjW8qEGzR7nQiQB6+tGHCmk4xO2hr0y7gSoPjaDxIHjG9/RlVWqg==
X-Received: by 2002:a17:902:e810:b0:23e:3bdf:e3bd with SMTP id d9443c01a7336-24096abfe73mr152705565ad.22.1754022314647;
        Thu, 31 Jul 2025 21:25:14 -0700 (PDT)
Received: from [10.217.216.26] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899a917sm31713485ad.116.2025.07.31.21.25.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 21:25:14 -0700 (PDT)
Message-ID: <2b802703-5214-4103-a1ab-e4c26a18ebb7@oss.qualcomm.com>
Date: Fri, 1 Aug 2025 09:55:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/7] clk: qcom: gcc: Add support for Global Clock
 Controller
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
 <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-7-227cfe5c8ef4@oss.qualcomm.com>
 <25uelsjuw4xxfopvfn4wvlj2zgivwbjprm74if5ddwvht4ibfz@yctc2kvfmxyw>
 <8b30c83f-5f35-49d5-9c37-4002addf519a@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <8b30c83f-5f35-49d5-9c37-4002addf519a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: s8R-07LiVdthV8kSD9qWogvyNnNbkRms
X-Authority-Analysis: v=2.4 cv=Wv0rMcfv c=1 sm=1 tr=0 ts=688c41ac cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=-exJQLPiCZ_865CLFvcA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: s8R-07LiVdthV8kSD9qWogvyNnNbkRms
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDAyNyBTYWx0ZWRfXzS8UM3WhEJje
 HKYyBoC9eEetYXTfwTkiugQkudWZBGHmWRV8vpNHzUYCLK+iZwm1M5Zwd7hRAMv77bnwrH2Tz+i
 ukdzh5xe3gXYIBIRx1VOO2BWBiFNdItB0118jTgznBG0cKDwanRuS4sd75eYXn2qNeCOyggdwFf
 giH2nciJW1lyKskGAbCGg3gs9Fga32uXR/C9jdBM6I7cwU9+Nv4Sr9U1cA5GUlDmzFVC7fELUmF
 E9vkDS0HRHQC5zOYOF06BdSpCZurL3Uln6SsQto/XZ9ywgKTnDt/MrA0eXw5DKz8Nf2GJ4RELSX
 hVjWWJMLAihR4ABES2eqthn6vblN8iGMHhprg9PySEfVew6MZqMKsk94ugfSgYQ2EggSlc2KG41
 1SA+nG4epQLTSVWi4qZ8M1SIC7pMFMpiP0qtX8vMmv/Wurug+IyNMRVEevO1Yg0MBX6u7kIk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-31_04,2025-07-31_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 mlxscore=0 adultscore=0 impostorscore=0
 phishscore=0 mlxlogscore=999 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508010027



On 7/29/2025 4:19 PM, Konrad Dybcio wrote:
> On 7/29/25 12:48 PM, Dmitry Baryshkov wrote:
>> On Tue, Jul 29, 2025 at 11:12:41AM +0530, Taniya Das wrote:
>>> Add support for Global clock controller for Glymur platform.
>>>
>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>> ---
>>>  drivers/clk/qcom/Kconfig      |    9 +
>>>  drivers/clk/qcom/Makefile     |    1 +
>>>  drivers/clk/qcom/gcc-glymur.c | 8623 +++++++++++++++++++++++++++++++++++++++++
>>>  3 files changed, 8633 insertions(+)
>>>
>>> +static void clk_glymur_regs_configure(struct device *dev, struct regmap *regmap)
>>> +{
>>> +	int ret;
>>> +
>>> +	ret = qcom_cc_register_rcg_dfs(regmap, gcc_dfs_clocks,
>>> +				       ARRAY_SIZE(gcc_dfs_clocks));
>>
>> Why are you doing this manually instead of using
>> qcom_cc_driver_data.dfs_rcgs ?
> 
> I guess that has been merged last week or so, so yeah, please rebase
> 

Yes, sure I will rebase on the latest changes.

-- 
Thanks,
Taniya Das


