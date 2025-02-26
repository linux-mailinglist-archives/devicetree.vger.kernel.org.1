Return-Path: <devicetree+bounces-151635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA375A4664F
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 17:15:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB74219E15EA
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 15:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CDA71A238B;
	Wed, 26 Feb 2025 15:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzaxZ6Yf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC89428F3
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 15:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740585414; cv=none; b=QH4CZCIdKe5ViZxvccGcRNCbzIXQa7syL06UAAHIIAwqBuNQBjBfYoXTnc88j4jroGi7i2DX2h9DVDTd1d3Pm1UWT2h/ej5v7I2i6VPM4sY7ssihl6aEB/IhCZnlgkLCeX+onPWgErnXQgYZ9R9QbONUQH+ky7mPhOHj5qTGkU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740585414; c=relaxed/simple;
	bh=stzHx3sKz2tiJVFVznhRiupagfywamOVXVJNu4JJFHc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GUdUXpQmsskBdjLvrlmx1QT51iiPj+X8b4BfzPVZ6qapfpc/paN4ELpFY7xd2aq1Nt8nu0W5qLjYMCxT0dV5HUms1aPKL7oTOTonYoNIilHjtOQhd7GIxzAi2pcwslJsvWRmniV+pGSMV1u9aXxuT+w9y2JoIv/1N0UIitIbvFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzaxZ6Yf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36F6FC4CED6;
	Wed, 26 Feb 2025 15:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740585413;
	bh=stzHx3sKz2tiJVFVznhRiupagfywamOVXVJNu4JJFHc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OzaxZ6Yf6h5bMF+VeRz8m6lQz6WzyWxLA2XynAUIgJGh/nVD+sOvHrgtB5EvjDDu8
	 mdwtlxF5LwfLsTsBOAmbdAS1LnrBCfBX1Q5630JqLubrnZAGRTMVDW6PMy5eW95eSQ
	 j3rLN6gj+JKN+hD+N22Loq+8L+miHE4IqKVKeIu2l6A5anquity9bBS4u/Ky/waDOw
	 Yf5AyWbG6cZHaYk2s+LsGoHiJZZABq9xNj5v1nDn3+H4eV5Rb+L/CEDJ+5wAXOsP+w
	 bBTPmNG+LAi0mOA8FYCzihs7jro9bRxqi58EyWzk3iciLiGdnGXWMEqeyyX4pHcOiw
	 bHWoWBOe6fxHA==
Date: Wed, 26 Feb 2025 09:56:51 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: ARM: at91: make separate entry for
 Olimex board
Message-ID: <174058541106.2503140.1386703564408101770.robh@kernel.org>
References: <20250226084938.3436-6-wsa+renesas@sang-engineering.com>
 <20250226084938.3436-7-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250226084938.3436-7-wsa+renesas@sang-engineering.com>


On Wed, 26 Feb 2025 09:49:36 +0100, Wolfram Sang wrote:
> The Olimex board exists with only one SoC option. Change the bindings to
> reflect that.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


