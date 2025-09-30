Return-Path: <devicetree+bounces-222838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DB67FBAE311
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 19:31:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2CDD3B7D76
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 17:31:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B23530CDA0;
	Tue, 30 Sep 2025 17:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="jV5FTpUq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E17F30CD84
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 17:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759253439; cv=none; b=EuaWCw5q1uMxW0wTwZDsm4J3aZ7qpK8IxA/SERjNHfP+ouMF3G6bwAq+RimfmzP61SToWDKQcej1XzIFseBmfbTeYycybBFYq8n5hplMumGjiDhgvGf13Fp9bHVtmLWDdTNGFST3l7wFmtK/z7mImUX5nh5FhY40NnPUne8jEJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759253439; c=relaxed/simple;
	bh=RAzN02ntU6we7KtqdUsGw1bQvhAKuIdoO3RtEp9cuGc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fy5S6euAWxMtggTRpl6W1ZLUJ/B7mZuiwroguOgx1lni76waRlejJuTsAU5yMq0MNab1C3NZIMroRvNDeT5CANcw7y59JsZgW1TzHgLK6rvvpkl9jj/3HxIUhLgcAkI/ctkgFFg/BjY7IHpj/WmJaxj8+HFVzDQ9WU4halA7MYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=jV5FTpUq; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-54a8514f300so3271778e0c.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 10:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759253435; x=1759858235; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8kjeYVi3BFjPoMUBum1xgGJVhZJDmP8eaKSN0CbIZRQ=;
        b=jV5FTpUqmvFCRC7+g+bXWddcRXC4N+G4YQheXVk2/AHQzLeuTr5sE7EzOR6thnYU8F
         nHIM8nJzwRYK+sLQq7axjaacsiFOFTrEGtMPnMyP47dr4OxxkgXGyRsSTocKj385eGmB
         H/rKAUgyfPZK1Q2RNxdIvwvm1NgYdqv7ySczq9uuDn9jQzmDuMFmqTOOQFn/38BvipkL
         rv8N822CTLY7CWNomIft1LSsob4V3b4xOPeBQ53dEnidyDH4ew6fux+rpzRUHxsVI1at
         YBLw7mPdHw22BjjzoKaD/awKIJHERy073vrDUb39S+81aE2cyZJ0JLh18sRj+QyuQig4
         DDmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759253435; x=1759858235;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8kjeYVi3BFjPoMUBum1xgGJVhZJDmP8eaKSN0CbIZRQ=;
        b=Av70n1r50sCLDX4nuNzQj+0lXD0pqOHscZv9uxOFciOgwak9YCQ68TsLDysbsuGY25
         CZLLLT3rbl4TvJo9BRKF6CjsIEN3YMv4tkJzqTDxNGRQeWygsoggNEvvSN22yO1tcQAU
         Q72Es0N2f4m9iJ8Gg3EoSxt1HOUrsDSop+CokHUmaIEusuzgXwIy1mR90+uaroMECL2r
         PKcp14kk4a1ndprPng4TztGZcF5wWs0JDH4mMOPwizNo3RMsg3AVTFHroQZpkor2zNIJ
         9rLT/TNLZUgQOWTc6AdYaXzSUdDV0HjQZlMw7GfYCQAYk0hO7rRsJiIKw7NPiWKswwK+
         uEew==
X-Forwarded-Encrypted: i=1; AJvYcCWqArGofxHf+4QK/+Cve1a1EDETO4X7CINQjQNc9Vrs1XzUgj9gFqTErzgu0NpyuvvF/tlIyT2tFNQx@vger.kernel.org
X-Gm-Message-State: AOJu0YzefBQFZyAkO6/4Z9RA7rU/idyGlZQg5IhSUFjXfsAe/aMXV6GE
	5LR0d/A7nTlTFTGH/aOtitJ7agyYZ5ZDts+1yjAI8pNrWSD6Dyj45eMx5+HqWbxw/AlPVE459Sk
	hnOsQpjTKQqmrsVJ9WIcs8GD6KG3NC25hX2fwWBWfZ43dX916Tv/YkanR
