Return-Path: <devicetree+bounces-190416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 642F1AEBB36
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 17:11:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49E123A2962
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:10:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 847F22EA72E;
	Fri, 27 Jun 2025 15:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OnDg/9hd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D683C2E8DE6
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751036988; cv=none; b=otAcApYL7CqLeP8vgoHymB//JOtqqhweVvHjVbK22Hqgt3zRYrJL/y99wY60IF79lvRET5JUmMLDyaW2BOm+OPyVX3vnZBRVFptO6RXf+TsF1UthoXv9weM2ZJ+2nXwqAuhhDXSyJZNti6DD7VNvPjivBWoWociiAe3eZLyjniY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751036988; c=relaxed/simple;
	bh=Rs39AICjklGcyc7xDCTetXh1jXW242vqtldO29LpJBU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O+0k9ttS+JH8AzfP4kdlmHjG8g9bZ/MceZU5fkaCUpH3F+FU7jmysGjT0U1UfD4HoB4eMbR6X1GAj/dp6EUxm+UjGVk2Ug1CmRm5YobpxCQpIo8Kl2e5aybJW3PRBGvVZgxXGu0QV0n5na98BwfakfYCB/D0lANWh9lDQc2zKpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OnDg/9hd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RC2txa014317
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:09:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8MYuuA2G+3W/uvr0CyQxqIxAaENDczI3l8DDQQ0A/Hc=; b=OnDg/9hdtmSvSmLL
	ynNfsbbnIiwSr9BjDUizsy7NdocbsgLRPVZ1tZY6zI7W/Znhw5Q4VQmtZrZNnYkN
	DrXQjKxWT0Vkmprkm49OW60kG8OGUUGZDnbQQm0RKrQDzN0YpkuG1As1fmIE0j9X
	ppMNRr0jnxXFUULrFbUiGAwN1dYnVf9B+5BvNXfNKdjpKCbrqaqsp7uCiALDTNh8
	48OotKF8Ohg6Tf/NX5ME2xK425160xlk4oyt9ZZUpMsyhIr5GO4VKadfXtgdFlD5
	KQYz61rXfD7H/NAyGfYIBX+JulUwZApu4X5e5u6qr4TV368xP5cmi6MgLbKcPFoR
	t5LcEQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47emcn11pf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:09:46 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d09b74dc4bso43872185a.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 08:09:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751036985; x=1751641785;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8MYuuA2G+3W/uvr0CyQxqIxAaENDczI3l8DDQQ0A/Hc=;
        b=QPfyaMXWkpODvibP7PuWL8x94XF9u12FlNpTx1VBKdmuSWPueKtbstjfGhxk45mxFd
         syN3cLb8FRulBE/9Si+Z1Q1OBd1H3OIum/RVIgw+nuG86g0jYnx3oFcT5qS/TDpEWBjz
         pf2iKH6/tPlSf3/072VSjJX5WWd+7j/6xm1Pk4MTYvjvvoZuxnVKCmzRzA5JH0XDisXw
         fA9RuIExsESXHenHtsyPN0WbZkShi/KVymFBW6YnUCcqF6uA5H3pxOUVLD5nm3Yo+chx
         yG3pJbMmyPa/+ggltS6VMR8Ru5NXZsK3FlxHqyESXSZFoNm1gSJW01/V3hL9G8AEUy88
         Qf5w==
X-Forwarded-Encrypted: i=1; AJvYcCX3xg841nLsZXQI+h7sA/D0UYBHSPdJcmgu7ETdL+L9kNdB1ASgTQKLSbFhILbDEss2wij4m1hT+0mr@vger.kernel.org
X-Gm-Message-State: AOJu0YySxuoA+LkSUEH1CsYVbF+l+8z9rlL7Z9rVQgYA5wupKMQanrNA
	5FX3hZGOuETi7CT75U4uuPIxUNywseRw/zTolowI2JxUV7YuumtW1IMIipKy8O2AwUpY9vZqoU2
	M5xW46QKD1ahQanZFUfx4/y4pKOtrNGwvFLaSpWdOqpSqKG04/9zLqRLdFJk8wJ6P
X-Gm-Gg: ASbGncvqrxTbaomFLkCFT7oe2omBPpOEf2f5aNpj9KzEqYM+NXXRRmnDtYePh7sVs5e
	gZdfupNVY3knDSTLqJCIB/IMl1Mq3D5zxrSmhwyuHPWOy4mfmDVE07JsVHsXcjrpN/CtrksuSFG
	TAtOQPrpxOAr7XF9AS+ChaNv3jMo68LT/7F5FQfTlEVEQwuxmmpa+E0ijwjK/BCGGavs3ZZoWsF
	98VQyS77PDDplGMVeOhX37x7UwtcJbjM9yQrw5TOtwhQpLtB9Sh/2XkVngBOGLq81kWZr3/Q7tB
	ys8eVi4xNpmDb/1x/Sxb6sitY4Mg1DdVRR15FmWzPGnAaxbt+TcGOUxB05P9ufum1bKlPNjCs3/
	VbT8=
