Return-Path: <devicetree+bounces-249016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DF1CD88A1
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:16:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5FA3530053FC
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 09:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 237382E8B74;
	Tue, 23 Dec 2025 09:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="pMFy6O32"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258EA3A1E6A;
	Tue, 23 Dec 2025 09:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766481249; cv=none; b=F65YHFmnd8qwoGR1TeekU4P8czA/zb4mJ7o4fldNkKQmvd8oaYWOAt11055EQAzsjYIF8ul6+ZNiboECXXem2pdbohRp/eXpgxiBDkfUkdfo+kJVnxxYNiQQ7fWk6aGCiFqk5Mtsx3rY5BVcCnRFxVYmC54JNVQQXdE7gpIhcac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766481249; c=relaxed/simple;
	bh=F52z/IafFIQV3XHEvsYXzzNgdie4wpiuMKj+yNkjZZ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lTMofBXJ6gspnB8pWvwxSgRyM6RQuQEfWG0gqAW7kulhooilAQifjcDhWv5llr4d7WoE6QpMwbDCFPwh8em8yheWbUp0HhQ5JyFzpTe4g8uqcVTOxN1zWft3szQKs+C35Wbqxi7TdkkaZbiPrA4iZsz9wp1sMr8ueyzb7wX+T7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=pMFy6O32; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=HEk39s4EUEiPzn8QUrMy0dlOdorZCmMf4fjGiDLyucY=; b=pM
	Fy6O32zXiYSnuByU6S4Pnh4CTm2w1pkPqd/2RU0oPjhbC0146rEV6+5nHEmctSJJD3ysmjpFcr+nu
	bwyGbv8CIM+GI9DWjEl6tL6olkcK0AB7+kWr1JxniPo/ZRmB53AMXxXG7zWWaLUsxaQmWR/+lTVm/
	gutJkDs26RLuB48=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vXySY-000HP0-F1; Tue, 23 Dec 2025 10:13:38 +0100
Date: Tue, 23 Dec 2025 10:13:38 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: =?utf-8?B?6Kyd5pS/5ZCJ?= <kylehsieh1995@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: ventura2: Add Meta ventura2 BMC
Message-ID: <35f3eba9-5ec4-4cba-8a64-fb521dc65b79@lunn.ch>
References: <20251222-ventura2_initial_dts-v1-0-1f06166c78a3@gmail.com>
 <20251222-ventura2_initial_dts-v1-2-1f06166c78a3@gmail.com>
 <c069b452-df22-4afa-bf6a-c48949f40ebc@lunn.ch>
 <CAF7HswN_jEXOU_9K4LpLnbhvd+RD0qqELAHxMBbp=hGtMjS4kQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAF7HswN_jEXOU_9K4LpLnbhvd+RD0qqELAHxMBbp=hGtMjS4kQ@mail.gmail.com>

On Tue, Dec 23, 2025 at 09:49:02AM +0800, 謝政吉 wrote:
> On Mon, Dec 22, 2025 at 5:30 PM Andrew Lunn <andrew@lunn.ch> wrote:
> >
> > > +&mdio0 {
> > > +     status = "okay";
> > > +};
> > > +
> > > +&mac2 {
> > > +     status = "okay";
> > > +     phy-mode = "rmii";
> > > +     pinctrl-names = "default";
> > > +     pinctrl-0 = <&pinctrl_rmii3_default>;
> > > +     fixed-link {
> > > +             speed = <100>;
> > > +             full-duplex;
> > > +     };
> > > +};
> >
> > That is an odd combination. You enable the MDIO bus, but don't have
> > any PHYs on it, no phandles pointing to it. And you have this
> > fixed-link. It makes me think you have an Ethernet switch on the bus,
> > and this connects to it?
> Thanks for the clarification.
> Yes, there is an Ethernet switch in the design.
> The MAC is connected to the switch via RMII using a fixed-link
> configuration.

What make/model of switch is it? Is it unmanaged, or does it use SPI
or I2C for management?

	Andrew

