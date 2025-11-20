Return-Path: <devicetree+bounces-240861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC08C7695E
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 00:14:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 2FC8E2B812
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 23:14:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 757C3303C8B;
	Thu, 20 Nov 2025 23:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HSC8z5vP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2192E2667
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 23:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763680434; cv=none; b=RipHbPRAz8FX/jcsdDRRUpN/z+7I5YawzuKzusq4NpzBRrm3Xtv3ES3I3iPHhOrtXBPv2GitDsZWN4JHds7AiS8EgvvMYGqrVU50XiIkgwGpQl0OYeV9BQ3bCvSLbDNlaSpUkSL8tdeWunGQYtqpdIkwh8CSeOesN8PasM2HdiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763680434; c=relaxed/simple;
	bh=MtLo7QDEeZfj4ZwkzltdqC14HkyT8HuOzsPtI7hgfTQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NL0/iKAeunstenOUc1y5ALDUFhKVbzaKeseFlZn0Vzq4FXnwIg3TfxlRGSAeZ9RwMqBPwaipPIYL75pxizFkSky8WlwX+Kw+IEolw1ZuI41pWWy29pPpfE6J1BjI8hR1pUBLdV8XEJHg18GFhRi+sGL/ZZg8v+dzCihQOTWxq5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HSC8z5vP; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-78a6c7ac3caso16039027b3.0
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763680431; x=1764285231; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RrDJ+LttxTAxc9ByfcijSY2Gnuni2A6lpzxeapunJfg=;
        b=HSC8z5vPpFkIs9wiwza13sPgItBK5CCrKVS4amKd95CaIw77qV3bwrWvlLuwdV5Q9c
         /zKRIVqUmtCte5OCDtALUxNl2WrESiVkoEzbfUiTzLAjKWVdVYWQNpKyzabk2xjLSmvi
         QzQVa9YxHK3UudOyl0WkXagrZFSKTXWD7U94/b2DS73wRw/Z5Xn+EE1rvncAW/X2EC7K
         f1IPp1HZfsjXoCmZ4GyBL81kCNDR04XzTKeb7/9ia/BUxN/QHyIuewNI6gkqpU9RfwLz
         daVeQyY3Bjjo+vq0CkQ+RCmLR8AsC42runipWHXwq+vTbnPH+hTpWtbDqnN/9nH8lfpN
         Z4lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763680431; x=1764285231;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RrDJ+LttxTAxc9ByfcijSY2Gnuni2A6lpzxeapunJfg=;
        b=vH8AapNrKJorg4+yM8Uh41zewgF7fUKXXa9JV9O5BILKm/vMzM4Tx2fWtvxOktXwgQ
         tDz8+dSXw11Rul61dUdsHN3gpKIIKcXLQ8/Za1LQOeP2el+y23Qra5QBVJHSiK/8urIa
         MxDcu19m8TvDk+27zoy0P4wirW4yLDWaCgoVZcez/7A1BbhfvRj0DrP7PtY+DjftNeKA
         JU6KJmf9Ynwk/XTqpUFdAORRi+yqxps0OT0qjKnzo/5cMmy0ifEI1S5hhLczkK9ZqDd1
         yBHtRkmV7GaVAzV20Q9tIr6/LEjGile3xjMnS8BOnxiafHtJr/a9BPviOouZLEa9ItLh
         U5bg==
X-Forwarded-Encrypted: i=1; AJvYcCUNCIDJD6t4SYTwtgfThTaLuDQqJI9xHEAastcEjtWygBnXbTKwT4TnfKO1oZ3HaqPqyYtaCExSlbV9@vger.kernel.org
X-Gm-Message-State: AOJu0YxsGZf+cKT9NnoHwzvKhivJQscxB6iIsnQ5XGID0m9OYJ0mOg70
	aALpCR/UsssZqAvUEM0YwxJVDlOzkD7t4wkzqRYYyo2ek66/YvSmCR0ESWzPAYm15dbFc0h8GVX
	yWEYsawcqzpPObLV7marwjyPc6yC4eLX+i6f3Zqv+Hw==
