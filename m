Return-Path: <devicetree+bounces-160332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 812F2A6E481
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 21:33:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C9831897117
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 20:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A84E1C8629;
	Mon, 24 Mar 2025 20:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LT4IM+bM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA5B2E3374;
	Mon, 24 Mar 2025 20:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742848319; cv=none; b=vDOthIMSE4Mi/nvtw0xumAU/NivjFowaKSZrjipsT5Kqi88NtpZm07GhDDHp5/yBkvYRVmpQPDwAxJ8LY9CMdY/9GKoYE23qt4sKVnU7SV4PRpUHLeHz/cR4PqqcJqkbhSrX90pQzzpZb7bQ1yE1Z4SJPPNWAbRO4jWBA39fi5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742848319; c=relaxed/simple;
	bh=LDTKp3W7h188ixr/vX4U7f5V6ZusmxQCsTGFE63qb20=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s2Qr9vwEKj8MCs/WUk5gFlYgG50i0avt5XQ16+YG6pQb199LqrbxyKmsmIQb3q/0isPrpT8Em+bMyCh4ejKpNL4qzOcgFhZQkBu5GOVRIYaz3W3AkNvclxHEjavzalsu5Us4z7VZUypd3KWG5Of1iUChzFfT0PiZa9t6KdJINpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LT4IM+bM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AD08C4CEDD;
	Mon, 24 Mar 2025 20:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742848318;
	bh=LDTKp3W7h188ixr/vX4U7f5V6ZusmxQCsTGFE63qb20=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LT4IM+bMgEYMcruZeVIseTw5+f/xunSV2APT5kPRxD76MAc1Wg24Tz9VlF5iGCEJ8
	 YGA3pU5hhz60cKgndPvFxfYPqSfkx+uKYR8Ng1dEAgUkAuntkDeqdCo3O6sv9oZCQT
	 BHq12rVUyZKUjeLPjwOBkXH67myUVkzMBvIMF1tI162dpJ164PUMYyCtgJEvOJ6+XD
	 Ieh4KXL553HZi1EfaxUqE9ucsNEN6JV/54/KoUh5zaDIwxvyEDeXgIfttMQh0fCKGu
	 2QSf4KQPT+3uNDxjNU8LfOuup5OaEntF3WyDC49zxcpk7BtqntxOwdwWjdFc4D43NO
	 527MT5yxxsFBg==
Date: Mon, 24 Mar 2025 15:31:57 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Bert Vermeulen <bert@biot.com>,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	linux-gpio@vger.kernel.org,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
	Maxime Ripard <mripard@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Michal Simek <michal.simek@amd.com>,
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	linux-riscv@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Shawn Guo <shawnguo@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Neeli <srinivas.neeli@amd.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	linux-kernel@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Manikandan Muralidharan <manikandan.m@microchip.com>,
	Fabio Estevam <festevam@gmail.com>,
	Sander Vanheule <sander@svanheule.net>
Subject: Re: [PATCH] dt-bindings: gpio: Correct indentation and style in DTS
 example
Message-ID: <174284830296.819870.8907081146872259608.robh@kernel.org>
References: <20250324125326.82270-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250324125326.82270-1-krzysztof.kozlowski@linaro.org>


On Mon, 24 Mar 2025 13:53:26 +0100, Krzysztof Kozlowski wrote:
> DTS example in the bindings should be indented with 2- or 4-spaces and
> aligned with opening '- |', so correct any differences like 3-spaces or
> mixtures 2- and 4-spaces in one binding.  While re-indenting, drop
> unused labels.
> 
> No functional changes here, but saves some comments during reviews of
> new patches built on existing code.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/gpio/atmel,at91rm9200-gpio.yaml  | 16 ++---
>  .../bindings/gpio/fairchild,74hc595.yaml      | 20 +++---
>  .../devicetree/bindings/gpio/gpio-mxs.yaml    | 70 +++++++++----------
>  .../devicetree/bindings/gpio/nxp,pcf8575.yaml | 24 +++----
>  .../bindings/gpio/realtek,otto-gpio.yaml      |  8 +--
>  .../bindings/gpio/renesas,em-gio.yaml         | 20 +++---
>  .../bindings/gpio/renesas,rcar-gpio.yaml      | 24 +++----
>  .../devicetree/bindings/gpio/sifive,gpio.yaml |  6 +-
>  .../bindings/gpio/toshiba,gpio-visconti.yaml  | 24 +++----
>  .../bindings/gpio/xlnx,gpio-xilinx.yaml       | 48 ++++++-------
>  10 files changed, 130 insertions(+), 130 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


