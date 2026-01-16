Return-Path: <devicetree+bounces-255933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B897D2E66E
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:01:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3F0263022832
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43B803161B4;
	Fri, 16 Jan 2026 09:01:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nr90kyqO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C54F316199;
	Fri, 16 Jan 2026 09:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768554060; cv=none; b=o16aTAzON5EEE6FhkEiaFYIIW9rY5IFonZAPW7jTvG1fhJFrJ45wZDBeLVVqDTnAPvgNfsqHWhwuneok6MgY9+qVhwanKEMVg42BFLFxad3TMx2/MN35BQMfm082jLbuBfy9e+pReFDitF4BZiHlyih9KVSZbhDo5OMi2WILxwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768554060; c=relaxed/simple;
	bh=iXwb/buNnoI6DchaflXPUphNsYtOVNfiIMwpPhB+poM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Lgsk7urUNckc6M54T3lJxVZDeQOgqd2sRNu77oLmBpIs23yt6Jydn4fS8VU//S5KVIpk+E9CR7+QfiBlVD/dtIjXAhgDqNBmhhRFscyE3rRdNkphdwiPoLi9lAAVuaJHE4KU3ORYVYY7ucCP7l7LtIji3/oyN4oGGHb9bSDSEy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nr90kyqO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5975C19421;
	Fri, 16 Jan 2026 09:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768554059;
	bh=iXwb/buNnoI6DchaflXPUphNsYtOVNfiIMwpPhB+poM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nr90kyqOaYRAMsU0hex1uSG79896zSIXTMgpC1Z5AbsKwuUVgnbHTbd+ZqbY+K6ua
	 H9X5B4h7NswzhwwWa3D2N+y6ivj1jx25tMUZUljcdRQhX+sG/D9t14eagzS0Vnl9OM
	 O17x1ZleZr26D3xdrqZgR0CkALE8/KqhdV8zHzkHMwc4aepDUtpyja/3MnULeEMg/d
	 Gv1W4RrnaON+nAgfM6WnCZxT2aZpmy867n5wJLdRuABArI9KNomHDR6wEffNAwHEE+
	 gCH4mVC7PfJ7cUxRkM71qE+kQ6mbshikowtslgf9f9dorzcHRFwL81ARrCx0D3LPBe
	 BOdgfEH5jS3fQ==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vgfhP-000000003RW-0YVb;
	Fri, 16 Jan 2026 10:00:55 +0100
Date: Fri, 16 Jan 2026 10:00:55 +0100
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Antoniu Miclaus <antoniu.miclaus@analog.com>,
	Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srini@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	David Lechner <dlechner@baylibre.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/4] mux: gpio-mux: add enable GPIO support and ADG2404
Message-ID: <aWn-R7O_wZkpC1NC@hovoldconsulting.com>
References: <20260115121943.23715-1-antoniu.miclaus@analog.com>
 <20260116-jumping-premium-crow-693a1c@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260116-jumping-premium-crow-693a1c@quoll>

On Fri, Jan 16, 2026 at 09:37:36AM +0100, Krzysztof Kozlowski wrote:
> On Thu, Jan 15, 2026 at 02:18:18PM +0200, Antoniu Miclaus wrote:
> > This series extends the gpio-mux driver with optional enable GPIO support
> > to prevent glitches during channel transitions, then adds support for the
> > Analog Devices ADG2404 multiplexer as the first user of this feature.
> > 
> > The enable GPIO allows the multiplexer to be disabled before changing
> > address lines and re-enabled after, preventing brief activation of
> > unintended channels during transitions. This is particularly important
> > for precision analog applications.
> > 
> > The ADG2404 is a 4:1 analog multiplexer with low 0.62Ω on-resistance
> > that requires this enable GPIO functionality for glitch-free operation.
> > 
> > Changes in v3:
> >  * Extend gpio-mux driver instead of creating standalone adg2404 driver
> >  * Make enable GPIO optional for backward compatibility
> >  * Add MUX_IDLE_DISCONNECT support via enable GPIO
> 
> You are developing on some old kernel. You got stale Cc list of at least
> three people! How could you for example get "johan+linaro@kernel.org" -
> from which maintainer entry - but that at least is not bouncing like two
> others.

Probably from using get_maintainer.pl --git:

	$ scripts/get_maintainer.pl --git drivers/mux/gpio.c 
	Peter Rosin <peda@axentia.se> (maintainer:MULTIPLEXER SUBSYSTEM)
	Srinivas Kandagatla <srini@kernel.org> (commit_signer:1/2=50%,authored:1/2=50%,added_lines:5/6=83%)
	Krzysztof Kozlowski <krzk@kernel.org> (commit_signer:1/2=50%)
	Bartosz Golaszewski <brgl@kernel.org> (commit_signer:1/2=50%)
	David Lechner <dlechner@baylibre.com> (commit_signer:1/2=50%,authored:1/2=50%,added_lines:1/6=17%,removed_lines:3/3=100%)
	Johan Hovold <johan+linaro@kernel.org> (commit_signer:1/2=50%)
	linux-kernel@vger.kernel.org (open list)
	MULTIPLEXER SUBSYSTEM status: Odd Fixes

A recent mailmap is indeed needed to remap Bartosz's old address,
though.

Johan

