Return-Path: <devicetree+bounces-201874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4258DB1B190
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 11:57:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 687BE3BD346
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 09:57:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B380326B971;
	Tue,  5 Aug 2025 09:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vsi/ms2V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B80266EEA
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 09:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754387860; cv=none; b=US+KQ6RZLImt+pDhwrO5mDhniSkkq1CeB7toBYZW0qW7cNsE2fxS3KRBCKjsRgapp47TVBPU++fcZODAk4ubOmKRNri0ki9zY7xzNOAH3ch09kKghdXtUPdLzjBhD4h6YaeKKEus865Evea9xMjJyxT7oC3jrGNLrCkayRVsq4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754387860; c=relaxed/simple;
	bh=vwHK8L/iotR+K0grzmW2Zmnh4uNhq/kYS7X9OvNHGr4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ikOyIGPqDS8LW1ZqkJAcyL5ZTm2YZN4ndQOak7NA2RmqCoNm/fddm9AEMAfDdlrfiTtmP1W79oDP+WJkxn/rAzUwLE7uShwxDcPjlDWeCrPpuQhq+lgYIXG3Mlmd7OwWVqWmNFEsPESE6UQ1X40hlYm39/L0wToviWLSapolmNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vsi/ms2V; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-af8fd1b80e5so907703666b.2
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 02:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754387855; x=1754992655; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j1dCaSUFPX7oQSPWUSDqY5AXt0JKnOLYr89WvUXIZxA=;
        b=Vsi/ms2V9Jsi+xJXanONAR4E6PiAG7u5n67L/CcUA9jVrvfBjUptq3Jl4t1fgr5EZF
         AQxMN4a9lFJVRIOIGTYFbIcv+JvjTZ+lUFWOdZMW6f+MW/h8f1zBcJZ0B2D7nEuxsKju
         4B7zTVbbal6aiAun39zJcrr9Md083JQuj1+eoLh6/ZyoiNmXpqotUECg5BJEREq7n4dt
         mqPu7UrCGI40XafeZaN4f53X78BlvEmkc57KhFONjBI5Ym+6ZJe3hBxdy+peTqh5hIYV
         vBUJOPvjmZhU072yNe5gJsilkWZQy5V69xKs2CgbnlQm6UVQwVRK+oPBlT85NkoROliN
         FZiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754387855; x=1754992655;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j1dCaSUFPX7oQSPWUSDqY5AXt0JKnOLYr89WvUXIZxA=;
        b=RroLJQNNIv2uPzQTqD7Ot8aHew6wrv+QJg1IdwXCSvBfSCiG382GsZRSS6kLklUheb
         U16vlbeFYfub02d/3Vl1iZJBQZ8tbD+P/ytoJijLIo4WcBlzaTX1DGOc4xY5O18jwDxU
         2ZIJWZfgPFIRhp5ejQBsb7x0PGrCecPTJ1SgrPSoNVuKS/GtAclG4w/whIHocRNzip4o
         toISJAPM1CNa0KHcOLKh/9/zMxi+s9pbB/3coLfPrCKlJvO2BIDgGKwhbMQp9/u2RlvV
         nvIbotkImALiPAAPpI0eVpGtEW/+7CGARFrXJp4NteE1A3zP0BiV3tMgYNvWYrGZ/5Cy
         78FA==
X-Forwarded-Encrypted: i=1; AJvYcCVHF/pdTGu9gWZ1xLLrWXrsgRscXHetprs3Oi09qs0tFGRUVB27wKjA/CtvSnkyzaZwP5wtU31BFE/t@vger.kernel.org
X-Gm-Message-State: AOJu0YzkKgiHhO6Pr/P/KIpCcYYy/T8SzlwmKbz92T/Kw5k5v3G4fl3E
	0TS0FF7XvR/Mqpq60BtFYnE63k/khiBrv66iaNwX7PB2ZH1EKblY8FlbOwgnxVAUu1ef2dpxFFP
	+DJYA++e+suG4qOIP0hZx+HNpWLvgmSdiGx0jz9QT4dQNit6lyF2N
X-Gm-Gg: ASbGncsU08FO0hmiqrfSJ300CDGwNq+pluXCeh1UQ7FUgPBU+2VrBDTtUp9ENBuBcIw
	7lVBhtpZfMekyvY8T1GcCSYAhaF+yn/TafHJkWbIspwIfJX/l8dCAtRDOA82vqQDNsQTwrlb+ZR
	8LFHVPyUFfExoktVjdWJbQPu9iFpw82y0CXxc3UbuClyl8MQjrs5SPfS8S8PInVs7Tbm8qjJxOl
	v7MWIdwOzV/4m1D
