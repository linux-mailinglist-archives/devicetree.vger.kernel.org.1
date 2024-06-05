Return-Path: <devicetree+bounces-72515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EDB8FC2A6
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 06:25:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D08B5B23A57
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 04:25:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25D4E84FDA;
	Wed,  5 Jun 2024 04:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UYEd/bt5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 827385C603
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 04:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717561548; cv=none; b=b+zOYAeyT6FuxJTKgolRr9ofi9JAsrxdrVXqwl5gKm/tF81FD7+7FQ39R+zZifANMdbZAQTMGnFs/O8f33nfo6PDIOx/HsLXO8qfkqiO6sm/Ox8konl550PoAGUs7xoWE7EDtSYVgg6uH0iB3zx5lYs1jZYB/um/ICq1khMtsIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717561548; c=relaxed/simple;
	bh=oYyljKfcE/Wp2Hn8suGs0r3hNg5ct1E996pRxRLY9Kc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k7Rx9lv/OP/8TLpDUBJWqf9tcUx8kuPFS4LeUf+8QhtGI5S3GWG68etv1Vyqi16tfI7k/0nV678znaeawbbH71eo30QNlV0clfzEAHo+llR9a9yBG9AtEHpwnaEdKYrNS6tGPVOuuqrbbJbVLKCz0+U1YvhPu06CIo/W0b5kmqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UYEd/bt5; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52961b77655so1906822e87.2
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 21:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717561544; x=1718166344; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=waT0AcrUOg+uWZ0+qjh1ei9vxb3C0YTsDDg3ERd1AtM=;
        b=UYEd/bt57X5GadaHmAEQjDM3/5ZsFYF1pqePjpER7MMukpEwj8xciBbrcGDIS4dJoL
         QClTFogECkY3NSiDE7I8A6ztWa3KYKxc1edu/iv0ZAMatyD49Mwlc+BE9gUE6zl0loLg
         ekRKm/xg+8Xfs2StSTWeteFyBoQY17AFGR3No=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717561544; x=1718166344;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=waT0AcrUOg+uWZ0+qjh1ei9vxb3C0YTsDDg3ERd1AtM=;
        b=gagtW8VLkVi/ojQp4CKlg4nl8YeIeCwp27FMREkAZrHDIngofFF05errE5bwe5b34f
         lYJxHQNOnJui1k/0MlDIAoakc8DSl7tDzGfFQ0CpFeBns/N+nRyV7Z/hPcgPYRTbpG73
         W4nFhZ0maR0+6IVumR5eSIev6X4ezFJ3LG9f9YyLT2JAcniNpNuwHL9jzQJgf4JfXdvc
         fsFs2hjmNKYtVB7Sjd2aBtdMT4Vml3A7jkZvAoF8/eldRx8LVH32zzScW6ZMz4z7BZeA
         FVSuQ2wkxY4qAKy6U8eZzIRoLKuTljmrqBc7HbuHPGExXwGTH1CUtUPw76gvjtEC2hoG
         kXyg==
X-Forwarded-Encrypted: i=1; AJvYcCVgnEuRYLnxjFnJubTp9iPZCvlJI50XHdiPXIBkvvMeXwrRSeIsoO2gARaROA1P6Rb2Q8HOaPHYtIrPqloWred0xKiS9aB/RPCJ1w==
X-Gm-Message-State: AOJu0YzYkgziYeUExJzKnQSYJNwcGRXKWDH98rwrMYTruLOIt0go06BL
	ktJdYe6k5Z5HoFKsHF07bADfL8J9h/EZYdRoFAngIxtyCw7aFdLJpeOi+Xjs49h6xCRT/QX1lKX
	iQQ16DDu4ZPXR3ZdvFCA+oqNvJxvtI9Rqoc17
X-Google-Smtp-Source: AGHT+IFVvcQWi5hirg6VyE5D099E/X3a3I1qA1m27sAUZLgof8ZGt7kAYof4SoSo6C5SbiaD1MLWTK9P2pF1kHV7ZcU=
X-Received: by 2002:a19:520b:0:b0:52b:874a:a44 with SMTP id
 2adb3069b0e04-52bab4dd1c0mr658131e87.25.1717561543571; Tue, 04 Jun 2024
 21:25:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240604123922.331469-1-angelogioacchino.delregno@collabora.com> <20240604123922.331469-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240604123922.331469-3-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 5 Jun 2024 12:25:32 +0800
Message-ID: <CAGXv+5GXphBp-YMDtkNh1Q-FNQq4cmELR0tB6M==5tKptr8bZg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] drm/panfrost: Add support for Mali on the MT8188 SoC
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: boris.brezillon@collabora.com, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	steven.price@arm.com, matthias.bgg@gmail.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 4, 2024 at 8:39=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> MediaTek MT8188 has a Mali-G57 MC3 (Valhall-JM): add a new
> compatible and platform data using the same supplies and the
> same power domain lists as MT8183 (one regulator, three power
> domains).
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

> ---
>  drivers/gpu/drm/panfrost/panfrost_drv.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/pa=
nfrost/panfrost_drv.c
> index ef9f6c0716d5..4e2d9f671a0d 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_drv.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
> @@ -777,6 +777,14 @@ static const struct panfrost_compatible mediatek_mt8=
186_data =3D {
>         .pm_features =3D BIT(GPU_PM_CLK_DIS) | BIT(GPU_PM_VREG_OFF),
>  };
>
> +static const struct panfrost_compatible mediatek_mt8188_data =3D {
> +       .num_supplies =3D ARRAY_SIZE(mediatek_mt8183_b_supplies) - 1,
> +       .supply_names =3D mediatek_mt8183_b_supplies,
> +       .num_pm_domains =3D ARRAY_SIZE(mediatek_mt8183_pm_domains),
> +       .pm_domain_names =3D mediatek_mt8183_pm_domains,
> +       .pm_features =3D BIT(GPU_PM_CLK_DIS) | BIT(GPU_PM_VREG_OFF),
> +};
> +
>  static const char * const mediatek_mt8192_supplies[] =3D { "mali", NULL =
};
>  static const char * const mediatek_mt8192_pm_domains[] =3D { "core0", "c=
ore1", "core2",
>                                                            "core3", "core=
4" };
> @@ -808,6 +816,7 @@ static const struct of_device_id dt_match[] =3D {
>         { .compatible =3D "mediatek,mt8183-mali", .data =3D &mediatek_mt8=
183_data },
>         { .compatible =3D "mediatek,mt8183b-mali", .data =3D &mediatek_mt=
8183_b_data },
>         { .compatible =3D "mediatek,mt8186-mali", .data =3D &mediatek_mt8=
186_data },
> +       { .compatible =3D "mediatek,mt8188-mali", .data =3D &mediatek_mt8=
188_data },
>         { .compatible =3D "mediatek,mt8192-mali", .data =3D &mediatek_mt8=
192_data },
>         {}
>  };
> --
> 2.45.1
>
>

