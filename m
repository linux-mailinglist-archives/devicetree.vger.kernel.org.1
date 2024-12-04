Return-Path: <devicetree+bounces-126795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9929B9E3314
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 06:32:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5DC7F283B96
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 05:32:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7189617C21E;
	Wed,  4 Dec 2024 05:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gl4Xng5u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D550016EB54
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 05:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733290336; cv=none; b=I2aolsOjNwOPeurxG2QX70Gurfgm1PDgo25/efD79u78iOxmmp+mJzox1YDhj9OPjjn0/sQKLcrZawYdCiPxiA45GQGqQkffPqMMQ24uAk2BIrZWXV0LVHgmLKIRGCfdBKpirbvYPgYEOFQSW/vERfZeqb6HJwcdRSoqH72vQiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733290336; c=relaxed/simple;
	bh=7yzDt2THE5UiqFlbGqXqjqL/3debzqNeA00lnjfD6RQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TgDrTu5m4GbGcN/6PZcqKIvSJ4HPG8eg2ENuGnUHqP2c5tGQVR43/xipZZK5CyTf3ZhpqElCFefORYGhaVcdEJoL/byt9tBITJGoOWTKLD6Sfan80SKOEP7iemCkGpTXxmSRLYHPADU/jGOg0EAhsvh77ixiYzbyvoO1iEVjMEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gl4Xng5u; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-215a0390925so30541315ad.0
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 21:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733290334; x=1733895134; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+xH+XGfz/MFflVGjWhhbYcbFyLOKyHtqNKF1p6JTm9o=;
        b=gl4Xng5u+KyebJym4yGuyIFGO51WJHaDqkq1AhrFE5E44nz4QSBmfRZEhh4I2NVxqW
         iMn/uuoaqfOW2X27o+JeZn7kTy+QJZ98uDtv1Yi9yqvOBtApxC6EwWE0u8C3zand7IyT
         9A+UhUsG7b4NucWZ4bFe+md1nkN7aONV5imKtAvVFsB0dMjOHvWWLNxHs5AogkOXhDot
         m0ZP0qSAimjMYUJDCtvKic1ctJdeMJ505sfwCamgBRvFKi/cI7j5KrdBB0e+/Uv+lYCI
         V4UjpnSJxUU4pQsjRtmzjbOfFCtqNtmP25UMnKhQeMaWhXFQM/59lNdHD7HU0vSr+dDL
         HiWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733290334; x=1733895134;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+xH+XGfz/MFflVGjWhhbYcbFyLOKyHtqNKF1p6JTm9o=;
        b=SKAY6ySOC2qnXGbeSaDJfOJLLxwNUaatvnvuggQ8vN33ePLApSE224kU1ZMGXScoih
         ZG3n+4AR4F9z+DvkJBjulzmqVlju9wU1zVdIG5U5I7/lk65YUsapMpVU2BIuezEs3Fkm
         /lY+5RhzFllfXSsP7cRwQ3sM9khCznPy8D2MKSJJAIyoXdjMAdPFTTpgdgiwwyYcZTz5
         LrQOZ16wuDjCp0LiQkkZiGgCAkpdQIYNFCk88dvm3TbpoIuQNh21fAZgDmeaQ0T0CP+z
         h8GNeRzLGMTaFB8ch7HvA/xVSgtDUwDVk/2tij6um27FnHcergRLvx9P2LjGSTu0WYZ4
         pTsw==
X-Forwarded-Encrypted: i=1; AJvYcCVEVohCx7zpiwcBRJ2oa+VaE7WEGqoBH8ZzUEedgz44n6qiGCdURxTlPpj9CRNeSUz+F5TyL4FH56JG@vger.kernel.org
X-Gm-Message-State: AOJu0YyjvcHe2bvxTLSKIfUewQrT7Fpz2xW6khmKEQSIvXFHYRFtxgwr
	Dz9GboWTqnBn8xrKqMCiOg01e69fTQNgbju4MHSOMGYxdM7e9PuIlDOrYrWcPJ0=
