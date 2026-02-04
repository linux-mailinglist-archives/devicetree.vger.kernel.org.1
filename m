Return-Path: <devicetree+bounces-262508-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0H5ANHPcgmnwdQMAu9opvQ
	(envelope-from <devicetree+bounces-262508-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:43:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF5EE20EC
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:43:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 96A70301BF64
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 05:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBA7334C981;
	Wed,  4 Feb 2026 05:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nFjONCGY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PRYYtE/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732E62E1730
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 05:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770183774; cv=none; b=Y1llvZZ4E0s3l0qnATwjd3opgJ8DPibJGDK9idduxEhL1tGhr/lm5RwgjlZgJdabklV+Tvs+SDVwpzBhn3Tjg3vO5cl+QTgUnOGtyxxJiIuTe6NJntq0pazmz+LAXpXwt2QWEkvdiOvLHkZV8bE3twJuB/Gru8mBsd6YnmnzFWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770183774; c=relaxed/simple;
	bh=VKk566DJsJRFQWWApNx+fXFkB29f9cIdPS57ACaQtUw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rpDYQHjA1z4BihwAsyQsAPVJXXhtgQwGwtLtlodNRk2LXXQ9fvf1aq9rH1pT+5DczN9E4mVNBUJ/kmIvSGwnFlfKCa/0RQVlbFe6SQ2WZTEAKPAzeMAT1sKaFK4BDHyep2V/vy9EuGeo0bc4nXXx7lbkSCSjKPuzbz8ipOhEk5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nFjONCGY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PRYYtE/Z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61453hk32829158
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 05:42:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xgVjf7Y9rnuVQSWYsmXtX7za1suTWFNBUqVZI1G6cCs=; b=nFjONCGYx6W9cAdm
	X/9uIMbXa5RBv1WCSstKd94U6nniMQ+mkuvs5d8fbfJ2/mK/dvJJFclA/x3H4Etm
	IYAsD7PsaFsJPFzLwlYlN2Q3JPMe6MMoBTLUQ/n+uH8Tiw8BXjz4wCtksEcchFjb
	9eVoVN//CLNv6k/ePCQEDsJ1XDVUrKZW/wgz6Dfc2jXe0CE3JwnKZiYqc7WA1XZv
	c3w8i1fn0kVvSz0jYYd6si8yclxWEfeYjyXcEGJLSQWgkmctlyGBCA3xXJ2P4kP4
	qyP3LhMWlBzh1jHyE+mYZ1HM16ACZ96k1ipzZCt2LAbmN5cC1cDL1uxPxOTucBiy
	L/GlnQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3ndvj13c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:42:53 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-352de7a89e1so5565722a91.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 21:42:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770183772; x=1770788572; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xgVjf7Y9rnuVQSWYsmXtX7za1suTWFNBUqVZI1G6cCs=;
        b=PRYYtE/ZoDrW5bc0WFTpQXOoMwXyheBn6TKaKCmyR8eLMze6BhWjw2PpO7DeLYPxHF
         Z1zeeiHWq04MF3BGA8zYz76H3Nz2gdvRvx/Nb824snfiifBLcUguTXH2Up/JV/dw9dC2
         Dt9A2ZrlW8Oed9mSjl/lANrz3QFcOXl08uIzNDep8wJB81HOgar7sffND6YLA6JMF/zb
         7sgYyFswsAIfv3fLU2qVyanDZzE+UPyAqO8o9WkxcchTr5VJmQfU59bOGD0BFJc9XYPP
         2JeixUrM++56sGreN2iNLTzn9c4PDjA28WFvQz/y3Gsh/8aDBhd9zmvBOhOcozrjUDtD
         bisA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770183772; x=1770788572;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xgVjf7Y9rnuVQSWYsmXtX7za1suTWFNBUqVZI1G6cCs=;
        b=EbJp/uBG+NYPTpZ+mHAQle5qzkfsozxenQ37Ein8Cg0y9ogfXqj+5jxDWX4iqqAo+U
         xFtRtv74glbRJNnFbUojOGexmA4o+9lir/36Ack6qLyOMcvIoP5k4qaMtScO5EAKuPOi
         j6RBbY/GnszFmr6QoJtxZYLVqsAj8jCYs+TuOG3gc8g2ErdN6D6hpK6D3LLE5dMLIkxs
         AVwbkM+njaO0EN5vOUnZafQFp4oaZ13O9EemLun4dU93tUxzFDT57fi6l0kWuH2O6Wcb
         18Gp3mqvPdkmpcFGBLBhm0VXbHpq+elMD5VyKXT+z9oKiINKYSca+0i1LrGVE96NNS8i
         8vgA==
X-Forwarded-Encrypted: i=1; AJvYcCUQF1Ks96Cf+TLm6nIfftWchyupi14977URMDTORvF9kTNSt/xzUWa3b1n+AMtX0uolVgaFz0s8YKcH@vger.kernel.org
X-Gm-Message-State: AOJu0YzAKk09zYN+5htmVcyVhP3Lgu+e7Bnth95DPakrCL+PqoOUNp7u
	6O0gRStnCH2e/77GNvO2MRAdG/Beo/cCF1/NHJSvH6GcBPKZ5p/8aRazFN//mAYUJp6L9LBmLNT
	p/9/aF+0DVMKKZawe8TS7+6XBGVaG3IaTtGvUH/8kVpqesoChDbH/Dj3GdL4rjARU
X-Gm-Gg: AZuq6aK4tEpJ/Go20vRnmAX5ZK4g/qWtCc9B/Fk7ksXXhHAh8L30RZlqUL7l851GzJ0
	OwjpvAMJYR4S/ZNjlvJWNy1qcljytZv6MpNGPVPB0if/mxsFjuVar8Oe3F8SNMhP/+ON9kmUoE5
	OcNViua2Rc1S6qfuLVC3xT1jfxFXxj6a85P/0ttrlGBxp+IBbF3H78Ftxc4UZjQP2inHi+Zkcg4
	WlFE5LS0EyRUaa+ShCm+aQOCBTqySOTXDYjDA2SC9l8QGhWzwgG8xKTecxNZOxwitxwfxsVnniQ
	6woyl7mxY+BXBkQSceP/7bspS0Ch56ymKmK1h62YkEM4axBIDLPydpg/CwFFLfgFkApGpvGoWfP
	KUB5o6zKdGdF89qyU9Ydd9ypLAuqbLSKwr7o0Ps+mXg==
X-Received: by 2002:a17:90a:d88c:b0:340:bb5c:7dd7 with SMTP id 98e67ed59e1d1-354870cb7fbmr1438073a91.5.1770183772368;
        Tue, 03 Feb 2026 21:42:52 -0800 (PST)
X-Received: by 2002:a17:90a:d88c:b0:340:bb5c:7dd7 with SMTP id 98e67ed59e1d1-354870cb7fbmr1438050a91.5.1770183771831;
        Tue, 03 Feb 2026 21:42:51 -0800 (PST)
Received: from [10.218.32.171] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3548630df97sm1217006a91.13.2026.02.03.21.42.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 21:42:51 -0800 (PST)
Message-ID: <92dc98b7-8047-420b-9743-4bcbc7e30fed@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 11:12:44 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/12] soc: qcom: geni-se: Introduce helper APIs for
 performance control
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
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
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <24f967b5-0f15-4aed-a81f-ad54f8e541fa@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAzOSBTYWx0ZWRfX2kjW/2z41i1k
 xi8bU8dkRL8fAycat3f4p3cPL+f2uORBY1KAnjbkzDwtyUWLWTCHdbp0pRd7xj6TZqqpJRSb6WC
 YakjsAru5BFjbmRWe6u/Uk3OwaCSqbYGkac95NlX0v1cRZ/XoWgIGIWARkwUH2D+kE7FcXAnKJ4
 GHPK/thTxnP3VsT3kH9BpU5IyexzKIWkhxL4/SolSvRphUKJaV7pdWVEIYA84ggb0xs8NCNmJVB
 H+kgcI3hIUmn7UuAkBS6ZWadrjWvWLAheVqBBRKqCG/pBxGiYGv7kGIDFhkYg8OQn09YLXOxe50
 04KAq9Kv2Dka0ZC/A3ujNU6R/ivrgGMm/Sw6iH90g5d5B5UIxlzt8RFVaQSzPgRFi2uJnuWaQj1
 p6hejM9nMvbJTBFfaYJTelE4+CV1MDRKzWgWj5t8pWYwIrCduWHphKMWhsqzvigeCLV5xCQ/vq3
 XAl0EGLXVxgi3mLvX4w==
