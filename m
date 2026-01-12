Return-Path: <devicetree+bounces-254189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E56FD1566E
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 22:17:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A48F43006E14
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 21:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C561231691A;
	Mon, 12 Jan 2026 21:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="el1d3d3+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f52.google.com (mail-dl1-f52.google.com [74.125.82.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E20C306487
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 21:17:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768252621; cv=none; b=MMTg/CVECAjw2zCRKHFou3BXKIo4UTEXZrdfTAI3He8gLmTi11O/ewYzCteKzgT9G+5cCHu9pm8ZrncMhYUIN2/9nhEs8NiHAxnpLcH6hId+WhP/5rEHDbshYjqm5BKdh4hP79DbfCkPJmSQcp8u7jyVnOcCyGFUCzJVkZEY5xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768252621; c=relaxed/simple;
	bh=g2YF89kk6dgzA2Gn2kZvcq2mpOIMei+glvFcHBCiSqc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i2IYqXIEnd60wXtnYwNs7Z1NQEwU0JnzM0IH7viCxtf8KPsTGrYr+FFd3PD7/e3eGHRao2G9rL4OdlxGyn8Ul+1cGQA40ChVS61V0ztN011ZExixTgKqXYWTe+4k7I7b6t8loouKaTz4u6af16gNQIiBfkbWNFxahwRJZoVzamw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=el1d3d3+; arc=none smtp.client-ip=74.125.82.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f52.google.com with SMTP id a92af1059eb24-11f36012fb2so8970759c88.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 13:17:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768252619; x=1768857419; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ldGPuGZG523RSoakys4MiKPAfsrjJwPEUi50RijOKj4=;
        b=el1d3d3+oeW9rgvE3cICM2E/ykmlD5tzzQ7OpY2a9b9Uexs4QFdPsIomStmH4enDbz
         b1l9EDNa1zSPQW05vUDGWm/eRdaZcl1FaqNRATzgltfci0qvem6/9P2Xr/s1qZaWRYCw
         c3LPqwsxilRf1zXW/vmJzZ9ZEFpTvi6Q091T+pSBLh3vrg+J3WmxsMghf8oUvkYHQcJ6
         JNSI7ZeJSCfpGXPVTbINHXRQzeIfVtjRVIHCxtUTl0AAcBSo5P6LKY+QLpjdx4GWjhrl
         LW19B0a07oJsp5Xjx/GP5Q8p9QSyWJ6ejLyKIO4jD9+jgnvnoAPd3RIhxsr67D30FfsY
         qCKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768252619; x=1768857419;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ldGPuGZG523RSoakys4MiKPAfsrjJwPEUi50RijOKj4=;
        b=V/Q6AJLjZoaqpe3HHBcgdVHtckqHohty0s9rpvtYEPcLprWudnuzRA+0BQ6jCCwQ6N
         M2pOkuwczBOT7zN5hwKIRyoklQcSvvg8sbAdHy8EmWPDYkxkATHI0IdmPSnYKaB66ELx
         Gzjlg1XIC88uKNpKfPjRGj2XdFwjQIbBNA/5hCaZXXaLdXZIKAk3VllwdEQZtR9WHjW2
         cj1W7ifjYmvyVyc/1kOG4c58HpvcCTjFQ679VmwREhNQf3ZU55p4doSJOo/frKqihjrT
         opUFmrOk/Phm49gFAIdyAPVlJLc05a2wvkvL0I8dOFWIslrKFjxvqUbAneMW2hE5Fqe0
         RR+Q==
X-Forwarded-Encrypted: i=1; AJvYcCV4T3DIXXIZQy0wwWYlTEWnV5kv6jZRctziMWT3R5+HzfC9FUb6Iu71OWNJiTkhbTQebBVm7aydoU1n@vger.kernel.org
X-Gm-Message-State: AOJu0YwRJkGvIUKDWCEIl+ZFQ4lDIOLL+Pq2rRRjXKHZJlxBdAjoWIoS
	0tr+2dEO7ScMxU6gFhmN5I802TbkjkzR30RWA2zesDIIi8vVi5SUfCg4o6PPMJHi+JmTjSQP+3/
	KlIq1OsqL7d0yuP9gW7g0GNUfcIPWAKE7q05h9QA=
