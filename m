Return-Path: <devicetree+bounces-252334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10461CFD989
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 13:18:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 205AC303A1AE
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 12:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D655030C62C;
	Wed,  7 Jan 2026 12:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h3J7M3bp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NAtsEIrM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB98258ECA
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 12:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767788213; cv=none; b=rf3/jxPfduhnjqfLbCQ7KVzFucPxPEUzOr+7kEq6+4iVFkR9FXNJ7ng4zIHHuQiVoOSVMfkqwyRllmZAtjo+Jat1zpqb5D3IeYgO/wGBA9M9wfulrAgngiIbgltcP714YKrHDuhkm9VW4uiO9eBZVZSz1jf8PDW+2/P9ttghMwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767788213; c=relaxed/simple;
	bh=NjGfYThFux0yY5RSyrwt2i1Ek9JVno/OrKe540SAtak=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ic1Tm5kwQ6ymPGfJS6Z75WwK+1y8LA2KelopNGXCTYkYnn6F12qTCvUQE14KVte6w3eHP57X+k6H0tQ7xaixemG3mla0+84g248WGSjx0fPTQIt1L3LbWs1ryekYV2iA66vEQXJj5niFWQhxY6k2zz62v4zeyTzWE9yoyxT/a7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h3J7M3bp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NAtsEIrM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6079eprJ2988753
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 12:16:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	d55j32hYpW4S+x8R8th4vTayuLxbVkuWG4hN8s1Dfnc=; b=h3J7M3bpOCEvKjJ5
	hwjNb274pY01CAOLPg8h63hhH76T28kFq22c/sYwHaX7Ub2MdTpFWgrSeo7EEy+h
	pneR5DQjWm0a+k50A0w/84IvFi4qvbMTz7wYGvaI7L7Y8MxLV+oO/Cn4xtgtazRc
	F96V3/U+nJqO4gsHMudnhvbG/Yla3MT0xU4yPEEai7zE4NfMsWSd5aFGqPrCQbN1
	3G6UTCaSOWbuAHv+aTki5V9cqwsOMj4Oec8WabXmPIQ4vCpf6HhRZhnBUvAfJtuV
	JYa2pZ1f9AhRZYZLs4gF62U7qXzbZdmsJgs5tqhdApb/O4s10PVsa8GoRovXQiBC
	FJrQBw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn2nreuy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 12:16:50 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1e17aa706so8056931cf.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 04:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767788209; x=1768393009; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d55j32hYpW4S+x8R8th4vTayuLxbVkuWG4hN8s1Dfnc=;
        b=NAtsEIrMp5wpevnRUvkpYA+ZLkr1rp6TzZuuAwq/6foknwHAzd0TVRlc+305LxiIrO
         FHPHMECb7T6yB0RMBm791PrILOEUCHwobsAOZEqbc2295to5GmPXY18aVXt6WjO4RLnt
         l55nW9AsYVH/xHW2V3orRR3DdnQOuCmIMhaR2NmjemTHgrJEqFsqpPIZL8rwE64gKHGl
         unAks9LtH1TK9DjBapif7D0QMQCJg0R703X4Uz/997L8mikhz1LUFEqJyom0zzQwJ8Sd
         VfEuvG9E8tlpdFfvQ+QxadPauV9Nao30vxOcIFEohXplVg1CvPcRlUSXcNReOGZhYYud
         Kegw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767788209; x=1768393009;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d55j32hYpW4S+x8R8th4vTayuLxbVkuWG4hN8s1Dfnc=;
        b=Ba5eXm01yZ4RafTjO+gQlFPbI7Yk+F7VCDYSDr8uAoWbeZRqCNMlNk52VLXorSXztm
         vZSi8lIYTAOWprnDjD3LD7k+Ga/AEFRWmhkxiNah0DjZ+iex+sqA1D7pKT1h2mujZ5R3
         HVGto7JlONESc2uSi1aBzW4jmKBEmO8G8N8Kt148C6TqTy+XjdKxFGXrbzd0BWMHea7f
         xSIcw6Inmhgj8AaJRpw8VCUzJ+9CnMbWJI1ftVo1EYQYi91zIp64pfPCiGslj4OjpgmU
         4ZjD4prvS7/TkkQaiiNTlEHmxeKgWPyL4/eXiUD+E1cobJpsXd1gbtcLG5KY0XRT5Kjx
         D9Pw==
X-Forwarded-Encrypted: i=1; AJvYcCX1GcSMbMk9sCwAfyKkBVooBMvnAvKtmO+nhuFKV0FacEq/OvEJfgnN1A+FcVTB3Avof4QefRcbqfBo@vger.kernel.org
X-Gm-Message-State: AOJu0YzwsaDPU+s6rAbFGut2Fm6rECc1JMYRtUz3DkpGg5c0YSUn+MGT
	1q8YAKusVnohhQHFMzF5zpE93MVLhjMTK/Jt/A8yv5UUujHCIR37kcgn+uLM3zULlKAaG3bOoGS
	IBRb3WHVFKdEP9e82KVXtVwpmqnLWM3mbJS4OtIdYSZr1MuBNTAbDNqbVNFVJ7kkO
X-Gm-Gg: AY/fxX76LokGG2/AtyVhWbng86cNqY/fSbdvUhpyMmAmkYPy/5TbI6OGL+UH9PdUqvW
	8laQCGbUhjNPt3FwZRlZCNBhQvAXaiIftVAt/lhdxxcMdYRvR53gQaJA/hC6x8nfzj1h0u4JB2h
	Q/SBC5wWOOjCVWUm7qGv92rOHY8Z54AAJEQExFXbBW4doxE1xU9yHv0AJq3dy0THY8rx5KMzpTm
	nqLLD6s1FD29nCSglNCrwLWWD3puxZAEXShroixl4z+iQXlgjbDvnBDxBL2TCL40nxZ31k2ktKF
	oRFpRziHtTdTZXr9YI/ZoavHekQ57aOS3cVKkrK1vs3WL7eKnx9pFb25YL2BcGpvfqQttUmz7FT
	vs9Ej2bTBL3dcm2Q3dUWBSqrWhsVXtHPL2iDtIjDCzwkmVjjgf1lkLOvwSCuoWCUTFpM=
