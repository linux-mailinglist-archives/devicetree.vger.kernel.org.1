Return-Path: <devicetree+bounces-35585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C9783DE9E
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 17:25:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC3E31C21A43
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 16:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05A831DA5F;
	Fri, 26 Jan 2024 16:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="VUym0+1D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFAF1D6BE
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 16:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706286333; cv=none; b=W46DAgCByg7X2ytD8EhqQOb3AwXxR63deWir4BkPyyFTL6GyDXueNEc3ZFQW9LEe8noiD17sjHmbaLmoqPaxPZVfLZ8yMciyA7OFk05BQD8ldbE7bhkNTKJeva3QgZtyLjkQG1GVZHvCuvBolDWjkihFxPH0VwDG49e+MljsMdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706286333; c=relaxed/simple;
	bh=3UEylgh7v9gOqe/NQedZuyogVhrOrdFOx7bNjMr3sq0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GU19etRU8bi5ivak9EIyBUCn4y9Vk32sGQmvXf7eoI9XWg9fMmsW7Af+f4Gg3rJrK+SeoQDgmL/CIwc0JLDim9zkgbsD6Rghc/bTS9A53CiAGZduleN9pycbNxfGHcY26Syg8J5zM37YfI6SkwD/ly/1ifR/8EdNDrGSdStw0Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=VUym0+1D; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-28e79182570so406080a91.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 08:25:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1706286331; x=1706891131; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8KSeVqZarIlCem3aO8jfYBY7ZxUigGn4Y+a77BxgZdA=;
        b=VUym0+1DQdQ1bv54+AlE7hk7OeMUEkvhthwboOIQh22dlKUw8KDW6YvnJeC+mAlIzD
         ogf0YhzirswhX1fY6PELr+1iA+9Wk/H1A57I23oxWvZJ0qVnqbEHiSJThFQVy6/+Pd+X
         MQwS6uAivVOU1PZE7YYqw6R/9BN6OtKwHZDlgA7tfxwuA4j2YgNUey7prAZliI9Asneh
         OObf3TFgxBac+r4R4rXUYuInKMP6OpXnzMHl6V2VP4/M6AcVNRJwPQO7PxXTsjcSdOT3
         Rf4Vg8+Ijw8ufbkOmcEXBsGeWhjMBRMaQ/LyIzQogXy8+hu000L9VtUqkc0WELZv/gx4
         XgLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706286331; x=1706891131;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8KSeVqZarIlCem3aO8jfYBY7ZxUigGn4Y+a77BxgZdA=;
        b=ngcfGxAIGY+czHANr8UPku4wtvOUEN87j10zyXXb58HWk7spxNEETbdIvkQrQmc1km
         Gy9WlXJ2sIxqYKSkpHPgoaWNJDzTQJ/HT3DR/6yV15IGOkP3wADwU4IHnF2Mly+cdpdI
         77IlAq4UjTa5/1UnD+xpZg/HSHZt3htGMjV0nNs+1CFrmT42MGWY7N4YTuy6cVbjA4Kx
         +Bc7j+lk5a/yNGMiEi4Qq/qiQKE03wTPbl9+llUUnnTZJhWF1rEiP43qMO9FKP0RBgJc
         0Myf9S2sTCgqioSyvq/iVaUePj+yM9+afeuXhRbbPxsXEQwFjDGT7XEC3dRLRLrcwQlk
         Txmw==
X-Gm-Message-State: AOJu0Yyzh8ixrc0D1ouEw5IOHGfixtUiZvSMzwMeQEFYzdIoikK1O9tK
	yG0QohpEtPA9QJA4LPnAs3DRhFtfgXvL5T07X7LR7UzUWnqE1n/mvutgi5mAMGcXxhSlFZDeuWr
	VmbfZeioP5EIrHbpLoE784OmejP/LNMD/25S5Wg==
X-Google-Smtp-Source: AGHT+IEuLRcspX1hpREODJpeWN9oBZtSFctt9aQ4Iy5w5uMEdEMF1xsg8y8PQ1QQ9CmUf/eo/HyJGjEuVp1rxN1cB8o=
X-Received: by 2002:a17:90b:802:b0:290:14a6:2664 with SMTP id
 bk2-20020a17090b080200b0029014a62664mr106573pjb.4.1706286331515; Fri, 26 Jan
 2024 08:25:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240126115509.1459425-1-naresh.solanki@9elements.com> <20240126-cinnamon-flatware-e042b5773f17@spud>
In-Reply-To: <20240126-cinnamon-flatware-e042b5773f17@spud>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Fri, 26 Jan 2024 21:55:20 +0530
Message-ID: <CABqG17hzZf2mme0v7hALhpd6-N3ZHqxdH-AhFg5eF9sbLSC2gw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: iio: afe: voltage-divider: Add io-channel-cells
To: Conor Dooley <conor@kernel.org>
Cc: Peter Rosin <peda@axentia.se>, Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	mazziesaccount@gmail.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi,


On Fri, 26 Jan 2024 at 21:47, Conor Dooley <conor@kernel.org> wrote:
>
> Hey,
>
> On Fri, Jan 26, 2024 at 05:25:08PM +0530, Naresh Solanki wrote:
> > Add #io-channel-cells expected by driver. i.e., below is the message
> > seen in kernel log:
> > OF: /iio-hwmon: could not get #io-channel-cells for /voltage_divider1
> >
>
> > TEST=Run below command & make sure there is no error:
> > make DT_CHECKER_FLAGS=-m dt_binding_check -j1
>
> This shouldn't be in the commit message.
ok Will remove.
>
> >
> > Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
> > ---
> >  Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml b/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
> > index dddf97b50549..b4b5489ad98e 100644
> > --- a/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
> > +++ b/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
> > @@ -39,6 +39,9 @@ properties:
> >      description: |
> >        Channel node of a voltage io-channel.
> >
> > +  '#io-channel-cells':
> > +    const: 1
>
> The example in this binding looks like the voltage-divider is intended
> to be an "IIO consumer" but "#io-channels-cells" is an "IIO provider"
> property.
>
> Are you sure this is correct?
I'm not aware that #io-channels-cells is only for IIO provider.
But I do get some kernel message as mention in commit messages
if this is specified in DT.

Regards,
Naresh

>
> > +
> >    output-ohms:
> >      description:
> >        Resistance Rout over which the output voltage is measured. See full-ohms.
> >
> > base-commit: ecb1b8288dc7ccbdcb3b9df005fa1c0e0c0388a7
> > --
> > 2.42.0
> >

