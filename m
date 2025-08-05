Return-Path: <devicetree+bounces-201873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D2820B1B189
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 11:55:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D1703B2A73
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 09:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CA0F26B777;
	Tue,  5 Aug 2025 09:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ytGhHdJG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79604269B1C
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 09:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754387719; cv=none; b=dTSe4KOyKOIO4pNbnYavtKSGaB+i5hkVGPI92G+PUkrSw0XFa93zXEyDDadHI08xzHPWADuZ5n6cLiIQCU1gHYtKnLr9kIYCrCQCzTV69QZUQ79+r9egLUr7Fe2WGnwjZCA+9vjuR9sRvkQUGzwRw+oGvA+bQrYXica+Gf9863M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754387719; c=relaxed/simple;
	bh=uliqi/KpsDFbM1Htu6H91P/fxhKIHcy/qcSFcOl74+o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KPvXC60drdL3GkfSRvT7hcy/1CgnN022T7naYDgetNCcFzh045mlttTBIzJVyC3lplB9XXa6DBLKZ691PspmWeM6Y7Kqa8Ix24E28hCMgi1bpeVJNAmDTOP13XrQ6/smpnpiQRPgujr9qtY/DkoI9c0X/Kl+zWeiLN5DVIBtu68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ytGhHdJG; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-76bddb92dc1so4898711b3a.0
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 02:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754387715; x=1754992515; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CQUJ+NctrS5XnN4MvLnb/JYO8sbKwmo81SB44CL6l5A=;
        b=ytGhHdJGnzLFYyxYZRdUIdtPQAe/d3HLdQe8znawhlwxne16eaDH6HHD51roxg5UKB
         gGWK8mWHK6h0SMwRsaU9phiN6crx+SAuoHt6qkya6f3Hsw56gWwucuFvxG+Nem+B5SGY
         exj7o/ZULFIIo47F/hFkge2ATTqZlFrZ1ffATk2b6VE0BAOvVhJohIjBFhstKYqlzJyR
         qm+rb/BhxNCC86Rb9Z+CJ5sxj/FtUUj0WgYhQ47wlp84kKGNzj44ONmbOPdh4/NVKmVn
         HYrRPGc0lI+D9+syo2rLsLBB5IfEFATXuO754tONPgsuP1G/8xSuek5CVbeOwk0qD//6
         FFGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754387715; x=1754992515;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CQUJ+NctrS5XnN4MvLnb/JYO8sbKwmo81SB44CL6l5A=;
        b=Eymfbha2evGH96OvD6d6Rj5Y170ld4hazj34Wbr7S22mxZPem7BnAdn/p65wzhHlm/
         U9rSGHXjU7teLhpsnlDDu0+xWB1oS8UgkxTu8TCJ3sHGxpFyD3Z+MSV3eR8/SlMypOE/
         FvY3ITN33CFZruv4n6TNcUw4efT+9CBNJ0j+3mHPd9d1wZMIdZLgnDTM5FmzZdHMVxe1
         VOHg/sqPL/JDHY6mkOoXM1Lth3SBgwPycvMHtyw98eUmvIs6UHGM3z2oQiLOke7MblDN
         5tddFkFhi05PJsaewwa5TTfAi/2r7530UPSRSLQP/npF3q+ZerhZ4Qrc2BcSaDx2g2hI
         uk1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVHhud3qn6Wt/4vEQUVfy9Z97Ji4Nya0T767sp0PaxnLYhYbwmaLMWrq67WbX1/MnZUTb6NT4hn5WOH@vger.kernel.org
X-Gm-Message-State: AOJu0YwhR0BDxgetRPet4tRiCmW7XT8BuBbIEe6lOk3vRwL4bu5hbFAb
	y9eC7d/4H0fqClLdzcQDIHJjz+oMlz6A3zMcNFkSnSowoq6swtgXbxEd82FodpiUmEaj0dvs3xy
	38eaLjNxmpU2AfnR7kVQUsy/vwg1wCEPi1wnv0eqZMg==
X-Gm-Gg: ASbGncsArX8A2hYtvvSiSqKl/Vq7RMZKgdZGdUCaJaS9ksWMyzPUeTYeVOA+hDEHkxs
	l0vDxXEJk7q1FHqikLGidD4pbUKJCqozR5IISEX5Hxvze1YgJzAI/mwt8b3SLSzE5tyN05JhubN
	1SohmaDupGOVpWjgxlqkp2Oj3U437D4YeOYkGX109PcLkq+7f0dlircjYMaSugIQg6j/sYzxMCH
	oGRIg==
X-Google-Smtp-Source: AGHT+IHfcD82/iX99lJflKhjf/q/ameBxbpugvuC2ABURfKeJyVve0DWx3ORf+DO9750X+uIrgMuC05+de0uLf7bNMM=
X-Received: by 2002:a05:6a00:2188:b0:748:e585:3c42 with SMTP id
 d2e1a72fcca58-76bec48fab6mr13243864b3a.15.1754387714705; Tue, 05 Aug 2025
 02:55:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250725100806.1157-1-jie.gan@oss.qualcomm.com> <20250725100806.1157-2-jie.gan@oss.qualcomm.com>
