Return-Path: <devicetree+bounces-5709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BB87B78D2
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 09:36:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 348D41C2037C
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 07:36:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B499D2EB;
	Wed,  4 Oct 2023 07:36:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B4A568B
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 07:36:26 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::222])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F17CE9B;
	Wed,  4 Oct 2023 00:36:24 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id A69D04000A;
	Wed,  4 Oct 2023 07:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696404983;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ngPaH82ebBnbrryfOJbDz3IQaDzQY6NcyZOlki0nDMU=;
	b=YdfN+yrxrO7j0TdmpeLWPl73yPq08XtmwZvNnFasDHk2kWC72GMksBZafFVGZ26euBCc+o
	oCDZyIvqYV1VsrHif4X3IdWPJbsQUZt4vGqXzvaFne1Ga/DM8et3GlgOHbWMaNpSnQFEgv
	zXW2ZF0Z9m0iaf456rpC/tXLMT57+7kRN45S0KFwvc4NoJ2AKWkmA5qh3QTbx6DqX7gIl0
	lkZRjDbgqqPDi3tc+PUMejqbdIrn0haO1vLOAblySPti7AaGfajr6IcKEcRjN0uYtHoPQA
	s2zl+FVICo1l9qG6bi3eljZag5jIueQuCo/U1QFGIqBE4PkpIsPBtWKfDM7xJA==
Date: Wed, 4 Oct 2023 09:36:20 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Simon Glass <sjg@chromium.org>
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>, Tom Rini
 <trini@konsulko.com>, U-Boot Mailing List <u-boot@lists.denx.de>,
 linux-mtd@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Pratyush Yadav
 <ptyadav@amazon.de>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: mtd: fixed-partitions: Add binman
 compatible
Message-ID: <20231004093620.2b1d6917@xps-13>
In-Reply-To: <20231002174948.1015223-1-sjg@chromium.org>
References: <20231002174948.1015223-1-sjg@chromium.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: miquel.raynal@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Simon,

sjg@chromium.org wrote on Mon,  2 Oct 2023 11:49:40 -0600:

> Add a compatible string for binman, so we can extend fixed-partitions
> in various ways.

I've been thinking at the proper way to describe the binman partitions.
I am wondering if we should really extend the fixed-partitions
schema. This description is really basic and kind of supposed to remain
like that. Instead, I wonder if we should not just keep the binman
compatible alone, like many others already. This way it would be very clear
what is expected and allowed in both cases. I am thinking about
something like that:

	Documentation/devicetree/bindings/mtd/partitions/brcm,bcm4908-partitions.y=
aml=20

this file is also referenced there (but this patch does the same, which
is what I'd expect):

	Documentation/devicetree/bindings/mtd/partitions/partitions.yaml

I'll let the binding maintainers judge whether they think it's
relevant, it's not a strong opposition.

> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---

[...]

> +properties:
> +  compatible:
> +    const: binman

Right now this does not fit (I believe) the example. But if we no
longer extend fixed-partitions but just create binman.yaml, this will
probably be enough.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    partitions {
> +        compatible =3D "binman", "fixed-partitions";
> +        #address-cells =3D <1>;
> +        #size-cells =3D <1>;
> +
> +        partition@100000 {
> +            label =3D "u-boot";
> +            reg =3D <0x100000 0xf00000>;
> +        };
> +    };

Thanks,
Miqu=C3=A8l

