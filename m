Return-Path: <devicetree+bounces-13999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E772A7E1C19
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:26:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 244CC1C209D9
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 08:26:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D25381401B;
	Mon,  6 Nov 2023 08:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9CC2134BF
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 08:26:36 +0000 (UTC)
X-Greylist: delayed 941 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 06 Nov 2023 00:26:31 PST
Received: from 5.mo576.mail-out.ovh.net (5.mo576.mail-out.ovh.net [46.105.43.105])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A8B61739
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 00:26:31 -0800 (PST)
Received: from director2.ghost.mail-out.ovh.net (unknown [10.108.1.170])
	by mo576.mail-out.ovh.net (Postfix) with ESMTP id EFC9D29C62
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 08:10:48 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-wwxds (unknown [10.110.103.14])
	by director2.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 3C6D81FEB6;
	Mon,  6 Nov 2023 08:10:45 +0000 (UTC)
Received: from RCM-web8.webmail.mail.ovh.net ([151.80.29.22])
	by ghost-submission-6684bf9d7b-wwxds with ESMTPSA
	id 7H6TDIWfSGVAfQQAGogUGA
	(envelope-from <rafal@milecki.pl>); Mon, 06 Nov 2023 08:10:45 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Mon, 06 Nov 2023 09:10:44 +0100
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Hector Martin <marcan@marcan.st>, Sven
 Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Julius
 Werner <jwerner@chromium.org>, Evan Benn <evanbenn@chromium.org>, Florian
 Fainelli <florian.fainelli@broadcom.com>, Broadcom internal kernel review
 list <bcm-kernel-feedback-list@broadcom.com>, Maxime Ripard
 <mripard@kernel.org>, Oleksij Rempel <linux@rempel-privat.de>, Justin Chen
 <justinpopo6@gmail.com>, Baruch Siach <baruch@tkos.co.il>, Ahmad Zainie
 <wan.ahmad.zainie.wan.mohamad@intel.com>, Marc Zyngier <maz@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Jamie Iles <jamie@jamieiles.com>,
 linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: re-order entries to match
 coding convention
In-Reply-To: <20231105184154.43700-1-krzysztof.kozlowski@linaro.org>
References: <20231105184154.43700-1-krzysztof.kozlowski@linaro.org>
User-Agent: Roundcube Webmail/1.4.15
Message-ID: <300293570c0d29d5d4a39762121b5bef@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 31.11.218.106
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 11495438051932285714
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedruddufedgudduiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeggfffhvfevufgjfhgfkfigihgtgfesthekjhdttderjeenucfhrhhomheptfgrfhgrlhcuofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepjedvlefguedthfefleehgeeftdeludeluedvgfeffeevhfevtdehteejteefheegnecukfhppeduvdejrddtrddtrddupdefuddruddurddvudekrddutdeipdduhedurdektddrvdelrddvvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehrrghfrghlsehmihhlvggtkhhirdhplheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehjeeipdhmohguvgepshhmthhpohhuth

On 2023-11-05 19:41, Krzysztof Kozlowski wrote:
> The Devicetree bindings coding convention, as used in most of the files
> and expressed in Documentation/devicetree/bindings/example-schema.yaml,
> expects:
> 1. "allOf:" block just before "properties:" (or after "required:" for
>    more complex cases),
> 2. additionalProperties/unevaluatedProperties at the end of the file,
>    just before the examples section.
> 
> Re-order few schemas to match the convention to avoid repeating review
> comments for new patches using existing code as template.  No 
> functional
> changes.

It's surely going to help a bit but for a long time solution maybe you
could consider adding proper check to Rob's bot and/or checkpatch.pl.

-- 
Rafał Miłecki

