Return-Path: <devicetree+bounces-147986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B5739A3A23D
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 17:12:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EAFC2189247A
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 16:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC84126D5D3;
	Tue, 18 Feb 2025 16:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b="lb1FKjCI"
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com [91.218.175.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D6D26E16A
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 16:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739894960; cv=none; b=XU5ACesJk5rCWKR9gYs2dFI84pnKwcPVrNUTTDpWpTBRLc2Kfi4svVdIelHfIB1nsGvBy1UNrPTXQQvJryJEgRgi4sxZpVbd4s0oY5f0RO1Ou1WWzgvsLoz+MfYN4Q+u1yf5UEdcTzpvEk83Lwp/3gmlHeMa/SH9Meeb4n3kQWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739894960; c=relaxed/simple;
	bh=AOhOsmxZezWbzjTsfDSX8kpBDPtwMyCO8DPaiR7znVw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cQOar5lrqE/dQhygcbuuPfliHB6efk80kq++w09KncMKg50lDUCOT6tEzKY/VhoIZuXXhsGJJP4ShU0/E9zLCUxW2eEvXl0AH8aOhxe1TU7ner+XUF8pWO/2QCwVkuz7Gd4X2Fi2DnBdA3RF5+xtr7gfQuoDCHb/rVEfzwIs4a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io; spf=pass smtp.mailfrom=rosenzweig.io; dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b=lb1FKjCI; arc=none smtp.client-ip=91.218.175.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rosenzweig.io
Date: Tue, 18 Feb 2025 11:09:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rosenzweig.io;
	s=key1; t=1739894951;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iEztrQmMNZf8KxW9it4BP89Ve0C07hVeIKvyoxZfpJA=;
	b=lb1FKjCI/WnYRemUD4eSVsAiqqKAwPZA+IuP1hhdgSp52sjlv2BMqOtqQ6OkTSYFTlGp2D
	VSyjNnweZztIHyNNEDCbT04vjvqC2KTV0HL2y0ml6hgl6K22rQPOOCbxTdOSWVBUrS9Wb1
	+eJuNV0+pB3SeoDtvAGXupFaZNIDISuwEFWJLdlqLWMCdGVB0d420Fyg9krTERTJYeT2OU
	uvJKwMox1fq95/oUZTl84dtLigO0QyM1F99D6nEX/nF/tyo+dViHaYJSEpjY4BfIzbtAPf
	SQJsUb8x+4BIkSft47WDuW3RkOeoV0AcvqACXtnvwujIi86DQcuu/BcY8oX0Bw==
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
Message-ID: <Z7Swn3nuGJfOO0Bc@blossom>
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

Which review comment...? The only thing I could find was about hwmon
exporting, which James added a patch for in v2 ("ASoC: tas2770: expose
die temp to hwmon"). Maybe I missed an email?

