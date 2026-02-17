Return-Path: <devicetree+bounces-266109-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBxDDSxelGnODAIAu9opvQ
	(envelope-from <devicetree+bounces-266109-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:25:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 862F014BE6F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:25:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4D193014C2A
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:25:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4A83339B39;
	Tue, 17 Feb 2026 12:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VCSvKPaV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vg9dkPST"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C750339850
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771331111; cv=none; b=PvopzCW3KfqR8VhaVnqV1tsLuNJbWDCYygVjAf05bCXuvZOedGT5PkE48Wv1kBGbxXp0i8FGk+CcF9LjSFchVfVc6dOuol5aQ+IrqyvnkE5dfzK50jkWmFadNTHTj4g21K98NLDjhUhCpwkfUJgS9g8OKslUosDrIU+AZsmbLQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771331111; c=relaxed/simple;
	bh=DrDwj/Cbmj8Cu+rIbWYsfU928hPLy7N+65tW0GD+GdE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OaCh1qNLsB1D9p+jo5J3LLUq/ORX1uQJ2iwy0Dgh9z/Reov2q16qD/rNo3Wmk9OJGSDOpYqI8aHiMvDbVH4kPzCTxM2NHrDH9wiRyvqF3rvXM+D5jED7MHwl6xyauZ7QVSV2NAxqw7R9nKrcpp8IEVC/rEQau4uD9H3Zkcyek20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VCSvKPaV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Vg9dkPST; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HBEmUF850080
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:25:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NmWWvqkr1dj9SgTFDELa5mkiI7lMFXhwkqqx5kev2EE=; b=VCSvKPaVlhaILGcm
	J9VANFxubFsURjP9cDbqwPLnUqdUN/r5Iw0AmTp3aDS8QdiFdCjsusBHhvj8hrqW
	Vq38SpMFNtyc8X8sXUW224MM/Fce8DPB3nxJVaXV9bh4RLQ4neyofSrxCeXn0smY
	KEWBXmipLiwjug/MgC2rN8fCYFFeW5Yg1Qq2gIx/0pN8lOlSGVa8wNUEIaqkrFa3
	p8o/W261klZ5lOD8hIV06r2G2UfgVSXEQdScom8RaXsgVfkoGV7cEJI764fKEhwB
	+2qjhYQ2ngy9X4/E3Ep3HecGKzj33lmaJLbv6nGihT2jvIPEL9//Lb54/Za8UBSy
	YSQ5fg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6nrt924-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:25:09 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89545f12461so29488346d6.2
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 04:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771331109; x=1771935909; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NmWWvqkr1dj9SgTFDELa5mkiI7lMFXhwkqqx5kev2EE=;
        b=Vg9dkPSThoCNlCXwUg4nbmRSv6LA7LDNj8oamzJAp2so0ZKlsIJi08sM2gEwQctAFq
         aempXvUJaEyK8fCyk9eGuq3/xlS/QQBJ+4tlPRsK5IFpcE26HE98Am9J435d4SolG/Zg
         INfndSuFnOd2x6F5Qbwj9PXmRFdwLrQygdJ9raehmuCk42+1g8DgVbRsoiMt38J1M/Zi
         S2BzPMW50rCDrIXX4V5UxHFojFk0cb2o8qkATERD+H8oeCnmIrL/vwq82pbG26Ydq4kk
         6Abr+pPa++JKvkFz/DUIir9wUiOThegrf2liqHfNmrYmp1S/HMulSFVvu74G2JnEt7Dy
         y8/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771331109; x=1771935909;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NmWWvqkr1dj9SgTFDELa5mkiI7lMFXhwkqqx5kev2EE=;
        b=n0gx91zK1D6osLYCX8jdD122S5MttVDB7K1haBAMnhDLeXFs0HW+vJKrmg7ruNNQLg
         ywpnVSQ6YlrYFJW/N2TnWHHjTry0OALL7u5E80QrMpV7wCJEnoFEtNC2XUWXz/qQZjHf
         FyVNcFiLZ1FE3J7WyGHk61VMm7CgLUcAD3cIYPEl/ggbFwXNfherG8mQs9C0lvwOJIJT
         lB/gB0fUIpJEfmJuySXxs1AnmUmcTRShC8XsDrhbh0ka4rpwuE5dpzjqY0KmOQpD+qEg
         H1c02IbfFAjmeWeqwvR00nruWu58+xjFUBqr1IN61elP++/m4ULqKhsDLNNht8IH8mhC
         ncNg==
X-Forwarded-Encrypted: i=1; AJvYcCXahsA/evQab8i/X7Fd/uaoac4sgXCBB6wgetPFd352j3/KqUWYIIGVeBcAGbRErBxQUM1ELtoNeTSY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7aXlXnqV/IWJjzMIPWjUZp8HgskN8/pYw4pEruinT5YvuLnQC
	1V0b+jSNb1A4Y41/77k0dqV70rA0/qnOQAgPxX6dLUnYsTICrZ+k+DMu9hdzFTg8HFNGdnZXkol
	sIZlQ1uif31cxIENDssb4jQZ2oabjx5bJI80j+HKSjVWnz5dtHJdOsexic6WXMKpG
X-Gm-Gg: AZuq6aJwqqY1zJcFFlR9FqbLsTJxTZToXccjaiX0GfCJ8VNZOHRRLErz7ehQj6VmNxG
	IEYN4Tk4VRBiH60PwcS7lWyfLJaCwnikrj9JORRRfWjEjcJIcPThFHT0rWUv4rsCnBvd5bMhzix
	6gQhJL6t0KjbNrlRU+HvrUIj6LZVIaMBLvcd+clcxrcJhHvJAlVrRBw/pU+QpmK8snae54+A2Yw
	ASeVE0KGTa7rdkCtdUouy5wF7BHgwZfLoWmtD8DpdqnzD2UJPw7D4JQdx3rpTi5Wt8DhHWPaveB
	88UbRx/5c3R3ayjhkiyM3h++M7+HuXF5hZ3IbEzQMjML21F+r1tdu0VJnPa+4exZlv0G9fPtgVB
	MTRb4Lzr+r+ETIMDXTORtlkYnZ2X/O8xiZf/WG2i9XVylc/r92D34j67rQo6LpoBf8t6Gz8aZNa
	q1EG4=
X-Received: by 2002:a05:6214:8101:b0:897:430:df71 with SMTP id 6a1803df08f44-897347af709mr139686006d6.4.1771331108837;
        Tue, 17 Feb 2026 04:25:08 -0800 (PST)
X-Received: by 2002:a05:6214:8101:b0:897:430:df71 with SMTP id 6a1803df08f44-897347af709mr139685626d6.4.1771331108399;
        Tue, 17 Feb 2026 04:25:08 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc7385f5dsm351920966b.20.2026.02.17.04.25.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 04:25:07 -0800 (PST)
Message-ID: <ac490ba8-18d0-47fc-a662-5a202c5ba95d@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 13:25:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/12] soc: qcom: geni-se: Introduce helper APIs for
 performance control
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
 <20260112104722.591521-7-praveen.talari@oss.qualcomm.com>
 <af0eba46-329f-4979-8b8a-fb5dbe2ad992@oss.qualcomm.com>
 <b918cfa9-1f40-4aee-ad91-d6425798bd07@oss.qualcomm.com>
 <24f967b5-0f15-4aed-a81f-ad54f8e541fa@oss.qualcomm.com>
 <92dc98b7-8047-420b-9743-4bcbc7e30fed@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <92dc98b7-8047-420b-9743-4bcbc7e30fed@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=XKo9iAhE c=1 sm=1 tr=0 ts=69945e25 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=mwp93uWdNOBgBzRbo8QA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEwMiBTYWx0ZWRfXzvSzcnC5WPsD
 iQUs5cvCj/FEZQpVFSogF5HtUX8sNYow4+sZHdeO/DkE58GZUHPj8k8U+EhdpPmL9n74EV9GjPy
 o9/7iGhDZvOIChEXem4BnxEYIxlGI1r23gOHwap0/4kk3RnNpm5Mj4+M+SIfk5F/bTFkjTQSL+T
 H5HX/Vw19jhRFPStfJD1gRusKGYJ4eZiqmYWu9o6bXO/VYzCxh5lAvDrgLM0RjpDXf7appXdBzl
 w6RZrO6Ck/9qNp9wDGHTCChEk1tUdOWVc3HFvzHXDdZH7vmvHyTL+Yx0zvy7b6jSCiyAuldtWPv
 6Ua1zOny47pqjhWstm2EbSH12BgqHqO2DZlCPzkI6EoX6B+5DgiPCeySXevdAxYKfQPJOBT6m+/
 a6cp49ud52m2hvzteB9/CX3YpM0JKZV8mw8QXyGVNXhNtZuRwXw22V9SMIY06GqlKH1MnnEUYxo
 igoAYKIcl0dwfEyioyw==
