Return-Path: <devicetree+bounces-10203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4D87D0122
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 20:05:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A5E31C20A83
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 18:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E66837C8C;
	Thu, 19 Oct 2023 18:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBweXG01"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE3314F90;
	Thu, 19 Oct 2023 18:05:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5330EC433CA;
	Thu, 19 Oct 2023 18:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697738739;
	bh=13yt5cryvUi1YLdWtQi3541qTBZX6Xxnaa5Zjb/IhK0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=FBweXG01tz7i3yGhEu0rZq9X3fHqysIn62AciqqqNTXgJLPWeTA0KqGLV7NAv4dAG
	 6phlNA4RBO9tcom4ns5IXNNy+JNzgUjqyjQYx/NgwnEi1oklxKi6sLCG8gtr5+lNCH
	 jXyziYWk4el32e877PCAHSFXEH7eoixVQxEePW9pO2BnOz/WBNtXiJkW3xmhOLOCc5
	 1OybPsPseRw8gqbnbzyS04USEyT/hwk7WQccCevEbkgj2IEWmEGxllhO2wBxzzxTtb
	 DS9weU2uiT5IFoy4AB7uv3+RAdvd/5yn6fn620OD5zc1EWyOhz0xcWggEWZctJAbw8
	 ncKbR4aDyRlOg==
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-40842752c6eso11782365e9.1;
        Thu, 19 Oct 2023 11:05:39 -0700 (PDT)
X-Gm-Message-State: AOJu0YybPUd5hgq1N23qGQNYpBVI+Q5Qk1EkHPHD6uxc7sLuKlhZtNYE
	ekl85pZxs6co1Hua3wv3eiLUw17qRJm/zZPTTg==
X-Google-Smtp-Source: AGHT+IEjbNUU8g3b3xf9dnd0eY+00UyD/xRWPuvjqCt6uPBJrdf2zudScRRu1FwHOHQso0cwFJ/4Jb+Lufriea1TdN4=
X-Received: by 2002:a19:ad05:0:b0:500:d4d9:25b5 with SMTP id
 t5-20020a19ad05000000b00500d4d925b5mr2093637lfc.56.1697738717670; Thu, 19 Oct
 2023 11:05:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231016-dt-net-cleanups-v1-0-a525a090b444@kernel.org>
 <20231016-dt-net-cleanups-v1-1-a525a090b444@kernel.org> <20231019131806.lbzydoplodybvb62@skbuf>
In-Reply-To: <20231019131806.lbzydoplodybvb62@skbuf>
From: Rob Herring <robh@kernel.org>
Date: Thu, 19 Oct 2023 13:05:04 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJmUe9XtHEwU+GVMZc8RrKy5OV5RM6pfE2KqwMhRekMOw@mail.gmail.com>
Message-ID: <CAL_JsqJmUe9XtHEwU+GVMZc8RrKy5OV5RM6pfE2KqwMhRekMOw@mail.gmail.com>
Subject: Re: [PATCH net-next 1/8] dt-bindings: net: Add missing
 (unevaluated|additional)Properties on child node schemas
To: Vladimir Oltean <olteanv@gmail.com>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andrew Lunn <andrew@lunn.ch>, 
	Florian Fainelli <f.fainelli@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com, 
	Linus Walleij <linus.walleij@linaro.org>, =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>, 
	=?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Maxime Ripard <mripard@kernel.org>, =?UTF-8?B?bsOnIMOcTkFM?= <arinc.unal@arinc9.com>, 
	Landen Chao <Landen.Chao@mediatek.com>, DENG Qingfang <dqfext@gmail.com>, 
	Sean Wang <sean.wang@mediatek.com>, Daniel Golle <daniel@makrotopia.org>, 
	John Crispin <john@phrozen.org>, Gerhard Engleder <gerhard@engleder-embedded.com>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Sergey Shtylyov <s.shtylyov@omp.ru>, 
	Sergei Shtylyov <sergei.shtylyov@gmail.com>, Justin Chen <justin.chen@broadcom.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Grygorii Strashko <grygorii.strashko@ti.com>, Sekhar Nori <nsekhar@ti.com>, 
	Claudiu Manoil <claudiu.manoil@nxp.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-renesas-soc@vger.kernel.org, 
	bcm-kernel-feedback-list@broadcom.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 19, 2023 at 8:18=E2=80=AFAM Vladimir Oltean <olteanv@gmail.com>=
 wrote:
>
> Hi Rob,
>
> On Mon, Oct 16, 2023 at 04:44:20PM -0500, Rob Herring wrote:
> > Just as unevaluatedProperties or additionalProperties are required at
> > the top level of schemas, they should (and will) also be required for
> > child node schemas. That ensures only documented properties are
> > present for any node.
> >
> > Add unevaluatedProperties or additionalProperties as appropriate.
> >
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > diff --git a/Documentation/devicetree/bindings/net/dsa/renesas,rzn1-a5p=
sw.yaml b/Documentation/devicetree/bindings/net/dsa/renesas,rzn1-a5psw.yaml
> > index 833d2f68daa1..ea285ef3e64f 100644
> > --- a/Documentation/devicetree/bindings/net/dsa/renesas,rzn1-a5psw.yaml
> > +++ b/Documentation/devicetree/bindings/net/dsa/renesas,rzn1-a5psw.yaml
> > @@ -61,17 +61,11 @@ properties:
> >
> >    ethernet-ports:
> >      type: object
> > -    properties:
> > -      '#address-cells':
> > -        const: 1
> > -      '#size-cells':
> > -        const: 0
> > -
> > +    additionalProperties: true
> >      patternProperties:
> >        "^(ethernet-)?port@[0-4]$":
> >          type: object
> > -        description: Ethernet switch ports
> > -
> > +        additionalProperties: true
> >          properties:
> >            pcs-handle:
> >              maxItems: 1
>
> For my edification, this patch removes #address-cells and #size-cells
> at the same time, because "additionalProperties: true" (which was also
> implied before) doesn't care if they aren't defined in this sub-schema,
> and they are defined through $ref: dsa.yaml#/$defs/ethernet-ports,
> right?

Yes, they are ultimately checked via ethernet-switch.yaml which
dsa.yaml references.

Rob

