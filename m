Return-Path: <devicetree+bounces-8276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF1C7C7783
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 21:59:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E86A4282BE8
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 19:59:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03FDD3C6A4;
	Thu, 12 Oct 2023 19:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dg/IWe59"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46E23B7BD;
	Thu, 12 Oct 2023 19:59:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42606C43397;
	Thu, 12 Oct 2023 19:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697140784;
	bh=xtxzdksc5dl0r8+k5pleTaspKNJ+Zn9WfG06u94llFg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=dg/IWe59hkWjSTXCX7pxouQ7rtqEu1pELE8X2UFbPeE5AU/mCMjFEuJcH23nUcTPq
	 ZKqFLBrWgAQkAxNSjtThu6s6HAP8z+qQ9YRUgp8+nqFujzMPo/+lbDlohGCuotgl2m
	 BTbysQuVG1uqdjjLh0w1qXKktOid333JKvkR3F9zHpMQK8ZNLivzoMaL+dZvekCCGD
	 jGHCvPp8NCXzd72b0s13kmM4os9zqXQnPkx6SGPEe4Aj63iJRFQC/XuIpAQuaSFwBL
	 6LfR//Y9cElvJrVPHdChprisBhxuLsDXYNi3tjo7ygxqHwqJKsqJpSrOnv24TOT5af
	 r3AFygNiZPWIg==
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2c5056059e0so1313851fa.3;
        Thu, 12 Oct 2023 12:59:44 -0700 (PDT)
X-Gm-Message-State: AOJu0YzQJ0D882gj0CTt7IviEo3AykUDbf/yLfA6UJ5U7Y5l77g/q/xb
	ATcqOHy7UZ7dNGQycIviqQyiWTiTxrMOP25Odw==
X-Google-Smtp-Source: AGHT+IG5Giia/8iFXS++Hrtrgo9gbNcDu1M68Jz8U/9hXSm+ZWLSfwFKE5D3t4OBA10dstNAPnw63Gfl6mY1QeId0T4=
X-Received: by 2002:a2e:b893:0:b0:2c5:634:b45e with SMTP id
 r19-20020a2eb893000000b002c50634b45emr87993ljp.36.1697140782413; Thu, 12 Oct
 2023 12:59:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010-pxa1908-lkml-v6-0-b2fe09240cf8@skole.hr>
 <20231010-pxa1908-lkml-v6-2-b2fe09240cf8@skole.hr> <20231012195337.GA1579632-robh@kernel.org>
In-Reply-To: <20231012195337.GA1579632-robh@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Thu, 12 Oct 2023 14:59:30 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+cFeo4eoXfi66otrHnHvJ44Oj42=AxmZmqqdxQ53k1FA@mail.gmail.com>
Message-ID: <CAL_Jsq+cFeo4eoXfi66otrHnHvJ44Oj42=AxmZmqqdxQ53k1FA@mail.gmail.com>
Subject: Re: [PATCH v6 2/9] dt-bindings: pinctrl: pinctrl-single: add
 marvell,pxa1908-padconf compatible
To: =?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Haojian Zhuang <haojian.zhuang@linaro.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>, 
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 12, 2023 at 2:53=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Tue, Oct 10, 2023 at 07:27:19PM +0200, Duje Mihanovi=C4=87 wrote:
> > Add the "marvell,pxa1908-padconf" compatible to allow migrating to a
> > separate pinctrl driver later.
> >
> > Signed-off-by: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>
> > ---
> >  Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-single.y=
aml b/Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml
> > index 45a307d3ce16..0f7e16a28990 100644
> > --- a/Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml
> > +++ b/Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml
> > @@ -32,6 +32,10 @@ properties:
> >                - ti,omap4-padconf
> >                - ti,omap5-padconf
> >            - const: pinctrl-single
> > +      - items:
> > +          - enum:
> > +              - marvell,pxa1908-padconf
>
> Just add this to the existing enum above.

NM, I see it's pinconf-single, not pinctrl-single.

Reviewed-by: Rob Herring <robh@kernel.org>

