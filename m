Return-Path: <devicetree+bounces-41511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDCA8541BF
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 04:18:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7F770B2954C
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 03:18:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C8128F40;
	Wed, 14 Feb 2024 03:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="nuv5ZYY9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5273DBA26
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 03:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707880724; cv=none; b=kuAyQYPYqPTQ71H7Z6/PaImdWyu6BrmUxsM/ye7QsjI875OpYqzrY/RNm1Xi1eNlJNCspdt8rVm3bDTPgIfyUFijhM/pyw2yHxe1q0hwdkDx+jtwRjEbF5Zy4SVZJck/E7bcSeEW30gFYS80RibMWlCeBBIuCO3Cgg7ffCocNlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707880724; c=relaxed/simple;
	bh=LMUSDz9e18l6FbQXHJRldHrcYZXtoGgkwQw3jFDcDN8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aTI2Rm7VCtqmX8HjX75CzAHsxdzzZbXE3HbZqzQkFgNla8r6s6+o/8zlutCqGCtjyUK3eB1vnFNQiGGPJM5eriEGXICmjPiXk8des2cjTSrOH2NPDiaNDTphWzAdOKX0a8YX3MTJHtA8UsULEsXoSdf89KkIVBDBMVi/MLrgHtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=nuv5ZYY9; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-42a99dc9085so260691cf.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 19:18:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707880721; x=1708485521; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sCvKWGSZEcrU3I62UsBWqAtToZ+Q/bkHpybmK6GQZiU=;
        b=nuv5ZYY9OcGIULwArTGnsJygl5V4wbS0LzdCD3DBJm4L3nk1Olr+quUTWyY8dcY9VI
         gXzoZmAuZOdPrqherbS7n1LAMboqbSGsKn9AvcajVe8XV2qYE7lHQUx8Lxk9A/mwZwcK
         CtCrhcJSqAxwP7gblo8dl+FOqbDSjpM3xrDl7TWPhB05fB9e1KWaYKwP/R+mI1k+dH6P
         2bo/NLrt6zPUPPkneu1rofx9sxV+y+p0MQSrp9MoCiqKTLfkY32ADgNBW7f6mkTVT5HG
         Jdk/jAjPUno8cgzoz5JfVS+o5TOChdAa9MstEEhCa9GXPo9PmmDYEDqIs/RRHSbs/MaT
         yg1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707880721; x=1708485521;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sCvKWGSZEcrU3I62UsBWqAtToZ+Q/bkHpybmK6GQZiU=;
        b=H9tVDtg0dqsieIeCEmiCgmBZWQwgAAt63qREh71Yo+1LK722MLFGKLCQezxzZJ8MVY
         qfZYFpL4Wph70QNzqneYXLCAjl/OCoGIHZ2aTV71Lq5qDrTzBEuqmhEv9aBXlZ4fwgly
         N5pgPaZIXq4BXwA/pqWxMc1qcG9VBKQJ9+1ko4XZS1EEOdzsQ7DUcsDAp9oVMKn1+cuh
         VD9n+loiQvmUwiJNi7IbGgf5YVdSksggNCJ6PPpAdbKh5KjLqf6AjlwGlWnq22xNrpeg
         PjUeuQH1ND+0p8yg2ObTh6yCiw1ilmtiOF9VhBh5EP1DlQWmJBxakmtQT68OE2jUv615
         m2kQ==
X-Gm-Message-State: AOJu0Yy9bVJhtsLuasaZzyjMpO5j+gMNcJYiKYXdbunm8d7HKuhsAwIK
	6344B23y6mAwNMrMb88IL5Cl1oitvXUImskifO8ATSO2QEHIp0yxjJllr1wuwF+IYrc8kFZLhwI
	UL2zO35a61TlEGD6+TZfdoHjEiqJ23sKZnDfU
X-Google-Smtp-Source: AGHT+IEp+qv5fTphOIfgPXLRE+ClfamHmS/tNOlBEDSEnlU91CYmiW1H+DkSTjWWiWmrKrbLLHofzXQl4CbqVQ+DLpc=
X-Received: by 2002:a05:622a:1882:b0:42c:501c:ed12 with SMTP id
 v2-20020a05622a188200b0042c501ced12mr228524qtc.4.1707880720926; Tue, 13 Feb
 2024 19:18:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123014517.5787-1-mcpratt@pm.me> <20240123014517.5787-2-mcpratt@pm.me>
In-Reply-To: <20240123014517.5787-2-mcpratt@pm.me>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 13 Feb 2024 19:18:03 -0800
Message-ID: <CAGETcx-udSMDLEmwynQMxEnaHb5TR=nD+YJysAx7Jc73UVKdZA@mail.gmail.com>
Subject: Re: [PATCH v1 1/4] driver core: fw_devlink: Use driver to determine
 probe ability
