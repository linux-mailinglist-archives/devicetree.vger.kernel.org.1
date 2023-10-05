Return-Path: <devicetree+bounces-6088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7487B9D64
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:38:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A91DF281ABE
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 13:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C9E11C29A;
	Thu,  5 Oct 2023 13:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdhzp6tQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAA01170F;
	Thu,  5 Oct 2023 13:38:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7C49C4AF73;
	Thu,  5 Oct 2023 13:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696513089;
	bh=IHjcJEdzOn5XpuR4rXMoCHN3hdl6l6qbxCqy3uQRR68=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=hdhzp6tQXl6tvjcq1x6OfQN/c974rRNvEZaKS4R2RpqKqYifvkLl1kGaRhD9rvTWZ
	 ga2o1a64DLAey6jhLH1efLIVZcJHzJVYtHSbSBDeeDLl0dXGd/ZS7Ygvj8zyhp2RAW
	 x+wXEqby0DQ5y+eMWs3uRzwYGu4Ih4nuE+Y+rcnvbcwXqb1D4Im5BcZJ6epVdP3Bdl
	 sc9A9slKc5hXs8qQY85LP0eHqVN/TW0AoYE+g0tYBo9R/THyvGAAJxt/RsuTDTAlg4
	 s165+CJNCUAcAv+zB8o7RtfsIo3Oip1XoIuBKen59qYNX95pHYqnyK18ENhmkZ7k6n
	 7AvPCNpAyslzQ==
Date: Thu, 5 Oct 2023 14:38:12 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-staging@lists.linux.dev, David Lechner <david@lechnology.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Axel Haslam <ahaslam@baylibre.com>, Philip Molloy
 <pmolloy@baylibre.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 13/27] staging: iio: resolver: ad2s1210: rework gpios
Message-ID: <20231005143812.42aff573@jic23-huawei>
In-Reply-To: <20230930155536.5a5e982e@jic23-huawei>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
	<20230929-ad2s1210-mainline-v3-13-fa4364281745@baylibre.com>
	<20230930155536.5a5e982e@jic23-huawei>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 30 Sep 2023 15:55:36 +0100
Jonathan Cameron <jic23@kernel.org> wrote:

> On Fri, 29 Sep 2023 12:23:18 -0500
> David Lechner <dlechner@baylibre.com> wrote:
> 
> > From: David Lechner <david@lechnology.com>
> > 
> > From: David Lechner <dlechner@baylibre.com>
> > 
> > - Remove "adi," prefix from gpio names.
> > - Sample gpio is now expected to be active low.
> > - Convert A0 and A1 gpios to "mode-gpios" gpio array.
> > - Convert RES0 and RES1 gpios to "resolution-gpios" gpio array.
> > - Remove extraneous lookup tables.
> > - Remove unused mode field from state struct.
> > - Swap argument order of ad2s1210_set_mode() while we are touching this.
> > 
> > Signed-off-by: David Lechner <dlechner@baylibre.com>  
> Applied,
0-day ran smatch on this and it picked up that a log isn't released in
an error path.  I've fixed that up with a goto error_ret and will push out a
fresh testing branch for 0-day to take another look at.

...

> > @@ -546,7 +537,9 @@ static int ad2s1210_initial(struct ad2s1210_state *st)
> >  	int ret;
> >  
> >  	mutex_lock(&st->lock);
> > -	ad2s1210_set_resolution_pin(st);
> > +	ret = ad2s1210_set_resolution_gpios(st, st->resolution);
> > +	if (ret < 0)
Exiting with lock held.  There is an error_ret label that releases the lock
so use that.

> > +		return ret;
> >  
> >  	/* Use default config register value plus resolution from devicetree. */
> >  	data = FIELD_PREP(AD2S1210_PHASE_LOCK_RANGE_44, 1);

