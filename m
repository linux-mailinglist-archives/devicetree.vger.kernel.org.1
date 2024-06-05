Return-Path: <devicetree+bounces-72550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B848FC472
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 09:23:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B25B1C21124
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 07:23:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67DF61922E2;
	Wed,  5 Jun 2024 07:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YD55qfcj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BF591922C3
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 07:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717572177; cv=none; b=F83snvrqSmQbTj6VnUvVJJfleH88drLnMr5jRW6VRcPlwylTqvgRMky/EVXNdzHK68YsDNtCTEbCkjVf7cIbFfi0WCGzH+0x43W7J9SzGQZ3YvGa4lBvZ72KjByXvb3PzMwPofzdXpnACYxaQXKVtiU6livGD2q7KwpKRfH4I3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717572177; c=relaxed/simple;
	bh=R4YKIM6OKd1WIlOGsM6YjhBav9nZ9U9MhpDx2XiXALo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m9ZZfYUAnfQs6jG8+PYNBd6aAUnYUhTziM19nbO9pbJYH2GCU+setlm37YezLG/GviHKc1e27JQUyP/phzRuG6UocHjg6Yz1QINK4uxfly2SqW0RkQs1s1YhFBInqDeGNfDMvxX6nCE71wZdqMqiJcz47IBctkmM+PSnHTbILDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YD55qfcj; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52b992fd796so2250389e87.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 00:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717572174; x=1718176974; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RqnZdFgvboe7tX2UKgOGW0Pa1N7zuJuJPg9c9wyxQMg=;
        b=YD55qfcjDfOPWxSNsWWoCc7hMBzAWe+akRiI8lzSH8z/iGpBGcYp0JFqNsj3je+ItV
         P1V6WizYoA/H0X5EsVo03D2uWwuj3nt648KNBkko/8+xZIHTi8NF35GhdFEJgMBHAfwA
         0CrWixDkKgPJjXRXdHIMPsc90/VuMNk7X8HX+5nSzmTUidkjHs91TPIXzvSIjxkU+w31
         EqRBBlF6p50NGZAYwFW9USrK5daTHT+T9/NihUkPrJ0F03W5KiGZMVQJXz9beozjj7Bz
         V5QfTpO/kxaiEqr04mcE7etRSEon+zfE4F+aVLK6p70w5phZf57JmDX41BEjFlSOLlqh
         pDJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717572174; x=1718176974;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RqnZdFgvboe7tX2UKgOGW0Pa1N7zuJuJPg9c9wyxQMg=;
        b=DO5BdSzKQVXxObVLsN6IpK3LspfXSskjkIRHmGf08TAhTv0wpft2L9AkUg+V9CdlYU
         INT7z/z10aQ8BWCRnMAh1vCID3MmEfzhL8i2IX2+5fRW8WJt0GAdTldiDguU054ReZuj
         oKlRjCzxP6Y5Zr2xNRFn//Khts9Bx57thUSaMcldNusIuHU/1pnyT+gqCGDpVBInzrum
         twgoSTlVminc2T83meSskHJ/PhRVxuBwV/LRWZhr/14F7wjlTPUK4EtuX1+dAMBNG3bs
         bNNoz+XOncxHUAYiWzBenw3qvD9tmpUmjCB1Wk3LGuOBITLFh5qVNQ3vX6DyBRjkZ4Lh
         uR2A==
X-Forwarded-Encrypted: i=1; AJvYcCU2zYKzBTIGRaB7hCZOhxdapnxbkwW0cfj27YB/WlBZLi0Gd08vdGdUQAORfzCYhgWYW1Wlt5UKAIZGAYBOCwL6RJmGJ/HZ8SziJw==
X-Gm-Message-State: AOJu0Yz29+xxaYCHdwizCJQWSVDd95Sv0hyc2pjLtZR19K1G1dns30eR
	KJ1cDDeFQGvhxmFySBaePWlywBW1iXvMzWZnMReEm7MX/6B5W3NXlT6A3uOKXHM=
X-Google-Smtp-Source: AGHT+IGrEUTIRlHebCjYcSxaWnRyULJcyEIEq/vcwbc8wOASvTCW7s5vwhOA3Z/T5Q0VVe7HxptVtw==
X-Received: by 2002:a05:6512:2308:b0:52b:83d5:34 with SMTP id 2adb3069b0e04-52bab2843eemr1239519e87.0.1717572173579;
        Wed, 05 Jun 2024 00:22:53 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68519892c8sm695071366b.65.2024.06.05.00.22.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 00:22:53 -0700 (PDT)
Date: Wed, 5 Jun 2024 10:22:49 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jianqun Xu <jay.xu@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] pinctrl: rockchip: add rk3308b SoC support
Message-ID: <b5d2d914-0c2b-4cd1-b894-f894a93a54f9@moroto.mountain>
References: <20240604141020.21725-1-dmt.yashin@gmail.com>
 <20240604141020.21725-3-dmt.yashin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240604141020.21725-3-dmt.yashin@gmail.com>

On Tue, Jun 04, 2024 at 07:10:20PM +0500, Dmitry Yashin wrote:
> Add pinctrl support for rk3308b. This pin controller much the same as
> rk3308's, but with additional iomux routes and 3bit iomuxes selected
> via gpio##_sel_src_ctrl registers. Set them up in the function
> rk3308b_soc_sel_src_init to use new 3bit iomuxes over some 2bit old
> ones and update iomux_recalced and iomux_routes for the new SoC's.
> 
> Fixes: 1f3e25a06883 ("pinctrl: rockchip: fix RK3308 pinmux bits")

Why does this one have a Fixes tag?  Isn't this new hardware support?
Possibly patch 1/2 was not actually a fix but just preparation for this
patch?

regards,
dan carpenter

> Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>


