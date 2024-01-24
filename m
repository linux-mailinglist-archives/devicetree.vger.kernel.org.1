Return-Path: <devicetree+bounces-34822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8520883B27E
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 20:49:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07C4C286D5C
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 19:49:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1436C13340C;
	Wed, 24 Jan 2024 19:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JL6MsKPW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B99132C20
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 19:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706125781; cv=none; b=RVxODwecpw1WLQO+4ongczIIXJR6S0HMe46VhwFOT+YCEhDVuZIyiaoUPRsRHmsknQvhXgdg/0EzEo4bT930zYf/A/VahM70LAQpzGHTWG4OBWmlbJJk2S5qmY1cE0lwnFXdT2cAtAwwuqQ+UvJEbWrqBZHjW32doA+zeibSOnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706125781; c=relaxed/simple;
	bh=GJF9p1XcRmgc40UfJpNRJQSEB4xtSRoBG0/8WumtW9I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bVqUkyee0m/ttAyLwJsaEWpPGeoMVOZWrFB2MfTrLouI5LPpAwsg8R9MYqjJxDRnbemuTP9WGcWvF9iiq4s2JpELPMq6pk90gFtIZNk6c2VVn3IHVZh2s9aiZMBQ9axi6bZONFLKEAo7OkLSroGjOyv+LiaMyR6EeqexuB/WtOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JL6MsKPW; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-6dc6f47302bso2657670b3a.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 11:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706125779; x=1706730579; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tUEOwL0aT/KLBhzPn+5DluzUuCnwfBYA/R1aUTFAgCI=;
        b=JL6MsKPWvqszGc78AjeJjW0TXKA2fRLu906SCS60nCkuct1GHlHVFc4MMrGWJHYTqY
         7IIbf3ynu4duwQIRwch+VNd5WMD+umA9yde1ukB9j+aeDy8I60Hbg6jkYiOHAdL1SRZI
         Nb0oOkJIhQCTS9XES++Ue9/xj/i2F9QV/xW7xeTjvduDJ3eHzHOtWaKPBPYQMzcML7US
         9r9ybiYx+/dbGeQk3xvRV3Dc0ur3V9kbe7vbkqRaybAThhf8dSXbJSEJvP/GMauR2sdJ
         P5wl8yi2nLwNKswdu/a6LM7BktM3Szu0dWV5KMBWHpcnnYFyFUMi6Y2FvYU2MIlZ5La5
         Ul6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706125779; x=1706730579;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tUEOwL0aT/KLBhzPn+5DluzUuCnwfBYA/R1aUTFAgCI=;
        b=cHXDLVzKORbxI26Zc34nzn0VqkWE/AhE8B8B6NWNuH+6vwcAqVugki94nIg3EaFsge
         KbM4mmWKYq75ENkdWfwRX2ulzgiIG8TOJCec48BT2kf6dN6OBGxfdEETebx5+e3YaBfR
         Ndv72oFFOwrLz+gmPx7HHRxABfy89MDe553SvL4OaMRuUg9M/ILVFAzcR7A4haJPIFkJ
         hvnlkWT+x+b6rHnqbWMCzWVvHT3v00nrar7NQsot5L93TldPBLV5xMkHEwOn/u7oGye8
         HxXVL7P/bgpiqBDgJunCk7lB9LkImyeJJnofaZY+73gI/0QCp3UQx2deU0TQ/7zOd91R
         SdKg==
X-Gm-Message-State: AOJu0YzDmrozWNPfnq+odIgckB5PKaI4u3B/HBPDeJbXJ+oiHLAMmhnb
	q6uy75tnRbcLIQCTbmQgiC9uNWFBkSjxXPmuK/7Pfm8AmkZvo43f79q4iuGSiFlU0E2m4gMOJVM
	WozEaOVlK6U5bAC1YBnC/MRm34Luzpwj/jR6bmA==
X-Google-Smtp-Source: AGHT+IFXnsU6JzJpLgdE8tZSUC/O5y/OBNN7Hbw326L/sc6vMWMF7xBRsZm9zZoZuJHG8eMzCH3jQgmYWc8nW3X4iy8=
X-Received: by 2002:aa7:9e81:0:b0:6dd:8a25:e167 with SMTP id
 p1-20020aa79e81000000b006dd8a25e167mr43901pfq.34.1706125778918; Wed, 24 Jan
 2024 11:49:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123153421.715951-1-tudor.ambarus@linaro.org>
 <20240123153421.715951-17-tudor.ambarus@linaro.org> <CAPLW+4k-5vdkBNdewTgG72iAr0oLv1zXncnmx-qy6diJqQMNDg@mail.gmail.com>
 <cfa6e878-01bd-45aa-8fbf-030288a0e65b@linaro.org>
In-Reply-To: <cfa6e878-01bd-45aa-8fbf-030288a0e65b@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Wed, 24 Jan 2024 13:49:27 -0600
Message-ID: <CAPLW+4nPC2F0jS1UrTVEJA83gcxgfX4wa_YT0Lu5oJG4G5B2EA@mail.gmail.com>
Subject: Re: [PATCH 16/21] spi: s3c64xx: add missing blank line after declaration
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: broonie@kernel.org, andi.shyti@kernel.org, arnd@arndb.de, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, linux-spi@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arch@vger.kernel.org, andre.draszik@linaro.org, 
	peter.griffin@linaro.org, kernel-team@android.com, willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 24, 2024 at 3:54=E2=80=AFAM Tudor Ambarus <tudor.ambarus@linaro=
.org> wrote:
>
>
>
> On 1/23/24 19:28, Sam Protsenko wrote:
> > On Tue, Jan 23, 2024 at 9:34=E2=80=AFAM Tudor Ambarus <tudor.ambarus@li=
naro.org> wrote:
> >>
> >> Add missing blank line after declaration. Move initialization in the
> >> body of the function.
> >>
> >> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> >> ---
> >>  drivers/spi/spi-s3c64xx.c | 3 ++-
> >>  1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> >> index f5474f3b3920..2abf5994080a 100644
> >> --- a/drivers/spi/spi-s3c64xx.c
> >> +++ b/drivers/spi/spi-s3c64xx.c
> >> @@ -1273,8 +1273,9 @@ static int s3c64xx_spi_suspend(struct device *de=
v)
> >>  {
> >>         struct spi_controller *host =3D dev_get_drvdata(dev);
> >>         struct s3c64xx_spi_driver_data *sdd =3D spi_controller_get_dev=
data(host);
> >> +       int ret;
> >>
> >> -       int ret =3D spi_controller_suspend(host);
> >> +       ret =3D spi_controller_suspend(host);
> >
> > Why not just moving the empty line below the declaration block,
> > keeping the initialization on the variable declaration line?
> >
>
> just a matter of personal preference. I find it ugly to do an
> initialization at variable declaration and then to immediately check the
> return value in the body of the function. But I'll do as you say, just
> cosmetics anyway.

That's not like "do as I say", I'm just a mere reviewer anyway, so
it's just my opinion :) You can leave it as is, and I kinda can see
your point now (having actual logical operation executed in main body
rather than in initialization list):

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

