Return-Path: <devicetree+bounces-251076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F1CCEE720
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 13:01:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8812530006E0
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 12:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7943630E826;
	Fri,  2 Jan 2026 12:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iDsNyKc3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E+++Oxor"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25122571D7
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 12:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767355257; cv=none; b=AdCHRtHgWC5TxuC9xL1NyeLFcJGzOUVOuP5zIwLGlKPuzvt11mlyGDKhmK9mLcHbsiQY/TwSpvl5fk2N8B1a9C16ImBxgI1MLXC2nVIxgWj/R5KV2U4U1+eS5znPlFkPyT4pxx2Se18sYczE0wcKOtqGqvSr+eeM/rEuugwpyhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767355257; c=relaxed/simple;
	bh=2/0wLsZVHxCvL1/KzjkQIZCH4jCyiJIXalsNBHErNj0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hz+dwyJ3eTYylpgllWtx98l8Mv2yWa9afkqBoLtOBqIRYEpr2vSXTH7IWmaU5KM7xiplT64a7UGMm0Msrh106nxEsQlG66wAjwcGZe4jMJl1JoVMTIMd6DHE+AoCtwZtppUNVaMnOzI0jFaLeRq58vDIt2N1rLRngrXkMmH+4qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iDsNyKc3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E+++Oxor; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6029WIHw618466
	for <devicetree@vger.kernel.org>; Fri, 2 Jan 2026 12:00:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CijfjV4TYlJQ63Aypy27nU27/+RERqxQBn1OhKXEp0s=; b=iDsNyKc3n6rt2xEk
	/IM7BM65eZxQQmCtIPGPp9ybuVGJc9xPQG/KN5oTm1khTZQrO02+58ItcsQ+/rng
	EwiwcqatSbO5LpplESt3I07xtYjiepEKuLqcn/c7BkHwBuFqNcScU0jzEWotvvpT
	9QmQMnIL0dD7kZ6Exy2T8rt+mDE+vN0+wc/CIZ/M/CuPgpeiQwma98J58XLSRrbg
	MB1LXu7hVIlklY3/0F99Pj0OLFMR7EIG3usHvg21qXO4bqf+7CQ03OyA4GjeHpYk
	DG9IQp2/Mxv2BL2a6OUn/xs+XhRv+CPXdRhpBKcwcpKSnF1F8JCIq//8kBVmXs2Q
	BK6hfg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4beb4wrapm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 12:00:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee409f1880so33671191cf.1
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 04:00:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767355254; x=1767960054; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CijfjV4TYlJQ63Aypy27nU27/+RERqxQBn1OhKXEp0s=;
        b=E+++OxorvYruO6qGNN1mKLmFPuNG5K5QLsqMKSiExBWaX8i4Vw25sz56OBpKm6jvUn
         +uQa3fm5+rTh3ui8LlVwO8pl5K9Nm3fwEStc9+SAR5zn/XDj0uQm+rtqpruSvxccOnmi
         +dIjiphFiFLbljqOuoCYfP8oinm5Fqymlxa6saj1xbpCquaiGLsZH/4yaOVu5u/9lghA
         /4vHSIEYIR7IqO5TN8ecp5ctMxuVWqt5Pop20xLD1D7EA3qcBTA8xP+uOvldzv7Zl9xY
         4LIpTt3bFQ1jh4REWvRkVuBWHXeEuFBidtt6R6MVpbT2nYVs7HZLNd+7PQbqm1GBGFqm
         PZJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767355254; x=1767960054;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CijfjV4TYlJQ63Aypy27nU27/+RERqxQBn1OhKXEp0s=;
        b=NtL8tVQFEV5Fi6HUMzsfLY+iUgKgV6Xg8m5rszfkmZFqgW0gLIgGBQDBiDykA1Aqn1
         mFyi2wRSYhUQ9ptMfTeh1M9XCm/ndOtWQojsfDjX0cBM5YdeyXGHXhBS6kVwipUSgf8f
         tvZ5lJpIf3OB5TFf8g8ClmZazC6faYehWJmzMVRkVOGXMmJewqxYjZQNymzJcsI5+zip
         XeFMHME1cl1EdCUlr5h9qz8ATaiDLo/8SHY73BFRzUKzhpxeMrkJvGfJOokCIo0G8sV+
         E1YdMWktilFxV7vnC8rkhbNyQL3LtGHutLOKa3Lf0MTFCHczyJGcjnLuY2R6JxLi749y
         L0hQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4BoQ/GHLssGTpGgtsNqKZELFBSa8WIUgQpUvALZS40E0tJ/5ijaicLgz3Wqo5vnoR7ZS52aqURz0K@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+ZYGJVDeKjOlBonpk1fmW7XlQawqsttAxuaC2tSHO50Z85YWE
	zm5HOIubNHrYt9nAqHpc2jgg9TkrYnT8A1t8MGn1o1kE8FoMFzXzdTo7KsY7CmEN19ctrGmL6xz
	MNrqYO612Ea4qJaqFgYvdNd40nhstaq2RVSnSDUkpOkSdxBu5dAvlEXjddjem2vmd
