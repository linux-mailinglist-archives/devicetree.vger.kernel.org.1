Return-Path: <devicetree+bounces-244289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 51870CA336E
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 11:27:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8A83307DF0C
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 10:26:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFD89339708;
	Thu,  4 Dec 2025 10:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ai+P1nNw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eo+xTxer"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457EC338F38
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 10:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764843424; cv=none; b=jRU/+ZrxGc7gp7yvJXjMg9OD/lrgOT4eoacbbwykIM3MnQL5+a0tr7ZGZ1G8JaFYMbGp/p1x+DCRgG5l+7a78sRubG7O5q16ZZ6UB7p6gyubN9gL6cjQszuKOAAu7H28Mz+qGJmH29xF+SKVPG6KEufUsFjdjlcjzxCwXf5TTHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764843424; c=relaxed/simple;
	bh=ofkHLROB54ChsECzdj3Xz53UdVsn3BabkapHXMJnS/g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=msiKygeRne3hZwvigdFjEUL6h6/LB/vFXTqoi5T1FyacNPlrp2nAQsm7hwK56qPVarSKlGibJ0/UaeuG5oMvXZc+zSNsaf0Sf9KRKR2oaFnvWhs5457JDgWHpztHaNws47uDOyL8IVBgZPR0XYOC44+VsovFlxcBnaexAmvjong=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ai+P1nNw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eo+xTxer; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4AEt401042987
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 10:17:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T0vImK6X1mn+ula3pSSqSAEbOcpsIwPad4vI0lX4McE=; b=Ai+P1nNwW0r4Iua9
	PY8B19sPPIN8qU+vKJkMGIrHUPE3Vo0QRtBqalX9q51DGRyp10j2W/A0xqu+yuwS
	/6vhjyKganAXEzJCV6YRj+k3zsou7FM5GH1OG9MwtLYMpcsudB6eyplK5d0jQXAn
	ruUFHYJRD9GbhCtlMmbXTG4HOpFRScoHRsH+qLwsJtDGTp3VCeVhtZMfaEEi3Qjm
	ZqPOS/LPCizn8lPqZh+XMcWXvWFB4i9C5eHQFvcHVYVvwA3yaGvFDHw6wM3U1PUe
	KHOFnTz+/VMzlbJ1hnI9bIrfD7VI0L30XIEtA+Mbf80IvzwkFT014B+vajcFL3Tk
	6GsvHw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au6xp0ct9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 10:17:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b184fa3ffbso23889185a.3
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 02:17:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764843421; x=1765448221; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T0vImK6X1mn+ula3pSSqSAEbOcpsIwPad4vI0lX4McE=;
        b=eo+xTxerdSamy1M4IymLxdenISZBNFO6mbSNR2fHjDuS2NWpJSmBeATr2IqI7AwWn+
         ZT20Z/9D+pwJWTBYgxh/vqLsXnPgBilRqwJr5UkcNkandHX9pExJMs+YyeVBLZ2ontKF
         R2AHlCHoleSZQfoOF5owIx8gg0xLt17MDzo4v5m1X+LeQmK6+Kw3LoH8nPGmd42Si+e/
         PLloe/NkLUi45oGY0KaHiIPnpc8kAcavG2pl1ATWfIxQQ7XmQVIg93u8XjYmQb/PNCV2
         e03taESAwWkKoJh51vWM/1hXh9ch/hyNCXkWDraK9sa0B7VJZmA4H/00BPHJCCVB+vJR
         zUgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764843421; x=1765448221;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T0vImK6X1mn+ula3pSSqSAEbOcpsIwPad4vI0lX4McE=;
        b=bop0wGUaOwtNeQY7PLUhwCvaUt6ycykL6tlO31L25eya4tL0wgdrENT2mj+dCghRQJ
         Xt7apI7iGVaHjvNtJ38xXvKmyaxq7748w/1wFaF9Q2LuwgRFFR0DYd1g0xO/SmwaLrSY
         00isVUl3FORh0r9tDZLlgewiYgOug+UCX5JOZzG/jluHF7Xw62B+Q7DBs1qVewMsuDej
         iHy60+eYU54qhUpPyLHVgzRL4WqhjV859UvxqJFT8KPgNqcA4563w0fHlThJjtEOsAJ2
         mzT1wvgM1xq7PkhJ9lrHMdyFfIsoVXhK8t9BRoR668df/SNs8x+v6G84IDtLKCqzbMmB
         JIaw==
X-Forwarded-Encrypted: i=1; AJvYcCW7Hhow/wtEwLhUXeUR1rI1Iz+ItHvCsG/Zfw8TyNWH8A4eypOxPNY3uo0rXM10C37S3YsG3TAFYxHl@vger.kernel.org
X-Gm-Message-State: AOJu0YybT0WQTy8/zdLbcdSYWO0pCqzso2IXfPKvDa2uX2YXz79qRW9H
	sh4FtIPaUMbEeD0umVyb56SgGAyOGwC50SlN7M3eIfmvvJDM+cN3xcyyQIM0pcQDCtXACSE37rM
	RQMR6pK7ONymY9NksLgbyLhxkbR+1MJRBcW9SdtIEW0WV9ERe1UVxeG2H60zwSCpj
