Return-Path: <devicetree+bounces-238440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AD6C5B41F
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 04:59:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0FD63AD4FC
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 03:57:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF44326C3B0;
	Fri, 14 Nov 2025 03:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="aLxhxlYH"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B4412CDBE;
	Fri, 14 Nov 2025 03:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763092640; cv=none; b=dzb62GhLkKYRQNIQiysrSsRA7LNMu3LISvG31oi52novl/GkSQ4YYEgFxsOp2lyKFiQOOaXv/pucU1TmIzWLUPJt64NWCO3lkPGhc0rmcxzx/t1146h2UyNsvwN6SPSbjQSeS+0Ele8Yt+LkzcO2DYXPxbpQ1mnHnfVG5iTpHPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763092640; c=relaxed/simple;
	bh=tSQjLLHNA8yuGjmtfugzc7kXZDH45UT6aFpFYINvms8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=h4hA1//xMJnbZO43zenmIvxV52DJ0v8be3Cik/8ocuMKgouQDhwGR32zLclNEjIGzmWdvVUrPjc+HlkXVlNVULaVMDEkeb5czEO2LYE3JQs0rM7Q/lHinLWUxeZetHpz3/hZOcBmTpPiu6/TtWdQxCyCc9IGb+wSYPctZtXFZ74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=aLxhxlYH; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1763092637;
	bh=PBEe7m4ruu9JlDhXEHQH8OB4d4RdZCG95qxZSNdiuTY=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=aLxhxlYHg2hEiiWKzEYXsroGVyP6tEsllRg0s94dGktPw0RofSA9ijkHG8FF/F8Dt
	 dI7hgQVrAO/cPcx5AhN6WWJwHb4wdOynv4GwtrHCxfqDMi5Fs1fRKcKBDARkSJzroS
	 FaBRKGR7hQj2aNoXKlb4bot3zw4eHiRt2ugKzPAtjxcMVeVkPdeiZqxr17xPrSmyV1
	 vvbzLcyMXTPOKtbNmUyuCqjqR1mHVkNT+Kby05srb5zpEItW2ExrTFr63MRB8nb5YS
	 NbxgVsIXvxMj3jFNrCNzd4sF/sWpsarQjuFo9kBRD+3mZJY1MLPgWzIwNWEg2Ey8Ec
	 uK19jp5cSwzUw==
Received: from [192.168.68.115] (unknown [180.150.112.244])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 752DD783DF;
	Fri, 14 Nov 2025 11:57:16 +0800 (AWST)
Message-ID: <0118d17eb884ee664a035d44ddbbec56a418e353.camel@codeconstruct.com.au>
Subject: Re: [PATCH] dt: aspeed: clemente: move hdd_led to its own gpio-leds
 group
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: alex.ts.wang@fii-foxconn.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	george.kw.lee@fii-foxconn.com, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel
 Stanley <joel@jms.id.au>
Date: Fri, 14 Nov 2025 14:27:16 +1030
In-Reply-To: <20251023-leo-dts-add-shunt-resistor-v1-1-5d9980aba308@fii-foxconn.com>
References: 
	<20251023-leo-dts-add-shunt-resistor-v1-1-5d9980aba308@fii-foxconn.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-10-23 at 18:26 +0800, Alex Wang via B4 Relay wrote:
> From: Alex Wang <alex.ts.wang@fii-foxconn.com>
>=20
> The gpio-leds driver requires all GPIOs in a group to be available;
> if any GPIO in the group is missing the whole group will not be
> created.
>=20

To me its behaviour appears inconsistent. Contrast:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/dri=
vers/leds/leds-gpio.c?h=3Dv6.18-rc1#n176

with

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/dri=
vers/leds/leds-gpio.c?h=3Dv6.18-rc1#n281

The driver should probably pick one policy or the other?

>  The hdd_led GPIO is only present after standby power is
> enabled, which can prevent other LEDs in the same group from being
> created and blocks properly setting 'bmc_ready_noled'.
>=20
> Move the 'hdd_led' node into a separate gpio-leds group so that other
> LEDs are not blocked and the 'bmc_ready_noled' flag can be set
> correctly.

How is standby power applied? What are you doing to enable the use of
hdd-leds once that occurs?

Andrew

