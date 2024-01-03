Return-Path: <devicetree+bounces-29514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 95311823734
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 22:39:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 197A72832BE
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 21:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8086A1D6BD;
	Wed,  3 Jan 2024 21:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KDpR54+e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CE31DA23
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 21:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2ccc6e509c8so8364481fa.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jan 2024 13:39:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1704317980; x=1704922780; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5+AIF4yNGi2dja8BCgq5OeAUBgUsXRyLuw34D2kZ4yA=;
        b=KDpR54+eTUGZwNQfntJRymMgezPSIt1hO34xlA1IpPBmm1kMJdpztf9sMQpqxxghHY
         zU5jQGd8v22sP9upLYlchXBP9sYMxYfixJRiTox3KwDnQbgezquoqBXsafxt1ifxyAQj
         Hm0miBqnKnX2oUpNhnuq1jsGEYiYD9E5mX33g65iVQLX8BWS60Gj1YEXU9DLjr83gKnf
         /BxgdSz6ChrQHN1iNuNeVFh9MzpskP8nDyihcc1BEifyiOOURnbZk44gHsoxVeBigmQK
         zCkDLiBceV88zvBNZfx4+xVpV3Z5CrJQoFuatMgjsv0J1Iy5VSWe3Yd24B2cHsr+K51R
         6Ksg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704317980; x=1704922780;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5+AIF4yNGi2dja8BCgq5OeAUBgUsXRyLuw34D2kZ4yA=;
        b=LB1THFlIoPEYZA1PeESgWjTs9PXLY98OHz6TNNe0kidgtNOk+rGCcgl3FYZPdKeUGE
         k23nRZTt8LuaYEw/OB6hNcc4xz6ywOAuCPpK2YOLVA+nGO0ZwDQmRawZKDETq6kBQvMa
         IpsPQjMAHxs/4kfK19uudH+L7eKmqGu2rk8UNYF3hSvg4OTsUR+5c1JnqH3XV4nP7FOe
         5v5yMPCk0H1vwtpCJS/VlE1zuFcqo9/qOo3AmGGHT/cTtuOTQ4pjWSOTbyCKjlifDym7
         3Lq2g8pliXAIL1BHFU9DR+pkxgjQq7/PBxdzP1NrqLT44zBMckk9o2wovpJJi+oQY9xh
         qKWw==
X-Gm-Message-State: AOJu0Ywplnhj56y3Zt0o50K59cPlxgPBORkQgdwbWOE+QVraxD0F/5X2
	C1o4i8CjnqZyOXmNZWXD9fmSQm6Zylds5COWt6NcxkYmx41s0Q==
X-Google-Smtp-Source: AGHT+IGYwc0Z+OoYf9gRchldd/zsmaHTh6H9KXhOhxmqlpWrivpDtIVb/VUOzOZS102/op8wl0KG+/+jH0xvkr0nyTc=
X-Received: by 2002:a05:651c:b27:b0:2cd:171c:1f42 with SMTP id
 b39-20020a05651c0b2700b002cd171c1f42mr837495ljr.2.1704317980590; Wed, 03 Jan
 2024 13:39:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220-iio-backend-v4-0-998e9148b692@analog.com> <20231220-iio-backend-v4-4-998e9148b692@analog.com>
In-Reply-To: <20231220-iio-backend-v4-4-998e9148b692@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 3 Jan 2024 15:39:29 -0600
Message-ID: <CAMknhBHqnQoEMoaFQxp5Us+X7bs7G2J2QTNZwguPmJ7XwEHe0Q@mail.gmail.com>
Subject: Re: [PATCH v4 4/8] of: property: add device link support for io-backends
To: Nuno Sa <nuno.sa@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Olivier Moysan <olivier.moysan@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 20, 2023 at 9:32=E2=80=AFAM Nuno Sa <nuno.sa@analog.com> wrote:
>
> From: Olivier Moysan <olivier.moysan@foss.st.com>
>
> Add support for creating device links out of more DT properties.
>
> Signed-off-by: Olivier Moysan <olivier.moysan@foss.st.com>
> Signed-off-by: Nuno Sa <nuno.sa@analog.com>
> ---
>  drivers/of/property.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index afdaefbd03f6..a4835447759f 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1244,6 +1244,7 @@ DEFINE_SIMPLE_PROP(interconnects, "interconnects", =
"#interconnect-cells")
>  DEFINE_SIMPLE_PROP(iommus, "iommus", "#iommu-cells")
>  DEFINE_SIMPLE_PROP(mboxes, "mboxes", "#mbox-cells")
>  DEFINE_SIMPLE_PROP(io_channels, "io-channel", "#io-channel-cells")
> +DEFINE_SIMPLE_PROP(io_backends, "io-backends", NULL)

In v3 it was agreed that adding #io-backend-cells right way seemed
like a good idea. Do we need to include that here?

>  DEFINE_SIMPLE_PROP(interrupt_parent, "interrupt-parent", NULL)
>  DEFINE_SIMPLE_PROP(dmas, "dmas", "#dma-cells")
>  DEFINE_SIMPLE_PROP(power_domains, "power-domains", "#power-domain-cells"=
)
> @@ -1334,6 +1335,7 @@ static const struct supplier_bindings of_supplier_b=
indings[] =3D {
>         { .parse_prop =3D parse_iommu_maps, .optional =3D true, },
>         { .parse_prop =3D parse_mboxes, },
>         { .parse_prop =3D parse_io_channels, },
> +       { .parse_prop =3D parse_io_backends, },
>         { .parse_prop =3D parse_interrupt_parent, },
>         { .parse_prop =3D parse_dmas, .optional =3D true, },
>         { .parse_prop =3D parse_power_domains, },
>
> --
> 2.43.0
>
>

