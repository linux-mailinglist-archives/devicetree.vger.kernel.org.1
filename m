Return-Path: <devicetree+bounces-226064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C11AEBD3596
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 16:07:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E104B189B211
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:07:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F29512475C2;
	Mon, 13 Oct 2025 14:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MM6YjOnd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414B224A044
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 14:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760364437; cv=none; b=cplGTA2Mzgg/mKWCQjpAsuX9jxrVDS9gj91mkeNwnYS1TZtzDtfySDVX+tdL43XGwq1iHgGHloWWLzfScoilOOZW75MxV1c74nxd0Ef2dPTKmX7HP8u+FMtoG+GNc/mlGciBF7cdfdwu9TECok79pBX7JRYFBwEBB9tqmcoOvSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760364437; c=relaxed/simple;
	bh=il9BEy5z5fP/2XDjNY94SwIxeYHfSV12vEIzVfaLz4I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AKSGImrWcVpqmaaGC2XWK2doMcrnsMUcduvf9TLYz2Rsw3Eu7ecVtcDnCNTp+6iyCTv0gFxEiVA1E3QZUlFcAPnCo9LRkmlGYBdrdfC6lEWSTT5NG5O3IsIci3YiehhC7QnV8Zo6WPeQj0UEsGvh/QPNL3Di78dpG/IG6+oXqac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MM6YjOnd; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-85a4ceb4c3dso518494885a.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 07:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760364435; x=1760969235; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B3fxFMnHvhHYZxkU89prvgFn6OmHBSMeJm9YGzPYMJU=;
        b=MM6YjOndHEe2uGDPWFKgEvw9uMggMkjD7xKLU6C9TZYVi4rRwzH+RkljfTCysGrOiL
         g1DEh5ZYSq7CJ2d49IuBzLy/IDvkB07FQ6h8rdjGuQeqOklCeE+e8uK6HS33kTS+xbBV
         LqfPaN8rc4TT/tdWBhbvXPMtPMnJJN0yHjWfJWwkTkkoZl+uiTkc81aElRsz3CqoPdLZ
         u3IMmSK+hHVzZrZWxX+kaM64TryKaKfGCX8pBpRhfNxKmc3bjSL7ZyYlhrhBsIaUqhRA
         ZvFKoOXrc2QzsPSWvBwzUfL7yXeDQkhRxKKkU5Q2Qcmsb+hkMhiqnH7z1jeHaOdNQ83k
         aH6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364435; x=1760969235;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B3fxFMnHvhHYZxkU89prvgFn6OmHBSMeJm9YGzPYMJU=;
        b=hlLcSRRHSxOQBm2vk2tFtyHHWuOnVmpEDRLcJ7HAk+Y7LEcf3eMhAvk7NpddLq996o
         tN80ur1qh4Fn0TkZtYb9P2PPYkJckGwNcFx3lS/sQqjDSdmCWfHNOeGBIRT4CwrWtU7W
         A44Mfpf9Yg24kl7H4C2EauUjdjMdW2GPBWhge/loTlZ8m7cCwWaVHq7L8w8mu9/PPRaW
         2SLGxzUn8tc+nQ+F1BZ3H+zhLLPw/QkjC6D67vQaGU+XNBNEnaxYjBZK2zBWv7T8v/e9
         kswyZcjxiqGwH0Pq6ACFyeUc/4CR6j9hxNH/IMoXIhcyIGe3su7k5jQTM3ZmdRY3ifzg
         ieeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNTYz/EVtS0kIygUAfo3qHQx1lFBGXML2WOHm6akwgxs3nMWoOlCvCDnv5mvt5W2ho/VCap3HFQQdI@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8C4FhPW1PMU8MMpR+hpifAQ1OvlqZ10Wr9UHgvVjyUowfvdrw
	KmpUc3uuaP6DwMX2QHAE1Czfk9PtHQWUhY5N5Pp3T1zpDW74ctjBMFOe4AVtYK5QaPxLftQaBBc
	DbbCC0CdiPUuUgD9psYUpSxcJ/3PVUEM=
X-Gm-Gg: ASbGncv33CYi3/NczTuEE6P0IJJacAzmP/0Ye5JThMAb5wXXmXzZjPD8HBIYImtHkkf
	zgzL2bNzv9QSsazXvwn/jxTmO2Ae/uLSbp18CfSIkGeD/ipSFFT6QZ6OrW7+XaD80TeMrUQIq6X
	8viftsn90LyuDcg+Zg8JMutCMG86fdYTNktbJpYDvtOV5sj497bvychPihwUh3bQ49U3q/G8xsL
	CkpldemVaevL7DpDdEr8j2bLbuLKl+Dc/r/pg==
X-Google-Smtp-Source: AGHT+IFJyxN0Hv1Y4GUd/peF3juYf0BASxuDUqSk2KfDDUExhxmcAVmPSatg4At2Xmntps9WxQl2SPNothq8SpuZzXY=
X-Received: by 2002:a05:622a:4c6:b0:4b5:eb7b:2789 with SMTP id
 d75a77b69052e-4e6ead4825emr307845311cf.49.1760364434713; Mon, 13 Oct 2025
 07:07:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251009084416.45542-1-jjm2473@gmail.com> <20251009084416.45542-4-jjm2473@gmail.com>
 <aOe_0EufouURu7R2@shell.armlinux.org.uk> <CAP_9mL4MfzagxiMD1VdOu=jBuN_XsOrvPQT=XTVgu2+G=+nD9A@mail.gmail.com>
 <aOz1SzpzGLDQjiYQ@shell.armlinux.org.uk>