X-Gm-Gg: AY/fxX5M7sQehBRY7Z/r6u+ziwmtMEvi7zxZG3aOZfMrx+ChmWA1i8piK5UZRnhG5dp
	Dp6M7NhJ6EHbgjWd5feZhluVTxsSGeLMrmkzmC3Jo944MoL7nFhjUEhcA9oBNFTP39k/9gm+2M1
	1/v0t/89/Y3Q1tQLphINXdZ4GF1RqsJDo6HMV/rdjBuHeaB0Ieh2GtVcI/AVqcUSfNw2qORP55z
	FjRJfDRCc3yzq5us5oyMBX05QEhdoa11sF8zUyZ9YUsWDlv0YJTlBvv1l+F1x1oWyTHItpXYu99
	3rp+VMxK
X-Google-Smtp-Source: AGHT+IEOZLPJwj/S58CaKJrV3wQ5O6ZbtxN7uz0O09Ew9vCMcJuDYyeoj1bB1o5HdriBJYahGUi2SE9K8dooarY3xtM=
X-Received: by 2002:a05:7022:670f:b0:122:1e3:534c with SMTP id
 a92af1059eb24-12201e35454mr14780318c88.46.1768252619049; Mon, 12 Jan 2026
 13:16:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260111201040.162880-1-anirudhsriniv@gmail.com>
 <20260111201040.162880-3-anirudhsriniv@gmail.com> <20260112-upbeat-gay-chachalaca-ecb74c@quoll>
In-Reply-To: <20260112-upbeat-gay-chachalaca-ecb74c@quoll>
From: Anirudh Srinivasan <anirudhsriniv@gmail.com>
Date: Mon, 12 Jan 2026 15:16:47 -0600
X-Gm-Features: AZwV_QiIk_am64aGoJ59TKkJjjSWuft6c_UwxN_mAcvJf8KPJOFciUjwqcXNWP8
Message-ID: <CAJ13v3TqhKyT62NZFRz0dP0tov=q8fz99X_HgrJnwkd6Y5nEig@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: Add Asus IPMI card
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

On Mon, Jan 12, 2026 at 5:48=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> > +
> > +     leds {
> > +             compatible =3D "gpio-leds";
> > +
> > +             led-fault {
> > +                     gpios =3D <&gpio1 ASPEED_GPIO(C, 5) GPIO_ACTIVE_H=
IGH>;
> > +                     panic-indicator;
> > +                     default-state =3D "off";
>
> Missing color and function. Or at least label.

I will add this.

>
> > +             };
> > +
> > +             led-heartbeat {
> > +                     gpios =3D <&gpio0 ASPEED_GPIO(A, 7) GPIO_ACTIVE_L=
OW>;
> > +                     linux,default-trigger =3D "timer";
> > +             };
> > +
>
> Drop redundant blank lines.
>
> > +&mac2 {
> > +     status =3D "okay";
> > +
> > +     /* Bootloader sets up the MAC to insert delay */
> > +     phy-mode =3D "rgmii";
> > +     phy-handle =3D <&ethphy2>;
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_rgmii3_default>;
> > +};
> > +
> > +
>
> Like this as well. It's a sign of sloppy coding.

Will remove

>
> > +&fmc {
> > +     status =3D "okay";
> > +
> > +     flash@0 {
> > +             status =3D "okay";
> > +             m25p,fast-read;
> > +             label =3D "bmc";
> > +             spi-max-frequency =3D <50000000>;
> > +#include "openbmc-flash-layout-64.dtsi"
> > +     };
> > +};
>
> Best regards,
> Krzysztof
>

--=20
Regards
Anirudh Srinivasan

