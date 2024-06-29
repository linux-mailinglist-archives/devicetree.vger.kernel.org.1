Return-Path: <devicetree+bounces-81605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1550091CD9F
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 16:34:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B72D91F21FB3
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 14:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A400939ADD;
	Sat, 29 Jun 2024 14:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="kP3R5fVo"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 917A71E51E
	for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 14:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719671675; cv=none; b=o8lTNZZDPkI/K/a8caYrmRVkRS4eQbdQZJFZZopqZVYTaka0MArKYRGxRNbHbsGwZZA54k+sU5zXkwNvnryFIuoKuwwFPgBKJ64AIlV7SSNaFhJcIgeY1hRxFAo+3kla3XBjucm7f+JGE1YBoxvrcjGweQBhbU0R41v+2wM9bWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719671675; c=relaxed/simple;
	bh=fBNp9Yj15Q/gQo6MopWRqtyIVjmZtaPDbDWJGDle7DY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WUBkcAPgxBOj73LuyDHA7J47ivngIz0JCiwONhovVfjMOZxhtTVKewAFhho5gss9PKu0KsdW2e1SDJDjm+7g8MpCEzl/ICVcvkTotwq0G26vMYHzym8lwFbFUUR+Bmf8LdLYu83MGbM14bTSU4ToJCDT3KDNh9p/NnOhDTOqdiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=kP3R5fVo; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=ubgU860l2PrPcNydwX68rRidQQChih7h6C8cZVAfWeo=; b=kP3R5fVoVOg5Ynj1X8Y25Mp3U9
	XqyER0c0DhO0xuQjMmsUsIC4KtLeKcSjR54aqueI9PK18hne2pjzfotWa8vIB0eWCU7FxHwbP07UI
	aoc090uaSnttUjqqR5AdxQFsPJJIONxSr9toLoTcQVF+wGdu1uOmJgQ83RMTuxbaBi50=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1sNZ9l-001Nhr-Tl; Sat, 29 Jun 2024 16:34:25 +0200
Date: Sat, 29 Jun 2024 16:34:25 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Zoltan HERPAI <wigyori@uid0.hu>
Cc: gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/3] ARM: dts: marvell: add support for D-Link DNS-320L
Message-ID: <b8c1ffed-8d91-48cf-8b8c-bea4021c272b@lunn.ch>
References: <20240629113450.127561-1-wigyori@uid0.hu>
 <20240629113450.127561-3-wigyori@uid0.hu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240629113450.127561-3-wigyori@uid0.hu>

It has been a long time since i reviewed a kirkwood DT
description. Also, best practices have changed, so the example you
copied is probably doing things which today would be classed as wrong.

> +// SPDX-License-Identifier: GPL-2.0-or-later

It is typical to use a dual license now:

// SPDX-License-Identifier: (GPL-2.0+ OR MIT)

However, if this is mostly Sunke Schluters work, you probably cannot
change the license without his agreement.

> +/*
> + * Device Tree file for D-Link DNS-320L
> + *
> + * Copyright (C) 2024, Zoltan HERPAI <wigyori@uid0.hu>
> + * Copyright (C) 2015, Sunke Schluters <sunke-dev@schlueters.de>
> + *
> + * This file is based on the works of:
> + * - Sunke Schluters <sunke-dev@schlueters.de>
> + *   - https://github.com/scus1/dns320l/blob/master/kernel/dts/kirkwood-dns320l.dts
> + * - Andreas Bohler <dev@aboehler.at>:
> + *   - http://www.aboehler.at/doku/doku.php/projects:dns320l
> + *   - http://www.aboehler.at/hg/linux-dns320l/file/ba7a60ad7687/linux-3.12/kirkwood-dns320l.dts
> + */
> +
> +/dts-v1/;
> +
> +#include "kirkwood.dtsi"
> +#include "kirkwood-6281.dtsi"
> +
> +/ {
> +	model = "D-Link DNS-320L";
> +	compatible = "dlink,dns320l", "marvell,kirkwood-88f6702", "marvell,kirkwood";
> +
> +	memory {
> +		device_type = "memory";
> +		reg = <0x00000000 0x10000000>;
> +	};

> +
> +	chosen {
> +		bootargs = "console=ttyS0,115200n8 earlyprintk";
> +		stdout-path = &uart0;

I _think_ current best practice is to make the serial port speed part
of the stdout-path

	stdout-path = &uart0:115200n8;

Also, earlyprintk is a debug flag, it should not be needed for a
production DT file.

> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		pinctrl-0 = <&pmx_buttons>;
> +		pinctrl-names = "default";
> +
> +		button@1 {
> +			label = "Reset push button";
> +			linux,code = <KEY_RESTART>;
> +			gpios = <&gpio0 28 1>;

Please use GPIO_ACTIVE_LOW rather than 1. Also for other places gpios
are used.

Thanks

	Andrew


