Return-Path: <devicetree+bounces-189771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E81DAE9747
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 09:55:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FE931899231
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 07:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E49A25485A;
	Thu, 26 Jun 2025 07:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="JrArrabW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC7323BCF3
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 07:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750924500; cv=none; b=UXCGdzjJq4IC4Mv3lDGrKjXUhMrys5KCVCd6XoqZatQNDBVfjU9zD/CfcEgakkJU5M4SAVH18YhC0kQSI0nd3Ak5gOiZZMc+/htlq5AB8e0E5TxpHU1Gn2ZBQjxg08mf8o4nOYVKk3cA15cqnjlSvnxlVmU7xOZgSggrpbGpwK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750924500; c=relaxed/simple;
	bh=2YyhV0xDa/mfv+T4PqnDspYddj+Y2lZEIYXlGvWlAos=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FhxqdkCph0QJvxLuJiYlmH0tDb6kHsupCJYhNWi+CBZi7aIwvNao5PHTXh1wpVZkusfG6gCVBkVL8D55/tdf8JPf8nzkMRV2jQvhyuFBePahLn8E8enlb+eaQKUOcS2tH+Beyy5IqI0O+ZBcMs3RBLVHBZR1Xr+3vte0CbAplFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=JrArrabW; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-710e344bbf9so8080977b3.2
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 00:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750924496; x=1751529296; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d1dn70L9Gl0okqRnxfuMbiMavX+Tx3Hoii+vZ39ERk4=;
        b=JrArrabWx4x62JJA+sDvyU/WWWdL2upFZcVR1rr6eZelRI5mlq4fkZlKTYt4cmzByy
         ZkeO50gr2LYh9llYB3hJNnydMpOlty7/GteRupWkOmQTwgmFhFRbCSboVRbM2pFRBnRh
         fa/KfLn11QAYDiC4kgIqpR7N5OXikXPWj86cRA3HATI+QMZWpMOL7sKwQuSKdVYtXo+9
         vQQzZkigPRQWKFOV31rOUBKyaAFdV6nMTayhsVEwJOQRXcAv7+pK2crP5khK13N1UdGp
         I0ETgoYqf7yMB7cBvL+hIjpJuYQ0Z2CE0XO+Qfw0uVVTjYm7a+szN4QDoPLDq45mderc
         WLSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750924496; x=1751529296;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d1dn70L9Gl0okqRnxfuMbiMavX+Tx3Hoii+vZ39ERk4=;
        b=a2qh4k3GK8ALs7QqqNBYJ85dIfaiNLL8JXbBQQI1JlT5NjP4kZwEq0nmINZakj15ex
         HESjfNgheqhcgqEQv2mm1Rq36OGpME/vUXH1sBMPP2g6AphT5DSz5SIx6Yj6cvqB94A3
         aAKXaw2XSY4EniJ24mWfSXntNUFv0rwfTn5ryoh6fwggNo4itCYTyGo39YacVl3GMB6q
         tmLg6XTN+DwTjtgD9lt9dtOfm2mH98t5p8YWd41d7XcfflM9LEokGE+K7vLMMH4y89Hj
         6VXmY8mXynnNLVtyyWO5hDI4LbXaUuY1leCEptaVTpx0rnCR2gXXyCshapqp0i/rNLXk
         8LuQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkK+w5L2BLpKX3kAr/vr1HoBNkwPyOrodS31f0FkRaLqERkH3VwcV9VGT2YFiTmMvjXDuPmq0yrUAe@vger.kernel.org
X-Gm-Message-State: AOJu0YyUYfDBF1zbj0qEydXntHu+cr9QunORg0D8TcagTW80Uhb4esbP
	gZcEkxuA6x72s9ehuWg+xYc6TaYL43NXQ8CJT91K1zNbKCXuTnGeQwpBLXGC6Ma2R/bzjXBfaf2
	8ynryK/qwdUzbfmMjlJsFzMaVjs5oUhZbquzrWV6KgA==
X-Gm-Gg: ASbGncsEf5Si4t9HSKs+64A5/YFE/T9ajtin5KXxV/DeW0w+N2fmaO/hFqemc/EeKRP
	a+lc5oXp3r5YRpjJD4CcF8654UL3X5xD+lmnCUsOJ79TgYduUvm2P+iLV3/1/9g0tx2QqqgUHMW
	7wqI2Upy7b2zl/oJQD+o4vdbRO8RqCLCPrtXrWwe7QJ8A=
X-Google-Smtp-Source: AGHT+IFC7YL8EIIVDJy1BW5Otvm9vL5iJJX+MLNQi9AgPU+F0jT+Q6hOqkXPvsv54gH4IrAoTdOn98vPQafvJJOUmGc=
X-Received: by 2002:a05:690c:4c04:b0:712:c14a:a36a with SMTP id
 00721157ae682-71406dd9041mr88924747b3.20.1750924496096; Thu, 26 Jun 2025
 00:54:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250623-k1-dma-buses-rfc-wip-v1-0-c0144082061f@iscas.ac.cn> <20250623-k1-dma-buses-rfc-wip-v1-1-c0144082061f@iscas.ac.cn>
