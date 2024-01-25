Return-Path: <devicetree+bounces-34879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CFE83B7C0
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 04:22:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 675DB2820F3
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 03:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4FAA5232;
	Thu, 25 Jan 2024 03:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="1ZX77y/M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F7B5CA1
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 03:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706152928; cv=none; b=Yjpkb8j2420RVceB6jn0Jh62gyY4Ggro7NYpN00F6W7utNimI+RCdUohCeH0cF8OXY1gmkVPqks6T2UxW0CsitgDLN3CrMLqBxeXU3uaO47Kn/5a/Ob9oXWFqAcP1nto6iLqtJS0j7EgZLI9jCF6JUmT8YspWKdugEc6qEn0IY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706152928; c=relaxed/simple;
	bh=LiCnz5yfjUbIXTbMrZV635gof92Fbvakai4S65wjM8w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t2mMGgYYEsYvWpRwBnCg+/Kg61LStmY8G19orlmZnl1uoNMTUeVxdzcBhgiWwPUgzacS7VX96hYjNjZwjzwWkhrgofUM9MnajCLh8C0VnD+DqUpFmV5G6Eu9hib+yNpho3cFVTMgEAJ1yc4/JUgCCtLsflw/ospT6PvfY8tLZo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=1ZX77y/M; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-42a5512e357so103481cf.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 19:22:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1706152926; x=1706757726; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RMLpRoSpoleHd/9oC61iHIQmQ+V3/p+gMHAOWLcCNMQ=;
        b=1ZX77y/MqLVybjbNWNAy4WaWas3fNqJb98GyZTRJZ9qVWU8eCMSfknOXkF6j7lmAEw
         12MVYoavxbBSuOWiHLoHhFwpRRK/XWasBS3wI2xhecMlmO55OjCOZCD4ibvbz+0MpGk7
         RkXGXYvLB7aSX+sQTemmPNaI41Tny4oUhMKOvLmWDQoShB7i6WBjGectNuKXdWzUuDSF
         2fJRnd4XiTuGNx7TQxZJMyYqI8MRMo5vfMF+ufe2iFnrdQuoGxhCeqq9cwy3mlL2gw12
         Vgc2OX/O4LkBFoaAwcElYSuh17yTSfyhV0wA3Nd1hqeMCaKv6wS0M3C1WSxIoA1G3u8V
         FPOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706152926; x=1706757726;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RMLpRoSpoleHd/9oC61iHIQmQ+V3/p+gMHAOWLcCNMQ=;
        b=Oa0OKculEkGASRUlHpYaQSzQH+0/Co9l2l11vfktu3qHspa1Rb9fHZcLAL/XnHiwYq
         6b/0a0sO9/iXt2iV3Ik3ZuwjE+DmR0JMkvfjy1Oyrn6R/U7ujtJImApFU9QgAPXR4zXz
         fsCqsnWQKi9nWMC72z5DJ+jk+pY3NgpvpYmkXg/nUSvAJgcWxFCORyO2PbvVLslAiIFm
         JxrHcJGw74QXcI67jbMEQmUQUynovJhXg4cd95Wx+1iFxHsdDFyEymPXMZvr2ostwNw4
         me/3vnIfdoMnsuDu7RkildrImLPCfFeh5vM5eC7vqR6I0wkU41rtiqJbpusdttcLG4/c
         M/Sg==
X-Gm-Message-State: AOJu0YxMnkE6F173LNP1ZsywG3NTg8pZ9L3b6ouXbQUlyC/EQ79zSiAU
	E5lPhkRT0RpJKLeyWXm8k7cowKj41aO96tWBvC8gVcxpcw83clVmp02CUn5JK+aA21SnUxMmiI6
	jPWCrEklCK3xKcjgZDNDbyPgwC861wxVdFGBD
