Return-Path: <devicetree+bounces-253732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CF7D10EE3
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:40:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6EB933004CB4
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15E60331A4B;
	Mon, 12 Jan 2026 07:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OQmSI7LZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B5E331A5F
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768203618; cv=none; b=JS0WBKzK5AbIXnMV61U/UAkwNpZYnwola4eydtGcNAw12MS7x8oiCXYjjPtzopcV4BAouc0B7WWV31XGo9yPkHxtnC+RCP3xh90zgipVX7D8VHD4sMwJdhSOfQpwdHlpKqd8VQEkp64oRh9BuAh5unlnSFSDJIu+izqRwFSeGCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768203618; c=relaxed/simple;
	bh=ev9xTjoNJJkOBq6EGp24CMLbJqYRu8mnLsndb/zy6Gs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lvX3FK9VuXoMu4kMeCVj1A+bvyLTA5BgipNVbxl/NjdC9+KPk6w0ufnizXtwTdnMBhKeis15c6N4qqD83fViaP4xTSVRZYpRlAPi+QgY8XlLgnfHLx837Sb5bfskRMrBaKMTQMc/gDCbdXzWxGL/aFtcmm/g0eTdkMTIOa27osY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=OQmSI7LZ; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-37fd6e91990so59142201fa.3
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 23:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1768203614; x=1768808414; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1n52GJUXMp/HKtmkEtsDqFReft0eMQBSrCUNh4f3w4M=;
        b=OQmSI7LZsb9zodiZu//qs4SSDNwOCiQ6twl9B3Hn6XDjOhzznTWuBRnOx4fEjxtaoB
         1BEBS1GZ0tVPC2CsEhaVLeHDWb0qVfjt7VJAX6TGYtpROCglHeoyORcM6oxpzi+VIcnv
         9VqZcAGlAtnw+MQzsQVOBnGJcFhgtn5Mf0n0c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768203614; x=1768808414;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1n52GJUXMp/HKtmkEtsDqFReft0eMQBSrCUNh4f3w4M=;
        b=Wny/RjSRCI/ElUR679hpuwhYOGCIdELXLtiWFY5m53LwtTpdWrNH+qo4+bq2MRsIIB
         w81wQBYy2ZNr4W1JEjyLy0LqcSmRaL3pIJn8ZpRuECCP7BIUk4vquC5jUvkdMd5Z5aGR
         0VTLT0MXzYrzCWx9/Mhp4zhZE2XCyeq98306DCFPoE0MFFq1XSjvbrcikMWAiRfjH0s2
         kvQ3uA4vQ1uR2ALyZcW3Z4fLFPUFWOCWYVpQUOR77cdjenw75kO9BVRqP57JzlxiYlkX
         F8OGkpbYFCoYOIpAPKxyIl++/2p56PRMVtgqLPkWRNohGKjWetqRdTmni+lswuJ0VcgE
         DCXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcDmW0YE/sF6EMKby/J44qygdgiC6k6PXv4fLdFGpW6c0yyOcIFoANrFRdb5d861vzICbpTlw2JMLG@vger.kernel.org
X-Gm-Message-State: AOJu0YxPYr0WRn46M9fo9XojmOPAF4hUWbxBlTvyiwtkJPbLpO7jKwrv
	8dWwf0B4hzj7e2Q6QxuB/Xyjr1+HC3Dzh+0xzQXLx3gY7KdSPfE3vicwtQex8eJogq3snp4S4wz
	l8goRS85NXRWHiBoGftqcS3mV5sf1NLp3m05AD9zt
X-Gm-Gg: AY/fxX7gbFVen4+mWqA656H4jyt6jSGc96x1dyFt3MAyrniOJJxDo67ZSq+OCY4c4Pb
	8xaFcPeCOrpCRUo++1I7y9cjPu2uDFruV4gg73FgyJBWp+105elQXlkWobF1T8f6puNIeGXxlBm
	q4LWuH8tOuiCzqmnKxIU27rZgpJDxSNY0yCDmVJhjPirxFOqw9niARAtpqbLbWMFsOPfCFRYi+d
	er6hRAQM64ki9fSyKApq9f3Kc06JtSjcrYXWNgopVp4NteRKKniVTvBPccxUWNFPcjcuSIepfAP
	UYGGnmkwXeQDXoWAtrRELJ/j
X-Google-Smtp-Source: AGHT+IHUZT28NEm0pfAfk51zPeTo+Gj4RHUge+kB6DYLCdNVFDgCN4Sz5SqqU/frHG9MN/FkGcGoa1cuyd/52Y4L5JA=
X-Received: by 2002:a05:651c:210f:b0:383:31cb:e3a8 with SMTP id
 38308e7fff4ca-38331cbe654mr19249041fa.40.1768203614432; Sun, 11 Jan 2026
 23:40:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com> <20260109114747.37189-9-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260109114747.37189-9-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 12 Jan 2026 15:40:03 +0800
X-Gm-Features: AZwV_Qg9LwCLxMIXkGb-DD3-ik3Cc_aZ4i9dLvLfg60QSxVSU71EYiNaKoNhU6g
Message-ID: <CAGXv+5H3YLUahzOKP4qkUq=v9vz-uXv_0uOGSEsTKWgXoyUJ3w@mail.gmail.com>
Subject: Re: [PATCH 08/11] arm64: dts: mediatek: mt8173-elm: Fix dsi0 ports warning
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, matthias.bgg@gmail.com, sjoerd@collabora.com, 
	hsinyi@chromium.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 9, 2026 at 7:48=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Since only a single port is present, remove the inner `ports`
> parent node and just declare the single port as `port`.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/bo=
ot/dts/mediatek/mt8173-elm.dtsi
> index 59813fff7833..dc064cdcedb5 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> @@ -206,11 +206,9 @@ target: trip-point1 {
>
>  &dsi0 {
>         status =3D "okay";
> -       ports {
> -               port {
> -                       dsi0_out: endpoint {
> -                               remote-endpoint =3D <&ps8640_in>;
> -                       };

Nit: while at it you could add a new line here to separate the child node
from the properties, as per the dts coding style.

Either way,

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

> +       port {
> +               dsi0_out: endpoint {
> +                       remote-endpoint =3D <&ps8640_in>;
>                 };
>         };
>  };
> --
> 2.52.0
>
>

