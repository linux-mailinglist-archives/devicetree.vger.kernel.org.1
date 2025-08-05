Return-Path: <devicetree+bounces-201914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC24B1B368
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 14:29:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E8703AB23B
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 12:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D8902701DF;
	Tue,  5 Aug 2025 12:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HdKbrHzG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9830A26B2D2
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 12:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754396937; cv=none; b=e/dbE7GhxjejPS9CloMfBxfoxTNTU14YafnVY9y1Lxmkgc8BNgJ+s+4YFy7K/ggdqaojd5mlALCbgKnPtaHNMYmo1Ery8OJIybD1LlGLdViVeEk9EfDLbqknOj2Oofl/MZV0mDcPepMuVUZDHvMPb+MiqoRpraen6UEZq4Pl9O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754396937; c=relaxed/simple;
	bh=tNplBE4E2NM1jt0AGyio97MrBV+ORT9HliebtqMQWH8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q2zMvE8wq0r03q0HCDJlNgFL9PR6LV8YzBijyeJnRRdn+PMajjvNFyPz0XbQP5AMH+/z6S4rv9ilmvAjLOwIj/QZ+zm+QbpRlSh6i622e4t25UsGnUeGN6fNM567cAjtme9oMI24vnJ1r3mtk+eNJW7Ol4mVuo/0a0uQ/5Anvyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HdKbrHzG; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-76bd202ef81so5998043b3a.3
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 05:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754396935; x=1755001735; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+p+3kxq3ntOlQXSdZIEKvX59/vh/dnjsv8DSeV6UdvM=;
        b=HdKbrHzGtIHnyWhrcN2aDskBzVwQuQ5Lv+nliFZOlixpST1bFofsZYqJ+j5VypPWcf
         hG/TPaUoOgi5VswDEFZoysNqtvR30CCsgUCV5lP0637jhsJpONGWNkWXp/O1gwk5ssZy
         6z2euehveNeCn5K5jYYmEZ/he98aZwuaFk/+7pn6w36wfB3jAZJIunA640u5TxGB4Gc+
         6izf17IkBhceA3wCx3P5PR8woUKcCYc+zMMzI2Ww5dYQcaQgadi52CzY0oeXwE7QgEpF
         2IN8PAzIcnuAMnaY7l8L/X+ORsqBvhKwCZhBLgZYo8ZsyMDyu5L1ToumVwqqC7h+lDKs
         icJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754396935; x=1755001735;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+p+3kxq3ntOlQXSdZIEKvX59/vh/dnjsv8DSeV6UdvM=;
        b=qq8bhs0DnmB6Ed1npv7pAyqi8WuZIjcWty6l0w6S8du2HGZz46P3glpGR7Ic0cebBT
         HBgRNaf+IVPA7ycY6Gf4+QEwrmEGpq4FQ8fwVANcTyf5A3wgpPcNCftSRHLpfb6ocyU3
         CSScAHShcLqlDwDFCFNxrJE5TwZarV/VDp2ZxkcIN9mc3pfQ/cRPL/vOynUZ9DxM1bWL
         /P4+imvqumaGVNzFRLytW9F4UhyobbithMVqENaI3VkU47Ej6tAfzERcAZ2vc74H1ctb
         H1QM0RAsijF8aSLPAn6FzusEKsUsLItRjS9O5AmRD10aXUAVRdgd6yuD4vI6LpBDxaYg
         Yg9A==
X-Forwarded-Encrypted: i=1; AJvYcCUuYCB4FPF2AWrdM7Ma0uzgfh6V4k21SKOJndr3nYkY/ccivvTGn4pqL7h53N/7PAmK6vcv4N69UXd4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+JqbAvxfMQG4nAyx7KYfXJs2ZE0OcEZRclHT2iwVPvl97CACV
	HNlUaZa/vTq0Vy7F2V87YEI68H0MDYeXdQtzbyd0XymE4vjK4Bhou1bA6O1DJ34uoCVkmx44h8d
	3Jg7GarlmxYOtFXZRiyv+ND0yKIQdeEAyHiDr3phoGw==
X-Gm-Gg: ASbGnctwsWlIVuFD5iMdY5UjF2FLqhPL6gNV0VyNwkc8pMNwinZ5D/zLOtCztGJVj1X
	sJvdqk7eDZyavCPal9w5rjjjM24NiqNqO9fgSOlfgrAaf/fUreP4ILo1ml9bnavEUoMt8gFwCnu
	4yzYPdmMxffl1w/oS3ue8vUyog6MJtI7NzhR3ceml/hWygx9fiFXpVtJEYkYebMRDt8VJay0PQ1
	rrBSQ==