X-Gm-Gg: AY/fxX7h7gNWe7yLHBBcmoms1HLfCzSOEVSH9YZfnzEhcR3ktArkh3Pof6y3jlVb+cC
	2ar1CoYJ2xiW7E/IjvlLIYaUI8cfWKLSs/Pu9quFNGf4EWKks3GV9W619jWuLHVQ9P4+uzEQxz0
	puHuqlrxCwf9SPyHz7mzcf26ZkPf5+gXVGilB155s0gcgr810bZLwD1RnYTBeGpqMOjTc2lM7dB
	5YGkjGcV/W0VNf3olr020GF2F3UgqVY6lwRtLTNmDr87WQV5rsBE6y/tfmEk9GrfEaAcg4yH286
	d49qDG6O9BIa596lYD3iOMqj9MAAfo/jfV35gM89kc4hGj3xUHMflSFnoCY5oqyMS8ErYpCkC9b
	ZlHK+rupHd7Caw+2FMFmVXCFjKRE/eSYxmhWj3dcDnR05Eq/FyF/J3uBgb2dxGuAHeQ==
X-Received: by 2002:ac8:7c49:0:b0:4ee:1a3:2e79 with SMTP id d75a77b69052e-4f4abddcae9mr474017521cf.8.1767355253905;
        Fri, 02 Jan 2026 04:00:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH4JmAo6ojC68OJMXAm7ZtAnLLGnJ1S2x5BpOXaEqVvMJz4m94LHRQUepjhI3JNTDa9Mpd4OA==
X-Received: by 2002:ac8:7c49:0:b0:4ee:1a3:2e79 with SMTP id d75a77b69052e-4f4abddcae9mr474017081cf.8.1767355253350;
        Fri, 02 Jan 2026 04:00:53 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b90f53c51sm44266784a12.3.2026.01.02.04.00.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jan 2026 04:00:52 -0800 (PST)
