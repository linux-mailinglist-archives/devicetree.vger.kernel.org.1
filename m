Return-Path: <devicetree+bounces-23213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEA580A77A
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:33:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 065AF1F2110A
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82F5131583;
	Fri,  8 Dec 2023 15:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="P3POkulq"
X-Original-To: devicetree@vger.kernel.org
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A30F4FB;
	Fri,  8 Dec 2023 07:33:12 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3C401C0002;
	Fri,  8 Dec 2023 15:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702049591;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=oD6hQGjRHPGPAJTPYER4wE20pgsUUUyk0INf85hKBP8=;
	b=P3POkulqrVqVh0War2yqLifPkguGVaDtn/7hInk+c0epl4ybhlNgEJ4p71whuftqjedAzt
	dX6L3fspp/+HA3bcMscfqYucX2aSGvmVjcBMNT315MXShTWjlgWmLxWRDTYUt8ea8ToZWb
	HzQpOYRbTC7dHcQE0STWiuTSygBzao99aXjzEqdgWuuvqZxHDSy+niITTxnEjA9k7qH8fY
	MM8AbWm1tRneB5FM3w0NxKsDWPEBuzsJYHakv/xfknd/fygpJO4RWiqdFOOX10pfKosrPk
	7bY7QkNS5Um8i+NhWRtO7ahdLzaV+ptI1YDx5zz1jLm1k85xCuwJ9VYF/c/NIA==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: David Heidelberg <david@ixit.cz>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Andre Przywara <andre.przywara@arm.com>, Peter Rosin <peda@axentia.se>,
 Heiko Stuebner <heiko@sntech.de>, Nick Hawkins <nick.hawkins@hpe.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, David Heidelberg <david@ixit.cz>
Cc: Simon Guinot <simon.guinot@sequanux.org>, Wei Xu <xuwei5@hisilicon.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, Enric Balletbo i Serra
 <eballetbo@gmail.com>, Baruch Siach <baruch@tkos.co.il>, Rob Herring
 <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/5] ARM: dts: marvell: make dts use gpio-fan matrix
 instead of array
In-Reply-To: <20231202222934.137191-5-david@ixit.cz>
References: <20231202222934.137191-1-david@ixit.cz>
 <20231202222934.137191-5-david@ixit.cz>
Date: Fri, 08 Dec 2023 16:33:10 +0100
Message-ID: <87y1e4d809.fsf@BL-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-GND-Sasl: gregory.clement@bootlin.com

David Heidelberg <david@ixit.cz> writes:

> No functional changes.
>
> Adjust to comply with dt-schema requirements
> and make possible to validate values.
>
> Acked-by: Simon Guinot <simon.guinot@sequanux.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>

Applied on mvebu/dt

Thanks,

Gregory
> ---
>  arch/arm/boot/dts/marvell/armada-370-rd.dts   |   2 +-
>  .../marvell/armada-370-seagate-nas-2bay.dts   |   8 +-
>  .../marvell/armada-370-seagate-nas-4bay.dts   |   8 +-
>  .../marvell/armada-370-synology-ds213j.dts    |  16 +--
>  .../dts/marvell/armada-385-synology-ds116.dts |  16 +--
>  arch/arm/boot/dts/marvell/armada-388-gp.dts   |   4 +-
>  arch/arm/boot/dts/marvell/kirkwood-dnskw.dtsi |   6 +-
>  .../marvell/kirkwood-linkstation-6282.dtsi    |   9 +-
>  .../marvell/kirkwood-linkstation-lswxl.dts    |   9 +-
>  arch/arm/boot/dts/marvell/kirkwood-lsxl.dtsi  |   9 +-
>  arch/arm/boot/dts/marvell/kirkwood-ns2max.dts |  18 ++--
>  .../arm/boot/dts/marvell/kirkwood-ns2mini.dts |  18 ++--
>  .../boot/dts/marvell/kirkwood-synology.dtsi   | 102 +++++++++---------
>  .../dts/marvell/mvebu-linkstation-fan.dtsi    |   8 +-
>  14 files changed, 121 insertions(+), 112 deletions(-)
-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