X-Google-Smtp-Source: AGHT+IExvJ4N1aljdcQ1wuCSC3UpK9yzFpm/S0FUzyPbPH6TNyJqC4OGMrFOG+eOwOOVTv5X+OTdnmr6+Qic86Q26FY=
X-Received: by 2002:a05:6a00:21c3:b0:76b:de63:4341 with SMTP id
 d2e1a72fcca58-76bec4f3eaemr17001782b3a.23.1754396934498; Tue, 05 Aug 2025
 05:28:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250725100806.1157-1-jie.gan@oss.qualcomm.com> <20250725100806.1157-9-jie.gan@oss.qualcomm.com>
In-Reply-To: <20250725100806.1157-9-jie.gan@oss.qualcomm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 5 Aug 2025 13:28:42 +0100
X-Gm-Features: Ac12FXwYp4daB8lz5LB9vGwAGirh3SOTL_q0uxZYc7ZOfj216c9w3BrZkoxGXog
Message-ID: <CAJ9a7Vhw22ZoDSUced4tpBUx-Ej+8njQa+Z1SVGfyesMh-ChRg@mail.gmail.com>
Subject: Re: [PATCH v4 08/10] coresight: add a new function in helper_ops
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

Hi,

On Fri, 25 Jul 2025 at 11:08, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>
> Add a new function to identifiy whether the byte-cntr function is
> enabled or not in helper_ops.
>
> The byte-cntr's read_ops is expected if the byte-cntr is enabled when
> the user try to read trace data via sysfs node.
>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>  .../hwtracing/coresight/coresight-ctcu-core.c | 35 +++++++++++++++++++
>  include/linux/coresight.h                     |  3 ++
>  2 files changed, 38 insertions(+)
>
> diff --git a/drivers/hwtracing/coresight/coresight-ctcu-core.c b/drivers/hwtracing/coresight/coresight-ctcu-core.c
> index 8fc08e42187e..dec911980939 100644
> --- a/drivers/hwtracing/coresight/coresight-ctcu-core.c
> +++ b/drivers/hwtracing/coresight/coresight-ctcu-core.c
> @@ -234,9 +234,44 @@ static int ctcu_disable(struct coresight_device *csdev, void *data)
>         return ctcu_set_etr_traceid(csdev, path, false);
>  }
>
> +static bool ctcu_qcom_byte_cntr_in_use(struct coresight_device *csdev,
> +                                      void **data)
> +{
> +       struct ctcu_byte_cntr *byte_cntr_data;
> +       struct coresight_device *helper;
> +       struct ctcu_drvdata *drvdata;
> +       int port;
> +
> +       if (!csdev)
> +               return false;
> +
> +       helper = coresight_get_helper(csdev, CORESIGHT_DEV_SUBTYPE_HELPER_CTCU);
> +       if (!helper)
> +               return false;
> +
> +       port = coresight_get_in_port_dest(csdev, helper);
> +       if (port < 0)
> +               return false;
> +
> +       drvdata = dev_get_drvdata(helper->dev.parent);
> +       /* Something wrong when initialize byte_cntr_read_ops */
> +       if (!drvdata->byte_cntr_read_ops)
> +               return false;
> +
> +       byte_cntr_data = &drvdata->byte_cntr_data[port];
> +       /* Return the pointer of the ctcu_drvdata if byte-cntr has enabled */
> +       if (byte_cntr_data && byte_cntr_data->thresh_val) {
> +               *data = (void *)drvdata->byte_cntr_read_ops;
> +               return true;
> +       }
> +
> +       return false;
> +}
> +
>  static const struct coresight_ops_helper ctcu_helper_ops = {
>         .enable = ctcu_enable,
>         .disable = ctcu_disable,
> +       .qcom_byte_cntr_in_use = ctcu_qcom_byte_cntr_in_use,
>  };
>
>  static const struct coresight_ops ctcu_ops = {
> diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> index 4ac65c68bbf4..b5f052854b08 100644
> --- a/include/linux/coresight.h
> +++ b/include/linux/coresight.h
> @@ -419,11 +419,14 @@ struct coresight_ops_source {
>   *
>   * @enable     : Enable the device
>   * @disable    : Disable the device
> + * @qcom_byte_cntr_in_use:     check whether the byte-cntr is enabled.
>   */
>  struct coresight_ops_helper {
>         int (*enable)(struct coresight_device *csdev, enum cs_mode mode,
>                       void *data);
>         int (*disable)(struct coresight_device *csdev, void *data);
> +       bool (*qcom_byte_cntr_in_use)(struct coresight_device *csdev,
> +                                     void **data);
>  };
>
>
> --
> 2.34.1
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

