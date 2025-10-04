Return-Path: <devicetree+bounces-223610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA95BB88A0
	for <lists+devicetree@lfdr.de>; Sat, 04 Oct 2025 04:47:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 28A7719E1B60
	for <lists+devicetree@lfdr.de>; Sat,  4 Oct 2025 02:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63D7814EC73;
	Sat,  4 Oct 2025 02:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f6rQpGVS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C88060B8A
	for <devicetree@vger.kernel.org>; Sat,  4 Oct 2025 02:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759546075; cv=none; b=mxjKM+ptdDdvoWxfOjDYk6851sVVbYhBGNkDp8GQskZ0MgcsQMqWYYyEDBOe+w8ItzTvgfzIoneLfzOCkywB3nf++eMqno3AQvT/2dlPCZoJid1wHqu+SXvh9HBpSnfdtO6I88x3df6HMPna7zQ6NLgaPqmHLGM9WYde/ZxAMHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759546075; c=relaxed/simple;
	bh=hYV5UgeSxhiKp11q4MqERKNCIDtvo6Gt1B7MHJYK0kw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SfcW7sp1w4uLyYEjaeQLERmYylakee0IM8IchcbfNskpxinaNTd8P+4YA+xtHpeqeZd3KxgDHj33R9mobkHQE0eFSfFKYX7a+O6rRBJc+ju0G2I/Bzi9GafR4WcqHp3W3D16EJuWY5Aur+tmdrjMslFW79ZBK5Dvhxj74I+GoN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f6rQpGVS; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3f1aff41e7eso2270253f8f.0
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 19:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759546072; x=1760150872; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MtAjdiNI9QJq6177oR8Gwnx6QyorD8Daikje+IvnbRU=;
        b=f6rQpGVSs6mSzhJFYvNnbDOikCjzCKF+QeRLefeTaQozrMyoGs3v0F5H9mh7qokMT1
         e85pcyzk0ol2XrypMMjbBN/dc5g3dcb5gE6/KDxC7IVrcyv2wQdzA1NgVknE5U5COImA
         nRlJfEClUIr9mdQ+bksUTNcX10ab1jXCUsZuBYfAV6vRVpgELda7XHoZOjXr11TtuqN4
         hLHiwRq7Z3Bq5KL9v8yK13WG/UQVXDFgYWNhE3ZM3AA+pgbWFW8McP6Cop2W5VR7sGO+
         n77StGNDeZ13xNYMQz2hU94zQZATXBC2zkaLhZ4bfc7s4rBTV/HIjhWi0JSkgrG6C8e5
         QZmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759546072; x=1760150872;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MtAjdiNI9QJq6177oR8Gwnx6QyorD8Daikje+IvnbRU=;
        b=YqTP4wros+caORmO6rZ6uGpGfSILg+cveO+DB9jcJkdkK7YvChGGZ+MvItzm73NW/j
         jgfD3lVf0RPzCfs8MOdDsSGcRqy+r9czTOd0CJ/d/5N56/F5D9YVuTzxo5H2X29ThLoc
         do1S790TeH2po5aw8gWwKaLPF5zq9pKEP3504bf5TiI8NYJ708wqHc3r11mHzoF9OLXY
         OWSJPDxmJOzKU/yFsAib7lKLnenCH8yxEbOZgtmraUQjLBxQjkce/S+ZTN4pADhjuloV
         LHFaUQhXi6/bbcGBk5/ZgQQEHNLQe/6eXdhb7b8GdZ4snGKDessupl+7VESgUE+qV8U6
         /P9Q==
X-Gm-Message-State: AOJu0YzU/A2nldCe7kj38v0+QNRqtLXUrUkjWJjDrpA/C45/DhEwtjOb
	2iJni9CR81ag5sKByIkwT8An195F6P3KpoeoM46Db5feAnl2Efm5Wx0s/ChJKhRYvVZDPoHVn+Q
	JT57WVpXnV1wpLDHjWVv1X9iU/fkdDQ8=
X-Gm-Gg: ASbGncvHrMxXGafkej1jE+xjeQbHHXr0N45WwL9m1Vaw6Vr8S9ZcCq7GNGEFFH+2STk
	TvHI8zqf4al7DRhJjnHu2SxQZh0gWkhOElu2POaGJ/HFKHauD/TD9c3uAFYNwtHzh/z5XfKIt+A
	oTs2MTlkKMA78UMrGgLopSyGkl1aPwSyhfRAd8ZsCRAabS4ZifnC/j8d+c544jGNaVF3hqM9CMO
	wb7PlVcY0d2wacYhdRjdLcSK6j+je3o1WBpb2XiVr+BPSnSB06c6LCiFRTrDf0=
X-Google-Smtp-Source: AGHT+IFP0EzTt+6wIVfHmxt/KikNMHr5T66NnDvbjm6SJmZ/lIChMWvnF31X9JuWRj+NipMrPRhiPCMm5xgtZpXESC4=
X-Received: by 2002:a05:6000:2311:b0:424:2275:63cd with SMTP id
 ffacd0b85a97d-425671c0e00mr3412456f8f.48.1759546071609; Fri, 03 Oct 2025
 19:47:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
 <20251002034708.19248-4-laurent.pinchart@ideasonboard.com>
 <CALWfF7Lhz2brif4xepWZ71mRqMmXKzxqd=0_hO_b6aF6_GkffQ@mail.gmail.com> <20251003023955.GA1492@pendragon.ideasonboard.com>
