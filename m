Return-Path: <devicetree+bounces-301789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNxUB9NKEGpvVwYAu9opvQ
	(envelope-from <devicetree+bounces-301789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 14:23:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D745B3DAA
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 14:23:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EF2493099FA7
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 12:07:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44B27377EC6;
	Fri, 22 May 2026 12:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="BU5YJw0e"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7FF36CDF2;
	Fri, 22 May 2026 12:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779451569; cv=none; b=f9s4QxDI4+IVkBN8XUtM0MB6aVlZnukdQubmOjpUXm/zZ5XX/oeLJe4zuqIOkDskuPUg3kdeaOskQDm0IbfMiOAFfSW59LGQSJ3Wvt3y3LZe9bg1dvEpv32c/VTH3kwQfUfOyd292093e/697PZoG+ERQ50t1R5ZZP+CRHSHxD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779451569; c=relaxed/simple;
	bh=QqQcEA5tg3kdhXI6f6VNyEdo+X5XeEM0k3YusdDybVc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a3Ik1LMIAuqMbpWjXahjmoXeJeH2juSW4Vyj+tRNcMrATrUWa4Y/WR1yzJ8cTOjYEQcykjWERgMQ/9H+UnMau78C6QreQCsjQHP3mwCbKDbGFXyijf/CsGYyKZcMpvX+osGag28fOB0wC8oC1MbAOUa3AhZpeR5LlOj0H1ANo4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=BU5YJw0e; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=B27jTI/Q5d9ahPjBVpzy9cPRWGSbXJiqn0fKYgn90Gw=; b=BU
	5YJw0e+XWmNZ0vQxuvcesgoTNCR8EzxmheZvbut60r4DRcdatB4ErSYAj3Jz4DxlkuSZlkTED5AG5
	hARFJnnksoKbtLc4ql6Wqlu95tuiwhU8e/AszIyq3q8NNTcKQpPXKM1yfPbkvgHLPA9wRIQfRZdLW
	SfOeKqUJ6cu3b38=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wQOdK-004AQI-3E; Fri, 22 May 2026 14:05:42 +0200
Date: Fri, 22 May 2026 14:05:42 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Anirudh Srinivasan <anirudhsriniv@gmail.com>
Cc: Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH v2] ARM: dts: aspeed: Enable networking for Asus Kommando
 IPMI Card
Message-ID: <d8c7d7c9-6f2f-4d3f-95d4-877e8504a1b6@lunn.ch>
References: <20260331-asus-kommando-networking-v2-1-f7d72ae5d40d@gmail.com>
 <CAJ13v3RtV+_P_ShfrM5vH+neT0cB6t5yAbqGiiw7S7Y8qpVY=Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAJ13v3RtV+_P_ShfrM5vH+neT0cB6t5yAbqGiiw7S7Y8qpVY=Q@mail.gmail.com>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-301789-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[104.64.211.4:from];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lunn.ch:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received,156.67.10.101:received];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:mid,lunn.ch:dkim,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,0.0.0.0:email]
X-Rspamd-Queue-Id: 23D745B3DAA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, May 21, 2026 at 10:49:24PM -0500, Anirudh Srinivasan wrote:
> Hi Andrew,
> 
> On Tue, Mar 31, 2026 at 9:18 AM Anirudh Srinivasan
> <anirudhsriniv@gmail.com> wrote:
> >
> > Adds the DT nodes needed for ethernet support for Asus Kommando, with
> > phy mode set to rgmii-id.
> >
> > When this DT was originally added, the phy mode was set to rgmii (which
> > was incorrect). It was suggested to remove networking support from the
> > DT till the Aspeed networking driver was patched so that the correct phy
> > mode could be used.
> >
> > The discussion in [1] mentions that u-boot was inserting clk delays that
> > weren't needed, which resulted in needing to set the phy mode in linux
> > to rgmii incorrectly. The solution suggested there was to patch u-boot to
> > no longer insert these clk delays and use rgmii-id as the phy mode for
> > any future DTs added to linux.
> >
> > This DT was tested (on the OpenBMC u-boot fork [2]) with a u-boot DT
> > modified to insert clk delays of 0 (instead of patching u-boot itself).
> > [3] adds a u-boot DT for this device (without networking) and describes
> > how to patch it to add networking support. If this patched DT is used,
> > then networking works with rgmii-id phy mode in both u-boot and linux.
> >
> > [1] https://lore.kernel.org/linux-aspeed/ef88bb50-9f2c-458d-a7e5-dc5ecb9c777a@lunn.ch/
> > [2] https://github.com/openbmc/u-boot/tree/v2019.04-aspeed-openbmc
> > [3] https://lore.kernel.org/openbmc/20260328-asus-kommando-v2-1-2a656f8cd314@gmail.com/
> >
> > Signed-off-by: Anirudh Srinivasan <anirudhsriniv@gmail.com>
> > ---
> > This patch is based off aspeed/arm/dt from bmc tree
> > ---
> > Changes in v2:
> > - Commit message now mentions that the u-boot tested against is the
> >   openbmc u-boot fork
> > - Link to v1: https://lore.kernel.org/r/20260328-asus-kommando-networking-v1-1-66d308b88536@gmail.com
> > ---
> >  .../dts/aspeed/aspeed-bmc-asus-kommando-ipmi-card.dts  | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-asus-kommando-ipmi-card.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-asus-kommando-ipmi-card.dts
> > index ab7ad320067c1ddc0fea9ac386fd488c8ef28184..e0f7d92efa18ccbad2c336236c3b9d01b7de1bba 100644
> > --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-asus-kommando-ipmi-card.dts
> > +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-asus-kommando-ipmi-card.dts
> > @@ -107,6 +107,24 @@ &gpio1 {
> >         /*18E0 32*/ "","","","","","","","";
> >  };
> >
> > +&mac2 {
> > +       status = "okay";
> > +
> > +       phy-mode = "rgmii-id";
> > +       phy-handle = <&ethphy2>;
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&pinctrl_rgmii3_default>;
> > +};
> > +
> > +&mdio2 {
> > +       status = "okay";
> > +
> > +       ethphy2: ethernet-phy@0 {
> > +               compatible = "ethernet-phy-ieee802.3-c22";
> > +               reg = <0>;
> > +       };
> > +};
> > +
> >  &vhub {
> >         status = "okay";
> >  };
> >
> > ---
> > base-commit: 76b4ec8efdc3887cdbf730da2e55881fc1a18770
> > change-id: 20260328-asus-kommando-networking-5c0612aa6b8c
> >
> > Best regards,
> > --
> > Anirudh Srinivasan <anirudhsriniv@gmail.com>
> >
> 
> While we're figuring out what to do with u-boot, what are your
> thoughts on getting this patch in so that the kernel DTS changes
> needed for networking land in this cycle?
> 
> The current commit message might become somewhat outdated if the
> u-boot patch changes though, so not sure if that's okay.

The commit message explains "Why?", which is what is important. So it
should not matter if it becomes outdated. And the DT is correct, no
matter how the issue is solved.

So i'm O.K. with this.

   Andrew

