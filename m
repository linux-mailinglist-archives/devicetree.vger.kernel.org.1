Return-Path: <devicetree+bounces-14533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 966DD7E5438
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 11:46:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4FC7828139B
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 10:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B233E12E6B;
	Wed,  8 Nov 2023 10:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="HyVMG7RR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DC0134DD
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 10:46:37 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C422E4212;
	Wed,  8 Nov 2023 02:46:36 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3F7B2C0004;
	Wed,  8 Nov 2023 10:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699440394;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=siQIor97Su0XRo3EQXHPwYQm+ngF5pZJt8iqxzJfevU=;
	b=HyVMG7RRxmwZ0BbeBru3i9kSKMxxY0Fxy/D9RYUdEkzn6+FrC8UemWJajo3qt4auEbnLQS
	ZeZlnJxsuZncUbybF7eepl18gp37yIWxuSQNpXhJMW+fTtdW0DTVPflDRsuGxlz9114FeY
	9e9u0UG9jv/DSnW7fa3qBJ7hCve3r0BogwkaZFWW70LEGc8DG0ekQCD2p6gT8T/br1/8pn
	PUqpYwERBurzS6z49IDjv4XaaC5I6ksECG1ukn2WwOIGvHuG3IWjMuJoTVnVvvOu7s+LAW
	DxOCmwZhCyXYKtlc9dRDiuIW4KcOkBuRPxxpJDPi9FEA3HhfMFofF/E05IVuZQ==
Date: Wed, 8 Nov 2023 11:46:33 +0100
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: mchehab@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	conor+dt@kernel.org, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	thomas.petazzoni@bootlin.com, alexandre.belloni@bootlin.com,
	maxime.chevallier@bootlin.com, paul.kocialkowski@bootlin.com
Subject: Re: [PATCH v9 2/3] media: rockchip: Add a driver for Rockchip's
 camera interface
Message-ID: <ZUtnCfAjv0P4oZvq@pc-70.home>
References: <cover.1698666612.git.mehdi.djait@bootlin.com>
 <f7367726eb077d43446c83591ecbf9acbc77ef5f.1698666612.git.mehdi.djait@bootlin.com>
 <6f98b471-b139-4043-a8ab-e7a9f9608d60@wolfvision.net>
 <ZUSt5GC4lALz/fq5@pc-70.home>
 <2afa69d0-93f6-4033-ad87-c3bf01588ba9@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2afa69d0-93f6-4033-ad87-c3bf01588ba9@wolfvision.net>
X-GND-Sasl: mehdi.djait@bootlin.com

Hello Michael,

On Wed, Nov 08, 2023 at 09:50:25AM +0100, Michael Riesch wrote:
> Hi Mehdi,
> I applied your patches and added some modifications (= crude hacks) on
> top of them to bring up the RK3568 VICAP (note that I don't have any
> PX30 hardware). This setup is not yet able to capture the input stream
> (from a HDMI receiver chip), but I am on it.
> 
> One question popped up: to get the cif driver to probe with my device
> tree I had to request the IRQ with IRQF_SHARED. This is due to the
> approach that the CIF block has one IRQ but is represented by two
> drivers: the cif driver and the rockchip-iommu driver.

It was IRQF_SHARED when I submitted the v6 but changed it after reviews.

> 
> Subsequently I was surprised that you are not using the MMU at all,
> although the PX30 VIP features one. Is there any particular reason for that?

No particular reason. The IOMMU did not work and was not included when the 
patch series for this driver were submitted years ago. I focused on
fixing all the issues I found, complying with v4l2 guidelines and
getting an upstreamable driver: so I did not add the support.

> 
> Can we request the IRQ with IRQF_SHARED anyway?

Yes I will change it back to SHARED.

--
Kind Regards
Mehdi Djait

