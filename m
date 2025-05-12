Return-Path: <devicetree+bounces-176408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38058AB3DD2
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 18:41:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D8108866870
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 16:40:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABA4D25333E;
	Mon, 12 May 2025 16:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JLWsQO1z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4BE2528FC
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 16:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747068043; cv=none; b=A2B0gRcg1S3pw47xlrDSiLQkO3oKv2ckjTLQH8NLskqPaTw4rJUJkO0q/4yZGgYGDebxcIkO3i50PjQcDpJ4cGlDkc5Msm9r0I6g7czSL7ngAm0d8azs8QHsXCF/ilfXN6Yki8F/4Lk02dqbCqZ/mhY2nJ5Mh1SmOGnQcK6FilY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747068043; c=relaxed/simple;
	bh=IBYs0W8saUAyKuZtsz6A9gS7i3ub4vw3XW/jT+PXSus=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YPYlGs1LPlkuQ3aESSef6YK+2AnXrRnv1btqQcZkMLCham9gsS0cQdCvEr8pcaNgQ54OViHvKioNA2UmWit78/DssqNVZbGgrO5IdXdKwXcSJe0IT9C/aTU3Con8yFws9jHJS2n0wHiExEYpbJEEQ1lsOdndB8o0Xzg/g2exfiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JLWsQO1z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54CCwAHm029278
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 16:40:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kr3jWOCGeen6mhPU6fQ82uGqo7KISN3OGotI9WEfvvg=; b=JLWsQO1zK5h+kY+3
	XgMugpyth20ltJzSLsi4BAavGHPJ7W5PKT/gAoHNW461/cYPAnIr4xQv8KMsSn/e
	+oKmNPd4D7B/F2j92WHykFvslMQ5BWUUsvHzTtl2UZy0bAEbpcMwhg3nrfKVn+b7
	F18qCj7u4Jk+6R40GikdoBn2iGhTP0mDBLaq35T3PXtvuBUniBUebVabz1H87XUe
	QcatAHQP7nUhbDmgx0hdZ6SSUbEsZrO+B1M6f023V3pLH70taUWrYplSglw67tFn
	wX5Of4Nh7+WYBYNTWQxRWeupBddVxn1akWstUbin948ZK2s2KqEL788oJ5jtXuzo
	aEI0cQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46hxvxd024-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 16:40:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c54788bdf7so40077085a.2
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 09:40:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747068040; x=1747672840;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kr3jWOCGeen6mhPU6fQ82uGqo7KISN3OGotI9WEfvvg=;
        b=aA79N9bEfma51nepkQ8JxQFvPEchetVYaV4RfHWbmUFRq3WTNoGIjbwqTE1qZWlHAu
         iDIDUR0s8p+PIDG9ZfLiVW0y2dhyCThUy5zGJUCQ7Y07y0FSqhn+FN5Fo4LsVaVkWxZ2
         07cAbqXqXLx7ZXJAHKLXDMwEgxtsG1M/jOz1dncezrwT1J4h6ApgnXcI4iU1ZiDWvf8Z
         jlCde7Np7eUtnx6AbimOUGbLm4YcmvolDd1SWJ0y1z6BlaMA61mDy4eJ3GzRxGNYUbhB
         X+kC4pl3D8hAcJ5op1h787tuanPFV7e5HlfgAgVtYzHJVjTXPL5Z6cA66wkh+tTinBzH
         6HPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUn6V0rP4qCP/U7rlEOD9YrMs3oJf3sKTa1UiHg/MLjk3b+rUZ71sMXEmdkgLodmM0owil7oTH7oRa1@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1OE6tgpvzDTdIVcqiaoAJDe+e05juikp7xptWz1TY3bCfBmXd
	MH6ttdw23k7EwdTjs8a2eKGqJsWg/CBxGSxJb5qoADoiWnneAPiVVj4KO06sZNJ6IU7MJKCc0w3
	XV1J4XHhnQVS7UJeVF03s3jL1B7int4DJnlvaHkh3zSEpGF+1OpzWGwOOkWL00EsfN/ro
X-Gm-Gg: ASbGncv+V7CU8otg9BLJ/Gi7cEb2uyti1lg2B6R1iKIGba/R5f38jRcOsLaBRc4OHKA
	qWCSSqc5OimaaO19p3DgmmBUQ1f9RmN+ndY5SWXod84kULii/OBysHbaq56nxeuNv1eBBZ7RzkJ
	WKu2MXb5MecMiMMPdrjGp8WrQbErkV4vDbfa6IXiii/JQj2qaCBirDtBioE6oTW4JZg4mu3G9PC
	530Or7Z2v55uUu8ATgvpFlTLo80yV2cdrNqXFhsgHPsT5qXERP/HcTEq4NIOvYj4rJ3f82pdLWm
	CO+qaIi0M0hBU6euHUJpHxMLmcFBru5YExlHKXKkGq/NlUxeuD+rNw78bax0v/y7YPc=