X-Google-Smtp-Source: AGHT+IFx+IhWteUTaWyPmw4hyj64lJiVWlWQVfgTKutyneH8mdfsnr5twBDbRgiFio963EUYbr5hwPdLfNGjGSsdvaw=
X-Received: by 2002:a05:622a:4a09:b0:42a:12c7:73c6 with SMTP id
 fv9-20020a05622a4a0900b0042a12c773c6mr122291qtb.21.1706152926041; Wed, 24 Jan
 2024 19:22:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123-iio-backend-v7-0-1bff236b8693@analog.com> <20240123-iio-backend-v7-4-1bff236b8693@analog.com>
In-Reply-To: <20240123-iio-backend-v7-4-1bff236b8693@analog.com>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 24 Jan 2024 19:21:29 -0800
Message-ID: <CAGETcx8_0ExTG4ASb9xK-uwmubMFDx44_wUf1h3VsO8w9jJApQ@mail.gmail.com>
Subject: Re: [PATCH v7 4/9] driver: core: allow modifying device_links flags
To: nuno.sa@analog.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Olivier Moysan <olivier.moysan@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 23, 2024 at 7:14=E2=80=AFAM Nuno Sa via B4 Relay
<devnull+nuno.sa.analog.com@kernel.org> wrote:
>
> From: Nuno Sa <nuno.sa@analog.com>
>
> If a device_link is previously created (eg: via
> fw_devlink_create_devlink()) before the supplier + consumer are both
> present and bound to their respective drivers, there's no way to set
> DL_FLAG_AUTOREMOVE_CONSUMER anymore while one can still set
> DL_FLAG_AUTOREMOVE_SUPPLIER. Hence, rework the flags checks to allow
> for DL_FLAG_AUTOREMOVE_CONSUMER in the same way
> DL_FLAG_AUTOREMOVE_SUPPLIER is done.

Curious, why do you want to set DL_FLAG_AUTOREMOVE_CONSUMER?
Especially if fw_devlink already created the link? You are effectively
trying to delete the link fw_devlink created if any of your devices
unbind.

> While at it, make sure that we are never left with
> DL_FLAG_AUTOPROBE_CONSUMER set together with one of
> DL_FLAG_AUTOREMOVE_CONSUMER or DL_FLAG_AUTOREMOVE_SUPPLIER.

fw_devlink sets AUTOPROBE_CONSUMER. So, are you trying to clear it? Why?

I almost want to NACK this, but I'll hear more before I do.

-Saravana

>
> Signed-off-by: Nuno Sa <nuno.sa@analog.com>
> ---
>  drivers/base/core.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/base/core.c b/drivers/base/core.c
> index 14d46af40f9a..ee8a46df28e1 100644
> --- a/drivers/base/core.c
> +++ b/drivers/base/core.c
> @@ -807,11 +807,15 @@ struct device_link *device_link_add(struct device *=
consumer,
>                  * update the existing link to stay around longer.
>                  */
>                 if (flags & DL_FLAG_AUTOREMOVE_SUPPLIER) {
> -                       if (link->flags & DL_FLAG_AUTOREMOVE_CONSUMER) {
> -                               link->flags &=3D ~DL_FLAG_AUTOREMOVE_CONS=
UMER;
> -                               link->flags |=3D DL_FLAG_AUTOREMOVE_SUPPL=
IER;
> -                       }
> -               } else if (!(flags & DL_FLAG_AUTOREMOVE_CONSUMER)) {
> +                       link->flags &=3D ~DL_FLAG_AUTOREMOVE_CONSUMER;
> +                       link->flags &=3D ~DL_FLAG_AUTOPROBE_CONSUMER;
> +                       link->flags |=3D DL_FLAG_AUTOREMOVE_SUPPLIER;
> +
> +               } else if (flags & DL_FLAG_AUTOREMOVE_CONSUMER) {
> +                       link->flags &=3D ~DL_FLAG_AUTOREMOVE_SUPPLIER;
> +                       link->flags &=3D ~DL_FLAG_AUTOPROBE_CONSUMER;
> +                       link->flags |=3D DL_FLAG_AUTOREMOVE_CONSUMER;
> +               } else {
>                         link->flags &=3D ~(DL_FLAG_AUTOREMOVE_CONSUMER |
>                                          DL_FLAG_AUTOREMOVE_SUPPLIER);
>                 }
>
> --
> 2.43.0
>