In-Reply-To: <20251003023955.GA1492@pendragon.ideasonboard.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Fri, 3 Oct 2025 21:47:40 -0500
X-Gm-Features: AS18NWBrForcP1ZJaY1o0FouRlxOZ1iOrUYR8RE7nxfTY4DfB1KYllAo5n58YSg
Message-ID: <CALWfF7K19Pa5889Kp_rDLD8nDxMEhqMb6er1tKYkTV906fRWXw@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add rk3588s-orangepi-cm5-base
 device tree
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Algea Cao <algea.cao@rock-chips.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Cenk Uluisik <cenk.uluisik@googlemail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>, 
	Muhammed Efe Cetin <efectn@6tel.net>, Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>, 
	Sandy Huang <hjc@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 2, 2025 at 9:40=E2=80=AFPM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Jimmy,
>
> On Thu, Oct 02, 2025 at 07:01:53PM -0500, Jimmy Hon wrote:
> > A few nitpicks below
> >
> > [ snip ]
> > > +
> > > +#include "rk3588s-orangepi-cm5.dtsi"
> > > +
> > > +/ {
> > > +       model =3D "Xunlong Orange Pi CM5 Base";
> > > +       compatible =3D "xunlong,orangepi-cm5-base", "xunlong,orangepi=
-cm5", "rockchip,rk3588s";
> > > +
> > > +       aliases {
> > > +               ethernet0 =3D &gmac1;
> > > +               mmc0 =3D &sdhci;
> >
> > Since sdhci is enabled in the SoM.dtsi, this alias should probably go
> > there instead.
>
> Good point, I'll do that.
>
> > > +               mmc1 =3D &sdmmc;
> > > +       };
> > > +
> >
> > [ snip ]
> >
> > > +
> > > +       vbus_5v0: vbus-5v0 {
> > > +               compatible =3D "regulator-fixed";
> > > +               regulator-name =3D "vbus_5v0";
> > > +               regulator-min-microvolt =3D <5000000>;
> > > +               regulator-max-microvolt =3D <5000000>;
> > > +               enable-active-high;
> > > +               gpio =3D <&gpio0 RK_PD3 GPIO_ACTIVE_HIGH>;
> > > +               vin-supply =3D <&vcc5v0_sys>;
> > > +               pinctrl-names =3D "default";
> > > +               pinctrl-0 =3D <&vbus_5v0_en_pin>;
> >
> > The property names in these regulators are not as organized as the
> > regulators for the CPU/NPU.
>
> Which properties in particular ? There are more properties in these
> regulators, but otherwise the order seem to match.
>
> > > +       };
> > > +
> > > +       vcc_3v3: regulator-vcc-3v3 {
> > > +               compatible =3D "regulator-fixed";
> > > +               regulator-name =3D "vcc_3v3";
> > > +               regulator-min-microvolt =3D <3300000>;
> > > +               regulator-max-microvolt =3D <3300000>;
> > > +               startup-delay-us =3D <50000>;
> > > +               enable-active-high;
> > > +               gpio =3D <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
> > > +               vin-supply =3D <&vcc5v0_sys>;
> > > +               pinctrl-names =3D "default";
> > > +               pinctrl-0 =3D <&vcc_3v3_en_pin>;
> > > +       };
The majority of the properties should be in alphabetical order. So the
startup-delay-us and vin-supply are out of place.

> > > +
> > > +       vcc5v0_sys: regulator-vcc-5v0 {
> > > +               compatible =3D "regulator-fixed";
> > > +               regulator-name =3D "vcc5v0_sys";
> > > +               regulator-always-on;
> > > +               regulator-boot-on;
> > > +               regulator-min-microvolt =3D <5000000>;
> > > +               regulator-max-microvolt =3D <5000000>;
> > > +       };
> > > +};
> >
> > [ snip ]
> >
> > > +
> > > +&gmac1 {
> > > +       clock_in_out =3D "output";
> > > +       phy-handle =3D <&rgmii_phy>;
> > > +       phy-mode =3D "rgmii-id";
> > > +       phy-supply =3D <&vcc_3v3>;
> > > +       pinctrl-names =3D "default";
> > > +       pinctrl-0 =3D <&gmac1_miim
> > > +                    &gmac1_rx_bus2
> > > +                    &gmac1_tx_bus2
> > > +                    &gmac1_rgmii_clk
> > > +                    &gmac1_rgmii_bus>;
> > > +       tx_delay =3D <0x42>;
> >
> > When using "rgmii-id", tx_delay will be ignored. Does the ethernet
> > work without this property?
>
> I have to confess this was blindly copied from the BSP :-/ I'll drop the
> property and test.
>
> > See the comment by Jonas in another review.
> > https://lore.kernel.org/linux-rockchip/da752790-da17-4d26-b9b2-8240b38b=
3276@kwiboo.se/
> >
> > > +       status =3D "okay";
> > > +};
> > > +
> > > +&gpu {
> > > +       mali-supply =3D <&vdd_gpu_s0>;
> > > +       status =3D "okay";
> > > +};
> >
> > This is a feature in the SoC itself, so it's not board specific and
> > can be put into the SoM.dtsi.
>
> I'm a bit in two minds here. If a carrier board doesn't have a display
> output, the GPU isn't very useful (although in theory the GPU can be
> used without a display). That's why I decided to enable it in the
> carrier board. I suppose it doesn't hurt to enable it in the SoM, worst
> case it won't be used and so won't be powered up. I'll move it to the
> SoM.
The nice thing about the G610 GPU is that OpenCL support via Mesa's
RustICL was added earlier this year. So even in a headless cluster,
the GPU can still be useful.

>
> > [ snip ]
> >
> > > +
> > > +&pd_gpu {
> > > +       domain-supply =3D <&vdd_gpu_s0>;
> > > +};
> >
> > Same comment regarding moving to the SoM.dtsi
>
> OK.
>
> --
> Regards,
>
> Laurent Pinchart

Jimmy

