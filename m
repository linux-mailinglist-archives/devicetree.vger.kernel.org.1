Return-Path: <devicetree+bounces-147987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B06A3A235
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 17:10:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 084F33A5DD7
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 16:10:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2F7426E637;
	Tue, 18 Feb 2025 16:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b="I2DBeoab"
X-Original-To: devicetree@vger.kernel.org
Received: from out-176.mta0.migadu.com (out-176.mta0.migadu.com [91.218.175.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0CBA26E171
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 16:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739895044; cv=none; b=bIFSdw7lkU3A/6LJrGPoKj9z1/TxqokBxnws2dB9jzoY4pea1XHepwIUpwN4Npw8eGAtwGa5fmBOT26xb8lkoBHgvAt8Gd/wT8g8WMV+2UVjqhTMnOGc9LByiKvNg2rBuHvR8q49WVJYnhF+gJwvchlSsFxaqSTw1l0DIkNW0q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739895044; c=relaxed/simple;
	bh=X3iyuBDAJs9NecXBggaSvB9fTlXvnxoYTpUmuq60vF4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VLlcQXuB8YbSF2Zsd0AB8bjLjF1VPAqzUDJF2jjZhsbm2aNnPan35abs+7oxcZsFsvYGj/t+tS6hYpNn/EHJyRpT/5vwB4V7oq36fGogTu+Mrv+iOJFyevcHDixH9tmE6gPXU6vw6gpdbHcIW8vzAF/jdBQuI5wx/IEhBCXQZZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io; spf=pass smtp.mailfrom=rosenzweig.io; dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b=I2DBeoab; arc=none smtp.client-ip=91.218.175.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rosenzweig.io
Date: Tue, 18 Feb 2025 11:09:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rosenzweig.io;
	s=key1; t=1739895040;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ain+K2rYMsxf/s6n991mIKzQ3CJnjDO4HAoAnKShdLU=;
	b=I2DBeoabN1UcgNUM//Po6Bt7J7UuK1m8s38ivqi+YGWTBQKhwTXuZqgMdQSFXPIm/aUscf
	UFBzzoCsL2efmPxhpH4O9zOHvjQ5lOIVglFFrLX4GY4nsZZhEbT6XXnIAHqpaAxDj8NYdG
	EU/UldI5zaJ9V81UnBVtTDndZm93O/X8oIx7uGRgJc1/uaLH0hLbAYNnsY1M1nwiTZWxZM
	HqQpkG9wh63MQBFPpnC4JKlE0Yz2DEmwuZKEYkzZYHYkA1AOTipwL2WYwX1oVpIWlTJXhf
	hcs+KND7UGzHt9zdVN5JNLSatJqQvGW5OdnFPu6SeBxUgASUURCUIlTziL+aLA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alyssa Rosenzweig <alyssa@rosenzweig.io>
To: Mark Brown <broonie@kernel.org>
Cc: James Calligeros <jcalligeros99@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>,
	Baojun Xu <baojun.xu@ti.com>, Dan Murphy <dmurphy@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shi Fu <shifu0704@thundersoft.com>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Martin =?utf-8?Q?Povi=C5=A1er?= <povik+lin@cutebit.org>,
	Hector Martin <marcan@marcan.st>, linux-sound@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	asahi@lists.linux.dev, linux-hwmon@vger.kernel.org,
	Neal Gompa <neal@gompa.dev>
Subject: Re: [PATCH v2 13/29] ASoC: tas2770: Export 'die_temp' to sysfs
Message-ID: <Z7SwznzjPS1-TSdZ@blossom>
References: <20250218-apple-codec-changes-v2-0-932760fd7e07@gmail.com>
 <20250218-apple-codec-changes-v2-13-932760fd7e07@gmail.com>
 <Z7Slq3BQY7S5REPy@finisterre.sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z7Slq3BQY7S5REPy@finisterre.sirena.org.uk>
X-Migadu-Flow: FLOW_OUT

Le Tue, Feb 18, 2025 at 03:22:19PM +0000, Mark Brown a écrit :
> On Tue, Feb 18, 2025 at 06:35:47PM +1000, James Calligeros wrote:
> > From: Martin Povišer <povik+lin@cutebit.org>
> > 
> > Export a file for the readout of die temperature measurements.
> > As per the datasheet, the temperature can be calculated by
> > dividing the register value by 16 and then subtracting 93.
> 
> Please don't ignore review comments, people are generally making them
> for a reason and are likely to have the same concerns if issues remain
> unaddressed.  Having to repeat the same comments can get repetitive and
> make people question the value of time spent reviewing.  If you disagree
> with the review comments that's fine but you need to reply and discuss
> your concerns so that the reviewer can understand your decisions.

Oh, I see your later email. Serves me right for replying without reading
the whole thing, sorry!

