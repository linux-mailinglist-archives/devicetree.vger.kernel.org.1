Return-Path: <devicetree+bounces-197296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC19B08C2A
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 13:55:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 811F47B4152
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 11:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB1542BDC15;
	Thu, 17 Jul 2025 11:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jAt0LGkS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E1A2BD582
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 11:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752753154; cv=none; b=oX9IREEIr9KCBJvtCeVyq5JPlCCzgBvI8cpHLqkuYtPquRXh/FaqqhCWXpXlVUdPkHuGzlPPmQUC2wU0p+EoAE89eSpTvgHTwE4phT4wmTF0zAHAWUQn3+04A3uPyxIc32rFxIjnLqupo4/eaICdKyChKnwFWHQNwWPNe7JVHqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752753154; c=relaxed/simple;
	bh=JhYxfdlFBrgBJs/tk2SA7Oedtf+sGKDg3q3NMifzV6c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T5Tzg0dZtx6/kpQPTaImjC5lWfAEgBYUJp8gKI2UBKFIsjzrN3WKFFm8MWkP1K7J5pPz7SBhuuG90VPAL4Jhp3BI9VGdAy51KD2/RMPdUhATe3lS9PZhRXy608P8TZaC1/n4oozyQLn7n8aweXmmJU3GubeiNmKpZDQK8pfXuv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jAt0LGkS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56H4at3O000572
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 11:52:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WZVGQnL5TZo99a4mnnswTTOdpwcB5rmoTJT1t4G0z/I=; b=jAt0LGkSBPvwMg3V
	FvC9NZYuq2vosfYQDNrxR9Y7DZPBHxBFTmPd/UBx/Td2R8TKg1jwg8gOMIwOx+MU
	A3h1+Fj5rymhZ5wKlwJ0BRIMoqB01E5jXC996ekTd9mupCtAfVWgh9gxG2iQaqtV
	FW5lADnuCsAKof2+kQ6JJ80/0M1yNbQWj0D1gTY37+64By3DgGvLpy9XUlHy4eeF
	+OxsIMYUoMlDyov8+/le1F/rL5Z4uX8eXWSvjdi03Qb6w5zvPDYjKUwJUETJyN1T
	CS4K+XcpeOQSg/XNZk51Wp1Y41sh8N7am3UgY6Oh3j5bxgAxvTfw/cvtowWoZUam
	sout6Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5drthcg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 11:52:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ab3bd0f8d5so1058461cf.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 04:52:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752753150; x=1753357950;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WZVGQnL5TZo99a4mnnswTTOdpwcB5rmoTJT1t4G0z/I=;
        b=FVPL3kVRLLP/14WLOrneoyUiVEdPmTGBh3lWcfz+pfAmuI1lYBGbuGH1C8QywEcukw
         36CtHI6YgJhiXYZ8/mhAAnwb8vpnD0YdwzGdI3YKWZ8GRZvUBDyNOV1g9yilCtVX5I6o
         ToVOWCBVtIqbQzPMvDTyRhQtnEw5+hWqm+LyhG7DJphAsZgqTZaXzoRPHCIdURd5blkn
         D+4JJAdYFU9PGC0s1w2+xvvpMUUMZjWI5IDAlh0lJck0rdx93I1lYi0q5b7HsLjeD2hj
         diqzm99XCFld3uyt7cnvrkKkKvXIKa9Lpbtr2bsbTH9jxeDEqn6+7qWINfs6XiKcS7M9
         rfqw==
X-Forwarded-Encrypted: i=1; AJvYcCWaLwFq8reKrZLdajATDw+C8RtJFEIGLMqxDZlU6LHknQlkTBD+b0CyD3JESUuKhhCY1Pr5TewdARKa@vger.kernel.org
X-Gm-Message-State: AOJu0YzLR3sFPwYtK9X1HsXo081azMjCH0PDGKTBb7PbISfwv6qC32Of
	R78kNHMZV1FAMAvXm0t4/nOMF2mqXjqvWZs7EfBlwfOJd5GuP7+wvWr36Aajgdm3wG1taBOvd48
	/yxqlNLDn7n0MHL1wIbq8sA0Se9HkgWce7OashNRGP/D7RxxzrwRmqoY/EcyDcWM3
