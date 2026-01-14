Return-Path: <devicetree+bounces-255185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED06D20A1B
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 18:48:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC52C3045DF1
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:47:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 044A0329360;
	Wed, 14 Jan 2026 17:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5tyNnMa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45D1326934
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 17:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768412838; cv=none; b=dX5CE5+abSil6qN/MPgS+4Ivl8zGiO6cvy3+el68acXFFKupdgrkeHQ28WcRPqR71WnfNws3/A1uvGGNE4fu95XZRYfLtzqhdG21uOrzALyMIeIrB8rkLt68/UHm+qC1xHPNSLyPYOlLHGE6vVkKiTm+5b46ArS/Nu78DWlm1rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768412838; c=relaxed/simple;
	bh=tuWbZrH+4mGMGnXLlpjXIiy6C13bGh77pEf3nFBIEfs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Hpv7dM1BVKvHinIJh2o1pFo1uhLGIHxslJyZArXVn4tvZ5MkG5haK+k3FC0CneFugXVovwpY8k+eIX/qdlO01vy14+8+YUzdtqcAkfIvuGivFnDRoTrGLj88vlTwv9qFz77Azyt+CvZd6eJIzyNLqflAPkYFKuCAjAOPDs3baNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5tyNnMa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C2C2C2BC9E
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 17:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768412838;
	bh=tuWbZrH+4mGMGnXLlpjXIiy6C13bGh77pEf3nFBIEfs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=l5tyNnMa2V8sEbsUu6u4sEgcscdLjn2FkqpB+TsEni23Pynl0stZsIIymYZbmrmZ3
	 oqCpWy1NhejE4c8S+ZvmFhO7EBxWuc6KPRHCS0GAH9uCk/r4yolPzVXGygQy5fMYaW
	 Zs7RaWO0vec8YiTYeiHzmFRBU8V3ASymJyEhGTJt2GENYBHv1HD313vdE6kvtb78C/
	 OEbZrre/6Km+TY4waMNiSvMD3pqLoSGN/EkkkFbTEQ6bgLXIUvL4uPzSTLL5x2b4/B
	 724RHmg/MwFi3kI6vb68TbzsEV2pwxz+u7irlmFiZcwSa6ltmzmSgjWkReCcKMeRJx
	 lneKB5YW9Jihw==
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-64daeb28c56so15731a12.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:47:18 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXWvBfFfadnvQCDJHTTyr3LjL6lKvIDO9frhKXsd2wAc08EZSl4HCkL8n3yahzTGphoIlTo9EyygJTB@vger.kernel.org
X-Gm-Message-State: AOJu0YwjF0n36jiEy8mkBMLpEsvqD9HyMw5o4UAjVDlS322fo+y+KwdW
	EdlUiEhbGcsRCc3/pUVTuY1j03eBmAbs15P7JRJceYoqrnaOL2CL5oGK9fLR5TuIQ12hEe2QBuC
	aFjMgKHPQA0cUCTUbeEzANcDWw8o/8w==
X-Received: by 2002:a17:907:d14:b0:b86:e938:1b3a with SMTP id
 a640c23a62f3a-b876103e29bmr272686266b.17.1768412837150; Wed, 14 Jan 2026
 09:47:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108-dt-mtd-partitions-v1-0-124a53ce6279@kernel.org>
 <20260108-dt-mtd-partitions-v1-7-124a53ce6279@kernel.org> <87fr8fxipc.fsf@bootlin.com>
 <CAL_JsqKV+3ZnqpbQ4USmJh-dngik_jZdnpOw0bGcxD0RSSzfxA@mail.gmail.com> <87ms2gwb1w.fsf@bootlin.com>
In-Reply-To: <87ms2gwb1w.fsf@bootlin.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 14 Jan 2026 11:47:06 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ+4+Uq=GWwU-naqTs82hp=Kuw6QLRN-ZrhMDBGa_LGww@mail.gmail.com>
X-Gm-Features: AZwV_QivgWJLWruGhaCte97C3vmWMU9MiWmx3wNuxEQ3mMcpnD0y11AtzYaHP24
Message-ID: <CAL_JsqJ+4+Uq=GWwU-naqTs82hp=Kuw6QLRN-ZrhMDBGa_LGww@mail.gmail.com>
Subject: Re: [PATCH 07/10] dt-bindings: mtd: Ensure partition node properties
 are documented
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Brian Norris <computersforpeace@gmail.com>, Kamal Dasu <kdasu.kdev@gmail.com>, 
	William Zhang <william.zhang@broadcom.com>, Nick Terrell <terrelln@fb.com>, 
	David Sterba <dsterba@suse.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Simon Glass <sjg@chromium.org>, Linus Walleij <linusw@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Marcus Folkesson <marcus.folkesson@gmail.com>, 
	Tony Lindgren <tony@atomide.com>, Roger Quadros <rogerq@kernel.org>, Hauke Mehrtens <hauke@hauke-m.de>, 
	linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 14, 2026 at 7:58=E2=80=AFAM Miquel Raynal <miquel.raynal@bootli=
n.com> wrote:
>
> Hi Rob,
>
> >> > +$defs:
> >> > +  partition-node:
> >> > +    type: object
> >> > +    if:
> >> > +      not:
> >> > +        required: [ compatible ]
> >> > +    then:
> >> > +      $ref: '#'
> >> > +      unevaluatedProperties: false
> >> > +    else:
> >> > +      $ref: '#'
> >>
> >> This, however, is total blackmagic to me. Would you mind explaining wh=
at
> >>
> >>       $ref: '#'
> >>
> >> indicates? Is this a placeholder indicating "a reference must be given=
?
> >
> > It's what's known as JSON pointers. The '#' is a reference to the top
> > level of this schema.
> >
> >> Also I do not understand the final else case, what is it covering?
> >
> > It's really just there so a $ref to
> > partition.yaml#/$defs/partition-node applies the schema (all of
> > partition.yaml) whether there's a compatible property or not.
> >
> > This all just works around that a schema like this doesn't work:
> >
> > $ref: foo.yaml
> > if:
> >   ...
> > then:
> >   unevaluatedProperties: false
> >
> > The evaluation of unevaluatedProperties doesn't "see" the $ref being
> > in the parent. So we can't factor out the $ref.
>
> Oooh, ok, fully understood. I think I already faced that problem
> before. First time I hear about JSON pointers, thanks a lot for the
> heads up.
>
> Regarding this series, it feels like in the end, if I understood the
> discussion with Krzysztof correctly, there is no modification to bring?
> Let me know if you plan on sending a v2 of if I shall take v1 otherwise.

Right, I think v1 is good to go.

Rob

