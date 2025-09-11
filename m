Return-Path: <devicetree+bounces-215784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00ECCB52A3B
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 09:39:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B53893BC36F
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 07:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 888232749DF;
	Thu, 11 Sep 2025 07:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMlz6Kjz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3DA26563F;
	Thu, 11 Sep 2025 07:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757576379; cv=none; b=F/HcZHeZjXt7sj1lGXqF9RSw/QcysG4OdbSZkQ06p2/ouLnwCLd0izHwqfxoRWoamoAVmD/7SoOFO8inawag/TZVAPjMtt9yEov4W9brZtYDpSfZsDn8LC0BCciq95uW7m9mI0qunpbQTla3+gsz+3WBcz0/TSoqH2zuTNRguBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757576379; c=relaxed/simple;
	bh=1dmdYn8fHPUpRgY47QNctSx5YpgrkPMGfco6SsnLUi4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V3nIbWtsOZ08WRhC5WM9bgR+CFzdyPjC7Op444MTKV3xixImy94mzTiRHQ52+BoKDRxckCFCypQ2aeiaP+xaV2yfy/AaUxFznylUFb4Q2tFGBwxpVrL/7SXCEpiz7BjvHPekmDly+UTAO95P3kNzjV0e8IdqK7MezAIfCcwZKuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMlz6Kjz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49F4FC4CEF7;
	Thu, 11 Sep 2025 07:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757576378;
	bh=1dmdYn8fHPUpRgY47QNctSx5YpgrkPMGfco6SsnLUi4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gMlz6KjzsbyGt5MfEnW8P3tJhaOsEqB895ig7JTQoIAZ6MrWdR8MFb/JB+GxkbLZj
	 2HTPRiP7RZYx1EF3BVRbolRgw5XMNbVMoQgZ7rVxwY4620u13NCUSFEKqLKq9vmFF/
	 cW/hbdnPW+puXTxTlB1bLVPxVJiuZuTwfzvVqJ0sQ5jVnO6Kp9Tn7DqHjQlFBfcvD4
	 Lgg5RGjeg9uiEtn331M83rVZFXY5ukofg3j8738pehYUNDzjK0G413jOPEwDresdc0
	 YWJeylMsPsrqupJX6oaToQMn23Pbb/3qIjh+7Y10AgbImm4255HFaYrZWPyNkLQFyb
	 K+5PRNcmIDndA==
Date: Thu, 11 Sep 2025 09:39:36 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Alvin =?utf-8?Q?=C5=A0ipraga?= <alvin@pqrs.dk>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: ti,pcm1754: add binding
 documentation
Message-ID: <20250911-uppish-tarsier-of-kindness-fbb138@kuoka>
References: <20250910-v6-12-topic-pcm1754-v2-0-0917dbe73c65@pengutronix.de>
 <20250910-v6-12-topic-pcm1754-v2-1-0917dbe73c65@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250910-v6-12-topic-pcm1754-v2-1-0917dbe73c65@pengutronix.de>

On Wed, Sep 10, 2025 at 11:34:05AM +0200, Stefan Kerkmann wrote:
> The Texas Instruments PCM1754 is a simple stereo DAC without any digital
> management interface but soft mute, PCM input format and 44.1 kHz
> digital de-emphasis can be configured via strapping pins. Only soft mute
> and PCM input format selection is currently exposed via optional GPIOs
> in the driver.

Ah, and if you resend for any reason, then:

A nit, subject: drop second/last, redundant "binding documentation". The
"dt-bindings" prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

Instead: "add TI PCM1754 Stereo DAC"

Best regards,
Krzysztof


