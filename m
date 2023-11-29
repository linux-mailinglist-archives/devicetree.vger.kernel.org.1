Return-Path: <devicetree+bounces-19989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 291397FD798
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C00ECB20F30
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 13:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87EFA1E50B;
	Wed, 29 Nov 2023 13:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="JiAw1Eo0"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81261F9;
	Wed, 29 Nov 2023 05:11:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=BZG9FD4EfskGcN434zEVxgvyzppzGAwPl3SgiAbg4Nw=; b=JiAw1Eo0EsmJUDaRHPN7JNlzNT
	OXQnQcgRFqNPYzCOyhDMiQ+W6DciBmIYcQ8kSmJxeQujq0aZDXbe48hz5BRiLBOwEkWyFkE+AaAsd
	EkGwRTgy5DOFj/Bt2p6JS1SZAgWWQIQlbnHFeaAUmzTsWfecoVUSbtgy04R6vIgr5yzs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1r8KLm-001Za5-RF; Wed, 29 Nov 2023 14:11:34 +0100
Date: Wed, 29 Nov 2023 14:11:34 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Elad Nachman <enachman@marvell.com>
Cc: "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
	"sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>,
	"pali@kernel.org" <pali@kernel.org>,
	"mrkiko.rs@gmail.com" <mrkiko.rs@gmail.com>,
	"chris.packham@alliedtelesis.co.nz" <chris.packham@alliedtelesis.co.nz>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	Yuval Caduri <cyuval@marvell.com>
Subject: Re: [EXT] Re: [PATCH v6 3/3] arm64: dts: cn913x: add device trees
 for COM Express boards
Message-ID: <349b4240-8e5c-4afb-ace8-913f213a537f@lunn.ch>
References: <20231127190857.1977974-1-enachman@marvell.com>
 <20231127190857.1977974-4-enachman@marvell.com>
 <35f98bc2-dc26-4441-8ed3-1ecce582d0d2@lunn.ch>
 <BL1PR18MB424884AB9E0D8E8BF4AD1926DB83A@BL1PR18MB4248.namprd18.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL1PR18MB424884AB9E0D8E8BF4AD1926DB83A@BL1PR18MB4248.namprd18.prod.outlook.com>

> > Now i'm confused. What does rd mean?
> > 
> > I would expect RD mean Reference Design, and that is the complete device in
> > its box.
> 
> AC5X RD can either work as you would expect, as a complete standalone box using the internal CPU, or you can move the switch on the back of the box to "external" mode, and connect via an external cable a kit which would allow it to use an external CPU COM Express module, mounted on top of an interposer kit.
> 
> > 
> > Yet, here you have RD for the carrier?
> > 
> > The box itself is called cn9131-ac5x-carrier?
> > 
> > This makes no sense to me.
> > 
> > Maybe i'm understanding this all wrong, and its the carrier which you are
> > producing a reference design for? The CPU module does not really matter? I
> 
> So in this case, once the switch is set to external as explained above, the AC5X RD becomes part of the carrier solution.
> This is a development/reference solution, not a full commercial solution, hence it has the flexibility to be configured in different modes of operation.

O.K, now this make more sense. Please expand the documentation, in
particularly the carrier, explaining how it can be used, and the .dts
file about it giving a complete system, but again the carrier is the
focus.

Is the internal CPU open? Or is it a black box which only Marvell
Firmware can use? I'm just wondering if we will need another .dtsi
file describing the internal CPU, and a .dts file which includes both
the carrier and the internal CPU .dtsi to give an image you can boot
on the carrier?

	Andrew

