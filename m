Return-Path: <devicetree+bounces-222511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C2370BA9C42
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 17:14:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B62E1921558
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:15:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B38B73093BF;
	Mon, 29 Sep 2025 15:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ui7o87NV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DD922FAC12
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 15:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759158874; cv=none; b=TA46Zt/tuwPZzkRDz9EmDT0kASUUTcRo8PexmJpgqdeRUUwPqFwkSqzKTV82sd+fN0O7MIc828PyzeI8EOf9saR++DOQLQKj/SXYgBj7QLADqE5dz1N5qYB0DKkfWGMqzXaOymIWgBfkWh3Kafqs18dsHcuuiS2Vz1lUMcWxpyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759158874; c=relaxed/simple;
	bh=iBlCQ9KvyCeCkRu9ZLjuA246/L+TzryyOmffdoYiQyc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q/IMauhs3gwiUbeub+ncrgxG05xuIbLGHtep0Ta1re9t6i296pi/JNNUjCDSAsY3/9nsg4qMIYjC2hN3kQOHgRp+XtkBAK+AlhF/KI4vxg3DU5tCcgtM5NUQLRr/VobsLpBBtZEg571kmHKvv95jgEdXTLRez21qOZwkxv+FK3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ui7o87NV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2969FC4CEF7
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 15:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759158874;
	bh=iBlCQ9KvyCeCkRu9ZLjuA246/L+TzryyOmffdoYiQyc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ui7o87NVNFm12QGuE7Bd8xChnmEQOj/TZto2q04N4b6VpLSvQjJSoXigSO7nQUsIC
	 30wHg2wZdrzNGlqMb87th5LRnn8BRUMn4E1av/XIIm6S3hUMjyvfPHOyACWgHgYPmq
	 8EHhHUI42AMQHLyTL1G21S5TflHr0L7FzMCq9ACazaZfhz/oUMXpCKjQriUwkPTqwy
	 YMneEzsPadiVpprHrFoPR4B2KFSkZaOV7472XvSmvnc7dUVzpUTrKr6eKbLKWbQa38
	 W9P4yW8yZeXNeVMuH2FKvIwCtRBYETrv19J55K2RY+D6rG/uL8bUQQB4uaDFc3l7zN
	 EIEWnP03SPETw==
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-634a3327ff7so8755153a12.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 08:14:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUA9RW3M2AI0GshpL7zm6XIr1Qrkwk4DcyLBXNGi5/S0o/cQQvEp2BQlPbKZ3/dgTgCAQ+vBR7jbpiM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4l9r30KOx+UMI87kave0K1R7K4buWq7OTfD0fi6bn2XVGrI/X
	edp3RA/VN3DbPcEZXwYLrzAaP0W/XwV24G/oqrW0AQzu/5sYfk6qWaa6HDGmO/xC7yeYFUnmTM/
	+V/aA2/vGCdxAV4RprPjmgPk6KHOkZw==
X-Google-Smtp-Source: AGHT+IGe34FYZ1xtizAF3ivFL6run1i1iMMxSE0ue9AhqSYZ1xftvh4ImQ04CR1Xrylrlu0u1yZcLoK+lVTV3QkMcKQ=
X-Received: by 2002:a05:6402:2110:b0:634:bdde:d180 with SMTP id
 4fb4d7f45d1cf-634bdded443mr11982998a12.10.1759158872767; Mon, 29 Sep 2025
 08:14:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929034713.22867-1-make24@iscas.ac.cn>
In-Reply-To: <20250929034713.22867-1-make24@iscas.ac.cn>
From: Rob Herring <robh@kernel.org>
Date: Mon, 29 Sep 2025 10:14:21 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJBcKf-EMAYvnXJDB4izoyk9s-8SUn4CAUm3qatd6Yrzg@mail.gmail.com>
X-Gm-Features: AS18NWBGeBBMrQO99aSRsWimi6qqH0KBvbFEBF3rU43MfzL2hTz_QEwQwDH9zTQ
Message-ID: <CAL_JsqJBcKf-EMAYvnXJDB4izoyk9s-8SUn4CAUm3qatd6Yrzg@mail.gmail.com>
Subject: Re: [PATCH RESEND] of: unittest: Fix device reference count leak in of_unittest_pci_node_verify
To: Ma Ke <make24@iscas.ac.cn>
Cc: saravanak@google.com, lizhi.hou@amd.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, akpm@linux-foundation.org, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 28, 2025 at 10:47=E2=80=AFPM Ma Ke <make24@iscas.ac.cn> wrote:
>
> In of_unittest_pci_node_verify(), when the add parameter is false,
> device_find_any_child() obtains a reference to a child device. This
> function implicitly calls get_device() to increment the device's
> reference count before returning the pointer. However, the caller
> fails to properly release this reference by calling put_device(),
> leading to a device reference count leak.
>
> As the comment of device_find_any_child states: "NOTE: you will need
> to drop the reference with put_device() after use".

Please implement my review comments on the last version you sent.

>
> Cc: stable@vger.kernel.org
> Fixes: 26409dd04589 ("of: unittest: Add pci_dt_testdrv pci driver")
> Signed-off-by: Ma Ke <make24@iscas.ac.cn>
> ---
>  drivers/of/unittest.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
> index e3503ec20f6c..d225e73781fe 100644
> --- a/drivers/of/unittest.c
> +++ b/drivers/of/unittest.c
> @@ -4271,7 +4271,7 @@ static struct platform_driver unittest_pci_driver =
=3D {
>  static int of_unittest_pci_node_verify(struct pci_dev *pdev, bool add)
>  {
>         struct device_node *pnp, *np =3D NULL;
> -       struct device *child_dev;
> +       struct device *child_dev =3D NULL;
>         char *path =3D NULL;
>         const __be32 *reg;
>         int rc =3D 0;
> @@ -4306,6 +4306,8 @@ static int of_unittest_pci_node_verify(struct pci_d=
ev *pdev, bool add)
>         kfree(path);
>         if (np)
>                 of_node_put(np);
> +       if (child_dev)
> +               put_device(child_dev);
>
>         return rc;
>  }
> --
> 2.17.1
>