X-Received: by 2002:a05:622a:1347:b0:4f1:dffa:7834 with SMTP id d75a77b69052e-4ffb49a02a0mr21372271cf.7.1767788209644;
        Wed, 07 Jan 2026 04:16:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGUS4ix100WivikbOS3qGiN8osG7zEalwH/GRaCRfETPDly8syMlLkh+ICwAI7jDOvlay399w==
X-Received: by 2002:a05:622a:1347:b0:4f1:dffa:7834 with SMTP id d75a77b69052e-4ffb49a02a0mr21371921cf.7.1767788209114;
        Wed, 07 Jan 2026 04:16:49 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a511551sm486275966b.53.2026.01.07.04.16.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 04:16:48 -0800 (PST)
Message-ID: <0ff8041a-c876-419e-8f18-7656e29549a3@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 13:16:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] clk: qcom: cmnpll: Account for reference clock
 divider
To: Luo Jie <jie.luo@oss.qualcomm.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Luo Jie <quic_luoj@quicinc.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20260106-qcom_ipq5332_cmnpll-v2-0-f9f7e4efbd79@oss.qualcomm.com>
 <20260106-qcom_ipq5332_cmnpll-v2-1-f9f7e4efbd79@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260106-qcom_ipq5332_cmnpll-v2-1-f9f7e4efbd79@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA5NSBTYWx0ZWRfX+/8oXhoI7OjK
 bb/LUl/0rTGtVDII6WrYGNbu+UNYfuM6PR30+5sB9IooMmqIFENq+jW3Ygwgeh6e4rlvxSS8ud5
 sKhQm4jm5YECvMq9HyxvVSb7ltEKaVqOIthy+wAFEVTebpAD2ep5+Wr2GUFghFg5HBhaWMCI95g
 Nd5oDNWuePrmIx7vunwEeNzEKn9ttYObcD4f8DYmNOwi2wsie4QKVuoe2UpLTZjAw2JJG3SZ2Tr
 LxvpCxuAHzGtAirMJYBe/JPdKAZ6yIoph1ET1ZIaCscaVjHwtRyqoJN8RBL6oyGeSufpnJ2wmFm
 o+vxYvKVjHLk+sBzvt879yEQwdGHfTs6zmBxGEiEZe2MlVMSJyo6oG34JRZnZ4rGqQZH1dl9aw8
 aK0nr+fFvOTEVsDoKjmg3PzXceGpXm9/9UELYLGHo05zyjTzi/RhuVc2j5qhBc8x28xv/dGcSfm
 GTl8ZOmOgO/ilGBGQWA==
X-Authority-Analysis: v=2.4 cv=CYEFJbrl c=1 sm=1 tr=0 ts=695e4eb2 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QfgEeMFAfvcTqVishicA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: KJFdqKXQftoDW8KUrjHUkERAA1yBnW5H
X-Proofpoint-ORIG-GUID: KJFdqKXQftoDW8KUrjHUkERAA1yBnW5H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070095

On 1/7/26 6:35 AM, Luo Jie wrote:
> The clk_cmn_pll_recalc_rate() function must account for the reference clock
> divider programmed in CMN_PLL_REFCLK_CONFIG. Without this fix, platforms
> with a reference divider other than 1 calculate incorrect CMN PLL rates.
> For example, on IPQ5332 where the reference divider is 2, the computed rate
> becomes twice the actual output.
> 
> Read CMN_PLL_REFCLK_DIV and divide the parent rate by this value before
> applying the 2 * FACTOR scaling. This yields the correct rate calculation:
> rate = (parent_rate / ref_div) * 2 * factor.
> 
> Maintain backward compatibility with earlier platforms (e.g. IPQ9574,
> IPQ5424, IPQ5018) that use ref_div = 1.
> 
> Fixes: f81715a4c87c ("clk: qcom: Add CMN PLL clock controller driver for IPQ SoC")
> Signed-off-by: Luo Jie <jie.luo@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/ipq-cmn-pll.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/qcom/ipq-cmn-pll.c b/drivers/clk/qcom/ipq-cmn-pll.c
> index dafbf5732048..369798d1ce42 100644
> --- a/drivers/clk/qcom/ipq-cmn-pll.c
> +++ b/drivers/clk/qcom/ipq-cmn-pll.c
> @@ -185,7 +185,7 @@ static unsigned long clk_cmn_pll_recalc_rate(struct clk_hw *hw,
>  					     unsigned long parent_rate)
>  {
>  	struct clk_cmn_pll *cmn_pll = to_clk_cmn_pll(hw);
> -	u32 val, factor;
> +	u32 val, factor, ref_div;
>  
>  	/*
>  	 * The value of CMN_PLL_DIVIDER_CTRL_FACTOR is automatically adjusted
> @@ -193,8 +193,15 @@ static unsigned long clk_cmn_pll_recalc_rate(struct clk_hw *hw,
>  	 */
>  	regmap_read(cmn_pll->regmap, CMN_PLL_DIVIDER_CTRL, &val);
>  	factor = FIELD_GET(CMN_PLL_DIVIDER_CTRL_FACTOR, val);
> +	if (WARN_ON(factor == 0))
> +		factor = 1;

FWIW the docs tell me the value of this field is '192' on IPQ5332..

Konrad

