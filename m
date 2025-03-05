Return-Path: <devicetree+bounces-154373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A1880A4FD36
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 12:08:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B95931891DDE
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 11:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46D5F23027C;
	Wed,  5 Mar 2025 11:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ifMWveS3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A6A720DD6D
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 11:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741172878; cv=none; b=Yp/ZKHSf6H72kPoriIWeHo6pMRKeqtjyiqsottR2cGYGNKDJFE+CswahLvscD1/5eE71IEotBescHQu7+xKpLTEQk+OuWEhVqbEy81WsUHE+YvfXfFoE7MyOStuDNcnhTM+IdppExlBPH1lVwZaJ5Ycre42R5hirtfDUPBX/dnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741172878; c=relaxed/simple;
	bh=VIoJ7LBjd2nSqGic2dxC8wBbweOUxEp3YMTToF1Hdqw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oyxjBwsqpRNzclKPAZ0Ck7yOPmmQW/JV43GfCGomvEHy3RIZ4Wv4Q2afkI1qf4sqVmpxyDOPnkCdsI6D/NE9Ot3ANDPKPV+XH6e1dXvfPbtiUJdf4ks7aAqvevC96ZEWvbCGLdJjGxKdRkai91GX84o6gi94Pu4CbcxL8apPzZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ifMWveS3; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-224019ad9edso2211825ad.1
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 03:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741172876; x=1741777676; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=h8Cx5fHR+4jmiXuXaT5oD7FRlDS4S8GZIWX7AhsEi0w=;
        b=ifMWveS3ojmB9qpQQglswmWNkENufeZCerQQ0/Vb9g3T4WFabuiW+OdGSIiLJcfd+m
         k4DBIszwkGESCrDZVkg+BGkfSeK/Q1I+eT6Ei6tZS0A2TSXrZJ372WJv19wENcDqBd+Q
         91sAj5OAP+QF1GtGlm4lG1oblaio5MPwRQXN45qKVD+4fF1XpJhftRHi3WaBcCfgtKfV
         gfYrB5n1RnTOvvSbSIAbByPwlZU+yT+mdkcrNvn/i8wNb5288Ord5mXrWjxONMXxpcUW
         gQ8WCcuz7k9ltlzNb/IWn0MTv/gM4TUA5meDURKcsoeLP3k+ou0lZC+KIafNCYem7jpA
         jrcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741172876; x=1741777676;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h8Cx5fHR+4jmiXuXaT5oD7FRlDS4S8GZIWX7AhsEi0w=;
        b=fG1u0Yk/eABwzMef6MmVSmCPh7W/nXaihfejlc4LcOJCn54Y0Fnc+oUV9K0VYCNuzt
         ceDVoADLDljjDkna7v3F3OGcOBbfM4Nku/PdohUK4Cpfi3pFCFlNqT2lbzrf3nlwtPvP
         yOP9NsFmqqBIyoQ1K4YYT9YFd1YM60YVBc0THMHrs0SO3+Uu+UwB6uTdXx4Cobjb3wz1
         wDxCGsglPs6zfjoqMh0xvrkSOJYPtQuVGn6d3MfBAYF1mpwG2LeFkvM7Pi6WxZz+Abja
         WRKLTcB0rJcOwlGyrHaAWrduz/CDFpswY1I4QiZ+jinzYAHUAAWVH8WTFP3qrIuJ6Az6
         EPjg==
X-Forwarded-Encrypted: i=1; AJvYcCUJ2wEj6pU77sO/oy1x3iYZcOl1o+XJISUj3EXqHHy24f+/sV55e2q3NXSYviPpdcNYLZSLM3a+U5iI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0sy/Sgy6rTo0cilLL6e6sDJFai2FETGeC/WoUpwACaCi4gXKK
	FNrUhUoF/KmovkkZn8/eMYJYlYGTfnSvDBhen+1Ck2+nLO6uMV4fk3tYewBUIoPG8sXPtiLaNc1
	w+e9gOad6CgXClwhHXmvsDBhRELsiUnqdnaCxbA==
