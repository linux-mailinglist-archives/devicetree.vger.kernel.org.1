Return-Path: <devicetree+bounces-78480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4BB912678
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 15:14:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7061DB21831
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 13:14:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF9021553B4;
	Fri, 21 Jun 2024 13:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IBCJA1WN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672AA15443A
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 13:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718975666; cv=none; b=r3S5MmqovPcKYjNIth6Ss6gdfsQe0Mc5HHwnwTNLUxY4MIFvs9JXJoareDenZW7xLfYsKwvFoxdzbMOx3pRnq1qpWE4nFKOrkrDfrBp1Dc6BvnCEWwa8x3Jh7HvwHD6rD5rbNK2K5F4FxkDp9mx76ZqNs3TMZ55L4c8I8b5BHrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718975666; c=relaxed/simple;
	bh=lT3/0UqtMDn26n/9FLC4BSIBh/uUYJWYvZjdb5CfcLw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lBkKYQ10rUwx+pWfVxm18lWSmcLm0qOAg60hzNPzcGTXyjuy+NYzSB47tiIcKwlKKfEs7vTI8033X+yP5nU5Div3pahmgxI+NB7BpZdEXBpg3UYto8iukEuQxzjLQe52uD/9Hl6LVEVBAR2UX9WM5y85SUQU3DCkT+/5mCjzFU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IBCJA1WN; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dff06b3f413so1916373276.3
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 06:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718975664; x=1719580464; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=St4J3uvn8l8JSYyCUFuUaA3lT6tDkhwwUDqJHgH5Ff8=;
        b=IBCJA1WN+2UAECsHaPoXrMbwYXAh4dh927AK12Ir6t7/AxpjvpP8cxiKigm5UKltf3
         utnrzkdAunvrScCGfbwbX3l8xBxqdU1vVhQvV/9B5MeJ7Rh7sasyyd3bZCkaMZRPZZmq
         vU3zwJCPBb45q2PPFtqWq+IQzQi5DDI7BDdbE0Go4Zi1GBJOioWTYs/cZLvo2DYzbnHI
         1l6+nKj8ILVHkq1sqW8EbUPPqY9Icf6k4fwayB73M/App05ZDO4cSDB34jdwTWijZoNY
         4Oxb1+ULTDtmeasIidy+nFSWgxx5zcTDtT11lULNy6Da4dGzd8lKYtZhrFIBbfBCAh6D
         M0ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718975664; x=1719580464;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=St4J3uvn8l8JSYyCUFuUaA3lT6tDkhwwUDqJHgH5Ff8=;
        b=SMC8bYBTfEwq1VbnGQV0trFH3AcqbaR9ISCQJMvhhR3MrgaG1qzGRQz8l3AdxtrBHS
         Upp6FQaL0vlTKE1pUczg7AhQsvwdK4eQJy9hOd2N1Iihp4IaEjIXaqTJ8khj+DzDRl/b
         SaA7AVIbGDhFc6vQVfKl16++K5bM5wVi3cmOCD3X4w3q7iGhw8Om1ucOo2l0FeB2klPc
         3M315iy0GSgASUdCHPhHtSk03u3jh74oMavrfMm9HmxCxxX8YC242wvwXuIBuIKP77L9
         8KC+o2HOTq5MafJYwDEP5pnJPYYPGuE8foO1Usplpsan+eY2fLC++cLcGK31x/eVHyro
         8/gA==
X-Forwarded-Encrypted: i=1; AJvYcCVTW6sKz+53Z6M+FVXsy8XED000HOvb8IVx7YI3+D65KXNdW+qDGcksfQfeZledCMoXjsw66tmfWDvuiV0cVbD6+C7ZW4tFjMYqFQ==
X-Gm-Message-State: AOJu0YyYJBrSnBnhzeCl3iuT6zLMAfspX26w6fjFP6hWoGY2rk5fVcuy
	UcSlJAxEdNhoOZrPfRrcXj/8ow8AqL6s8FD4s2U+2frTS/MAbTpurX8bC/DZEte550cs05lzQOp
	S569isw9nQQYpyDtFFHyoqtuIFNJPzCTl47IufQ==
X-Google-Smtp-Source: AGHT+IF5Kjmxgdie6GcMoOwWvEJr0hx8dV3HK+rzPmDaF3nNfHrnmvu2DU8t6Caag/RxJgO2Tk62vCZRxGA02P6OtL0=
X-Received: by 2002:a25:820d:0:b0:e02:c4fa:2180 with SMTP id
 3f1490d57ef6-e02c4fa246bmr6862131276.14.1718975664432; Fri, 21 Jun 2024
 06:14:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240619183255.34107-1-brgl@bgdev.pl> <20240619183255.34107-3-brgl@bgdev.pl>
 <henuash23dwkj5fcmub6sabygwo4kam7fgots2pp2j3eu4asuk@cn3o7a62lo74>
In-Reply-To: <henuash23dwkj5fcmub6sabygwo4kam7fgots2pp2j3eu4asuk@cn3o7a62lo74>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Fri, 21 Jun 2024 15:14:13 +0200
Message-ID: <CACMJSes7XcXPZt8NgZm9mQ7h2B6A=+mL13gpZEHY6UnTFqXdOA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sa8775p-ride-r3: add new board file
To: Andrew Halaney <ahalaney@redhat.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 20 Jun 2024 at 18:04, Andrew Halaney <ahalaney@redhat.com> wrote:
>
> > +
> > +&mdio {
> > +     compatible = "snps,dwmac-mdio";
> > +     #address-cells = <1>;
> > +     #size-cells = <0>;
> > +
> > +     sgmii_phy0: phy@8 {
> > +             compatible = "ethernet-phy-id31c3.1c33";
> > +             reg = <0x8>;
> > +             device_type = "ethernet-phy";
> > +             interrupts-extended = <&tlmm 7 IRQ_TYPE_EDGE_FALLING>;
> > +             reset-gpios = <&pmm8654au_2_gpios 8 GPIO_ACTIVE_LOW>;
> > +             reset-assert-us = <11000>;
> > +             reset-deassert-us = <70000>;
>
> I need to read your other series still wrt "ocsgmii", but any chance you
> have access to docs indicating the reset timing? I've never had docs for
> the specific Marvell phy on the prior board or the Aquantia one on the
> new board...
>

I have but they're not public. :(

> Boot time is something automotive is always concerned over, so I just
> want to make sure that this timing isn't any longer than it needs to be.
> Right now it looks the same as the Marvell phy's in the "v2" boards etc
> and that made me raise my eyebrows.
>

That's a good point but what else can we do? This should typically
execute in its own thread anyway.

Bart

