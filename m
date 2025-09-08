Return-Path: <devicetree+bounces-214601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 982A9B49D91
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 01:43:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 476E83C42DF
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 23:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 458422FAC0B;
	Mon,  8 Sep 2025 23:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b="dGMNdmrd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6B7181CFA
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 23:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757375020; cv=none; b=Z0pwHdtaf6pV4j6riJkMElQRVfoSJPHmMx2lruo2wMKqfsEl0BrL9ivW5UcgOfHEr3UnyedfGBU/4Zjw984tjpCUfFArKfslhPKYAffQSd7UkF2DH1+DR3GUVTCBej9xebryE0OyZbHy2fpm0ec9hZR9Cge02d81QNTTgvThg4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757375020; c=relaxed/simple;
	bh=Xf+o5luAHatCq/dTDCApLoFgBaeG3YyqdSkFJuMacwE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AsFTkE/7zOGbF87V4GPcgTTbL9d62bTlPRHStJApm0xoB9CxSlmgFJOCOpWUslDj2fvUwKqhdDebE6EOk6hEabzUJzRR18mpK/8M9UzgaEQXGBQxi0wnvnJ1eBWiGTpgwnSvUqu1Y2LAQB7kDgnG+H+0PjY0ohuN+uoSS7bFB64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com; spf=pass smtp.mailfrom=gateworks.com; dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b=dGMNdmrd; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gateworks.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7459fa1ef2aso4903267a34.1
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 16:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks.com; s=google; t=1757375016; x=1757979816; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TZ31nFbpBywr5LWV7R5R4cpzaC/84WhWlclxZ1iDl8w=;
        b=dGMNdmrdxj74AMlG0q0iDTOmERjw+ac28EpGKG+MSLspaGJQ0vEWC3wTe9Jnx96xeU
         e2DJ1dGjxfKLQtcX1cSWlsL5p4nBPcOKlkjmBggzzhf2T954jKw5rrtrvjcGTd0ajkcD
         H445lwk9Q07hsowbK8NGP1KZaYWX8OVULc5czaJAPnieVpXY4QNUZ5Qz5y1VrWH3WtUQ
         iwUe0QisOlw0pXJ1Z6TI3PTp0KO+34i32oCCP8KbRi7fvcg23hQRC0stzEblh0qE7uUx
         DWfDSiECuzmO2iJEbq15JHO/f6QbVtq3HFYDG9DKKh+EfPX3Px9mLtP8UW3rgfMPMo1P
         A4Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757375016; x=1757979816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TZ31nFbpBywr5LWV7R5R4cpzaC/84WhWlclxZ1iDl8w=;
        b=HBFdg4xhxAclz+prDbOJESEAK2lWNeq5HnEJwhKbW1SW2XlOXB9oZSzEjOx2+gBQTQ
         4JDmwm7IDpLx98tMo8bn0AfL7ayzByn7ahQ0H1m44kZKcBSxp3O5ndkQ2KZMOGxr3XPe
         kD7vgqJrsUSWbid9Y/fBQVUYcdgyGcgxHT4GOgplIVNckGz3d2PJ0tL3KbYusykX/7d4
         F4z1W5e8KQavezwkHxH8aJ/Af2snz/u5MVXk1BgSPQB3hvnQ5/jVYoh24TMDQgLSTjkd
         aIa5JIDnfR0AebLWOxe/M7cYLq2ncekX1R3ZnezYU+Z/54c68QTBeqFXQNcmJMhzSjk1
         VuDA==
X-Forwarded-Encrypted: i=1; AJvYcCVkMzUs6zml6eTe1C1ACznjpmx7YBSAvEoJ0Yg1j143PaxwksQzacWc7KqsXtQCKymRM+6urpdLFz1g@vger.kernel.org
X-Gm-Message-State: AOJu0YwE2X/Uv97srn8z/tVs9BPf7cTVuJrXHEbWiY5mdJvcz9f74ZWU
	OeOlFqW2MjmNT2QgRMbG9jpAutTEVZO2zWcUxfzok2Ogfri4MBOmc/8X76RzhUDhrQfb0qCWC3T
	g3W7PlGuAs/Uq1UnDCesqKtPdSM59dhXdVD2Qia992w==
