Return-Path: <devicetree+bounces-139043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BD4A13C10
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 15:22:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0213C188D935
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:22:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C75722B8C8;
	Thu, 16 Jan 2025 14:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="fsMfD3dh"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B337222B8AC;
	Thu, 16 Jan 2025 14:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737037344; cv=none; b=sLRAOG+fqBqd+Vtp5WLELlA71cjrd79XEkBL8u9kqOROenboVGtRVYb8KH4eDTNqxrPONiSvwBuNyzfppZyt/bbY6nGG6/t8rA1GzF2Pa6cKt88e3/aJuk6Z7aEXKufTn+E+hQUHJ5cMNtXV+Pl8lhPGRKKH4u2W7JZAyC2Wn3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737037344; c=relaxed/simple;
	bh=KbLGhe00qXtu6APWRN+AlmE5MQuDlad43bWqQDdlOAY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BVO8picJie5BJATkgPT3gTkz/QRfoSg2pBV2sTF8QyXEiR3eIgVvDWRDrto81VisHDaKAsEx2H9iPiV47pAYUr58i2qcGwhJHjztM2gGkSwVVi+2cE/bTX8vLer3Rbm56w64hlQHy15UeNnkwGNCDAcSfwxZRWUOrPXD/rh5//U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=fsMfD3dh; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=BprE8Zu8fGlRDUuojTDAvRxzNAsDvbqhhULqsp8fer0=; b=fsMfD3dhuunFbYGS3QSVowz9pa
	16N7kRytn/2fqELQpVr83sBq2Clnl6ufNplaNXY3xlmrx4w4aK/HTEpHnMR86+BVMWk6WKub3WY9F
	X8t6YDvV+D24aHtEcBqfMX3EWjmt8f20iKorydWe42Louvbh88/7b8mlUn7rJpboEUJQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1tYQlC-00597F-Ij; Thu, 16 Jan 2025 15:22:14 +0100
Date: Thu, 16 Jan 2025 15:22:14 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: marvell: armada: Align GPIO hog name with
 bindings
Message-ID: <6bed3249-9905-4949-8031-52217f123f2e@lunn.ch>
References: <20250116085947.87241-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250116085947.87241-1-krzysztof.kozlowski@linaro.org>

On Thu, Jan 16, 2025 at 09:59:47AM +0100, Krzysztof Kozlowski wrote:
> Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
> to fix dtbs_check warnings like:
> 
>   armada-385-clearfog-gtr-s4.dtb: wifi-disable: $nodename:0: 'wifi-disable' does not match '^.+-hog(-[0-9]+)?$'
 
Hi Krzysztof

I believe the mvebu pull request for the next merge window has already
been sent to arm-soc. So please repost after -rc1.

> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

