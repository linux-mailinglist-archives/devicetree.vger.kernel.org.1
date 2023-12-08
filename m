Return-Path: <devicetree+bounces-23193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EC780A6F6
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:12:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23CC7281262
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:12:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE415225D5;
	Fri,  8 Dec 2023 15:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="KO/hg7qC"
X-Original-To: devicetree@vger.kernel.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::221])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8781E2102;
	Fri,  8 Dec 2023 07:11:54 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id A627C240013;
	Fri,  8 Dec 2023 15:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702048313;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=jZUfjZrEUjnspuhceJ7+ctQJ1wXG1XV3mAd4MZs0sqI=;
	b=KO/hg7qC/HGdIVC0A02sNFqeNiYVqLtoVRYZilg2VukX1cOofO5cBzk1mJWHW6AffXnnbB
	Zjf4szZCnK5eOJlk+uMAxS2To+caXTjHVAAuTlYwr5s3ew/uZJaqLfo51lOo04TrJa10LN
	cpVRcpN7rokxtyWki3tgoBWnlKW8LeIzdgbWNfd4fDntGpv6EA6ofg3DglkAHK/JEJ1HNy
	YhocJ8a3EDMl6Tp4gxtjBzJQPw/kvwmtmcCJx73Uwz+yBSxI29gPGzR3GJ8HNbsL18qCHo
	d9CYgypTkLo/oWoOPoaNgO5rU+VqlUuEL8qzcr8hZjF7lTx81VrhN4nTnG/zTg==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v9 3/3] ARM64: dts: Add special compatibles for the
 Turris Mox
In-Reply-To: <20231127-mv88e6xxx-mvebu-fixes-v9-3-d19b963e81fb@linaro.org>
References: <20231127-mv88e6xxx-mvebu-fixes-v9-0-d19b963e81fb@linaro.org>
 <20231127-mv88e6xxx-mvebu-fixes-v9-3-d19b963e81fb@linaro.org>
Date: Fri, 08 Dec 2023 16:11:52 +0100
Message-ID: <874jgsenk7.fsf@BL-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-GND-Sasl: gregory.clement@bootlin.com

Linus Walleij <linus.walleij@linaro.org> writes:

> These special compatibles are added to the Marvell Armada 3720
> Turris Mox in order to be able to special-case and avoid
> warnings on the non-standard nodenames that are ABI on this
> one board due to being used in deployed versions of U-Boot.
>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Applied on mvebu/dt64

Thanks,

Gregory
> ---
>  arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

