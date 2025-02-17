Return-Path: <devicetree+bounces-147628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 834FBA38D4A
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 21:26:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CDE7E189037A
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 20:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D542238D21;
	Mon, 17 Feb 2025 20:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b="H+OzKuuT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f99.google.com (mail-ej1-f99.google.com [209.85.218.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21F8225798
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 20:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.99
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739823898; cv=none; b=lTHfWZWBTRdackLAVLxwq9UiQmd5cpAaIHzNk/M1uuiPt16CkqxD0YDdLNyiybWSa+e89vKgN1BqTFP4Y+MirkV/GM36NnglTEFiNULU6PISdfDZ1XI0V/fvcvEYmjIBMXmzRceuS+fu1gbOjjOkwdjoLvE18IUYMb2wRc/Eyfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739823898; c=relaxed/simple;
	bh=WWAM3LYwVgpNW1FT1WWVIv5PY2ZHYRFau4WyveQamcg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pPpr6hQQDR3oXrBnHVOIEID7BmsGgCAc1b89NtiKG6SUJyjAmiZ/i8Oar8f/PdXVOzV22KduX6B/XLY5wzbbbKl0RYzV9niaug/m3Dz8pTk37zRjn2rF0NqE95YB3wxqlgDkLdFxbKu4cAL+dFuHfeA8U+lPxw7YhZUS1+CTUsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se; spf=pass smtp.mailfrom=blueri.se; dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b=H+OzKuuT; arc=none smtp.client-ip=209.85.218.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=blueri.se
Received: by mail-ej1-f99.google.com with SMTP id a640c23a62f3a-ab7c07e8b9bso819793666b.1
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 12:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1739823895; x=1740428695; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eXixNoTFb/Zn5YPOBctAEBI6Gl60auOPtW0O825FsR8=;
        b=H+OzKuuTkCWK7ybdsQfkb+laie49UuNIZDlfud8Uq06m5Rygu1qqExhUj+fVe/k8ic
         O4QAphwHmoMrra30tyxQoAxKQ2RV8HLNKR6mw3HXmq/xEFxxmfzmCsvDnVeseN0bzR44
         I/J07/p3xNq7/qHMvmQH7B/Grz7AQ72BYRrH7XXw2E3uoI4+aXfxRCxJpp1vVlZnB/Ni
         RCYlDrhzBFkCjBSE2BbVreKcdqcnqKVwnSyoSaP68ynjYX8EjNFCbwd9LT/3OXapUeB+
         FN6RabXWn7mWFk2/yuVEeX3LGxJvSsIwIQXYxsVtzNcLFkkL9RnTKeE2t1YKLTM3k7SY
         M8BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739823895; x=1740428695;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eXixNoTFb/Zn5YPOBctAEBI6Gl60auOPtW0O825FsR8=;
        b=UjqZm4BV39c8ZbuOoa++L/H41xIh0VRUmeecXSL4Eb0wbRJZWq+sPQYxyucMYmAi1C
         9U1VUxbK4UEjE3XcpbA+WKs38K+aOiCwWk8qbkHc1+o24MG2AAp4vSKYFkPWNeEXNHE2
         zUVDvozp5ZCtXtAuF1s0Hm1FzTnDrTXmM+rclt1fvPDskjdo71OF+BChkbg7TVxeizBL
         rMGhpgXnM5RdksDEZpElpj9UL2V3LJtKwSjf7nsks3YCjISJtDKvFabnC5n19lEQygIV
         JgfnPkvrgELKkGW9vg5J4djHfrecgN7nGBApCVH28TZJEoGUuLh/yVXuKSt4QNgTGQUM
         OlJg==
X-Forwarded-Encrypted: i=1; AJvYcCXZ0vNaA3tcYuXjXOvd7S4nbvYL5pr40YZkByq/bapYTxRd1Py5ay6ohTakECpgq4OXoKxzsJzeSUIq@vger.kernel.org
X-Gm-Message-State: AOJu0YwhYKvczFSYlOpAFfCeutgM56vNQk708L+YlLLmVtI5/BoDjzFV
	Xm094kasF/M9dSvaynBps8ag60JfDzr1Ojpkf966L9vFF062QAwNhG3pONsD9dxsprVX8ME+4OQ
	McefOIdiaSB9k8iveBxdvbp0d/r6dm0fo
X-Gm-Gg: ASbGncvC96/Qy/il+15nsHRdse7jSmYTIDGl3prRTkNC78oClS86xVNnGEaZY+Nrt2a
	HLKZE3nSCpDE9f19Uqht41JnU8xnlPDrPOYaNJ+/BwvpQn5JQnqJfIc4b+dnvtpQZ7H6N20jEn1
	58TtdJvq9W7DvC93MiTXPBaEpGza8SZ+M79563kZqAkgWQxXNxm1fjLOqnzl3RuwUiNp2M0T5qG
	4WgwMJjCJXOmpDNYAtr4SEhFyw2CmT6VU8xYz3uTnLXPzP51gydqSKujU/Jt8MmxkZMyh79xWNH
	6gRBrYAynbgiFFnaW9uncI4PFHv7gGd8
