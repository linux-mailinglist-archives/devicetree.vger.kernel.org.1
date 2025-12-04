Return-Path: <devicetree+bounces-244235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67924CA29D1
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 08:14:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED5F7301FC11
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 07:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11B0029B8DD;
	Thu,  4 Dec 2025 07:14:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e+Phu7H9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SaFzdHfq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8444D298CAF
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 07:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764832468; cv=none; b=KLVkbK3H8fpRK2Vmo4VmSgCCF45piQp/3mpJPYFd/HB6bUP2qRHZbMJq09byc6c5e2/zJb5I9dmf7cRW1YgLJ1HZ3qIAWMspIqeiGbDmYiC19a1Ghi/zEuL8eqJ1NOxEhQKHv/H0jmmII4zJ01XXPJK5BliO6pvqsojBCkTdADw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764832468; c=relaxed/simple;
	bh=5C7hKuLAvhvfZz+3GAuTKfQ3xGCGPj/4JPyHPx3D4KA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q/D1uJFADKn2nmvsR9dPLs31+CN1speORw/5/yP8HFByMYz/OyyC8imC5adSRn04FGOr15Zc/PtJG1bX68KjUVezfPVZV/F6UtzBBTgOnbhGR1bn63+Y7b+AexiAA+zGkeEpKYBMLszmawSyIkUDIEz7fibTQ9BUxBVfH0wDJnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e+Phu7H9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SaFzdHfq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468Y0j559857
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 07:14:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1nF7KRnXPuuP/bAwN9rvMlJ/NT7u6usEQMpt8zz2V+Y=; b=e+Phu7H9jZ2KiMcp
	2fxKKyJw0GVqKQFfutfDfVrDZFBrQJvfC5nc1Gqf+CVQ1NPUWYmv3Fr7SsT580OS
	nximFAtXy2KxXsoPv8q33pFrB6oX7i2waI+TWLjOqyKlg911DSJvvwr5A5EerBTD
	OvhIykmJtN880CNL++d6gW51957oBCg+6aD1wQ7+se5ffU0nWV9FMpbnfavUw1XW
	smZBVg3aPjX0ieU8ahJ0kIUKdg4Tj3c6NHnjekPcWRqu8B1ywR8vcAWo8k9JBcvD
	gPChlFBJIgrFq+Tbwdtq1UIGKkQ2483s1oiA2VXFtaHtxQKPkLCwm7aFng0dxQqk
	uvr2ng==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4attmh9vjr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 07:14:25 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34943cc3221so1038519a91.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 23:14:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764832464; x=1765437264; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1nF7KRnXPuuP/bAwN9rvMlJ/NT7u6usEQMpt8zz2V+Y=;
        b=SaFzdHfqP/+hoP8EgbOjJvK4op/neW6T+1iiArb5VcvFkIUZwuA57q3Np74x8maRgy
         eVZr+a69PSHaThJBQJhsdAu1kyOSrmIDm4hNOD4hVv2YeMhz5tNeiJs13lhX5rqKg+51
         /kvNE2pPmmvBIohxfE42gYyKoQSsaAh6Opb9eR1+4aTwCg+vNQU2fL1IyDZqoeLUkfIJ
         bY0IN+kQZVFLExx3SivXTdJwxTcYHOV5k53QoXXrO4szt0fkxXzdTdCdE4JSU/LLSfCB
         5E5ZRPWLNHaObfKtchapvhqtXtHAcuKq5+cY8+umOuhn04qq2bgcJgnXuEHf2Ihh9/KU
         r8xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764832464; x=1765437264;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1nF7KRnXPuuP/bAwN9rvMlJ/NT7u6usEQMpt8zz2V+Y=;
        b=uVkwlAb4D6n5P3GmfLW7NUgN2lTVlFIZ86fK7d3dHiGJrOhcwzoJ22txuZ711IkkCs
         ESmYLtMlYhfQcYBTu8bWBPfWg7B1mdqxiBO3sO4LAwlV7bLBz/EFPgRJ23vIDe5l/GBI
         edlrYQnIolflRDZ3mPt6VQ8/j51e1xPYZDN4k9AnmJ2rYq9qW7YUsTDB7sPJr+ZoA12D
         hcXo9Ausqhsd18p810yFvCXktx0BxfngLlHv2bvPkaW7GHPCB4oPoU2hKhf2S0aG+ivi
         VMaygdCaVF5axTEEPKYvlWhvc3ib/R7XTXxJxFRQu6HGxVoQPD2667zYa2KYh1/ymF9M
         dEZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWi8yEheRkITCUCLG1Bh8QwWLlJvC6I0uu+BiUzCvHvk4mpXmgW96X+SfQ1XfPQ6yB4CBBEOYEQmbSW@vger.kernel.org
X-Gm-Message-State: AOJu0YxwAQO47NK96fLKmK7raU5j7tFXP/zaGLF2KzKVMAW1g6t8dCaJ
	7CLmNsp2fiWY9zostVkx6JEg/1x3qK4ZAcv2rBdPJAfoc36FfqNtswIgCzeEhJuljhKuWIIlhsw
	vM0XyGC5trHVuJKE0i7vIEq3AXofFkkJHkL3RAinOMpMFUyjpfxA5QMcK8iswQWo1
