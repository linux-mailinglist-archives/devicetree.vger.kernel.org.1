Return-Path: <devicetree+bounces-48903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B9A874214
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 22:36:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD0241C22432
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 21:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E280C1B286;
	Wed,  6 Mar 2024 21:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="zCzyRXE1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A431B7F6
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 21:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709760973; cv=none; b=O9A1aTre5is+WP2MrxVBhokk7VtD7FLcQFUpwwCHacqNWKa/NSRVIDTTY+NuCs6ttR7Agb4l3MpSGPxawislK/UanKNmQb7hoho+1wzOXCgClgYwbgI35S7R35BWYUmY9twdz2d33WyW7uW1jATSXvv3D7xAKXXo0VIpZ0KhCVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709760973; c=relaxed/simple;
	bh=YlaGW5DIfQikcv1Ey1OaeroVdJnLORWMXlwJte/PfRc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E0n/ZwbXQY+6jjCQ+vYH1BzW1pQo/GWdM3U5dLzkZh00TX5bUXjgQc1EuvHTmG9HAC6VjBbKtGQ14N++HHgdDe3d5o0XwOgNZR4JlqJ+NUdKikAv8nQkHkiCyOlUOBZyCiyJFM43odpOUpb2GKX6XHIX8U5jY3do+H5Se+r2PlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=zCzyRXE1; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-428405a0205so16641cf.1
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 13:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709760971; x=1710365771; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PuRty+lhYaNXcOtehTNWQ8+EoEDd7pkrwovTsDUb2fg=;
        b=zCzyRXE1Zr7e75wrVh48ChI+p1UJOMsk9luj9Tyz+QO/gUDqTZfG0an1k0tQw3ntgI
         xj/Fj/1VpxCFslkqhmUY521Xs1CeslrMW51VNH3JuJju3saRWa+iArhICPb8PO13FTe8
         KM4VENUeaG2kaS49iB4yH4yY3OySGQs/3mA8sNnURBMTS7SqNnvf+dhEvl4cNJ5Fduqy
         XN4VdWB3/WiyN3I4D4Hd+3pSX6BsW9Wtva35sk76483Yob2ekAEbPV6MvFPs3js2Jwul
         8wODDKlThoDfOckOxB+l0h/3VVZw7QktB9CNhSRL6byZyb2KyBf/YTZdEmllJdZQufGp
         XeBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709760971; x=1710365771;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PuRty+lhYaNXcOtehTNWQ8+EoEDd7pkrwovTsDUb2fg=;
        b=OJE22evfhhSS0/ETUiYhwm5gsQX7ehpY38QFK+3Hfve2xbSvoLD1/1K85xq0fcyHH0
         lGbAFUJy/f0C0SkpmDCN0nZA3p/6R2PspdbjJJ69XePOQopeaUo98UbP4PGBu5K9GvgT
         KWG95vtQ3vHkn0a3vpB+AyiBqIxVyh85+cE78+ObfuLBqk5lVD0tFQHefV/2uxD2OTYo
         NBTGrw2dffxQNJuFx7tpW7DpgNPb+Ay8fe+smSOcUxTGIxKGP14dP21VsxKmHcmDqNK1
         19NeRu/Bq+aChnFWTRuJW2Tpe/TtJ/ssxyiEJy9bEuIcr3rYPaAFIMFivn1rxYVimcSR
         uavA==
X-Forwarded-Encrypted: i=1; AJvYcCUaxW208HNR+jpNMsa9+jXjJaaQuDjEMdsnxW2b8jzufNfncNLo0W2c6tkzVBKabPxurrobQ35+r/lv96O1I0y2bF9jReWKZczDOw==
X-Gm-Message-State: AOJu0YwL9AVtB7RPNiTBaZu/2sRHQiestCTtm/0TdVY++VwC/lRbwO+f
	/5g+6J2PhZtD9l7mLGeitOOtpzW9UTAgbdbfGk0KQYd6XCgxW+Pwxpfs21joAMohvRGvzhZ4DEe
	AWYUkbn1OM7Z15O8G6F1Y8eIkV4yI4ZNu5a7l