X-Received: by 2002:a05:620a:4442:b0:7c0:bd67:7dd9 with SMTP id af79cd13be357-7cd0113e87bmr724492485a.11.1747068039523;
        Mon, 12 May 2025 09:40:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYboUn9LFZ6zKugg484tI2Fmt+H6eRADnHp8J2TCCgkIo9QNbZ938v2XB0JB1jPwZubnycuw==
X-Received: by 2002:a05:620a:4442:b0:7c0:bd67:7dd9 with SMTP id af79cd13be357-7cd0113e87bmr724490685a.11.1747068039202;
        Mon, 12 May 2025 09:40:39 -0700 (PDT)
Received: from [192.168.65.222] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad21947a13dsm638882166b.83.2025.05.12.09.40.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 May 2025 09:40:38 -0700 (PDT)
Message-ID: <3c7ddb25-1d76-4f85-a058-abdf887dc0dc@oss.qualcomm.com>
Date: Mon, 12 May 2025 18:40:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] coresight: add coresight Trace Network On Chip
 driver
To: Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: kernel@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250512-trace-noc-v5-0-f2ef070baee5@quicinc.com>
 <20250512-trace-noc-v5-2-f2ef070baee5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250512-trace-noc-v5-2-f2ef070baee5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTEyMDE3MSBTYWx0ZWRfXyaHrqLOUDGmS
 fX8iP/oiIY66oVqYSnVQn66tD8g/j3J39KkVL3101clTIku5trBVfSrVElokNMbcQfuNkUhtUrj
 uKE97QPKLZriERWb+1SQ4t+VaW+Q/m9S6Nr6B2ScJ9EqQjWSTzRCminEkz4QmqRfGIfVqRdJ5mD
 Knzp1s5cmr5uDDpk0/+hTJ24+ahiFmPXSLAJzx+O2Z6KmG4ceHLD/nuyapOIFyRdI+MB3G4FnBZ
 iCcCSgqfX2VNHW/3kqLaAbaQt5yb8nqrunjudypcTMLwcRKkBgSJ06U4i49Weck38r5hXWe5abl
 xP6Z5q3UCJGGeqFADCOU8BtK4mcKPTFDiabnXe8ueAdOM/I34wXQvOv8ci0ZUhgmpWpb8geqst8
 QyGkwp10EsDiThe+kfJECMD1oUjLg+Lzo1/5UJ4h/rqpGSHX6ApJxlSRkS1hXxSZVFaSCxhe
X-Proofpoint-GUID: ByzPsQbTMURqX0KNKOgb5CRdd4gP42B4
X-Authority-Analysis: v=2.4 cv=WMV/XmsR c=1 sm=1 tr=0 ts=68222488 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=IWLDPTm1b9FEelM1JeoA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: ByzPsQbTMURqX0KNKOgb5CRdd4gP42B4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-12_05,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 impostorscore=0 bulkscore=0
 spamscore=0 mlxscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505120171

On 5/12/25 1:10 PM, Yuanfang Zhang wrote:
> Add a driver to support Coresight device Trace Network On Chip (TNOC),
> which is an integration hierarchy integrating functionalities of TPDA
> and funnels. It aggregates the trace and transports to coresight trace
> bus.
> 

just a couple nits that you can feel free to skip

[...]

> +static void trace_noc_enable_hw(struct trace_noc_drvdata *drvdata)
> +{
> +	u32 val;
> +
> +	/* Set ATID */
> +	writel_relaxed(drvdata->atid, drvdata->base + TRACE_NOC_XLD);
> +
> +	/* Set the data word count between 'SYNC' packets */
> +	writel_relaxed(TRACE_NOC_SYNC_INTERVAL, drvdata->base + TRACE_NOC_SYNCR);
> +
> +	/* Set the Control register:
> +	 * - Set the FLAG packets to 'FLAG' packets
> +	 * - Set the FREQ packets to 'FREQ_TS' packets
> +	 * - Enable generation of output ATB traffic
> +	 */
> +
> +	val = readl_relaxed(drvdata->base + TRACE_NOC_CTRL);
> +
> +	val = val & ~TRACE_NOC_CTRL_FLAGTYPE;
> +	val = val | TRACE_NOC_CTRL_FREQTYPE;
> +	val = val | TRACE_NOC_CTRL_PORTEN;

FWIW 'x &= ~foo' and 'x |= foo' are what one usually expects

[...]

> +static int trace_noc_probe(struct amba_device *adev, const struct amba_id *id)
> +{
> +	struct device *dev = &adev->dev;
> +	struct coresight_platform_data *pdata;
> +	struct trace_noc_drvdata *drvdata;
> +	struct coresight_desc desc = { 0 };
> +	int ret;
> +
> +	desc.name = coresight_alloc_device_name(&trace_noc_devs, dev);
> +	if (!desc.name)
> +		return -ENOMEM;

it's good to add a newline after return statements

Konrad

