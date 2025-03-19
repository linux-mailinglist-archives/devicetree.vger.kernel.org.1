Return-Path: <devicetree+bounces-158837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D48A68430
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 05:23:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7330419C5CA1
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 04:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6FA524EA9A;
	Wed, 19 Mar 2025 04:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mJo82rVj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1858B24E4CB
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 04:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742358222; cv=none; b=H+Op7YC2Uf1IVFNcqBfzZobGeoHk8hi/TaYfHQ4YXsRjCa+ew3ugnfSHWaK13ljE/T6U+X4vHX1puYyriaTKKqJJcW96w2CBXeoKWe0JmPpfw9bXew9aStS6FT54XTlmUAy42doYD0OZBgbmGC1Ot8xkg2wUNDPa0krms29qn3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742358222; c=relaxed/simple;
	bh=ZHdCrIsEL5OVf2w/YxYL8NAe1VQ5Y52O/K8Ihuhxl1k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EpxKqZ61AwVqDGN6wxC476BArvqwDb2LhGFw4NBh5pD3btkb+zrULdBeGDERCadKsOFwu0e7EIBrCL+j8reCf/PdfBIebTVbMgOYVqQYzxN5zrmVyB4ahZ2sNqEi05YDgD6sl/PV0TL5G9iaq/uR7FmEWLVn8bc0reo8B8Q94Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=mJo82rVj; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-30795988ebeso65007911fa.3
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1742358219; x=1742963019; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bZnm8PUwSbbaRIS2I4Y7DkEdXZ5o/1IW7fPXlQxrNvg=;
        b=mJo82rVjfoEp6Ziay8gZyw1RJ9W0VafSlooDZt7aVNku1C/GyiQw6mTgJgXdv9YYWu
         65bzesR3PK0bzy3AL+fELTlpRwVYSYZXss2Rcc1qmXxw3o3XguSn3g2JbmiO4GIim+A9
         tSxFys9to48DhXKNxlncYy54KUsm50wrZFI5Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742358219; x=1742963019;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bZnm8PUwSbbaRIS2I4Y7DkEdXZ5o/1IW7fPXlQxrNvg=;
        b=UGUMgAMSQuDQ7H1og8m8jNASBDgs8KLs+SuJ7MoMB/MySl8XahJ8JOuGenn6Fq8Y/5
         +tGh8OMG0uXYyxCYfrZGnmBO7o3l90p5x3uXHCF1pLiGEyIOSyhvfZqaqrC+5/pJFpm/
         CfkscHVTx0CUknRazuOwvElJwUwyiipnuUx4AF8+Ues+oL0K7OI5mWkXCzHWn1n/Qmw8
         +X5uBYhJSfS+l8TRod7tTjQjZvLoPHM20eGQC5NLOk0ZL5oM/FFsvmBMA/wre9QHx9UO
         Z/4NQZLqiYYazg27iuJ5OTubE1kLE4JckzlQt0ul0F2yx8IX6ydGAbmRYezrKg2i9wgi
         XRrg==
X-Forwarded-Encrypted: i=1; AJvYcCXEkPeon1ROiZX9QMhSz7VXbEmVd8+sCjQP4BMdPjCquvlFAwXLw8ZffO+CtNoz1Yx0521t2MEpWSjJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwCDA0G7BjCJ1n3wvKHhGItsRkYW/3N+HnBo9i52UpxeioRTFQE
	DpNNSGNzG83E9IuKA8+yd7akojSeHfFpQ2tQHil9L3KCuZQyUkvFCZBn9+3FhU/RPUz58Ek1m2X
	g/itJVOF9HXLjpp7Q9xrCrXW3Ijdb0QRU0H9H
X-Gm-Gg: ASbGnctawvTZUJ2bhZIEdLkL588GZ4DtPnxzpqTjq9cyk/kRMYHUOHBBtvoF1p8kNt1
	4PMJzjSA7VQakup7NqMU/Z2i6IPE/e/GTSLXJ8igOyQ2QY99LaBS27H7FeF8DV7DYd6PhU0nO6S
	PlrtDM7Qf32XwaQmCJhfs6jg1CLj7FdnQctzezv/ox4ICGcX0f7HqNGA==
X-Google-Smtp-Source: AGHT+IFHjBg03r/3RVZ9aaB5Mk4M+GMF/ZItUsDYbR7cSHqYL8Hm2MnfjLcQTNBGrm46WGoX9JDBGpNCtwc078vB7uE=
X-Received: by 2002:a05:6512:2507:b0:549:3b4f:4b39 with SMTP id
 2adb3069b0e04-54acb195bd5mr361603e87.10.1742358219093; Tue, 18 Mar 2025
 21:23:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250318102259.189289-1-laura.nao@collabora.com> <20250318102259.189289-2-laura.nao@collabora.com>
In-Reply-To: <20250318102259.189289-2-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 19 Mar 2025 12:23:27 +0800
X-Gm-Features: AQ5f1Jos7SspTJtPnVw7V5hzjUHHfb4ilgg6YTkdTM2SmwYmpJB2tPacgIw_Nsk
Message-ID: <CAGXv+5HZBS-L=BSPcy+QJAwJE--wB1AvG-xnxu+sf1FttYtV=g@mail.gmail.com>
Subject: Re: [PATCH 1/2] platform/chrome: Add support for Google Spherion in
 HW prober
To: Laura Nao <laura.nao@collabora.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
	bleung@chromium.org, tzungbi@kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, chrome-platform@lists.linux.dev, 
	nfraprado@collabora.com, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 18, 2025 at 6:28=E2=80=AFPM Laura Nao <laura.nao@collabora.com>=
 wrote:
>
> Add a new compatible entry for "google,spherion" to the hardware prober
> platform list, using the same I2C component prober and trackpad data as
> "google,hana".
>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

> ---
>  drivers/platform/chrome/chromeos_of_hw_prober.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/platform/chrome/chromeos_of_hw_prober.c b/drivers/pl=
atform/chrome/chromeos_of_hw_prober.c
> index c6992f5cdc76..019578bc7ad0 100644
> --- a/drivers/platform/chrome/chromeos_of_hw_prober.c
> +++ b/drivers/platform/chrome/chromeos_of_hw_prober.c
> @@ -84,6 +84,10 @@ static const struct hw_prober_entry hw_prober_platform=
s[] =3D {
>                 .compatible =3D "google,hana",
>                 .prober =3D chromeos_i2c_component_prober,
>                 .data =3D &chromeos_i2c_probe_hana_trackpad,
> +       }, {
> +               .compatible =3D "google,spherion",
> +               .prober =3D chromeos_i2c_component_prober,
> +               .data =3D &chromeos_i2c_probe_hana_trackpad,
>         },
>  };
>
> --
> 2.39.5
>
>