X-Gm-Gg: ASbGncvPIb+LYOX0JnNZQdyeJRY7R+BvmfLsoVm29ktU8BnXoKPTSOcYPc1pPf55vLR
	7WXJEQsk8IOwZI2menMzS+1xpT8lNzHQHLHV73rcDVuQJHFiivHNw0x4OCELBa8b5C7hYnTiflo
	kQoNwZmnXrrtsa0pGt7gcdYy4bB6YBWYM6RIu96O0sweGEGn5zsWcYPY4Cmv44G7xYACiufb39F
	02yREpaXWdRfApznA==
X-Google-Smtp-Source: AGHT+IFz9G3l1NgBkuI646j9EnzDEEYlshmM1HaRnKUWjXTHPYCEEDbgvsYhJH8t3TMOXGnJoUgXdZIdCebMwUfCQhE=
X-Received: by 2002:a05:6830:4885:b0:745:52d3:947c with SMTP id
 46e09a7af769-74c71eff9demr5731156a34.11.1757375016543; Mon, 08 Sep 2025
 16:43:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250815-imx9-dts-v1-0-e609eb4e3105@nxp.com> <20250815-imx9-dts-v1-8-e609eb4e3105@nxp.com>
In-Reply-To: <20250815-imx9-dts-v1-8-e609eb4e3105@nxp.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Mon, 8 Sep 2025 16:43:25 -0700
X-Gm-Features: Ac12FXzVP_2vJkdlY1v1O3gS6w0Yd5KqydILTTKyUiWG6S13pVl8pRj4kS7eaz0
Message-ID: <CAJ+vNU2hro_ZoRvmQ9yowKsX25AnrgZdGMn2D-RCkyJA02CEhA@mail.gmail.com>
Subject: Re: [PATCH 08/13] arm64: dts: imx95-19x19-evk: Add phy supply for netc
To: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.Li@nxp.com>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 15, 2025 at 4:50=E2=80=AFAM Peng Fan <peng.fan@nxp.com> wrote:
>
> Add phy supply for netc emdio on board.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts | 20 +++++++++++++++++=
+++
>  1 file changed, 20 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts b/arch/arm=
64/boot/dts/freescale/imx95-19x19-evk.dts
> index 39815b21d235d2f8cfa49720d3be49d056ea039a..feee6da65d37cae7413b09216=
014d6fe2b76b032 100644
> --- a/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
> @@ -226,6 +226,25 @@ sound-wm8962 {
>                                 "IN3R", "AMIC",
>                                 "IN1R", "AMIC";
>         };
> +
> +       reg_aqr_stby: regulator-aqr-stby {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "aqr-stby";
> +               regulator-min-microvolt =3D <3300000>;
> +               regulator-max-microvolt =3D <3300000>;
> +               gpio =3D <&i2c5_pcal6408 1 GPIO_ACTIVE_HIGH>;
> +               enable-active-high;
> +       };
> +
> +       reg_aqr_en: regulator-aqr-en {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "aqr-en";
> +               regulator-min-microvolt =3D <3300000>;
> +               regulator-max-microvolt =3D <3300000>;
> +               vin-supply =3D <&reg_aqr_stby>;
> +               gpio =3D <&i2c5_pcal6408 0 GPIO_ACTIVE_HIGH>;
> +               enable-active-high;
> +       };
>  };
>
>  &adc1 {
> @@ -502,6 +521,7 @@ &netc_blk_ctrl {
>  &netc_emdio {
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&pinctrl_emdio>;
> +       phy-supply =3D <&reg_aqr_en>;
>         status =3D "okay";
>
>         ethphy0: ethernet-phy@1 {
>
> --
> 2.37.1
>
>

Hi Peng,

I'm not sure where you are with regards to this patch but it indicates
to me that you may have the enetc_port2 10G port with the AQR113 PHY
working on the imx95-19x19-evk with upstream Linux. If so I would be
interested in knowing what other patches you have for that. I'm seeing
the interface fail to register with:
nxp_enetc4 0002:00:10.0 eth2: PHY has no common interfaces

I'm wondering if there is some support missing from enetc or the
aquantia phy required to work with 10gbase-r.

Best Regards,

Tim

