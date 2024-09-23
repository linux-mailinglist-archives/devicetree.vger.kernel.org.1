Return-Path: <devicetree+bounces-104582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3B397ED6E
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 16:54:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D62F281A1A
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 14:54:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1200913D51B;
	Mon, 23 Sep 2024 14:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AfKRHa6E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F18D77F13
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 14:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727103229; cv=none; b=dpy27YgmuxdnaWWeDjnYAkuvH9nriAIZSBJ4/EdSMbPla/PbGXT1iKgGytpmBDkq+oNLbFA2SB1POjHNt3RGUJc3d6rggHjMLKsAb2rwO4B8d+iQ4sxG9P6BnWaz0MPUCEB5mP+y43xGvx0Ezi++eFoAp8iuDFG3bU3hlV+1qdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727103229; c=relaxed/simple;
	bh=Sv0LMc8jloS2ctD6NvA7EW5gUR4Xtg9nBg/PukUwHWs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SOHmXPZjTc0Uj6Lc4FxAruVkAupaKWZoWJ5rtDrb9kP0+aXOCoJDc+mxvHYKt+YfQW7bF1lwDAWb/SlvnFcEo1j54cAyHS+GxvZLJcC3ssueSdrPD7NAn7SXpxKawOkmCtqVs7pw9Ou6LCbEaEDDnxZoSE8C2H3AsffjHKy//rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AfKRHa6E; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2068a7c9286so44573785ad.1
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 07:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727103226; x=1727708026; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WHr0ZZ/aZlRlTTNC+24ZGFKKQK7dS5KdBsTinwCJgs0=;
        b=AfKRHa6EABb9JANkl6UjDh0ZdVuKxXCGB/4DcE6AIqJkzEurqjOCXphqF4urPHzSAU
         OumdmHK3IEqfTnRuIytWvz3qz5qISzI02hCOu53gr+0txt29TipQSUEqIvDzaFp6Erhz
         rg7p7EJYO3ix2dfsE39w16mMF7JFle+RiUSCwGVdc4LHkKZw36u28gkwySh8vy5615E0
         YPn8BPQJ7PnDVFKPIFh5mVIK+YiKOSTkcWOVws0H1h4EZLKWfvn4DJZPU6V6QPLzPxrL
         TfcED5Zvp8DCC3dr+y726gbhS2Fwd/op2adhF7Yh7xCTIBLxp1ZSYxcrjIRdIuyfGStK
         L8bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727103226; x=1727708026;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WHr0ZZ/aZlRlTTNC+24ZGFKKQK7dS5KdBsTinwCJgs0=;
        b=KDSz2Y1E1Am9hxAKj7k5yvh5HXRAlYUrb/8+iG5U0Pazg5Qo6KEdR40oB4T7u3/VxL
         2Y2MCH+cc1K7eWzy18sZokqFaOoKsrx2vev+8unk2IfE61SEwsM4jEjAQbT6vYsQLu8A
         7DJ5zupd4vkdnwH8ZIDr00Zu+X6Care50vxkk45PUk6UDDSbphKx6EmS3ZpidvpCiuln
         RBCicHXw+2fGvaI3ZIf4C3PDcTrq7jR4lXxeC9QSLV2Yye+HD/bbl4M8PdhXwhZKnZOd
         cZKwKeZXRM/emmcjSoTMFvzIwTAQUkTNFGbvnz8ode0kFmUMchq/1cU5tfyqJ2Wfdp+c
         S0dg==
X-Forwarded-Encrypted: i=1; AJvYcCVg2xwMIQ4AdbRqhEaS5H1Nz0RCM27FYPje5Ubc23wVZgqTHU8IjoGTYZYG8NWTMjhp3mlN7nW/dhb5@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4vOYcBAg/J+zZpWSyZPQwLOV72wCUASHt+E3Et+6NDDwRDVbm
	XccFPRdbmanSuxRO8ABP1xwleONovMkCsaVdgb1oGNb96XawbxQgK3yRNFE4vX4=
X-Google-Smtp-Source: AGHT+IFhuOJw/XCNSvJ+MBjXWlX3smHS2Cj4f9xvR/t5xWbD1tPq7HDm+e4xSSJ78ipXDawFIf2SCw==
X-Received: by 2002:a17:903:18f:b0:205:76b1:175f with SMTP id d9443c01a7336-208d8394187mr150565885ad.21.1727103226610;
        Mon, 23 Sep 2024 07:53:46 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:7512:bc48:5403:2376])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-207946010d9sm134192425ad.65.2024.09.23.07.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 07:53:46 -0700 (PDT)
