Return-Path: <devicetree+bounces-130102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2839EE017
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 08:16:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A6C481655BA
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 07:16:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BB3A20ADF1;
	Thu, 12 Dec 2024 07:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MH4zeCUu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4793A20ADE9
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 07:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733987765; cv=none; b=KLDVpo9DPhkWYisXwgzLntaM3043xQwUVdE6S0bpYVGaYfmSsGMxB83TvmjAAIhHOnYjv1WM48zOqZNP83AbPm5IPH/2NfAPTN8+h/kIyg8AZFuE5JrkvkfYrFOk3sYXy15Q3onx5RJx7MoDoKGHuad/VWnsgHV//F3dqNBLcGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733987765; c=relaxed/simple;
	bh=/GRsmos36cXMIlpR9JSwG1RkBUOM946AIKMMDjyXANQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sExG1yGdbPQiKp9ABQH2V5ZT9TtKpIb+tnzlAKcLM+AuRHmSjdi0ubNgGmskCmWpmm3hnmTyLt/BV68XBaseGSJX29LDkQySZEOo0vYj+G7VJl5eTwVG64mcPPIqlWAHwm3udp9hRcd6iD4N7HRkaJHGPPYSDr6c+QaknajaENE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MH4zeCUu; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2ef70c7efa5so175577a91.2
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 23:16:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733987760; x=1734592560; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3L98iE6iEgWKW2dRYjbdeCK1aiyyhjOykPkAdKGjuiA=;
        b=MH4zeCUu+Ca5VInJmSz6Xa7lXCkjv0TH9VZokTjrQW5AAp9gEbVCyQnW5KxR++4bRT
         jJFgMpwhXWSHSTX3bqdCf3KQBKKGnUsAeDVygS9h8OkBK0RSKOoMx4CHO9RLp/Nr9WtG
         2N6zRByEjp6ShHIpPuuKjrrJ4ZiE+E9bS5vyse+JpzmUyb43GOhBVFmNbFp9w+4LIB/3
         AtVRn7LtIRlwqNbdHxHhguj3hdUlcLkH2A/FlvX4gG5xfD3xH8g+4+B/4HDvnuKmYPVG
         AGevP3CMCxCt1KS6qjjjWJtNqfpAc6pQTMwFlwLY90H3WAFeXeJbO3J7Kb4Feo4mHtGS
         60YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733987760; x=1734592560;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3L98iE6iEgWKW2dRYjbdeCK1aiyyhjOykPkAdKGjuiA=;
        b=Rco+z+hVI/RVbDljSoG88Y0CbBLO8oO6TKygSvDg+KIHODF0LUxPXk6lxRCECvF83P
         cI9Sg/8sZ+lAu1iFGiJkuCRtlHwKXxBwepADvZ14qa+2hDYu4J5TQ5EiXvEJ/BKHXwpq
         OYBo4cD0uJ03OF6MmQcZmKXSLtjW6EtrQYWEvaRVsXe6lUzkvzA9WDcO633PnWDZ/YW+
         QDSEH56yLKVbYoNrOUE0ZOryekO3e/wNiWSsKT3yOYIH1zSOGmzrxvpnyuIa98LTgmDs
         z/ebysK776Qtjr6GS3K8jECDt8NscWbOaPOm1R34qlNth+xR53yQdLsBItbZtc29re8s
         fu7A==
X-Forwarded-Encrypted: i=1; AJvYcCW+uYPgVSM0TGIRFWoTHDOCJX3F8sjCTChyF1uaLuQLu4p/H3JnhoyCz/pQyFBBirbCG9tfoN1u4fS6@vger.kernel.org
X-Gm-Message-State: AOJu0YybvTxTBtT1+LBYx/1GYw03Ey4FLMkP8oD/vhNGBh2tVrseHddh
	s0TbHvwWCjRvzV5Ig986AWCLAK9wsiGnAaNST+zI+U0l5NaQTzvNixSda33ApPc=
X-Gm-Gg: ASbGnctkw8ojbDmnsVQiuCXDaD0VvDqQ23sLngamsEGQf/8JVrJ6q6YblfuwEhyxiJN
	jIGv1w6t13VjVbmnxZz0LdiCdy0Bb/WhNF0AP1MbHd5o7ZGdlkeFpqQdR1a/SuM3YuuJdyTlGDu
	LZhqKi1HrXpHrhbUm4e6nD+MTK1LMRBQoaf6dtUs1/aAm3m/EPLyaNhEy6eXgAWUhFvCuUoLOyQ
	dVzD7uUmWUcUhEoYppl8y7FNRIXHMp+v6ZLmwrqQUYsC7+9u0quV6LjebE=
X-Google-Smtp-Source: AGHT+IEUOkvi+y7f3A5lyEr4YtS9iRRSj52GzIA+ZuP4cB/sOWfFEYg7en1hPsQli/qSrMewFNomsQ==
X-Received: by 2002:a17:90b:38cc:b0:2ee:7a4f:9265 with SMTP id 98e67ed59e1d1-2f127fc7463mr10057310a91.15.1733987760404;
        Wed, 11 Dec 2024 23:16:00 -0800 (PST)
Received: from localhost ([122.172.83.132])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f142e0ce50sm563653a91.39.2024.12.11.23.15.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 23:15:59 -0800 (PST)
Date: Thu, 12 Dec 2024 12:45:57 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	upstream@airoha.com, Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v7 1/2] dt-bindings: cpufreq: Document support for Airoha
 EN7581 CPUFreq
Message-ID: <20241212071557.76viy5b7ottf7jck@vireshk-i7>
References: <20241206211145.2823-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241206211145.2823-1-ansuelsmth@gmail.com>

On 06-12-24, 22:11, Christian Marangi wrote:
> On newer Airoha SoC, CPU Frequency is scaled indirectly with SMC commands
> to ATF.
> 
> A virtual clock is exposed. This virtual clock is a get-only clock and
> is used to expose the current global CPU clock. The frequency info comes
> by the output of the SMC command that reports the clock in MHz.
> 
> The SMC sets the CPU clock by providing an index, this is modelled as
> performance states in a power domain.
> 
> CPUs can't be individually scaled as the CPU frequency is shared across
> all CPUs and is global.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
> Changes v7:
> - Add more info to the description for usage of clock and
>   performance-domain
> - Drop redundant nodes from example

Applied. Thanks.

-- 
viresh

