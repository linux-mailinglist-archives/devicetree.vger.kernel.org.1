Return-Path: <devicetree+bounces-187286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3250ADF5A2
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 20:16:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FE721732D1
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 18:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CCDC3085D3;
	Wed, 18 Jun 2025 18:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wid0jK4Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74EA528DB62
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 18:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750270598; cv=none; b=pVbSiQ618IEXIInPORwsumF1IBP1FMQgLz7i6XumGesX9a6mNQVroK2Gcv3irp19CjrO7DN/ZpBhuQtuw3BSViS067C8+u4DkFjViRZLaPWH/ypRc7sHDRFeznhd7dTh9i/HJmKsSY3aDXDhTnCzQV3tLOBaBjM10OJG+VH7tgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750270598; c=relaxed/simple;
	bh=4Fd9qcUJXzQbN+9KTtCF1fqWdiXzbwzF6B966ci6XRI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s8oUMyTPsefwUFKJHRw4bu4Ks3XU9iiVIWbUXMFMig3C1ggfGr82ONm10yPDHzvQSK+Q3gcpmoBeV1637fvKCOy3cR8RDpD1sROixvqFqrcdiiDIIOpNEFxXXaft6FFB7HknNbQexFKv8yAwduu/LymbpM9IgKXSn2jHFTymCRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wid0jK4Q; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-60f0a92391bso3643370eaf.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 11:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750270595; x=1750875395; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lQ6KRNqHtUH9Gf6fw/A7PLcOlEK5Gn0mWYnHJo+61Ac=;
        b=wid0jK4Q15Vl/kw4kZKo7qejb44EIxGfESRFu6tffrMzE2exUJ6vtd1TQjIN+a49HH
         FPWBBAUbGVT0/6aKrHPY68p/dajy468RNMNnCnE8qhmCjdvLcF1d+IdJO+y4NnN9kwE1
         3RO8N5hKPqhhuFbL7zyTtQ1WLKHnWE/nqIIGB4u6g5N7oVSBJSio4RUTWh4AL4rQncP+
         FuXNB71wtpDaMWMTAUy99HRxRrToWljSkN9MpXMTfZvvfgff8Ow1RAno42NJREY84zO+
         GCR7/L3aqB9qmH9rD+uSWHYo6xQvvjBTxwkD8EpFXrctx/nIiXv7x39wn5J64mdplqSB
         4Hew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750270595; x=1750875395;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lQ6KRNqHtUH9Gf6fw/A7PLcOlEK5Gn0mWYnHJo+61Ac=;
        b=bdRXPF4YARA2tJWe+/eumIX0ScgJL5088KKT8TR2i9BS1XVsQGDIwCScpaG502v+jx
         j4NiMYvWQkRsov3cUQlM2ytV/vJqI4wl2rEr4rIt9FlFAWbvseT0lWEQcPLK9bgr0WNE
         OLuqHOiTi/iHTtGvFyhocwbw056k9vLbkjWiXvAo5q3+wvMpWhBGQkJJLr2UfV+LfTCY
         6eMAjMIyUb0wzv7G7Ph7kN2MFe14g6BQvOTTsjrx6h89L9bB/m21sPvzm2W26ZVI8WAs
         I3OLytoO5Y2lWri3292jU/HboZP+Fqyh5vde2V7IPKQYNdelpeQAF5K5ENrwAXZ9JQ1/
         rpBw==
X-Forwarded-Encrypted: i=1; AJvYcCVDqy3ywhkdAZ24pbrKd5UpuJlCuKklODI5nbV78D2eFQAskia+qhDh0rjnlyeo4qs6BZvt2MpBqHjx@vger.kernel.org
X-Gm-Message-State: AOJu0YyToyIN9RAPK+3SBj0VCtMorgigg8nZK4VrS7dr+sbE7Ypu9/Em
	zKIseBXFx3PCHd3aAyXoQo+hi+liJ9ypGnNgb8Z/3V8u+0orRq8YAatYAygEU//+Z8k=
