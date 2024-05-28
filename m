Return-Path: <devicetree+bounces-70015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5F18D226F
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 19:25:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44A9A282516
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 17:25:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57F3217556F;
	Tue, 28 May 2024 17:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="HGUOH8TK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89227D07D
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 17:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716917088; cv=none; b=bRDg6kmQH0pkUmyNaGyULVN1jc92wriuG3N2ySKTA4bWZzf8llkHVCqUJezdtTSx5baiNwDo314rZ5tKbiJB1JroYG9pQi3/dGhxBdnBqEIKJgHWyhax6aw5f+FLgbNBOgE86OHWaAOc3y5ZLx8Seryzd/uY6rEUHTAbmVOEM/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716917088; c=relaxed/simple;
	bh=BYOBM/Qgb1pPbXOKQyDM68LLkkFSrrz6a8nkyDmMy/U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JQO1ThmU6Qg8T6+HbrVJPusSlTQHpbr2L0tre5898NGr8hstZ010CeCfwk3JIM/mIPNKpggDPpXyDAlmMa5j7YGyRrBjh2Fyjiu4OlVcEpEhBx+h4HUamZe32jNlWKCrbS6L3QOWyvBw+NWmRLDqND35KQXu66qAAKLrEvDfPAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=HGUOH8TK; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-43dfa9a98d2so8681cf.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 10:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1716917085; x=1717521885; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s/zJPbXyQmRdniGVZf4TSPPBc/ZwEN1OkaaD+bjWerY=;
        b=HGUOH8TKgMETbqRvcrd8gq1AjAgS0TLYGukfllplzgE7Yy9RJyucWjruOvAgSmy4UB
         UnfheKuEpRUs8dourh7NaHkCVqF/b5UdLVlEpGdjPjOY5NtNvK7krDmwpqKrx92qTcQp
         Mprfmy9JVpQPfs/lkdaTPJokWxYD6d634KvzRi0ffL2mYus7+KOzX78LRyn76B62ea09
         MSScK8CU8o8NU0Vppb2jAWQAZnKVHf3zEU3vXgknWudvvPvU2enkf48Amy2bHbjg6/oA
         0XiRSszGUAY0rH7twI/PcqI4uKfmyZxToAF+MoxsHVBycOH84ktWUop+2di0ajQ6u52C
         1wlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716917085; x=1717521885;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s/zJPbXyQmRdniGVZf4TSPPBc/ZwEN1OkaaD+bjWerY=;
        b=biYzz65GewErrDlaxm1CZvdGGj7de8Brn+3kEjKZBwMP3jKD5685nzjSKOWqCZmYp7
         cVne6cDuNfEaj9CcFzoUHzZemBBS8IWVT48M/TWnjsIvvFZDAmg74R/HgBtX/opfjkdN
         WesZqq+fcKOx5sWHRLyVawpyfRXqQIgg8AMzgIS6RtLD5PAzkP/dZcj93qF4L/4rnj6o
         DxWx2O65Cx6KYwQzHMeWhY9lF2nqCzluGUO5F7Pwhd15ICcB0ZgUeKeIxDWeqHISdgBo
         Q0oKlnizgYrxKcBSLNvD/StVdf6Q9CWWQGKVDhAZqLESghkTHjv/4vYvUuzH5sEEAnQk
         9daw==
X-Gm-Message-State: AOJu0YxSRjRlwYoPeBvwrhqyc74JDjCA0VsI8pqMpFNJch62aL+3AJzn
	ZOiqpqYjdKZpxdSnuP8zCIHKnaVstXAkqQP5c7+VWjnz217a104ny0gxH3hAHy9xVAfZNgigJOt
	ap1XArp4W1EZIK/uJwFPFWNT3hJ3ADJ1lT1np63KXm7wjoXPctNifyi0=
X-Google-Smtp-Source: AGHT+IHOOURY6/R8zKLRs0+9b0KCEvabYkkR5HlqFkHzn0eIA34VYFPXTS30jDv55131zHsyX8c1BLRfOrGstkj0xBk=
X-Received: by 2002:a05:622a:400d:b0:43f:b1dd:11fc with SMTP id
 d75a77b69052e-43fb9f9ac98mr7220561cf.18.1716917084620; Tue, 28 May 2024
 10:24:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240528164132.2451685-1-maz@kernel.org>
In-Reply-To: <20240528164132.2451685-1-maz@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 28 May 2024 19:23:39 +0200
Message-ID: <CAGETcx-ZbK3P+CoPb1szjWNBbM7kN0j_p6QzT4iqPrYHqvWjRw@mail.gmail.com>
Subject: Re: [PATCH] of: property: Fix fw_devlink handling of interrupt-map
To: Marc Zyngier <maz@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-riscv@lists.infradead.org, 
	Anup Patel <apatel@ventanamicro.com>, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 28, 2024 at 6:41=E2=80=AFPM Marc Zyngier <maz@kernel.org> wrote=
:
>
> Commit d976c6f4b32c ("of: property: Add fw_devlink support for
> interrupt-map property") tried to do what it says on the tin,
> but failed on a couple of points:
>
> - it confuses bytes and cells. Not a huge deal, except when it
>   comes to pointer arithmetic
>
> - it doesn't really handle anything but interrupt-maps that have
>   their parent #address-cells set to 0
>
> The combinations of the two leads to some serious fun on my M1
> box, with plenty of WARN-ON() firing all over the shop, and
> amusing values being generated for interrupt specifiers.
>
> Address both issues so that I can boot my machines again.
>
> Fixes: d976c6f4b32c ("of: property: Add fw_devlink support for interrupt-=
map property")
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Cc: Anup Patel <apatel@ventanamicro.com>
> Cc: Saravana Kannan <saravanak@google.com>
> Cc: Rob Herring (Arm) <robh@kernel.org>
> ---
>  drivers/of/property.c | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 1c83e68f805b..9adebc63bea9 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1322,7 +1322,13 @@ static struct device_node *parse_interrupt_map(str=
uct device_node *np,
>         addrcells =3D of_bus_n_addr_cells(np);
>
>         imap =3D of_get_property(np, "interrupt-map", &imaplen);
> -       if (!imap || imaplen <=3D (addrcells + intcells))
> +       imaplen /=3D sizeof(*imap);
> +
> +       /*
> +        * Check that we have enough runway for the child unit interrupt
> +        * specifier and a phandle. That's the bare minimum we can expect=
.
> +        */
> +       if (!imap || imaplen <=3D (addrcells + intcells + 1))
>                 return NULL;
>         imap_end =3D imap + imaplen;
>
> @@ -1346,8 +1352,14 @@ static struct device_node *parse_interrupt_map(str=
uct device_node *np,
>                 if (!index)
>                         return sup_args.np;
>
> -               of_node_put(sup_args.np);
> +               /*
> +                * Account for the full parent unit interrupt specifier
> +                * (address cells, interrupt cells, and phandle).
> +                */
> +               imap +=3D of_bus_n_addr_cells(sup_args.np);
>                 imap +=3D sup_args.args_count + 1;
> +
> +               of_node_put(sup_args.np);
>                 index--;
>         }
>

Thanks Marc! And sorry for not catching this in my earlier review!

Acked-by: Saravana Kannan <saravanak@google.com>

-Saravana

