Return-Path: <devicetree+bounces-20664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAD7800745
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 10:39:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 52DA728183D
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 09:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B7531DA3F;
	Fri,  1 Dec 2023 09:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="073HcE3C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-x936.google.com (mail-ua1-x936.google.com [IPv6:2607:f8b0:4864:20::936])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A391B1735
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 01:39:07 -0800 (PST)
Received: by mail-ua1-x936.google.com with SMTP id a1e0cc1a2514c-7c4602ad8baso603353241.3
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 01:39:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1701423546; x=1702028346; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k8ZuKUeVfTp+wxTfK+NUsGEji4JyXDZpkF3g5/v1QY4=;
        b=073HcE3C8vSsMl6nVyS3xM4UGwnH6uKDKtTokY6PyIZcQsQOuIveyU8XnR7hzNA6sB
         DpZuutGyw52aorViiheoc+WdLBASa8ReO+c1MSuT9W1IRG7ygnCyPA4K/pr15j1OZhUb
         2H22mGr73SVkjZHAdU1c/Ku+vI/pk8pJfDv8dDvZz0rTNacU245LjsrtG5GnUI5DvSdO
         /mcoF8uazK+hOWr/paHQ61rxx8A/lWn64Adlo88V04L8K2rUNEVrWpLtStu9AkU54FA1
         eqGmoLHBr564euW2OsACBCJZbM6sUzPnpYu1Mbg89gg/n67W/QmgpschaxzWXaP2px4l
         62GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701423546; x=1702028346;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k8ZuKUeVfTp+wxTfK+NUsGEji4JyXDZpkF3g5/v1QY4=;
        b=Kz6T2zBL9Gxi+lKoH/wi1Ea8lxmM/sUY59iTfgZ0zSrnWz+izLN9gN1bNltAq99U2H
         3ara+G5qr2gD33pFjw4TuhEfe685gVJAFj2hBb58521NN/N3gWGEMLxOidKLmN3crPW4
         oeYeUcQQfwkr3kL9MAKrXLegn7rsUPKdX+LJsf1GreiOMMtXXHz5NwV0F0PziYmu4JIj
         9wafQ2pacmejP08bp/+z0ElGmBD2imqov0B/FfPPmDt5V1axMVnURetzsZIyEJGQ6oWr
         /OH+H66LIBipGl3FrMOAZG7lmWoHdroY3IUwO9wGA1uXp5j2F93sw0PVSXVfo8w+LUlT
         ddvg==
X-Gm-Message-State: AOJu0YwrF01IusCjxvnzjEuQDbBcS6Ep2J2kTtMWOYbMN4myZI0gaJ6z
	pjsy1XdadEOGTuEU+2IHY2DY82VLWOMR+95OnNuzhQ==
X-Google-Smtp-Source: AGHT+IH+dZrEPlQrEQxPz8LBu9W0IH+o/0FK3aIMgrHiVOtbkiEm+9JiVZdS/A4+MMhqSwl8n1ZvjJA8xOuv7BT79FA=
X-Received: by 2002:a05:6102:3b9a:b0:464:41f7:cf17 with SMTP id
 z26-20020a0561023b9a00b0046441f7cf17mr10403139vsu.12.1701423546726; Fri, 01
 Dec 2023 01:39:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231127-b4-imx7-var-som-gome-v1-0-f26f88f2d0bc@pengutronix.de> <20231127-b4-imx7-var-som-gome-v1-1-f26f88f2d0bc@pengutronix.de>
In-Reply-To: <20231127-b4-imx7-var-som-gome-v1-1-f26f88f2d0bc@pengutronix.de>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 1 Dec 2023 10:38:55 +0100
Message-ID: <CAMRc=Md8mDhNJcOZDCx5Ew2DvLfvtbB+WpQtxwt78CxJy4hJHg@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: at24: add ROHM BR24G04
To: Roland Hieber <rhi@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Li Yang <leoyang.li@nxp.com>, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 27, 2023 at 10:12=E2=80=AFPM Roland Hieber <rhi@pengutronix.de>=
 wrote:
>
> From: Philipp Zabel <p.zabel@pengutronix.de>
>
> Add compatible for ROHM Semiconductor BR24G04 EEPROMs.
>
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/eeprom/at24.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documen=
tation/devicetree/bindings/eeprom/at24.yaml
> index b6864d0ee81e..1812ef31d5f1 100644
> --- a/Documentation/devicetree/bindings/eeprom/at24.yaml
> +++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
> @@ -123,6 +123,7 @@ properties:
>            - enum:
>                - onnn,cat24c04
>                - onnn,cat24c05
> +              - rohm,br24g04
>            - const: atmel,24c04
>        - items:
>            - const: renesas,r1ex24016
>
> --
> 2.39.2
>

Applied, thanks!

Bart

