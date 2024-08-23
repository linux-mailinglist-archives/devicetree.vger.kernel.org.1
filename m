Return-Path: <devicetree+bounces-96206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E18295D1FF
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 17:48:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0E3E1C20A42
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 15:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B82C1885BE;
	Fri, 23 Aug 2024 15:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OxuRE89G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692541885AF
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 15:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724428093; cv=none; b=F7qFOeDeha+Sd4Q3oM0eKIi6Tzg2yyoHHm/kd/7F2HavdJUMF9IT55tD2WyoKOW23oeiyuDb6yFYVl+yHj5H1EvAD/XwqOXlr+BJ/BOYdifi9w+fAohr7r7I93NMpiGuwmIdS4Q+aUfN+O02wbTqEK1h7yWILC7OOmcDutV898k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724428093; c=relaxed/simple;
	bh=LmPjT004Pu+b0lGXNhjt9mxzluLGxiZs+Qgq47unh9M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=A4IQKonBM2Uvf9rfvlHTQL1EgmxltCVutylXnbns7WVPE/WoKyhThNrP6jKMBp5q0bgXefZKGDowVWGZ2irisU0KF2LBLuI3S5MRARRoRS1gA6CsUMGW3K9ET4DNI7QBv4iAN9tJJWAaOIZEQdSeXeceArhfjnKGOyxZQKNxevs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OxuRE89G; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-533488ffaddso2752806e87.1
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 08:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724428089; x=1725032889; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LmPjT004Pu+b0lGXNhjt9mxzluLGxiZs+Qgq47unh9M=;
        b=OxuRE89GlU3SEWYQpWlwh5UrcHuh/xEyEGicpZHNvWmbW5BSSEgMNh72jWOMPtEPlq
         tQXi/9JvQTugSgUDmnjHvzE89vWSyu6VLEFxC1tvEyVDvcSe+WfckfHd/J/N8djZaw4Y
         h0g1CJx60joy5/ERAqNPmbHldffa77rSI4Obj+4pIGGseW4jB2gIxHZAD+ZljUzfRXOq
         p7A6w0oFKMdqJVVamEsv/K0Zgb1B92j7by1HCC+ZyR80iOp5rQsQq89h070t4F6E3IeN
         cv7nales0LHYXO22IGLgZKtt6+vwh7nWaCNCnrnfRiIBjqCMiMCQYeDlUX+1gtDbmlks
         i1Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724428089; x=1725032889;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LmPjT004Pu+b0lGXNhjt9mxzluLGxiZs+Qgq47unh9M=;
        b=pr/eia6XJ0SpoKaCR/WypFa92VJXS9ZS+TynZ/+VIueYLlAkt134K1NatIT9qXP/hq
         P4yb6sWw/tVfJYiP7ZOeBzds8WBKm0nNU29DxIQKDxNEL+H7Jfu3rVZkfU25KCCZM7bt
         zhZJVRcghofbFHA83nyOWb1V1ttoEP0yyZhvNUZNjUV8P9vpCifrSakAg8ivhIyEahlV
         gKtguoKQeEtYbHDQaknCmmMsjO0ZXeT4r3eqWCNajkSWe2IIlfTiF/PEAr0ndxLb07g/
         Z+QDo6L7MG8gcMV3qnOobwX/FQ7ydS+wf98BsW63Y+eohNfzFiRcoDH+H4deQTFmf8qg
         yHHA==
X-Forwarded-Encrypted: i=1; AJvYcCVC9Llwwk7jQQGNgAgmOG/J4Uk8tS0KIinP71k5Tk/435KnkHGndo+GxpDlGCrFzDvWasBNC/SNzNOE@vger.kernel.org
X-Gm-Message-State: AOJu0Ywjzq6VlbtyQEuPj1J0Uuq7tzoI/ND4tBiLH/eAeFW6+6Y6RjUZ
	fdhRgleCGA+pRVEqm9s7prdU2/zuufb5ZbYTBnpmpNTwJxhDvwJeLOIQXBKj+pzQ4Lx1w1U6ixF
	LWUaXztqotJZslbaGF4/xJW8SltKeLrOA7qsOTA==
X-Google-Smtp-Source: AGHT+IGPIsPltYDrMbENTRG8ZR5qzvz5WC80feYuFQqeN6sGzjfgHPtnsMGj6lpcAU4PIZVuuR1kVHhNrtGIoL9x7eA=
X-Received: by 2002:a05:6512:4016:b0:533:ad6:8119 with SMTP id
 2adb3069b0e04-534387786e0mr2117298e87.14.1724428089108; Fri, 23 Aug 2024
 08:48:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240822195706.920567-1-detlev.casanova@collabora.com>
In-Reply-To: <20240822195706.920567-1-detlev.casanova@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2024 17:47:58 +0200
Message-ID: <CACRpkdZW+g4_szvMhuYXFHCjoekYKdux8s9u6zXkhDSDuF_i1A@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] Add pinctrl support for rk3576
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Shresth Prasad <shresthprasad7@gmail.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2024 at 9:57=E2=80=AFPM Detlev Casanova
<detlev.casanova@collabora.com> wrote:

> Add support for the pinctrl core on the rk3576 SoC.
> The patch from downstream has been rebased.
>
> The grf driver is added support for the rk3576 default values:
> - enable i3c weakpull SW control
> - disable jtag on sdmmc IO lines
>
> Changes since v3:
> - Set GRF bits through the GRF driver
> - Drop the rockchip,sys-grf phandle

Patches 3 & 4 applied to the pinctrl tree!

Thanks,
Linus Walleij