X-Gm-Gg: ASbGncsJTh9bRucc7HuhlAfwlricZY+1mGBELGuzMEXZXcgNh/so1rJ/4M9/bDrqP+V
	/vGSlsxWimKRZiDDASkmhFLTOy4ib2sDqnSXuGs8MxmTu3tr+v5W7W4RlIHFDg2ekIPZ23Du2Cv
	+mhPJcof5Xz5+eN+zVzIzAvNWCiD+m48xF9/4eh3NS0T7VjV+HPpNtDA8d/xzwSBY5M8ROPzu9j
	SXJlyXv0X5i05MktCpr6Cg2/KRKPwrMwisJXU4U4WZGITf24hjXqUeIHPR567mjiitNf6NzyrvX
	gIud6Aq8+Rydrklnk7b8+ZfVqtVlhV0DcaSc9vPml7E8+sIUPoiSeb9dq9kv1NDGg4YjyE3/Dym
	Ql/3jdaTTNZn+5/Qgxew0guxU8Tqm9rrraLgkc8bCLm634PN2fJWdNdd8RZOz4PhVNw==
X-Received: by 2002:a05:620a:bc7:b0:8a5:2246:bc29 with SMTP id af79cd13be357-8b5f95453c6mr463126885a.8.1764843421273;
        Thu, 04 Dec 2025 02:17:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHggcUSlMX5cJ1nBurgk4zyYwBBsopu862KGWfgRMlxjeeeTtXAhOd67UjmzQwEQ+0X69C11w==
X-Received: by 2002:a05:620a:bc7:b0:8a5:2246:bc29 with SMTP id af79cd13be357-8b5f95453c6mr463123685a.8.1764843420823;
        Thu, 04 Dec 2025 02:17:00 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f49b7177sm87268566b.50.2025.12.04.02.16.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 02:17:00 -0800 (PST)
Message-ID: <9f8eda70-e077-4925-bc80-f95e35464f87@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 11:16:57 +0100
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
 <1d9b953b-5af0-4a81-9182-f1cd47e772f1@oss.qualcomm.com>
 <5a982965-4964-4f50-87b6-e3b8a1182876@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5a982965-4964-4f50-87b6-e3b8a1182876@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=RKW+3oi+ c=1 sm=1 tr=0 ts=69315f9e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=QLMSgXiTzcT6vDBu34EA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: tCIFt2_hCi_HBTXe4eA2LdVGUGiNllfL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA4MyBTYWx0ZWRfX/2gbT2evR/Ns
 mWLuy6PaHm24PokQKzvYGJTeUHt18EV9RIxGAiO/xt4cR1ABSY44UDXHMVvY4lLIwp+fA2L2U1d
 37+FjL2k5WvH/rhaSNbo+B24SKfT0CbB5s/s+gt3LVE9HST4XFfa3idAER1IWItYTC01nUFLmIW
 KKTX9ovmk/aExsZ4vbjsUGFBOJrCmaeKj/XA3KB7q/di2+P28vNHHSVM+fQFFiP6u5AIWfR92sn
 oiomY/tDc4OoucvrfjzTf9JAUs44nvAY6Ng9zil1NIcWvhV5ojjMsN7TJCJjfAhhTlL93hcl2xt
 4Wq9h2D4XfWafzS/hDQizxEbykGyZpXVj1lNpIOYGMWD0uX2ogpn077LQlLO7zV7mItDc5H4Ohl
 0SbfiTqZKYCHC25ABO2Z3xaRj5wjLw==
X-Proofpoint-ORIG-GUID: tCIFt2_hCi_HBTXe4eA2LdVGUGiNllfL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040083

On 12/4/25 8:44 AM, Jie Luo wrote:
> 
> 
> On 12/1/2025 9:42 PM, Konrad Dybcio wrote:
>> On 11/28/25 3:29 PM, Jie Luo wrote:
>>>
>>>
>>> On 11/28/2025 7:38 PM, Konrad Dybcio wrote:
>>>> On 11/28/25 9:40 AM, Luo Jie wrote:
>>>>> The clk_cmn_pll_recalc_rate() function must account for the reference clock
>>>>> divider programmed in CMN_PLL_REFCLK_CONFIG. Without this fix, platforms
>>>>> with a reference divider other than 1 calculate incorrect CMN PLL rates.
>>>>> For example, on IPQ5332 where the reference divider is 2, the computed rate
>>>>> becomes twice the actual output.
>>>>>
>>>>> Read CMN_PLL_REFCLK_DIV and divide the parent rate by this value before
>>>>> applying the 2 * FACTOR scaling. This yields the correct rate calculation:
>>>>> rate = (parent_rate / ref_div) * 2 * factor.
>>>>>
>>>>> Maintain backward compatibility with earlier platforms (e.g. IPQ9574,
>>>>> IPQ5424, IPQ5018) that use ref_div = 1.
>>>>
>>>> I'm not sure how to interpret this. Is the value fixed on these platforms
>>>> you mentioned, and always shows up as 0?
>>>>
>>>> Konrad
>>>
>>> On these platforms the hardware ref_div register comes up with a value
>>> of 1 by default. It is, however, still a programmable field and not
>>> strictly fixed to 1.
>>>
>>> The ref_div == 0 check in this patch is only meant as a safety net to
>>> avoid a divide‑by‑zero in the rate calculation.
>>
>> I think some sort of a warning/bugsplat would be good to have here,
>> however I see that clk-rcg2.c : clk_gfx3d_determine_rate() apparently
>> also silently fixes up a div0..
>>
>> Konrad
> 
> I agree it would be better to at least flag this as an invalid
> configuration. I can update the code to emit a warning (e.g. WARN_ON
> (!ref_div) while still clamping ref_div to a sane value to avoid
> crashing in production. That way we preserve the safety net but also
> get some visibility if this ever happens.

if (WARN_ON(div == 0))

sounds good!

Konrad

