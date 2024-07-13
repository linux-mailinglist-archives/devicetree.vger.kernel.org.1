Return-Path: <devicetree+bounces-85540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5748B9306F6
	for <lists+devicetree@lfdr.de>; Sat, 13 Jul 2024 20:22:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E65081F220BC
	for <lists+devicetree@lfdr.de>; Sat, 13 Jul 2024 18:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0BFC13DDD3;
	Sat, 13 Jul 2024 18:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PbP6E3Vy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF2613C9D5
	for <devicetree@vger.kernel.org>; Sat, 13 Jul 2024 18:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720894928; cv=none; b=GLGf1OGod3zSm513tcBeUAljeN9t/EVBGUFBxVzmxVMewW6WH+j+XauQaD8JuO7aB3/FJ3/ryxfZ5jHT4o+lL8NLMx/HQZeNOuM1z0jQ7FM9xxrKW4P4TJ7V3vp5+oXL+aPh6tKDKaQd/9A4xQhydkZzfMFhOly+9A50imRSnKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720894928; c=relaxed/simple;
	bh=wK225UtK9kULJZqIO8UH+sthg1ntv0kXHyAI+XYzS04=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uYun+EBxdNuJa7oUPwVYvZ/RgociNgpY9BPf9Ojj96/onaYofgkGIrNAxnv7lFKRsN7djRi7Jvlqf7eQwXtWrCmHg3Vkz5fBW89Z5DjoZUmPW3lZ9f6A+l63glpinSFcjyECHmHazOxFs++6xeI1guHrM32N9h7KkIJrZylOv/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PbP6E3Vy; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-65f880c56b1so6543137b3.3
        for <devicetree@vger.kernel.org>; Sat, 13 Jul 2024 11:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720894925; x=1721499725; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Akd7PvYX49ssVnM7IV++4JO2xnx3E7OhyZAKQW51cYQ=;
        b=PbP6E3Vy1paO7eXsMLM517BNtjLJKcXW42q0Pt4RuwD8L5DWWm+bakcYNSfxhIY2WL
         UU1phzs+kZCBhpzi3Hof9BJl2cF27hK8d8vhCL+NUMvJJJPgPKLK7440bvC1pwzHUszo
         zz0jVbzpa15gNG1/ljbhlHX22UPUhB+X4RzvfJo+V2RT/YJ13sBcu1vzoBRYHlskWdek
         VO7xek+wLf9zQaOoB74lIRr7mJUuFBM9wTphava6TF+MCE5+nU0JB61ipWB4xmuKCRmV
         w2yCmIvRsKi0OYQAE7iZUFQiuEbjw+dLV66XzVUb03ZJxgi+UgBlpjHz1y3jEHguEI7f
         Du4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720894925; x=1721499725;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Akd7PvYX49ssVnM7IV++4JO2xnx3E7OhyZAKQW51cYQ=;
        b=DvhJ5v6OioPAaRVrUOJGB6RCcTEoYpfxCZ5jTd+bTRZsytlf6IfTz6u1YtEjGGlIGc
         QVK0IUQ6WR9srf+c6eXxqIUUQqiaT5FU8G4QrjGDj+TX9Taf+OBgzIkUphbe5bCedUq+
         IniTOP2OmTHy/Z6UAw8soGKXfhGdJh0IDXzA0wB+6edrgtqZXbR6oKlcK4Sr74dtgCvL
         tQO80Wt/kMWOwGmu9dS9k6AjGctoBgec62oUq0UnKB7+gilR+TNAJ7qj3l9MmAley+Vu
         FbrtCC3f8ZzEcTrGqc0BOx1XqJuA64B/MOkhCtHI8fkVofa/faQilNyAS49ipeMPH+qr
         ycIg==
X-Forwarded-Encrypted: i=1; AJvYcCUwGPDpX97gFOQtjD5WoRCQjUsgTZHzPICcE2VoMkNcUQ7KFRV3qCHbAIafXxQ87OxvCFy9CccRczY2cGPrmlTF+lG0To20SNwMkA==
X-Gm-Message-State: AOJu0YxvsGKunjI1VxLSOOhxGYNjNZjv5l29kO6wXhlq16J1ADcLg/1F
	augJHMpauuGYMYTTRU83TckNJXyYDJnTQd5HpBZmK7lcZDDvSIjJNEqzcjpZ/BicJ2pmld7eMCs
	wJdlaMtLeyPvLCiIsn/9IuR/JoHFD1yqhVCPvZg==
X-Google-Smtp-Source: AGHT+IF7EMeFiP/0SrTpXb2U5NKFBozXUrANl7EuTHc+/YdpAaGakABMFnFuzd0mAN5AT73VZN70QaHdsJw+9r4Kllo=
X-Received: by 2002:a81:a552:0:b0:65f:dfd9:b672 with SMTP id
 00721157ae682-65fdfd9b925mr17814317b3.11.1720894924969; Sat, 13 Jul 2024
 11:22:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240713180607.147942-3-virag.david003@gmail.com>
In-Reply-To: <20240713180607.147942-3-virag.david003@gmail.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Sat, 13 Jul 2024 13:21:54 -0500
Message-ID: <CAPLW+4=G=U24jw+KNCibqPQUVFkOp4Rk8AtM3mnJ89+ShW+G0w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: exynos: exynos7885-jackpotlte: Correct RAM
 amount to 4GB
To: David Virag <virag.david003@gmail.com>
Cc: phone-devel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 13, 2024 at 1:08=E2=80=AFPM David Virag <virag.david003@gmail.c=
om> wrote:
>
> All known jackpotlte variants have 4GB of RAM, let's use it all.
> RAM was set to 3GB from a mistake in the vendor provided DTS file.
>
> Fixes: 06874015327b ("arm64: dts: exynos: Add initial device tree support=
 for Exynos7885 SoC")
> Signed-off-by: David Virag <virag.david003@gmail.com>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  arch/arm64/boot/dts/exynos/exynos7885-jackpotlte.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/exynos/exynos7885-jackpotlte.dts b/arch/=
arm64/boot/dts/exynos/exynos7885-jackpotlte.dts
> index ed2925b4715f..0d5c26a197d8 100644
> --- a/arch/arm64/boot/dts/exynos/exynos7885-jackpotlte.dts
> +++ b/arch/arm64/boot/dts/exynos/exynos7885-jackpotlte.dts
> @@ -57,7 +57,7 @@ memory@80000000 {
>                 device_type =3D "memory";
>                 reg =3D <0x0 0x80000000 0x3da00000>,
>                       <0x0 0xc0000000 0x40000000>,
> -                     <0x8 0x80000000 0x40000000>;
> +                     <0x8 0x80000000 0x80000000>;
>         };
>
>         gpio-keys {
> --
> 2.45.2
>

