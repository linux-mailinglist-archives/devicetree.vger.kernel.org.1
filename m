Return-Path: <devicetree+bounces-48062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A98586FE68
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 11:08:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C95AD1F23475
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 10:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A7B72208A;
	Mon,  4 Mar 2024 10:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OE1PZGdO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4575A219E0
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 10:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709546886; cv=none; b=Jm69XDG+zZGatRX8OBvGnttuJh1w52klrrC9peyutx9qUoiZZ1ysFNxNdeAVW9B26Yt0d+TlfkAP3SWPPRx99n1vo15XU9j4qbtA99f0QAD74B6j1yHlqIisNpApXlpvWoz7hHq9HlnoO1mYQsrsE9i/TyfsREhukmV5ig+SkII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709546886; c=relaxed/simple;
	bh=46Jx6AT1/o6p7H91xYBsT3Uh+eulEJeAciCWRan3b4Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RE06Zvm1lwrVcyd0/DKKs4YSy8HBPw99SmPfa/JAaakuVHspVziIzVOMTsgVR7lP04PfNy5G3KKwWqi14/3qwHPa3xHemc3lS1Gsu0ulHOpsHIHw/VPWqolxo0w5lNRQofDBFIjFYFoOyhqp9UzZJ92ct3IUsi4/VDSM82CLjW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OE1PZGdO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26F7BC43394
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 10:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709546886;
	bh=46Jx6AT1/o6p7H91xYBsT3Uh+eulEJeAciCWRan3b4Y=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=OE1PZGdOa+UDkNU9R5hOn5U+ZSxg/dB1bVTxTffqczAaBC2KIeZtkgShEM70MOzkv
	 amItPqY51B8Rc44DsH7pE/m7hPMRKTs2zlg5eR6ApJLuVsTwSJQ8jG2KOsPDTZWiIR
	 ZxzYzbkYGsIkWGxz4ZFJWY//gGIDeIlJY6GGjVd/dQTO3C26HiW+Zo5U+hGbbT2CpB
	 OIyK9Sb8xpgcFx4mXcn0KIuuPl1e3q7r0RP2UVtgSc13NuOKCgoOLsKUR3odVpL6fp
	 wqtG0iVIi0tKJCOO1Ka7PTjM1fY2QqPfO6+5YUL58OOXCjpmn2UWiqSYGrRVNm6Zu2
	 tC8zD/su0lN4g==
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-299b818d63aso3086148a91.0
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 02:08:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUWtbtN9Ho5tG50tRzlTWbVMGQJ8Ksh/0mCMP/keDoHWIQboaoS7j7epfitYE6+Kh0lLrn+DTHidMZzkDpvS8C6XNC4mzeQThRRxw==
X-Gm-Message-State: AOJu0YzbP7vBCMxZJU6aApntXMhqnDnLDEV43H1F6VjVRcgragyLWol0
	/MshZ+GMdnDWBvJiC1v1Pkd0z/lQEim1m2hWyn3Y6jWFzknSEctd4fauIySmUIFXcnabnmBrnuj
	kIOXz2Nb/p1/K70GCfQOpRuob16k=
X-Google-Smtp-Source: AGHT+IGLWaWH/1OuLQTSCRHqS4xfe11XbLsnIkhfYtUKy//CPSvUkWrs2Yr11zmUqxGDdUaWdbby+/xd77TZ1p9C060=
X-Received: by 2002:a17:90b:4d91:b0:296:f2d5:6567 with SMTP id
 oj17-20020a17090b4d9100b00296f2d56567mr11535077pjb.4.1709546885655; Mon, 04
 Mar 2024 02:08:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240304084612.711678-2-ukleinek@debian.org>
In-Reply-To: <20240304084612.711678-2-ukleinek@debian.org>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 4 Mar 2024 18:07:54 +0800
X-Gmail-Original-Message-ID: <CAGb2v67xA0z3KWBo=ierkK9qxBAnaLuVkta05qEaFmMciB1-ng@mail.gmail.com>
Message-ID: <CAGb2v67xA0z3KWBo=ierkK9qxBAnaLuVkta05qEaFmMciB1-ng@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@debian.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andrew Lunn <andrew@lunn.ch>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 4, 2024 at 4:47=E2=80=AFPM Uwe Kleine-K=C3=B6nig <ukleinek@debi=
an.org> wrote:
>
> While it requires to have the right phy driver loaded (i.e. motorcomm)
> to make the phy asserting the right delays, this is generally the
> preferred way to define the MAC <-> PHY connection.
>
> Signed-off-by: Uwe Kleine-K=C3=B6nig <ukleinek@debian.org>
> ---
> Hello,
>
> Andrew already pointed out when I posted the patch introducing the gmac0 =
node
> that rgmii-id would be the preferred way to setup things. Back then this =
didn't
> happen because this change broke reception of network packets. However th=
is
> only happend because I didn't have the right phy driver loaded.

It could be that the PHY is strapped to not use its internal RX delay.
And the PHY has some weird default TX delay, so having the driver
put some sensible values in is probably better.

ChenYu

> Best regards
> Uwe
>
>  arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/ar=
m64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> index 6a998166003c..36ad48d46bc1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> @@ -20,15 +20,13 @@ &gmac0 {
>         assigned-clock-rates =3D <0>, <125000000>;
>         clock_in_out =3D "output";
>         phy-handle =3D <&rgmii_phy0>;
> -       phy-mode =3D "rgmii";
> +       phy-mode =3D "rgmii-id";
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&gmac0_miim
>                      &gmac0_tx_bus2
>                      &gmac0_rx_bus2
>                      &gmac0_rgmii_clk
>                      &gmac0_rgmii_bus>;
> -       rx_delay =3D <0x2f>;
> -       tx_delay =3D <0x3c>;
>         status =3D "okay";
>  };
>
>
> base-commit: 67908bf6954b7635d33760ff6dfc189fc26ccc89
> --
> 2.43.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

