Return-Path: <devicetree+bounces-216289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7BCB5443A
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:54:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4197217A318
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 07:54:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4E942D375F;
	Fri, 12 Sep 2025 07:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bGfyYAos"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322572D374B
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757663659; cv=none; b=FRgiKreFWXqqUN/ALMyoQpN1L21y5XtKXuTgbWly9YdiMrM/2555RkPeb96NwHqar7CN2GJj/B5BF9c2/zxTWDoZ+u2gp5LaxDCteckvzY1WHAgYZAKTf8RMwhyC+3oGdT36+kEdyK+cRE+J+hdcNDGZ5mATEFMaOhSEvk60DLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757663659; c=relaxed/simple;
	bh=Grp0/nTBNIMSIhr2eHNF+OmOjlfnZ2Vkm28fXfqGvyo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MLMMkg+F3mDiUP6OXoK0vqNRWyZso3NI/Zo7qWnc8t5Xzq+4pS2I/5XgV5jdBZ6vXFukaA5nDjGeh2NDLTvSB5mVMbPsO6K6NhvoupY1FzmvdFBTqjbxRuwUYPyryA34fWrlRQB9fD6/WgmjU32UXAfnHpzxYOMPQeYuuw7JJAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bGfyYAos; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-ea0297e9cd4so1009310276.3
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 00:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757663657; x=1758268457; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xjuRsqHdcU4j53GUFw1Pl7XbbCPvtJQh1ErB89K8XOs=;
        b=bGfyYAosidmRXUr6mqZ+JemixQn2TQpPiv7MqE5H/RjUZ9OUFkrP+kOCc1s+ewj4Rh
         6FYqbCnUbBoPxPui916uA+zEVxwIZC1Vwp2kkAqudkQWdrk+bfj3O5zQaNEnb7nh1Vki
         SPrJ2/y6otHLdljQD/V234GOOqoz3PIkYw7kqocJgcUlIdwDPEXVEFugXwCeqCejyyc0
         dn1lwDwkFAE0gcs04WZN18aJLi8lbmhqB23ViDDl7WqfV7GQITPIabtB8uO8CKq3iLHp
         u1JCqfuIjQrELre9/RtDpUFjYiXoiOMNl6+a9qwN3ZSu9iBxs/Kgw0RuzDXCTUiHpc3c
         5TSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757663657; x=1758268457;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xjuRsqHdcU4j53GUFw1Pl7XbbCPvtJQh1ErB89K8XOs=;
        b=IV3oAXQ4nM6AE0oBadiCAc0NYsK9dQziqAi5L0XEqytFaBxmupYMNyxyUJ9d+Jmi7F
         NW3qSAd9c6TIYlvr3ssm54TIH6FY+GsbumzYsTi1QdPNq58vGCx7Vj1p2JYEXSpxiXwE
         ZP/vjiMZbwFq6ffWEqhDlXSrbivcIwC0exqr8/rl2yuntjpcFjtX4CXAHGQ+eo/SYac9
         bTtGne6rUVDIbK4POh7HahWLsTEIkoQ+hYSL3T2MJ4tJhd8ljUEnLbjlntqQTZtQbtXt
         66CEaDXQmtFxriBl/AkmFx9QasM2CTbUZjRotJZFmHsuO09r3hjASZg380KAGb0kHWps
         ep0A==
X-Forwarded-Encrypted: i=1; AJvYcCWLqqBtxs9DWRGBtD3JJcSYS6+90MsPmkXd4noiu4SrkZrsLpp9mizotdhPqKQWN44KYKqd91QdyHBS@vger.kernel.org
X-Gm-Message-State: AOJu0YwAPK56cpR/22tJThwgsyFSHlR/1QVOmdbybFa72tB1GTIEr9sd
	lgxSFh1z6RyMxUXOIk3np0JvMWsNnkTPIZpCaNiM501dVF02iOL4eZlPX3lOxBVpPu7hyue88bh
	Cy74xmXBda97/YPGOjnwOAotxT9sjPi0=
