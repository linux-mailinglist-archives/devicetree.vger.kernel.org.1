Return-Path: <devicetree+bounces-46203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7FC868753
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 03:40:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 564941C294C4
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 02:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83F3F1B28D;
	Tue, 27 Feb 2024 02:40:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from 15.mo582.mail-out.ovh.net (15.mo582.mail-out.ovh.net [188.165.39.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B431947E
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 02:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.165.39.161
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709001642; cv=none; b=lbsuowG7ofs+d2n4pRnckHNmuFuZ2oySdb+BmRMnp3ZBeZtxhJlD9csztvAtWGZeBav7nkPQnWKAT5VqhEzXGrsyq9MSERt0fDyBeT/OrC3SiL7Ck9sY8Xd2ZSJrleQmrdmwHHCirHSOw6DKF9Iksf0LRU2k9m89YYvhUIVWraY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709001642; c=relaxed/simple;
	bh=oP+NUZOFqM2E6ptm+fLs9NHiWljY1OQX7Li7+FuOHyQ=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=nxag/taIrk59AaVjIrD+BeY9VpBM0tNU6/GYirAYwqcPVATu/BoQejdP8+eL7w5rIM2dlTd9+YAwhTLxj9RugwoVQuMgw+fx5zW4U5gITAoQkjLvvz4WAD0MfANGLQxL/lnbhsUo332lxyGaVjmvg8CIV3EtgT0yDJgBPEATPpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=etezian.org; arc=none smtp.client-ip=188.165.39.161
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=etezian.org
Received: from director2.ghost.mail-out.ovh.net (unknown [10.108.2.179])
	by mo582.mail-out.ovh.net (Postfix) with ESMTP id 4TkKTD29yMz199L
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 01:21:52 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-f4n6p (unknown [10.111.174.252])
	by director2.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 605D91FD7C;
	Tue, 27 Feb 2024 01:21:40 +0000 (UTC)
Received: from etezian.org ([37.59.142.108])
	by ghost-submission-6684bf9d7b-f4n6p with ESMTPSA
	id uPD7FCQ53WXtyQAAxDwYeA
	(envelope-from <andi@etezian.org>); Tue, 27 Feb 2024 01:21:40 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-108S002fe1109a9-1c88-4d0a-8ee4-2e8d2b473102,
                    9285090D84508773EC2C25A4099646E261C64314) smtp.auth=andi@etezian.org
X-OVh-ClientIp:89.217.109.169
From: Andi Shyti <andi.shyti@kernel.org>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, nicolas.ferre@microchip.com, 
 alexandre.belloni@bootlin.com, claudiu.beznea@tuxon.dev, 
 mturquette@baylibre.com, sboyd@kernel.org, herbert@gondor.apana.org.au, 
 davem@davemloft.net, tglx@linutronix.de, tudor.ambarus@linaro.org, 
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com, 
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 linus.walleij@linaro.org, sre@kernel.org, u.kleine-koenig@pengutronix.de, 
 p.zabel@pengutronix.de, olivia@selenic.com, radu_nicolae.pirea@upb.ro, 
 richard.genoud@gmail.com, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
 lgirdwood@gmail.com, broonie@kernel.org, wim@linux-watchdog.org, 
 linux@roeck-us.net, linux@armlinux.org.uk, andrei.simion@microchip.com, 
 mihai.sain@microchip.com, andre.przywara@arm.com, neil.armstrong@linaro.org, 
 tony@atomide.com, durai.manickamkr@microchip.com, geert+renesas@glider.be, 
 arnd@arndb.de, Jason@zx2c4.com, rdunlap@infradead.org, rientjes@google.com, 
 vbabka@suse.cz, mripard@kernel.org, codrin.ciubotariu@microchip.com, 
 eugen.hristev@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-mtd@lists.infradead.org, 
 netdev@vger.kernel.org, linux-gpio@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-pwm@vger.kernel.org, 
 linux-rtc@vger.kernel.org, linux-spi@vger.kernel.org, 
 linux-serial@vger.kernel.org, alsa-devel@alsa-project.org, 
 linux-sound@vger.kernel.org, linux-watchdog@vger.kernel.org, 
 Varshini Rajendran <varshini.rajendran@microchip.com>
In-Reply-To: <20240223171342.669133-1-varshini.rajendran@microchip.com>
References: <20240223171342.669133-1-varshini.rajendran@microchip.com>
Subject: Re: (subset) [PATCH v4 00/39] Add support for sam9x7 SoC family
Message-Id: <170899689860.412407.545047377007032928.b4-ty@kernel.org>
Date: Tue, 27 Feb 2024 02:21:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-Ovh-Tracer-Id: 4120793662683875913
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvledrgeefgdeffecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfgjfhfukfffgggtgffosehtjeertdertdejnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihdrshhhhihtiheskhgvrhhnvghlrdhorhhgqeenucggtffrrghtthgvrhhnpeelkefhieeljeejffdtvddthfffleffueekkefgieelveejjedtudettdeghfdutdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppeduvdejrddtrddtrddupdekledrvddujedruddtledrudeiledpfeejrdehledrudegvddruddtkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehkedvpdhmohguvgepshhmthhpohhuth

Hi

On Fri, 23 Feb 2024 22:43:42 +0530, Varshini Rajendran wrote:
> This patch series adds support for the new SoC family - sam9x7.
>  - The device tree, configs and drivers are added
>  - Clock driver for sam9x7 is added
>  - Support for basic peripherals is added
>  - Target board SAM9X75 Curiosity is added
> 
>  Changes in v4:
>  --------------
> 
> [...]

Applied to i2c/i2c-host on

git://git.kernel.org/pub/scm/linux/kernel/git/andi.shyti/linux.git

Thank you,
Andi

Patches applied
===============
[06/39] dt-bindings: i2c: at91: Add sam9x7 compatible string
        commit: a856c9e6104f7b4619f09e19ab95903c7888da96