X-Gm-Gg: ASbGncuf6ZVYbzub4LwH+KV7CGm2iNtqRC2w/swgM2HzUOznUwfjnSNGghNzb2xC0nb
	vnKs2izxeSlvZOOH86+x8wEAa54CzshXVWVbStTUBUV1Rz1unB5mMLuXAnkLlSvnsysiO680cRS
	efHy/ujk3bxfyMSWQtuoXwWZ60204wBHUavuBXL9U6Sdl5xS8xsAowm7A4NtFECjkE66isYNcTx
	qqFz4Z6UN/h6I9Gxc3dLiSSDvKrEJ0OtS4jCpcLcZwlF9kV00iQJspL1TX/B0t/Y8EOA3JzRafp
	Jg1AFzWweb53CZvUwVtzaCjMaMDbcPlDATSTd+SxYMiGAZHQVRTlUet6IzxDEEOn2FGSGzwoqPi
	AiD/7A+RhSip59bGlgqi9
X-Received: by 2002:a05:622a:1889:b0:4ab:76d2:1981 with SMTP id d75a77b69052e-4ab90a4e458mr45118381cf.5.1752753149733;
        Thu, 17 Jul 2025 04:52:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEuOt8ES7BujIafZFzB0IDxfkg7AjYigc52yOQaSQVHFHTLySwxQnQewjoSqSZcB6Uo+8EkFA==
X-Received: by 2002:a05:622a:1889:b0:4ab:76d2:1981 with SMTP id d75a77b69052e-4ab90a4e458mr45118231cf.5.1752753149235;
        Thu, 17 Jul 2025 04:52:29 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c9734069sm10024385a12.48.2025.07.17.04.52.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 04:52:28 -0700 (PDT)
Message-ID: <e69e6128-3f50-4bd3-89bb-09d7b237a568@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 13:52:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] pinctrl: qcom: Add glymur pinctrl driver
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>, andersson@kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250716150822.4039250-1-pankaj.patil@oss.qualcomm.com>
 <20250716150822.4039250-3-pankaj.patil@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250716150822.4039250-3-pankaj.patil@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: rHeh_T0cnq8rVudxs0p_vimZYO9fgjls
X-Authority-Analysis: v=2.4 cv=D4xHKuRj c=1 sm=1 tr=0 ts=6878e3ff cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=-TUSC38FYRssDIeIjfMA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: rHeh_T0cnq8rVudxs0p_vimZYO9fgjls
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDEwNCBTYWx0ZWRfX7bFWy8fO5jgL
 5sSFIIN2wYqSw2RCr37meprHipQH/WUqN7n3IJ4EMWKkpNjAibj2vWtNundyeCW19VQbCXSzIuF
 LLOMtdqKatxU3usMTZswuAC4CgCHcKxsgWdEYk5QJIW8FqHAGTqEqhCqdysMLo9w0uZXqkDRHxk
 XNxomQZGv9DYPgtXOj7kt70usQvCsv6UYXsqdjfrp+A6NSDo2AweNM2+KxwwEk1dlVrJZJ9vLwU
 0ZpUrv5QcHbklU70dGDR5abk5+sVuU4WZiCl9pY0V9ArxPPbVVUC2qBPSBe+ip5RbTZA+gGQaaj
 Y7YuFf59qhFNAWaXDe0XO29B1KcPLJobL38j9mvpswWWziFWGUeV5lwE/3oafE66rgnvZ7o5ihl
 N18EgJOPb/cQJbXkW+GkHXDGv/YyYMRavRbZq7IS1Fxz2zonE/ByKv5qtTRZnNnKBM17CiwP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=987 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507170104

On 7/16/25 5:08 PM, Pankaj Patil wrote:
> Add TLMM pinctrl driver to support pin configuration with pinctrl
> framework for Glymur SoC.
> 
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---

[...]

> +	[249] = PINGROUP(249, pmc_oca_n, _, _, _, _, _, _, _, _, _, _),
> +	[250] = UFS_RESET(ufs_reset, 0x104004),

You'll need to borrow the #define from 8750 pinctrl

and then:

UFS_RESET(ufs_reset, 0x104004, 0x105000),

> +	[251] = SDC_QDSD_PINGROUP(sdc2_clk, 0xff000, 14, 6),
> +	[252] = SDC_QDSD_PINGROUP(sdc2_cmd, 0xff000, 11, 3),
> +	[253] = SDC_QDSD_PINGROUP(sdc2_data, 0xff000, 9, 0),
> +};
> +

[...]

> +static const struct msm_pinctrl_soc_data glymur_tlmm = {
> +	.pins = glymur_pins,
> +	.npins = ARRAY_SIZE(glymur_pins),
> +	.functions = glymur_functions,
> +	.nfunctions = ARRAY_SIZE(glymur_functions),
> +	.groups = glymur_groups,
> +	.ngroups = ARRAY_SIZE(glymur_groups),
> +	.ngpios = 250,

251 (0..=250, incl. ufs reset)

Konrad

