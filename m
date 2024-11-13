Return-Path: <devicetree+bounces-121540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B869C713D
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 14:47:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82F4F289CAE
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 13:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDAAB204027;
	Wed, 13 Nov 2024 13:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Sr3hiz4L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE50D1EF956
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731505495; cv=none; b=GhcS3CaaWC5jPIBB4QZuyCns5EvCva3FWFLdD0b2awMiNfAEafSX7PMDkfy7bT6cL0VPTkvG24shhoY75Mh++r2DnrSNNqx8L0BEMOdgmh4nkRqFa7iAxUY3gwWrdmiuh6RGSdn0Wi+vBYp93ZIrJ42d+cqmVcdNI8k/IdIShis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731505495; c=relaxed/simple;
	bh=ps1gyRF4sV/jPf5mXq5CfuoualCziyGjdNljGcpAjsM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=smcfoG45mk593cOafL5GQS9hmSGTiC2SuBqYKla2cwNraamgQyUAUiKwuNMJUiQXJ4Ik3hoSbBl1kPjSQbQVbJoCr2VphC82qnBoXfXof9p40YJ+ExJaqsc4UAnUAo11xrLlGLIyVxpN+7FWwS9cub+Q/CRGed06soLNKNH42PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Sr3hiz4L; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2fb5be4381dso61183371fa.2
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 05:44:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731505492; x=1732110292; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n8EhfYVRnnDaaDgm96KhczVA/W2i6QYF4ETYO5Uyxvg=;
        b=Sr3hiz4LSNME5W8AzoJ1HlE/P19gGYTPw+FXLvBWKHEJ+nz9/hytjT/ABctmUGdp0h
         5g6edP71Yc6vDKSwFP6J3JpAAPWnLTMEATu9Z+qYj3QUBgr/DReHyYQ4aYOHozjgy9tG
         HJW91gm2wDGvjzCsk6BW+7z4m9Fdwp9/GSkK2xp1JtFYqWBujRbcDH9XL2arv192ZLJU
         rKKAg6nF/qm19f+imMtmGdMS4y5lPg8BRUfOClCoewhjc6zjjTwjWA+CuZFa6kDY3kuP
         8YXDI/xZLlC1Q9TP0x9WmglCzwGs8KLAbNmYk7WD3PrLFb2n+Az7ppOorwzku568UV/x
         wi8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731505492; x=1732110292;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n8EhfYVRnnDaaDgm96KhczVA/W2i6QYF4ETYO5Uyxvg=;
        b=BFxaem4KJ65C5wrAqt57/T/FdQbEewEOecftnAjC3ad9h42g2c2OB996yetru7hf1e
         ZR5ANc1/z51pGUnK1+6CnZCpkj1jw2fxcRw+mpMT8g5xcuxuHiqvzkHWzQkIcGsAXdSn
         d7ftHeGvw5FHHdCcVvU2t3SbPt3KsuLtGXkK65FIlqNDiOAYSWVvfLKy7ncqYvBllKxC
         j7O0aZQP9zlY864HlQMd9mdPa7CAsrvQ3AeD9gqSROFqJcVmVi5IJ5vyMU/zCOLc/cQI
         4dd1H3q8GGxMfI7bm8TnJJDkhfjGc8vYWrhHKrXk92QrQlYvkFgc1c/iJSxyTiwAeFrc
         1ExQ==
X-Forwarded-Encrypted: i=1; AJvYcCWw58cvdqBppfslaXZ6lBUfpC0Ilddn/LZ86GvLMZnBXsCaqPm6dAbjni2fBSZ88AzcIT6+N/WLG2BX@vger.kernel.org
X-Gm-Message-State: AOJu0YwetUcOff3GflrTdXrACW/iLCoHIXmHRHF3VVx1Ly8rgsUtebsd
	MiGrxDgkh8q+2KWngbWiy3xkRICtWE+tjMzTwNLxoSvoXfXoMSjYSCtQOuykY5L+ADk8QLxUcDj
	HPtdNc54bgHtQw7IYWnTiVgCMbD2O8zjkhM1QIg==
X-Google-Smtp-Source: AGHT+IG+b5aWSuZA3i2xX9eloxv3604GVUnlQQDb4BSsgZiEIKgWWJy1Jg5YtPgwVqZ9JZiAd6sMw7fi49j+Y5nheN4=
X-Received: by 2002:a05:651c:1542:b0:2fb:5038:3eb4 with SMTP id
 38308e7fff4ca-2ff202686a4mr114192251fa.29.1731505492020; Wed, 13 Nov 2024
 05:44:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241106100741.173825-1-y.oudjana@protonmail.com> <20241106100741.173825-8-y.oudjana@protonmail.com>
In-Reply-To: <20241106100741.173825-8-y.oudjana@protonmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 13 Nov 2024 14:44:40 +0100
Message-ID: <CACRpkdZBwSBD2ueM=5zZX3wBxxd-ZJoEKS-zTq5fuqiKOSu3mg@mail.gmail.com>
Subject: Re: [PATCH v7 7/7] pinctrl: mediatek: Add MT6735 pinctrl driver
To: Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Sean Wang <sean.wang@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Andy Teng <andy.teng@mediatek.com>, Yassine Oudjana <yassine.oudjana@gmail.com>, 
	linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 6, 2024 at 11:09=E2=80=AFAM Yassine Oudjana
<y.oudjana@protonmail.com> wrote:


> Add a driver for the MediaTek MT6735 SoC pin controller. This driver
> also supports the pin controller on MT6735M, which lacks 6 physical
> pins (198-203) used for MSDC2 on MT6735.
>
> Signed-off-by: Yassine Oudjana <y.oudjana@protonmail.com>
(...)
> +static struct platform_driver mt6735_pinctrl_driver =3D {
> +       .probe =3D mtk_paris_pinctrl_probe,
> +       .driver =3D {
> +               .name =3D "mt6735-pinctrl",
> +               .of_match_table =3D mt6735_pinctrl_match,
> +               .pm =3D &mtk_paris_pinctrl_pm_ops,

.pm =3D pm_sleep_ptr(&mtk_paris_pinctrl_pm_ops),

this is why you get build errors.

Yours,
Linus Walleij

