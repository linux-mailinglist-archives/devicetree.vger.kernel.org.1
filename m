Return-Path: <devicetree+bounces-12670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0F57DAD39
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 17:35:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BF4A281439
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 16:35:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C268F388;
	Sun, 29 Oct 2023 16:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-watchdog.org header.i=@linux-watchdog.org header.b="lOAoZZbz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F772CA8
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 16:35:00 +0000 (UTC)
X-Greylist: delayed 365 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 29 Oct 2023 09:34:58 PDT
Received: from www.linux-watchdog.org (www.linux-watchdog.org [185.87.125.42])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id F1DDFBA
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 09:34:58 -0700 (PDT)
Received: by www.linux-watchdog.org (Postfix, from userid 500)
	id 985B040A00; Sun, 29 Oct 2023 17:22:26 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 www.linux-watchdog.org 985B040A00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-watchdog.org;
	s=odk20180602; t=1698596546;
	bh=G9lxUza6HED6hs2c1ujMx3YvUQ0ITbFmi3BmpQHbHu8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lOAoZZbz3K8+3kguQ7NLT/uhtfutqdTrbW24gSAhMr/Y7Ij84KouKWW/3z1y9Urwy
	 +G5Qit20g6v9wKNRezksnesMKHDL436j3UHRcYqTI4vTB9wh9hkIJLQfL3vep2Z2Bz
	 KQZC7mb2uFFs7ro27IwSABRX8x2nDUV3UifxPbHQ=
Date: Sun, 29 Oct 2023 17:22:26 +0100
From: Wim Van Sebroeck <wim@linux-watchdog.org>
To: Rob Herring <robh@kernel.org>
Cc: Nik Bune <n2h9z4@gmail.com>, conor+dt@kernel.org,
	wim@linux-watchdog.org, krzysztof.kozlowski+dt@linaro.org,
	skhan@linuxfoundation.org, devicetree@vger.kernel.org,
	linux@roeck-us.net, nicolas.ferre@microchip.com,
	claudiu.beznea@microchip.com, linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org, linux-kernel@vger.kernel.org,
	alexandre.belloni@bootlin.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: watchdog: atmel,at91rm9200-wdt: convert
 txt to yaml
Message-ID: <20231029162226.GC5887@www.linux-watchdog.org>
References: <20230924181959.64264-1-n2h9z4@gmail.com>
 <169826359217.1053485.16654434281057363682.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169826359217.1053485.16654434281057363682.robh@kernel.org>
User-Agent: Mutt/1.5.20 (2009-12-10)

Hi Rob,

> 
> On Sun, 24 Sep 2023 20:19:59 +0200, Nik Bune wrote:
> > Convert txt file to yaml.
> > 
> > Signed-off-by: Nik Bune <n2h9z4@gmail.com>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> > 
> > Changes in v3:
> > - Removed trailing whitespace in an element of the maintainers list.
> > 
> > v2 patch: https://lore.kernel.org/linux-devicetree/20230924172004.59208-1-n2h9z4@gmail.com/
> > 
> >  .../watchdog/atmel,at91rm9200-wdt.yaml        | 33 +++++++++++++++++++
> >  .../watchdog/atmel-at91rm9200-wdt.txt         |  9 -----
> >  2 files changed, 33 insertions(+), 9 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/watchdog/atmel-at91rm9200-wdt.txt
> > 
> 
> It seems watchdog bindings aren't getting applied, so I've applied it. 
> Wim, please take watchdog bindings in the future unless noted otherwise.

I was going to add them now, but since you allready applied them, I will leave them out this time.

Kind regards,
Wim.