X-Gm-Gg: ASbGncvHTdC8LVFlznO48L/TdzV2jB6ogKilbl5nyWlDQTOd1vtMD/B/y1Jjelq773Q
	MSOk/EcvphdMS1b2g6co3s3l7Ju2hrkUqX0ro+IDIRhjFeQsNbTL9p7O1i9sFXvUT+ykciLcpa2
	VkFtaQ0F0ev0eTvJZ/BGjWwDt4ch524eUHGbGVKgNby1eZ38i7ibBcL7TqlyVkwuU1IiNUqIyHJ
	sQReXJmL+9ciaYpD07hAYbdmuIFfxDdF6ZM2oWhdGRCfjUk1OTS
X-Google-Smtp-Source: AGHT+IHI2jzyqH0buZt4jEgwjAnflBCcsEvaoj9C3brK3XgP4S7w4dRM1Ni3AlMJnPowOpakPzhdzg==
X-Received: by 2002:a17:902:da81:b0:215:5d43:6f0e with SMTP id d9443c01a7336-215bd24af1cmr62921975ad.41.1733290334226;
        Tue, 03 Dec 2024 21:32:14 -0800 (PST)
Received: from localhost ([122.172.86.146])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-215b08965b4sm28711185ad.180.2024.12.03.21.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 21:32:13 -0800 (PST)
Date: Wed, 4 Dec 2024 11:02:11 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	upstream@airoha.com
Subject: Re: [PATCH v5 2/2] cpufreq: airoha: Add EN7581 CPUFreq SMCCC driver
Message-ID: <20241204053211.6gdogcpi4g3eavw5@vireshk-i7>
References: <20241203163158.580-1-ansuelsmth@gmail.com>
 <20241203163158.580-2-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241203163158.580-2-ansuelsmth@gmail.com>

On 03-12-24, 17:31, Christian Marangi wrote:
> diff --git a/drivers/cpufreq/airoha-cpufreq.c b/drivers/cpufreq/airoha-cpufreq.c
> +struct airoha_cpufreq_priv {
> +	struct clk_hw hw;
> +	struct generic_pm_domain pd;
> +
> +	int opp_token;
> +	struct dev_pm_domain_list *pd_list;
> +	struct platform_device *cpufreq_dt;
> +};
> +
> +static long airoha_cpufreq_clk_round(struct clk_hw *hw, unsigned long rate,
> +				     unsigned long *parent_rate)
> +{
> +	return rate;
> +}
> +
> +static unsigned long airoha_cpufreq_clk_get(struct clk_hw *hw,
> +					    unsigned long parent_rate)
> +{
> +	const struct arm_smccc_1_2_regs args = {
> +		.a0 = AIROHA_SIP_AVS_HANDLE,
> +		.a1 = AIROHA_AVS_OP_GET_FREQ,
> +	};
> +	struct arm_smccc_1_2_regs res;
> +
> +	arm_smccc_1_2_smc(&args, &res);
> +
> +	/* SMCCC returns freq in MHz */
> +	return (int)(res.a0 * 1000 * 1000);

Why casting to "int" when we can return ulong ?

> +}
> +
> +/* Airoha CPU clk SMCC is always enabled */
> +static int airoha_cpufreq_clk_is_enabled(struct clk_hw *hw)
> +{
> +	return true;
> +}
> +
> +static const struct clk_ops airoha_cpufreq_clk_ops = {
> +	.recalc_rate = airoha_cpufreq_clk_get,
> +	.is_enabled = airoha_cpufreq_clk_is_enabled,
> +	.round_rate = airoha_cpufreq_clk_round,
> +};
> +
> +static const char * const airoha_cpufreq_clk_names[] = { "cpu", NULL };
> +
> +/* NOP function to disable OPP from setting clock */
> +static int airoha_cpufreq_config_clks_nop(struct device *dev,
> +					  struct opp_table *opp_table,
> +					  struct dev_pm_opp *opp,
> +					  void *data, bool scaling_down)
> +{
> +	return 0;
> +}

I wonder whats better here. Provide this helper or provide a dummy clk-set-rate
at the provider itself ?

-- 
viresh