Date: Mon, 23 Sep 2024 08:53:43 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Jens Wiklander <jens.wiklander@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
	op-tee@lists.trustedfirmware.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v9 4/7] remoteproc: core: Add TEE interface support for
 firmware release
Message-ID: <ZvGA9741OV3aexzs@p14s>
References: <20240830095147.3538047-1-arnaud.pouliquen@foss.st.com>
 <20240830095147.3538047-5-arnaud.pouliquen@foss.st.com>
 <ZuMIEp4cVrp1hWa7@p14s>
 <fce2374e-384f-4005-b882-3e0d26897fb7@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fce2374e-384f-4005-b882-3e0d26897fb7@foss.st.com>

On Tue, Sep 17, 2024 at 06:56:58PM +0200, Arnaud POULIQUEN wrote:
> Hello Mathieu,
> 
> On 9/12/24 17:26, Mathieu Poirier wrote:
> > On Fri, Aug 30, 2024 at 11:51:44AM +0200, Arnaud Pouliquen wrote:
> >> Add support for releasing remote processor firmware through
> >> the Trusted Execution Environment (TEE) interface.
> >>
> >> The tee_rproc_release_fw() function is called in the following cases:
> >>
> >> - An error occurs in rproc_start() between the loading of the segments and
> >>   the start of the remote processor.
> >> - When rproc_release_fw is called on error or after stopping the remote
> >>   processor.
> >>
> >> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
> >> ---
> >>  drivers/remoteproc/remoteproc_core.c | 10 ++++++++--
> >>  1 file changed, 8 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> >> index 7694817f25d4..32052dedc149 100644
> >> --- a/drivers/remoteproc/remoteproc_core.c
> >> +++ b/drivers/remoteproc/remoteproc_core.c
> >> @@ -29,6 +29,7 @@
> >>  #include <linux/debugfs.h>
> >>  #include <linux/rculist.h>
> >>  #include <linux/remoteproc.h>
> >> +#include <linux/remoteproc_tee.h>
> >>  #include <linux/iommu.h>
> >>  #include <linux/idr.h>
> >>  #include <linux/elf.h>
> >> @@ -1258,6 +1259,9 @@ static int rproc_alloc_registered_carveouts(struct rproc *rproc)
> >>  
> >>  static void rproc_release_fw(struct rproc *rproc)
> >>  {
> >> +	if (rproc->state == RPROC_OFFLINE && rproc->tee_interface)
> >> +		tee_rproc_release_fw(rproc);
> > 
> > Function tee_rproc_release_fw() returns a value that is ignored.  I don't know
> > how it passes the Sparse checker but I already see patches coming in my Inbox to
> > deal with that.  In this case there is nothing else to do if there is an error
> > releasing the firware.  As such I would put a (void) in front and add a comment
> > about the return value being ignore on purpose.
> 
> Instead of ignoring the error, I wonder if we should panic in
> tee_rproc_release_fw(). Indeed, we would be in an unexpected state without any
> possible action to return to a normal state.

Nowadays a call to panic() is only used in very dire situations and I don't see
this meeting that requirement.  I would just call a dev_err() and let it be.

> 
> Regards,
> Arnaud
> 
> > 
> >> +
> >>  	/* Free the copy of the resource table */
> >>  	kfree(rproc->cached_table);
> >>  	rproc->cached_table = NULL;
> >> @@ -1348,7 +1352,7 @@ static int rproc_start(struct rproc *rproc, const struct firmware *fw)
> >>  	if (ret) {
> >>  		dev_err(dev, "failed to prepare subdevices for %s: %d\n",
> >>  			rproc->name, ret);
> >> -		goto reset_table_ptr;
> >> +		goto release_fw;
> >>  	}
> >>  
> >>  	/* power up the remote processor */
> >> @@ -1376,7 +1380,9 @@ static int rproc_start(struct rproc *rproc, const struct firmware *fw)
> >>  	rproc->ops->stop(rproc);
> >>  unprepare_subdevices:
> >>  	rproc_unprepare_subdevices(rproc);
> >> -reset_table_ptr:
> >> +release_fw:
> >> +	if (rproc->tee_interface)
> >> +		tee_rproc_release_fw(rproc);
> > 
> > Same here.
> > 
> >>  	rproc->table_ptr = rproc->cached_table;
> >>  
> >>  	return ret;
> >> -- 
> >> 2.25.1
> >>

