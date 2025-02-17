Return-Path: <devicetree+bounces-147217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC37A37841
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 00:04:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7EB2F7A1C01
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 23:03:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72A6E1A3169;
	Sun, 16 Feb 2025 23:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b="ESMd6txQ"
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta1.migadu.com (out-178.mta1.migadu.com [95.215.58.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D69418C932
	for <devicetree@vger.kernel.org>; Sun, 16 Feb 2025 23:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739747045; cv=none; b=R3cTyGYoI/5umTGU5cQfC+5GbFRKVyRrb7oOploa3xT5GMnB/BKh1BXIJ9+G7MblNobtHVZ157ecv4dEYg8Fp2nODkW9Yfz6TSARkGDqiWKy/A7QM+6mb4rTrJnkfSO4qhUPuxQS6lZ6Y5F0Hn96/MQvObHURaunXdmjsqtf/ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739747045; c=relaxed/simple;
	bh=wkzegGe6PuDvfuysYYpmOfCYrAJvZhUqTEETXwxIkeQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gI+NfE1dckQKLHc7+Ryg1saAFDbVHciMjWWIcr+fHgTsPKSBElvT34W5L7k4MCCnhe34CgUKK0PQQIuDwshFuxRrOvPH90hND295EMw+EbPLjQRQR/YqaJTatrb+348tvXjkFJRwccv9iaUoJm2M8A/C3GcUoJAS4ZdSKsfDOpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io; spf=pass smtp.mailfrom=rosenzweig.io; dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b=ESMd6txQ; arc=none smtp.client-ip=95.215.58.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rosenzweig.io
Date: Sun, 16 Feb 2025 18:03:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rosenzweig.io;
	s=key1; t=1739747041;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5jBKuQz78Uh8OIAFgi4TgrQwNoRPu6E6igkIETLWFjs=;
	b=ESMd6txQJdqiAM+dkUY7rHkSJxpUqdFMgq2PMVM2FJcWFxi62dlUYzkfAyu87m9vqelXz8
	6SzMxZSRqNu8hyIPpqfV9IOLNLfsEGr3DsN8dd02Jm5wSnfwql16zisNzALr4QsyEDmZmK
	0hi/+jrHd4d36OXpHzhImQqO/v8pk1ccLWW3LLqcZr1ugFJvhjG0MfowQweeI8mdYdOPxv
	lNcvYkvxLWkwHuK6YWB2X+RrgHQIgHRfUUD0LqJE1H03juyrMK0k0oBHOti4CDgADNglCG
	X/YPzL2IY4CrRbzX+Pxl+4l0tx42vE7bRX+OlQaSpbwTEceSgseQ1Hv/LGy2tg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alyssa Rosenzweig <alyssa@rosenzweig.io>
To: James Calligeros <jcalligeros99@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>,
	Baojun Xu <baojun.xu@ti.com>, Dan Murphy <dmurphy@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shi Fu <shifu0704@thundersoft.com>,
	Martin =?utf-8?Q?Povi=C5=A1er?= <povik+lin@cutebit.org>,
	Hector Martin <marcan@marcan.st>, linux-sound@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	asahi@lists.linux.dev,
	Martin =?utf-8?Q?Povi=C5=A1er?= <povik@protonmail.com>
Subject: Re: [PATCH 00/27] ASoC: tas27{64,70}: improve support for Apple
 codec variants
Message-ID: <Z7Ju3HFQaLKgQJmC@blossom>
References: <20250215-apple-codec-changes-v1-0-723569b21b19@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250215-apple-codec-changes-v1-0-723569b21b19@gmail.com>
X-Migadu-Flow: FLOW_OUT

This looks much better than the v0 I eyeballed last week, good stuff :-)
Will leave the technical review on this to people who know more audio
than me but it /looks/ just about right to me. Thanks for getting this
into shape and submitting it, James :-)

