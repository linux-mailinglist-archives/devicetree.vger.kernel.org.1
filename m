Return-Path: <devicetree+bounces-223883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E551BBE985
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 18:10:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD14D189840A
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 16:10:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B51362D6400;
	Mon,  6 Oct 2025 16:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="3JxLZjiD"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190EC23ABA1
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 16:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759766994; cv=none; b=g1as5f5kklIrgEzlQB4TQrZOsDl8w/AdEISM/FYTug5m1sC9z8UNlI9q1O0jpwJGHf7dWuDQDPmwzSXR8fkq08kkBFcYC7CTi0/3iALtSNKeVYDYYFuybqA0AfF3zaE3KCrfnWGQyi95OxSJwVccewwYfTX3HL5sX7mdNdMffYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759766994; c=relaxed/simple;
	bh=rdUo6v4cMAroKaIKMdTlh2+v1nDHIO30zJs51Pr9Cng=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z2tO8Ysd4jGjpeBs1JBiaOT5ow1GJKh+kES+SjU2bfOgA92Ng9bFA/ljRGY4A+qGDYrTZIxxqxl0mTlDHEQ/6YzbUMKeV1xNeuLYRcFp6+FkLsDwYE/KnQVsfHw/oc6U/xD/4rLbWwiEMXch4gSRQ+jD/wCUcb4rZrbBq6smUWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=3JxLZjiD; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=rsXgy79YQM8xFjDDJv3MmdWbtXzsXjmMRTsnJF+N7QQ=; b=3J
	xLZjiDErY7C7g608pdU1azoFgSf0U5SnEz2JPs7RketC1YVKXVo7f82/qOw5hjqdNKlWZhigoZ2wk
	oMbNP6PjI3gGZLL3tW2WrDO5yM/0JZ5gY8J+I3XN8iPLQxJ3BJ9Ty4x7uhRNvBqfWyTRis7jXOWva
	04PaoVm2KlYVDYQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1v5nmT-00AJ51-VT; Mon, 06 Oct 2025 18:09:45 +0200
Date: Mon, 6 Oct 2025 18:09:45 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: BCM53573: Fix address of Luxul XAP-1440's
 Ethernet PHY
Message-ID: <4fcba9c1-ff83-40b5-b7eb-758fd43ea978@lunn.ch>
References: <20251002194852.13929-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251002194852.13929-1-zajec5@gmail.com>

On Thu, Oct 02, 2025 at 09:48:52PM +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Luxul XAP-1440 has BCM54210E PHY at address 25.
> 
> Fixes: 44ad82078069 ("ARM: dts: BCM53573: Fix Ethernet info for Luxul devices")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
> index ac44c745bdf8..a39a021a3910 100644
> --- a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
> @@ -55,8 +55,8 @@ &gmac0 {
>  	mdio {
>  		/delete-node/ switch@1e;
>  
> -		bcm54210e: ethernet-phy@0 {
> -			reg = <0>;
> +		bcm54210e: ethernet-phy@25 {
> +			reg = <25>;

Does this really not work, or is it relying on the PHY responding to 0
as a broadcast address?

Thanks
	Andrew

