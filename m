Return-Path: <devicetree+bounces-254478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF693D18774
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:25:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB47C3075C97
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:22:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F577368291;
	Tue, 13 Jan 2026 11:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B6gurl8j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XhkPiHcA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9E0238A9B4
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768303356; cv=none; b=iulhcIbxElzXR8sRfeNKo+SbjlW+MbRo++KLRnlc8XbdQv4swQakhKfmk+q9x3ZNkNkLdGMRUzkjs1cQdMC5Nkq5woVqsUE57mWyCiqAkUfdhIMQtabOQaNGNjiMD0IS+3/ZgsI5tuB0WBtgiV1RYwrGG0ycSJH/OUfillkb7fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768303356; c=relaxed/simple;
	bh=T47M5BOx0NYaQZXb7GgXSdLBQN6PrUsMDoU7SPKZf5I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qjy3r9F/IH/+utjR2yl64VCjwJ6Wy/TDQHjVpsDxfLSGpydWVxPUGUlmWL9YJtD8xP043PTc3l4OZ3Wg5lusBQUJ6NolI0WlbuC6IW/UwQpZT2bI5n4vGRe4LCibiHlIn/6IQdQLmszPME2pf+MFROrs7MlnMUMzuwLRKeWuM3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B6gurl8j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XhkPiHcA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D58xqq2834936
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:22:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dmirMqg+0HEne2H7yWGTi4gRFET9ymKDjz1CuwG4xTI=; b=B6gurl8jXBLPQFe/
	ErFJpi3OZPTPApZr08hQ/Lbs/OIDSFrTTNGmFlnUrwvN7kkVjl4DLX/beoIVJXhj
	tTzHN/AwcWnQtWolrXGFJAXd7oa96ZQSywdW0awnvNK5L9y8haZe9uPONuZrG2n/
	CfXmkJCqcFH6d0SgSCz9PBSNScQtTO6MAbSdS+kOCjI08fPYRfYm8oSSimWa8coN
	FTFnu+EtPRr9H7yEqg3hbE23nzwGEjjqZXeoN4PB4Zr6HKHWiaXg4YHDg1ZWbmOt
	eUH4ODiM0jNFyp+2sVI81PGT3T11GrniCwFqNQmoc7cdswQ6UybOe+nDy9L6NGVi
	F2xw7w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfn9s4aq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:22:33 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b5ff26d6a9so154958785a.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 03:22:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768303353; x=1768908153; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dmirMqg+0HEne2H7yWGTi4gRFET9ymKDjz1CuwG4xTI=;
        b=XhkPiHcAObBnIeP4wbi2YWFAs1NmTO4t5gpV3Q0X+iSh3kA2qICCCW5Q8pYpNcM/hh
         2xjlD3Xrx39DSTl3f58nyyv9SHOJhHxH98VUCSdikJmgspbtb9TLFFBOB/oOkSxl0wtO
         Q/nPZQ8iPn09SqBDybDdgfbjY/kdFLpWR1vCEnlIljGwp40ezNaNqtq9SFveV331ix2q
         sGT67aGIAFynLt1UY7GU1lJns0ydrZaPp4aPCqfZZ5WNHqs/s+JaD9tMa2rWe+1WsW2p
         t+MzWsjKis4Pp1TB2/NXLm8U2ZrijZaA8pt69diH8P0gZ6Z8qfA6hPf82wZBo/mjD9rm
         x/Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768303353; x=1768908153;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dmirMqg+0HEne2H7yWGTi4gRFET9ymKDjz1CuwG4xTI=;
        b=vLpYXBCgvz+1uW0E+MysHELrntEnJ5emiTZOmHJFxdx1dUCMJUwuageR4K0xfm8RKn
         4qfwPYo6NOCSFSZMZQG4f8b9GAouzH9BitYrpT3igfe7lCFQzG8kWmlJXoelTRyYscVB
         +TYFjhP2GmgmlePBeLCD/o2Efi9rRujCA4ZnngqMFy0VyPlh0VEM1S6IOf1hfx4/RuUZ
         j5+xIXxWpBFNCk27L1SnOMXbSxI20PPATR/7SJ+hKip2i3KAMg4aTiIGyDdQP4OWDOJN
         xLwckUEh6iWW+taFfEGifORluAn+woTlyOGHQ7AAQ7EiOTmkDocLgF/mkp18S2MV+HNJ
         BpyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVG2gHmPMgoZnPJYPo5wntKhVowvFU/TYwxh9DfLlZlJBTJ8GN+x6h6YLIftkKd1UETcFNUPNEWDJ0a@vger.kernel.org
