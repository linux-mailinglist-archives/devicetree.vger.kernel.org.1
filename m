Return-Path: <devicetree+bounces-133176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A680F9F9966
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 19:24:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0173167668
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 18:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0013C21D01B;
	Fri, 20 Dec 2024 18:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fn6nDAXn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D5F21A455
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 18:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734719067; cv=none; b=Svi1/gWy9xolD25IBzW8SmNCMcueFLWPCzsX2b0i8Lbtm5729ETbrkS385VFBtkLXS2djzXETSDmUux3ECBDoV42lm28dQ3J1H57JD6/E8KbAVsAAqd+a7LQokOKEYGTrgIa5XZGrzwWccALl0mcWrqy5sFz1+eFu4UvEfWQJhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734719067; c=relaxed/simple;
	bh=ujvByBIf+SIpGxd1kcUbVbVrtbm1//MuEyOkgZt99Qo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lx6Hn5No3nXKvTLYq7vAUHixKpKKe3ggISJjPyOAS8X5dfqfrlK85QVEdeiUxk7CI2xf2H2QudfRwpHa+rSE4CtcK3td48J+6Kz6skr5TunQv1o2Sas2wrtuT8h3YthMvMHXIlmVXvYGNttXMRSceN026Z5rvqV/H4coC9OXLOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fn6nDAXn; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aa69077b93fso318517866b.0
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 10:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734719064; x=1735323864; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aus59Gxg2/yMBvmOvs1IHzky98/DpuWtdpoS4UfXRYk=;
        b=fn6nDAXnAPjEiDsNFzOrOIiV0xYd9ju15/BhgykS2WzI/6dwlOef1t3cRgfBuFvR+f
         XI/CPpE2ulIkxlxnRh6x0810mg54ag9zatZoVcDNKSpWnWh3ehnqeCTdlO6y7c33OJDw
         kAq8NNdjpG0dCh03tpg0ViUJnw9s4EkdbVN70fxTaQitwQDqK3S+v/V0/lkBI+UyPqHF
         Eate8j1RJ8bAsS3SU9Jfo1u8cwh6kLneCdQg3TdBvlDjPWcyldjMZsjdE3CqanfPWc1K
         pxZ8SdPOmUk7w4J4bAYBIg+XToEUYXYZlfklI15h7Es2a8Yj6/XuXrsSgWDS/ZwC4/0L
         sx9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734719064; x=1735323864;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aus59Gxg2/yMBvmOvs1IHzky98/DpuWtdpoS4UfXRYk=;
        b=oj6jUZLZgZr7W7V1WxVAXGs9Scnj/7fbp8ENhYD8uJffvbG2n+Ez3+cflLBgaT0TdF
         w4ZGZwTwbYgCs8r1ba0k0DSU8d4nn3UUilpFZTSfbby9UAIGaNP+wFbf5oT2gMR2z83z
         MzRVjuXzkOBaZ4SC7fY4Bd68CWhDmc6Fd4GpVLV6rxNOPZqH5XFTIPbHCKxZvxOOcZs7
         863rdPA2WV0Z+a+SbGiFIelGh3c00qHL3J/bbbrPcP7FbWXHVixIYougrMnoVesy9XEI
         NW1v3oc7xcqKSuQP7MeicKg9/E9VMyeFVBog4zJheVTPdEFiFPs62EXiEEB+GF8WpU5a
         YIeA==
X-Forwarded-Encrypted: i=1; AJvYcCXpeb1RulPlS7MNJVX/MFIFdLQXQt6Jwt+1YM/wcYU9Ejq8giAysQjZT55fTnlaKpRBRuJRyKVBnghp@vger.kernel.org
X-Gm-Message-State: AOJu0YwU7MUDZ5Eer4I9abL8uOZZR7jS6vAnHTo3/M8QCFWjyF0S1cU0
	/NLqGHC6hM4Kc8jDRo1HAC+PRLMLfSpJB6d5i2+JUk/DCH4TL6/ZgD8i8MGYMcA=
X-Gm-Gg: ASbGncvdqr4Hev5vM1A+BLUYit8tpl2UP0HqqV3HGzAYNElz3xBtMWp9XJpwKE0WZFK
	OAJ/4x5hh3VyZT511Rsu75nVRH0gY3PEywU6CB897BF86CwK5Re64EDA13XJZ8mDZaqyqKXUCzx
	UmCbRdfpEEDVo2wEcZgN1Swo2Ha2AFkvbl8NXvS6AOAjcrPilaP4i7qHZcnDa72xAJBPc133mLV
	nS6jlqmExoV0f7+VVoG1kxfKfMFUUfCylydBWOWU7AyrTB3blPIsZltbqyVGMSDDnYf
