Return-Path: <devicetree+bounces-113067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1CA9A47A6
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 22:06:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AA1C8B2465D
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 20:06:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DE24205AA0;
	Fri, 18 Oct 2024 20:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nywpOx8e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2325A202F9A
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 20:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729281994; cv=none; b=BM4PU/kwp5UatnopTQxmdbx2z6zaBAr37BCWn0xFCOfLChNIirMjt2qT+oNAkaWZsU6/PRzo/Bx2S5mJZNrmePZYPImgp4GhC9s/dY3nvt9pRYLlWORMT0CtH9wthQLTW7W5kYZ0Z7G2l+YrgyQvr6Vpq6n1cU8AAtBdt8Jo+Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729281994; c=relaxed/simple;
	bh=/51xfUSYsUDnsKHUISmuqpPXDOu6WONAfwM4tgenvn8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iPJNegyxvWYjQ41K711lOHUm6lB+Xk4WvOKJFCi8Q5R1ALG8csd8GRZT/Ap8ubNZCM3I7qIvDRl5FdVeLQdghrnJIWJUxAoCNiY1wwnneE8WFnJaIGILO79CmFYqNcbEMwidZxUrPKabemmKC8Rr7P+ffP6AS6a7kkpM9uCYPmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nywpOx8e; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fb50e84ec7so22148031fa.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 13:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729281990; x=1729886790; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3qqeaSgLM4urcEuCSV+5q6Je9Wo3+AKbBRfKiBnVfLY=;
        b=nywpOx8e4pbIc417fKxkCToqytuZdvTH4Qpg2rhfsdXfZ81/dgLdX256X3TZHNKQyA
         Nc6d2ElJAzjDUT42B1HEJnRtQPYTLPaNnse0wW1EpzKh6FdYeNZu0JLbQePN5pEsIt/c
         XZZpVi3eZzufQjGeoH9pkQTBiiO+zxnWGInIXWVa805r+9L27RMqNBxwtozMepc9UPCi
         y7zUjJ/En96L+nYNnnEntdoGdVgIJAkNVMOq3U7KwdULaz6jOyQmdwamv/kA88eWVTee
         GY/uEylxhOlym6G2urH3xVv3eqHhuFiPC4vPVO0AGg08NxaG/NzIzQDw4Hej8WN9cQdS
         eBmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729281990; x=1729886790;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3qqeaSgLM4urcEuCSV+5q6Je9Wo3+AKbBRfKiBnVfLY=;
        b=be68LDxn90jl/QDxXCIioQjK9FZL37CQEiibyR/kHtCMeTdTWxtueZNI0fWKx0hRrp
         760As/Ui3nDmzuz9aZLahKd0kzy6V0FksWqlCVomKoxFomZ31DhSWl15YB1WLL5EEnud
         tAu+We86jVVDaMbSn2Ebl/kNg8xP5QHuMBW9SEmZvMW8rfzDrQaQBMD2d9kUTC6rjGIQ
         +N1UYWMhc7CzLahb4gbHMknc2xFP5+IedWmx9mpmiM0HYjhvsl5ArQDiQWAw4/Du2Itf
         kGWjmpUzF5RXk7nwet5/Ld5dstu72x+RkJ+0cOBVZyB6okc8CEXXKtkWw2o7Ft1Nyiga
         Cf6A==
X-Forwarded-Encrypted: i=1; AJvYcCWr0lnXVQAOc+nslUJP7lNuX00wTnaPoxYYXeLLHB6Te3eHQMe5oaq/1ZCW26zrBe01YAvdEDuejLiQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx23ZNn6A4y6SoX0FKaC4OzaJwDtEbXhmLO4Zige3lPuFLHnM+E
	viPrJEeLFRxgeC3m0R7+H/ilLM12D8RZ1y+e6kMJlzHajoRgNDI0r45AGjrGt6g=
X-Google-Smtp-Source: AGHT+IEYyQy2Sr1B6koAkEX9lbp8dGLEG2De1kXaGvAZ20tI3Rvf2hBstWggqiGwZuP1BLYC4EzDUw==
X-Received: by 2002:a2e:be84:0:b0:2fa:bb65:801f with SMTP id 38308e7fff4ca-2fb82ea2494mr22593721fa.10.1729281990154;
        Fri, 18 Oct 2024 13:06:30 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb80a08906sm2878401fa.106.2024.10.18.13.06.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 13:06:28 -0700 (PDT)
Date: Fri, 18 Oct 2024 23:06:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Abhishek Sahu <absahu@codeaurora.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Ajit Pandey <quic_ajipan@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, Stephen Boyd <sboyd@codeaurora.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 01/11] clk: qcom: Update the support for alpha mode
 configuration
Message-ID: <nzzijnfy4wy4ts46c55rokvgwsxc4kytro743xqoecyjpjosyu@hajjkkdw2xmg>
References: <20241019-qcs615-mm-clockcontroller-v1-0-4cfb96d779ae@quicinc.com>
 <20241019-qcs615-mm-clockcontroller-v1-1-4cfb96d779ae@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241019-qcs615-mm-clockcontroller-v1-1-4cfb96d779ae@quicinc.com>

On Sat, Oct 19, 2024 at 12:45:37AM +0530, Taniya Das wrote:
> The alpha_en_mask and alpha_mode_mask must be applied within the
> clk_alpha_pll_configure() function to ensure proper configuration of
> the alpha mode of the PLL.
> 
> Fixes: c45ae598fc16 ("clk: qcom: support for alpha mode configuration")
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  drivers/clk/qcom/clk-alpha-pll.c | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
-- 
With best wishes
Dmitry

