Return-Path: <devicetree+bounces-81963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBE391E0F7
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 15:39:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BFE9A1C21440
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 13:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30ABB15E5BC;
	Mon,  1 Jul 2024 13:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="yBDB7ON8"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACE2D14B96C
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 13:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719841174; cv=none; b=eLHKHG7eUZv07XAljwhoxkzj/h9D6QOn6x1woamRnJpUYlJctZ+qVyTF7tpdJfSwt9HzPOyt02+1Nk6MzICoT0lEJpn3jCALLvbsBD2UNXatQNj2k0n5l0Zg93HSQQrx+DPFY3PmelbGZ6ztmYx9x6MaYvIf152Rhge8dol9WPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719841174; c=relaxed/simple;
	bh=PCjE59ikfhS/dsCiEBFAfrkl5AOZIPVwDiGyp4NwkOc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PmdoijT+s0C207YrEJZIhoSxHobCZR6/J9ZgIG/Se+1KkkWSg6PEDrKVpVNbUmJz7YTTRbkoXsZ2IIn07Zs7DKIaiS4NbEiJbrdvXt7Qa5Cfl22YUbH4lzx5pMoBmQM4LzV7QTfZt1bInIbm5SLSlB+Q63KtdnlDCuvqNqMehTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=yBDB7ON8; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=omeF+1jhHE2kDH/3EJYdMMSf542Jiaa1EiFvb08Urlc=; b=yBDB7ON8Y1nld2XqE86uNvEi8c
	UTXl1+wssnl76SUVFE7tx/6LzYz1s4rKJb0uZGyjFTXi/uwb2Mtdzi9ALrFU9j+xm/tpICsc4JP4y
	pXhOMrxQ57VJQLi4ICUe2AI2bauM5M7/GYd24TxmgEEsWCtxgNjP8CdxVmFi+5ZbFW4Y=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1sOHFc-001Y2M-Kf; Mon, 01 Jul 2024 15:39:24 +0200
Date: Mon, 1 Jul 2024 15:39:24 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Zoltan HERPAI <wigyori@uid0.hu>, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/3] ARM: dts: marvell: add support for D-Link DNS-320L
Message-ID: <29f016b9-153c-4ff2-8dc0-6052c3f59d18@lunn.ch>
References: <20240629113450.127561-1-wigyori@uid0.hu>
 <20240629113450.127561-3-wigyori@uid0.hu>
 <b55a888d-9e64-40fb-9d78-26703835d1e6@kernel.org>
 <8632249f-331b-4045-bfae-78f90907e666@lunn.ch>
 <9204b028-736b-424f-8f3c-085de5927aec@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9204b028-736b-424f-8f3c-085de5927aec@kernel.org>

> > I suspect that is not going to be easy to interpret. kirkwood is very
> > old, much older than the YAML descriptions. DT descriptions of this
> > age were considered correct if the kernel understood them, and the
> > kernel is much more flexible than the YAML bindings. As a result,
> > there are going to be a huge number of warnings, and it will take a
> > lot of skill to pick out real warning which can be fixed from the
> > noise. Also, nobody really cares, because these devices have been out
> > of production for a decade. Nobody is going to clean up the DT files.
> 
> One can just read the binding. Is there address/size cells?

And i suspect this developer also does not know that. This is a
typical cut/paste .dts file, copied from a 10 year old working
example. If the tools are not helpful, we Maintainers need to fill in
the gaps.

In this case, I would suggest looking in
arch/arm64/boot/dts/marvell/*.dts and follow what is done there. These
files are more modern, so are more likely to follow the bindings. Look
where the gpip-keys and gpip-led nodes are placed.

      Andrew

