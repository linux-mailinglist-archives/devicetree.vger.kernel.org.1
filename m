Return-Path: <devicetree+bounces-271575-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GUkGvSEqWkd9gAAu9opvQ
	(envelope-from <devicetree+bounces-271575-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 14:28:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4EA212969
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 14:28:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 94B933023780
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 13:28:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C80093A450B;
	Thu,  5 Mar 2026 13:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="BAYSc8DI"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9233A1E9D;
	Thu,  5 Mar 2026 13:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772717293; cv=none; b=tg6DcEQuUXR6gsPQ5W44KQiKHYus3zMqw1YHeMsIWl5Gc9nBZY5tTW6pNkxIlW8eFhM/wmyzeMJsO/5AoNVdKRbog3e+DrpIzrDt7cILEWJFHiLxVYojws3aHdtymnG55XRjhTnh9mnbucJVWcgdn+PVk50FBtHePRihfq/EBR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772717293; c=relaxed/simple;
	bh=9LreBdYQ2S5vRvRmxuyVnmsYsBnt7pZZlnhg9tNnJC0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I5rQ9L/jV9640BLfA9kozkg4Gc7J6xjpuks9qVSXu1TiHUfVfu7JWjKbzXNHxyLwPhY2oSD934Avca2iu9ww12DA0BYZfxdFpYYwHBA3Ccs786P3qEBMC27pSfWWCk6ASEViqoVwjc3zMIkpO2RM9Va6gFjzS0IeMuBbcJIoGAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=BAYSc8DI; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=1dMeUX2Xk9StLIqbGPYXzES8zoDvxqM6/CpgP+M7sCk=; b=BAYSc8DI/atjiwBSNuMx04jOlC
	WyE5kJjHsIJb/FolbwHzzh5FxYMude3XTNFs1PzECU8uOsZB9jnfsIi3ZQCZ3KiqZpwnCADAWTVHl
	mpV2ahH+/fWWIZDR918qn4oUm25sYfRWUq++LNJ0kllVTtJZ0Hl3uTujp2dXhW4EocEw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vy8kG-00AJok-91; Thu, 05 Mar 2026 14:28:04 +0100
Date: Thu, 5 Mar 2026 14:28:04 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Gabor Juhos <j4g8y7@gmail.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: marvell: armada-37xx: drop
 'marvell,usb-misc-reg' properties
Message-ID: <cacefc69-dba3-4ff6-a039-85fe35a91e0b@lunn.ch>
References: <20260304-armada-37xx-drop-usb-misc-reg-v1-1-800c1b746b7a@gmail.com>
 <db997887-2431-4baa-8e96-04f53ea59060@lunn.ch>
 <874imug18l.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <874imug18l.fsf@BLaptop.bootlin.com>
X-Rspamd-Queue-Id: 6D4EA212969
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-271575-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lunn.ch:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.226.144:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,bootlin.com:email,devicetree.org:url]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 08:54:34AM +0100, Gregory CLEMENT wrote:
> Hello Andrew,
> 
> > On Wed, Mar 04, 2026 at 08:12:43PM +0100, Gabor Juhos wrote:
> >> The 'marvell,usb-misc-reg' property is present both in the EHCI and
> >> in the XHCI USB host device nodes, however it is not documented. Thus
> >> 'make dtbs_check' produces warnings like these:
> >> 
> >>   /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@58000 (marvell,armada3700-xhci): Unevaluated properties are not allowed ('marvell,usb-misc-reg' was unexpected)
> >>           from schema $id: http://devicetree.org/schemas/usb/generic-xhci.yaml
> >>   /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@5e000 (marvell,armada-3700-ehci): Unevaluated properties are not allowed ('marvell,usb-misc-reg' was unexpected)
> >>           from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml
> >> 
> >> Apart from the fact that the properties are not documented, those are
> >> not even used by any USB host drivers. At least 'git grep' says this:
> >> 
> >>   $ git grep -n 'marvell.usb-misc-reg' v7.0-rc2
> >>   v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml:30:  marvell,usb-misc-reg:
> >>   v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml:41:  - marvell,usb-misc-reg
> >>   v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml:50:      marvell,usb-misc-reg = <&usb2_syscon>;
> >>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:372:                              marvell,usb-misc-reg = <&usb32_syscon>;
> >>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:383:                              marvell,usb-misc-reg = <&usb32_syscon>;
> >>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:396:                              marvell,usb-misc-reg = <&usb2_syscon>;
> >>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:406:                              marvell,usb-misc-reg = <&usb2_syscon>;
> >>   v7.0-rc2:drivers/phy/marvell/phy-mvebu-a3700-utmi.c:231:                                                         "marvell,usb-misc-reg");
> >
> 
> I don't follow:
> 
> > The phy-mvebu-a3700-utmi.c does use it, and does document it:
> >
> >   marvell,usb-misc-reg:
> >     description:
> >       Phandle on the "USB miscellaneous registers" shared region
> >       covering registers related to both the host controller and
> >       the PHY.
> >     $ref: /schemas/types.yaml#/definitions/phandle
> >
> > And the patch which added the property to the USB nodes also added the
> > PHY nodes.
> >
> > commit 05d168a56fae8ff50432d5dfe6e7423b989455a8
> > Author: Miquel Raynal <miquel.raynal@bootlin.com>
> > Date:   Tue Jan 29 10:36:34 2019 +0100
> >
> >     arm64: dts: marvell: armada-37xx: declare USB2 UTMI PHYs
> >
> 
> You stated that the property is used and was properly added.

I can understand your confusion. The commit message is not great. I
had to read quite a bit of code to convince myself the change is
correct.

The property is used and documented in the Generic PHY driver,
phy-mvebu-a3700-utmi.c. And the properties being removed are in USB
nodes. The properties in the PHY node are not removed.

The properties in the USB node have never been used, as far as i can
see.

	Andrew