X-Gm-Gg: ASbGncv+SWKg9I9YpexwzFhKI6TFSD1qxM3nvSIxTiB9nD/tqSQcV8XSZVjACxmvV0h
	MNF7J/9HI0KTF/d5JR22AT9/g3aPenmOLSIT5tpYfQz0aypPcA/t5aXDhjkWh9gcekcbDJ4wCJD
	O1RcS9LeyNsZvcxShIBK7uFOXgA2v8TsoORKQWR93c0fnbpjzZ/6w1K+tfJFE=
X-Google-Smtp-Source: AGHT+IGeHajtM6a8RKzvxRCPhC7Gav1e5qdV7p0kvwl/9Chh9iSgselzALrtnrWd7JtUMEd3C1yGOLe31+tUVRNx8X0=
X-Received: by 2002:a05:6a00:3d4a:b0:736:4b08:cc0e with SMTP id
 d2e1a72fcca58-73682c53721mr3253307b3a.17.1741172875711; Wed, 05 Mar 2025
 03:07:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250303032931.2500935-1-quic_jiegan@quicinc.com> <20250303032931.2500935-3-quic_jiegan@quicinc.com>
In-Reply-To: <20250303032931.2500935-3-quic_jiegan@quicinc.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 5 Mar 2025 11:07:43 +0000
X-Gm-Features: AQ5f1Jotwj7vHwxJWb6wdXEyjYphyVf5Uwhw-vghsgB9wb3Lu4bYOf2iNdASjeU
Message-ID: <CAJ9a7VgGp4YqzN-yx0x+NiZG8now6SCmnimaou2Z=exYcoiegw@mail.gmail.com>
Subject: Re: [PATCH v15 02/10] Coresight: Add trace_id function to retrieving
 the trace ID
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