X-Proofpoint-ORIG-GUID: p5FAYBkqemh1KHdc0RfDZCooufa0v2jS
X-Proofpoint-GUID: p5FAYBkqemh1KHdc0RfDZCooufa0v2jS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170102
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266109-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 862F014BE6F
X-Rspamd-Action: no action

On 2/4/26 6:42 AM, Praveen Talari wrote:
> Hi Konrad,
> 
> On 2/3/2026 4:44 PM, Konrad Dybcio wrote:
>> On 1/30/26 5:54 PM, Praveen Talari wrote:
>>> Hi Konrad
>>>
>>> On 1/30/2026 5:53 PM, Konrad Dybcio wrote:
>>>> On 1/12/26 11:47 AM, Praveen Talari wrote:
>>>>> The GENI Serial Engine (SE) drivers (I2C, SPI, and SERIAL) currently
>>>>> manage performance levels and operating points directly. This resulting
>>>>> in code duplication across drivers. such as configuring a specific level
>>>>> or find and apply an OPP based on a clock frequency.
>>>>>
>>>>> Introduce two new helper APIs, geni_se_set_perf_level() and
>>>>> geni_se_set_perf_opp(), addresses this issue by providing a streamlined
>>>>> method for the GENI Serial Engine (SE) drivers to find and set the OPP
>>>>> based on the desired performance level, thereby eliminating redundancy.
>>>>>
>>>>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>>>>> ---
>>>>
>>>> [...]
>>>>
>>>>> +/**
>>>>> + * geni_se_set_perf_level() - Set performance level for GENI SE.
>>>>> + * @se: Pointer to the struct geni_se instance.
>>>>> + * @level: The desired performance level.
>>>>> + *
>>>>> + * Sets the performance level by directly calling dev_pm_opp_set_level
>>>>> + * on the performance device associated with the SE.
>>>>> + *
>>>>> + * Return: 0 on success, or a negative error code on failure.
>>>>> + */
>>>>> +int geni_se_set_perf_level(struct geni_se *se, unsigned long level)
>>>>> +{
>>>>> +    return dev_pm_opp_set_level(se->pd_list->pd_devs[DOMAIN_IDX_PERF], level);
>>>>> +}
>>>>> +EXPORT_SYMBOL_GPL(geni_se_set_perf_level);
>>>>
>>>> This function is never used
>>>
>>> it will be used by UART driver, not for I2C/SPI.
>>
>> Adding unused exported symbols is "eeeh"..
> 
> I keep in mind for UART, i have added this API.
>>
>>>>
>>>>> +
>>>>> +/**
>>>>> + * geni_se_set_perf_opp() - Set performance OPP for GENI SE by frequency.
>>>>> + * @se: Pointer to the struct geni_se instance.
>>>>> + * @clk_freq: The requested clock frequency.
>>>>> + *
>>>>> + * Finds the nearest operating performance point (OPP) for the given
>>>>> + * clock frequency and applies it to the SE's performance device.
>>>>> + *
>>>>> + * Return: 0 on success, or a negative error code on failure.
>>>>> + */
>>>>> +int geni_se_set_perf_opp(struct geni_se *se, unsigned long clk_freq)
>>>>
>>>> I think with the SPI driver in mind (which seems to do a simple rateset
>>>
>>> APIs were added as generic interfaces shared across I²C/SPI which is specific to firmware control, not Linux control.
>>>
>>>> for both backends) we could do:
>>>>
>>>>> +{
>>>>> +    struct device *perf_dev = se->pd_list->pd_devs[DOMAIN_IDX_PERF];
>>>>
>>>> Then, we can do struct device * perf_dev = se->dev;
>>> I don't think, it is needed since this is specific to firmware control, not Linux control.
>>
>> My point is that it doesn't have to be specific to the auto usecase,
>> further commonizing the code.
> 
> This API will not useful for non-auto cases as well.

This is only because you make it so, with the above suggestion we could
do without the .set_rate abstraction in the SPI driver which only does
an opp_set_rate in the generic case

Konrad