X-Google-Smtp-Source: AGHT+IHlc4s/s/55ElUaUz3cVLVdAQgf0cVgD2Lgnr2hgoE30sFPrSs46+Kf7Q5rU7kI/xgLWqRerx7iktLxcbQX/no=
X-Received: by 2002:ac8:5f4c:0:b0:42f:a3c:2d51 with SMTP id
 y12-20020ac85f4c000000b0042f0a3c2d51mr132826qta.18.1709760970984; Wed, 06 Mar
 2024 13:36:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240306085007.169771-1-herve.codina@bootlin.com> <20240306085007.169771-3-herve.codina@bootlin.com>
In-Reply-To: <20240306085007.169771-3-herve.codina@bootlin.com>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 6 Mar 2024 13:35:31 -0800
Message-ID: <CAGETcx9RFS7Z61FeCYXMxRSDXnMYhg_y96dgtbHp-3t_9x8+SA@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] of: dynamic: Synchronize of_changeset_destroy()
 with the devlink removals
To: Herve Codina <herve.codina@bootlin.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Lizhi Hou <lizhi.hou@amd.com>, Max Zhen <max.zhen@amd.com>, 
	Sonal Santan <sonal.santan@amd.com>, Stefano Stabellini <stefano.stabellini@xilinx.com>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Allan Nielsen <allan.nielsen@microchip.com>, 
	Horatiu Vultur <horatiu.vultur@microchip.com>, 
	Steen Hegelund <steen.hegelund@microchip.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Nuno Sa <nuno.sa@analog.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 6, 2024 at 12:51=E2=80=AFAM Herve Codina <herve.codina@bootlin.=
com> wrote:
>
> In the following sequence:
>   1) of_platform_depopulate()
>   2) of_overlay_remove()
>
> During the step 1, devices are destroyed and devlinks are removed.
> During the step 2, OF nodes are destroyed but
> __of_changeset_entry_destroy() can raise warnings related to missing
> of_node_put():
>   ERROR: memory leak, expected refcount 1 instead of 2 ...
>
> Indeed, during the devlink removals performed at step 1, the removal
> itself releasing the device (and the attached of_node) is done by a job
> queued in a workqueue and so, it is done asynchronously with respect to
> function calls.
> When the warning is present, of_node_put() will be called but wrongly
> too late from the workqueue job.
>
> In order to be sure that any ongoing devlink removals are done before
> the of_node destruction, synchronize the of_changeset_destroy() with the
> devlink removals.
>
> Fixes: 80dd33cf72d1 ("drivers: base: Fix device link removal")
> Cc: stable@vger.kernel.org
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  drivers/of/dynamic.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/of/dynamic.c b/drivers/of/dynamic.c
> index 3bf27052832f..169e2a9ae22f 100644
> --- a/drivers/of/dynamic.c
> +++ b/drivers/of/dynamic.c
> @@ -9,6 +9,7 @@
>
>  #define pr_fmt(fmt)    "OF: " fmt
>
> +#include <linux/device.h>
>  #include <linux/of.h>
>  #include <linux/spinlock.h>
>  #include <linux/slab.h>
> @@ -667,6 +668,12 @@ void of_changeset_destroy(struct of_changeset *ocs)
>  {
>         struct of_changeset_entry *ce, *cen;
>
> +       /*
> +        * Wait for any ongoing device link removals before destroying so=
me of
> +        * nodes.
> +        */

Not going to ask you to revise this patch just for this, but this
comment isn't very useful. It's telling what you are doing. Not why.
And the function name is already clear on what you are doing.

Maybe something like this would be better at describing the "why"?
Free free to reword it.

When a device is deleted, the device links to/from it are also queued
for deletion. Until these device links are freed, the devices
themselves aren't freed. If the device being deleted is due to an
overlay change, this device might be holding a reference to a device
node that will be freed. So, wait until all already pending device
links are deleted before freeing a device node. This ensures we don't
free any device node that has a non-zero reference count.

Reviewed-by: Saravana Kannan <saravanak@google.com>

-Saravana

> +       device_link_wait_removal();
> +
>         list_for_each_entry_safe_reverse(ce, cen, &ocs->entries, node)
>                 __of_changeset_entry_destroy(ce);
>  }
> --
> 2.43.0
>

