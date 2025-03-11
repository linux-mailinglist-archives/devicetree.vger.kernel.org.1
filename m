Return-Path: <devicetree+bounces-156588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CD1A5CB24
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 17:50:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DB89188E2C5
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 16:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 868D3260A31;
	Tue, 11 Mar 2025 16:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zMHsoaI/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB18A19E975
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 16:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741711809; cv=none; b=pDNopXKzYw9udcVx0YNbdQZhRM0Goe6+EaC6J5jF62hXsx1zwtlqJ+0UhaoXkE1NkjqHDQdZArySb6VSFOOQ5q1BQQfrqGvlgU5u6NtavTqE0wjY4Pi8J5oON3yWFD3Qbl1S7cVEr2M72hoLvox+FkWy1JpWHuRybi9aoccF75Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741711809; c=relaxed/simple;
	bh=BvZCDeJlwxu4WFta5J0ZRVMripoIkagvhPtRakkbRB0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hL4uj0PRHewKjIWruv9MX7+6SltLbZhl9n5Fxpc/j3fReIK41USRQHQCSr+rNI9qCbRx/pDQzSTPGyDxqwybeuYwFVBw20CnC/ceDYRwZ4XK5rq1FsMfZ/ojSpVMcL8oO+Vx7fW3uBcQzFR+FN8BCh4aIOpGuWsZuyoe8bOL96U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zMHsoaI/; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-224171d6826so14328955ad.3
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 09:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741711806; x=1742316606; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=23iOwZdcqMnXiNfXwcY1/saA5o6I48TGQZAkJr6gmPk=;
        b=zMHsoaI/HU0TZAezkp5lp2C6GsQS2hCq4RzqsAYjkVwJvIbTNrFlHKwxeXHphTIZov
         EuMYhYTuRHNP8AJF6ZJmYJA6lF7enuwt/UpmvetYHUM8aJ6Q3XD1ESP7aHMiEORjQUY5
         7/8LpKlGfxZ+/u8u9mAE7LTVVThmMQiDzdtssAJNCAYBq4EgU5/vz7eewNe9e+9nLfVo
         ubcKLdhjPUuuq0aPLlO67yNKFvpGMxjiB0uKSayTq4V3xhDN8PBDRaHEO4Ns5wPKEDod
         I++GJrDLYdzzU05yhOBlb9evfd7wgOm1HEQ82uAw/H+rD1vtGEQsML/9tfReapckQ9rY
         WZZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741711806; x=1742316606;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=23iOwZdcqMnXiNfXwcY1/saA5o6I48TGQZAkJr6gmPk=;
        b=YyPzfBRR5V1BcbXOTLhPsUTpouJHHXGvR9UXH/exl75QlUxwa0Fn+xkVdjUNYuSxZ/
         9y77GIAcwWEZ98K4VhNqsTxF6C4shRs0nLLUGBo7+k+RjMkgrGhaAYBm5bKR87n5NSgg
         2MLiKf1oUvkA4lIRtWim7leLL5ZxCu/bVxq8p3JIPtXqPHGrTNzXW72sgGb67yl7KTU/
         2IC8MrJ8OdJJqmTACtYp1/ggyAzxedMdYOdU3gtIhd4NcshBjimT6H8hIji+Z/x8htz2
         GHroqMhBVlR/X2lqFv6XCbcWXOl9/+aBZJlAYaO6A6xcqmGWltpsdFeuXu0p2zlHqsnn
         I3mw==
X-Forwarded-Encrypted: i=1; AJvYcCX/4eCDceBy2a5QUSxJvqwTk4twG/5iBqzwGPb3sH3ofVHz9ZvqzEIEx+OwghH5kFnsCurhpGbthBYn@vger.kernel.org
X-Gm-Message-State: AOJu0YzNYl4nRzdqageEmXXeFB1408qSgKw1XgphsBIgglo4iOSjDXiI
	lqW41MqPxXeOhE5NL+BXG3vWDcNX2g+BVUgdYI/Ggnf9sguHT0/WW+RYKad+M4ET3C5v91Rprd8
	GYVz4MMIRUavmWuIhHMI75/HhNmsg4cEJV9InPg==
X-Gm-Gg: ASbGncuU6Qu0Y4omUxjE98ctXWuYCwwOHy+6byCFEDwR993l2YDkWJnj8y7p5ZZ5WKe
	ip+HO6Nq84w15IvSgnbMM0UcTTXwMV/UTrCc2QwwBXBMR3f2TPektQKwq5XzV7U4igxpD+Jjg76
	Ww2wOHbboO+JHezwV2L8acQfUuA4g4263OxGRAraH76SaC050EZ6CHY3pxHc4=
X-Google-Smtp-Source: AGHT+IGRlRimNoESSBKd69bPemttjguo2zF0mTvg+Kb5/5Fg9niMy5gNnw80TuZnQbl3lCDWzV9DtaMCXkkJcAmG5fQ=
X-Received: by 2002:a05:6a21:2d08:b0:1f3:47d6:aa05 with SMTP id
 adf61e73a8af0-1f5449336e0mr29284989637.0.1741711806206; Tue, 11 Mar 2025
 09:50:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250310090407.2069489-1-quic_jiegan@quicinc.com> <20250310090407.2069489-2-quic_jiegan@quicinc.com>
