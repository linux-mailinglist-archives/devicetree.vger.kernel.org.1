Return-Path: <devicetree+bounces-175612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D87AB146E
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 15:10:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 023A51C2736B
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C12D291158;
	Fri,  9 May 2025 13:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b="x2rBzAvE"
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta1.migadu.com (out-188.mta1.migadu.com [95.215.58.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4619715E96
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 13:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746796246; cv=none; b=IoShVlAoKwKgPjDKkzt0a0uT8lP8BSLWSiJwHPG1iCR+7oTHKgnvNmHzc1usybyVJLuoMW9NbPMl//lrXlYxJvUJQiHDe6aduQ7XBJUq49eHXVz/GI42T/ohMjw9mXywTYvz+3AdbSIArqF3GW0Sc31g5w8z5BDiGQMaiCfl83c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746796246; c=relaxed/simple;
	bh=oR8kYbfSYqSZzys3+DWjn8paGvWczu9J0GtPLvrNKv8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ABV/uid2DePFhu+/mWhhbragL56yZPkuRKEkY8ussvQ8FkyYW/StncWj3q/5KBNS6xmAsd9ol8cwe6BJ3D6IWAW63xT/agAwiEt7UDP3RZ7DhmXxmBUdyES3a22K0sJwAY0NbvGnaF7UY6t6lZQkgdM9LZ1rDAtVGb6jdCUMshU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io; spf=pass smtp.mailfrom=rosenzweig.io; dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b=x2rBzAvE; arc=none smtp.client-ip=95.215.58.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rosenzweig.io
Date: Fri, 9 May 2025 09:10:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rosenzweig.io;
	s=key1; t=1746796242;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=59e1GCro0WbneHQa42anvap4yh18L8Tn1Jdf7L1xdeo=;
	b=x2rBzAvElnG6TGCgmPuydA6mwOtLGxwMcukr7iwnachfNhT3vVHAJ0UOeHsHo9txStuAk6
	9x7Tev7ubxwG4a4LQxi8lf4OYRYE4xsgu284Zgm0RyRwpNqERvC3o5N3H4GJjHFF/MeJ/G
	gnNuCAYAz686/rzZeYj+MgzlWYuZsnTY5qD7VX2XHJ9wJPmHmzsMOCNjgbHYv3S+//ySMH
	rbS4gVEMLpdDoZzHGanW7eBIAXnVeSs9/vrJdDx85bQIuZVlVoZEyeb7QL30LS4JfXZQ70
	k8N6JJeqEQNDs1hyimaxjF7MmrpYYhTyQIVNoJKE4tRBz+G9hZrpMITpmVt8SA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alyssa Rosenzweig <alyssa@rosenzweig.io>
To: sven@svenpeter.dev
Cc: Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>,
	Hector Martin <marcan@marcan.st>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sre@kernel.org>, Lee Jones <lee@kernel.org>,
	Marc Zyngier <maz@kernel.org>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 5/9] gpio: Add new gpio-macsmc driver for Apple Macs
Message-ID: <aB3-yygZvdgiE6L8@blossom>
References: <20250503-smc-6-15-v4-0-500b9b6546fc@svenpeter.dev>
 <20250503-smc-6-15-v4-5-500b9b6546fc@svenpeter.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250503-smc-6-15-v4-5-500b9b6546fc@svenpeter.dev>
X-Migadu-Flow: FLOW_OUT

> +	count = smcgp->smc->key_count;
> +	if (count > MAX_GPIO)
> +		count = MAX_GPIO;

count = min(smcgp->smc->key_count, MAX_GPIO);