In-Reply-To: <aOz1SzpzGLDQjiYQ@shell.armlinux.org.uk>
From: Liangbin Lian <jjm2473@gmail.com>
Date: Mon, 13 Oct 2025 22:07:02 +0800
X-Gm-Features: AS18NWC2KWpOjrIZRCNJ-njN7lopgvdR9BZGhK7C99VWUiJOF3JdegyR1Tmc-SU
Message-ID: <CAP_9mL6x=p169y026nNycZsHK6UMHqJ+o-M_k0MqnvpB2fPzJg@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	quentin.schulz@cherry.de, kever.yang@rock-chips.com, naoki@radxa.com, 
	honyuenkwun@gmail.com, inindev@gmail.com, ivan8215145640@gmail.com, 
	neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org, 
	pbrobinson@gmail.com, alchark@gmail.com, didi.debian@cknow.org, 
	jbx6244@gmail.com, andrew@lunn.ch, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Russell King (Oracle) <linux@armlinux.org.uk> =E4=BA=8E2025=E5=B9=B410=E6=
=9C=8813=E6=97=A5=E5=91=A8=E4=B8=80 20:49=E5=86=99=E9=81=93=EF=BC=9A
>
> On Fri, Oct 10, 2025 at 11:20:08AM +0800, Liangbin Lian wrote:
> > Russell King (Oracle) <linux@armlinux.org.uk> =E4=BA=8E2025=E5=B9=B410=
=E6=9C=889=E6=97=A5=E5=91=A8=E5=9B=9B 21:59=E5=86=99=E9=81=93=EF=BC=9A
> > >
> > > On Thu, Oct 09, 2025 at 04:44:16PM +0800, Liangbin Lian wrote:
> > > > +&gmac0 {
> > > > +     phy-mode =3D "rgmii-id";
> > > > +     clock_in_out =3D "input";
> > > ...
> > > > +&gmac1 {
> > > > +     phy-mode =3D "rgmii-id";
> > > > +     clock_in_out =3D "input";
> > >
> > > I am fine with what is being proposed here, but I think this
> > > clock_in_out property needs fixing. The description for it is thus:
> > >
> > >   clock_in_out:
> > >     description:
> > >       For RGMII, it must be "input", means main clock(125MHz)
> > >       is not sourced from SoC's PLL, but input from PHY.
> > >       For RMII, "input" means PHY provides the reference clock(50MHz)=
,
> > >       "output" means GMAC provides the reference clock.
> > >     $ref: /schemas/types.yaml#/definitions/string
> > >     enum: [input, output]
> > >     default: input
> > >
> > > The problems that I have here are:
> > >
> > > 1) the description states that the only possible value for this when =
in
> > >    RGMII mode is "input" which is reasonable, because it's due to the
> > >    RGMII specification. The driver code is perfectly able to determin=
e
> > >    whether RGMII has been specified, and set bsp_priv->clock_input
> > >    itself, relieving DT of this need.
> > >
> > > 2) bsp_priv->clock_input is only used in gmac_clk_enable() when calli=
ng
> > >    the SoC specific set_clock_selection() method. Only RK3528, RK3576=
,
> > >    and RK3588 populate this method. Every other SoC supported by this
> > >    driver still requires the property:
> ...
> > >   clock_in_out:
> > >     description:
> > >       For RGMII, it must be "input"
> >
> > This description does not match the actual situation,
> > there are many dts using 'output':
> > https://elixir.bootlin.com/linux/v6.17/source/arch/arm64/boot/dts/rockc=
hip/rk3568-bpi-r2-pro.dts#L235
> > https://elixir.bootlin.com/linux/v6.17/source/arch/arm64/boot/dts/rockc=
hip/rk3568-evb1-v10.dts#L241
> > https://elixir.bootlin.com/linux/v6.17/source/arch/arm64/boot/dts/rockc=
hip/rk3568-fastrhino-r68s.dts#L33
> > https://elixir.bootlin.com/linux/v6.17/source/arch/arm64/boot/dts/rockc=
hip/rk3568-nanopi-r5s.dts#L78
>
> For all of the above, whether it is "input" or "output" has no effect
> as these are all rk3568, and rk3568 does not implement the
> set_clock_selection() method.
>
> static const struct rk_gmac_ops rk3568_ops =3D {
>         .set_phy_intf_sel =3D rk3568_set_phy_intf_sel,
>         .set_to_rgmii =3D rk3568_set_to_rgmii,
>         .set_to_rmii =3D rk3568_set_to_rmii,
>         .set_speed =3D rk_set_clk_mac_speed,
>         .regs_valid =3D true,
>         .regs =3D {
>                 0xfe2a0000, /* gmac0 */
>                 0xfe010000, /* gmac1 */
>                 0x0, /* sentinel */
>         },
> };
>
> I'm going to propose:
>
> 1) that the driver should only print an error if "clock_in_out" is
> missing _and_ the SoC implements the required function.
>
> 2) that the driver should print a non-fatal error if this property is
> specified in DT _and_ the SoC does not implement the function to
> discourage its use.
>
> 3) [tr]x_delay should not print an error for non-RGMII phy interface
> modes.
>
> I consider it a bug that a driver prints errors for properties that
> have not been specified that it does not actually require. By doing
> so, it encourages people to add useless properties to their DT
> description that will never ever be used (e.g. because they are not
> relevant for hardware the operating mode that the board is setup
> for.)
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

I will remove clock_in_out, its default value is 'input'.
After removing it, there will only be an error log, which will not
affect the function.

