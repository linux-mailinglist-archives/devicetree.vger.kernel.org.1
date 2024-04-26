Return-Path: <devicetree+bounces-63123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F0B8B3C93
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 18:15:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6153CB26D40
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 16:15:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 916E015253B;
	Fri, 26 Apr 2024 16:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aruba.it header.i=@aruba.it header.b="VJpqabk5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpcmd0642.aruba.it (smtpcmd0642.aruba.it [62.149.156.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD52414EC4C
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 16:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.149.156.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714148130; cv=none; b=FSZbpzuPuAPC1yz/HiasbQ6sEawuluVvgs1cSeZwE1YU4zyKRGFhMv261alvMQS1vS7zc1L07ztNnN8uWcBOdJnNM/kfJg6BSgwdsOxezCc/ruhjn32a3TjteX4yWlk4RadWpKBz8oTcUNWSDshDIU8iPG4Io4QnT3mipOi/gKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714148130; c=relaxed/simple;
	bh=pnyXw/ftob25tneROsiaKUILSD4JRB3GjJx1OTH8R2U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p7RhcYBWFnIdXezjUGBR/W0y4yJmD8OwQqzzGbF3D6PNpNPg7zTc9OJYk7Tv4aLJX4BbJdpkCh9AaPkX5QuughzjXpQMUPGXBhycVOurJmkP3DxFkKTkpW17f9b+5B9ijivFZx7uWXSzd2Cjgn0M65+zK93/f9tOracF6JujVT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=engicam.com; spf=pass smtp.mailfrom=engicam.com; dkim=pass (2048-bit key) header.d=aruba.it header.i=@aruba.it header.b=VJpqabk5; arc=none smtp.client-ip=62.149.156.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=engicam.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=engicam.com
Received: from engicam ([146.241.23.148])
	by Aruba Outgoing Smtp  with ESMTPSA
	id 0O7Rsyf2ImFXq0O7SsDdoJ; Fri, 26 Apr 2024 18:08:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1714147695; bh=pnyXw/ftob25tneROsiaKUILSD4JRB3GjJx1OTH8R2U=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=VJpqabk5ECoNvuraq1mYIGZvGuHGXNdrEX1Oq+11FkQs2WDYu516Mj9yVj4GosqtP
	 LFJrAQJ7TacT5InoM3oI4nhWKgSaymieOXUQuPFNyKXpshkRxbb0Cg4R6XuHCzUemO
	 zeZol0zfC90C+y+BLq6b4VKNxiOGqCLwW/a/o1K98ju/CFFsilYFKV32q+r3wfgzUw
	 TEmmGJC8bXOf9NoJpVWiTvae/haubHCuwGpprO2UgCyJrQtfg/O+HhKIeSafstbtLu
	 vKm/gemZlHaRtdPSFaAmkNRz2lMbDUFfisAoTY0bRBaa9hsS9EQ1dI3rmYva9AtEUw
	 WMXBXOUHcLERA==
Date: Fri, 26 Apr 2024 18:08:12 +0200
From: Fabio Aiuto <fabio.aiuto@engicam.com>
To: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Matteo Lisi <matteo.lisi@engicam.com>,
	Mirko Ardinghi <mirko.ardinghi@engicam.com>,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v6 3/3] arm64: dts: imx93: Add Engicam i.Core MX93 EDIMM
 2.0 Starter Kit
Message-ID: <ZivRbM0DiuWijsm0@engicam>
References: <20240426152730.9806-1-fabio.aiuto@engicam.com>
 <20240426152730.9806-4-fabio.aiuto@engicam.com>
 <CAOMZO5D=Ens3f-FnjEf8SDSTCChdzKW3m7LH+t6y6qUtWsSRZg@mail.gmail.com>
 <CAOf5uwkB7Z7FUt5K8CP3sEoCEahE=ipuXX4MRZYNgDw6eMuEfg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOf5uwkB7Z7FUt5K8CP3sEoCEahE=ipuXX4MRZYNgDw6eMuEfg@mail.gmail.com>
X-CMAE-Envelope: MS4xfEQHJUwPGut5HvpvFPF2pe71cWizGdRVhGS/taAnCGeAc19EvJ8snl1JKqeRzdYmu6JlGUIw/X6E6BKKxbiLt4S4opL8Ey0RE/hM1BJZB8gDGrfW4VYS
 cOWsq+L6/V//Ai30tXoqkv3rbIFViPw2Zv5HoL4pV8eai5aA5FlhSuvldApdGjGH+sNXxQfh/d6R4TQ3tLGM3P4AZC+jgN4/ew2ggZquxcd95ZIKXsNuTgbI
 /9YRbVzGRny3+2jXWTamKsaDpNkyantggycHvOBp+nTw7F24DAxNs0MQ6TAn3NXqbwDDtmw+OZElHeWFHzWySUqMPOs2Q/gpGJv8frNzdJXce/0VNK4zK1ZJ
 3R95wEK2HsuWDw/z7KPgs/NrApq5v9VDhUVuHsylLlX/PmrdSnJ19RcNkcyEl/OHoDMnSkonv3uphhx32+0qilW9eQ7oW5JSoGPTjX7oYoeM507hJAvb8XKU
 cz6ZWuxiUluQrrQd/Ul60peNWHrxGKDycEnsB09Ela8ZqSo9q6OFXeNdZfDs1obU11ZOgr9F38ZcUd6HVU9Vlop+orI+soF8hbTGFn0vemziWz6aNo3+mcV9
 bGKLtrAatuU/G+5luvYPy1mLW33EnXi83vrNWEUUWHLEHJOLo1lsgcNc7lrtOhq7mwFU3783+GRdQiNN9N4sb21U

Hello Michael,

Il Fri, Apr 26, 2024 at 05:59:39PM +0200, Michael Nazzareno Trimarchi ha scritto:
> Hi
> 
> On Fri, Apr 26, 2024 at 5:56 PM Fabio Estevam <festevam@gmail.com> wrote:
> >
> > Hi Fabio,
> >
> > On Fri, Apr 26, 2024 at 12:31 PM Fabio Aiuto <fabio.aiuto@engicam.com> wrote:
> >
> > > +&usdhc3 { /* WiFi */
> > > +       #address-cells = <1>;
> > > +       #size-cells = <0>;
> > > +       pinctrl-names = "default", "state_100mhz", "state_200mhz";
> > > +       pinctrl-0 = <&pinctrl_usdhc3>;
> > > +       pinctrl-1 = <&pinctrl_usdhc3>;
> > > +       pinctrl-2 = <&pinctrl_usdhc3>;
> > > +       mmc-pwrseq = <&usdhc3_pwrseq>;
> > > +       bus-width = <4>;
> > > +       no-1-8-v;
> > > +       non-removable;
> > > +       max-frequency = <25000000>;
> >
> > Is this 25MHz limitation correct?
> 
> This make the wifi a bit slow ;). You should be able to go to ~50Mhz at
> 3.3v. BTW the other mux
> are not needed "state_100mhz", "state_200mhz";
> 
> Sorry both Fabio, I did not see before
> 
> Michael

thanks for your comment, will get in touch with my colleagues
on monday, then I will give a feedback.

kr,

fabio

> 
> 
> Michael
> 
> 
> 
> 
> --
> Michael Nazzareno Trimarchi
> Co-Founder & Chief Executive Officer
> M. +39 347 913 2170
> michael@amarulasolutions.com
> __________________________________
> 
> Amarula Solutions BV
> Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
> T. +31 (0)85 111 9172
> info@amarulasolutions.com
> www.amarulasolutions.com