X-Proofpoint-ORIG-GUID: Lmp4TWBByr6NlxqkaNOBOYz22Q1OCkY8
X-Proofpoint-GUID: Lmp4TWBByr6NlxqkaNOBOYz22Q1OCkY8
X-Authority-Analysis: v=2.4 cv=b+W/I9Gx c=1 sm=1 tr=0 ts=6982dc5d cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=YQ0tCwKMeMYZxcjLr5wA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040039
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262508-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3FF5EE20EC
X-Rspamd-Action: no action

Hi Konrad,

On 2/3/2026 4:44 PM, Konrad Dybcio wrote:
> On 1/30/26 5:54 PM, Praveen Talari wrote:
>> Hi Konrad
>>
>> On 1/30/2026 5:53 PM, Konrad Dybcio wrote:
>>> On 1/12/26 11:47 AM, Praveen Talari wrote:
>>>> The GENI Serial Engine (SE) drivers (I2C, SPI, and SERIAL) currently
>>>> manage performance levels and operating points directly. This resulting
>>>> in code duplication across drivers. such as configuring a specific level
>>>> or find and apply an OPP based on a clock frequency.
>>>>
>>>> Introduce two new helper APIs, geni_se_set_perf_level() and
>>>> geni_se_set_perf_opp(), addresses this issue by providing a streamlined
>>>> method for the GENI Serial Engine (SE) drivers to find and set the OPP
>>>> based on the desired performance level, thereby eliminating redundancy.
>>>>
>>>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>>>> ---
>>>
>>> [...]
>>>
>>>> +/**
>>>> + * geni_se_set_perf_level() - Set performance level for GENI SE.
>>>> + * @se: Pointer to the struct geni_se instance.
>>>> + * @level: The desired performance level.
>>>> + *
>>>> + * Sets the performance level by directly calling dev_pm_opp_set_level
>>>> + * on the performance device associated with the SE.
>>>> + *
>>>> + * Return: 0 on success, or a negative error code on failure.
>>>> + */
>>>> +int geni_se_set_perf_level(struct geni_se *se, unsigned long level)
>>>> +{
>>>> +    return dev_pm_opp_set_level(se->pd_list->pd_devs[DOMAIN_IDX_PERF], level);
>>>> +}
>>>> +EXPORT_SYMBOL_GPL(geni_se_set_perf_level);
>>>
>>> This function is never used
>>
>> it will be used by UART driver, not for I2C/SPI.
> 
> Adding unused exported symbols is "eeeh"..