In-Reply-To: <20250310090407.2069489-2-quic_jiegan@quicinc.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 11 Mar 2025 16:49:54 +0000
X-Gm-Features: AQ5f1Jq4RzUPjRD0-Pf4PVjALFGSYlNPIsAlLKRkK0wLgCzuiv55sOjf36seIGA
Message-ID: <CAJ9a7Vh7PmBBbvwnUETfCYrTSiXNzeiWpsz+XAGaUWt1Rq1aZw@mail.gmail.com>
Subject: Re: [PATCH v1 1/4] coresight: tmc: Introduce new APIs to get the RWP
 offset of ETR buffer
To: Jie Gan <quic_jiegan@quicinc.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@linaro.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Tingwei Zhang <quic_tingweiz@quicinc.com>, Jinlong Mao <quic_jinlmao@quicinc.com>, 
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"

Hi,

On Mon, 10 Mar 2025 at 09:04, Jie Gan <quic_jiegan@quicinc.com> wrote:
>
> The new functions calculate and return the offset to the write pointer of
> the ETR buffer based on whether the memory mode is SG, flat or reserved.
> The functions have the RWP offset can directly read data from ETR buffer,
> enabling the transfer of data to any required location.
>
> Signed-off-by: Jie Gan <quic_jiegan@quicinc.com>
> ---
>  .../hwtracing/coresight/coresight-tmc-etr.c   | 40 +++++++++++++++++++
>  drivers/hwtracing/coresight/coresight-tmc.h   |  1 +
>  2 files changed, 41 insertions(+)
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index eda7cdad0e2b..ec636ab1fd75 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -267,6 +267,46 @@ void tmc_free_sg_table(struct tmc_sg_table *sg_table)
>  }
>  EXPORT_SYMBOL_GPL(tmc_free_sg_table);
>
> +static long tmc_flat_resrv_get_rwp_offset(struct tmc_drvdata *drvdata)
> +{
> +       dma_addr_t paddr = drvdata->sysfs_buf->hwaddr;
> +       u64 rwp;
> +

It is not valid to read RWP if the TMC is running. It must be in the
stopped or disabled state - see the specifications for TMC /ETR

It is likely that CSUNLOCK / CSLOCK are needed here too,  along with
the spinlock that protects drvdata

See the code in coresight_tmc_etr.c :-

e.g. in

tmc_update_etr_buffer()

...
<take spinlock>
...
CS_UNLOCK(drvdata->base);
tmc_flush_and_stop(drvdata); // this ensures tmc is stopped and
flushed to memory - essential to ensure full formatted frame is in
memory.
tmc_sync_etr_buf(drvdata); // this function reads rwp.
CS_LOCK(drvdata->base);
<release spinlokc>

This type of program flow is common to both sysfs and perf handling of
TMC buffers.

> +       rwp = tmc_read_rwp(drvdata);
> +       return rwp - paddr;
> +}
> +
> +static long tmc_sg_get_rwp_offset(struct tmc_drvdata *drvdata)
> +{
> +       struct etr_buf *etr_buf = drvdata->sysfs_buf;
> +       struct etr_sg_table *etr_table = etr_buf->private;
> +       struct tmc_sg_table *table = etr_table->sg_table;
> +       long w_offset;
> +       u64 rwp;
> +

Same comments as above

> +       rwp = tmc_read_rwp(drvdata);
> +       w_offset = tmc_sg_get_data_page_offset(table, rwp);
> +
> +       return w_offset;
> +}
> +
> +/*
> + * Retrieve the offset to the write pointer of the ETR buffer based on whether
> + * the memory mode is SG, flat or reserved.
> + */
> +long tmc_get_rwp_offset(struct tmc_drvdata *drvdata)
> +{
> +       struct etr_buf *etr_buf = drvdata->sysfs_buf;
> +

As this is an exported function, please ensure that the inputs are
valid - check the pointers

Code to ensure TMC is flushed and stopped could be inserted here.

Regards

Mike

> +       if (etr_buf->mode == ETR_MODE_ETR_SG)
> +               return tmc_sg_get_rwp_offset(drvdata);
> +       else if (etr_buf->mode == ETR_MODE_FLAT || etr_buf->mode == ETR_MODE_RESRV)
> +               return tmc_flat_resrv_get_rwp_offset(drvdata);
> +       else
> +               return -EINVAL;
> +}
> +EXPORT_SYMBOL_GPL(tmc_get_rwp_offset);
> +
>  /*
>   * Alloc pages for the table. Since this will be used by the device,
>   * allocate the pages closer to the device (i.e, dev_to_node(dev)
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
> index b48bc9a01cc0..baedb4dcfc3f 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.h
> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
> @@ -442,5 +442,6 @@ void tmc_etr_remove_catu_ops(void);
>  struct etr_buf *tmc_etr_get_buffer(struct coresight_device *csdev,
>                                    enum cs_mode mode, void *data);
>  extern const struct attribute_group coresight_etr_group;
> +long tmc_get_rwp_offset(struct tmc_drvdata *drvdata);
>
>  #endif
> --
> 2.34.1
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