X-Google-Smtp-Source: AGHT+IEvlZD/VNvPswq0qzkpyciOynRy9pE1gT8UV2ru4XRiYUpAOjQYu8DTa6uT4cfV47DRtaNWt7ED0s8P+D26+iE=
X-Received: by 2002:a17:907:7245:b0:ad8:9a3b:b26e with SMTP id
 a640c23a62f3a-af94024886bmr1366527166b.56.1754387855072; Tue, 05 Aug 2025
 02:57:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250725100806.1157-1-jie.gan@oss.qualcomm.com> <20250725100806.1157-3-jie.gan@oss.qualcomm.com>
In-Reply-To: <20250725100806.1157-3-jie.gan@oss.qualcomm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 5 Aug 2025 10:57:23 +0100
X-Gm-Features: Ac12FXwhss0vtHGe63PDzi3zRWIbat4Yyhpujj7U8lZ6-d_UJ9BvOPDeSE-c_zk
Message-ID: <CAJ9a7ViT2BAw6t65A3bbyzQd3Tr6qT_yTa5EGwhKarEipaO=Cw@mail.gmail.com>
Subject: Re: [PATCH v4 02/10] coresight: core: add a new API to retrieve the
 helper device
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

On Fri, 25 Jul 2025 at 11:08, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>
> Retrieving the helper device of the specific coresight device based on
> its helper_subtype because a single coresight device may has multiple types
> of the helper devices.
>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>  drivers/hwtracing/coresight/coresight-core.c | 35 ++++++++++++++++++++
>  drivers/hwtracing/coresight/coresight-priv.h |  2 ++
>  2 files changed, 37 insertions(+)
>
> diff --git a/drivers/hwtracing/coresight/coresight-core.c b/drivers/hwtracing/coresight/coresight-core.c
> index 042c4fa39e55..018b1119c48a 100644
> --- a/drivers/hwtracing/coresight/coresight-core.c
> +++ b/drivers/hwtracing/coresight/coresight-core.c
> @@ -580,6 +580,41 @@ struct coresight_device *coresight_get_sink(struct coresight_path *path)
>  }
>  EXPORT_SYMBOL_GPL(coresight_get_sink);
>
> +/**
> + * coresight_get_helper: find the helper device of the assigned csdev.
> + *
> + * @csdev: The csdev the helper device is conntected to.
> + * @type:  helper_subtype of the expected helper device.
> + *
> + * Retrieve the helper device for the specific csdev based on its
> + * helper_subtype.
> + *
> + * Return: the helper's csdev upon success or NULL for fail.
> + */
> +struct coresight_device *coresight_get_helper(struct coresight_device *csdev,
> +                                             int type)
> +{
> +       int i;
> +       struct coresight_device *helper;
> +
> +       /* protect the connections */
> +       mutex_lock(&coresight_mutex);
> +       for (i = 0; i < csdev->pdata->nr_outconns; ++i) {
> +               helper = csdev->pdata->out_conns[i]->dest_dev;
> +               if (!helper || !coresight_is_helper(helper))
> +                       continue;
> +
> +               if (helper->subtype.helper_subtype == type) {
> +                       mutex_unlock(&coresight_mutex);
> +                       return helper;
> +               }
> +       }
> +       mutex_unlock(&coresight_mutex);
> +
> +       return NULL;
> +}
> +EXPORT_SYMBOL_GPL(coresight_get_helper);
> +
>  /**
>   * coresight_get_in_port_dest: get the in-port number of the dest device
>   * that is connected to the src device.
> diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> index e51b22b8ebde..f80122827934 100644
> --- a/drivers/hwtracing/coresight/coresight-priv.h
> +++ b/drivers/hwtracing/coresight/coresight-priv.h
> @@ -158,6 +158,8 @@ void coresight_path_assign_trace_id(struct coresight_path *path,
>                                    enum cs_mode mode);
>  int coresight_get_in_port_dest(struct coresight_device *src,
>                                struct coresight_device *dest);
> +struct coresight_device *coresight_get_helper(struct coresight_device *csdev,
> +                                             int type);
>
>  #if IS_ENABLED(CONFIG_CORESIGHT_SOURCE_ETM3X)
>  int etm_readl_cp14(u32 off, unsigned int *val);
> --
> 2.34.1
>

Reviewed-by: Mike Leach <mike.leach@linaro.org>
-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

