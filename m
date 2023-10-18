Return-Path: <devicetree+bounces-9800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E417CE88D
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 22:09:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B58A91C2084E
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:09:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 262E71EB49;
	Wed, 18 Oct 2023 20:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="AUiux2aW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93B961EB2C
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 20:09:41 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 649A6B8
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 13:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=2mrggDdJ8FuE/cM+p18kP2DyIYtzF8K+Wv+yii4jub8=; b=AUiux2aWWTJxa7pFJnr7fQqFom
	wxlneXwR5PkZDsIPlZ4HDpGu01OC/ROcH3YqhWDL39NB+Hko2ETFWEuU4XfD2gEH/o7HP36b3RYbm
	yeqobKFsgyYYySc/96P+/gGO0DgIJXusp9f70WfAWxwkQtaarUOsrV6lp8GfgLld9rn0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qtCr0-002cRa-Po; Wed, 18 Oct 2023 22:09:18 +0200
Date: Wed, 18 Oct 2023 22:09:18 +0200
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
Message-ID: <e77b92d4-1564-4c05-a4ff-beb0c87aa5c6@lunn.ch>
References: <20231013103314.10306-1-zajec5@gmail.com>
 <20231013103314.10306-2-zajec5@gmail.com>
 <627b78cd-7c9f-4da0-b4be-54891041580e@lunn.ch>
 <1a6df2259fd9c3885a4a575f367a4f1a@milecki.pl>
 <f992f02b-1ec0-4588-98df-4141594e10ff@lunn.ch>
 <e91b2d1c390f4a45dc92a99a112361eb@milecki.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e91b2d1c390f4a45dc92a99a112361eb@milecki.pl>

> So developers/hackers can use them for custom needs by just dropping
> "disabled" bit. That's a pretty simple step compared to figuring out
> that a fixed link is needed.
> 
> I can imagine advanced users using extra ports and interfaces to get
> higher speeds. If you use a single switch port and single interface
> you're limited to 1 Gbps. By using two you can exceed that limitation.
> 
> This is clearly some corner case but I don't think it really violates
> what DT is for. We just describe hardware more clearly. There is a fixed
> link after all. That port just happens to be disabled.

Please reformulate this into the commit message. Then it becomes a
good answer to the question `Why?` which is what the commit message is
all about.

    Andrew

