Return-Path: <devicetree+bounces-234934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE79C325E0
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 18:35:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3FD4B3B0BEB
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 17:33:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 556D5338F5E;
	Tue,  4 Nov 2025 17:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JT8C8owM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TXZCY90j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B1FB3385A0
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762277635; cv=none; b=arj8F4kVwYUUkUq/nLkLI3F//HJoQya3fzsZEcqLsasOOtRY6MHm34fqRJj4z60T/dHOVGIQM8lBPRKxBF9uJEyg+ZWoTFXPo8fcGGvWbu6/MvKIZWeCz2A0uuIoaYL4kK9fVKcgQhFlU9KWAMztw7DC04oZtB/x+lNwQOhVQcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762277635; c=relaxed/simple;
	bh=KFvjz0cCCOJBoQSCD85u71EH/JU99I4A+NIvx/VMOTw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eTKB0Uyl5pBwrNQ1l/rV5mTYMuSXj+dMoVY9wixoYxEDdlx5dcyYCxlHMR7Qs801mM/icGWd6VxBZDkhMLMtXkiuHlt0zMPlnuRkvHfBp0XS7eRITAh7W2cdEOZ7jjZOuDklFbSAoOJRT1RKZo430wNB8jpDvXYXUOoaFJZ//OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JT8C8owM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TXZCY90j; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4GgJb22552169
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 17:33:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aqZ9yfny6oAzxmXiKferFQ7liegXvYnBU8DVU4CAdfs=; b=JT8C8owMtH0dtdHH
	avdy3GC0PGU1LxkxoWlxeDOyeSmhOpkaDYO0ri9ia6WpLwKPnm5TLRVXS//kfZLY
	9iVeJ1jSEgmJESSbwKKUNaICoteG8XMxGyMwH/1zEk0HtJFyNE29KQ803TnqWO92
	OfGcLP30SERbqZnNOhCHU8+F15a3qydKi22eWRQbKU1Nj+dYdGjzK+p4sJBq9zIQ
	+T0gtYnScZNvyFhfnz44oABNHchzgurNd6UYGClUN2PeExbvB74fgtNSEOjmNpKt
	q//87dZeux3nPufYMT/2vi3EWyxZO+Zaek1nrqG2tfJ+79NFEtanPu8sSn+/xxui
	S0A82A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7f251b6a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 17:33:52 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-826b30ed087so18723296d6.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 09:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762277632; x=1762882432; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aqZ9yfny6oAzxmXiKferFQ7liegXvYnBU8DVU4CAdfs=;
        b=TXZCY90jLOCK//3gnwcP+U8paekG/zN4GjHY6Dsz6wW2Zi+72zTw4Qv3VJ1Ha4oCdr
         kO/W322us/EcivWBSNxL4CdlIkqL7+y5xn2eJ9i9024K0f6WxeMx9PvRlELmJkNsQ3P0
         NUkEyx7gx81Mn3eumQNLYOlupcLKbodtaSviuwp2WueI570yHP8v5CgSUDL72z8dozAC
         6pANdMvs3g14MjhvAkeinLpl7xZ5AM7TPfghZtI30MZspp7qyTNXb9P8WqFhw6YIs17N
         o/dcAMXjhUDR/emdKoenL/dpMaEnR9n96yJqq+HMqkjA3arzJkMg01Q4do3+5x9hu4wk
         iW9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762277632; x=1762882432;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aqZ9yfny6oAzxmXiKferFQ7liegXvYnBU8DVU4CAdfs=;
        b=BNar7o6dLjrctvdmeRQLJ93aPbx3Z80saiLLl0uTlGa6bh0zZJPzhfHmjPstpIA54T
         /z5gJXEjxcEnGtWvlYw2H2R/1J2qgNtkMhkXn8BZRrnxW4wGpZ/ksoahClCFcBJ5hlGm
         /qJrXByfylf7SdQzrsIOAWjdMJCU+wLtqPEegA/hkpLvLaCA944cYwffjrFhYc+B/gO9
         SnMkbT7Y7dnbz8t4yF+MDOr/MAI4Ij5JtREyfjo0W1jGu30znKLEeYKnhAGNtaPjI1/J
         ga/VZ1Y5OmeKnoVZzRLzmyJmgGHLvLv0F3lrthEzSDDEZtY12yZCXjp/rsa08UsZfaMp
         gpxw==