In-Reply-To: <20250623-k1-dma-buses-rfc-wip-v1-1-c0144082061f@iscas.ac.cn>
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 26 Jun 2025 15:54:43 +0800
X-Gm-Features: Ac12FXyAYMUSOHBFtbXxToArhHLgz9bWR5U78R9veUVEDJrTHtLo4Yw0VDlqbVc
Message-ID: <CAH1PCMYbP1mV_bO8f94qTbjqwairV3LQ1r1=B1Rmuphs-6VjxA@mail.gmail.com>
Subject: Re: [PATCH 1/3] riscv: dts: spacemit: Add DMA translation buses for K1
To: Vivian Wang <wangruikang@iscas.ac.cn>
Cc: Yixun Lan <dlan@gentoo.org>, Ze Huang <huangze@whut.edu.cn>, 
	Alex Elder <elder@riscstar.com>, spacemit@lists.linux.dev, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, Vivian Wang <uwu@dram.page>, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 23, 2025 at 6:04=E2=80=AFPM Vivian Wang <wangruikang@iscas.ac.c=
n> wrote:
>
> The SpacemiT K1 has various static translations of DMA accesses. Add
> these as simple-bus nodes with dma-ranges. Devices actually using these
> translations will be added to or moved inside the bus nodes in later
> patches.
>
> The bus names are assigned according to consensus with SpacemiT [1].
>
> Link: https://lore.kernel.org/r/CAH1PCMaC+imcMZCFYtRdmH6ge=3DdPgnANn_GqVf=
sGRS=3D+YhyJCw@mail.gmail.com [1]
> Signed-off-by: Vivian Wang <wangruikang@iscas.ac.cn>
> ---
>  arch/riscv/boot/dts/spacemit/k1.dtsi | 53 ++++++++++++++++++++++++++++++=
++++++
>  1 file changed, 53 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/s=
pacemit/k1.dtsi
> index 14097f1f6f447bd33ff3aaa07382d27ca8e59a48..99c76997b367f733c9dda2c30=
dd85817294ef9b7 100644
> --- a/arch/riscv/boot/dts/spacemit/k1.dtsi
> +++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
> @@ -571,5 +571,58 @@ sec_uart1: serial@f0612000 {
>                         reg-io-width =3D <4>;
>                         status =3D "reserved"; /* for TEE usage */
>                 };
> +
> +               camera-bus {
> +                       compatible =3D "simple-bus";
> +                       ranges;
> +                       #address-cells =3D <2>;
> +                       #size-cells =3D <2>;
> +                       dma-ranges =3D <0x0 0x00000000 0x0 0x00000000 0x0=
 0x80000000>,
> +                                    <0x0 0x80000000 0x1 0x00000000 0x1 0=
x80000000>;
> +               };
> +
> +               dma-bus {
> +                       compatible =3D "simple-bus";
> +                       ranges;
> +                       #address-cells =3D <2>;
> +                       #size-cells =3D <2>;
> +                       dma-ranges =3D <0x0 0x00000000 0x0 0x00000000 0x0=
 0x80000000>,
> +                                    <0x1 0x00000000 0x1 0x80000000 0x3 0=
x00000000>;
> +               };
> +
> +               multimedia-bus {
> +                       compatible =3D "simple-bus";
> +                       ranges;
> +                       #address-cells =3D <2>;
> +                       #size-cells =3D <2>;
> +                       dma-ranges =3D <0x0 0x00000000 0x0 0x00000000 0x0=
 0x80000000>,
> +                                    <0x0 0x80000000 0x1 0x00000000 0x3 0=
x80000000>;
> +               };
> +
> +               network-bus {
> +                       compatible =3D "simple-bus";
> +                       ranges;
> +                       #address-cells =3D <2>;
> +                       #size-cells =3D <2>;
> +                       dma-ranges =3D <0x0 0x00000000 0x0 0x00000000 0x0=
 0x80000000>,
> +                                    <0x0 0x80000000 0x1 0x00000000 0x0 0=
x80000000>;
> +               };
> +
> +               pcie-bus {
> +                       compatible =3D "simple-bus";
> +                       ranges;
> +                       #address-cells =3D <2>;
> +                       #size-cells =3D <2>;
> +                       dma-ranges =3D <0x0 0x00000000 0x0 0x00000000 0x0=
 0x80000000>,
> +                                    <0x0 0xb8000000 0x1 0x38000000 0x3 0=
x48000000>;
> +               };
> +
> +               storage-bus {
> +                       compatible =3D "simple-bus";
> +                       ranges;
> +                       #address-cells =3D <2>;
> +                       #size-cells =3D <2>;
> +                       dma-ranges =3D <0x0 0x00000000 0x0 0x00000000 0x0=
 0x80000000>;
> +               };

This looks good to me.

Reviewed-by: Guodong Xu <guodong@riscstar.com>

>         };
>  };
>
> --
> 2.49.0
>

