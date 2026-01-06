Return-Path: <devicetree+bounces-252115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A15DCFB1F6
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 22:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46B3B303BE1E
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 21:43:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44990314A6C;
	Tue,  6 Jan 2026 21:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZhV1TK/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC9A30B51A
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 21:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767735810; cv=none; b=TV4XcxErtATdbZGe4NpLpn+NEbHy1AR5b1gUHdL2MkrtEZy4jUXrOTpPrfb7y7Sa8Lrr8NTgIzol7J+9knRsWKP1nnCrAihK27xVb+4XM2bH5zTyfEyvSpaeGx/7SfGNdIpQwMAiXdMXjcMA3utLjA4WWB67OaXULCGwrvBSIUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767735810; c=relaxed/simple;
	bh=AbF1eOY89KhXmRJMDsJG8KEK/8SWy/YP0fH0ODncTA4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ew3nAd05F3+AaAhMFjzc0lwvo9H5a0BQWY5Ava2cgUGNw6xiTrGY9hwCg99dtB3XeIHRhu96scStXaI9shyiOussYs/ZiSBr5ZzrK4y8C3GVKeIaG4Km5bMAujywnf0m7zWrQRQmUokg9NA4bp2frBMfLtgTIn+7BUP8h9vTOwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZhV1TK/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1D0BC2BCAF
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 21:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767735809;
	bh=AbF1eOY89KhXmRJMDsJG8KEK/8SWy/YP0fH0ODncTA4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=cZhV1TK/rp3f5Bt8aOXeN14taQ4noYvV6auOfn2+dSCUTE795qZzWyBzTIJ9jt3W0
	 XGC9cQI2WBImBapS4jWDp0eEVslWePAur+dGXKqt3n6hBi4oK198vn9IiWABR+Qw1U
	 dFOc3ZI0HNidZBVrw8ZETUHrpy4K1mYLm5QIWXuU9StPeo1WvhT9NeFMgk6LsJt1xq
	 89qOTrWvvUll1tJzLcHlRL76jZXLYyZiYU1qmkPb+XyoPhYcSoFq7qc4YqYsJKU/q6
	 AUBCT8Pll7tsa+tk8TSWU+hPukw30eFhI6dMWbgG3Gx5krEfmphDOGGv98Se9p6EGZ
	 8gZ107YULPhSw==
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b73a9592fb8so53143366b.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 13:43:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCULerq4hzl96SWcoCgLkPTBdlTk/1EL3zWCC8URkAHGkIDaIxL2TzCi2mwB8kBXLsQaUtU0shEMkKEJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzNf2RAvPif5leZoiHojLGh/jTfdkUIHcJe+WELZ5iv4pCdAhq3
	Wxuixqb/m+FEqJjR3CBmkeF/c9ZNqVNgutZoGsYfwdFXTk0dtZuSlN3Ue7i5efytY2zRYx5oDKP
	1JXBXAkC5jAJARq72fJGGgrCnMYCcsg==
X-Google-Smtp-Source: AGHT+IFxhMpPIoUMMMgZYzU2Daw/YU+xq9ktCivIKXSJwd/AoywlJ3PqutPpN9e8sIAT/rTKCPU1AW4EfzAUlBh+O3s=
X-Received: by 2002:a17:907:9550:b0:b7f:fa5d:53d with SMTP id
 a640c23a62f3a-b8429b96f7dmr302576966b.30.1767735808153; Tue, 06 Jan 2026
 13:43:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251229165127.4006134-1-Frank.Li@nxp.com>
In-Reply-To: <20251229165127.4006134-1-Frank.Li@nxp.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 6 Jan 2026 15:43:16 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+6+y5POyWmQnkMB6PJWvH-Gt-qAiJO5gk9N2L5GZT8SQ@mail.gmail.com>
X-Gm-Features: AQt7F2oDZcdOwHwx-niPp0Zu_2KEnB_1S_Vt1fCBf44bR_3pWueL-Rt34VmPsjI
Message-ID: <CAL_Jsq+6+y5POyWmQnkMB6PJWvH-Gt-qAiJO5gk9N2L5GZT8SQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] arm64: dts: imx8mp-skov: add pinctrl-name 'reset' to
 fix CHECK_DTB warning
To: Frank Li <Frank.Li@nxp.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>, 
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 29, 2025 at 10:51=E2=80=AFAM Frank Li <Frank.Li@nxp.com> wrote:
>
> Add pinctrl-name 'reset' to fix below CHECK_DTB warnings:
>   arch/arm64/boot/dts/freescale/imx8mp-skov-basic.dtb: switch@5f (microch=
ip,ksz9893): pinctrl-names: ['default'] is too short
>         from schema $id: http://devicetree.org/schemas/net/dsa/microchip,=
ksz.yaml#
>
> The commit (e469b87e0fb0d dt-bindings: net: dsa: microchip: Add strap
> description to set SPI mode" force use two pinctrl-name 'default' and
> 'reset'. switch@5f doesn't use SPI, so it is safe to use the same pinctrl
> setting for both.
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi b/arch/a=
rm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
> index 020f20c8ce667..7d2fc5fdd3bd1 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
> @@ -373,8 +373,8 @@ &i2c4 {
>
>         switch: switch@5f {
>                 compatible =3D "microchip,ksz9893";
> -               pinctrl-names =3D "default";
> -               pinctrl-0 =3D <&pinctrl_switch>;
> +               pinctrl-names =3D "default", "reset";
> +               pinctrl-0 =3D <&pinctrl_switch>, <&pinctrl_switch>;

I guess this is getting dropped anyways, but this is completely wrong.
"reset" entry here corresponds to pinctrl-1 property. pinctrl-N
properties can have any number of phandles, but those are all one
name.

Rob