X-Gm-Gg: ASbGncv0F3LIcccWpQyysnzRtr7MsKuQ6XSrfgxk0yk9gHB0xfe2iLLHdzyraLsLDzt
	H/vDIzKvntlWLkCXEDMg5SODXIOLzG2tqE1czB1Ev/hd9LXjaQYhmIyKDH+Gb4eX3Eyx+/TXaJs
	qDzox5cnaQGBku9acnuWm6hYwjLcrKaUh/hGIWoiuIXJusTb3dqQaUOI1+meXGodaa8Qua1dogk
	aHWj5Uho779OO2yZ+3JSA88JNaRlgeemWbZgLkFRqTUTCFMJW5Eaosbgviz9L8o3ZRmdqY=
X-Google-Smtp-Source: AGHT+IFk3lW6WYz8IUscpPRT7wsLzXi2rhD8fnUhTOuPCLLQxjXWMBiQYRuQKKWLQJgqGRYdRi8ZCYqCwzD8Nkf3Uvg=
X-Received: by 2002:a05:690c:630e:b0:789:62c5:db2f with SMTP id
 00721157ae682-78a8b545b8fmr892637b3.62.1763680431552; Thu, 20 Nov 2025
 15:13:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112-lantern-sappy-bea86ff2a7f4@spud> <20251112-improving-tassel-06c6301b3e23@spud>
 <CACRpkdYQ2PO0iysd4L7Qzu6UR1ysHhsUWK6HWeL8rJ_SRqkHYA@mail.gmail.com>
 <20251119-bacterium-banana-abcdf5c9fbc5@spud> <CACRpkda3Oz+K1t38QKgWipEseJxxneBSC11sFvzpB7ycnqsjBA@mail.gmail.com>
 <20251120-silicon-oyster-5d973ff822d9@spud>
In-Reply-To: <20251120-silicon-oyster-5d973ff822d9@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 21 Nov 2025 00:13:21 +0100
X-Gm-Features: AWmQ_bkCMWvfrPl6_87QudEHaDYJmg3nQjd2AYmg5zDD6x1lswVcldNmtxZQ4TU
Message-ID: <CACRpkdaM3Hkbxx99uXx6OVdSbdhNNc3voS1FoUsz2oAUEc1-qA@mail.gmail.com>
Subject: Re: [RFC v1 2/4] pinctrl: add polarfire soc mssio pinctrl driver
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	Valentina.FernandezAlanis@microchip.com, Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 20, 2025 at 1:26=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
> On Wed, Nov 19, 2025 at 10:48:07PM +0100, Linus Walleij wrote:
> > On Wed, Nov 19, 2025 at 7:23=E2=80=AFPM Conor Dooley <conor@kernel.org>=
 wrote:

> > I looked at the bindings that look like this and are not 1:1 to the
> > in-kernel configs:
> >
> >   input-schmitt-enable:
> >     type: boolean
> >     description: enable schmitt-trigger mode
> >
> >   input-schmitt-disable:
> >     type: boolean
> >     description: disable schmitt-trigger mode
> >
> >   input-schmitt-microvolt:
> >     description: threshold strength for schmitt-trigger
> >
> > 1. input-schmitt is missing! But it is right there in
> > drivers/pinctrl/pinconf-generic.c ... All DTS files appear to be
> > using input-schmitt-enable/disable and -microvolt.
> >
> > 2. input-schmitt-microvolt should probably be used separately
> > to set the voltage threshold and can be used in conjunction
> > with input-schmitt-enable in the same node. In your case
> > you probably don't want to use it at all and disallow it.
> >
> > They are all treated individually in the parser.
> >
> > Maybe we could patch the docs in pinconf-generic.h to make it clear tha=
t
> > they are all mutually exclusive.
> >
> > The DT parser is a bit primitive for these.
> > For example right now it is fine with the schema
> > to set input-schmitt-enable and input-schmitt-disable at the same time,=
 and
> > the result will be enabled because of parse order :/
>
> > The real trick would be to also make the
> > schema in Documentation/devicetree/bindings/pinctrl/pincfg-node.yaml
> > make them at least mutually exclusive and deprecate the
> > input-schmitt that noone is using, maybe that is simpler than I think?
>
> I think that this is probably what to do. Mutual exclusion isn't
> difficult to set up there and if there's no property for "input-schmitt"
> then deprecating it sounds pretty reasonable?

Yeah I agree.

Do you want to look into it?

Otherwise it becomes my problem now that I've noticed it :D

Yours,
Linus Walleij