X-Google-Smtp-Source: AGHT+IEtiv6f5A4U2toq6DqqVmoKr8/hELUWnQCbOTnz3yC6cI3s9TkqLpZPfdtjRicNlJeQoPDX4dVqC2mb
X-Received: by 2002:a17:907:6d08:b0:ab7:d87f:665a with SMTP id a640c23a62f3a-abb70dc5897mr1364395666b.46.1739823894356;
        Mon, 17 Feb 2025 12:24:54 -0800 (PST)
Received: from windev.fritz.box (pc19f8e2d.dip0.t-ipconnect.de. [193.159.142.45])
        by smtp-relay.gmail.com with ESMTPS id a640c23a62f3a-abb6c102affsm52334966b.42.2025.02.17.12.24.53
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 17 Feb 2025 12:24:54 -0800 (PST)
X-Relaying-Domain: blueri.se
Date: Mon, 17 Feb 2025 21:24:51 +0100
From: Patrick Wildt <patrick@blueri.se>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: add MNT Reform 2
Message-ID: <Z7ObE57pKxcu_au5@windev.fritz.box>
References: <Z60MU05JLtI9VzuU@windev.fritz.box>
 <Z60MiujaPpWNYmBE@windev.fritz.box>
 <CALWfF7KHagN=ef1C01PmmpfumdthBy6PKPi3U+9K+rgP8sNrOQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALWfF7KHagN=ef1C01PmmpfumdthBy6PKPi3U+9K+rgP8sNrOQ@mail.gmail.com>

Hi,

thanks for the input!  I've addressed these things in a v4 that I just
sent out:

* Added chassis-type
* Removed unused nodes
* Sorted alphabetically

The brightness setting is in-line with what MNT are shipping currently
for their other modules.  I can send a follow-up patch to update the
settings for both i.MX8MQ and A311D.

Cheers,
Patrick

On Wed, Feb 12, 2025 at 10:28:59PM -0600, Jimmy Hon wrote:
> Hi,
> 
> A few questions below.
> 
> [ snip ]
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi
> > new file mode 100644
> > index 000000000000..898a7b29692f
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi
> 
> That's interesting, the Firefly Core 3588Q SoM's dtsi is more than 95%
> the same as the Core 3588J SoM's dtsi.
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3588-firefly-core-3588j.dtsi?h=v6.14-rc1
> 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts b/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts
> > new file mode 100644
> > index 000000000000..cd7a82a3b0de
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts
> > @@ -0,0 +1,348 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> > + * Copyright (c) 2024 MNT Research GmbH
> > + *
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include <dt-bindings/soc/rockchip,vop2.h>
> > +#include <dt-bindings/usb/pd.h>
> > +
> > +#include "rk3588-firefly-icore-3588q.dtsi"
> > +
> > +/ {
> > +       model = "MNT Reform 2 with RCORE RK3588 Module";
> > +       compatible = "mntre,reform2-rcore", "firefly,icore-3588q", "rockchip,rk3588";
> Will you be adding "chassis-type"?
> 
> > +
> > +       aliases {
> > +               ethernet0 = &gmac0;
> > +               mmc1 = &sdmmc;
> > +       };
> > +
> > +       chosen {
> > +               stdout-path = "serial2:1500000n8";
> > +       };
> > +
> > +       backlight: backlight {
> > +               compatible = "pwm-backlight";
> > +               pwms = <&pwm8 0 10000 0>;
> > +               enable-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
> > +               brightness-levels = <0 8 16 32 64 128 160 200 255>;
> > +               default-brightness-level = <128>;
> Interestingly, the brightness curve is more fine-grained than one used
> for the IMX8MQ SoM and the A311D SoM. Should those be updated
> eventually?
> 
> brightness-levels = <0 32 64 128 160 200 255>;
> default-brightness-level = <6>;
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts?h=v6.14-rc1#n24
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dts?h=v6.14-rc1#n198
> 
> [ snip ]
> > +
> > +&combphy1_ps {
> > +       status = "okay";
> > +};
> Should this be left out? It doesn't look like pcie2x1l0 or sata1 is being used.
> 
> > +
> > +&combphy2_psu {
> > +       status = "okay";
> > +};
> Should this be left out? It doesn't look like pcie2x1l1, sata2, or
> usb_host2_xhci is being used.
> 
> > +
> > +&saradc {
> > +       vref-supply = <&avcc_1v8_s0>;
> > +       status = "okay";
> > +};
> > +
> > +&tsadc {
> > +       status = "okay";
> > +};
> These nodes should be sorted alphabetically
> 
> > +
> > +&sdmmc {
> > +       bus-width = <4>;
> > +       max-frequency = <40000000>;
> > +       no-sdio;
> > +       no-mmc;
> > +       no-1-8-v;
> > +       cap-sd-highspeed;
> > +       vqmmc-supply = <&vcc3v3_pcie30>;
> > +       vmmc-supply = <&vcc3v3_pcie30>;
> > +       cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> > +       disable-wp;
> > +       status = "okay";
> > +};
> > +
> > +&mdio0 {
> > +       rgmii_phy: ethernet-phy@0 {
> > +               compatible = "ethernet-phy-ieee802.3-c22";
> > +               reg = <0x0>;
> > +       };
> > +};
> 
> Jimmy