X-Gm-Message-State: AOJu0YyFq6QhlY2VswgJd8RP8D5n8WdbfQFa/+kGDqQ5Y/WpWcLaTjAp
	TjVCeO5NLFQ0BriFR5Sw9oPOxSNLTX1IW/Sq6ESS4owlVlehZ91nxXw5FgkKxHmHHomM6YT4PGY
	JTg0DzCWg7NUHGJHkRksxDsV4rh9nfCEC4CISKLv0krwh8BPjtQPr0lA2upe8PMqY
X-Gm-Gg: AY/fxX5qvsLxvz+rK536gMg92pj8ePatjASH1dmNjnXnPI9pD6kkAcTIRFQ8Ormc4XE
	5/HCPAhkrLs1gZ1qT15YzuR2PrrcIgh5/QpNE5lCElZebTTHRUEIM8ydDWe10KvdSj0HwpSv+DK
	VpMtPXibmqzUa8IXXw3TQI2tE2dtpphbYxrHZTeHaYTvDWnglmj8bvucUk0JZXArTYzQxO96+Pl
	FTisVaDgd2exQxHE6Oa3q2mcdhjMbdE6ntyarfuWw1qnpQCUpcOFfqAn15ZdYgkis2D1jQbjF6d
	jvOApd/Ng1VIvpivkbbbIWbds9uPRlmTXj+V1HgrZamupXqsikCvQ3VOWzfSlAeR60axqLlvQzE
	gQW0zS/4OQOkD/gRXWNK0yAg47SEqAWNEz6bkdWXrQn3796Rtsqj8MwcnkKZqylchrAU=
X-Received: by 2002:a05:620a:2996:b0:8b2:ddd3:adae with SMTP id af79cd13be357-8c3891c4ba1mr2197373085a.0.1768303352769;
        Tue, 13 Jan 2026 03:22:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFuiQ117OrzAO52ZictdOqeJUsMS8JFdl8InkhlOQRIxCaa04oXjbcibShpfVZ8Nof3acUY4w==
X-Received: by 2002:a05:620a:2996:b0:8b2:ddd3:adae with SMTP id af79cd13be357-8c3891c4ba1mr2197369885a.0.1768303352208;
        Tue, 13 Jan 2026 03:22:32 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b844e46ee63sm1750147966b.15.2026.01.13.03.22.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 03:22:31 -0800 (PST)
Message-ID: <7dd40fb6-38a7-4e29-823b-5c0b2c66e3df@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 12:22:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 7/7] qcom-tgu: Add reset node to initialize
To: Songwei Chai <songwei.chai@oss.qualcomm.com>, andersson@kernel.org,
        alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org, gregkh@linuxfoundation.org
References: <20260109021141.3778421-1-songwei.chai@oss.qualcomm.com>
 <20260109021141.3778421-8-songwei.chai@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260109021141.3778421-8-songwei.chai@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: IzvgXEmb929nxoLysbQxjvevs7IDw5cX
