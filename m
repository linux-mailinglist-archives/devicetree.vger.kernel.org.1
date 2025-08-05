Return-Path: <devicetree+bounces-201879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B25B1B1C5
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 12:15:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80A6C3BFFD4
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 10:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29EA626CE0E;
	Tue,  5 Aug 2025 10:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Syr7Re/Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B56591B6D06
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 10:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754388929; cv=none; b=OXt6VXU8jSAjXkHvbEwcPJXgkxVypje5vSWMR8fHF86w8Vzxt0ddjaVovGn6QSyhKSspoPbZXIRK4CBlctkC2GVZwhoMBQ/Dkk+t3J6pDbTycOU1KrHbNL9AgdNblqXMH/l3hyfbppGYqaDOhRkOXM2UVSsriur5oCnd8bCCf3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754388929; c=relaxed/simple;
	bh=qS5CvNi/TU2MCEo48xS65HI1PZQRvgnJ+LOTlZEISMU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uxiQPKGmHukzQw26SM30tRE6TPBoAkWkP7dQ39VgEfNxNmXMdvQvkMgPSyfLL8qrzhJMZ3nfN2on5tT7/gMzIKnwk+ynShK1cBSJmjhJZ1WCBfFSLAr9cBAX8eAARU05OanGFp8uateYJiQc2ewDRAyPrKT1iQoPmLhz+b9JvyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Syr7Re/Y; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-615c8ca53efso8751416a12.2
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 03:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754388924; x=1754993724; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8Ar0NLemVcS8Q0eL1gYpaDXHf8V6Ud9JA+Ifa04irXg=;
        b=Syr7Re/Y21mT+fieDnD0ZHZTNTO2chrEUQ/ulq2LLd3U2huniISkiBVJEoroQbKtPq
         8z4hA0fOJPM6Wyc50SwEtWLOwRocOAER/2DPlJTu0cLugC90j6IRt08iVQTxR9Cughdn
         h9PBl2duSeXxIiyuu8hfMtnSd15qsdqTGjS1FKPk9Z6SSh8/0HQA/kHtFQjaLeOCzzP4
         rP0Y3WjMm325q5herw2SYkDmXuxV7jA5ruiN5C/WtTzjy2n9KOvslue/vWzcRiknfvQs
         AY6psezAHe3VdWHUt2XtWaIFS7ViKAXjsv5DK4Evq1800lkROtVVJWS2x7q0viq9d1yy
         yb7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754388924; x=1754993724;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Ar0NLemVcS8Q0eL1gYpaDXHf8V6Ud9JA+Ifa04irXg=;
        b=GV01eJr7JzEwMWnfQsRx/TGqWtY0809/AYxUgluYapACryXKKXMRqL25LyA4EvYBZs
         Sa4bGBaWbNAjsWSpFG+71IvWRljtzQwYRHUJ2p598YUqa/3D72ei0IqcavFGAJ7U2XJV
         FjM1Xzyh/1BkvTQSH1JjAjyCw9FfEWEvc7SVS5yAIzBZYMjrD71RzO+00NDt+wtJcXzu
         fbbne70Dq4tiC0hSc173NfJQs9pHNRTOctDveNjKZkWZt9nsNHMTkY1oVBbOeyefQTZ+
         lU4KD3+2RiOOMRbH3EHoBbvXe9CULQHO5HBc+TDwj1TJVGhKU9HrjcF1r8vXG3Ci9eVo
         hKJw==
X-Forwarded-Encrypted: i=1; AJvYcCXmVTYL9tHaPx4f20zGDb0QQonTx2RErbyM64KMBU7OesacvrzGUtwi3mgJ8Hiz0o5theO5IUwHVLFi@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9SCSI4WZNcGt9H7uG+2KBgE2+lOjttXoitQkzjMMzDZ13+cVn
	sYuhWC0149eVcQkkiEzPSsgloY8vqNYTvCCvoQYtjHSaoRj9tAKjUHXtie1PnSMDCD3uQgfwumR
	m6c6cBiQV5DUEeXsmv4oqeBQeZeXZHZPvf5eYZNV25A==
