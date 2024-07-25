Return-Path: <devicetree+bounces-87983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D42093BC1E
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 07:45:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E70F22844BA
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 05:45:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 204A21CAA2;
	Thu, 25 Jul 2024 05:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="hfjfeaQO"
X-Original-To: devicetree@vger.kernel.org
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6DF11C683;
	Thu, 25 Jul 2024 05:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721886346; cv=none; b=Foiijf5NZmC2TXGR2ZJIqAu0DseRcbG4i3kT0uO/0gwZs9naWE0HZ1YrdOFxIZKrDhhOncogdrrV71w+cWS+ieXGmBbwJ6GhkWH54Z4EjzERTPz9F0aSXvXLTeplwlqAj4mDQMOY39/AgzOWk9HObLCA/qL7beSOayOZTqCZ8mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721886346; c=relaxed/simple;
	bh=pqT7xhhvO7rMmQZwot4PikAHl+lQe9ZQJxGQDXcMJ5o=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bqFRukKmda/hC4NGC6SpO3agULEKEKUIxxHZ3vkYl70HeFZ8j2PETPDRCWKmu7F0A5Wzqdkicv7e0LyeGUozlweCUm2wp3/7D06TKRo0Emloem6yG3UKWA61aL6Ql2D3b6EAsZWejtP0iPLpBafiCdyxzf1jBcDvza+e9Kudr9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=hfjfeaQO; arc=none smtp.client-ip=217.70.183.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id B52121C0005;
	Thu, 25 Jul 2024 05:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1721886335;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LxK8XBeQTTR4Tc/s5qyrrLBlrioJMMBQezGw7qaqjmQ=;
	b=hfjfeaQOKrpWNaZD3IcFOlJIkjVOgvkaiWSMzkV2yY5PMPM6c2Siytc5wgXWO5vYEtQpYo
	NVVZkByFOiWeCAmlEVRdVaFUardAELs+DTPPZHei7/r2fqvdBz+P8OxiC9uQGLUhWx8b/s
	OOUxcvcwXjZX88IiKm54WgToaQRzBP/6B6eeewn8VD0kQfr5lojJCUFcbTQnlaJnRBCBnV
	UIZskIUF/lrZ8ZM2t0P4kJE7/g9eHh+/x0Vyr+TqY+9WHBGIJdWkLui9vZk445NBe6Khv/
	Cx+u50e6OfJ4lYbg33OGQP2wiAHh6ZBorzIjm3ls9/TO+LwsMMqvU1ZMyLDjzw==
Date: Thu, 25 Jul 2024 07:45:32 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Alex Lanzano <lanzano.alex@gmail.com>
Cc: mehdi.djait@bootlin.com, David Airlie <airlied@gmail.com>, Daniel Vetter
 <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann
 <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mehdi Djait <mehdi.djait.k@gmail.com>
Subject: Re: [PATCH 0/2] Add driver for Sharp Memory LCD
Message-ID: <20240725074532.65616a26@windsurf>
In-Reply-To: <20240725004734.644986-1-lanzano.alex@gmail.com>
References: <20240725004734.644986-1-lanzano.alex@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-GND-Sasl: thomas.petazzoni@bootlin.com

Hello Alex,

On Wed, 24 Jul 2024 20:47:01 -0400
Alex Lanzano <lanzano.alex@gmail.com> wrote:

> This patch series add support for the monochrome Sharp Memory LCD
> panels. This series is based off of the work done by Mehdi Djait.

Thanks for resuming the effort on this patch series! Since this patch
series is clearly heavily based on Mehdi's work, wouldn't it make sense
to preserve Mehdi's authorship for the patches?

Best regards,

Thomas
-- 
Thomas Petazzoni, co-owner and CEO, Bootlin
Embedded Linux and Kernel engineering and training
https://bootlin.com

