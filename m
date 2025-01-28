Return-Path: <devicetree+bounces-141403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B9EA209FE
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 12:55:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B90C165026
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 11:55:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BD0F1A239D;
	Tue, 28 Jan 2025 11:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G9AKcXRG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C04919AA56
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 11:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738065297; cv=none; b=pgmtI65RzgqK3+LkuLjMuXxSkWvzaQyXZxZZbZc3SwqGcjHS/kFx1hEaRyqaiRYMaSvKoaN/jtztI1+ishYP2znQSQjHB5eLKmxDNjismv67QloqG23EgqWgLyGi65fURkZ6s5eaKRd916VNS3U48IDSnPLqM1LAeDWrIlsly7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738065297; c=relaxed/simple;
	bh=r5h9OMnSwXiRtCJRYb5hn5D7yvcGBohaOOVTKHCfWyU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EsCjWTNFhWw7qYLzPJWx5joIg8bbr4uWKNO8I24ogkb3a9XOV6rlcjiwXfYlWzld3Gq+Vgz+5Dw2CIZ5ZRfRHzIFed68hoTb6H0xN+fiVb901+3Cb9YYOLEJehkdZPLbCqbBcSWwkmofifGVgF5V4EOlDNEg8pUpiNhgrjd0QJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G9AKcXRG; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-436a03197b2so36983415e9.2
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 03:54:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738065293; x=1738670093; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gmf7mcPtQwX9tpVIZFfSi4yhDQ1AXN5DwMHqelwsOGg=;
        b=G9AKcXRGFyz8ShMISD7VdkHq8pleHzG0ignFdFyJfPYQMb+ACRgdeDShEIJkU3HcIB
         N2C3dAdhGKXAowALS8AO4EuZTjajNmvXrWJhz2FAXskafVPkYtklYvhJM9jtsFTLQ6Ap
         kPJrR2CSJFex+ejDh9lUBkYOabv4a0YHmHvT8jXcdfV4Rtx7mj6fisr03fursL5I4qZd
         Zj9j3p0HXUpUE9koTIoeZBE4vrBF8Y5xS73fuvMjU7LHldAMRWEtbjBT9QG/yJccWg5T
         uz3/YuHW5tLQ1HaKsYsnwbSThhK9xc++QLpzDJ5i/xVJup3Y6kJxwdM4PPTiaOdPUsO1
         df6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738065293; x=1738670093;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gmf7mcPtQwX9tpVIZFfSi4yhDQ1AXN5DwMHqelwsOGg=;
        b=GQ4gWvEnYLvKLcTzpXeAuyYgJSo98DYaZy67tv/6ahlnlHTiN2A9Q26RygqriTXMIU
         QQpRI2uPRqGLgv0C/e3jUYi25jEugKiEj3gvAn9p5w1G0O5zfZ9iTL7JlCU1BSMCQci7
         hvmDl+obLNvSmGB5GGNRhKkwzFIS/5VS9bN9EFAFDZozf70xagbKv3YW7aypDsiLTP+0
         gHcpLD9A1AHJ938oXR6kx4Iw+5noZatcz7tMZh0eCQqghhbjzLXCLKnbx/ywZK+VsJPZ
         /XifrXxO0iXRIxJ7Ce1MwnJROTNGNZJ3tEYlyPdiBrSBl7vmn+HO5VJkWmGu9jZLD5pp
         EV6Q==
X-Forwarded-Encrypted: i=1; AJvYcCU1CV2ya18LzMcrIifI8aRLM3eRk5LNZk6GzFbWI15cYviqW89pRxgLXqGZXii4ViQD6cnhlhh6xdLl@vger.kernel.org
X-Gm-Message-State: AOJu0YyG/BfK6HopIn8Qh8sYJ64eBFNe/Bk6CH6OAfaD+aJLQKHVD6Zp
	Eiocqk4BSB1JSUrMvEWmFnrBZ7bDp4VC9LKQwX8D8ChlwaXNZOiN4Up+PydyQTk=
X-Gm-Gg: ASbGncvZ7hKWSu4kH/FutrWDTA33uEPiDoWnvNPxUqDwKV6CT/rdRVWWqNLryAOPtha
	x7mI8opXgGSaNUaydG8vE5imI8HOg7odLT63766zKG7XLscMq0deMvF0EE1UBKb3MkDVrQxNFav
	fuHHsuwBEDDxbH6ByCtw7NWmBRopaboW4IO6Llqi98WZkRepv6uwMHJv1LzH4/jcKlDk/gAHRGc
	OlP8YI6/3XgYWaXzpwfqbVy/0HjJKA8jzA4jKNKakLfN61WxbyvRkm/tJYn8qPSCDv+bSgVEBYg
	Vijf8ImBDcC0n7ZF+6bequ/3dA==
