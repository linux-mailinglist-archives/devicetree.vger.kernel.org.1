Return-Path: <devicetree+bounces-255339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDFBD225BB
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 05:12:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 161EF3023D50
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 04:11:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43BCF2C08AB;
	Thu, 15 Jan 2026 04:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w54DCHH4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F512BEC27
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 04:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768450306; cv=none; b=KiUk0WvZ4KKk6PfI8SECpU+rHEDNvCI+6X3G9BYXnqdF86fqOn5DsOD/4n2/pJ3cacLCpfjEvUmMmCov3eysuj7bTGhVB+hjRXKXzPMoPUzFDZFsMpPNxAK1AcZlQ2GxLUIPvaXxO1JEUQ261I3ueEJY69MA4OSrAYrotV7t1/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768450306; c=relaxed/simple;
	bh=kkM52wtwVyVjW+QAm9LKFKkHw3APGb6+WhbcpmuFrq4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HdDIxJXaRz/4wGGdO8JgC7u7Ai7D1fmUqsFJwzn4y8cnZK8ZH9jw6dC8mgy+YKyUV7TdktMALB8HYxnSZrBqlGT9m6aNzf+S5EhHXvFV8+oz5AwBI6TKspvR1UHwokPOgDelauLGk8ouY4cVyCu67m4QwNluxy1aZbzX7WfoWNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w54DCHH4; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-81e7477828bso241262b3a.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 20:11:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768450304; x=1769055104; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xP2VPIUiLJoH99MGWGrtf+rn+/TD63H55qh3heQER8c=;
        b=w54DCHH43xqm37kSHRBCeUFJqqLm617UF4he6S0dDIvB66GfQuMVJ231oVNMibdc4T
         F0I6WEC8+FlFgRcyb6GRMhQA7toJTecJJT8LA3hinWLo+Ne7e/2mORG1mZ2jhC73liUw
         PpiuMLk6xht8Y20eB5SJ7KBEed03smDGXYcBvIORYuGDORw+w8pPccF+IiY7U8j8NgT3
         qxz+nNvn2vQ9+qfDa/lhTZmiflUq3e7X8ccpCo9WDCOmBEfchxJfJUr7qYg7iIbXD4BQ
         y3PRdl57qKRbH2f2GdIP2/xPMLGgUR8MtoRK6n9VA7bLXMmkKDgZKqLsSUEJ43xLVH6D
         DjZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768450304; x=1769055104;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xP2VPIUiLJoH99MGWGrtf+rn+/TD63H55qh3heQER8c=;
        b=T3lQDfalSKPsKgl+DuwWGSn2jK5jGP9VziTbFAgB80YCjXECZvNIjecJVN0S8DWAr4
         GoN9A0o6IKwDdluihpLsFIbfI1mnXuMVGTXn5reQ6Irk4LcwDD/f1muxmcAP8abLRWVW
         +eaiR+Grc4YATzQOYDKTKaF+V3QE5PIjTcn8RJOUVs68THUKl+IC+eUD+UpZL/FsKRF9
         WBXrZhnYFARlQg2UWe8bgKugk8g39+MLvoVJsNKvtG0P1+zu2GYA2qOcm/ulw04o4prT
         uhtU1DocQKMFmB9y8RiCaCoCueIkUKHOLZ2oPKmdU/1qFwXkzYxCxHR5s5AAWqKTMCO4
         uZLA==
X-Forwarded-Encrypted: i=1; AJvYcCWY5gp35hvO53q3TUNyjFCibzW0gn6Py54rmp5hb01e2Lx4iyzekm7DedrbyjPZAdoaBcgLdg5kawiu@vger.kernel.org
X-Gm-Message-State: AOJu0YyAUBvj3V3Jk6q3Vu+XztxqMAjLCgKf0Oo94CwERvIv6hZDwSzH
	itz/VGBuYccCFan9V+e/1ViMqm48CGq4hiOTIvLOw6LJmzS89Up4mQUWDjfjFO8wNAo=
X-Gm-Gg: AY/fxX7BQo8WUb2cRfl5MoYkCUsoUIiJtrQ6VbHskk4IIMwtBuilZ66Xt9w9XOm6BiJ
	dsB/FeZATWdf5q8OPkpFLMtDE3Q1Rs/GDKDVfMDZcAYzKiQrT0Z4R9UywbSHwjDVeJGfqU+Kppf
	UYevrUIP9awl96i5I6NNVa3qMM0wCvz07eI0qf+idnos1zF5biGqFWNzXe1+o1r0UhsILCRtOAC
	uvrHaXxo+cBvDWvpVeGBQwu5TpsAvQHPtMqBSpWmPQRmhF52X4sQc8hQx+KG7O7lqRclkMflIho
	T0FHBpQWvKZekPNgjw/RjlFEZiS+H4nj40bBeQvACpvjhIF3IuAgnLvcISNYw7as8Di3uffVFT/
	6JYEE9ET1cV5n5/rCJpMO7g8kGvIVtdJo8Rl27za8y4uwOS5x4JD1F11Dxpl0S7qocs15U/1lmJ
	b7IgPd3njyDic=
X-Received: by 2002:a05:6a00:886:b0:81f:413e:5b6c with SMTP id d2e1a72fcca58-81f8efaca14mr1910211b3a.5.1768450304213;
        Wed, 14 Jan 2026 20:11:44 -0800 (PST)
Received: from localhost ([122.172.80.63])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81f8e4f19c5sm1038158b3a.23.2026.01.14.20.11.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 20:11:43 -0800 (PST)
Date: Thu, 15 Jan 2026 09:41:41 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Viresh Kumar <vireshk@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	linux-arm-kernel@lists.infradead.org, soc@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH v2] arm/arm64: dts: st: Drop unused .dtsi
Message-ID: <idqqwx3svrauv3e26dce4uofevcyd3a6lltsjvpeovp6nse4le@yqym3jc25xr2>
References: <20260113201340.36950-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113201340.36950-1-robh@kernel.org>

On 13-01-26, 14:13, Rob Herring (Arm) wrote:
> These .dtsi files are not included anywhere in the tree and can't be
> tested.
> 
> Reviewed-by: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
> v2:
>  - Drop erroneous QCom .dtsi
> ---
>  arch/arm/boot/dts/st/spear320s.dtsi           | 24 -------

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