Le Sat, Feb 15, 2025 at 10:02:33AM +1000, James Calligeros a écrit :
> Hi all,
> 
> This series introduces a number of changes to the drivers for
> the Texas Instruments TAS2764 and TAS2770 amplifiers in order to
> introduce (and improve in the case of TAS2770) support for the
> variants of these amps found in Apple Silicon Macs.
> 
> Apple's variant of TAS2764 is known as SN012776, and as always with
> Apple is a subtly incompatible variant with a number of quirks. It
> is not publicly available. The TAS2770 variant is known as TAS5770L,
> and does not require incompatible handling.
> 
> Much as with the Cirrus codec patches, I do not
> expect that we will get any official acknowledgement that these parts
> exist from TI, however I would be delighted to be proven wrong.
> 
> This series has been living in the downstream Asahi kernel tree[1]
> for over two years, and has been tested by many thousands of users
> by this point[2].
> 
> Regards,
> James
> 
> [1] https://github.com/AsahiLinux/linux/tree/asahi-wip
> [2] https://stats.asahilinux.org/
> 
> ---
> Hector Martin (14):
>       ASoC: tas2764: Enable main IRQs
>       ASoC: tas2764: Power up/down amp on mute ops
>       ASoC: tas2764: Add SDZ regulator
>       ASoC: tas2764: Add reg defaults for TAS2764_INT_CLK_CFG
>       ASoC: tas2764: Mark SW_RESET as volatile
>       ASoC: tas2764: Fix power control mask
>       ASoC: tas2764: Wait for ramp-down after shutdown
>       ASoC: tas2770: Add SDZ regulator
>       ASoC: tas2770: Power cycle amp on ISENSE/VSENSE change
>       ASoC: tas2770: Add zero-fill and pull-down controls
>       ASoC: tas2770: Support setting the PDM TX slot
>       ASoC: tas2770: Fix volume scale
>       ASoC: tas2764: Set the SDOUT polarity correctly
>       ASoC: tas2770: Set the SDOUT polarity correctly
> 
> James Calligeros (2):
>       ASoC: dt-bindings: tas27xx: add compatible for SN012776
>       ASoC: dt-bindings: tas2770: add compatible for TAS5770L
> 
> Martin Povišer (11):
>       ASoC: tas2764: Extend driver to SN012776
>       ASoC: tas2764: Add control concerning overcurrent events
>       ASoC: tas2770: Factor out set_ivsense_slots
>       ASoC: tas2770: Fix and redo I/V sense TDM slot setting logic
>       ASoC: tas2764: Reinit cache on part reset
>       ASoC: tas2764: Configure zeroing of SDOUT slots
>       ASoC: tas2764: Apply Apple quirks
>       ASoC: tas2764: Raise regmap range maximum
>       ASoC: tas2770: Export 'die_temp' to sysfs
>       ASoC: tas2764: Export 'die_temp' to sysfs
>       ASoC: tas2764: Crop SDOUT zero-out mask based on BCLK ratio
> 
>  .../bindings/sound/ti,tas2770.yaml       |   1 +
>  .../bindings/sound/ti,tas27xx.yaml       |   1 +
>  sound/soc/codecs/Kconfig                 |   1 +
>  sound/soc/codecs/tas2764-quirks.h        | 188 +++++++++++++++
>  sound/soc/codecs/tas2764.c               | 302 +++++++++++++++++++++----
>  sound/soc/codecs/tas2764.h               |  29 ++-
>  sound/soc/codecs/tas2770.c               | 264 +++++++++++++++++----
>  sound/soc/codecs/tas2770.h               |  20 ++
>  8 files changed, 711 insertions(+), 95 deletions(-)
> ---
> base-commit: cc7708ae5e2aab296203fcec774695fc9d995f48
> change-id: 20250214-apple-codec-changes-6e656dc1e24d
> 
> Best regards,
> -- 
> James Calligeros <jcalligeros99@gmail.com>
> 

