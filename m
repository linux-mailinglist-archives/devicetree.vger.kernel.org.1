Return-Path: <devicetree+bounces-13112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCBA7DC9B2
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 10:34:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EC8FAB20D2F
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 09:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A693913AE5;
	Tue, 31 Oct 2023 09:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="IebiPiW3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A909C14F7D
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 09:33:58 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83550B7;
	Tue, 31 Oct 2023 02:33:56 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3656CFF811;
	Tue, 31 Oct 2023 09:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1698744835;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=m47EAzqConAoJeh9KR/8kdD9Cq9u7uQy035dBZUpv0w=;
	b=IebiPiW3z5rimh+Cw3MRE44T90St+6GCGnlsEWuv9nDu7j9N1Jk1vLk/rKm4ZwbrMPI+oa
	3HZEGlx9OkxMQQ6x+xH023VJ+B2ZqoXlXvR2sciWSgQ+Lpb796IKuQFnM4V3V0TUZy/OEW
	hg9PGSb5agMVpNh/iCSU+Nkx2TbpMmD3tJnVl2NercKUOcxCZPPgDKK+vILI97ZxDOdNPg
	fCA1nByp3nD2azf32qBrczImLlfa5pSqFD1510jVbpayaYS/h3EuvwQxSaYkEBPo/N1OT/
	hJ81V9BmxU7EifbWYs8RF7ApeNi7pL1jTuXC3IcX0BlNawvjQZGjRFkZ5y8j8A==
Date: Tue, 31 Oct 2023 10:33:52 +0100
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: mchehab@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	conor+dt@kernel.org, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	thomas.petazzoni@bootlin.com, alexandre.belloni@bootlin.com,
	maxime.chevallier@bootlin.com, paul.kocialkowski@bootlin.com,
	michael.riesch@wolfvision.net
Subject: Re: [PATCH v9 2/3] media: rockchip: Add a driver for Rockchip's
 camera interface
Message-ID: <ZUDKAB+zQYS9aLpB@pc-70.home>
References: <cover.1698666612.git.mehdi.djait@bootlin.com>
 <f7367726eb077d43446c83591ecbf9acbc77ef5f.1698666612.git.mehdi.djait@bootlin.com>
 <ad346052-ec62-4d68-903e-fccd7ad989bd@wanadoo.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ad346052-ec62-4d68-903e-fccd7ad989bd@wanadoo.fr>
X-GND-Sasl: mehdi.djait@bootlin.com

Hello Christophe,

On Mon, Oct 30, 2023 at 01:47:17PM +0100, Christophe JAILLET wrote:
> > +	/* Create & register platform subdev. */
> > +	ret = cif_register_stream_vdev(cif_dev);
> > +	if (ret < 0)
> > +		goto err_unreg_media_dev;
> > +
> > +	ret = cif_subdev_notifier(cif_dev);
> > +	if (ret < 0) {
> > +		v4l2_err(&cif_dev->v4l2_dev,
> > +			 "Failed to register subdev notifier(%d)\n", ret);
> > +		cif_unregister_stream_vdev(cif_dev);
> > +		goto err_unreg_media_dev;
> 
> Should there be another label with cif_unregister_stream_vdev(cif_dev); if
> an error occurs here?
> 
> CJ

cif_subdev_notifier() is the last function call in the probe with error
handling. So it will undo the last successful register:
cif_register_stream_vdev and use the goto to unregister the rest.

I can add a label err_unreg_stream_vdev but it will be only used in the
error handling of cif_subdev_notifier() and I don't see the benefit.

--
Kind Regards
Mehdi Djait

> > +	}
> > +
> > +	cif_set_default_format(cif_dev);
> > +	pm_runtime_enable(&pdev->dev);
> > +
> > +	return 0;
> > +
> > +err_unreg_media_dev:
> > +	media_device_unregister(&cif_dev->media_dev);
> > +err_unreg_v4l2_dev:
> > +	v4l2_device_unregister(&cif_dev->v4l2_dev);
> > +	return ret;
> > +}

