Return-Path: <devicetree+bounces-198194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E35FCB0C0D7
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 12:08:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42F7A4E0FD7
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 10:07:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2F2F28C5CE;
	Mon, 21 Jul 2025 10:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XAdhfoSZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E921218FC91
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 10:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753092503; cv=none; b=UhQbhciykHsqkNWHipFFX7DlxZ4mNjBGfNO7FwVk017WZtY8y3EY7DLj11YdD/X77Y46vd22oWWp02b+F0mQSTdQOjxo/6YzpHMlwc7D1Vsl3+Uw2n7KEr6NoAlPs37+/8zc5ZfjdqboMaXS6HxpoFEzvALuiDHdsPiTkjztb7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753092503; c=relaxed/simple;
	bh=50Ubmg4LfSlEdX6k4IcF145XqGsrPBSvcnbfU9xKeLI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Og6HXTUeapFMDv4XSNJRU40DjAxHtJRmcXpvoIYgVG5a6az3D40lpBQsIAc6kPFgpHwLrouWQur20ELBpZukQauFe5XOXdwVk9QK36Nury9Nhh/g/DRaHTGfjtZpPHucHBDTAT+sNft7zBWyY0YHEoq0ClRF15eUhMLFh0T7/IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=XAdhfoSZ; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-558fa0b2cc8so3314267e87.1
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 03:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753092500; x=1753697300; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hD8rxQd2ghX7oxkvwv9EZVZXOQiPMsFApAotllBQSeg=;
        b=XAdhfoSZONUfQGU3zAjMmLyhemuNhljyMd5NAsbQk58mafPj4HvRBYYF9MnlAMZ28C
         vqeFad8XNUQ5B5h9pGJpmRYYw28ZyG/evVPUfOdJuPrcay/J2a8HjGg3hTDgBoMDIL1A
         pcaF/BxAjhYZ2zadjJWIZ1dgaMD5SAS0R+0gE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753092500; x=1753697300;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hD8rxQd2ghX7oxkvwv9EZVZXOQiPMsFApAotllBQSeg=;
        b=c9E4cnWCb6Yt0khakRXnx9ZkTAz1b9L3nxvJ6mFPe+M1sLCo0r7wcO10UEyLp22hUM
         jeKCCpMnXhLpThv/DOJdVQvVciGS1ZX3F2JYmQxmBY/PZYOd3UbkN62Rq6Zs9z652hC8
         P8buj+7R4pDB43C3jDxkmqVSAcEmVxOOQyLqmIQNT4TEF4xonsMuw1CfxLog8eWHH381
         sPrQwUOKHNH8dDUyIvTkQZCLLgAf3PVOliRAN4z2kuc/FCV25juFMV4lGqEto2IrDfTe
         WYXnvDuX32uT+hGPpXN5dwiBqeqSJluXhsa0Gz+x45JBxyj8S+qaZ4v+IeP4VMPeNRHk
         Xl1w==
X-Forwarded-Encrypted: i=1; AJvYcCXBAZf5XvrR34uLcmgZuIKzxaGDPY++OWAcMJupLqOaCAWaNnbWSxPSaL0VmVawGiP8MziVgr64X3XT@vger.kernel.org
X-Gm-Message-State: AOJu0YxgkODv+JhRjNi/FKp1kMKTDKQJxU7fvVTr6ACoSijajbAKDp5n
	z+/LnW9z+3j+onVb+Xf3Fh0pgKBSZQBPCJkxTP/TJvYXQaO3qIZfacDC2duwczyMxzqvs4U2klm
	tO6kLXRaqa5oGUa0L4aHek2YBYIjNsaGhok/dZTnx
X-Gm-Gg: ASbGncsL044RPEOzhpy33Gp5sIjsh+80QpvFOLgIjOZdggq1ZT7XTNSzyCulLM6EunP
	urIuXNwWCfbWyH3qLoSQtkWPyJOWC+3DMflu0EHNjSdwW/SFv6tCHYj0vxqR3O31DWAhi8Z9K05
	giwhP9MQTp3Y3LLrKBiVuzU6W0fWBgznYnDH3y3rPRtU6M+yrOAvkMDGLoqwc9pM5RTD/wGAMOg
	aBlCLQ0TpEyYUZpCG/AxokEQzuoKnpL8Xo=
X-Google-Smtp-Source: AGHT+IHi6PdCwFOePdyUiSBZQls+DPW7XtyOQBhq5kUoIJmQhohNKReJGJb1oSImXRjY6TmgwESv8Tvn2SOgxE98754=
X-Received: by 2002:a2e:a99a:0:b0:32a:8916:55af with SMTP id
 38308e7fff4ca-3308f4c5e9cmr53974251fa.2.1753092499826; Mon, 21 Jul 2025
 03:08:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250721081459.16278-1-laura.nao@collabora.com> <20250721081459.16278-4-laura.nao@collabora.com>
In-Reply-To: <20250721081459.16278-4-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 21 Jul 2025 18:08:08 +0800
X-Gm-Features: Ac12FXzBhOOgbkI7YQgVr-Zp96LKQsUci_34ENr1pVVGZfl3HxcKeWbG5MiHa8I
Message-ID: <CAGXv+5F51DiCHi_QPeDKOGCwvgM6HpmRjEjSgS8-mh=Fg1Fr5g@mail.gmail.com>
Subject: Re: [PATCH 3/9] thermal/drivers/mediatek/lvts: Guard against zero
 temp_factor in lvts_raw_to_temp
To: Laura Nao <laura.nao@collabora.com>
Cc: srini@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com, 
	lukasz.luba@arm.com, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, andrew-ct.chen@mediatek.com, 
	lala.lin@mediatek.com, arnd@arndb.de, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, nfraprado@collabora.com, 
	devicetree@vger.kernel.org, u.kleine-koenig@baylibre.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	kernel@collabora.com, colin.i.king@gmail.com, bchihi@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 21, 2025 at 4:26=E2=80=AFPM Laura Nao <laura.nao@collabora.com>=
 wrote:
>
> Add a guard against zero temp_factor in lvts_raw_to_temp() to prevent
> division by zero and ensure safe conversion.
>
> Fixes: 6725a29321e4 ("thermal/drivers/mediatek/lvts_thermal: Make coeff c=
onfigurable")
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

Code wise,

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

However I assume this would only happen with bad platform data? The
factor should _never_ be zero. Maybe also issue a warning in the probe
function?

ChenYu

> ---
>  drivers/thermal/mediatek/lvts_thermal.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/thermal/mediatek/lvts_thermal.c b/drivers/thermal/me=
diatek/lvts_thermal.c
> index 8d5259b9d03b..b80c2929ae74 100644
> --- a/drivers/thermal/mediatek/lvts_thermal.c
> +++ b/drivers/thermal/mediatek/lvts_thermal.c
> @@ -280,11 +280,14 @@ static int lvts_raw_to_temp(u32 raw_temp, int temp_=
factor)
>
>  static u32 lvts_temp_to_raw(int temperature, int temp_factor)
>  {
> -       u32 raw_temp =3D ((s64)(golden_temp_offset - temperature)) << 14;
> +       u32 raw_temp;
>
> -       raw_temp =3D div_s64(raw_temp, -temp_factor);
> +       if (temp_factor =3D=3D 0)
> +               return temperature;
>
> -       return raw_temp;
> +       raw_temp =3D ((s64)(golden_temp_offset - temperature)) << 14;
> +
> +       return div_s64(raw_temp, -temp_factor);
>  }
>
>  static int lvts_get_temp(struct thermal_zone_device *tz, int *temp)
> --
> 2.39.5
>
>

