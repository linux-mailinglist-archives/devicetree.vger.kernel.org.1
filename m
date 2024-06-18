Return-Path: <devicetree+bounces-77252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B692E90DD69
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 22:25:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6602C282D2F
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 20:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F1E91741CB;
	Tue, 18 Jun 2024 20:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qXXXbIE+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A83216EB66
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 20:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718742337; cv=none; b=l+JuTxn0tMD8drCxypauJX2b5QhwFLlWgb2B0kn/S2XZsViAv86BCRo/Fv8vTX1Q+c/LC9NDhhgdwBXFrZaNfIobIKdlFqN6dXxsxw/FJvIYQs9uAqJ0903en3oryTGm7MqYT2LhCdYptA7phc3z0Llr0gMBFY+TlXkWYgEXvt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718742337; c=relaxed/simple;
	bh=YRwOsnVFLe6p/kcwQwqv47N4rgTeTPM2k+Ln+QF8Fh0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uJhkJ3e+elxUyTfYs+e9Kbrss5OGsVc7F12aCGfHL5iDJsx6FlOsBz/+QlU6N9WBAoR4PronZEeiXzLiTlUAfBzzaEy+cwRVriHwx/Mrzlcn7lQMsUrnlqEbM6vxVS+vOvVMIKsOKBuhdtbFt/eTeo+nxjlkMK+Ik15BHJ87yRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qXXXbIE+; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-62a08092c4dso58278917b3.0
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 13:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718742334; x=1719347134; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w90+p3jzlFRMUniSo2b8ogKD0Fur+lnhSGZA3lnaqUs=;
        b=qXXXbIE+NKRMPRbDJwPrtNn5CmdceaKOHH5JlhyyOQlJKlNuQGoJ4mGPoe1VMNZKcU
         6Vi/ekRKMExenrWocUrnrXnSc1vWoRQq+AAGVybfWkfN+pgH9l4jOGPuMuI6eXeaZRzb
         XQCZlrvX+VpNACZDxILsOiOjELsyZmmSmp87DiK6KxbnhTB7MRWlwTSaRTK+JHhwcQTt
         Ol7AB/Xrv1uib6sDl+LwoD3L3c0WNrFyzy3X2dT8AOj8sooho/3dgT+K64j8SAut96NO
         ad4LNaHr8toHP98dw/9jGzMUpAUcrOeURfOz1pUGagpMPEU67nC+zZjib9XRUxi8ehTW
         WTOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718742334; x=1719347134;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w90+p3jzlFRMUniSo2b8ogKD0Fur+lnhSGZA3lnaqUs=;
        b=Pm37+wu3UbXcrn5W5LQfqZYpYCRxp+qUuuBfkzdlhZaDGcME4HX8N72q8g8pbQ9SZb
         zU9HRLBI8vbTHfY7pSQ1Vo7P57+4lwKX5NDx2Z0LaYAffMasEdZfcXP+xFAprb1LHenp
         hDuHzkpzo4fusGcGrvFXJ8lSnVQevRPlBS2b5lB9+5lYz7a9TpZOV/jV9lF9z4c7lhAS
         nQRMKKxJEuUjoj8pn7y8uIKjw0j5ko5/q9KgfSlYhxIYXCOpRUVMr9qMJzWbA5nl0IyX
         BFyCtnSWc5YUpWfPs/sgeCMDicWCUMDE76g2tPjp7lUIJvOFsAH79YLkeFdlY1hC6wKl
         KS/g==
X-Forwarded-Encrypted: i=1; AJvYcCVh+lRndsiV7aP0o979S1PQo4nHKy6jpvjpOvOr+OwZPOH+4ieiXGtMHZi6uAd0lfjK+pDH9xde9kr4Y50BqkxGEwFWGXBx1yLOPw==
X-Gm-Message-State: AOJu0YxYdHnNgkhzne54I9AlKvtTEKJQk+dKYbFSbMd3YGS8Arw0we5B
	OYmlpnsBOviMLya6BSC9Hr+VW8ci5tIwyokXQi9KZRevD1zerMHu/39U8kMr8uivA+5BDNykXMn
	748w+XJHRKEudRBP8J4qIRb+qj6CeIlwEmHR4uA==
X-Google-Smtp-Source: AGHT+IGpLhokgo384YPPtzeum2gZbC5i+iA9FZlR28A17rfQt8gwax2e5rYT0RauGBa3Y+2aEIDe9j1FBX0e6anXkkM=
X-Received: by 2002:a81:7e0d:0:b0:62f:37c9:77bc with SMTP id
 00721157ae682-63a8ac68875mr9831877b3.0.1718742334043; Tue, 18 Jun 2024
 13:25:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240618003743.2975-1-semen.protsenko@linaro.org>
 <20240618003743.2975-7-semen.protsenko@linaro.org> <94d50353-15ba-4769-bd98-57f4430f5fc2@kernel.org>
In-Reply-To: <94d50353-15ba-4769-bd98-57f4430f5fc2@kernel.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Tue, 18 Jun 2024 15:25:23 -0500
Message-ID: <CAPLW+4mHA4GHHX8TQa-CvMkYBU8me=q=cxKXLWwypGxpOtMpCQ@mail.gmail.com>
Subject: Re: [PATCH 6/7] hwrng: exynos: Enable Exynos850 support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: =?UTF-8?Q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Olivia Mackall <olivia@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-samsung-soc@vger.kernel.org, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 18, 2024 at 1:39=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 18/06/2024 02:37, Sam Protsenko wrote:
> > Add Exynos850 compatible and its driver data. It's only possible to
> > access TRNG block via SMC calls in Exynos850, so specify that fact usin=
g
> > QUIRK_SMC in the driver data.
> >
> > Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> > ---
> >  drivers/char/hw_random/exynos-trng.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/char/hw_random/exynos-trng.c b/drivers/char/hw_ran=
dom/exynos-trng.c
> > index 98b7a8ebb909..3368a08df9ce 100644
> > --- a/drivers/char/hw_random/exynos-trng.c
> > +++ b/drivers/char/hw_random/exynos-trng.c
> > @@ -333,6 +333,9 @@ static DEFINE_SIMPLE_DEV_PM_OPS(exynos_trng_pm_ops,=
 exynos_trng_suspend,
> >  static const struct of_device_id exynos_trng_dt_match[] =3D {
> >       {
> >               .compatible =3D "samsung,exynos5250-trng",
> > +     }, {
> > +             .compatible =3D "samsung,exynos850-trng",
> > +             .data =3D (void *)QUIRK_SMC,
>
> Probably this (and in previous patch) should be called flags, not
> quirks. Quirks are for work-arounds.
>

Thanks for the quick review! Will submit v2 soon with all the comments
addressed.


> Best regards,
> Krzysztof
>

