Return-Path: <devicetree+bounces-50538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8474E87C041
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 16:32:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A65021C20C15
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 15:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57C7571B51;
	Thu, 14 Mar 2024 15:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xd5TpQcb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A1D571B42
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 15:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710430303; cv=none; b=C+AJoqNCNWR9C1seI3tymhduwtpLgKidU68tqDMErNjVMB3/LH7artRykJgC47t5rKAAGK0HXqNOpAdZT5m9J2FDq6vnmqJmPqdZsSr5SZSor5rtQgcnRea5x3U3LkQWOvQJstVV+AjlvPXNMlfhP35DT6wC4WOg9N4v0ZNVHrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710430303; c=relaxed/simple;
	bh=a04JHFqxyI3Ydds0JExQwGiYuxf/v3UlCkqU51U9XzY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rvLUXgzka2yblzGPkzcFrSQG15RtsTcYlB8NVabFMm39zJ5zVoZrL0/Tp+REoU75VUKmtYY8ceh4jYEkBE0sG5BUJZNoFsgukVSbwZLR29LjyPF1ON9TwD7Mn4TNGcdwa2OXR2t2sP+LztdOJUu4S5nfM4efTc92ZDsTlY45exQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xd5TpQcb; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-513d3746950so728301e87.1
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 08:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710430300; x=1711035100; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1GzIPdAccPQ9M4f+gmSEp7mIKo4xnW7trDdRbAnf9uA=;
        b=xd5TpQcbv1kNo4CktlTHRl9cfeTpEjRqWIWROfxWyG6GNOb+VUrgfbGJ+DfEGKb4OG
         /yMtMwJB+fXAFaT59MqxEq49uYfYDBrQFpk57LBKYBy9f9ySh/tQkqlkuiC1vpmr5uJR
         GxQEhLQYFNT2GvZN9su2pN6UCrx9eSinbythoy60omw0CfglmaCWWUH+R9f9JrBepXUQ
         /CNxGOev+TeEIDvbyO+jr0A+mjcf8YJeni9MAL7nk1XXvqcv4uZ+Ea7w34OiD8mKCOER
         P/jq/oRwIXYl73IqQ3Mjyd38HbsNEujYLbDpk0tWfsOWME6QU5RALDDS193ZUj02nE98
         jHig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710430300; x=1711035100;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1GzIPdAccPQ9M4f+gmSEp7mIKo4xnW7trDdRbAnf9uA=;
        b=YJjjx9laHVMcStCuIej9BPIJgktpkJdgvEq8F4r5V+cS/asomN6ooUc1vtUB7cGfaT
         Hqrr62MEqAG+XPjAsnbPSbyXykstCeEUjVQI5jnH4JmTtt0CaRxKeGP735WfyWh//KSA
         kXRNLFjR/qHNtFzQTHN3IuJ1hPqKlybDVwem3ng9a+p8fNH1EasKXWVMCE6akANogCVP
         TI2VSmIiob7QLGjWQrZoocnzdTnYydNTdOxMcs6mA1lOChAgaGfsrl/D+GBAs8dX5I6I
         w+xJHJlO/zd9JlTQVGd7/m05fb9H2ld+H2e4DMib48PB1AxAM/ghP+KMxT0Lc7OgrNms
         LnKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvAyrI64FbJUpNt2+yXeHgT65IlvKyNFhcyjpoitAimg8OrGyOndH7KDFrwu3T+5vctx6xt9her1OFF3zOVoCruvc+drBfEnSaTA==
X-Gm-Message-State: AOJu0YwrrhkZbY2ITuFRGlKm60Tigqq3364xPLYH0+0FTLLG5Ec7DJPb
	kL9K33r32u5hcd66mvoy8lQwEJFHzouq0LOekBtpjHqLy2Z0QwPG4BhksVy8j3w=
X-Google-Smtp-Source: AGHT+IGUzU/VbHGBcrrusrzXpFDMtduVe22+SATXuUUpn3+UEwM2lQYyx6T6FWVg+f4qJv6s5O6y7w==
X-Received: by 2002:a19:ad02:0:b0:513:5a09:abbe with SMTP id t2-20020a19ad02000000b005135a09abbemr343146lfc.67.1710430299586;
        Thu, 14 Mar 2024 08:31:39 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id l5-20020a05600c1d0500b00412ea52b102sm6053706wms.34.2024.03.14.08.31.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Mar 2024 08:31:39 -0700 (PDT)
Date: Thu, 14 Mar 2024 18:31:35 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Oleksii Moisieiev <oleksii_moisieiev@epam.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v5 4/4] pinctrl: Implementation of the generic
 scmi-pinctrl driver
Message-ID: <55ec2392-c196-4669-a339-12ef336707fa@moroto.mountain>
References: <20240314-pinctrl-scmi-v5-0-b19576e557f2@nxp.com>
 <20240314-pinctrl-scmi-v5-4-b19576e557f2@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240314-pinctrl-scmi-v5-4-b19576e557f2@nxp.com>

On Thu, Mar 14, 2024 at 09:35:21PM +0800, Peng Fan (OSS) wrote:
> +static int pinctrl_scmi_get_function_groups(struct pinctrl_dev *pctldev,
> +					    unsigned int selector,
> +					    const char * const **groups,
> +					    unsigned int * const num_groups)
> +{
> +	const unsigned int *group_ids;
> +	int ret, i;
> +	struct scmi_pinctrl *pmx = pinctrl_dev_get_drvdata(pctldev);
> +
> +	if (!groups || !num_groups)
> +		return -EINVAL;
> +
> +	if (selector < pmx->nr_functions &&
> +	    pmx->functions[selector].num_groups) {

If pmx->functions[selector].num_groups is set then we assume that
functions[selector].groups has been allocated.

> +		*groups = (const char * const *)pmx->functions[selector].groups;
> +		*num_groups = pmx->functions[selector].num_groups;
> +		return 0;
> +	}
> +
> +	ret = pinctrl_ops->function_groups_get(pmx->ph, selector,
> +					       &pmx->functions[selector].num_groups,
> +					       &group_ids);

However, pmx->functions[selector].num_groups is set here and not cleared
on the error paths.  Or instead of clearing the .num_groups it would be
nice to pass a local variable and only do the
pmx->functions[selector].num_groups = local assignment right before the
success return.

regards,
dan carpenter

> +	if (ret) {
> +		dev_err(pmx->dev, "Unable to get function groups, err %d", ret);
> +		return ret;
> +	}
> +
> +	*num_groups = pmx->functions[selector].num_groups;
> +	if (!*num_groups)
> +		return -EINVAL;
> +
> +	pmx->functions[selector].groups =
> +		devm_kcalloc(pmx->dev, *num_groups,
> +			     sizeof(*pmx->functions[selector].groups),
> +			     GFP_KERNEL);
> +	if (!pmx->functions[selector].groups)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < *num_groups; i++) {
> +		pmx->functions[selector].groups[i] =
> +			pinctrl_scmi_get_group_name(pmx->pctldev,
> +						    group_ids[i]);
> +		if (!pmx->functions[selector].groups[i]) {
> +			ret = -ENOMEM;
> +			goto err_free;
> +		}
> +	}
> +
> +	*groups = (const char * const *)pmx->functions[selector].groups;
> +
> +	return 0;
> +
> +err_free:
> +	devm_kfree(pmx->dev, pmx->functions[selector].groups);
> +
> +	return ret;
> +}


