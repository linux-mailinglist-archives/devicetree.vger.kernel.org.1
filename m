Return-Path: <devicetree+bounces-44127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E00E85CCCD
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 01:37:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6188D1C2199F
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 00:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 614A310E6;
	Wed, 21 Feb 2024 00:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="enU54dI8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC52263C
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 00:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708475867; cv=none; b=TSpfVDvvS82q803TkgVCkrBviXbakA7sCVjWuLHg+C8aFfxT1nn07TqM9dQgFSxNoePPtd1dG9mzCWPvbIFxrvTdLTrUfwDi6tgqKudzU4Vfd2w7OKNIR5cOyj1DhRNdPl17CMmgdDABEK2iuQlndU+MVRvP6coPV22RJct81I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708475867; c=relaxed/simple;
	bh=sZFujEQGwqvDqo73gOOFOSYl3R48kflkWHxbAaLmpLY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XjICJBWjz1voNX5eo+sEyzbA/xlZqiyr0n+5zBok4GglxRKNUH15kwIEcmET+UvjRcUkoxGpoXb7ciVVGnb/obi5wC2rG6vBgigQeYAhj9LalirgYi5BwlWFm2XuENZDyShOoqIPa/Sim3bPuSqUGCC1e99d5iNxBCfUbUsf0J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=enU54dI8; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-42e2507c6e1so58641cf.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 16:37:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708475864; x=1709080664; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jj0/fVTLPeNEoZzEKQo8XY9MM+vPdpO5v3+GTWMgcVk=;
        b=enU54dI8nRjEFc69xp5FfUwfWTjxnmrmm2whOIlfb+Rnd58KhE8UipqeaPNV6YCGV/
         NftSjHuQQC+5OkftayKehq7n80a8oYcbp7xp3NSkTwya1EFpsTO+lZgg7oIe1cavttY2
         CEI2SypGcoltWfqOjAgnMWymUGuknhg/CJ7/onXSHMZl6ahWzH8D/lCCDldMY0/U/g9S
         WPSh4p4aWrGFd1HP0u2Klk5VuFxwWVrlKkPiR3lJvgHEcFfgMEQYlY5SOvYYb3odbASy
         oo8W0kHlZcNfRZ2zL1Pn8zqLvP1CLrXBxGMz8DV+1/sO715yXQjkr5TKOyrxFFkxl2kg
         Bmjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708475864; x=1709080664;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jj0/fVTLPeNEoZzEKQo8XY9MM+vPdpO5v3+GTWMgcVk=;
        b=UwjBpnxtjDeHkbiU+YzzhtbNrRXP3TV7sgJS7u0nPtX7QaVp6if6Hh+SrPSANJHAVp
         6g1Q4bCAWyV2GPA4ou1owtSXgtFKpopp/hF8grmPrHaupNQbyJ7qPvBAxzSM+J5GQ3gs
         L7d0ZUiRz0fO5bS80HtvQhndXwItJTtMgOX7BPMQeMLR9A+Yqk0ul6C7bXBzIdlEOS/5
         LApVmY1RSo7QP50AKLLplAdTQ7SH7E9UbEcdV70c3DGnh4cVX1eXvARfFei7V07AO6c4
         h8JpBMuEE6mX/+q9i1124w22wj3oeaWzNUxyGqDa4NCdymR0WzrTfwEUR3TnWCkSNfNr
         nL4g==
X-Forwarded-Encrypted: i=1; AJvYcCUkDPc5Y7CJt7MtHRGzI01Q2Ol53CwV1mW3tVyFTM12muwrcdwGPLRfFwwbUgAqXgynie7kfEYDPRSp141EHuaUUQm2ZtX2z+xyJQ==
X-Gm-Message-State: AOJu0YzPP3a/4xtBfgFuMYIMN4/jy6/CXzgPZxeijWu5rpWRhwhrsJvb
	XEvpaSTQXYVmRKRP1ShgMa4wA4shWwKL9OqlrlTxfGOk856pru9NKXWrjSmCJAIyJljXWY/Xe86
	RPRfugsX8wZBxyijDPJo4JfEYv68tKDqFDAZR
X-Google-Smtp-Source: AGHT+IFWKa0zQuyXr2Ec98mgUCaCVoQFWOycN+wSYwpSdidN024ExFMoa9bfjWNDWNzC1er2+areNtPyqyYBg1+PmSo=
X-Received: by 2002:ac8:7643:0:b0:42e:1260:c4e6 with SMTP id
 i3-20020ac87643000000b0042e1260c4e6mr117952qtr.10.1708475864337; Tue, 20 Feb
 2024 16:37:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231130174126.688486-1-herve.codina@bootlin.com> <20231130174126.688486-3-herve.codina@bootlin.com>
In-Reply-To: <20231130174126.688486-3-herve.codina@bootlin.com>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 20 Feb 2024 16:37:05 -0800
Message-ID: <CAGETcx_zB95nyTpi-_kYW_VqnPqMEc8mS9sewSwRNVr0x=7+kA@mail.gmail.com>
Subject: Re: [PATCH 2/2] of: overlay: Synchronize of_overlay_remove() with the
 devlink removals
To: Herve Codina <herve.codina@bootlin.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Lizhi Hou <lizhi.hou@amd.com>, Max Zhen <max.zhen@amd.com>, 
	Sonal Santan <sonal.santan@amd.com>, Stefano Stabellini <stefano.stabellini@xilinx.com>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Allan Nielsen <allan.nielsen@microchip.com>, 
	Horatiu Vultur <horatiu.vultur@microchip.com>, 
	Steen Hegelund <steen.hegelund@microchip.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Nuno Sa <nuno.sa@analog.com>, Android Kernel Team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 30, 2023 at 9:41=E2=80=AFAM Herve Codina <herve.codina@bootlin.=
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
> the of_node destruction, synchronize the of_overlay_remove() with the
> devlink removals.
>

Add Fixes tag for this one too to point to the change that added the workqu=
eue.

Please CC Nuno and Luca in your v2 series.

> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  drivers/of/overlay.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index a9a292d6d59b..5c5f808b163e 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -1202,6 +1202,12 @@ int of_overlay_remove(int *ovcs_id)
>                 goto out;
>         }
>
> +       /*
> +        * Wait for any ongoing device link removals before removing some=
 of
> +        * nodes
> +        */
> +       device_link_wait_removal();
> +

Nuno in his patch[1] had this "wait" happen inside
__of_changeset_entry_destroy(). Which seems to be necessary to not hit
the issue that Luca reported[2] in this patch series. Is there any
problem with doing that?

Luca for some reason did a unlock/lock(of_mutex) in his test patch and
I don't think that's necessary.

Can you move this call to where Nuno did it and see if that works for
all of you?

[1] - https://lore.kernel.org/all/20240205-fix-device-links-overlays-v2-2-5=
344f8c79d57@analog.com/
[2] - https://lore.kernel.org/all/20231220181627.341e8789@booty/

Thank,
Saravana


>         mutex_lock(&of_mutex);
>
>         ovcs =3D idr_find(&ovcs_idr, *ovcs_id);
> --
> 2.42.0
>
>

