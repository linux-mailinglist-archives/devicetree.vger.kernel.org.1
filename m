Return-Path: <devicetree+bounces-243430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9ABC97A8C
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 14:43:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86FD23A2233
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 13:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36A443126AF;
	Mon,  1 Dec 2025 13:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mJSg5RpB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Yhp1VRnv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD36630F534
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 13:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764596576; cv=none; b=oLFu1NVNKUaOAomiXrbjYF5liyRjsvqFQlxkSQzsOGgU5PuF8LoVCvMS34vXAYiBN1ihayav/LVRSqVaHTVwAapLq2+8cTMAhHflrIYjMQ9F2jwginFUbYMnOy/QaSiFxpvpVHkM3+lDVKEmPg39oo/HiD7/00BYHxpvv6rnEWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764596576; c=relaxed/simple;
	bh=YHUabI6oaBSTjvgVlO1Hvn/bjS7A5uSs8UIw8izSD8k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s5iAtI/8wrcKYveNEKKXtNRIfxAJ/G0HMYUsj2KstPplBc2irNgE9YOoiyHvrD9PYbS+ZCosO7zzvyGzdv1cVsZoFKlM9D75wLSF9blh9GyCdb9dQGnpHEewluFeabBwN3qWOFhCjcYN9wEZPVEvTYUQxp8lb57PlZe0BaBWFro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mJSg5RpB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Yhp1VRnv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B1CGCe8060621
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 13:42:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iGfnOzScOWVgG82Mzbbv1ytlFb2z+zd/IVAh1lbOkaw=; b=mJSg5RpBUIE6sVZR
	0qImgYNxxDLUhL8hHZEgA0DLyoxdO/1VtZb3AjFdb32+oIwf817ivY8lns+R8tDX
	8Koi0RjU3ZCEBxQ1hJIrZzi6QG5Nh/Rn/nInGuWRAwMh54nXWph46CyPPukrwh1q
	i4sUx1kBmQqJlVUqNVWHg8dwkC8wQ6swlVORPm7R/zsCW9ztRD1hynS+Ns8G8Fwy
	J1tKZr+OoWHkGfhqyHdrjv5ePZQpDFCQAZHqpEHiuxyI4Q3yjQ5sf4Ji4fdtVeBj
	S7gpG40eSrcsFobalmtiZtdUo7nB+cRmDWmFN1tDqEMxrkk78hNlrbGMRCjFBqfp
	2aSB1w==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4asavh87t0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 13:42:53 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5dfa4d7ed54so428281137.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 05:42:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764596573; x=1765201373; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iGfnOzScOWVgG82Mzbbv1ytlFb2z+zd/IVAh1lbOkaw=;
        b=Yhp1VRnvFzTsNNIAXN6RSiiJI27CP81NhebiKZi2I/LDAgzPT4QA1fjYNGliocLsxi
         0QJWl5bjVDPOhZuJd23eQkStBwVxDosdGVl2CUrMAm/rKVLJfpSfZpJ6VRL6TnQRxZSx
         xgjHgkUznZnB5FJj2ZhmdFde0qeh8RyrepTYEF+VjpEHI2ru6ZYjHt4dOrgZ15fKrPFN
         1FynCB2VnYqLWDuwYRti2G/Gd7FntRiUZ/Eap1tAaVIOsXQvWnZIlPS0IJsZJM5gbvpV
         H/UqjaJtErUY8dSZvIzpw9Njflt4haIZ4Y0FdgBXYEb+u5eFh0awwHyel1XW+fNW5AdH
         RhqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764596573; x=1765201373;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iGfnOzScOWVgG82Mzbbv1ytlFb2z+zd/IVAh1lbOkaw=;
        b=ET6eHlnW3CLDH/7NdCkyzXnKnKgw7l1IcMOvl8debu4+KCKF/WHCIIIdzpb2qmrpVg
         3fmtxm/d4R56gQlmYpih/CO/lUnqEy4E+ImTD7hq33sGhFijZ4i15p2HGlwMezyMyZl0
         KVuLQcGJszrzewkNjZq4/FLjyZc8pEzqIBZj9qXg5XfRU0mnicnOKIAywqqfkaydfcTd
         hgsi0c8TpzPJu0Tlx3Q3t04LyZ7rDlF05Spl8N8Peioc7vpVe43Jaxv5pwpA8FfLHnDJ
         3iB0KIYEQGzigeNoBt9PDF/UJ/aoxQIJDcl0UZFV4WJxu8H+x9c4IucGVM9xBqPi/qL6
         5myw==
X-Forwarded-Encrypted: i=1; AJvYcCWx8IlL0qgYrKrDZ8shqUBztqKZNuXCUj/ZXMJxew9huIO/uy10wLNIu3WAOD81UxwQjCXKTlSrPES8@vger.kernel.org
X-Gm-Message-State: AOJu0YzEQsOlOnkr+cGSmm/r7JZ1S0sERfUKpCfwNzAquwKW0ZXyrrf8
	26GKrmhk4zBtT+7jkW+Lg0L+U1/zFYZ+SlHn1qpuLaxzzpGSNohs0v+vXOKL4bDfXMVt5ghqmF1
	TrLoa7xso3a/R/INmLDb9A1ndxsktaXBqWkNa2MKmKl5EPlYqPPPpfcJRYdLNEYdD
