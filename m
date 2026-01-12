Return-Path: <devicetree+bounces-253672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F0CD1053B
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 03:19:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 142C930041AD
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 02:19:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CCA52236E8;
	Mon, 12 Jan 2026 02:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CZzyqAv7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90E12B9B9
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 02:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768184370; cv=none; b=tPiXVwHXp+SKBX0YrGhHMl8Ajeoe8SHJQ9REqZ9o02CqfcA7oUOgOUNBjLvagzNQtN92RyuzZHiw1T1jMVlQjxwy6XCfi7H/YuARrrDdIy+hdZDSAK7KCQn9imSq3V0GoJLrXWMQUo3Yh0ZV4mZ9SsiylUfy9NY7Q43QqCnXp+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768184370; c=relaxed/simple;
	bh=LIDGLkK6lEnNHIkqOZXsxXCxMXJeAEB3JVRy+CUiN0U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=my6yPrOKwjqdBmUq/AoCoK1p8xTOuXZALSIBhjZYUymZoKVZIX9vycrvFWAEB37dG5AF4FGvlNzWBEjW+1qvLm6btxKjJfZ13dJTC0Bqaa2dre5z/+2ni1U9T40B8kYMtJ/76U9LFgGFFZMXtacYgUfRyhjLmjxU90OmV0t5va0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CZzyqAv7; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b87281dbdbcso9821966b.0
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 18:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768184367; x=1768789167; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y9CqPVmy6Ha693TlqqNOvrdHx9uT6DiCM4/UcIA3Wsg=;
        b=CZzyqAv7JfNfDerUAGbb3wrc5YaR1oqrfNdlpziOSLEV7U3wKONzIRXz12uKXeDhLx
         F3DAWtLHgN5WSDMPMXITVXITukX8KccBWN7sOGVqKs3KbtZYBXf6KyN0q3SparXO8M3U
         hjgoqf7bYbIyrC7mD7G4J1XJQ45iapFhW2+oCgfikzNvNnnezezEgah2oDiVvnf9XOSn
         BckRlC1/FoFtcuOoC7pf3AjjXSMbrGXbbzeK7TgsCnx6IEmO7SwjxFQ4ulUNLPyAFVul
         GGmX1ehBqSlQLaHXjucmlspHMCjsUCk/CtWCpdTLCQ0VerqlcGUvpqiFFydgnkBlVOeu
         0UpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768184367; x=1768789167;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y9CqPVmy6Ha693TlqqNOvrdHx9uT6DiCM4/UcIA3Wsg=;
        b=Ll0gQ827iWxCgaaL91FlA5ntQN03var4dAUUaHC2qVVFoxvaAdrQgHBQ75rHwbTm8m
         q79wJuTTpzHIt/XZTeQD5M+zdKhPwxoRgqmAaaFutgdXxRUSUN2kmyHBIw+fW8MmKN/P
         tnBQzbTzEgB/r0MPr7G0yn+AmFF+gzqnaSn9842emv8BZVoZtDESWdmbsQVuMQnwU7Fw
         /+7vmh7ftcdua4tb/jMzCh7SUK9qbPlYoaLtJJY7eRzSJADvpWnjaRCOcnRs3JNWWRsH
         ati4my1Las6O3DoEsszro6W9QHerG2oM8Zq+Ibmv2/oZ7RtDx6MTjyV25eHxtZDzjjAT
         qtVA==
X-Forwarded-Encrypted: i=1; AJvYcCUuW7+WuBHGNk5lzFFsa+j2FhrQUvvESRFqE4LAvHin6GUlX6j538QDgroKEhvQ8z139wln6tCrOUaE@vger.kernel.org
X-Gm-Message-State: AOJu0YwqDjxmZj7igtlM4rkZ6OapvMo2+n5ezWlp6nBn0GlpjBZzxK6m
	U+3PnJFWnq+rEzsTjms1VbuFO7xr/X0RPFlhUXGPwjAYgPJN6AwZkkGNIRf7ychYn3uOFu5DsD+
	9NNeyrU5OUDCTK0t+VGp34wUzfA7s2/J0PVBlQHE=
X-Gm-Gg: AY/fxX4oG6oQXDDhVVV/ccznzyRY1Zg5H9bqc6dNgxdcz/VdkH5/tiNdImEG+YY8sOo
	s8PgXtkNURHkAogF3apOQH7PBiJXTiUoq7M2QVBXbAhW/CxhLmMBz4N5A+0iuEbslhowmwVDohv
	M53OtF7fjNHPs8aWi96ZXD/xBWz1+P8JAh4aBQgcBCZeScb5g42371z7fb5buJFrRnWs9P/fT0F
	NpxDVvzJjbknqv/CwZdIiiMdkSH8X717Xqn4bvxKgi5c4lTkRv8cxs0uBYjWQEiJp5ElXc=