To: Michael Pratt <mcpratt@pm.me>
Cc: devicetree@vger.kernel.org, gregkh@linuxfoundation.org, 
	linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, 
	abel.vesa@linaro.org, alexander.stein@ew.tq-group.com, 
	andriy.shevchenko@linux.intel.com, bigunclemax@gmail.com, brgl@bgdev.pl, 
	colin.foster@in-advantage.com, djrscally@gmail.com, 
	dmitry.baryshkov@linaro.org, festevam@gmail.com, fido_max@inbox.ru, 
	frowand.list@gmail.com, geert@linux-m68k.org, heikki.krogerus@linux.intel.com, 
	kernel@pengutronix.de, linus.walleij@linaro.org, linux@roeck-us.net, 
	luca.weiss@fairphone.com, magnus.damm@gmail.com, martin.kepplinger@puri.sm, 
	miquel.raynal@bootlin.com, rafal@milecki.pl, ansuelsmth@gmail.com, 
	richard@nod.at, sakari.ailus@linux.intel.com, sudeep.holla@arm.com, 
	tglx@linutronix.de, tony@atomide.com, vigneshr@ti.com, dianders@chromium.org, 
	jpb@kernel.org, rafael@kernel.org, 
	Android Kernel Team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Michael,

Thanks for reporting this and being willing to work on a fix.

On Mon, Jan 22, 2024 at 5:46=E2=80=AFPM Michael Pratt <mcpratt@pm.me> wrote=
:
>
> The function __fw_devlink_pickup_dangling_consumers()
> intends to ignore suppliers that are already capable of probing,

fw_devlink isn't trying to figure out if a fwnode is "already capable"
of probing. It's trying to figure out if a fwnode will NEVER probe. If
it's just looking at "right now" or "already capable", it becomes
kinda useless.

> but uses whether or not a bus struct is defined in the device struct.

Because if you don't need a class of devices to probe, you add them to
a "class" not a "bus".

> There are some cases where a firmware child node
> can be address translatable but not able to probe
> (e.g. the use of of_platform_populate() for MTD partitions),
> so whether or not a driver is present is a more accurate way
> to guess whether a fwnode represents a real probing device here.

No, checking for the driver is not a "more accurate way" for the
reasons mentioned above.

> This also serves as a preparation step for further changes
> to fw_devlink including making the contents of this function
> less strict in order to compensate for more cases being passed into
> the rest of the function because the return case is now more strict.

This change itself is a definite Nack, but I'll look at your other
patches to see what you are trying to do.

> "Hey! Who's driving the bus?"

The driver isn't here yet. He'll be here in a while. But at least this
is a mode of transportation and not a football stadium :)

See more below.

> Signed-off-by: Michael Pratt <mcpratt@pm.me>
> ---
>  drivers/base/core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/base/core.c b/drivers/base/core.c
> index 14d46af40f9a..c05a5f6b0641 100644
> --- a/drivers/base/core.c
> +++ b/drivers/base/core.c
> @@ -214,7 +214,7 @@ static void __fwnode_links_move_consumers(struct fwno=
de_handle *from,
>   * @new_sup: fwnode of new supplier
>   *
>   * If the @fwnode has a corresponding struct device and the device suppo=
rts
> - * probing (that is, added to a bus), then we want to let fw_devlink cre=
ate
> + * probing (that is, bound to a driver), then we want to let fw_devlink =
create
>   * MANAGED device links to this device, so leave @fwnode and its descend=
ant's
>   * fwnode links alone.
>   *
> @@ -225,7 +225,7 @@ static void __fw_devlink_pickup_dangling_consumers(st=
ruct fwnode_handle *fwnode,
>  {
>         struct fwnode_handle *child;
>
> -       if (fwnode->dev && fwnode->dev->bus)
> +       if (fwnode->dev && fwnode->dev->driver)

This will completely break fw_devlink when modules are enabled. Which
is where fw_devlink is also very much needed. And if modules are
loaded using udev events, this is guaranteed to break for those cases.
Also, the driver gets set AFTER a device is probed. Not before. So, I
think you are just deleting/incorrectly moving a whole bunch of device
links that would have been created.

A first level sanity test for any fw_devlink change is to take a
sufficiently complicated board/system and then compare the output of
this command before and after your changes:
ls -1 /sys/class/devlink

The diff you see should be exactly what you expect/want to happen. If
there are other unexpected diffs it's generally a bug. I've caught so
many bugs in my changes (before I send them) this way.

Also, if a device is never supposed to probe, it should not be added
to a bus anyway. That's what a "class" is for. It's for a class of
devices. Adding a device to a bus and then never probing it is such a
waste. And this device (at least for nvmem-cells) is never even
referenced -- which is an even bigger waste of memory.

I'd really prefer if someone with nvmem cells experience (hint hint
Michael hint hint :) ) can clean up the framework to not create
devices unnecessarily or at least make it a device that's added to a
class instead of a bus.

-Saravana