X-Gm-Gg: ASbGncuqW/pMdkLGvTgdgkWPpeLFg0cIzqE2SE1lXyQg+PPPGikjuaAIAjqV8ND+tFT
	v1FpyWKyUUe1B7GMbgW/7fhizNQm1OumNlk2Ex9iKYrdc95LS4udc8wXtU3YixJC/5HFvVpL4QA
	6CYdUuD/QaeS10Wq/VFBEUHsXO1BaywHSbR4ydpc72+YqwZlF1rdrXzSXXfoBdBpp1tK+1IOo7C
	+7/jOh+s3arL0yq16bt1/JMmXBSSsA5nipB4YnYY089l+QV9pUpe/fPHmNk3xrx3N2AJDjibPF9
	9uyQQZAexcFyt3QX9bE+2jNw/DziW0JjBnHKh5L3EvH6yK33U6/46BREBybxgnWg191s3pA4T7s
	FybFFJVOECPzmagkTQTHfEt1ovreHe7d28LQDHscmqAvvcIJyxCsTeE48q8l7ehJlAzY=
X-Received: by 2002:a05:6122:8b8b:b0:55b:ac1:d05f with SMTP id 71dfb90a1353d-55b9a9359a9mr6519666e0c.0.1764596572693;
        Mon, 01 Dec 2025 05:42:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGFZokWE+Czmsot/9JmOCq7jC8Gts2P4ILmE3eeU7u1uTuz2O2A4guvb61pBVl0X8a4b11mEQ==
X-Received: by 2002:a05:6122:8b8b:b0:55b:ac1:d05f with SMTP id 71dfb90a1353d-55b9a9359a9mr6519658e0c.0.1764596572293;
        Mon, 01 Dec 2025 05:42:52 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64751062261sm13956466a12.33.2025.12.01.05.42.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 05:42:51 -0800 (PST)
Message-ID: <1d9b953b-5af0-4a81-9182-f1cd47e772f1@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 14:42:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] clk: qcom: cmnpll: Account for reference clock
 divider
To: Jie Luo <jie.luo@oss.qualcomm.com>,
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
References: <20251128-qcom_ipq5332_cmnpll-v1-0-55127ba85613@oss.qualcomm.com>
 <20251128-qcom_ipq5332_cmnpll-v1-1-55127ba85613@oss.qualcomm.com>
 <2d83f0d3-4798-4183-9e3d-9972db706cdb@oss.qualcomm.com>
 <ed2aaebf-f0ed-4eb6-b880-9c39d4f0533c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ed2aaebf-f0ed-4eb6-b880-9c39d4f0533c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: m0FAdJ7JgVgnY6-jEvo_pr3kApZrKJ8W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDExMSBTYWx0ZWRfX6YZqiLYr53L7
 1GhX1iRiuN010S79Sx+tIOtKnWhOQv4d+vBsG81h+C2guox/vzHzt7SCmiqpdsAhxX9EvgknHCp
 neGgN4sCSukiv11vskoqdFGs0djFdVT9pVpUFqY3ZV+IMYngH1So2uL2aKSS0EsQsbaBD5/FpRo
 KxSlx9TzSLtx01MrEggbquYMQxx9IgKsRdlVktozfN15tzBWZzD+kBbmU1tCE8H7My1yqQNnOrr
 7heZP/YOmXtUgraoN2mHQSZRTkkzhFPmAQtQNlA1LNMZi+wywErSPnZ4YN516oKqAziUpX5Rfh9
 wnl16idBfrs4XJb87lCoKUwdlXDHGu56nUibrOneerfM2h9ySzEsKbqKCBjus1xuYyXkqgL+Xos
 46KSohKOimh9xBAoyElz741Wnm6u4g==
X-Authority-Analysis: v=2.4 cv=QutTHFyd c=1 sm=1 tr=0 ts=692d9b5d cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6Gc6VnWkpHiBV2CdH10A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-GUID: m0FAdJ7JgVgnY6-jEvo_pr3kApZrKJ8W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0 spamscore=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512010111

On 11/28/25 3:29 PM, Jie Luo wrote:
> 
> 
> On 11/28/2025 7:38 PM, Konrad Dybcio wrote:
>> On 11/28/25 9:40 AM, Luo Jie wrote:
>>> The clk_cmn_pll_recalc_rate() function must account for the reference clock
>>> divider programmed in CMN_PLL_REFCLK_CONFIG. Without this fix, platforms
>>> with a reference divider other than 1 calculate incorrect CMN PLL rates.
>>> For example, on IPQ5332 where the reference divider is 2, the computed rate
>>> becomes twice the actual output.
>>>
>>> Read CMN_PLL_REFCLK_DIV and divide the parent rate by this value before
>>> applying the 2 * FACTOR scaling. This yields the correct rate calculation:
>>> rate = (parent_rate / ref_div) * 2 * factor.
>>>
>>> Maintain backward compatibility with earlier platforms (e.g. IPQ9574,
>>> IPQ5424, IPQ5018) that use ref_div = 1.
>>
>> I'm not sure how to interpret this. Is the value fixed on these platforms
>> you mentioned, and always shows up as 0?
>>
>> Konrad
> 
> On these platforms the hardware ref_div register comes up with a value
> of 1 by default. It is, however, still a programmable field and not
> strictly fixed to 1.
> 
> The ref_div == 0 check in this patch is only meant as a safety net to
> avoid a divide‑by‑zero in the rate calculation.

I think some sort of a warning/bugsplat would be good to have here,
however I see that clk-rcg2.c : clk_gfx3d_determine_rate() apparently
also silently fixes up a div0..

Konrad

