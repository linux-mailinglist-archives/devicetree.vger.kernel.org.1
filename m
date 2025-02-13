Return-Path: <devicetree+bounces-146343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F78A348C7
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 17:00:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94F28188AABF
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 16:00:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F151202C39;
	Thu, 13 Feb 2025 16:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HxBobmCI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81DDD1FF1BF
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 16:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739462415; cv=none; b=Mf/MuMfAJMlC6weaO88ItawtRJgBPvO6ZobdBgrLXBiHxsiEiruX7aUb3ISyI6yk8edWxhtFqzchsrt/2jvS3FT4LqkXCHOOLWIXMKNN8PigszJF17iEPxgEa4PMjcc5pFQA7fDSUALZu6HTyWdEVfwVHExHDG0cVh7vNViQm7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739462415; c=relaxed/simple;
	bh=tlRPiujx2gpWjfA34WayAz3yoK4kn0l7/eSxXnmoqwo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eaUTHyWNmZV0luxB+1CGhNmnJB9kFRQO/KH2fGk5TstiCz+d40AU5JjFHnBMRdifeGxwt03YFbY9Km4v5xXXaiDbnC160b8rNYF+MEI/BZ5ExEyLUzL3IqtZMo2Qv6saly3FzuvQMQAme7MTBm1w+6bNY9Swq04XiYr/WQ4k5NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HxBobmCI; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43955067383so7894185e9.0
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 08:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739462412; x=1740067212; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pgDN29uKkb88V0um0RfTC0vvM9HPPQBtETeV1yITKoQ=;
        b=HxBobmCIcAQ0ymsri4AHcpalrH+pOBQGNbgY43kDrm4jtgy6BsuoOPxDeKGM5+5Edx
         NQcY9QpXxIsqN+sB98XhjXydd5mZqCanQrEHbxuD67gbdVmGbTHpG35MG/xbGlGCcn8/
         GWFNGMSIdEp9khXas3Rffqz8014Z74ZB0PlZg0PoRBRtWcY/6h12m18rppOkFoN14+pC
         a/j3xFN5Ypu2Pl79RobzC/AtQf/LEdUkhnk3pkroOwMThbpX5BSKX+0ojuIZdbP0+40p
         3POCxjG/1UO253/BAwEQ/eZv1LKJ4QsAkdXepUXwmYpBKeHd/zIJHZci88Uko+Gf/ySx
         qxZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739462412; x=1740067212;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pgDN29uKkb88V0um0RfTC0vvM9HPPQBtETeV1yITKoQ=;
        b=fkUms6FEEXCKp8ZmKtCw5fiCGZ+FnoFwabbP1h6ogLrHQwWKLNe8WewKAdQmSmrz+H
         zZKjJzcD1snqImE1B13IH7DL87aYr/HzYP+QCPClFN+yD9IXMKl/IR15n9QQRh/CjdjK
         cZ7adcFLj4w5ou7J9iyCiW6eH/q7mBWICeaJ/ZYqau2INBjjvEPQvtcR4Fe6tmeF1vdT
         snotMCQ+uuAyw0eqT+HnQEMPO1gInj9NbEv8qAMT1/QSS45335rcTMjPmSR7dNKA8RK2
         9/vbMeZt01qTcNZFlIA0Jo6aYUBuIsOCpUAs+M2+AR1BtfdOCUp5kQ/064Y3IkkIKt3Z
         Ih9w==
X-Forwarded-Encrypted: i=1; AJvYcCVg736ZIGzlymkaoFJ+iqpyeHud3HrzLy6knMXt4EGCTyf2jrbmq7+Z29fDAgPqKRN5hm9ZSPBxFQnD@vger.kernel.org
X-Gm-Message-State: AOJu0YwMZl96vAzg/NNNgv9Nw7z57MUCFtUzRhbaCwLQbq1x+Q5fGJWm
	0V8tzonVoWGUCRd4MQM+YUo+ZSSZm5TzrykSRB9ZOTGRUKe8gz5asyQC5hhz2CE=
X-Gm-Gg: ASbGncs2CC4b/oOkSuqzOkOqCfnYvPokJWmUfluDaDeF1Tib4mfcriQf2iCNXA0TIUK
	1LLahqq3fvBxqxTgvaf3tQnkMYtR45DxLUm8dJBNl7f/N9Ngl92DwIVCfQ+dJpaHPXy0qgPVdJz
	gMk5nXo7wYCfINVOlUZAfrEv3pgXOn4irHQZnEURoTwpfoMsWDMMl64rUthIlGa30cL4tjpgPz+
	/a17oHlCdyjRnGli+fD0FiKqTXgM7oWccHNeK9DEf7stxqD5Eg6wfjUTroynMg4bEAdG6amEp4G
	3j+jREV+2ldWK5X8Br4pic4I9Q==