In-Reply-To: <20250725100806.1157-2-jie.gan@oss.qualcomm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 5 Aug 2025 10:55:04 +0100
X-Gm-Features: Ac12FXyp4ZO5j-vKmsroGEkmGSaZdhjZTYW6dd1otj-TM37lG1iabpz7_60enUM
Message-ID: <CAJ9a7VhSMf43_GPhVf=He1S2J_Tn4XLi5cOadbCn+K0St+gdfg@mail.gmail.com>
Subject: Re: [PATCH v4 01/10] coresight: core: Refactoring ctcu_get_active_port
 and make it generic
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
> Remove ctcu_get_active_port from CTCU module and add it to the core
> framework.
>
> The port number is crucial for the CTCU device to identify which ETR
> it serves. With the port number we can correctly get required parameters
> of the CTCU device in TMC module.
>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>  drivers/hwtracing/coresight/coresight-core.c  | 24 +++++++++++++++++++
>  .../hwtracing/coresight/coresight-ctcu-core.c | 19 +--------------
>  drivers/hwtracing/coresight/coresight-priv.h  |  2 ++
>  3 files changed, 27 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-core.c b/drivers/hwtracing/coresight/coresight-core.c
> index 1accd7cbd54b..042c4fa39e55 100644
> --- a/drivers/hwtracing/coresight/coresight-core.c
> +++ b/drivers/hwtracing/coresight/coresight-core.c
> @@ -580,6 +580,30 @@ struct coresight_device *coresight_get_sink(struct coresight_path *path)
>  }
>  EXPORT_SYMBOL_GPL(coresight_get_sink);
>
> +/**
> + * coresight_get_in_port_dest: get the in-port number of the dest device
> + * that is connected to the src device.
> + *
> + * @src: csdev of the source device.
> + * @dest: csdev of the destination device.
> + *
> + * Return: port number upon success or -EINVAL for fail.
> + */
> +int coresight_get_in_port_dest(struct coresight_device *src,
> +                              struct coresight_device *dest)
> +{
> +       struct coresight_platform_data *pdata = dest->pdata;
> +       int i;
> +
> +       for (i = 0; i < pdata->nr_inconns; ++i) {
> +               if (pdata->in_conns[i]->src_dev == src)
> +                       return pdata->in_conns[i]->dest_port;
> +       }
> +
> +       return -EINVAL;
> +}
> +EXPORT_SYMBOL_GPL(coresight_get_in_port_dest);
> +
>  u32 coresight_get_sink_id(struct coresight_device *csdev)
>  {
>         if (!csdev->ea)
> diff --git a/drivers/hwtracing/coresight/coresight-ctcu-core.c b/drivers/hwtracing/coresight/coresight-ctcu-core.c
> index c6bafc96db96..3bdedf041390 100644
> --- a/drivers/hwtracing/coresight/coresight-ctcu-core.c
> +++ b/drivers/hwtracing/coresight/coresight-ctcu-core.c
> @@ -118,23 +118,6 @@ static int __ctcu_set_etr_traceid(struct coresight_device *csdev, u8 traceid, in
>         return 0;
>  }
>
> -/*
> - * Searching the sink device from helper's view in case there are multiple helper devices
> - * connected to the sink device.
> - */
> -static int ctcu_get_active_port(struct coresight_device *sink, struct coresight_device *helper)
> -{
> -       struct coresight_platform_data *pdata = helper->pdata;
> -       int i;
> -
> -       for (i = 0; i < pdata->nr_inconns; ++i) {
> -               if (pdata->in_conns[i]->src_dev == sink)
> -                       return pdata->in_conns[i]->dest_port;
> -       }
> -
> -       return -EINVAL;
> -}
> -
>  static int ctcu_set_etr_traceid(struct coresight_device *csdev, struct coresight_path *path,
>                                 bool enable)
>  {
> @@ -147,7 +130,7 @@ static int ctcu_set_etr_traceid(struct coresight_device *csdev, struct coresight
>                 return -EINVAL;
>         }
>
> -       port_num = ctcu_get_active_port(sink, csdev);
> +       port_num = coresight_get_in_port_dest(sink, csdev);
>         if (port_num < 0)
>                 return -EINVAL;
>
> diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> index 33e22b1ba043..e51b22b8ebde 100644
> --- a/drivers/hwtracing/coresight/coresight-priv.h
> +++ b/drivers/hwtracing/coresight/coresight-priv.h
> @@ -156,6 +156,8 @@ void coresight_remove_links(struct coresight_device *orig,
>  u32 coresight_get_sink_id(struct coresight_device *csdev);
>  void coresight_path_assign_trace_id(struct coresight_path *path,
>                                    enum cs_mode mode);
> +int coresight_get_in_port_dest(struct coresight_device *src,
> +                              struct coresight_device *dest);
>
>  #if IS_ENABLED(CONFIG_CORESIGHT_SOURCE_ETM3X)
>  int etm_readl_cp14(u32 off, unsigned int *val);
> --
> 2.34.1
>

Reviewed by: Mike Leach <mike.leach@linaro.org>

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

