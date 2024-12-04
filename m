Return-Path: <devicetree+bounces-126776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 218269E31D4
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 04:08:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED239165169
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 03:08:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4744613D26B;
	Wed,  4 Dec 2024 03:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="uonL6WdM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B78017BA1
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 03:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733281713; cv=none; b=sAnmIsV93aa0zvZ0yYW89iO9KTWROaFBTVLTtxNWhKfXBdCpSrgMEmd4/O4JSlNxT6gSiX1fAg14aX0950+DvRXQGQl1Z1CeD5zqV13PgtAWcfelD7RIhfxS8y7Qw77NPv5MVa9Qx0ZaMu2rsNPeOJkTTdGXhTX/9sRlXOVhPV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733281713; c=relaxed/simple;
	bh=Gx9TKyH/IiOvnCTOYjzUfxu+NCv+Qo0R5Stqwe7J2gA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y9BiqmR0IK8J6fJ8dLAkM8cEBN1FDqowJPr85bRgOmjCkqm2OvqeSHLEmqTzlEuPMGa0JQTYNnMMd0fkk8//b5CG7V77dhoHhVxrPVPsoPNjqpyexnaH8Ah24If905yPZAXXzPbjVJCt9ytxYr5HT+kDM3EIywMhvJdXR100soc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=uonL6WdM; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53df119675dso7678070e87.0
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 19:08:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733281708; x=1733886508; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mVmSqpdGxBu8j7ybmU1Q52YmQ/jiLnXY/vl/nUcqB8I=;
        b=uonL6WdMKR5DDe9CCOYT0hLH+zlwtsXH5gkWmhK003DQ3OyZYpiljl6tLReuBS4y+L
         zvOuGL9SNIGt/oxAYLHELiWM2A03/1X+cqJ38+LVxQ43POMb4Q8mxGu9voO3YTktdfhH
         YLzI1GYj4UgI7DG1RRnJiyub/O3Gv5VBx19yfA60rGqzWYb+r3KTDRN8TpT2Ag+otxai
         pX0v/R81eU89h9E9/V5pUeyZrOuTD74I0Yndh9MfCZgOorI8E1z11FUa3vlz6OT0r1j2
         ByFIE/NrLiul8/N4f6mkhNrgQsC4gUHSSakaKaFxkXTET+/e1YUqQ/Jcfnh2OvGkxhZ/
         QBjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733281708; x=1733886508;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mVmSqpdGxBu8j7ybmU1Q52YmQ/jiLnXY/vl/nUcqB8I=;
        b=Y6RkbJKt34lZmuM8pdc6UhL7JtQzeKqGl4aJE+jVqJ3V8mzqaZfecwb0KfZoZby3BU
         c8j88CUaXT6cl6K4tRuwqRsTMw76ZAdgNPQEZdknN9SbvnrFOD5GQQUBY+UWkOLouQPo
         oETUJpRzKZWIy1eRpdgvX5hujCLjUbXv6BJueG0833H6lIz6aSlnyPAJ9Gfs7J0IM7ib
         VXurom9ulDf+PShKoU7gxfWz/AMdTyhv70e6McbCPN+C4AoN2v7Kt+kwwEVT3l3KUwnE
         mmcfe2WZ/cQOXSIwu8JoQe8jZ2HgnMCaTUoXXhTi0FKDZAa3/RVtDxt3ZklwAGxemiL7
         PSsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXnXxJrOTCW9TzV+LmUrK99B6V6Wc3w1UKPrqywNNCvIlsItnTbl6Jlofopu+JCH8TOCufTvVt8g5tw@vger.kernel.org
X-Gm-Message-State: AOJu0YyHuombaInnqsNBcn77Ko0kDti3FpldJh6hZQnMeHzojaBNowQN
	TswsoX54TRGUJVBi24bNwR4+/KNEB/m7xTrotyuTRJJRYk5IciU1zYAfH/zaLXqBrIeSefKBg5L
	h+kWNbUrd79a6yz0byW0CuRBlVL7Oe7iIBRUs
X-Gm-Gg: ASbGncuNpH8nB/uwYj/m36oI1gnm/+PMUPV+CzGXBeMc3oEXecmAJm5YYW65EqAEZag
	0/lN8opFyclJ0xKkBf+ShIBVIwPXXICZYMAiUYP/Sh203AZdu4UbFDHH0juKK
X-Google-Smtp-Source: AGHT+IFWrPHsG4uBMjv2tdZR6tlXbsKwqe+rRNrv2XPJXAVNi7kJ86S8IWFxXuMskg01ueFLy0zr2v3g9u+L67fH27I=
X-Received: by 2002:a05:6512:148:b0:53e:12d6:8835 with SMTP id
 2adb3069b0e04-53e12d6883dmr2511065e87.46.1733281708120; Tue, 03 Dec 2024
 19:08:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241204000415.2404264-1-swboyd@chromium.org>
In-Reply-To: <20241204000415.2404264-1-swboyd@chromium.org>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 3 Dec 2024 19:07:51 -0800
Message-ID: <CAGETcx8uJF30UvK_4PUu2R+juYa33CXEZrnSLG9nWXN2TPL4wg@mail.gmail.com>
Subject: Re: [PATCH] of: Hide of_default_bus_match_table[]
To: Stephen Boyd <swboyd@chromium.org>
Cc: Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, patches@lists.linux.dev, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 3, 2024 at 4:04=E2=80=AFPM Stephen Boyd <swboyd@chromium.org> w=
rote:
>
> This isn't used outside this file. Hide the array in the C file.
>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>

Acked-by: Saravana Kannan <saravanak@google.com>

> ---
>  drivers/of/platform.c       | 2 +-
>  include/linux/of_platform.h | 2 --
>  2 files changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> index 9bafcff3e628..f09dc183975b 100644
> --- a/drivers/of/platform.c
> +++ b/drivers/of/platform.c
> @@ -24,7 +24,7 @@
>
>  #include "of_private.h"
>
> -const struct of_device_id of_default_bus_match_table[] =3D {
> +static const struct of_device_id of_default_bus_match_table[] =3D {
>         { .compatible =3D "simple-bus", },
>         { .compatible =3D "simple-mfd", },
>         { .compatible =3D "isa", },
> diff --git a/include/linux/of_platform.h b/include/linux/of_platform.h
> index a2ff1ad48f7f..17471ef8e092 100644
> --- a/include/linux/of_platform.h
> +++ b/include/linux/of_platform.h
> @@ -47,8 +47,6 @@ struct of_dev_auxdata {
>         { .compatible =3D _compat, .phys_addr =3D _phys, .name =3D _name,=
 \
>           .platform_data =3D _pdata }
>
> -extern const struct of_device_id of_default_bus_match_table[];
> -
>  /* Platform drivers register/unregister */
>  extern struct platform_device *of_device_alloc(struct device_node *np,
>                                          const char *bus_id,
>
> base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
> --
> https://chromeos.dev
>