X-Forwarded-Encrypted: i=1; AJvYcCXSe9s4UZwaTJvqT3jSyKjYcgO7wK960xiUitnJuZ5WbX7IWUQtribwJPnqZLQX5lAeV3MrPSQPzc4I@vger.kernel.org
X-Gm-Message-State: AOJu0Yzwy5zc9WCVtW4w7gfK47ADKFBdYcERBKENz2etUXQgPEEeBT1p
	5tdnbNkZqYyxmEUuBs4tXGuOX3Q8hxgsn11jsP5m/6BpA6EXhSLke0qyLT/ltSap+JwwmAEVh9O
	gudVBK5RMLUib7FP24SIvw9Cp40RqmkUKBfvUJ0Vu1uDKusL3kL8L0yiLOGhur6vz
X-Gm-Gg: ASbGncufbtZknj9n+1kCGJekXsrHP8dLBUVY1S5mFu6vi3DusG9IU8Zi9Uz1U094jKU
	MjV9wyURXyVusBYcih0iix35448LWmbtRfjIA8B9OB2dL+HyMp2CPdzfksvt8g9Hw3aEoUIJwR4
	V7FYWM0rdCQlWV4hr9Y8hTKu6QG+24lvfezG+ISpShaPgrwlQ2wKAHa0qjQb0obETK5kQg5r/Zb
	4KdaIB98mIE8ptEl1tNSqtiH5kEzQpRgAo+KFpc8qxS6D5uuHgR0MSTMH70NXuoOcFwhCj81LmI
	CJb9jwL/sKsYu80jnjZyK/QWJqaxNDR0zEGieTyDEn56DeytEFIjxrGk2f4jLJHF2TmDOGAFZ67
	2hwsCMLaw/Bael2fMry2e5g3+TjcBMpDwzOcEA/oPms1Hdy50KgHe/+KO
X-Received: by 2002:a05:622a:306:b0:4ed:1603:9504 with SMTP id d75a77b69052e-4ed719128a5mr3277231cf.0.1762277631779;
        Tue, 04 Nov 2025 09:33:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGW4Fzu7h1aS6jL7fg0IN2U5tLZI4K3C0D5I77oLa9b8QEcRdS4uAvBjPC1sDrWLjCqoMK2uw==
X-Received: by 2002:a05:622a:306:b0:4ed:1603:9504 with SMTP id d75a77b69052e-4ed719128a5mr3276881cf.0.1762277631241;
        Tue, 04 Nov 2025 09:33:51 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723f6e4089sm274335066b.44.2025.11.04.09.33.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 09:33:50 -0800 (PST)
Message-ID: <fc8beead-566d-463b-aebe-407429adf156@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 18:33:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 05/14] remoteproc: pas: Replace metadata context with
 PAS context structure
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
 <20251104-kvm_rproc_v6-v6-5-7017b0adc24e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251104-kvm_rproc_v6-v6-5-7017b0adc24e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dNyrWeZb c=1 sm=1 tr=0 ts=690a3900 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mTvibLGk-GZogn_PrgYA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: tSoLjRfUaSvCreOy5fCScFrA8KKYH2cS