X-Google-Smtp-Source: AGHT+IF/wXtprc1U4VPmJ1pAueprsYzKR20H2MkrRTKmejrcGzsEoDZgejq84H03liicKIeACJ4WAA==
X-Received: by 2002:a05:6000:2ce:b0:38f:287a:43e2 with SMTP id ffacd0b85a97d-38f287a45b1mr2767766f8f.11.1739462408125;
        Thu, 13 Feb 2025 08:00:08 -0800 (PST)
Received: from [192.168.68.163] ([145.224.90.174])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258dd5acsm2283106f8f.35.2025.02.13.08.00.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2025 08:00:07 -0800 (PST)
Message-ID: <a633f52c-81e8-4c0d-aca7-cc18360866eb@linaro.org>
Date: Thu, 13 Feb 2025 16:00:04 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/7] Coresight: Introduce a new struct coresight_path
To: Jie Gan <quic_jiegan@quicinc.com>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
 Jinlong Mao <quic_jinlmao@quicinc.com>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach
 <mike.leach@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
References: <20250207064213.2314482-1-quic_jiegan@quicinc.com>
 <20250207064213.2314482-5-quic_jiegan@quicinc.com>
Content-Language: en-US
From: James Clark <james.clark@linaro.org>
In-Reply-To: <20250207064213.2314482-5-quic_jiegan@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 07/02/2025 6:42 am, Jie Gan wrote:
> Add 'struct coresight_path' to store the data that is needed by
> coresight_enable_path/coresight_disable_path. The structure will be
> transmitted to any required devices to enable related funcationalities.
> 
> The trace_id will be allocated after the path is built. Consequently,
> The ETM3x and ETM4x devices will directly read the trace_id from path
> which result in etm_read_alloc_trace_id and etm4_read_alloc_trace_id
> being deleted.
> 
> Co-developed-by: James Clark <james.clark@linaro.org>
> Signed-off-by: James Clark <james.clark@linaro.org>
> Signed-off-by: Jie Gan <quic_jiegan@quicinc.com>
> ---
>   drivers/hwtracing/coresight/coresight-core.c  | 106 +++++++++++++-----
>   drivers/hwtracing/coresight/coresight-dummy.c |   5 +-
>   .../hwtracing/coresight/coresight-etm-perf.c  |  30 +++--
>   .../hwtracing/coresight/coresight-etm-perf.h  |   2 +-
>   drivers/hwtracing/coresight/coresight-etm.h   |   1 -
>   .../coresight/coresight-etm3x-core.c          |  54 ++-------
>   .../coresight/coresight-etm4x-core.c          |  54 ++-------
>   drivers/hwtracing/coresight/coresight-etm4x.h |   1 -
>   drivers/hwtracing/coresight/coresight-priv.h  |  12 +-
>   drivers/hwtracing/coresight/coresight-stm.c   |   3 +-
>   drivers/hwtracing/coresight/coresight-sysfs.c |  17 ++-
>   drivers/hwtracing/coresight/coresight-tpdm.c  |   3 +-
>   include/linux/coresight.h                     |  12 +-
>   13 files changed, 143 insertions(+), 157 deletions(-)
> 
[...]
> @@ -352,7 +352,7 @@ static void *etm_setup_aux(struct perf_event *event, void **pages,
>   	 * CPUs, we can handle it and fail the session.
>   	 */
>   	for_each_cpu(cpu, mask) {
> -		struct list_head *path;
> +		struct coresight_path *path;
>   		struct coresight_device *csdev;
>   
>   		csdev = per_cpu(csdev_src, cpu);
> @@ -405,15 +405,15 @@ static void *etm_setup_aux(struct perf_event *event, void **pages,
>   			cpumask_clear_cpu(cpu, mask);
>   			continue;
>   		}
> -
>   		/* ensure we can allocate a trace ID for this CPU */
> -		trace_id = coresight_trace_id_get_cpu_id_map(cpu, &sink->perf_sink_id_map);
> -		if (!IS_VALID_CS_TRACE_ID(trace_id)) {
> +		trace_id = coresight_path_assign_trace_id(path, CS_MODE_PERF);
> +
> +		/* Can be 0 and valid, ETE doesn't need an ID */
> +		if (trace_id < 0) {

Not sure why I wrote it like this, but I think we should leave it as it 
was with !IS_VALID_CS_TRACE_ID(). Even with ETE it calls the trace ID 
allocator, so nothing has changed here.