X-Gm-Gg: ASbGncu3htwON/SlRpXhnX7aXrUrZYce44jJ6Wf5O2lgR5YKPKNCuEo4xd0+LQWF7Dv
	RtmEZEXGl/OuitmHnps67Ndkofpii14lMvaGd5E9Q2rpiJO7erQpFYPe9GVmZEHw1SbpN60VRul
	qFV5/SeQR1kxPJZ7bdmIVkTVEzFBscPEJrHTGjve/ke+w64uoClC1hXL5S/YJ7WDBGYkNgjdeRC
	6UDfkMpOtFZKq+81wOB1NTk4bbDeCdfWOra
X-Google-Smtp-Source: AGHT+IG8jJ95/JjL1D4MG02AWTuWRULg09/UHI6ETn6Cc8YDCJp+TEu0wu9vGpPMKXVhUdNr52Sp/ZXXPPXheG9lrtk=
X-Received: by 2002:a05:6122:251a:b0:54a:992c:8164 with SMTP id
 71dfb90a1353d-5522d37d0c7mr277987e0c.7.1759253434892; Tue, 30 Sep 2025
 10:30:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250930-mmc_pwrseq-v2-1-80a8c6be0fb0@valla.it>
In-Reply-To: <20250930-mmc_pwrseq-v2-1-80a8c6be0fb0@valla.it>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 30 Sep 2025 10:29:58 -0700
X-Gm-Features: AS18NWDhaTb_SHyVdkz3H1aGObXRSKwr83vx52Zf-N7iLwTKT6lcWCzjbd3sNII
Message-ID: <CAGETcx_eDbx1QowXzy1k9r2D-G-gT7nEgFqEfWY7wBbLzfRukQ@mail.gmail.com>
Subject: Re: [PATCH v2] of: property: fw_devlink: Add support for "mmc-pwrseq"
To: Francesco Valla <francesco@valla.it>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 30, 2025 at 8:58=E2=80=AFAM Francesco Valla <francesco@valla.it=
> wrote:
>
> Add support for parsing MMC power sequencing (pwrseq) binding so that
> fw_devlink can enforce the dependency.

I took a quick look at the documentation. It's not clear to me that
mmc-pwrseq always points to a supplier. Can someone with more
experience on this confirm that is what it's supposed to point at?

Meaning if A lists B as pwrseq, is it always the case that B needs to
be powered on? The binding documentation doesn't say anything about B
needs to be powered on first. It's just saying A and B have an
ordering requirement.

If the meaning of the binding is _ALWAYS_ B needs to be powered on
first, then yes, this patch is correct and I can give a reviewed-by.

Thanks,
Saravana

>
> Signed-off-by: Francesco Valla <francesco@valla.it>
> ---
> Changes in v2:
> - EDITME: describe what is new in this series revision.
> - EDITME: use bulletpoints and terse descriptions.
> - Link to v1: https://lore.kernel.org/r/20250930-mmc_pwrseq-v1-1-7fd2764f=
5ac1@valla.it
> ---
>  drivers/of/property.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index c1feb631e3831d7d5ec23c606af31731bfc2f8b8..fcf10c4f02dcf879e1f25e4fa=
97b25152d58bacb 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1377,6 +1377,7 @@ DEFINE_SIMPLE_PROP(post_init_providers, "post-init-=
providers", NULL)
>  DEFINE_SIMPLE_PROP(access_controllers, "access-controllers", "#access-co=
ntroller-cells")
>  DEFINE_SIMPLE_PROP(pses, "pses", "#pse-cells")
>  DEFINE_SIMPLE_PROP(power_supplies, "power-supplies", NULL)
> +DEFINE_SIMPLE_PROP(mmc_pwrseq, "mmc-pwrseq", NULL)
>  DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
>  DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
>
> @@ -1524,6 +1525,7 @@ static const struct supplier_bindings of_supplier_b=
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
> base-commit: 30d4efb2f5a515a60fe6b0ca85362cbebea21e2f
> change-id: 20250930-mmc_pwrseq-247089ac9583
>
> Best regards,
> --
> Francesco Valla <francesco@valla.it>
>

