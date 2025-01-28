Return-Path: <devicetree+bounces-141474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FEBA20DDB
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 17:03:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 176851884115
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 16:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74E4718D622;
	Tue, 28 Jan 2025 16:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NSEVDD81"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA0318A92D
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 16:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738080218; cv=none; b=Eg79Ct+Q5XPp1cjp65ujNNyRHLvYSV2cd8n3ntzODocn0slisgCePxJ5YSsIi6L8S37GRu/BmKFlbaruKb5irClnhaQgves1H2X7Ta6it4lNl672QlvkBSmEnCBS3z6JIrnEIAH/SrsPN//phV43gNiyEdeUFy9ShpFGuJNrBY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738080218; c=relaxed/simple;
	bh=+t8hjKCoqo6TQnZ8M8jStHab2qUU8bkeSurEQ6U78Ck=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mt5JOkoU2sKChZ+7/Xru6cle/9b+ytYXefAQY0h/cFXAA+iUZitTfXJPU0Jrq+4I2DUIFCj3Sp4AL+Qrxi9rkkZNkh5bXAgMukJ5XGR/a+rnUGpHOEAIgsbBd3BH51O3c/sKjLySvZ7awS17CFnjStWBS4v+YX6LLCfj8+u/VME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NSEVDD81; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53f22fd6832so6462850e87.1
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 08:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738080215; x=1738685015; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+t8hjKCoqo6TQnZ8M8jStHab2qUU8bkeSurEQ6U78Ck=;
        b=NSEVDD81SvMGz7RNNgGsKAWEDhBydSGV7OC1LIv98a3v2x0DN8Lem3Zzwl03hoArVm
         S2tbeq/rtB+St9a2aKQkKFrTKDSYXh+wzaV8rzdDphwirHXp5t3eLA1VAn2Oo4pUiabw
         UCUPFetBZ02Hg0rlO4z1BKS21InzoLLzjwcZ6sQ9QvHDcuHXeJma206+hw8IBspf08GQ
         3JeOPHrk75o7j033KRGteS6bwixDO8nYWzSY9ODTEDxsNh3hs7xVL0JoukBh0yt/u7F6
         79Ak7DkA8eZ0nvlUyCt0LrqLmmC3ADfxUYXfNOY7nYJrhfa6DeknsNAZbXk6HE3Hqnii
         baDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738080215; x=1738685015;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+t8hjKCoqo6TQnZ8M8jStHab2qUU8bkeSurEQ6U78Ck=;
        b=R33JoZN7MsQ162vQXpw0LSQK0SEDUBIVXRziJ4EvT4lKp2FTOr3GrodobcbhoWUH7z
         gv04xr85KR0fsUDGf6qLPrvdL9iB1nYvgfXxRFVq93/cMNAhRkUg+SWG684Z5YLS6WWm
         8ol5laXUp5IzCzEP7/TQUOW/bFbt3x4D34xbtFdxsjK0qGZs8JHzNjK5LRcPzfZvkEmj
         6Bk5WGT2kD+rTPBbBrEPmRnriWwQWq5XmsWq8E6jrz3Mn7w5N+FTOEI0O2ZSFEDu0/eB
         TK4XB6Wgr0IeRUN56ZPaBy9AJyLoqN/sija3GAStKkqIei8lFRsn3692FnDIlZpMnkAF
         j9SA==
X-Forwarded-Encrypted: i=1; AJvYcCVEzF+LiGxg1LYaK/3SMPemtagz0xJeQxxDmZn29K+8y1AyLeiNE3y/Bts2P86pQe8dG2KwuxFyBW1a@vger.kernel.org
X-Gm-Message-State: AOJu0YzrrTlZ20wLd+bcfkAddh3gsDBbiBhngMdq69iKDJ77nWkgIjRY
	QqXih8wHPjrkmD+wbZurK46B5VnQU9Rxv5xj1UQhENfNbTuwSWKqdIEJx1/l4BLStoW7AvcVc4b
	weCcA8rad6oGA5A0Tu4xwtjy9X4omVYGDNMaQ+Q==
X-Gm-Gg: ASbGncv0QC+Ef190y+cQC2qH1ci/Xu9xSiO/B7PMJJBoPTPQ1zn0CW6rpMTNpdamilV
	DTzd1XdCv0Zp3QjeSrZVsnL9o7sOIJw6Eu5qQAYBOaUZvx4xqxXQRywZ9pEchh08pyJUUtVU=
X-Google-Smtp-Source: AGHT+IHzEustcu/b8mVV+IGZGzcJdRDgXEhBHXrVJD8zlFDPDv79N0T8FHjBdECXZ69pHyAUFPzDWK0nx6iJEXfxEmY=
X-Received: by 2002:a05:6512:124e:b0:540:2549:b5ad with SMTP id
 2adb3069b0e04-5439c246d35mr15256733e87.22.1738080214692; Tue, 28 Jan 2025
 08:03:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250121-03-k1-gpio-v4-0-4641c95c0194@gentoo.org>
 <20250121-03-k1-gpio-v4-1-4641c95c0194@gentoo.org> <Z5FPJLzAEVXGWJnE@chonkvm.lixom.net>
 <20250123113042-GYA38135@gentoo> <Z5LOdh-4UxRtteOy@chonkvm.lixom.net>
 <20250127181726.GA538260-robh@kernel.org> <20250128031712-GYB47737@gentoo>
In-Reply-To: <20250128031712-GYB47737@gentoo>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Jan 2025 17:03:23 +0100
X-Gm-Features: AWEUYZn1ZQkjXChIgaJ6psXXGwkFFB-eH9nO-EAMkzADocFTLmeDtVOyD7Nrf64
Message-ID: <CACRpkdYbSOHD9UH5=+qjztxS3Cq_rxaoOT9tFtD8ZWm9zQGnPw@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: gpio: spacemit: add support for K1 SoC
To: Yixun Lan <dlan@gentoo.org>
Cc: Rob Herring <robh@kernel.org>, Olof Johansson <olof@lixom.net>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Conor Dooley <conor@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Yangyu Chen <cyy@cyyself.name>, 
	Jisheng Zhang <jszhang@kernel.org>, Jesse Taube <mr.bossman075@gmail.com>, 
	Inochi Amaoto <inochiama@outlook.com>, Icenowy Zheng <uwu@icenowy.me>, 
	Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 28, 2025 at 4:17=E2=80=AFAM Yixun Lan <dlan@gentoo.org> wrote:

> [Rob]
> > If Linux can't handle 1 node for N gpio_chip's, then that's a Linux
> > problem. Maybe it can, IDK.
>
> I haven't seen somthing like this to register 1 node for multi gpio_chips=
..
> To gpio/pinctrl maintainer (Linus Walleij), do you have suggestion on thi=
s?

For Linux we can call bgpio_init() three times and
devm_gpiochip_add_data() three times on the result and if we use the
approach with three cells (where the second is instance 0,1,2 and the
last one the offset 0..31) then it will work all just the same I guess?

foo-gpios <&gpio 2 7 GPIO_ACTIVE_LOW>;

for offset 7 on block 2 for example.

We need a custom xlate function I suppose.

It just has not been done that way before, everybody just did
2-cell GPIOs.

Yours,
Linus Walleij