X-Gm-Gg: ASbGncsMWtR/I8LtJbJ6YksGkcYyg+6wM9qQ3gvT1WT36s3Z4odoUAS+GU9Lx7g1t19
	iKbkbi5KCRPo0GjuXMsOFmSCr+Ad9SOnnoX0Wujh0RjbR66+TbpOtXsVICSyaQEHNolWhw6poJJ
	Z+G7baxaqYU6wvtw6Ek7vzWSGN4DgkDfxaf2LK90m/Aeuo6TdkRGOLe7iSYLtNiH7A9awH8L7a6
	jw8epCPtO4KOk0RbgacjFeNFSWvo+FDn2J063/lbktdaz+66GULGiujqySkr37T2bqaavc4Forf
	o2X4kNnBCCbWHNXwHxzl7zFkKbH42zKXbC3SXa1s+VlrekKvvc9hSX7DNa2DEaFof/PduQ==
X-Google-Smtp-Source: AGHT+IERtISn8EPb8IizUWIQkj9b9iJsEPiQd/pV7ijZ/mH9QjGYp3xZSAl/4Lp/uwu1uArVd8eRSg==
X-Received: by 2002:a05:6820:1c8e:b0:611:3eb5:7272 with SMTP id 006d021491bc7-6113eb58a0amr3281471eaf.0.1750270595379;
        Wed, 18 Jun 2025 11:16:35 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:1b3b:c162:aefa:da1b])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-61108f0b2fasm1471880eaf.30.2025.06.18.11.16.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 11:16:34 -0700 (PDT)
Date: Wed, 18 Jun 2025 21:16:32 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
	arm-scmi@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v3 2/2] pmdomain: core: add support for subdomains
 using power-domain-map
Message-ID: <e463a278-7e6e-4287-9093-42d0a0d365d2@suswa.mountain>
References: <20250613-pmdomain-hierarchy-onecell-v3-0-5c770676fce7@baylibre.com>
 <20250613-pmdomain-hierarchy-onecell-v3-2-5c770676fce7@baylibre.com>
 <CAPDyKFrO9rb0eDb2qO+EGaVjOFG=7emgca8511XACDhWY=dt5g@mail.gmail.com>
 <7hsejzp4xg.fsf@baylibre.com>
 <CAPDyKFo-iPBPgkM43q+5cGR2sptkLk4E6TAERCQbCu24o1RfFQ@mail.gmail.com>
 <7hcyb1os9y.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7hcyb1os9y.fsf@baylibre.com>

On Wed, Jun 18, 2025 at 10:48:09AM -0700, Kevin Hilman wrote:
> diff --git a/drivers/pmdomain/core.c b/drivers/pmdomain/core.c
> index 88819659df83..3ede4baa4bee 100644
> --- a/drivers/pmdomain/core.c
> +++ b/drivers/pmdomain/core.c
> @@ -3220,6 +3220,40 @@ int of_genpd_parse_idle_states(struct device_node *dn,
>  }
>  EXPORT_SYMBOL_GPL(of_genpd_parse_idle_states);
>  
> +int of_genpd_add_subdomain_map(struct device_node *np,
> +			       struct generic_pm_domain *domain,
> +			       int index)
> +{
> +	struct of_phandle_args parent_args;
> +	struct generic_pm_domain *parent_pd;
> +	struct device *dev = &domain->dev;
> +	int ret;
> +
> +	if (!domain)
> +		return -ENODEV;
> +
> +	/*
> +	 * Check for power-domain-map, which implies the primary
> +	 * power-doamin is a subdomain of the parent found in the map.
> +	 */
> +	ret = of_parse_phandle_with_args_map(np, NULL, "power-domain",
> +					     index, &parent_args);
> +	if (!ret && parent_args.np) {

Sorry for the pedanticry but could we flip this around?

	if (ret)
		return ret;

	if (!parent_args.np)
		return 0;

> +		parent_pd = genpd_get_from_provider(&parent_args);
> +		of_node_put(parent_args.np);
> +
> +		if (IS_ERR(parent_pd))
> +			return -EINVAL;

		return PTR_ERR(parent_pd);

> +
> +		ret = pm_genpd_add_subdomain(parent_pd, domain);
> +		if (!ret)

	if (ret)
		return ret;

	dev_dbg(dev, "adding PM domain %s as subdomain of %s\n",
		domain->name, parent_pd->name);

	return 0;

> +			dev_dbg(dev, "adding PM domain %s as subdomain of %s\n",
> +				domain->name, parent_pd->name);
> +	}
> +
> +	return ret;
> +}
> +


