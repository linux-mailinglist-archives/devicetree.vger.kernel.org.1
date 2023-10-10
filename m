Return-Path: <devicetree+bounces-7251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF7C7BFD7D
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:29:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E96FF281A48
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 205819CA51;
	Tue, 10 Oct 2023 13:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQfwUGGX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A7447376
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:29:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B583C433C7;
	Tue, 10 Oct 2023 13:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696944563;
	bh=oXg4rj2otetPYJ6T13k9X1CS147vwxf2ulCrsyT4wYE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IQfwUGGXsKAEQTAHxbbnFIMA0eEFZGWH2ZkJIPF00NVyZDOsOF27XQupUQ6REiZR+
	 j40UD9mKvDUoJfT71MOEo7xxaBP5vD8ZE919w51mJ+rFojER4RmezHU2bzhiwYcmhE
	 uAjQUo70Xxjq3/AIu1LgBfDuHSZ3UXA6gb2F7ytrBmA1e+Gl6NwCs0FaYmbVje2c1I
	 LJlsN0Gs7sk8OIuqDOhd0BiFpe2gewP4nwANE+ZzVK5i0u+GWqysREW2rcazj3WlV4
	 1SIQTfBGPFHoW7VjsaRyme2nRpzfxZ7HoSLxuo4XXZpnFPzM3J4lRJIeJ76PdR+DLw
	 PkmIEzkwP5ABA==
Received: (nullmailer pid 631157 invoked by uid 1000);
	Tue, 10 Oct 2023 13:29:21 -0000
Date: Tue, 10 Oct 2023 08:29:21 -0500
From: Rob Herring <robh@kernel.org>
To: Nik Bune <n2h9z4@gmail.com>, wim@linux-watchdog.org, linux@roeck-us.net
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, skhan@linuxfoundation.org, claudiu.beznea@microchip.com, linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3] dt-bindings: watchdog: atmel,at91rm9200-wdt: convert
 txt to yaml
Message-ID: <20231010132921.GA628810-robh@kernel.org>
References: <20230924181959.64264-1-n2h9z4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230924181959.64264-1-n2h9z4@gmail.com>

On Sun, Sep 24, 2023 at 08:19:59PM +0200, Nik Bune wrote:
> Convert txt file to yaml.
> 
> Signed-off-by: Nik Bune <n2h9z4@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> 
> Changes in v3:
> - Removed trailing whitespace in an element of the maintainers list.
> 
> v2 patch: https://lore.kernel.org/linux-devicetree/20230924172004.59208-1-n2h9z4@gmail.com/ 
> 
>  .../watchdog/atmel,at91rm9200-wdt.yaml        | 33 +++++++++++++++++++
>  .../watchdog/atmel-at91rm9200-wdt.txt         |  9 -----
>  2 files changed, 33 insertions(+), 9 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/atmel-at91rm9200-wdt.txt

Are the watchdog maintainers going to pick up this and other watchdog 
bindings?

Rob

