Return-Path: <devicetree+bounces-244041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B610C9F477
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 15:24:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B875D3A5F27
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 14:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B92CA2FB99A;
	Wed,  3 Dec 2025 14:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AFKO9xfz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7ED2FB97F
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 14:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764771871; cv=none; b=aPzNKAdt7+49rErmJzev4qXAmUxZfdZTuLgs6w3wbI0aO2EmrwJ+WM1mSGfbpxyZmHgfbTlDCFu4fKln5oq0elHg+NKQ82sspIK5C/lZgAdROVy7fE9kn2HtOIhbWuPOrrUs1PClZm+4sRtVxHWLon77mHMLc0/oCBuW1Nm1Mf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764771871; c=relaxed/simple;
	bh=NTh9onWS6Fq5wa7tEf7oXXwR+ePGN88wyB1SfKGOWN4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t0ozGed/CaxWrWSQzoZeTSgt1ETRqEBiGm8GgBk+5eu2XwFXwEx80gOpW7a93uiBvGZQWgmJyV905XOG8GHZaARNpXRcto71TlNWoCxdKVEuOpQ1NI6iYt69UWR11SdBtkEJMcCSwyDcXjF9p37SXKA6UMfDiNsWLQ/p41HReQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AFKO9xfz; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-8b2d6df99c5so105207985a.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 06:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764771869; x=1765376669; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=r5qskISDAKCg4z+QIWL0gtQ4d2iJmhM+zHnIWEc1eUg=;
        b=AFKO9xfzSGliIo+f/ZOtOGirHrWAQaxlHW7FXUZ7ZeDWIWCFm3f7JLqEuZEbij9UBq
         0mUAb4xmQ+SC33/xiYIiVPV+GcZPJd8A35mwkUGqSbza6Cw1Rh+ipUXRQc6wolQpbDzM
         P3w/vAScGNYCbiLIlf2DyJUm/Oq9NddQmiEIPvVZCe1zW2IzVyqntQzgaqA6Of97OeiG
         zVXsYcUw/2YLL2KsRC2c6sQ4Fwxsujat9YytZuqLVjJdM5x2etm5S1RnlYy8ISqdbASH
         17Vp9FNQPJHh6dKXh0sn8hdCutN3I9oLJDOac1BwAg8LAF4eqmm2oA1Tfr5Hm0GRh1aI
         endQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764771869; x=1765376669;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r5qskISDAKCg4z+QIWL0gtQ4d2iJmhM+zHnIWEc1eUg=;
        b=MaeblBvIX4vHSIyrfMP302+SsuldFvvbZatEIS6mt8mtCpadCvLpZxOcHtFGXweQjC
         PsmQ6vV0qnzjAmJVKrFLagYKCjjg4pM7FDOjDfWkU/klsq//rKRcJeaojpmQ5zkpadlm
         AqoKqj6QcbNvaLAb5Aynyy8LuSp8u+I8x5zmSlC21oNWWdbY5M+WREse/yaxZXyYL/N9
         Sr6kRpRym3hYhE7B+YztcKnL65LLDhqEHnUsujP/0461JYYrJP7d3HGq/ZO3Z1+YIrJ8
         Zu2uvKbhh+pUpSvRPCVEkv5DKhl+EFBgNUVjsjbXUvyJp1E8ONfWKEbzwVIpPawPcqXf
         6GEg==
X-Forwarded-Encrypted: i=1; AJvYcCUyRPgpFyDrsd/fyvpZaigkcAviParjN4ww7mtn2ahnJZ85/x6qqg+Ewdgp+h1a4dteA++YNbIY6M2r@vger.kernel.org
X-Gm-Message-State: AOJu0Yxal+xXYcUTF5R4+m6dcKnssQZlKadkQpV6X4mXo+mOpZzKbeEP
	ewzN4H/T+l6YWk4JPewi6NXM3q/a625p26vQX2LwARDYDyAa1ECRFjnVuijt59WhSOoCi8T+Iqy
	KXfkwDAKJrnjCBFWqBKgIS5u1zYfG6j8ouoDkQKZbIw==
X-Gm-Gg: ASbGnctCAJaudrR4pC73fDqt/PDFBRwaNd6RjA50lC4hqiy7urK51Yifkjxs53C9Pu2
	C0ifDjooXmOM7n5HUd8tgx9YNHhn6I/mpQu9yg5gqE0r5p2lHB+cB+gvl9JZ4KaeH8d+TTHw6Ja
	SeljR4BSsdGF5dSBREO76fsEfFUqFfKeI+BFyxSzoUQ3jx0bxewifWGOCGKcwIzeR6kw/L9aSGC
	ugWEs3ahEwhKNB1oC2HJ5lMeAZrgXsv5qlJkh+ZABULbF8KvCtZXk4W9xIa1CEE8UViDUXg8iik
	oHju6Gcjp9Kcvm5auNWZfyICemDb
