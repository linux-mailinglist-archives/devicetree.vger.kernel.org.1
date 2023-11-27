Return-Path: <devicetree+bounces-19407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D4F7FAD08
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 23:10:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC43BB21313
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 22:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BBEC4778B;
	Mon, 27 Nov 2023 22:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="yFYKLFXS"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4370FD60;
	Mon, 27 Nov 2023 14:10:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=fj7S737PvFT1eBpIj48u2YOVkKBKsc0oOWwD61/IFdY=; b=yFYKLFXSfGlukSu6vhGHcRMmTw
	QRCP9VHd4YqKk+hVZ0VI0TiSZUqOGNMjXIpl+KQHWfi43qSqfYZWoT48eozDRz955TcgItNl1aCyh
	dKOYfG+dEQxF07M2Ls2s2wc1RldnIA/4gP49pgcoftrX023geudGJIXU9xrgt0jHe2oQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1r7jnm-001OJO-70; Mon, 27 Nov 2023 23:10:02 +0100
Date: Mon, 27 Nov 2023 23:10:02 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v9 3/3] ARM64: dts: Add special compatibles for the
 Turris Mox
Message-ID: <5558d4b6-51ca-417a-bdec-8be69221d932@lunn.ch>
References: <20231127-mv88e6xxx-mvebu-fixes-v9-0-d19b963e81fb@linaro.org>
 <20231127-mv88e6xxx-mvebu-fixes-v9-3-d19b963e81fb@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231127-mv88e6xxx-mvebu-fixes-v9-3-d19b963e81fb@linaro.org>

On Mon, Nov 27, 2023 at 04:51:02PM +0100, Linus Walleij wrote:
> These special compatibles are added to the Marvell Armada 3720
> Turris Mox in order to be able to special-case and avoid
> warnings on the non-standard nodenames that are ABI on this
> one board due to being used in deployed versions of U-Boot.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

