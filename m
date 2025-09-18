Return-Path: <devicetree+bounces-219079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D27B876A6
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 01:51:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23DB0622B2F
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 23:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C874723D2A1;
	Thu, 18 Sep 2025 23:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SbgXFpzN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8BA13B2A4
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 23:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758239456; cv=none; b=gMqy/yzsAKlAvP9P0G9uPqGy/PDNuWhKtEAkY8UHVHlrHiwZdRfJgUgXkZhIlBy7ZN9eFIfot3oJpGqwxPQdbRaluqDi19skjS5sD5j3BhAyN0EVb+WPp6424HGD00wLPZzhZ/ol8q0QdVev1K6lQH/ex2Bdqu4G0hzFDwRe4uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758239456; c=relaxed/simple;
	bh=d0qikBWOGfbxJYLoS4R9xhwuXRiOgBLIpHJT2Z2Ck6k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WyK2htNJ4QTIXyEIptoHCUIhud6Z3oCDZ0FBTUL+BHiWg6QBushuulXSmWOJraQqUpQwCJWgfgcZ1n79wzRH5q2OujItXejH4r6uYd/4HX3O9R2rXKYT9S/WvTJJQL+tErLwMWBm4/maa4MXwMULahjT4q3cq+377uK44w2122o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SbgXFpzN; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-3357b8aeddaso2332776fac.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 16:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758239454; x=1758844254; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gfjSYheYrlVR0uqLfVkFYD26bK3rG/XlSeZtdEtGwIw=;
        b=SbgXFpzNw4Ic6S3PnC9oIC2OalaUoqNvCpHfK7/II05iY3qjMDND5CsPdaHMSClsmV
         vDe8QEk8q5dGJiZLTH5JFfB7JMze4j54+JWDuW5DH33zOzQ+/rHHPRy43E3LsODUSjdp
         dEP+DFJMUBO6IyCxNO6NhftbRfEWRCapjZzAwlBgrX5IN5+vL1OiAzI8Sijtu4AawOBv
         dATPQjBIFK3y3MBk7JsSzY2H5uZOMHxhSjlETM2nDOFQVwWdYl3LsZ4dK2c9BFLhhdsk
         tHX195/ALG2EO1S0sU8F4JtP8mYsk5bo/2fDMQj4OtP18+w8GMsGtjwitKqnTtLDUK4B
         Cx4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758239454; x=1758844254;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gfjSYheYrlVR0uqLfVkFYD26bK3rG/XlSeZtdEtGwIw=;
        b=FxIfLkjEzfNng3JObZH5cXRGU9WjBLpmnx4BsNtzvwRvsWqUovfN93e0etG0zPcUr3
         fO1NQdtNUQiCPVp6RDnJ9LMVc1MOaIp3SK/HorWTCzem2P1fwH92lACdJgX+TCshLEsj
         suIqjUdRaojlHyE1kKuzrypbw6mJ4BqAQWaoVtb9ZFdmKquWgveg7PbSnCcQbyTn5OOb
         ODEMR0etjg8vNd6TWcA2ATh13qvczKdDaBd3WLQcFQB/VY3m9wg366PebTk8nMzmqr2y
         MnhKQhWXnHYr1gwzr1er4S3K2E09Z1R1o0h3Rt7ynZrMes3+DdpVBUtuBGW5DjF8iGyi
         1GLA==
X-Forwarded-Encrypted: i=1; AJvYcCUD+GkKQ5+FhtAo4vBWwuc2vy2mwnTyNWVclgF7jEzHfKWdc2GITiyaTYfTNuEHCFdmENedEqsGaPU1@vger.kernel.org
X-Gm-Message-State: AOJu0YxVMCEaMndyuGDYRhK6uY4Yy26SvJbJlxqhhKmbmv2uLhEhGmZq
	p6W83lVzAw8tDjdknq0EODljWfohXUondBKI8VX2bpzrpps45b28Nm3Qhw3PKb8zo0+n6kI55Dh
	uxsDfM3dHPfbpCt+2XPxgPbtM37NI+DI=
X-Gm-Gg: ASbGncuA4lofrCjLL1ELWffTd2NPG6kqwZVTuUChvv065344hk8/uc1YJn1WRYtt3Pw
	eeRploXsxWbXa6NC66BFsJ+sPFNJ8c4g4NNty3HIHmb4IxiX4Q7NSF7S+4MHp9PMDnAmFQY6FGL
	MMoTY66saNo3MNksN89OyqXFls/jkU1gh001/oixqRdMR2rGl2AoWUcvEKPu7UQdJDH/pGVxaZH
	e7DRqJhx8bUE2cm7TY/leAyzuQ=
X-Google-Smtp-Source: AGHT+IFl61ezr6lGg9Y8huzd4lUuItQQFeCjeYkcbAulR0oeCohvd0FtJ04m812XYlXTYo+4qdyMj6+Phytv0CLbQXE=
X-Received: by 2002:a05:6870:c151:b0:31d:8964:b4aa with SMTP id
 586e51a60fabf-33bb3ab9686mr861868fac.6.1758239454270; Thu, 18 Sep 2025
 16:50:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250822021217.1598-1-jjian.zhou@mediatek.com> <20250822021217.1598-3-jjian.zhou@mediatek.com>
In-Reply-To: <20250822021217.1598-3-jjian.zhou@mediatek.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Thu, 18 Sep 2025 18:50:42 -0500
X-Gm-Features: AS18NWC4m9av00lwavoKLMq8wYvsb2rbN1xJZakR6WVpJIjFSlMM8j-tfAib_HE
Message-ID: <CABb+yY16DPJwVTHap4F6n5YJoOJzQLtqKiCQ-2MUm67pzF8uXg@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] mailbox: mediatek: Add mtk-vcp-mailbox driver
To: Jjian Zhou <jjian.zhou@mediatek.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Chen-Yu Tsai <wenst@chromium.org>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 21, 2025 at 9:12=E2=80=AFPM Jjian Zhou <jjian.zhou@mediatek.com=
> wrote:

.....

> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/slab.h>
> +
> +struct mtk_vcp_mbox_priv {
Maybe 'mtk_vcp_mbox' is a more appropriate name ?

> +       void __iomem *base;
> +       struct device *dev;
> +       struct mbox_controller mbox;
> +       const struct mtk_vcp_mbox_cfg *cfg;
> +       struct mtk_ipi_info ipi_recv;

Maybe also have "struct mbox_chan chan[1]; " so that you don't have to
allocate one during the probe.
Also if you have  "struct mbox_controller mbox;" as the first member,
you could simply typecast that to get this structure.
Something like "struct mpfs_mbox" in mailbox-mpfs.c

....
> +
> +static struct mbox_chan *mtk_vcp_mbox_xlate(struct mbox_controller *mbox=
,
> +                                           const struct of_phandle_args =
*sp)
> +{
> +       if (sp->args_count)
> +               return NULL;
> +
> +       return mbox->chans;

return &mbox->chans[0]   seems better.

thnx