X-Google-Smtp-Source: AGHT+IHDFuV7bbeobdH8NJ7zs7YKsojRKqZ82J0IkoSCP3pGxLQVoQ/0mthDOYphu4LwsfSwyMaGvg==
X-Received: by 2002:a5d:6505:0:b0:38a:88ac:ed10 with SMTP id ffacd0b85a97d-38bf5789edcmr34949134f8f.25.1738065292604;
        Tue, 28 Jan 2025 03:54:52 -0800 (PST)
Received: from [192.168.68.163] ([145.224.65.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a1bb0besm14135821f8f.79.2025.01.28.03.54.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 03:54:52 -0800 (PST)
Message-ID: <538ae543-4c43-4df2-8adc-911096fe14dd@linaro.org>
Date: Tue, 28 Jan 2025 11:54:50 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/6] Coresight: Introduce a new struct coresight_path
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
References: <20250124072537.1801030-1-quic_jiegan@quicinc.com>
 <20250124072537.1801030-4-quic_jiegan@quicinc.com>
Content-Language: en-US
From: James Clark <james.clark@linaro.org>
In-Reply-To: <20250124072537.1801030-4-quic_jiegan@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 24/01/2025 7:25 am, Jie Gan wrote:
> Add 'struct coresight_path' to store the data that is needed by
> coresight_enable_path/coresight_disable_path. The structure
> will be transmitted to the helper and sink device to enable
> related funcationalities.
> 
> Signed-off-by: Jie Gan <quic_jiegan@quicinc.com>
> ---
>   drivers/hwtracing/coresight/coresight-core.c  | 87 ++++++++++++++-----
>   drivers/hwtracing/coresight/coresight-etb10.c |  3 +-
>   .../hwtracing/coresight/coresight-etm-perf.c  | 52 ++++++-----
>   .../hwtracing/coresight/coresight-etm-perf.h  |  2 +-
>   drivers/hwtracing/coresight/coresight-priv.h  | 21 +++--
>   drivers/hwtracing/coresight/coresight-sysfs.c | 32 +++----
>   .../hwtracing/coresight/coresight-tmc-etf.c   |  3 +-
>   .../hwtracing/coresight/coresight-tmc-etr.c   |  6 +-
>   drivers/hwtracing/coresight/coresight-trbe.c  |  4 +-
>   drivers/hwtracing/coresight/ultrasoc-smb.c    |  3 +-
>   10 files changed, 137 insertions(+), 76 deletions(-)
> 

[...]


>   	INIT_LIST_HEAD(path);
> +	cs_path->path = path;
> +	/*
> +	 * Since not all source devices have a defined trace_id function,
> +	 * make sure to check for it before use.
> +	 *
> +	 * Assert the mode is CS_MODE_SYSFS, the trace_id will be assigned
> +	 * again later if the mode is CS_MODE_PERF.
> +	 */
> +	if (source_ops(source)->trace_id != NULL) {
> +		rc = source_ops(source)->trace_id(source, CS_MODE_SYSFS, NULL);

I don't think we should do this. Doesn't this consume two trace IDs for 
each session? And I'm not even sure if it's released properly if it's 
overwritten.

It should be possible to consolidate the all the trace ID allocation to 
a single step when building the path, or another function that gets 
called just after the path is built. At the moment the ID can be 
allocated from about 5 different places and it's quite hard to 
understand, especially with these new changes. I have some of it coded 
up, let me finish it off and I can share it.

> +		if(IS_VALID_CS_TRACE_ID(rc))
> +			cs_path->trace_id = rc;
> +		else
> +			cs_path->trace_id = 0;
> +	}
> +	else
> +		cs_path->trace_id = 0;

[...]

> +/**
> + * struct coresight_path - data needed by enable/disable path
> + * @handle:		perf aux handle for ETM.
> + * @path:		path from source to sink.
> + * @trace_id:		trace_id of the whole path.
> + */
> +struct coresight_path {
> +	struct perf_output_handle	*handle;

This is only needed to avoid adding *handle to the enable function call 
signature, but having it here implies it needs to be stored. And then we 
need to manage the lifecycle of it by nulling it on deletion. All of 
this can be avoided by just adding handle to enable().

Unrelated to this patch, but I'm not sure why we were passing around 
void* for handle either. It just makes the code hard to read and implies 
some flexibility that doesn't exist. It's always "struct 
perf_output_handle", so we can change void* to that in the enable 
functions. I also have a patch for this that I'll share in a bit.

> +	struct list_head		*path;
> +	u8				trace_id;
> +};
> +
>   static inline void coresight_insert_barrier_packet(void *buf)
>   {
>   	if (buf)
> @@ -132,16 +144,15 @@ static inline void CS_UNLOCK(void __iomem *addr)
>   	} while (0);
>   }
>   
> -void coresight_disable_path(struct list_head *path);
> -int coresight_enable_path(struct list_head *path, enum cs_mode mode,
> -			  void *sink_data);
> +void coresight_disable_path(struct coresight_path *cs_path);
> +int coresight_enable_path(struct coresight_path *cs_path, enum cs_mode mode);
>   struct coresight_device *coresight_get_sink(struct list_head *path);

This needs to be exported otherwise the build fails because you use it 
in a module in another commit. I assume you are building as static?



