Return-Path: <devicetree+bounces-8975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDDC7CADFD
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 17:45:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6FCA1B20D6F
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 15:45:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30AF32C849;
	Mon, 16 Oct 2023 15:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="svuMLRS+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747292AB51
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 15:45:39 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF89BF2
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 08:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=4SKD2dI71ARn4+GwUKoLzmx3+1gUg6IpOTxf9UgEwkw=; b=sv
	uMLRS+/EHyG8gJzptkMRNdqEvozHbTWl0mLr7rarbqJBH2ffIUCSAn5slbzPxKq7BuYKjbR2W1Uy+
	SncG2trOC08dvCq5W7/VL/0b4BzSbc7b1lGGIrVV7htYiCaAzQVtFRqy2LVQGKQLRkBmKWEpSTs/x
	L58gXJhMikBrDnY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qsPmU-002MN3-5m; Mon, 16 Oct 2023 17:45:22 +0200
Date: Mon, 16 Oct 2023 17:45:22 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Cc: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Hauke Mehrtens <hauke@hauke-m.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH 2/2] ARM: dts: BCM5301X: Set fixed-link for extra Netgear
 R8000 CPU ports
Message-ID: <f992f02b-1ec0-4588-98df-4141594e10ff@lunn.ch>
References: <20231013103314.10306-1-zajec5@gmail.com>
 <20231013103314.10306-2-zajec5@gmail.com>
 <627b78cd-7c9f-4da0-b4be-54891041580e@lunn.ch>
 <1a6df2259fd9c3885a4a575f367a4f1a@milecki.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1a6df2259fd9c3885a4a575f367a4f1a@milecki.pl>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 16, 2023 at 05:36:24PM +0200, Rafał Miłecki wrote:
> On 2023-10-14 18:50, Andrew Lunn wrote:
> > On Fri, Oct 13, 2023 at 12:33:14PM +0200, Rafał Miłecki wrote:
> > > From: Rafał Miłecki <rafal@milecki.pl>
> > > 
> > > While switch ports 5 and 7 are disabled (vendor designed port 8 to be
> > > used for CPU traffic) they could be used strictly technically. For
> > > some
> > > reason however both those ports need forcing link to be usable.
> > 
> > This explanation is not making much sense to me.
> > 
> > I assume this board does not have an RJ45 for these two ports? But
> > does it have a header so you can access the MII interface?
> 
> This PATCH as it is requires a basic familiarity with Northstar platform
> or checking bcm-ns.dtsi.
> 
> All Northstar (BCM5301X) devices have 3 Ethernet interfaces. 99% of them
> have:
> 1. gmac0 connected to port 5
> 2. gmac1 connected to port 7
> 3. gmac2 connected to port 8
> (it's described in bcm-ns.dtsi).
> 
> 
> Some vendors decide to use gmac0 and switch port 5. They fill NVRAM with
> MAC for gmac0.
> 
> Some vendors decide to use gmac2 & port 8. They set MAC for gmac2.
> 
> 
> Netgear decided to use gmac2 & port 8 for R8000. They fill NVRAM with
> MAC for gmac2.
> 
> If you however insist on using gmac0 you could do that. That just
> requires setting up gmac0 with a custom/random MAC and forcing link for
> switch ports as described in this PATCH.

If the ports are not used, you have them set to disabled, why do they
need a fixed-link? That is what i don't understand yet.

     Andrew

