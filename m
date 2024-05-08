Return-Path: <devicetree+bounces-65865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A840F8C05F9
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 22:55:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5ED25284BB9
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 20:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E00413175F;
	Wed,  8 May 2024 20:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="oESE5R00"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1592D21373
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 20:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715201731; cv=none; b=V9oxJQAPqTSrgtETPBKk3DUXzofMIDSPiug0IcXoiTVwXs3MgJlvtfdijjvD68RYh2Gfu472iOEvHpagB42SLBXKph0VEx9FR1Npkcb6BStpcaaxdrq38LOLyKI195ZdNETk8j0D51xhs5MNyZBIS5gebP9E/t63dXcQPgC0aJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715201731; c=relaxed/simple;
	bh=BssU/i1TLIxvVFBnO/w6iyGwTfcoTX3S6mLZtu3Qp+Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PKat5uhSyD6IYKX27VAXy2uh+WrtUhiBAodLe1Ti/aVDZsJgBYMAC/UPNiiHT/Vqv5IjGbYI8Dqsx60LUNb6uxQp3YwhjQp+0KP4IEYD62Au7EDwf2l7eP385A+gCw/jSELDbdofr7SwRNHgbzESn/dv/UadbbtfPHCcZJBESjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=oESE5R00; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-439b1c72676so38201cf.1
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 13:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1715201728; x=1715806528; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/9cCFRumEUZXr872nsxQhcwfTBKNt7qNhphTqHRAp1M=;
        b=oESE5R000q6T5m7cc2HfiJWPyooG9bR6RCrBPtV0s6FRHamjv6gGSO2RXBRRure2Xb
         98CDvqVd8zpQzX98eKUZEwxwqp4Lhm9L8c7z2YVnzYtqKw6u9YRVfyhow1/42/xi2raC
         XCxLDjTaYR+3vxIBZWUPVgFFX5mxG0FFdmlE+D16LfvIFxIkB5Zh8ViwMUu7aDyvYVUl
         ejajMfDZupmwAhahCpPDnkgSbKxB8NEhwIz7ask3DewiPstlZG9yKhcpzGtwb4Mvn/k7
         x0pnMVcVXHW6Y3Wp0eGJk8HlAqUdE0q7tjHcDVYI3IwJP5rNx3tsNy14wsmU1v2QUuj7
         rrnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715201728; x=1715806528;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/9cCFRumEUZXr872nsxQhcwfTBKNt7qNhphTqHRAp1M=;
        b=fMLYS+qqiuz4CbNBo+SLQrlrScZVmI/ruuS95F+FQ8OME22Vkf6QReGc6Og/poMSX7
         cMjWMmi87Sn65mDasDUGZKxTpRI/bDIDC/LyVTp8d+XqQhu0XDle5ncBnwyAtuf2e/1g
         lQIRBkUu56wq9673r3ViTycvCUnddFdZ2rt6IBp7Fx6/zXMNlj4qfytrM3dwyz+S7ASt
         RfVhPkEl7qZpDv1ukpa4gwRt0zJ4aHqVPgfsTLQkp0qbO9HLLbr4jjSfxz0p+Zefjxyb
         DauSC5VQ1x1K8zubc0juyRj9Fiv35ku/+jzD4QgpgV1DGcfVa0sgvdOlZS3T+vFvwElY
         PC3g==
X-Forwarded-Encrypted: i=1; AJvYcCW/RznkJePVw2kfxEnH4qWAGoH/Ch1JVPD/i7eNQK4mMCwfhYOwzx5k7wEt7Rp4VTLbhdbVmDyEqumglBmIuyPF/xw81zWhIQJRrw==
X-Gm-Message-State: AOJu0YxAOSk8kbtcCsRUCOcxNRwj8zeUK1kX0U+uAMf1JTyf/XY4Kuik
	K+Ech+R5h09HQJIgYw2rKu2j/7vjoCD+Qf1XIJ113keB0Sxccp0c9+h9qEqqyvkfyfCSrnZV0HW
	+neVS35c/zpG+CiER6KrxHhbaOEtx5Y7z97C0zeiwy20/vTRJrQ==
X-Google-Smtp-Source: AGHT+IHnzHng5HPCtzW2YQxVbhXNmbYaa2vf+AuPNt99IlQUhDdxEePQbrydQQyRYb5fnsUFEZ6a0RiX6W43XX8Iaqw=
X-Received: by 2002:a05:622a:608a:b0:439:d5e3:1f31 with SMTP id
 d75a77b69052e-43def5aa252mr772661cf.4.1715201727807; Wed, 08 May 2024
 13:55:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240430040822.1133339-1-apatel@ventanamicro.com>
