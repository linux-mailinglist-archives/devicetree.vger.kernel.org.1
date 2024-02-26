Return-Path: <devicetree+bounces-45931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D91867559
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 13:42:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 47B2C1C27CB8
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 12:42:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81E7D80602;
	Mon, 26 Feb 2024 12:40:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFAA080056
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 12:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708951251; cv=none; b=Kr4naBuHpp7LpwvA/6Egnnw5rYQHvLvK3r7dYrsWta5ALISRxr0sUGQEEIKe6XnvOgVs1cGWYjKp3N27vCY7T4ENGFR7UystjjeNG+M0yyk4fQHyop4hd34QpGc9sDhNzjJubdEu2gUmxQw0SH0LVD6tJMM7efQgx6s1pnAzth0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708951251; c=relaxed/simple;
	bh=lzZNBO8vtsRT5OvlPh9a/kUqH9opSZXmEh0Kf0DJQ70=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UGIxB+Jialdnf7NUSACcp6p8VK5veAOj9f5FoHjG+EzaXvc4UhZG3Oi1Xd6+1uXpoVX9qPRTQyOazeNs4u0381olD9BjxzR75U08KuAv7RRa+szc11mOXXQIfmH7bdIxpwWIkMVUUftpMx41I4Lc6dtyqr9kWGVL4BJy1/KDTBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1reaHd-0006dA-BP; Mon, 26 Feb 2024 13:40:37 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1reaHc-002ztr-JH; Mon, 26 Feb 2024 13:40:36 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1reaHc-0095bI-1d;
	Mon, 26 Feb 2024 13:40:36 +0100
Date: Mon, 26 Feb 2024 13:40:36 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: jic23@kernel.org, lars@metafoo.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	hns@goldelico.com, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de
Subject: Re: [PATCH] dt-bindings: iio: gyroscope: bosch,bmg160: add
 spi-max-frequency binding
Message-ID: <20240226124036.zzj5p7tlubc332r3@pengutronix.de>
References: <20240221174305.3423039-1-m.felsch@pengutronix.de>
 <91f29265-36fd-4d0e-99b1-61eaada59601@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <91f29265-36fd-4d0e-99b1-61eaada59601@linaro.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 24-02-26, Krzysztof Kozlowski wrote:
> On 21/02/2024 18:43, Marco Felsch wrote:
> > Make use of the common spi-peripheral-props.yaml to pull in the common
> > spi device properties and limit the spi-max-frequency to 10 MHz as this
> > is the max. frequency if VDDIO >= 1.62V.
> 
> The example uses i2c, so I would expect to see in commit msg explanation
> which devices are SPI devices.

All listed devices can either operate in I2C or in SPI mode.

> Also:
> A nit, subject: drop second/last, redundant "binding". The "dt-bindings"
> prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

Will rephrase it if you want me to update the commit message.

Regards,
  Marco

> 
> 
> 
> Best regards,
> Krzysztof
> 
> 