X-Google-Smtp-Source: AGHT+IHmORAEgQ32ky+5zNyQndAMCM5ZXl9uM2UzyA2fv3laEONieJPXSJhojc8yHVlsUEJsAR+UXQ0vjeoUBC+pjN0=
X-Received: by 2002:a17:906:7954:b0:b87:2579:b6cf with SMTP id
 a640c23a62f3a-b872579ba1bmr48157466b.41.1768184366965; Sun, 11 Jan 2026
 18:19:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260110-mmc-pwrseq-v1-1-73de9d6456f4@valla.it>
In-Reply-To: <20260110-mmc-pwrseq-v1-1-73de9d6456f4@valla.it>
From: Sarav K <sarav.devel@gmail.com>
Date: Sun, 11 Jan 2026 18:19:16 -0800
X-Gm-Features: AZwV_QgSEfcWyHC1hg1pQP0Ytmz0hobumz-hHhgTKwyXnFZkK-y0xSGUiX4IamY
Message-ID: <CACRMN=d8YX1LG4NSPnNXGnU2u-Ej7wsTom_DpVrD4T_byRE2CQ@mail.gmail.com>
Subject: Re: [PATCH] of: property: fw_devlink: Add support for "mmc-pwrseq"
To: Francesco Valla <francesco@valla.it>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 10, 2026 at 7:28=E2=80=AFAM Francesco Valla <francesco@valla.it=
> wrote:
>
> Add support for parsing MMC power sequencing (pwrseq) binding so that
> fw_devlink can enforce the dependency.
>
> Signed-off-by: Francesco Valla <francesco@valla.it>
> ---
> Resending this patch as it slipped through the cracks (of my attention,
> at least).
>
> Original submission is at [0]; there it appears as a v2 because it was
> the first time I used b4. It was also part of [1], which wasn't really
> a patchset but a follow-up to the boot time SIG meeting.
>
> I added Ulf and CC'd the mmc list, hoping they can (more
> authoritatively than me) reply to Saravan's question:
>
> """
> I took a quick look at the documentation. It's not clear to me that
> mmc-pwrseq always points to a supplier. Can someone with more
> experience on this confirm that is what it's supposed to point at?
>
> Meaning if A lists B as pwrseq, is it always the case that B needs to
> be powered on? The binding documentation doesn't say anything about B
> needs to be powered on first. It's just saying A and B have an
> ordering requirement.
>
> If the meaning of the binding is _ALWAYS_ B needs to be powered on
> first, then yes, this patch is correct and I can give a reviewed-by.
> """

Ulf, in case you missed it, this email is directed at you or other MMC folk=
s.

Francesco, can you see who added support for that property and direct
your question specifically to them (in case it's not Ulf)?

Is this fixing a specific issue for you that's pressing? If so, we can
land  this and then see if anyone complains.

Thanks,
Saravana

>
> [0] https://lore.kernel.org/all/20250930-mmc_pwrseq-v2-1-80a8c6be0fb0@val=
la.it/
> [1] https://lore.kernel.org/linux-embedded/20251126-beagleplay-probes-v1-=
0-c833defd4c9b@valla.it/T/
>
> Thank you!
>
> Regards,
> Francesco
> ---
>  drivers/of/property.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 4e3524227720a596b0f12976f83357851e9b94f3..05ae33a58b5aec0a8f4d3b723=
7ce88066d86dc9d 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1410,6 +1410,7 @@ DEFINE_SIMPLE_PROP(post_init_providers, "post-init-=
providers", NULL)
>  DEFINE_SIMPLE_PROP(access_controllers, "access-controllers", "#access-co=
ntroller-cells")
>  DEFINE_SIMPLE_PROP(pses, "pses", "#pse-cells")
>  DEFINE_SIMPLE_PROP(power_supplies, "power-supplies", NULL)
> +DEFINE_SIMPLE_PROP(mmc_pwrseq, "mmc-pwrseq", NULL)
>  DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
>  DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
>
> @@ -1557,6 +1558,7 @@ static const struct supplier_bindings of_supplier_b=
indings[] =3D {
>         { .parse_prop =3D parse_msi_parent, },
>         { .parse_prop =3D parse_pses, },
>         { .parse_prop =3D parse_power_supplies, },
> +       { .parse_prop =3D parse_mmc_pwrseq, },
>         { .parse_prop =3D parse_gpio_compat, },
>         { .parse_prop =3D parse_interrupts, },
>         { .parse_prop =3D parse_interrupt_map, },
>
> ---
> base-commit: b6151c4e60e5f695fac8b5c3e011cfcfd6e27cba
> change-id: 20260110-mmc-pwrseq-e885e677ca2b
>
> Best regards,
> --
> Francesco Valla <francesco@valla.it>
>