I keep in mind for UART, i have added this API.
> 
>>>
>>>> +
>>>> +/**
>>>> + * geni_se_set_perf_opp() - Set performance OPP for GENI SE by frequency.
>>>> + * @se: Pointer to the struct geni_se instance.
>>>> + * @clk_freq: The requested clock frequency.
>>>> + *
>>>> + * Finds the nearest operating performance point (OPP) for the given
>>>> + * clock frequency and applies it to the SE's performance device.
>>>> + *
>>>> + * Return: 0 on success, or a negative error code on failure.
>>>> + */
>>>> +int geni_se_set_perf_opp(struct geni_se *se, unsigned long clk_freq)
>>>
>>> I think with the SPI driver in mind (which seems to do a simple rateset
>>
>> APIs were added as generic interfaces shared across I²C/SPI which is specific to firmware control, not Linux control.
>>
>>> for both backends) we could do:
>>>
>>>> +{
>>>> +    struct device *perf_dev = se->pd_list->pd_devs[DOMAIN_IDX_PERF];
>>>
>>> Then, we can do struct device * perf_dev = se->dev;
>> I don't think, it is needed since this is specific to firmware control, not Linux control.
> 
> My point is that it doesn't have to be specific to the auto usecase,
> further commonizing the code.

This API will not useful for non-auto cases as well.

Lets talk on on V4 version patch-set.

Thanks,
Praveen Talari

> 
> Konrad