On Mon, 3 Mar 2025 at 03:30, Jie Gan <quic_jiegan@quicinc.com> wrote:
>
> Add 'trace_id' function pointer in coresight_ops. It's responsible for retrieving
> the device's trace ID.
>
> Co-developed-by: James Clark <james.clark@linaro.org>
> Signed-off-by: James Clark <james.clark@linaro.org>
> Reviewed-by: James Clark <james.clark@linaro.org>
> Signed-off-by: Jie Gan <quic_jiegan@quicinc.com>
> ---
>  drivers/hwtracing/coresight/coresight-core.c  | 30 +++++++++++++++++++
>  drivers/hwtracing/coresight/coresight-dummy.c | 13 +++++++-
>  .../coresight/coresight-etm3x-core.c          |  1 +
>  .../coresight/coresight-etm4x-core.c          |  1 +
>  drivers/hwtracing/coresight/coresight-stm.c   | 11 +++++++
>  drivers/hwtracing/coresight/coresight-tpda.c  | 11 +++++++
>  include/linux/coresight.h                     |  5 ++++
>  7 files changed, 71 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-core.c b/drivers/hwtracing/coresight/coresight-core.c
> index ab55e10d4b79..32aa07f4f8c1 100644
> --- a/drivers/hwtracing/coresight/coresight-core.c
> +++ b/drivers/hwtracing/coresight/coresight-core.c
> @@ -24,6 +24,7 @@
>  #include "coresight-etm-perf.h"
>  #include "coresight-priv.h"
>  #include "coresight-syscfg.h"
> +#include "coresight-trace-id.h"
>
>  /*
>   * Mutex used to lock all sysfs enable and disable actions and loading and
> @@ -1557,6 +1558,35 @@ void coresight_remove_driver(struct amba_driver *amba_drv,
>  }
>  EXPORT_SYMBOL_GPL(coresight_remove_driver);
>
> +int coresight_etm_get_trace_id(struct coresight_device *csdev, enum cs_mode mode,
> +                              struct coresight_device *sink)
> +{
> +       int trace_id;
> +       int cpu = source_ops(csdev)->cpu_id(csdev);
> +

This is a global funciton so need to check that this csdev is a
source,. and does provide a cpu  function before calling it.

> +       switch (mode) {
> +       case CS_MODE_SYSFS:
> +               trace_id = coresight_trace_id_get_cpu_id(cpu);
> +               break;
> +       case CS_MODE_PERF:
> +               if (WARN_ON(!sink))
> +                       return -EINVAL;
> +
> +               trace_id = coresight_trace_id_get_cpu_id_map(cpu, &sink->perf_sink_id_map);
> +               break;
> +       default:
> +               trace_id = -EINVAL;
> +               break;
> +       }
> +
> +       if (!IS_VALID_CS_TRACE_ID(trace_id))
> +               dev_err(&csdev->dev,
> +                       "Failed to allocate trace ID on CPU%d\n", cpu);
> +
> +       return trace_id;
> +}
> +EXPORT_SYMBOL_GPL(coresight_etm_get_trace_id);
> +
>  MODULE_LICENSE("GPL v2");
>  MODULE_AUTHOR("Pratik Patel <pratikp@codeaurora.org>");
>  MODULE_AUTHOR("Mathieu Poirier <mathieu.poirier@linaro.org>");
> diff --git a/drivers/hwtracing/coresight/coresight-dummy.c b/drivers/hwtracing/coresight/coresight-dummy.c
> index 9be53be8964b..b5692ba358c1 100644
> --- a/drivers/hwtracing/coresight/coresight-dummy.c
> +++ b/drivers/hwtracing/coresight/coresight-dummy.c
> @@ -41,6 +41,16 @@ static void dummy_source_disable(struct coresight_device *csdev,
>         dev_dbg(csdev->dev.parent, "Dummy source disabled\n");
>  }
>
> +static int dummy_source_trace_id(struct coresight_device *csdev, __maybe_unused enum cs_mode mode,
> +                                __maybe_unused struct coresight_device *sink)
> +{
> +       struct dummy_drvdata *drvdata;
> +
> +       drvdata = dev_get_drvdata(csdev->dev.parent);
> +
> +       return drvdata->traceid;
> +}
> +
>  static int dummy_sink_enable(struct coresight_device *csdev, enum cs_mode mode,
>                                 void *data)
>  {
> @@ -62,7 +72,8 @@ static const struct coresight_ops_source dummy_source_ops = {
>  };
>
>  static const struct coresight_ops dummy_source_cs_ops = {
> -       .source_ops = &dummy_source_ops,
> +       .trace_id       = dummy_source_trace_id,
> +       .source_ops     = &dummy_source_ops,
>  };
>
>  static const struct coresight_ops_sink dummy_sink_ops = {
> diff --git a/drivers/hwtracing/coresight/coresight-etm3x-core.c b/drivers/hwtracing/coresight/coresight-etm3x-core.c
> index c103f4c70f5d..c1dda4bc4a2f 100644
> --- a/drivers/hwtracing/coresight/coresight-etm3x-core.c
> +++ b/drivers/hwtracing/coresight/coresight-etm3x-core.c
> @@ -704,6 +704,7 @@ static const struct coresight_ops_source etm_source_ops = {
>  };
>
>  static const struct coresight_ops etm_cs_ops = {
> +       .trace_id       = coresight_etm_get_trace_id,
>         .source_ops     = &etm_source_ops,
>  };
>
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-core.c b/drivers/hwtracing/coresight/coresight-etm4x-core.c
> index 2c1a60577728..cfd116b87460 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x-core.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x-core.c
> @@ -1067,6 +1067,7 @@ static const struct coresight_ops_source etm4_source_ops = {
>  };
>
>  static const struct coresight_ops etm4_cs_ops = {
> +       .trace_id       = coresight_etm_get_trace_id,
>         .source_ops     = &etm4_source_ops,
>  };
>
> diff --git a/drivers/hwtracing/coresight/coresight-stm.c b/drivers/hwtracing/coresight/coresight-stm.c
> index b581a30a1cd9..aca25b5e3be2 100644
> --- a/drivers/hwtracing/coresight/coresight-stm.c
> +++ b/drivers/hwtracing/coresight/coresight-stm.c
> @@ -281,12 +281,23 @@ static void stm_disable(struct coresight_device *csdev,
>         }
>  }
>
> +static int stm_trace_id(struct coresight_device *csdev, __maybe_unused enum cs_mode mode,
> +                       __maybe_unused struct coresight_device *sink)
> +{
> +       struct stm_drvdata *drvdata;
> +
> +       drvdata = dev_get_drvdata(csdev->dev.parent);
> +
> +       return drvdata->traceid;
> +}
> +
>  static const struct coresight_ops_source stm_source_ops = {
>         .enable         = stm_enable,
>         .disable        = stm_disable,
>  };
>
>  static const struct coresight_ops stm_cs_ops = {
> +       .trace_id       = stm_trace_id,
>         .source_ops     = &stm_source_ops,
>  };
>
> diff --git a/drivers/hwtracing/coresight/coresight-tpda.c b/drivers/hwtracing/coresight/coresight-tpda.c
> index 573da8427428..94c2201fc8d3 100644
> --- a/drivers/hwtracing/coresight/coresight-tpda.c
> +++ b/drivers/hwtracing/coresight/coresight-tpda.c
> @@ -241,12 +241,23 @@ static void tpda_disable(struct coresight_device *csdev,
>         dev_dbg(drvdata->dev, "TPDA inport %d disabled\n", in->dest_port);
>  }
>
> +static int tpda_trace_id(struct coresight_device *csdev, __maybe_unused enum cs_mode mode,
> +                        __maybe_unused struct coresight_device *sink)
> +{
> +       struct tpda_drvdata *drvdata;
> +
> +       drvdata = dev_get_drvdata(csdev->dev.parent);
> +
> +       return drvdata->atid;
> +}
> +
>  static const struct coresight_ops_link tpda_link_ops = {
>         .enable         = tpda_enable,
>         .disable        = tpda_disable,
>  };
>
>  static const struct coresight_ops tpda_cs_ops = {
> +       .trace_id       = tpda_trace_id,
>         .link_ops       = &tpda_link_ops,
>  };
>
> diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> index c7cd5886c908..ce9a5e71b261 100644
> --- a/include/linux/coresight.h
> +++ b/include/linux/coresight.h
> @@ -335,6 +335,7 @@ enum cs_mode {
>         CS_MODE_PERF,
>  };
>
> +#define coresight_ops(csdev)   csdev->ops
>  #define source_ops(csdev)      csdev->ops->source_ops
>  #define sink_ops(csdev)                csdev->ops->sink_ops
>  #define link_ops(csdev)                csdev->ops->link_ops
> @@ -421,6 +422,8 @@ struct coresight_ops_panic {
>  };
>
>  struct coresight_ops {
> +       int (*trace_id)(struct coresight_device *csdev, enum cs_mode mode,
> +                       struct coresight_device *sink);
>         const struct coresight_ops_sink *sink_ops;
>         const struct coresight_ops_link *link_ops;
>         const struct coresight_ops_source *source_ops;
> @@ -709,4 +712,6 @@ int coresight_init_driver(const char *drv, struct amba_driver *amba_drv,
>
>  void coresight_remove_driver(struct amba_driver *amba_drv,
>                              struct platform_driver *pdev_drv);
> +int coresight_etm_get_trace_id(struct coresight_device *csdev, enum cs_mode mode,
> +                              struct coresight_device *sink);
>  #endif         /* _LINUX_COREISGHT_H */
> --
> 2.34.1
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

