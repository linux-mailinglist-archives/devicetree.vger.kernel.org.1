Return-Path: <devicetree+bounces-81960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B401491E0BC
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 15:30:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E434A1C203DA
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 13:30:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58D3F2B9C6;
	Mon,  1 Jul 2024 13:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="4wmDNHnv"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0DD1CA9C
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 13:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719840626; cv=none; b=kq0rPtYBHiK6DXC9BwxOB61T7EnkktOgYmR35J8xqCrJHkAjk/vw3DdLoc30+4ZKVn4fLd8pvY0qZOKnc6Db7bCTODtnoiJ6pzo7Xv+WERA4O8MzILfZegsp2tzjjCefoNsG8S8VYrfQw1lOORUn0c6I4seiTtqpTrkFjQVOVTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719840626; c=relaxed/simple;
	bh=V3S1E4rZnFu9ieGKXIxs8tOvYbZp9JloMsGJvSejqpI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NZ5wd3UPpTv56Sy0zLj2/XvLptBFc/7/ZhWuwGSwlvrn6NFPFsmBlh4sVPOjzBGdCEQFFAw5S30HkhUHrXxThWP5y7qXFgkEoB5+1HcglrqKdHTkcpGcrCJC19CzgJnSOgW76ZQlt9n7eK9lnwByPzDxzIIgRp5ZTTcgzEEluIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=4wmDNHnv; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=dYwA1SeY3SgTJwLsQOzXYF/xBQnWRmzdsPJ1EQ0H60g=; b=4wmDNHnvMWgiJCl/piJ7HL3cLE
	OGgT83Ug6UO62fvSJnnQSpznclTB1qlysST6AempPtaj7Zl1ukW53lxdMhIGkJxZLDi5mgfOCQVl/
	fhwznCuPvyR/eOZWLv/VGQaSKUhCeOB7ZKtLpXL1IWMQuy+0LTIt2QZKl0tUk0p+gh20=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1sOH6i-001XzU-Lp; Mon, 01 Jul 2024 15:30:12 +0200
Date: Mon, 1 Jul 2024 15:30:12 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org, kernel@dh-electronics.com,
	kernel test robot <lkp@intel.com>,
	Alexey Charkov <alchark@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Yashin <dmt.yashin@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, Sam Edwards <cfsworks@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: Drop ethernet-phy-ieee802.3-c22
 from PHY compatible string on edgeble-neu2
Message-ID: <9ddd4c7f-47ab-4e77-baae-b80bc1c26a26@lunn.ch>
References: <20240630034910.173552-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240630034910.173552-1-marex@denx.de>

On Sun, Jun 30, 2024 at 05:48:41AM +0200, Marek Vasut wrote:
> The rtl82xx DT bindings do not require ethernet-phy-ieee802.3-c22
> as the fallback compatible string. There are fewer users of the
> Realtek PHY compatible string with fallback compatible string than
> there are users without fallback compatible string, so drop the
> fallback compatible string from the few remaining users:
> 
> $ git grep -ho ethernet-phy-id001c....... | sort | uniq -c
>       1 ethernet-phy-id001c.c816",
>       2 ethernet-phy-id001c.c915",
>       2 ethernet-phy-id001c.c915";
>       5 ethernet-phy-id001c.c916",
>      13 ethernet-phy-id001c.c916";
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202406290316.YvZdvLxu-lkp@intel.com/
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