X-Gm-Gg: ASbGnctHA00h2XzIpiGEB13mixxePHZg8huFedm77++nB7sNgaBXIqp0XT5PAyx32Fs
	JOCnFLf8vvPHN3zApdZMnHLqyKP3Tmq5/xRyQvjzMYEC8MzW0NDfvDxavh0+ZoZkg84rKHXUruP
	0Q3vl57Gui+0dAxCI4iFjC36RNamf8UgwEfU9yTLH+yY0fxSB+t2fCmXv95J0B9PvRYtMgUiKHu
	DSPCA==
X-Google-Smtp-Source: AGHT+IHJC0OEe85WEW+uZTa05xouWEVU5GyBHg1A8HxJHnuylCsAviNXR5p7OpzyynSGKKmz7seq3XWzPEvfHkexNis=
X-Received: by 2002:a17:907:9408:b0:ae3:f903:e41 with SMTP id
 a640c23a62f3a-af9402574b3mr1323967366b.54.1754388923827; Tue, 05 Aug 2025
 03:15:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250725100806.1157-1-jie.gan@oss.qualcomm.com> <20250725100806.1157-4-jie.gan@oss.qualcomm.com>
In-Reply-To: <20250725100806.1157-4-jie.gan@oss.qualcomm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 5 Aug 2025 11:15:10 +0100
X-Gm-Features: Ac12FXxr456QPb-g62XeDYWEW4C_Du37eJm8f_7Mmf5ggFk2nh7e_omeT6qcdRU
Message-ID: <CAJ9a7VijwFKiaZzKsSKPynWapA3ik9d7JLeE+yVNFB0T62iH-Q@mail.gmail.com>
Subject: Re: [PATCH v4 03/10] coresight: tmc: add etr_buf_list to store
 allocated etr_buf
To: Jie Gan <jie.gan@oss.qualcomm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>, Jinlong Mao <jinlong.mao@oss.qualcomm.com>, 
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, Jie Gan <quic_jiegan@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

Hi

On Fri, 25 Jul 2025 at 11:08, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
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
>  .../hwtracing/coresight/coresight-tmc-core.c  |  1 +
>  drivers/hwtracing/coresight/coresight-tmc.h   | 19 +++++++++++++++++++
>  2 files changed, 20 insertions(+)
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
> index 6541a27a018e..52ee5f8efe8c 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.h
> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
> @@ -208,6 +208,21 @@ struct tmc_resrv_buf {
>         s64             len;
>  };
>
> +/**
> + * @sysfs_buf: Allocated sysfs_buf.
> + * @is_free:   Indicates whether the buffer is free to choose.
> + * @reading:   Indicates whether the buffer is reading.
> + * @pos:       Position of the buffer.
> + * @node:      Node in etr_buf_list.
> + */
> +struct etr_buf_node {
> +       struct etr_buf          *sysfs_buf;
> +       bool                    is_free;
> +       bool                    reading;
> +       loff_t                  pos;
> +       struct list_head        node;
> +};
> +
>  /**
>   * struct tmc_drvdata - specifics associated to an TMC component
>   * @pclk:      APB clock if present, otherwise NULL
> @@ -242,6 +257,8 @@ struct tmc_resrv_buf {
>   *             (after crash) by default.
>   * @crash_mdata: Reserved memory for storing tmc crash metadata.
>   *              Used by ETR/ETF.
> + * @etr_buf_list: List that is used to manage allocated etr_buf.
> + * @reading_node: Available buffer for byte-cntr reading.
>   */
>  struct tmc_drvdata {
>         struct clk              *pclk;
> @@ -271,6 +288,8 @@ struct tmc_drvdata {
>         struct etr_buf          *perf_buf;
>         struct tmc_resrv_buf    resrv_buf;
>         struct tmc_resrv_buf    crash_mdata;
> +       struct list_head        etr_buf_list;
> +       struct etr_buf_node     *reading_node;

Potential simplification:-
do you need both reading_node here and reading in the etr_buf_node?
reading_node handles the logic for which buffer is being read, while
is_free handles the empty/full logic - reading seems unneeded?

>  };
>
>  struct etr_buf_operations {
> --
> 2.34.1
>

regards

Mike

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