In-Reply-To: <20240430040822.1133339-1-apatel@ventanamicro.com>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 8 May 2024 13:54:48 -0700
Message-ID: <CAGETcx8C81OAfpTVBqk1yRdcwFG5v7v0PWVF6Udg2gPK0vH9dQ@mail.gmail.com>
Subject: Re: [PATCH v3] of: property: Add fw_devlink support for interrupt-map property
To: Anup Patel <apatel@ventanamicro.com>
Cc: Rob Herring <robh@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Atish Patra <atishp@atishpatra.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 29, 2024 at 9:08=E2=80=AFPM Anup Patel <apatel@ventanamicro.com=
> wrote:
>
> Some of the PCI controllers (such as generic PCI host controller)
> use "interrupt-map" DT property to describe the mapping between
> PCI endpoints and PCI interrupt pins. This the only case where
> the interrupts are not described in DT.
>
> Currently, there is no fw_devlink created based on "interrupt-map"
> DT property so interrupt controller is not guaranteed to be probed
> before PCI host controller. This affects every platform where both
> PCI host controller and interrupt controllers are probed as regular
> platform devices.
>
> This creates fw_devlink between consumers (PCI host controller) and
> supplier (interrupt controller) based on "interrupt-map" DT property.
>
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
> Changes since v2:
> - No need for a loop to find #interrupt-cells property value
> - Fix node de-reference leak when index is greater than number
>   of entries in interrupt-map property
> Changes since v1:
> - Updated commit description based on Rob's suggestion
> - Use of_irq_parse_raw() for parsing interrupt-map DT property
> ---
>  drivers/of/property.c | 50 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index a6358ee99b74..7326ca07adfe 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1311,6 +1311,55 @@ static struct device_node *parse_interrupts(struct=
 device_node *np,
>         return of_irq_parse_one(np, index, &sup_args) ? NULL : sup_args.n=
p;
>  }
>
> +static struct device_node *parse_interrupt_map(struct device_node *np,
> +                                              const char *prop_name, int=
 index)
> +{
> +       const __be32 *imap, *imap_end, *addr;
> +       struct of_phandle_args sup_args;
> +       u32 addrcells, intcells;
> +       int i, imaplen;
> +
> +       if (!IS_ENABLED(CONFIG_OF_IRQ))
> +               return NULL;
> +
> +       if (strcmp(prop_name, "interrupt-map"))
> +               return NULL;
> +
> +       if (of_property_read_u32(np, "#interrupt-cells", &intcells))
> +               return NULL;
> +       addrcells =3D of_bus_n_addr_cells(np);
> +
> +       imap =3D of_get_property(np, "interrupt-map", &imaplen);
> +       if (!imap || imaplen <=3D (addrcells + intcells))
> +               return NULL;
> +       imap_end =3D imap + imaplen;
> +
> +       sup_args.np =3D NULL;
> +       while (imap < imap_end) {
> +               addr =3D imap;
> +               imap +=3D addrcells;
> +
> +               sup_args.np =3D np;
> +               sup_args.args_count =3D intcells;
> +               for (i =3D 0; i < intcells; i++)
> +                       sup_args.args[i] =3D be32_to_cpu(imap[i]);
> +               imap +=3D intcells;
> +
> +               if (of_irq_parse_raw(addr, &sup_args))
Can you leave a comment above this call saying of_irq_parse_raw()
updates sup_args.np? It's really a problem with the function IMO, but
a comment here would be helpful.

> +                       return NULL;
> +
> +               if (!index)
> +                       return sup_args.np;
> +
> +               of_node_put(sup_args.np);
> +               sup_args.np =3D NULL;

Why do you need to set it to NULL? Can we just delete this line?

If you take care of these minor comments, then

Reviewed-by: Saravana Kannan <saravanak@google.com>

-Saravana

> +               imap +=3D sup_args.args_count + 1;
> +               index--;
> +       }
> +
> +       return NULL;
> +}
> +
>  static struct device_node *parse_remote_endpoint(struct device_node *np,
>                                                  const char *prop_name,
>                                                  int index)
> @@ -1359,6 +1408,7 @@ static const struct supplier_bindings of_supplier_b=
indings[] =3D {
>         { .parse_prop =3D parse_msi_parent, },
>         { .parse_prop =3D parse_gpio_compat, },
>         { .parse_prop =3D parse_interrupts, },
> +       { .parse_prop =3D parse_interrupt_map, },
>         { .parse_prop =3D parse_regulators, },
>         { .parse_prop =3D parse_gpio, },
>         { .parse_prop =3D parse_gpios, },
> --
> 2.34.1
>