X-Google-Smtp-Source: AGHT+IHW/wvz46cirJVdb0ydTGRkXFpB8nU++eDo7RKgpwGtmzjwrPlqlevKOHAq78DzOPpbB2V/P/w7c/OdxPVoer0=
X-Received: by 2002:a05:620a:4509:b0:8a6:1a5d:7ae8 with SMTP id
 af79cd13be357-8b5dffddeb6mr382232285a.28.1764771868569; Wed, 03 Dec 2025
 06:24:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250908-enable-byte-cntr-for-tmc-v6-0-1db9e621441a@oss.qualcomm.com>
 <20250908-enable-byte-cntr-for-tmc-v6-3-1db9e621441a@oss.qualcomm.com>
In-Reply-To: <20250908-enable-byte-cntr-for-tmc-v6-3-1db9e621441a@oss.qualcomm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 3 Dec 2025 14:24:17 +0000
X-Gm-Features: AWmQ_bnPqOnbB2FC46dO5gwckHxNG_hP9_zgKDxddjfNsZgM-YCOIMCE4ibSDP8
Message-ID: <CAJ9a7Vgd7+Gd5=Es=z17BB+DbOiL1WYGvNWx3uC0VyEngj2v0Q@mail.gmail.com>
Subject: Re: [PATCH v6 3/9] coresight: tmc: add etr_buf_list to store
 allocated etr_buf
To: Jie Gan <jie.gan@oss.qualcomm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@linaro.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>, Jinlong Mao <jinlong.mao@oss.qualcomm.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 8 Sept 2025 at 03:02, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>
> Add a list to store allocated etr_buf.
>
> The byte-cntr functionality requires two etr_buf to receive trace data.
> The active etr_buf collects the trace data from source device, while the
> byte-cntr reading function accesses the deactivated etr_buf after is
> has been filled and synced, transferring data to the userspace.
>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>  drivers/hwtracing/coresight/coresight-tmc-core.c |  1 +
>  drivers/hwtracing/coresight/coresight-tmc.h      | 17 +++++++++++++++++
>  2 files changed, 18 insertions(+)
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
> index be964656be93..4d249af93097 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-core.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
> @@ -830,6 +830,7 @@ static int __tmc_probe(struct device *dev, struct resource *res)
>                 idr_init(&drvdata->idr);
>                 mutex_init(&drvdata->idr_mutex);
>                 dev_list = &etr_devs;
> +               INIT_LIST_HEAD(&drvdata->etr_buf_list);
>                 break;
>         case TMC_CONFIG_TYPE_ETF:
>                 desc.groups = coresight_etf_groups;
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
> index 6541a27a018e..292e25d82b62 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.h
> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
> @@ -208,6 +208,19 @@ struct tmc_resrv_buf {
>         s64             len;
>  };
>
> +/**
> + * @sysfs_buf: Allocated sysfs_buf.
> + * @is_free:   Indicates whether the buffer is free to choose.
> + * @pos:       Position of the buffer.
> + * @node:      Node in etr_buf_list.
> + */
> +struct etr_buf_node {
> +       struct etr_buf          *sysfs_buf;
> +       bool                    is_free;
> +       loff_t                  pos;
> +       struct list_head        node;
> +};
> +
>  /**
>   * struct tmc_drvdata - specifics associated to an TMC component
>   * @pclk:      APB clock if present, otherwise NULL
> @@ -242,6 +255,8 @@ struct tmc_resrv_buf {
>   *             (after crash) by default.
>   * @crash_mdata: Reserved memory for storing tmc crash metadata.
>   *              Used by ETR/ETF.
> + * @etr_buf_list: List that is used to manage allocated etr_buf.
> + * @reading_node: Available buffer for byte-cntr reading.
>   */
>  struct tmc_drvdata {
>         struct clk              *pclk;
> @@ -271,6 +286,8 @@ struct tmc_drvdata {
>         struct etr_buf          *perf_buf;
>         struct tmc_resrv_buf    resrv_buf;
>         struct tmc_resrv_buf    crash_mdata;
> +       struct list_head        etr_buf_list;
> +       struct etr_buf_node     *reading_node;
>  };
>
>  struct etr_buf_operations {
>
> --
> 2.34.1
>

Reviewed-by: Mike Leach <mike.leach@linaro.org>

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

