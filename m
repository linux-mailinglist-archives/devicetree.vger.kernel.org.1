Return-Path: <devicetree+bounces-81955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F15491E099
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 15:25:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 07269B24689
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 13:25:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 218D415DBDD;
	Mon,  1 Jul 2024 13:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="XGjrOiet"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385E715532E
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 13:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719840341; cv=none; b=Dmzxg5QGBfLoMProHGD/HUu/2f/49QgU7h/SpCueta1dc9fIsQUsagmC8p9a2JWE0/ZsjpAXfeqtClfF+Yqk52bNyxRBD3DTtYjsxVMVxXvIApSnVq6I8puMy/4XC8Kj5LO1Fh8ZvH6mJc97zhmajUSj7bwH+kKvWCQfbwSgXj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719840341; c=relaxed/simple;
	bh=2LrdI1mV/HEtxSz7JrgnE2pL91i+2JekehYN2Fcpad4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FuckZ2vsoesjo6ZZIc5yJGBjp2+JtEVbGrx5aEC6cuKZuq6hGdCpCErvfu1WeKT06oQIzr5VhxQVWyCZELkMnKjdW9iMqmg4u7vp+1k9szt56hViOQ7JARLT8WXRokpxCacDDSFJ7XhBS3NxysuKUOAc6EwVVJWDgcCI3xvXkE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=XGjrOiet; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=fyWDWwFXNae/YtAbU0wf6ksLYEcJSZzo+3Jm36ZwlTg=; b=XGjrOietUDE5PZ1VwM1s7w5eMm
	/XemAzoja1cdIi+uxE7zZgkYiEoDFGGotAUBpI5Nb5PaPE+8UHd1KEpa15pNqPaXtoh44JR2UXezU
	92cXoAeWwHJsinnTOFMsFWCBwUvxTH5hA/P/DTkAFmCG0IeVS8W1WpOw1U9/v2S6EP3A=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1sOH2C-001XRQ-1D; Mon, 01 Jul 2024 15:25:32 +0200
Date: Mon, 1 Jul 2024 15:25:32 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Zoltan HERPAI <wigyori@uid0.hu>, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/3] ARM: dts: marvell: add support for D-Link DNS-320L
Message-ID: <8632249f-331b-4045-bfae-78f90907e666@lunn.ch>
References: <20240629113450.127561-1-wigyori@uid0.hu>
 <20240629113450.127561-3-wigyori@uid0.hu>
 <b55a888d-9e64-40fb-9d78-26703835d1e6@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b55a888d-9e64-40fb-9d78-26703835d1e6@kernel.org>

On Mon, Jul 01, 2024 at 08:01:46AM +0200, Krzysztof Kozlowski wrote:
> On 29/06/2024 13:34, Zoltan HERPAI wrote:

> > +++ b/arch/arm/boot/dts/marvell/kirkwood-dns320l.dts
> > @@ -0,0 +1,197 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +/*
> > + * Device Tree file for D-Link DNS-320L
> > + *
> > + * Copyright (C) 2024, Zoltan HERPAI <wigyori@uid0.hu>
> > + * Copyright (C) 2015, Sunke Schluters <sunke-dev@schlueters.de>
> > + *
> > + * This file is based on the works of:
> > + * - Sunke Schluters <sunke-dev@schlueters.de>
> > + *   - https://github.com/scus1/dns320l/blob/master/kernel/dts/kirkwood-dns320l.dts
> > + * - Andreas Bohler <dev@aboehler.at>:
> > + *   - http://www.aboehler.at/doku/doku.php/projects:dns320l
> > + *   - http://www.aboehler.at/hg/linux-dns320l/file/ba7a60ad7687/linux-3.12/kirkwood-dns320l.dts
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "kirkwood.dtsi"
> > +#include "kirkwood-6281.dtsi"
> > +
> > +/ {
> > +	model = "D-Link DNS-320L";
> > +	compatible = "dlink,dns320l", "marvell,kirkwood-88f6702", "marvell,kirkwood";
> > +
> > +	memory {
> > +		device_type = "memory";
> > +		reg = <0x00000000 0x10000000>;
> > +	};
> > +
> > +	chosen {
> > +		bootargs = "console=ttyS0,115200n8 earlyprintk";
> > +		stdout-path = &uart0;
> > +	};
> > +
> > +	gpio-keys {
> > +		compatible = "gpio-keys";
> > +		#address-cells = <1>;
> > +		#size-cells = <0>;
> 
> Nope, these cannot be there.

Depends. The kernel, which is what really matters, is happy with them
there. Have a look at all the other kirkwood dts files.

> It does not look like you tested the DTS against bindings. Please run
> `make dtbs_check W=1` (see
> Documentation/devicetree/bindings/writing-schema.rst or
> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
> for instructions).

I suspect that is not going to be easy to interpret. kirkwood is very
old, much older than the YAML descriptions. DT descriptions of this
age were considered correct if the kernel understood them, and the
kernel is much more flexible than the YAML bindings. As a result,
there are going to be a huge number of warnings, and it will take a
lot of skill to pick out real warning which can be fixed from the
noise. Also, nobody really cares, because these devices have been out
of production for a decade. Nobody is going to clean up the DT files.

> > +		pinctrl-0 = <&pmx_buttons>;
> > +		pinctrl-names = "default";
> > +
> > +		button@1 {
> > +			label = "Reset push button";
> > +			linux,code = <KEY_RESTART>;
> > +			gpios = <&gpio0 28 1>;
> > +		};
> > +
> > +		button@2 {
> > +			label = "USB unmount button";
> > +			linux,code = <KEY_EJECTCD>;
> > +			gpios = <&gpio0 27 1>;
> > +		};
> > +	};
> > +
> > +	gpio-leds {
> > +		compatible = "gpio-leds";
> > +		pinctrl-0 = <&pmx_leds>;
> > +		pinctrl-names = "default";
> > +
> > +		blue-usb {
> 
> It does not look like you tested the DTS against bindings. Please run
> `make dtbs_check W=1` (see
> Documentation/devicetree/bindings/writing-schema.rst or
> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
> for instructions).

> > +	ocp@f1000000 {
> 
> Why you are not overriding by label/phandle?

Look at the old .dts files. That is the way it was done 10 years
ago. This is uniform with other kirkwood .dts files. There is
something to be said for being uniform with other files of the same
sort.

I think we need to find a balance here. I agree with some of your
comments, removing the regulator container, moving gpio-keys and
gpio-leds. But i think ocp@f1000000 and not using labels can stay.

	Andrew


