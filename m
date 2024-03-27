Return-Path: <devicetree+bounces-53975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2E488F198
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 23:05:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C15C3B236BB
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 22:05:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2B04153807;
	Wed, 27 Mar 2024 22:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="jpEO3IH7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20261152DEA
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 22:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711577101; cv=none; b=P/UHkKpDdikLym7N1wOdfxyXUsHEFgROGzHpN1Uc8quQaGsVtxYw7x9g7cJhmLnqepeXWIlgZeViRTGtOkRgkWQ4vL6K3NWZzXbxD1Gh43nYomZmSl16gBajf97R/u7K4uIkyvuS42S+bxse6CiV4s2bthrYqh52yXTdwAqxHw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711577101; c=relaxed/simple;
	bh=gPMzKze/APBk4x+3lNp5RL2Yfoo33mbd+rjlbOAJCb4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UuI9HG/046HTyJ9idKavPsdOgqWOseCCe9c0Vdn2luJP7GcjZmkjnfXZucRn/ufgsDJ++ltxxSWTnk/uKWcN5+u552MUg7byv7Jtl1u+4paCSqEFSkNURKZ/FWXbKJr33IKEDxm/wU8vkBUk1wgIk+tjQFUa6/vsai46VR0gKeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=jpEO3IH7; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-431347c6c99so55511cf.0
        for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 15:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1711577099; x=1712181899; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iES3vR+RF71KH0u2f16iuD0GOPYt3AXTbujxgdhI3D4=;
        b=jpEO3IH7fZGQWRboRVrRWrQzNxCcI9TK6SkvyOw33yr791od3UUvTdDn796Q/jBPDS
         qxzB6yItyMusIp4/D43dueE6e4OdnTmcemTSk7+nY1jco/JTzk6uLsZqYl4Jwv3qNlcC
         1GmupYStgiQI60VTQEXwYCVd9Kwdvaqo+MhdJpTvFPmdQ+9CvLAr4J2WeMceGWZRb7/t
         ezWAedPyDhTe8h3f2N0JOB+8h20a9j+gfEny1IVDoupJNQjgDm4GvJLJb/0F70F8XFgj
         qWIcztI/ovhVuB5nbKELCunr1MAbmMMs2V6wl9G/P27JXWnz1+4S3AkCDoYb9ntrK/Cz
         MqzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711577099; x=1712181899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iES3vR+RF71KH0u2f16iuD0GOPYt3AXTbujxgdhI3D4=;
        b=mV+KCMACbVMpIIJXNDCau5jWccSQAz8Vdb3l6kPDqNGxdDTLjrf3Sci4D8r5Oe4Bhh
         6W12yTWRmHiq2adaoyCVQoBqdKv3Fp2khfkjgVRcUCjGRv17i51m7XiaGCkFAbe0J+Pu
         Cn0voz+8rpXypQDf/3i3VqK0R9SCgzl1boSdIcO8kxIUVOrms7WU+nscTm/+wisCaKFF
         MlLlZCz+5/NOjXhZs9P7J9xGMNEczdOIqAl/gUYNhO0IwUFGhfSTkoEDX3Nkzx4WSLQb
         v72oE/OBUi77LLk3amkm2TK83cj2qBCAIHbyaxTC/qSoiajDmtv+E855LDfurmtTYpdY
         8COw==
X-Forwarded-Encrypted: i=1; AJvYcCWti0ldNQzxonoMWY9JiZNgsgVR2vJdcmqBxx/SEMc1FJgyu7iS9X4DHWcQfYAsPgLQYMR/VCvTNudctRAwpwNKRCNaM55dfzeJbw==
X-Gm-Message-State: AOJu0YyPrQKD66VelL36iUopSoSBmVrOOvYk98oFGy4igDGQ/vLbi/VP
	YzCYTK1EfS9Rj9UuEGiCSk3xOoC1yQ8zIeIYCAYE2wP6xUw/uKVegAh12Vh77a18qzFJu2O7v7f
	AUwOgfqP/nfNHCw1EzEVPVSqw0copbX30cjZF
X-Google-Smtp-Source: AGHT+IFVZWkwZyaj+h/Pt+o2McDIdhkJp2IiST2pz6/7m6zE0/p4FmwQcax8WxgDe+Xi1gDRlePQR7Z0UWf+P9CDI+k=
X-Received: by 2002:a05:622a:248b:b0:431:542a:38c with SMTP id
 cn11-20020a05622a248b00b00431542a038cmr79665qtb.28.1711577098817; Wed, 27 Mar
 2024 15:04:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1d211023-3923-685b-20f0-f3f90ea56e1f@omp.ru>
In-Reply-To: <1d211023-3923-685b-20f0-f3f90ea56e1f@omp.ru>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 27 Mar 2024 15:04:20 -0700
Message-ID: <CAGETcx9pExt-GiBe8KLiFO1biLF77E5pM2C=LR1R7_NdCPyWOA@mail.gmail.com>
Subject: Re: [PATCH] of: module: prevent NULL pointer dereference in vsnprintf()
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Cc: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	devicetree@vger.kernel.org, lvc-project@linuxtesting.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 27, 2024 at 9:52=E2=80=AFAM Sergey Shtylyov <s.shtylyov@omp.ru>=
 wrote:
>
> In of_modalias(), we can get passed the str and len parameters which woul=
d
> cause a kernel oops in vsnprintf() since it only allows passing a NULL pt=
r
> when the length is also 0. Also, we need to filter out the negative value=
s
> of the len parameter as these will result in a really huge buffer since
> snprintf() takes size_t parameter while ours is ssize_t...
>
> Found by Linux Verification Center (linuxtesting.org) with the Svace stat=
ic
> analysis tool.
>
> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
>
> ---
> The patch is against the for-next branch of Rob Herring's linux-git repo.=
..
>
>  drivers/of/module.c |    8 ++++++++
>  1 file changed, 8 insertions(+)
>
> Index: linux/drivers/of/module.c
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> --- linux.orig/drivers/of/module.c
> +++ linux/drivers/of/module.c
> @@ -16,6 +16,14 @@ ssize_t of_modalias(const struct device_
>         ssize_t csize;
>         ssize_t tsize;
>
> +       /*
> +        * Prevent a kernel oops in vsnprintf() -- it only allows passing=
 a
> +        * NULL ptr when the length is also 0. Also filter out the negati=
ve
> +        * lengths...
> +        */
> +       if ((len > 0 && !str) || len < 0)
> +               return -EINVAL;
> +

Even if vsnprintf() didn't oops, the input doesn't make sense. So, I
think the comment should just say that. Or maybe just delete the
comment since it'd be redundant at that point.

Not a strong opinion.

Acked-by: Saravana Kannan <saravanak@google.com>

-Saravana

>         /* Name & Type */
>         /* %p eats all alphanum characters, so %c must be used here */
>         csize =3D snprintf(str, len, "of:N%pOFn%c%s", np, 'T',