X-Google-Smtp-Source: AGHT+IHKvNvtCKuu1gx89ORFlt8GPNF0Ymh5ZK83WS1KOIcTDXyXw95yzBQFAq1SjDWRfMXY+mc31A==
X-Received: by 2002:a17:907:78b:b0:aa6:7cf3:c6f5 with SMTP id a640c23a62f3a-aac2d447172mr324419066b.9.1734719064110;
        Fri, 20 Dec 2024 10:24:24 -0800 (PST)
Received: from linaro.org ([2a02:2454:ff21:ef80:6d2c:6f87:64ef:2237])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f015b0fsm200488666b.156.2024.12.20.10.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 10:24:23 -0800 (PST)
Date: Fri, 20 Dec 2024 19:24:18 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree <devicetree@vger.kernel.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: platform: Add bindings for Qcom's EC
 on IT8987
Message-ID: <Z2W2UhspMZNT1TRU@linaro.org>
References: <20241219200821.8328-1-maccraft123mc@gmail.com>
 <Z2WxzvKRVcOz5d2V@linaro.org>
 <CAO_MupJ7JtXNgGyXcxGa+EGAvsu-yG0O6MgneGUBdCEgKNG+MA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAO_MupJ7JtXNgGyXcxGa+EGAvsu-yG0O6MgneGUBdCEgKNG+MA@mail.gmail.com>

On Fri, Dec 20, 2024 at 07:16:34PM +0100, Maya Matuszczyk wrote:
> Excuse the formatting, I've typed this reply from my phone
> 
> pt., 20 gru 2024, 19:05 użytkownik Stephan Gerhold <
> stephan.gerhold@linaro.org> napisał:
> 
> > On Thu, Dec 19, 2024 at 09:08:18PM +0100, Maya Matuszczyk wrote:
> > > This patch adds bindings for the EC firmware running on IT8987 present
> > > on most of X1E80100 devices
> > >
> > > Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> > > ---
> > >  .../bindings/platform/qcom,x1e-it8987-ec.yaml | 52 +++++++++++++++++++
> > >  1 file changed, 52 insertions(+)
> > >  create mode 100644
> > Documentation/devicetree/bindings/platform/qcom,x1e-it8987-ec.yaml
> > >
> > > diff --git
> > a/Documentation/devicetree/bindings/platform/qcom,x1e-it8987-ec.yaml
> > b/Documentation/devicetree/bindings/platform/qcom,x1e-it8987-ec.yaml
> > > new file mode 100644
> > > index 000000000000..4a4f6eb63072
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/platform/qcom,x1e-it8987-ec.yaml
> > > @@ -0,0 +1,52 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/platform/qcom,x1e-it8987-ec.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Qualcomm Embedded Controller on IT8987 chip.
> > > +
> > > +maintainers:
> > > +  - Maya Matuszczyk <maccraft123mc@gmail.com>
> > > +
> > > +description:
> > > +  Most x1e80100 laptops have an EC running on IT8987 MCU chip. The EC
> > controls
> > > +  minor functions, like fans, power LED, and on some laptops it also
> > handles
> > > +  keyboard hotkeys.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    oneOf:
> > > +      - const: qcom,x1e-it8987-ec
> >
> > Given that ECs tend to be somewhat device-specific and many vendors
> > might have slightly customized the EC firmware(?), I think it would be
> > better to disallow using this generic compatible without a more specific
> > one. In other words, I would drop this line and just keep the case
> > below:
> >
> I've looked at DSDT of other devices and they look to be compatible with
> what's on the devkit, with differences being extra features on magicbook
> art 14 and yoga slim 7x. Though this isn't a hill I'm willing to die on.
> 

I think it's fine to keep qcom,x1e-it8987-ec as second compatible.
However, without a more specific compatible, there is a risk we have
nothing to match on in case device-specific handling becomes necessary
in the driver at some point.

It's certainly subjective, but it might be better to play it safe here
and have a specific compatible that one can match, even if the behavior
is 99% the same. There will often be subtly different behavior across
devices, you mentioned the "keyboard backlight turning off and the power
LED slowly blinking", who knows what else exists.

I suppose worst case we could also use of_machine_is_compatible() to
just match the device the EC is running on, but I'm not sure if that
would be frowned upon.

Thanks,
Stephan

