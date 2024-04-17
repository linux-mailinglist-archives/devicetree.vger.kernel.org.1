Return-Path: <devicetree+bounces-60012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C982E8A7EF3
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 11:00:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A7AA1F26157
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 09:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2D33130A41;
	Wed, 17 Apr 2024 08:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LnQpwiFd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F94B12FF72
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 08:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713344271; cv=none; b=CxkrAOZ9vQYLe05AMPM099b3A2x2RvujdZuyQtOiqAPyxhp0bq0VWaJpbne0BbSPmZTPblfcouu8AZ6MrF/EmlEir15SptqQBE1cDEfawusuEdiwbzRk/fyVinC1QAhJk4rskKvfA7JOy3h6naXyDb11ENjiqw3BNNF7yn9R9ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713344271; c=relaxed/simple;
	bh=z8BVxDLtdMwR2IpXfpKosLBAdBPE7RA9iz1sCdxzb6s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BTqiM9PDW4ceH4SJzCMdlYFeQYN70f/PTk/mDL9YlQkCywQJA330Z15wxhtFvfcIB2Jdz5pyxdx0dkXua3fWuNrp8wQnZ8ivrrciTx732xtXAso99Uv22Io0OpydUPWiIWjFu/TA6az1GDZnFiyp57yV4ndYmmki2dwoJzl1Y5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LnQpwiFd; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-61aaf71c495so38647237b3.1
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 01:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713344268; x=1713949068; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z8BVxDLtdMwR2IpXfpKosLBAdBPE7RA9iz1sCdxzb6s=;
        b=LnQpwiFd9jXzL8lrb6r6QY8JE/8lT7j1K32FNAmTXXmDNxZzEtoCHRqG7laH1r4KSg
         5oagpOuc8hXTgRY0J5RkVTrPor9XnbN2L6fdIWBx4Ppp8ff440hViWrsVJWMEzJocyye
         674tuTNTT4xQJmtIb5xeefqLsw3bp5fe8QvrrrM0353ofQW32S25uciHi8hoUDkSK7ob
         ZHtca9RTaFqVsEMvyOy4NDPDsw9by5SZ0SNnx3gWuV584gmA7azxtKegl2EDYCrvoxG2
         wkNu5xtlpJ20Yd/rXCqw7BOobA7ntv+qoD6hjUKsINzgHVO92dcFg2lC6+XcYIHAu7q3
         MThQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713344268; x=1713949068;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z8BVxDLtdMwR2IpXfpKosLBAdBPE7RA9iz1sCdxzb6s=;
        b=lIUFQyVdp3DOgf3D2XmoKkji8V0guwQOfCrsfnFgSvEIKXR4NJhZ0+KwD48JA0/Ajq
         JS7rES4UXzEwmPWogRu7h9v0+ImyhqAWPlBM4m560Vhe+B3DvJcLRwSiZCX5x2hbQE25
         O4GWrUujuQqzAsCXSLSp975EW0P2hv0ZjvhBeyQnIN9OHnQ2hmMdJ7D9c7edmLJKvLiW
         /AoA2GFiDr8aQ5aYX4bwhOt5mwVvew4nodvezYF0NNtKIo3iDkiNwVUM2WB19XWdhR9u
         w8HjVkM/qZ0cKk5bG234H5toDlAZ0yJb4DZ1GTXhBwSEfqpan9CPaby1HlVIzn+AzktI
         INig==
X-Forwarded-Encrypted: i=1; AJvYcCUYycEiXRg6dZeGz1H/sggaCPsPFedIQHV6/Ehd0VM41Bynn98GDW4RTq01a/mF+BDGVBHsK/75eFM3v1jbP+CZrpoGjcH+4Us9kw==
X-Gm-Message-State: AOJu0YzHXRKLPkFleIVubAdeYBBolX8zsQuubvgyMofSxMFj7vrnPamy
	jZBGbQS9l7p6f7hV3vPlFQOT4SshTxEnlAPli0zlF8QouTBqOLkMyg0cF5mCD1JoYf5SLkudqE3
	GCsG3d+MJyvAbjf1tNkSt1Yh5GohW87OFLpu3Wg==
X-Google-Smtp-Source: AGHT+IGjTlCzXLkgG1NfRsCozVnMoY5qNCo+yZDqI6j3kAC13Ftit11Ni9rVZhCX6UF06i6VaxBJ0wB7PajrNqO6yvk=
X-Received: by 2002:a81:ab4e:0:b0:61b:472:fa92 with SMTP id
 d14-20020a81ab4e000000b0061b0472fa92mr1815808ywk.32.1713344268328; Wed, 17
 Apr 2024 01:57:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240416161237.2500037-1-knaerzche@gmail.com> <20240416161237.2500037-4-knaerzche@gmail.com>
In-Reply-To: <20240416161237.2500037-4-knaerzche@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 17 Apr 2024 10:57:37 +0200
Message-ID: <CACRpkdYMZ7bBxKCSPJ74QYhtEPHV8cPARioGrg5ySj9j7nPE1g@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] pinctrl: rk805: Add rk816 pinctrl support
To: Alex Bee <knaerzche@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Chris Zhong <zyw@rock-chips.com>, 
	Zhang Qing <zhangqing@rock-chips.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 16, 2024 at 6:12=E2=80=AFPM Alex Bee <knaerzche@gmail.com> wrot=
e:

> This adds support for RK816 to the exising rk805 pinctrl driver
>
> It has a single pin which can be configured as input from a thermistor (f=
or
> instance in an attached battery) or as a gpio.
>
> Signed-off-by: Alex Bee <knaerzche@gmail.com>

Looks good to me, is this patch something I can just merge
once the maintainers have reviewed it?

Yours,
Linus Walleij

