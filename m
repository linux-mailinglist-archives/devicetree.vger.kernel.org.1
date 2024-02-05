Return-Path: <devicetree+bounces-38618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D5C849C49
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 14:54:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 362F31F2565D
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 13:54:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20CC222EED;
	Mon,  5 Feb 2024 13:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="gHFgRWye"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7057324A19
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 13:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707141261; cv=none; b=p7dPJG0Q+4K2x8WL9TwIHmSN+tz7JWZ0r6GpkMsuDrKLbvgHwETdAP2tdxdlXpnSDliY1W1U9+Z0sOKmpBNCvkephyyzJDh597ddlQoBaOFW9KBMeiJz5exqbZWMMwdf3zFCuI9CxaTEUdqSq2vBLizCbXuiIu/6unyQufTAlms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707141261; c=relaxed/simple;
	bh=60XiMDUamNAnqnUGjVQMDh2YXc3ev9EeJ6VE8oK53ZU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=juhCXWBuaZgqnPWVs8cPC1l37xy/5kJFkBDtaxf1YIRQhJpPW+tmz8HicK2GbUEedzqquJyhtRNEVHgRSqqU2gfrl3wABtBC8Xnc2TAECdmrjvhirYhHkbDkvIfsz8luB1fBnB24ttHimlLW5ZMuivQe9QoXOyoUCX68PphoLbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=gHFgRWye; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6e0518c83c6so158927b3a.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 05:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1707141258; x=1707746058; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=60XiMDUamNAnqnUGjVQMDh2YXc3ev9EeJ6VE8oK53ZU=;
        b=gHFgRWyefiGJdb3rE14Z9t6QiN6oGyjFRJcjqFd1Oq5uAilUmTk3FqAVL64LJhtGrx
         gTBtD5mEbWbvb4lxwJCG5FcrSdAGX5JtGbYoyrmOiYS8fS6Tugn9pyEuiA/2zueQHG8R
         +HhprdaOZ6nw4r+BIL4Q3SX1jaSkvhP84ZOIOKJbEe30ydn5/4aB2knlOwkioTpHk/Q2
         3gIg7nFjvztw78NS9DnAVdfw6JS/E/l7u4EiRRKXKslJ6HsEtuhiyx2Fl9+OpwACOOTF
         ewljQGKAq6pQg4RI9C2NwQL/4IOlIWUzH1T3DnwMeZnKsSG8b+DJ2RChCjXtAZ7xuAYt
         +0ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707141258; x=1707746058;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=60XiMDUamNAnqnUGjVQMDh2YXc3ev9EeJ6VE8oK53ZU=;
        b=g49YPyQsZMuClcEjnz0ZR29+MpFwWk0o6MBCVz6fj5PUfPepXWIgdZKyxsx7PTlzUZ
         9yU+2ze13lcINGn9dDITq3n9OEQ2EYmM3w2nYVGRK2O1CaiMJelKhqIziBOQYFllw35f
         SB7rQWpPLGOAYPR+iPKwF1g2yOCXUb2pYSS5qFI9XwRnBNw0lCoJdFo7wumVQs3VeoVX
         0awwPF2keHFp7vMGzWPuYLQKPgWJJNN+KKecxGN+4cRnsqlCPWCmC+OcoUlaMSGQ80h9
         rCVNVPEJhtsXPn6ZRpmnfe0KITr7+57krKCwTUesO6IUh9SgOIiprPyF4YQUV10P/Z/Y
         ud0g==
X-Gm-Message-State: AOJu0Yx0Fg2HB7c8sfT2+HCDLXCI/nr9/TRy/VDCRUygAQwfmcfSNCOt
	oxcAfQrtu8QyGon+RaiqxxEcs3di+h7uycJLj7wjbakTpu8BBrnZxpiAmDVIGjd01c8XkPgdf9y
	riYOEugGvhTvMiMSXIWYLaWxHp58jUAY3lOb9iA==
