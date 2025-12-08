Return-Path: <devicetree+bounces-245285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D522ECAE47F
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 23:09:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4F2F3054C98
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 22:09:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA4F2E22AB;
	Mon,  8 Dec 2025 22:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ZIFFayhW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EDC2E2852
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 22:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765231760; cv=none; b=WI4ZtE6wJP/8K4H1v0NroZUMYxsoIfz7kGXM+jcClmOodXyj275PGtTs6Ip1u2dzBPKLD6ewYna620WNXrk9XGurHiV29FJ8Z5WHgwYQXWwwJ/hpp4V7+oPRvNiPU/nTSxqmT09ZIwdTcl7VrRJ0cB8onS2ppZAdwpM/hwLt00Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765231760; c=relaxed/simple;
	bh=MbE1bv1r91ojRBbAgd8sSdkFaVll/H4wSmg6gbMWeGY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a0BC0FWIg85wAVQlFk2Zu/4ssx+lLx+WKXtYOYLYPuWCPv2CZxVhwEBsFonIkVKAV3I+dGrnatDSkjxSTQTX59ONeCr7Jzj98+6O7OEyr1KckYK/LUuviqPUoLrwlYZ8kFupNwGMOTI69r8rtdN+3FwaPXGbhR9KWalZ26J9m/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ZIFFayhW; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id A5A9D1A203F;
	Mon,  8 Dec 2025 22:09:16 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 78604606DD;
	Mon,  8 Dec 2025 22:09:16 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 13D07103C8D5C;
	Mon,  8 Dec 2025 23:09:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765231755; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=txJRuHrrwV2ADW2a0LZ396P8T6DrwxOBcVmxIdFH5mY=;
	b=ZIFFayhWWluy/Qms43QysyKzVEzgYbV0fvLPjTvuqBXZkXZsh477ayBau29XgKXhEO/9jp
	nEVCYk0l9aNSPfiD9uDM7jbB3+NJ2uoMpn0IvxIpRa64dDpRe/CdYLNVVPA01tiZio5rjn
	Hqv5AqlwlWViU+/fM4A9kiylenR3TeEpf3HZUayLznN/o0vtEr8D0wSDnxwgfmBBlrLYzd
	6n5F7gVHJkqmvik2uMYPuY/rgnIESqxELcep1iZYvDMXwDUIssjWka7VQJLwbX4xMN2iIZ
	eBpGAyA2siQARTp01ckbQm41jtJfqCuYSopaHjdIvT3sbRk2BVzHp2duiPTBog==
Date: Mon, 8 Dec 2025 23:09:08 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Neal Gompa <neal@gompa.dev>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Jonathan Corbet <corbet@lwn.net>,
	James Calligeros <jcalligeros99@gmail.com>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-input@vger.kernel.org, linux-doc@vger.kernel.org,
	Mark Kettenis <kettenis@openbsd.org>,
	Hector Martin <marcan@marcan.st>
Subject: Re: (subset) [PATCH v5 00/11] mfd: macsmc: add rtc, hwmon and hid
 subdevices
Message-ID: <176523152354.342815.17888940507252789645.b4-ty@bootlin.com>
References: <20251112-macsmc-subdevs-v5-0-728e4b91fe81@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251112-macsmc-subdevs-v5-0-728e4b91fe81@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3

On Wed, 12 Nov 2025 21:16:46 +1000, James Calligeros wrote:
> This series adds support for the remaining SMC subdevices. These are the
> RTC, hwmon, and HID devices. They are being submitted together as the RTC
> and hwmon drivers both require changes to the SMC DT schema.
> 
> The RTC driver is responsible for getting and setting the system clock,
> and requires an NVMEM cell. This series replaces Sven's original RTC driver
> submission [1].
> 
> [...]

Applied, thanks!

[01/11] dt-bindings: rtc: Add Apple SMC RTC
        https://git.kernel.org/abelloni/c/07049187e830
[03/11] rtc: Add new rtc-macsmc driver for Apple Silicon Macs
        https://git.kernel.org/abelloni/c/49a51df427db

Best regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

