Return-Path: <devicetree+bounces-97824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42172963C2E
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 09:07:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7334A1C21A57
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 07:07:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0290616133E;
	Thu, 29 Aug 2024 07:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C78EhkWZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3547E15A865
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 07:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724915231; cv=none; b=YA8Hs/fpwm3V4teX1t0fp/aRZDnzruivl1jaaJ1v/dqYw9L5JuKdT7+x3GjKIJL7rp7QAq7MMTFMyOyIdEUfjrORsKXDZDWN1q+Dr0woP56PKMq72cIllv4XzbmWDQDvgQ+2+7PE8OiTomq6/FJsbMXZGnOwKs4ikaqsWBNtZVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724915231; c=relaxed/simple;
	bh=iIrdz8xHWQOEmDFHwlLnKLxhlF+qVRPko7F/x7pE884=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cbE8LC+jGiDTxB4FhJl2vv2chjx7iA+2KZrjzqVjHLBak3QJ3z8jl6BzBTvePkOJ4fa6Qvg8IqQ0lMIxeq7ixMj1RaYybP10oPDb+PYi29mGZgg6uFPVnqxYMaFwIi1TCAePClYvtR2JTauDLXRSfTakVCvHfES5Ze29+wOFtzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C78EhkWZ; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5bed72ff443so273442a12.1
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 00:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724915228; x=1725520028; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EDV7LYU2DJnsK4TmWVUaf/+yENKrN1KF0jvLEaGLdFU=;
        b=C78EhkWZlwdNl1s6yFdlE52bVdMr+V8Jflg7LLxWQ9+zV5DmAPxCcqt4Ar2E/rbLHm
         xtE5Bi60AJgqYRUj2e037uhCuUjvfoADqb9IcaSJ5no2w9XY1/x3ZNX1E4Nd4cpBnT9B
         yJ1w9q5y/xg2pmlaNYRE3dmt0tIF9tFzs4RZleE21fkIwG7VRFA6H7xESiABacL36O09
         jFfXvpPxmX8WRrWdY48OlqvRj8j42JOmwB0+4sGVGhvhoHzhjbHctnovhbZGPocDoiNY
         GcrEWvz2wC6Zn59xDtjBzbYpKKdfwUJk5fu3wAS0hVVxbwpPeiBEQuchd+0qXXLcgLmC
         pgrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724915228; x=1725520028;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EDV7LYU2DJnsK4TmWVUaf/+yENKrN1KF0jvLEaGLdFU=;
        b=qx5Z5tn6v4iEpeThqaiUwUjh1aVyTvPHhw5W4u9UByJ0LdO3+bKRQyKIkhhNk7VMXV
         zFUCQ45Ke6PX9lQgfxHCWkGUPaRlgdqzQ0SuzVTVOnts/as1dWdQVeY0iWIpSzohltko
         CahTCis8nrTbTyugJVa+1v9WVrDefldvNY4l9MVwIooEx4VrDmZp8h9QZ2wtyokcbt1g
         mtIxvJ/A34vL2+z0BIhOppTCJYP86Q5GeueSTUskerdvz3PBIAbIHYyP55awZbxc4gNh
         IfZRx7KLuHc8vR/KU5szhTElJQ3HxpPDHXou+jrgwdTDfTbEvIskcvF/duCweqlgmJ6d
         nVWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvG9EaPCOEGFXHaEeUuy1ou5/ZT/Z02fQbQvlF5dmZgx3glNoaE2vJhJefp/UHABNiwbODo2Z3lDoj@vger.kernel.org
X-Gm-Message-State: AOJu0YzkHmaUyLGrAzolhOoMeqS16ImDJaJVCIla2HipaICWb0UDMtsp
	VPILH3OczKxGXXPei3mouJnSfarrkE8v9+zAL0/2nrrO3oCMF2Ldd4YMi2pbkNs=
X-Google-Smtp-Source: AGHT+IFNrbFztgjXMHcLbgg0oT3MbRl4ZmtEJeLPKhMXUsVFcQa9Y3/vmFxcGOFsZGHW/LlDarOk/g==
X-Received: by 2002:a17:907:e92:b0:a80:7193:bd88 with SMTP id a640c23a62f3a-a897f8f78a4mr131638966b.36.1724915228420;
        Thu, 29 Aug 2024 00:07:08 -0700 (PDT)
Received: from linaro.org ([82.79.186.176])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8988feae63sm38563966b.35.2024.08.29.00.07.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 00:07:07 -0700 (PDT)
Date: Thu, 29 Aug 2024 10:07:05 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Pengfei Li <pengfei.li_1@nxp.com>
Cc: krzk+dt@kernel.org, robh@kernel.org, abelvesa@kernel.org,
	mturquette@baylibre.com, sboyd@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, ping.bai@nxp.com,
	ye.li@nxp.com, peng.fan@nxp.com, aisheng.dong@nxp.com,
	frank.li@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
	linux-clk@vger.kernel.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] clk: imx93: Move IMX93_CLK_END macro to clk driver
Message-ID: <ZtAeGWtJDMyTVkjc@linaro.org>
References: <20240627082426.394937-1-pengfei.li_1@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240627082426.394937-1-pengfei.li_1@nxp.com>

On 24-06-27 16:24:24, Pengfei Li wrote:
> 'IMX93_CLK_END' macro was previously defined in imx93-clock.h to
> indicate the number of clocks, but it is not part of the ABI, so
> it should be moved to clk driver.
> 

Right, why?

All other providers have been using the _CLK_END from the bindings
header. What is so special about this ? AFAICT, nothing.

> ---
> Change for v2:
> - Use pre-processor define to simplify code.
> - link to v1: https://lore.kernel.org/all/20240625175147.94985-1-pengfei.li_1@nxp.com/
> 
> Pengfei Li (2):
>   clk: imx93: Move IMX93_CLK_END macro to clk driver
>   dt-bindings: clock: imx93: Drop IMX93_CLK_END macro definition
> 
>  drivers/clk/imx/clk-imx93.c             | 2 ++
>  include/dt-bindings/clock/imx93-clock.h | 1 -
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> -- 
> 2.34.1
> 