X-Proofpoint-ORIG-GUID: IzvgXEmb929nxoLysbQxjvevs7IDw5cX
X-Authority-Analysis: v=2.4 cv=HN/O14tv c=1 sm=1 tr=0 ts=69662af9 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gBwiB7GLNlbp3mpgxAkA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA5NiBTYWx0ZWRfX79VQJJ6auArO
 C5A3SU8eOz6VmQaxK9V7P876lG2Bg0KwQhNxwSa4BayNEQIuLCX5tqOJztYpnFf8iw5ZRc0ItHH
 humrixNhay3YeuuSWR3xuSL3cGTjQ49LL1qLNTkEveFPuhwwlCr+MzOVKw21mGa2TbRhmS99Tfc
 WOMmJULhhUEzfPscKyYJnuzlRlDCWBFKBvUaLg00xC5cqroM291rkq4EOhfDtLFouvCO07ubkWP
 QkhyDHSfLQucmw0ua915jHiI76XDR08rsv7wNJC3n6b547F+n800b7YtdTiCLUASrkEeen1SjtG
 i3wTqoBN2XZD+wF/4OCmBKsid6gWfe9WEFmGLR+Wc2qwIrh2kXLDVZzam/aHduKPoePCFOK05k6
 KATBoAaChPysAUxtV9siPCDDY9gfcFFLd7RUad0mACC7Mh+MLgTN4iRPLfu0BnEplV5hIJJmepM
 1X46yq5SuxwPtahOPRA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 suspectscore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130096

On 1/9/26 3:11 AM, Songwei Chai wrote:
> Add reset node to initialize the value of
> priority/condition_decode/condition_select/timer/counter nodes.
> 
> Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
> ---

[...]

> +/* reset_tgu_store - Reset Trace and Gating Unit (TGU) configuration. */
> +static ssize_t reset_tgu_store(struct device *dev,
> +			       struct device_attribute *attr, const char *buf,
> +			       size_t size)
> +{
> +	struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
> +	unsigned long value;
> +	int i, j, ret;
> +
> +	if (kstrtoul(buf, 0, &value) || value == 0)
> +		return -EINVAL;

Your documentation blurb promises that only 1 is accepted, but this is not
the case. I think the previous additions had a similar flaw

> +
> +	if (!drvdata->enable) {

I think this check needs to be made under a lock, otherwise something else
may pull the plug inbetween

> +		ret = pm_runtime_get_sync(drvdata->dev);
> +		if (ret < 0) {
> +			pm_runtime_put(drvdata->dev);
> +			return ret;
> +		}
> +	}
> +
> +	guard(spinlock)(&drvdata->lock);
> +	TGU_UNLOCK(drvdata->base);
> +
> +	writel(0, drvdata->base + TGU_CONTROL);
> +
> +	TGU_LOCK(drvdata->base);

This is tgu_disable()

> +
> +	if (drvdata->value_table->priority)
> +		memset(drvdata->value_table->priority, 0,
> +			    MAX_PRIORITY * drvdata->max_step *
> +				drvdata->max_reg * sizeof(unsigned int));
> +
> +	if (drvdata->value_table->condition_decode)
> +		memset(drvdata->value_table->condition_decode, 0,
> +			    drvdata->max_condition_decode * drvdata->max_step *
> +				sizeof(unsigned int));
> +
> +		/* Initialize all condition registers to NOT(value=0x1000000) */

One \t too much

> +	for (i = 0; i < drvdata->max_step; i++) {
> +		for (j = 0; j < drvdata->max_condition_decode; j++) {
> +			drvdata->value_table
> +			->condition_decode[calculate_array_location(
> +			drvdata, i, TGU_CONDITION_DECODE, j)] =
> +			0x1000000;

This is unreadable, take a pointer to condition_decode[]

> +		}
> +	}
> +
> +	if (drvdata->value_table->condition_select)
> +		memset(drvdata->value_table->condition_select, 0,
> +				drvdata->max_condition_select * drvdata->max_step *
> +				sizeof(unsigned int));
> +
> +	if (drvdata->value_table->timer)
> +		memset(drvdata->value_table->timer, 0,
> +			    (drvdata->max_step) *
> +				(drvdata->max_timer) *
> +				sizeof(unsigned int));
> +
> +	if (drvdata->value_table->counter)
> +		memset(drvdata->value_table->counter, 0,
> +			    (drvdata->max_step) *
> +				(drvdata->max_counter) *
> +				sizeof(unsigned int));

This is similarly difficult to read with almost random indentation

Konrad