Message-ID: <1440e47e-2d7b-4d49-97c4-a717fadd3fb6@oss.qualcomm.com>
Date: Fri, 2 Jan 2026 13:00:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/9] remoteproc: qcom_q6v5_mss: Add MDM9607
To: Bryan O'Donoghue <bod@kernel.org>, barnabas.czeman@mainlining.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251231-mss-v3-0-f80e8fade9ec@mainlining.org>
 <NLGulU4z-1Wrf5120YfX8CYJ_8DSP-9-DhaJ3KAIQCvqF9Qf184udOzFoEQH1qgJDZUl9cxEpsdyztfhcz8G-w==@protonmail.internalid>
 <20251231-mss-v3-3-f80e8fade9ec@mainlining.org>
 <6bfc790d-b0da-4c5b-bd2d-ceed9a75bb24@kernel.org>
 <DEGDp05xNKls7EO30mtT70wJFIkDT0-248vPaBikWJGkFf--YvzpyJ_h5sc7RSH1y9hkCKdFRBIJwQUNE9Rlzw==@protonmail.internalid>
 <a627abcaa38c0ba11c76c1f0c42b0c6b@mainlining.org>
 <d3bcaf7d-06ae-4410-8d7c-970fdb196c47@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d3bcaf7d-06ae-4410-8d7c-970fdb196c47@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: -Z1sRICHWUaO32oIkjsqxJn9WGmMG2SF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAyMDEwNiBTYWx0ZWRfX4TsW58A01iZz
 v6Rv1Fy+RiBt9XChDB3IJhX3xjwq0U5hkmsJPaoctw6UR9srFR2l2iIdcuWUC+aAlUvoh1h8CFX
 loUO3y+8OZ4rni5TSdmuD6ibpX96RlphywPwAIc+4vV3Nlj7ksJRSdUUmZoGAtX7aS5en+aDAif
 rVOZ2+E7e4WxKtuCU3lUo4FBO6b2lHdh4UsZyWQueUfeVa4vgM4a29ctOGLUzYqa4f2W1KB+QsO
 IEDue4giKKQVpgQSmoGH/JxglMFgUroH3FP6++fFxHOj+LvyAinmx8qZmrpRZHYqgCZwik/Y4J/
 K2VCXlWCvd5GQZkzD4x9T5wsP9Xn3VkIQGK62GWJIEKarzphnivD4Vr3QPTkLefyH4A6MTExGRV
 G0+n1qvidByz+OJRKOmhL07Tmiv2OLPMkz0ZTyiDiOwbWseF+A1NYgYVQceb387/OpQtwq4ku70
 rNfFfeB+8y6aMbkWXdA==
X-Authority-Analysis: v=2.4 cv=I5pohdgg c=1 sm=1 tr=0 ts=6957b377 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=Tc7beqaULkBTywLjy2IA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: -Z1sRICHWUaO32oIkjsqxJn9WGmMG2SF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-02_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 impostorscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601020106

On 1/1/26 9:58 PM, Bryan O'Donoghue wrote:
> On 01/01/2026 13:50, barnabas.czeman@mainlining.org wrote:
>>>> +                for (; i >= 0; i--) {
>>>> +                    val |= BIT(i);
>>>> +                    writel(val, qproc->reg_base + mem_pwr_ctl);
>>>> +                    /*
>>>> +                     * Read back value to ensure the write is done then
>>>> +                     * wait for 1us for both memory peripheral and data
>>>> +                     * array to turn on.
>>>> +                     */
>>>> +                    val |= readl(qproc->reg_base + mem_pwr_ctl);
>>>> +                    udelay(1);
>>> Isn't the logic here inverted ?
>>>
>>> i.e. you've written a thing and ostensibly require a delay for that
>>> thing to take effect, the power to switch on in this case.
>>>
>>> It makes more sense to write, delay and read back rather than write,
>>> readback and delay surely...
>> This is the original reset sequence without modification, i have just
>> moved it in a else case when it is not an MDM9607, MSM8917 or MSM8937.
> 
> Doesn't make it correct, we fix upstream logic bugs all the time...
> 
> For example a read-back to ensure write completion is only required for posted memory transactions.
> 
> Is this a posted write ?
> 
> Is there an io-fabric in the world which exceeds 1 microsecond to perform a write transaction ?

Writes on arm64 aren't usually observable from the remote endpoint when
you would expect them to, they can be buffered unless there's an explicit
readback right afterwards (which creates a dependency that the processor
will fulfill)

Now I don't like that this driver is going

val |= BIT(i);
writel(val, foo);
// val is "altered" but not really
val |= readl(foo);

I didn't notice we were just doing a readback for the sake of a readback
in the last revision. MDM9607 should most definitely have it too..
Perhaps I should have just read the comment

Konrad

