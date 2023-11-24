Return-Path: <devicetree+bounces-18534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB847F706E
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:49:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9333281DF9
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:49:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2425417983;
	Fri, 24 Nov 2023 09:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N0IgWRS0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DB041735
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:49:26 -0800 (PST)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5cbcfdeaff3so17394647b3.0
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:49:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700819365; x=1701424165; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y622WiMwHYSWvpg2GlDOi18NUNokJQ6nlm4sUNqp440=;
        b=N0IgWRS0TWCmk4DYG5jUpzBPE5oiApeuU6A8gJyanq8i0qDcAoVWUADd32cQ5WwM3U
         hNySrKZb8CrxgSo2VzDeTNxzAK4XXg+cAgtId0t364gzcl8GmjoJ+NwdcgK6YA5RkZ9k
         8YElz3Znio9wnz12g7IoQ3kIGrJxtJjtY5IJPjOblrx1Y8apjidLMxPO1gd06G16ifv8
         PdzgDjRZmXg4ZCFfkRcZYni+wsAputz8L1VXhdLQhYNFYaCDUBlaf+rIUT55vdhogVS1
         wwTY3wuuVjcJEm+4Y6CcjdsonGFiLJv6J9vQd5BOihedItk+K5uP3rUbpoFj1hgMujRK
         8MjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700819365; x=1701424165;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y622WiMwHYSWvpg2GlDOi18NUNokJQ6nlm4sUNqp440=;
        b=kye49/6kdE6TiR13/TXJ54OLU3TIRSQwUs/sDRH31aD8DC2vuDBbP/GwYX4GAsQVfw
         x9/gpT+mFjEwWrtWWnBqUbUICWpmmlwA1o20hTxJT2nbDq5QPvYViY3I7Zf9AQVonIo2
         fMf5m2q0jgLwWe4ZZuEUVMgLSOGcm4UoxZNiv/Ov1QmuXXISzoCD86dagXQik6UeWiT/
         qgtIgnoEhqIg3D7k0PSg3+vg6zbK88ztUR0xmyxAjtNYPvDCi6+34qMj+FgaKlBbQtTI
         Yh9EKVE7QcfSqkkCMtaTQvnmZDSxh6PsmChnsf0eqg5Q05YwIajZ31GKtCLjF3JR/mJ+
         3fIg==
X-Gm-Message-State: AOJu0Yz7uNYeBHvMpkq3QjXn2IH4aiNtN41QEf26ZFiS3tq9I1xSlw08
	gGw4ZGDqpwuzmz09wPBdx9I3/RzIkk6aDev3uzT6JA==
X-Google-Smtp-Source: AGHT+IGjpukiK1tECzhi8Ll3VSeycM6tp7xdGxGsh0QUN11xzJy3u9DzHTy5UqDem9tLcL+crrEE8x0xvXGeMvgE294=
X-Received: by 2002:a0d:d4c6:0:b0:5cb:89dc:ccea with SMTP id
 w189-20020a0dd4c6000000b005cb89dccceamr1961171ywd.10.1700819365616; Fri, 24
 Nov 2023 01:49:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231117104315.9718-2-zajec5@gmail.com>
In-Reply-To: <20231117104315.9718-2-zajec5@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 24 Nov 2023 10:49:14 +0100
Message-ID: <CACRpkdbwqy+LNGi-7rZjPLWESbKJSFVzry6pAGd6aTnq0ifoDA@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: arm64: dts: mediatek: Add Acelink
 EW-7886CAX access point
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Macpaul Lin <macpaul.lin@mediatek.com>, =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>, 
	Heiko Stuebner <heiko@sntech.de>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Chris Morgan <macromorgan@hotmail.com>, Sean Wang <sean.wang@mediatek.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 17, 2023 at 11:43=E2=80=AFAM Rafa=C5=82 Mi=C5=82ecki <zajec5@gm=
ail.com> wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> Acelink EW-7886CAX is an MT7986A (AKA Filogic 830) based access point.
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