X-Google-Smtp-Source: AGHT+IEfkfneWUa0GmKSKTznA6PtPhljkrBH3LEZoOS1GeNH/T7S1yjDWKAMSjUOodRoNeWFiKJVJivskI9V8MomWvs=
X-Received: by 2002:aa7:810e:0:b0:6dd:a086:1e0f with SMTP id
 b14-20020aa7810e000000b006dda0861e0fmr7484503pfi.32.1707141258643; Mon, 05
 Feb 2024 05:54:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240130115651.457800-1-naresh.solanki@9elements.com>
 <1c855a34-8a0d-491e-bfd2-24635b41c86f@linaro.org> <20240131163516.000043df@Huawei.com>
 <20240131-stylized-defile-d8fe346ab197@spud> <CABqG17iNxfKFNqydkgo6gL8ZmaZ_bqm=pG8kNEhzx_h2eaGuhQ@mail.gmail.com>
 <e8b30740-379c-9ab0-6bd7-d4726f822381@axentia.se> <20240202-shone-footwork-b247b1ae8e06@wendy>
In-Reply-To: <20240202-shone-footwork-b247b1ae8e06@wendy>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Mon, 5 Feb 2024 19:24:07 +0530
Message-ID: <CABqG17hRF3HaqfvXkT2go2S00JTRqCzremg1Nh=cSEUbcO_2pw@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: iio: afe: voltage-divider: Add io-channel-cells
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Peter Rosin <peda@axentia.se>, Conor Dooley <conor@kernel.org>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	mazziesaccount@gmail.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Conor, Peter,

On Fri, 2 Feb 2024 at 18:39, Conor Dooley <conor.dooley@microchip.com> wrote:
>
> On Fri, Feb 02, 2024 at 12:49:26PM +0100, Peter Rosin wrote:
> > 2024-02-02 at 11:43, Naresh Solanki wrote:
> > > On Wed, 31 Jan 2024 at 22:24, Conor Dooley <conor@kernel.org> wrote:
> > >> On Wed, Jan 31, 2024 at 04:35:16PM +0000, Jonathan Cameron wrote:
> > >>> On Wed, 31 Jan 2024 09:29:59 +0100
> > >>> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> > >>>> On 30/01/2024 12:56, Naresh Solanki wrote:
> > >>> Conor requested an example of the device acting as a consumer and a provider.
> > >>> Might have meant in the patch description?
> > >>>
> > >>> Conor?
> > >>
> > >> I wanted it in the property description to help with understanding when
> > >> to use it. I don't think the extra example nodes actually help you
> > >> understand what it is doing, only how to write one yourself once you
> > >> know you need it.
> > >
> > > I'm not sure if I get it right but what I understood is that a
> > > voltage-divider can
> > > also be a provider to other devices & hence the property.
> > > Also do you want me to put a complete example of it in description ?
> >
> > My understanding is the requested example in the description should not
> > be exactly /how/ to hook up the voltage-divider as a provider, but
> > instead have some words about why it is interesting to do so at all. And
> > those words would also make it clear that is even possible. The latter
> > is something which, to be honest, is perhaps not all that obvious. It
> > has always been totally obvious to me of course, sorry for not being
> > clearer when I wrote the binding...
>
> Yeah, you're right about what I was looking for Peter.
>
> In my original request, which I think I already linked to in this
> thread, I said that I would like an example like the one that Peter had
> used to explain to me the scenario in which someone would want to use
> this feature:
> https://lore.kernel.org/all/536971eb-51f0-40e5-d025-7c4c1d683d49@axentia.se/
ok. Based on my understanding, I'll update the property description
with an example.

description:
In addition to consuming the measurement services of a voltage output
channel the voltage divider can act as a provider of measurement
services to other devices. This is particularly useful in scenarios wherein,
ADC has analog frontend such as voltage divider then consuming its raw
value isn't interesting. It is desired to get real voltage before
voltage divider.

Regards,
Naresh

>
> Cheers,
> Conor.

