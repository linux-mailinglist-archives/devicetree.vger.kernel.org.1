Return-Path: <devicetree+bounces-64517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6DD8B9947
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 12:45:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0381F1F21A3E
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 10:45:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64ADC82C60;
	Thu,  2 May 2024 10:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v+IhWHE5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E759823CC
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 10:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714646503; cv=none; b=B1AywB92Hu0iVMxAek3A/4wy69PFHHhTjtUXlVwKOgZ++W9tijSlBxYwvJU5FHYCgx9h8EDMz5RCUXuadC2MKAX9ynd5tqHl3H4v+WJnb/QtRMJUn77lSZcqCZC/uvOcHxfVB66XYRYs4Bzol9D+ir0yvJc5x1Ofrikp1+PPxu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714646503; c=relaxed/simple;
	bh=fybXAjqPvBwHdGsxB9/R7j2S7Y+f4bR+tc79wdtF/u0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=mH2DP6116vtefcSDgvb8xw1TNPvjhHQxfZ7zdgvHKJyobQq0vtLuyX7ApemYkznS2oSVvNwqK/ljlhVGgb8tgY0LQXTAb0YmQECW1kjSISyaDDieWMTEuYBOzLTV/mIFB4g4/pVKQEkJX3fiX466lIp3NgtjGLrDp6lMi2te+ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v+IhWHE5; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-41dc9c83e57so4125445e9.0
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 03:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714646500; x=1715251300; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=G67wI1ELxvLHuj4j0MxxzK9klsJgpVHm/gMYk9CvndE=;
        b=v+IhWHE5zU4zTDAEpB3P8xC652+AhWGEWFT2slMtz+HlUqF+9WUVEesdcGrztZuZjN
         pMdmItde4I2yBRyN7mYxVFVzSJvj9VQz0ka5CuH9MutkIMLzbEfieE+X0X0yxz8tN2JH
         reQ1cl4aC+PIaANDiG4/B+BCxaJxxTQ+DCR4HVZquYIUzmkROKpAI6t+FcQzyQvQP28S
         FZ7xeQiKV9zYX4Fzvl5IB5uUpgW5KtvLHBGoHkR7dr3FKWpyog1kgkRD8sqZG2cek8Bn
         HmRbIGTYWiPz/QA1efKc49xrHv/3mxCr+KLZ1vaeRojZhNeUlB9l3W8IHpoBaX+3/IT5
         /3HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714646500; x=1715251300;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G67wI1ELxvLHuj4j0MxxzK9klsJgpVHm/gMYk9CvndE=;
        b=CTPSOp3RFAeOiuAbblk9SQC70EwZPHlf2j76R05JaO8a/dFBKI7dW9REchz7+xpof8
         wAI8z21d5HVn0QfI3Bt9kCcoEbTwEVVAsYifdx2rR+ZjHqc/3xjn3nkCvkLpfIQYpGK+
         o/2Ob6qUxEPkpIB7b+J6ZsLOAEuo3eSFLcpwOSNJ6XYEU+YjlSfXueEGiDCuBGGtQSHC
         HRClTe3h5bIw9bxdwcIba6BPCroHN4IwPv+Nr+xyP+pi5o0A2uf6YfytBYHfP/2/iaa+
         Dj1bX2hrLx4JXEOaZ9486jxtqc5lYU052APlAWVBTS/D1EvTRsAy2mMZ/rI7bUsXf9D6
         NgYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfuQiXqBlaLtovi5iL1fAIn9lnEIy1i00BsqPouQRVowQiVb4eIAbLnXfRcxECKU/tYWKhmdibVJlVzd/fZZWbA9vTVT0U4MwtrQ==
X-Gm-Message-State: AOJu0Yw8kCLypewAu4X7HnFralaIVPihQNDke8HCTfT3DOS4lZstfE64
	MelSbwYmqt9Zm5A0yghiAxAQqZ3cfp5/yBb3RiMmT9YR0oLAl7GZeeCVtJUtVc4=
X-Google-Smtp-Source: AGHT+IGICWXiMH73pNFBB1Q4T+/ozDtwf8xsVzE6i3LV16OwIyRWdmFb9VBHL4esXP/8WIaX18KH8g==
X-Received: by 2002:a05:600c:1c83:b0:41a:4623:7ee9 with SMTP id k3-20020a05600c1c8300b0041a46237ee9mr1843717wms.10.1714646499760;
        Thu, 02 May 2024 03:41:39 -0700 (PDT)
Received: from salami.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id c14-20020adfe70e000000b0034de40673easm957006wrm.74.2024.05.02.03.41.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 May 2024 03:41:39 -0700 (PDT)
Message-ID: <c4c73732595b067369a6c8d71508d54358962552.camel@linaro.org>
Subject: Re: [PATCH v3 2/2] pinctrl: samsung: support a bus clock
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Tudor Ambarus
 <tudor.ambarus@linaro.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Linus Walleij
 <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, Peter Griffin
 <peter.griffin@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>, Sam Protsenko
	 <semen.protsenko@linaro.org>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Thu, 02 May 2024 11:41:37 +0100
In-Reply-To: <9a960401-f41f-4902-bcbd-8f30f318ba98@kernel.org>
References: <20240426-samsung-pinctrl-busclock-v3-0-adb8664b8a7e@linaro.org>
	 <20240426-samsung-pinctrl-busclock-v3-2-adb8664b8a7e@linaro.org>
	 <ea6f17d7-49bf-4a1e-ba3b-757e29221590@linaro.org>
	 <9a960401-f41f-4902-bcbd-8f30f318ba98@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2024-05-02 at 09:46 +0200, Krzysztof Kozlowski wrote:
> On 02/05/2024 09:41, Tudor Ambarus wrote:
> > > =C2=A0
> > > @@ -223,6 +268,13 @@ static void exynos_irq_release_resources(struct =
irq_data *irqd)
> > > =C2=A0	shift =3D irqd->hwirq * bank_type->fld_width[PINCFG_TYPE_FUNC]=
;
> > > =C2=A0	mask =3D (1 << bank_type->fld_width[PINCFG_TYPE_FUNC]) - 1;
> > > =C2=A0
> > > +	if (clk_enable(bank->drvdata->pclk)) {
> > > +		dev_err(bank->gpio_chip.parent,
> > > +			"unable to enable clock for deconfiguring pin %s-%lu\n",
> > > +			bank->name, irqd->hwirq);
> > > +		return;
> >=20
> > but here we just print an error. I guess that for consistency reasons i=
t
> > would be good to follow up with a patch and change the return types of
> > these methods and return the error too when the clock enable fails.
>=20
> That's a release, so usually void callback. The true issue is that we
> expect release to always succeed, I think.
>=20
> This points to issue with this patchset: looks like some patchwork all
> around the places having register accesses. But how do you even expect
> interrupts and pins to work if entire pinctrl block is clock gated?

I was initially thinking the same, but the clock seems to be required for
register access only, interrupts are still being received and triggered
with pclk turned off as per my testing.

Cheers,
Andre'


