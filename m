Return-Path: <devicetree+bounces-249227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BD0CDA110
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 18:14:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E8E1D300C5F0
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 17:12:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D9202F1FCF;
	Tue, 23 Dec 2025 17:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="hI3J5MlJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1A321CC62
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766509934; cv=none; b=Gxd1irSxOIqJdknXIJ+XmhAeFjueSrmGGGNzdiwHnB67IABm62++FPiOtmDf4/PRkc2JG13faj9QStLwsZ9JD6JRy/Ult28XCE/Q+ZMSHBxX37+E86lfs7h8Ph9N70vlMmix3XQVYm3eLTJ5lWbjEYxsVh5bIq5kGpip2LFrqqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766509934; c=relaxed/simple;
	bh=pGF/nk2V4zvDcRsITqybuveA+fF1/6Fh6I3fg+tNDxw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zds2dJNvFjQZNB9IgtREPLhKX8Nq3GfvCpuv/zpWfpx0D+V9Ry2zg4WxDdjMrx0dixtooX7sann7JnRJX5wXwLBC+o3zji1eGCrR7bIFXFCWKOWyM9cm9WCZwT2WvcwHtqlKFt98Cov5VQURqqJNw1lcIy6KB/M2h0ywKtd/dRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=hI3J5MlJ; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 431C94E41D6D;
	Tue, 23 Dec 2025 17:12:10 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id F2D7360716;
	Tue, 23 Dec 2025 17:12:09 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 172B410AB0C06;
	Tue, 23 Dec 2025 18:12:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1766509929; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=QDDnoNff9WviCZzOgvsznn/dQRq577VQVTn6i/oqNIs=;
	b=hI3J5MlJQtNKFFVUAIPw/puW2pgJRck5GxEr/svgAkKrfUsGp7a/QNdq9hgDx9frLskQIj
	KZPW3dMed9NCeo93/P+uetKzWsyE7Iu+E1+siCQ2quSjcZQLJw9zJ4gjZXB6R1eVgJPFI1
	40RXn3eAPKTm5hzHtu9O2XTRu/1MSzBZdI79m/QOoeMofNsy1uNtY907fTLYr2L7cPCcTC
	slZS2Y2lXqJyq/eTakm51aJnSug6GOB1esLUJGveQ8iXVeJlvm/9/Fgt0d7zGrFPps0UlS
	xrPF8zSzCO50ntElPw65jE34aryR+5HU5fpE33axakEKX8alBHlZa0tyYIjWPg==
Message-ID: <3e9a5df0-c650-46dc-8b64-b8708099262e@bootlin.com>
Date: Tue, 23 Dec 2025 18:12:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] iio: adc: add driver for Texas Instruments TLA2528
 adc
To: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, nuno.sa@analog.com,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Angelo Dureghello <adureghello@baylibre.com>,
 Tobias Sperling <tobias.sperling@softing.com>,
 Eason Yang <j2anfernee@gmail.com>,
 Marilene Andrade Garcia <marilene.agarcia@gmail.com>,
 Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>,
 duje@dujemihanovic.xyz, herve.codina@bootlin.com,
 Rodolfo Giometti <giometti@enneenne.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com
References: <20251223155534.220504-1-maxime.chevallier@bootlin.com>
 <20251223155534.220504-3-maxime.chevallier@bootlin.com>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <20251223155534.220504-3-maxime.chevallier@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3

Hi again,

On 23/12/2025 16:55, Maxime Chevallier wrote:
> This adds a new driver for the TI TLA2528 ADC chip. It ha 8 12-bit
> channels, that can also be configured as 16-bit averaging channels.
> 
> Add a very simple driver for it, allowing reading raw values for each
> channel.
> 
> Signed-off-by: Rodolfo Giometti <giometti@enneenne.com>

Looking closer at this, Rodolfo hasn't seen this patch prior to me
sending it, so it should rather be :

Orginally-by: Rodolfo Giometti <giometti@enneenne.com>

> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

I can resend if need be :)

Maxime