X-Gm-Gg: ASbGncvdg8v530dFtXzKLXsNEYkRh/vN3qToLAGBda3o5/WBo4tpB/XvM2oTjHB5FXP
	0MolDoCZtwmOs5DKVlorsYzESEmlZ3+WQ2I2Xxt6hts+RTPHaDM+mA9/ABBdIz+6Ywbo41l/pQp
	6Zs4cIe52f5604gAHBcZ5RMT4k2qqbj/Y3aBtx0dQymSZU8ePEyk8hNl5UDzRzF+32jiNkdnLyE
	XdM3yVcmytb3r+RT2PHmNE1CSajtrAGQCAk4p7Eltoaiy92rddkH7uX5QT7C4xAWDod3xdsBZSZ
	zvVSXiqtH6i2pyaCznZXnY2xckgdIuIowF8rJwjIVGb9bTkXhuxAKTWf8Rf+ADThBKjC2LbjRlC
	WtYxJ4vXH1blpVUweUBk2RkC6vKcFfuoSSL6Ozg==
X-Received: by 2002:a17:90b:534e:b0:32b:9750:10e4 with SMTP id 98e67ed59e1d1-349126f0736mr5893462a91.27.1764832464460;
        Wed, 03 Dec 2025 23:14:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGMj8ey2LgMUls5vb/bDVMguHBOIr4pbhmoevWwLaJZ3BPPsbZLE6wlw8i1niGvDyiNmkNTEQ==
X-Received: by 2002:a17:90b:534e:b0:32b:9750:10e4 with SMTP id 98e67ed59e1d1-349126f0736mr5893429a91.27.1764832463957;
        Wed, 03 Dec 2025 23:14:23 -0800 (PST)
Received: from [10.217.217.147] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3494f398fa5sm889313a91.8.2025.12.03.23.14.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 23:14:23 -0800 (PST)
Message-ID: <75e53a37-0fd2-41d6-92bc-fb4ad5856829@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 12:44:16 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/11] clk: qcom: dispcc: Add support for display clock
 controller Kaanapali
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
References: <20251125-kaanapali-mmcc-v2-v2-0-fb44e78f300b@oss.qualcomm.com>
 <20251125-kaanapali-mmcc-v2-v2-8-fb44e78f300b@oss.qualcomm.com>
 <w3ezxipjucswfswfg2z7b7uyu55bssqatdnbxa6jflii4j7nym@lxsnidrewepu>
 <8d0ec7fc-6eb0-4b71-8e0f-3deaf1f489d6@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <8d0ec7fc-6eb0-4b71-8e0f-3deaf1f489d6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 5vBylpUjQsOqswjvsDBa7o8AwXVje9X_
X-Authority-Analysis: v=2.4 cv=NcTrFmD4 c=1 sm=1 tr=0 ts=693134d1 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=JxPSEc7MvJ4Lh0wbHXUA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA1NyBTYWx0ZWRfX6AYFrQLrwXx0
 9B7UDaVHEqqVh707ThaQ1ja4kqRZGLAwQXW0xThUt49EoZeqjNWwXbtSlvvg/DqSJjzMhfBFLXl
 Ll0t4GpkRe4N6FNC2cDRoYZHSMnox7i39LNEk8oHYVTlEboDokmm2Q688/7XvEXLeop03Em76TZ
 Ln3VCP4fXZL3JzXZNuEosEMv2p9Kb2VjtHcw17XOqV/4dYrtf1I9Iuc36/G7SNE0D400Ab92F3H
 fKe6oyKXpNLmJtAeOdKVycV5TiC4C0iRDXTWLFySmSxEQ5jkhO9ZnGfXVxKLIRe6hvrDxi4O6AC
 OSq4Dgrz3nEkDZIXVDmCblD5+LoPF4OEQjiV4o/dnFcteidS9GSxkHlhSD0YhNTDKHuWY3jC4Pt
 nitgyKu/AKwfpcbEGQ6ndwtCpsG0Ng==
X-Proofpoint-ORIG-GUID: 5vBylpUjQsOqswjvsDBa7o8AwXVje9X_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0 lowpriorityscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040057



On 12/1/2025 6:50 PM, Konrad Dybcio wrote:
> On 11/26/25 1:09 AM, Dmitry Baryshkov wrote:
>> On Tue, Nov 25, 2025 at 11:15:17PM +0530, Taniya Das wrote:
>>> Support the clock controller driver for Kaanapali to enable display SW to
>>> be able to control the clocks.
>>>
>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>> ---
> 
> [...]
> 
>>> +/* 257.142858 MHz Configuration */
>>
>> This is a bit strange frequency for the boot config.

The lowest PLL configuration is used as boot config based on the
MDP_CLK_SRC clock requirement. The PLLs on Kaanapali can support these
lower frequencies as well.


> The frequency map lists this odd cookie as the lowest predefined config,
> perhaps it was pulled from there.
> 

Correct Konrad.

> More interestingly, the only consumer of this PLL (MDP_CLK_SRC) makes no
> effort to use the m/n/d registers, instead relying on the PLL to re-clock
> for its ratesetting with a fixed divider of 3 (and div1 @ XO rate).
> 

The m/n is not preferred in the cases where the PLL needs to slew to
derive a new VCO frequency. That is the reason to keep the divider
constant as much as possible to derive a particular frequency.

> 257.142858 * 3 = 771.428574 over-drives MDP_CLK_SRC, FWIW.
> 

The lowest frequency requirement is 85.7MHz and the frequency is derived
using
257.142858 (PLL VCO) / 3 (RCG Div) = 85.714286 MHz

there is no over-drive at RCG of MDP.

> Taniya, we've seen something like this in camera too. Is there a reason
> the frequency is being set this way?
> 

We start with the lowest frequency to configure the PLL and frequency
requirements are decided based on usecases.

-- 
Thanks,
Taniya Das