X-Gm-Gg: ASbGnctmYI3px1/BR34O2yVTwEtaZ3hrHBLT3FV3WF5NPXyLrK+d/Mn0qg98BpVRKjj
	15nHH/Lr4jH0Ntl9w4fOCFS5Zf8+SHJIqxD+Vwkoc3qxpUqjbzdRIh7/ZOqSYEf0JAJKUnP7iW4
	TjGlylMKGaUo48xkWOnL2+h4EiiTrB6RnkL5rK4FUpswsA9di9m+OWSAdN4lywfpGnsCZOS6az5
	/UGwCR1CDXrM3oC3A==
X-Google-Smtp-Source: AGHT+IE8+unssytBQ1SOk4XKYFDJkZtS2RYqGocxJxS92x7Kboc0Jmlrk5uoaHdUbNrabaNoKudlBW69K1l0SKFQeSI=
X-Received: by 2002:a25:b318:0:b0:e96:edb1:83e1 with SMTP id
 3f1490d57ef6-ea3d9a53003mr1176835276.30.1757663657050; Fri, 12 Sep 2025
 00:54:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250909-st7920-v2-0-409f4890fb5f@gmail.com> <20250909-st7920-v2-2-409f4890fb5f@gmail.com>
 <20250910-ant-of-angelic-vastness-b5caa5@kuoka>
In-Reply-To: <20250910-ant-of-angelic-vastness-b5caa5@kuoka>
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Fri, 12 Sep 2025 09:54:06 +0200
X-Gm-Features: Ac12FXy9_6cG2MPPRC87qxo9hknhSzyQbNu-GNhShhmF__u_g4RQSIAwjbhmZUU
Message-ID: <CABdCQ=NKrXMqt+7Pj1oL2_6isi6w2q3bJLRrS8LFxLixNu+d9A@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: display: sitronix,st7920: Add DT schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

El mi=C3=A9, 10 sept 2025 a las 13:35, Krzysztof Kozlowski
(<krzk@kernel.org>) escribi=C3=B3:
>
> On Tue, Sep 09, 2025 at 06:52:44PM +0200, Iker Pedrosa wrote:
> > Add binding for Sitronix ST7920 display.
> >
> > Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> > ---
> >  .../bindings/display/sitronix,st7920.yaml          | 52 ++++++++++++++=
++++++++
> >  1 file changed, 52 insertions(+)
> >
>
> Please organize the patch documenting compatible (DT bindings) before the=
ir user.
> See also: https://elixir.bootlin.com/linux/v6.14-rc6/source/Documentation=
/devicetree/bindings/submitting-patches.rst#L46
>
> ...
>
> > +  reg:
> > +    description: The chip-select number for the device on the SPI bus.
>
> Drop description, obvious/redundant.
>
> > +    maxItems: 1
> > +
> > +  spi-max-frequency:
> > +    maximum: 600000
> > +
>
> I don't see how my comment about supply was addressed. You never
> responded, nothing explained in the changelog, nothing explained in the
> commit msg.

Sorry, I forgot to answer.

No supplies are needed. There's an optional contrast for the display,
but this isn't strictly needed.

>
> > +required:
> > +  - compatible
> > +  - reg
> > +  - spi-max-frequency
> > +
> > +allOf:
> > +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    // Example: ST7920 connected to an SPI bus
>
> Drop comment.
>
> > +    #include <dt-bindings/gpio/gpio.h>
> > +
> > +    spi {
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <0>;
> > +
> > +        display@0 {
> > +            compatible =3D "sitronix,st7920";
> > +            reg =3D <0>;
> > +            spi-max-frequency =3D <600000>;
> > +            spi-cs-high;
> > +        };
> > +    };
> >
> > --
> > 2.51.0
> >