X-Received: by 2002:a05:620a:6011:b0:7c0:c024:d5 with SMTP id af79cd13be357-7d44393af52mr210731785a.8.1751036984778;
        Fri, 27 Jun 2025 08:09:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFt0El1GcFRYFDLI+q1hURApBGF+0X3eNxXSn7/tVJPwdQii+67Yzh11WAEpAraqUYgdU6DMQ==
X-Received: by 2002:a05:620a:6011:b0:7c0:c024:d5 with SMTP id af79cd13be357-7d44393af52mr210728585a.8.1751036984230;
        Fri, 27 Jun 2025 08:09:44 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c8292076csm1554764a12.32.2025.06.27.08.09.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 08:09:43 -0700 (PDT)
Message-ID: <c37349c0-8ec0-4654-bc82-15190509ddeb@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 17:09:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 01/10] clk: qcom: clk-alpha-pll: Add support for
 dynamic update for slewing PLLs
To: Taniya Das <quic_tdas@quicinc.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Will Deacon <will@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250612-qcs615-mm-v9-clock-controllers-v9-0-b34dc78d6e1b@quicinc.com>
 <20250612-qcs615-mm-v9-clock-controllers-v9-1-b34dc78d6e1b@quicinc.com>
 <f0483597-45b9-49f8-b316-a9cde7b98d81@oss.qualcomm.com>
 <9a9d84e3-49de-4fbd-9c0d-180e3e498125@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9a9d84e3-49de-4fbd-9c0d-180e3e498125@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: -SZnqoWT6QsZxYADkayTrVfTrNJDcMBz
X-Proofpoint-ORIG-GUID: -SZnqoWT6QsZxYADkayTrVfTrNJDcMBz
X-Authority-Analysis: v=2.4 cv=J+eq7BnS c=1 sm=1 tr=0 ts=685eb43a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=Wx9hSxQhFZ4lEN4NqugA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEyMiBTYWx0ZWRfXxgGJ9e1+kDfo
 5h+T+eLfMBSQMpaVh5u3a8xlLPzxWZ/J95aG+qAHOtBr7CrMS0I6BEdJ1O5XTqSpSB5ppvB04E4
 x1QDiCWzcRwNUsFI1zclDc+pS25tPuIshfcV7pO3w2DJhFBCiOaJBohsxbwmomuqhFIDn/io0K2
 03wRtlPtGTQEQh7UD0v6s89aEqUCdM9vUKM5MPD1ZA3L0jU3WniV0g7jsmg7tC8/E4z0hjlfUcT
 F8DG+hwCTgMmv9Hs5xabTzQCKsK2z775H4S5Pd/wA7DCucyRjvaoOBRQV14cqq7gfq9jbO29JpJ
 gVLjI21haWcDDHwBpJ/GZfGHUvEEQ0uFO4Uzwc26UKrJoxS5VJMod4KA+8SHy3N7VjmcMzNY86h
 pRuPP5JYcKkiyeVIHBXKLzDDJuMKxO2kLlsd4PVm6OqvqH+Q9hIco1531qpVcZiY9GzKvMyg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxlogscore=999 adultscore=0 impostorscore=0 clxscore=1015
 spamscore=0 malwarescore=0 phishscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506270122

On 6/25/25 12:31 PM, Taniya Das wrote:
> 
> 
> On 6/15/2025 12:20 AM, Konrad Dybcio wrote:
>> On 6/12/25 11:55 AM, Taniya Das wrote:
>>> The alpha PLLs which slew to a new frequency at runtime would require
>>> the PLL to calibrate at the mid point of the VCO. Add the new PLL ops
>>> which can support the slewing of the PLL to a new frequency.
>>>
>>> Reviewed-by: Imran Shaik <quic_imrashai@quicinc.com>
>>> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
>>> ---

[...]

>>> +	regmap_write(pll->clkr.regmap, PLL_L_VAL(pll), l);
>>> +	regmap_write(pll->clkr.regmap, PLL_ALPHA_VAL(pll), lower_32_bits(a));
>>> +	regmap_write(pll->clkr.regmap, PLL_ALPHA_VAL_U(pll), upper_32_bits(a));
>>> +
>>> +	/* Ensure that the write above goes before slewing the PLL */
>>> +	mb();
>>
>> Here however, the write may not arrive at the clock controller before you
>> proceed to slew_update()
>>
> 
> Yes, it is required here and will keep it.

You should change it to a readback instead

Konrad

