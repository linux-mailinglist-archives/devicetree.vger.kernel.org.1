Return-Path: <devicetree+bounces-221786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FFEBA2DC9
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:56:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0992174D93
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:56:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB2BB28852E;
	Fri, 26 Sep 2025 07:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="AVvbJnjS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B9508F6F
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758873414; cv=none; b=LvkEB7FK0da+uA5hHhnEtPyDBiazZrA0gUxHNbFkO+GTSsd1mb7ffxCsgSvW524yTDG8U1q0f9IKib7xk2BwVtU0g9A9D3rgPHy8rS1wl582uH4jgpbgZC4uz2DPnOFKRHV7TVtxpuJIbB5mO83gHoU/1B0zmwTtJHqy96GfwH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758873414; c=relaxed/simple;
	bh=njBp7zsXtJxtFTAt2902aTyJccp8rh6tUb6f+2R9iao=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=V7hAdzliZlv0xQQDOYFwJtcI3uehe2AuSOPf1/1DOBJC1uoaas8AxzQiCJKKb5EmwQNTdx3Vvs0vZRalclH+/k0RWagj0YqMQPQ5hqxNQ2crdGOVaB0m/L6Ov60+GFsqiU4/QBWJJ05bfQISuvTy505wp0D3wpC4Oh/nlQLwoAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=AVvbJnjS; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 5AB9BC003F5;
	Fri, 26 Sep 2025 07:56:33 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 99F39606B5;
	Fri, 26 Sep 2025 07:56:50 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6C928102F186D;
	Fri, 26 Sep 2025 09:56:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1758873409; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=njBp7zsXtJxtFTAt2902aTyJccp8rh6tUb6f+2R9iao=;
	b=AVvbJnjSU/S/d96UQfJ7Ydp85ytdEbkM4DXBAUy2j0S3uCBRL4BYqFpdTZNKZmsKXEGT+T
	AoSZRVWcCkveYSQHUM0gra/bTjR8kKZhLIXt/A8NAYCWFRW7cv05mcE5Pl9L0Bz/ZnH0Xp
	ZVLmpJLJqW7CQZk4Ki+YeqAURfOpOf7UuNanfB79/TPJm9EruPKjfhmwQI0bqGHxnXH0yr
	j9BEiUcA7tBm5QUU/EowudkPgtgFLHSE8EOfxVD23NROzeMHCmKmwiaeKBLm4dydYavrTk
	zoB8HMdudFePGtLrR7AH7cqHQI9Oivb6/ppAUN4YjDhb6LAiC7etZKlPi6AJRg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 26 Sep 2025 09:56:25 +0200
Message-Id: <DD2KKUEVR7P1.TFVYX7PES9FS@bootlin.com>
Subject: Re: [PATCH net v6 0/5] net: macb: various fixes
Cc: <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>, "Tawfik Bayouk"
 <tawfik.bayouk@mobileye.com>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@linaro.org>, "Sean Anderson" <sean.anderson@linux.dev>
To: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, "Andrew Lunn"
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, "Jakub Kicinski" <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Nicolas Ferre" <nicolas.ferre@microchip.com>, "Claudiu Beznea"
 <claudiu.beznea@tuxon.dev>, "Geert Uytterhoeven" <geert@linux-m68k.org>,
 "Harini Katakam" <harini.katakam@xilinx.com>, "Richard Cochran"
 <richardcochran@gmail.com>, "Russell King" <linux@armlinux.org.uk>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250923-macb-fixes-v6-0-772d655cdeb6@bootlin.com>
In-Reply-To: <20250923-macb-fixes-v6-0-772d655cdeb6@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3

On Tue Sep 23, 2025 at 6:00 PM CEST, Th=C3=A9o Lebrun wrote:
> This would have been a RESEND if it wasn't for that oneline RCT fix.
> Rebased and tested on the latest net/main as well, still working fine
> on EyeQ5 hardware.
>
> Fix a few disparate topics in MACB:
>
> [PATCH net v6 1/5] dt-bindings: net: cdns,macb: allow tsu_clk without tx_=
clk
> [PATCH net v6 2/5] net: macb: remove illusion about TBQPH/RBQPH being per=
-queue
> [PATCH net v6 3/5] net: macb: move ring size computation to functions
> [PATCH net v6 4/5] net: macb: single dma_alloc_coherent() for DMA descrip=
tors
> [PATCH net v6 5/5] net: macb: avoid dealing with endianness in macb_set_h=
waddr()

What's the state of maintainers minds for this series? It has been
stable for some time, tested on sam9x75 (by Nicolas Ferre) & EyeQ5
and Simon Horman has added his reviewed-by this morning (thanks!).
But of course I am biased.

I am asking because merging would benefit my pending series.

Thanks,

--
Th=C3=A9o Lebrun, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