X-Proofpoint-ORIG-GUID: tSoLjRfUaSvCreOy5fCScFrA8KKYH2cS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDE0NyBTYWx0ZWRfX92tGdlYFtbKW
 rXvXtHNgOJOlcBxoRypVnfupRO7WRybKQn2ay/3vvLyzSGOYevtsHFgpNViuL8vhe2SWzElGO0Z
 48ZpjRSI12UNwCHkhuQ4C2MrdhMumCD19OF6In1cdPDA5t0PU+YKX6wdDMHtfaZ+bI203Yw3+Xt
 8lqSswzYQAPDdJfenod8QQlxMl1h9g49CYbkhYujT6dhVDd3LYNWHXI2WbS0NPztQA7qwqaZ/4R
 ReNNJikvI5JgLzbRJN+L+6Z9UmhwEjYN4t4DLq8nD8Zixfm7uvmBcE87EpPFmBHuvAeujH5HBoe
 WYVA1gJVtfOJqufd5512mQKjoHmuQJkJAjjS0aChPu8lEcrkI/bCZqie68+JwhqcPklZcBpBI48
 oWC2O4cyDwwycSjiHeyiFJCJmP5V9w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-04_02,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040147

On 11/4/25 8:35 AM, Mukesh Ojha wrote:
> As a superset of the existing metadata context, the PAS context
> structure enables both remoteproc and non-remoteproc subsystems to
> better support scenarios where the SoC runs with or without the Gunyah
> hypervisor. To reflect this, relevant SCM and metadata functions are
> updated to incorporate PAS context awareness.
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---
>  drivers/firmware/qcom/qcom_scm.c       | 25 +++++++++++++---------
>  drivers/remoteproc/qcom_q6v5_pas.c     | 38 ++++++++++++++++++++++++----------
>  drivers/soc/qcom/mdt_loader.c          |  4 ++--
>  include/linux/firmware/qcom/qcom_scm.h |  4 ++--
>  include/linux/soc/qcom/mdt_loader.h    |  6 +++---
>  5 files changed, 49 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
> index 5a525dbd0a2e..9cdd152da592 100644
> --- a/drivers/firmware/qcom/qcom_scm.c
> +++ b/drivers/firmware/qcom/qcom_scm.c
> @@ -603,7 +603,7 @@ EXPORT_SYMBOL_GPL(devm_qcom_scm_pas_context_init);
>   *		and optional blob of data used for authenticating the metadata
>   *		and the rest of the firmware
>   * @size:	size of the metadata
> - * @ctx:	optional metadata context
> + * @ctx:	optional pas context
>   *
>   * Return: 0 on success.
>   *
> @@ -612,8 +612,9 @@ EXPORT_SYMBOL_GPL(devm_qcom_scm_pas_context_init);
>   * qcom_scm_pas_metadata_release() by the caller.
>   */
>  int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
> -			    struct qcom_scm_pas_metadata *ctx)
> +			    struct qcom_scm_pas_context *ctx)
>  {
> +	struct qcom_scm_pas_metadata *mdt_ctx;

This is never initialized

>  	dma_addr_t mdata_phys;
>  	void *mdata_buf;
>  	int ret;
> @@ -665,9 +666,10 @@ int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
>  	if (ret < 0 || !ctx) {
>  		dma_free_coherent(__scm->dev, size, mdata_buf, mdata_phys);
>  	} else if (ctx) {
> -		ctx->ptr = mdata_buf;
> -		ctx->phys = mdata_phys;
> -		ctx->size = size;
> +		mdt_ctx = ctx->metadata;
> +		mdt_ctx->ptr = mdata_buf;
> +		mdt_ctx->phys = mdata_phys;
> +		mdt_ctx->size = size;

So this will always cause stack corruption

>  	}
>  
>  	return ret ? : res.result[0];
> @@ -676,16 +678,19 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_init_image);
>  
>  /**
>   * qcom_scm_pas_metadata_release() - release metadata context
> - * @ctx:	metadata context
> + * @ctx:	pas context
>   */
> -void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx)
> +void qcom_scm_pas_metadata_release(struct qcom_scm_pas_context *ctx)
>  {
> -	if (!ctx->ptr)
> +	struct qcom_scm_pas_metadata *mdt_ctx;

Is the existence of this struct any useful after you introduced
pas_context?

Konrad

