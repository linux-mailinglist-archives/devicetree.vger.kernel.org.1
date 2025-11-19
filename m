Return-Path: <devicetree+bounces-240019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A9AC6C45F
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 02:38:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7109135BED0
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 01:38:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 699CA2472A8;
	Wed, 19 Nov 2025 01:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTXL+YhO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4289824677A
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 01:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763516291; cv=none; b=JWtLCyLzh29MWfAqsCOQz3um8Z+HQjBFZcHo3hcmMiKWpb54gcBSLSOIL7//D4viVsQPO+yXXZ6co1xiriz7ZWFGRidH6YV/k+fY50wIZUyRaOSiNXfLH66nbzPcRZgstQZOfF2qwZTkXJjwEUFY6AWmrafLKLExKf0LbPX2m54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763516291; c=relaxed/simple;
	bh=1zFHC/D3qDhaCV+4B0RKeie8bN/hEL/zcC1isKO/Ij8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JjqI4xMtUepTQZAgCYH2pocMzgAf5m4RVPPHxzgDlHNEhjC2NBMva0gJg7csTKqJVocIm0v1KS+vyTBiowob6N1hVEvFkSN8kV4T591sWYhluQ3SuiipYslUb1h3JYhn+fwcxGv0LAn+rZ3OrjavrcXVBcb/JBkwljeXXGd8+KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTXL+YhO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3576C2BC86
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 01:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763516291;
	bh=1zFHC/D3qDhaCV+4B0RKeie8bN/hEL/zcC1isKO/Ij8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=fTXL+YhO9GHzGcOxej3kYSzQm5ZunC8XrDJg3je92ub8Wg3OlKtDo+kaePJTqim2J
	 RBw7LBKuywPycMhlraPamhOFTfDFMu9gJhyy6m4EVtnOxV1/BR00QatMlNXIo2UO+3
	 NZWfS5tRaiZNptmzrmDXaNVaq4G7zeH1T4jHAvVimyEydBL7RFyPlO++FDPmqJjrxb
	 Xz79NAjnb4SH6VTIRc+pFW4XNp68wBCMM9pmpNIokvP/5UCaUSD2rTTVW5onKK5aAT
	 TmhBAj9tu5AfU4HPPfJB+aOTT8B1lgBYku8thp6e+kw7fnVjz0pcQq/zQyAo4VbWQC
	 h7FpLsY56VIag==
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-64180bd67b7so8464851a12.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 17:38:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUzyZ9MSDv2FyKH3+yIs0c6PD7RtP7SHv9gaOOBw3YpXaqX8Njnl33dhAZVASw55sOoaXhRUX42z+zR@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4TSUQHqPPMRx7CI1RN0zh4XRhoUFbfgENsRPkHWyWoob8L6JR
	Ek1tPCBLvaCTtS/1uvQSruFQxeUwHcNww3FS3MWUl5PU5CvCXTw7PgMqBR5NB+QHkUfBmsO2mMv
	D/qO9MOWFIUxvOvQBJzqHZ/xUUgtUZg==
X-Google-Smtp-Source: AGHT+IEGIARixQQxL/Z1vr1zZwusANAarRAXKjnwQT9SgCWjwfycQbJPhMJgCUV5i3+Ije/OVDWoe3jsxHkuyDWz110=
X-Received: by 2002:a05:6402:2396:b0:640:a836:eacf with SMTP id
 4fb4d7f45d1cf-64350ead477mr11536886a12.26.1763516286855; Tue, 18 Nov 2025
 17:38:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251117215138.4353-1-sander@svanheule.net> <20251117215138.4353-3-sander@svanheule.net>
 <CAL_Jsq+Mzj+3d4q+xQLq_GEYzRJA6E+CEJ9M8FQH6kL9eBZhVg@mail.gmail.com> <9fc358372ef267530b4304b4fa1cf5643c18cb42.camel@svanheule.net>
In-Reply-To: <9fc358372ef267530b4304b4fa1cf5643c18cb42.camel@svanheule.net>
From: Rob Herring <robh@kernel.org>
Date: Tue, 18 Nov 2025 19:37:55 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKKpymk_i9c=29Zq0QSzHMU3x0RPWjBMmW84k_5jUe4Jg@mail.gmail.com>
X-Gm-Features: AWmQ_bma3IwgMlrXQXQ04kE3R6adJH2pYZDDa4bWglo_Mov9dGx6o8xd45F7CwY
Message-ID: <CAL_JsqKKpymk_i9c=29Zq0QSzHMU3x0RPWjBMmW84k_5jUe4Jg@mail.gmail.com>
Subject: Re: [PATCH v7 2/6] dt-bindings: mfd: Binding for RTL8231
To: Sander Vanheule <sander@svanheule.net>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Michael Walle <mwalle@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 18, 2025 at 3:57=E2=80=AFPM Sander Vanheule <sander@svanheule.n=
et> wrote:
>
> Hi Rob,
>
> On Tue, 2025-11-18 at 15:28 -0600, Rob Herring wrote:
> > On Mon, Nov 17, 2025 at 3:52=E2=80=AFPM Sander Vanheule <sander@svanheu=
le.net> wrote:
> > > +patternProperties:
> > > +  "-pins$":
> > > +    type: object
> > > +    $ref: /schemas/pinctrl/pinmux-node.yaml#
> >
> >          additionalProperties: false
>
> In this case dt_binding_check doesn't recognize input-debounce. The follo=
wing seems to
> work for the provided example:
>
> -    $ref: /schemas/pinctrl/pinmux-node.yaml#
> +    allOf:
> +      - $ref: /schemas/pinctrl/pincfg-node.yaml#
> +      - $ref: /schemas/pinctrl/pinmux-node.yaml#
> +
> +    additionalProperties: false
>
>
> with this included in the led node properties:
> +      input-debounce: true
>
> If I understand correctly, "unevaluatedProperties: false" (like for the l=
eds binding)
> would allow everything from the referenced pincfg-node and pinmux-node sc=
hemas, which is
> more than is actually supported by this device.

Yes, that works too. The first way lets you be explicit about which
referenced properties are used, but either way is fine. If it is only
1 property, then I'd probably go with the first way.

Rob

