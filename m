Return-Path: <devicetree+bounces-53905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A810788EC46
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 18:14:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19A681F24CA6
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 17:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4D1813172F;
	Wed, 27 Mar 2024 17:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wawc70My"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E69612E1D4
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 17:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711559666; cv=none; b=usDhGZds1/w7lR4qhgTE1VY0QSQCTAcrXFfl0dopfTL0uIoxV61VQERz9OzeQQTnY+e8mcUNcxORasM4u3lSC83uQgWRP0QCdBM24F8T2TwriceCeGOM3NrP+n1PyWs5HsduCsML+NU3MtvNtmYUZCWBCn944ds9rbZbjK+5z4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711559666; c=relaxed/simple;
	bh=fK2jVsEBn9iJbm7nNKUjCIWztfRu3IeS99BhFcCgVvg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f/1EYI2cbqxVTT2Ff3+jUrQlG+TPDkCXk3qce3e3Tc0Muy8waqcOl7cSY5RMOcmfdmoF8NOEclnsXjMNznWhXWyXkcHB2r1dxTw78O4MxlX5qte5eO3k0er1OCnIgsBrwhWozEMfax+dkb67lYlxrrjjLcVSWpEBnZ9v/o6kJMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wawc70My; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1e00d1e13a2so607735ad.0
        for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 10:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711559664; x=1712164464; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RVDGUtmUaQVtA8J9OsClqc9G7HFCdTwY1X2qQsnwTG0=;
        b=wawc70MyV27ELsBA2KccZI1wgyVf0dIjWiFNW6TVhKn6hbj0VW9HgxVCbRFoJSeWrf
         M1aFis5trDNS6R5WNLtpF260JgzzI1lX4NWBDwK6/XIxCyyLt0I1O/fBcjqbAIlQ0KaA
         3pomMZla3Q277UV8NWNmWm/0kZl0XTZt5XRC6nxVo/rOr4q9PpvFTGVM+bP4i7ZS7T3z
         FomtWzfBhKC+wocmA5r0froLQqMnSlFvZvatrzz+AS7vHe4Q9XvoXIlthNKfTdthc9MD
         +P1ld2nF4PiTjtmdP/MNBrzb+lBthwivGmW+knEtDh7mxlLqRyR7oQlhducDNAVRGzoI
         msVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711559664; x=1712164464;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RVDGUtmUaQVtA8J9OsClqc9G7HFCdTwY1X2qQsnwTG0=;
        b=lM3SoMQpNt0ZncWhV1N4a+5Dz9/0q4Py0u3AK/RBj5MEEzUOHtJsDSodkSViFd9VZC
         DHfSJPvEXZzm5PdLhy0+i+gDHH4hNreHOhgaYNbR3OG7Uxk+Fx8ts/XsD5n7tcfrvhZ+
         CHI7fXaIkhupA64NuvtGU2rpZgusERiQldHICNIEsq08P57FKAle5gdyMDxYXaYk84wn
         tI3YdiicYtEIUTNqb6UOaJbE/XgT3NRc4dMSRyKGmIVuL7U+RVnat6+sw9WyOIiH4Bqr
         v+BbFwGAUoDqb19ng/eFrOTdVq3mpxJVMLrgIWQWpCo5NU1ESHpG8InXCuTFarxPUmQ/
         B4mw==
X-Forwarded-Encrypted: i=1; AJvYcCWa1TGC9DB7bl5pl/3KI8U87YgGFfJbHK4tYZVj+DZicL9AVuln3tzr/kK5Bu2lKkd9ouXHWwIyMtEFLZYFTTIjvlmtQw+ThUnTpA==
X-Gm-Message-State: AOJu0YxZCTYZyWv+4gvSSCtSaiOf6SYOyb1CuAqh9Kp92YCPOQrTqsgY
	lT6JWlhWqI24Lcqoboluw4EubXDEJP36BTZgkwOXAG5Mi0AkRQ0mgVgmGtaxn0Q=
X-Google-Smtp-Source: AGHT+IEmplxPc3Vi44xU69R4gGYRPZ7qZCQlWmYMhZQFifk5gXQ/J5dkbrXhoE9QrXfziLLS0+T4ig==
X-Received: by 2002:a17:903:8c5:b0:1de:e84b:74e1 with SMTP id lk5-20020a17090308c500b001dee84b74e1mr368085plb.29.1711559664452;
        Wed, 27 Mar 2024 10:14:24 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:dd82:60ad:849e:4ab5])
        by smtp.gmail.com with ESMTPSA id jy8-20020a17090342c800b001e0e999cd8bsm4223492plb.137.2024.03.27.10.14.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 10:14:24 -0700 (PDT)
Date: Wed, 27 Mar 2024 11:14:20 -0600
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
Subject: Re: [PATCH v4 4/4] remoteproc: stm32: Add support of an OP-TEE TA to
 load the firmware
Message-ID: <ZgRT7PtzIogAWc50@p14s>
References: <20240308144708.62362-1-arnaud.pouliquen@foss.st.com>
 <20240308144708.62362-5-arnaud.pouliquen@foss.st.com>
 <ZgGrnkcebcIQQic6@p14s>
 <a08add21-b8ff-434a-9689-6af8b05b1965@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a08add21-b8ff-434a-9689-6af8b05b1965@foss.st.com>

On Tue, Mar 26, 2024 at 08:31:33PM +0100, Arnaud POULIQUEN wrote:
> 
> 
> On 3/25/24 17:51, Mathieu Poirier wrote:
> > On Fri, Mar 08, 2024 at 03:47:08PM +0100, Arnaud Pouliquen wrote:
> >> The new TEE remoteproc device is used to manage remote firmware in a
> >> secure, trusted context. The 'st,stm32mp1-m4-tee' compatibility is
> >> introduced to delegate the loading of the firmware to the trusted
> >> execution context. In such cases, the firmware should be signed and
> >> adhere to the image format defined by the TEE.
> >>
> >> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
> >> ---
> >> Updates from V3:
> >> - remove support of the attach use case. Will be addressed in a separate
> >>   thread,
> >> - add st_rproc_tee_ops::parse_fw ops,
> >> - inverse call of devm_rproc_alloc()and tee_rproc_register() to manage cross
> >>   reference between the rproc struct and the tee_rproc struct in tee_rproc.c.
> >> ---
> >>  drivers/remoteproc/stm32_rproc.c | 60 +++++++++++++++++++++++++++++---
> >>  1 file changed, 56 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> >> index 8cd838df4e92..13df33c78aa2 100644
> >> --- a/drivers/remoteproc/stm32_rproc.c
> >> +++ b/drivers/remoteproc/stm32_rproc.c
> >> @@ -20,6 +20,7 @@
> >>  #include <linux/remoteproc.h>
> >>  #include <linux/reset.h>
> >>  #include <linux/slab.h>
> >> +#include <linux/tee_remoteproc.h>
> >>  #include <linux/workqueue.h>
> >>  
> >>  #include "remoteproc_internal.h"
> >> @@ -49,6 +50,9 @@
> >>  #define M4_STATE_STANDBY	4
> >>  #define M4_STATE_CRASH		5
> >>  
> >> +/* Remote processor unique identifier aligned with the Trusted Execution Environment definitions */
> > 
> > Why is this the case?  At least from the kernel side it is possible to call
> > tee_rproc_register() with any kind of value, why is there a need to be any
> > kind of alignment with the TEE?
> 
> 
> The use of the proc_id is to identify a processor in case of multi co-processors.
>

That is well understood.

> For instance we can have a system with A DSP and a modem. We would use the same
> TEE service, but

That too.

> the TEE driver will probably be different, same for the signature key.

What TEE driver are we talking about here?

> In such case the proc ID allows to identify the the processor you want to address.
> 

That too is well understood, but there is no alignment needed with the TEE, i.e
the TEE application is not expecting a value of '0'.  We could set
STM32_MP1_M4_PROC_ID to 0xDEADBEEF and things would work.  This driver won't go
anywhere for as long as it is not the case.

> 
> > 
> >> +#define STM32_MP1_M4_PROC_ID    0
> >> +
> >>  struct stm32_syscon {
> >>  	struct regmap *map;
> >>  	u32 reg;
> >> @@ -257,6 +261,19 @@ static int stm32_rproc_release(struct rproc *rproc)
> >>  	return 0;
> >>  }
> >>  
> >> +static int stm32_rproc_tee_stop(struct rproc *rproc)
> >> +{
> >> +	int err;
> >> +
> >> +	stm32_rproc_request_shutdown(rproc);
> >> +
> >> +	err = tee_rproc_stop(rproc);
> >> +	if (err)
> >> +		return err;
> >> +
> >> +	return stm32_rproc_release(rproc);
> >> +}
> >> +
> >>  static int stm32_rproc_prepare(struct rproc *rproc)
> >>  {
> >>  	struct device *dev = rproc->dev.parent;
> >> @@ -693,8 +710,19 @@ static const struct rproc_ops st_rproc_ops = {
> >>  	.get_boot_addr	= rproc_elf_get_boot_addr,
> >>  };
> >>  
> >> +static const struct rproc_ops st_rproc_tee_ops = {
> >> +	.prepare	= stm32_rproc_prepare,
> >> +	.start		= tee_rproc_start,
> >> +	.stop		= stm32_rproc_tee_stop,
> >> +	.kick		= stm32_rproc_kick,
> >> +	.load		= tee_rproc_load_fw,
> >> +	.parse_fw	= tee_rproc_parse_fw,
> >> +	.find_loaded_rsc_table = tee_rproc_find_loaded_rsc_table,
> >> +};
> >> +
> >>  static const struct of_device_id stm32_rproc_match[] = {
> >> -	{ .compatible = "st,stm32mp1-m4" },
> >> +	{.compatible = "st,stm32mp1-m4",},
> >> +	{.compatible = "st,stm32mp1-m4-tee",},
> >>  	{},
> >>  };
> >>  MODULE_DEVICE_TABLE(of, stm32_rproc_match);
> >> @@ -853,6 +881,7 @@ static int stm32_rproc_probe(struct platform_device *pdev)
> >>  	struct device *dev = &pdev->dev;
> >>  	struct stm32_rproc *ddata;
> >>  	struct device_node *np = dev->of_node;
> >> +	struct tee_rproc *trproc = NULL;
> >>  	struct rproc *rproc;
> >>  	unsigned int state;
> >>  	int ret;
> >> @@ -861,9 +890,26 @@ static int stm32_rproc_probe(struct platform_device *pdev)
> >>  	if (ret)
> >>  		return ret;
> >>  
> >> -	rproc = devm_rproc_alloc(dev, np->name, &st_rproc_ops, NULL, sizeof(*ddata));
> >> -	if (!rproc)
> >> -		return -ENOMEM;
> >> +	if (of_device_is_compatible(np, "st,stm32mp1-m4-tee")) {
> >> +		/*
> >> +		 * Delegate the firmware management to the secure context.
> >> +		 * The firmware loaded has to be signed.
> >> +		 */
> >> +		rproc = devm_rproc_alloc(dev, np->name, &st_rproc_tee_ops, NULL, sizeof(*ddata));
> >> +		if (!rproc)
> >> +			return -ENOMEM;
> >> +
> >> +		trproc = tee_rproc_register(dev, rproc, STM32_MP1_M4_PROC_ID);
> >> +		if (IS_ERR(trproc)) {
> >> +			dev_err_probe(dev, PTR_ERR(trproc),
> >> +				      "signed firmware not supported by TEE\n");
> >> +			return PTR_ERR(trproc);
> >> +		}
> >> +	} else {
> >> +		rproc = devm_rproc_alloc(dev, np->name, &st_rproc_ops, NULL, sizeof(*ddata));
> >> +		if (!rproc)
> >> +			return -ENOMEM;
> >> +	}
> >>  
> >>  	ddata = rproc->priv;
> >>  
> >> @@ -915,6 +961,9 @@ static int stm32_rproc_probe(struct platform_device *pdev)
> >>  		dev_pm_clear_wake_irq(dev);
> >>  		device_init_wakeup(dev, false);
> >>  	}
> >> +	if (trproc)
> > 
> >         if (rproc->tee_interface)
> > 
> > 
> > I am done reviewing this set.
> 
> Thank for your review!
> Arnaud
> 
> > 
> > Thanks,
> > Mathieu
> > 
> >> +		tee_rproc_unregister(trproc);
> >> +
> >>  	return ret;
> >>  }
> >>  
> >> @@ -935,6 +984,9 @@ static void stm32_rproc_remove(struct platform_device *pdev)
> >>  		dev_pm_clear_wake_irq(dev);
> >>  		device_init_wakeup(dev, false);
> >>  	}
> >> +	if (rproc->tee_interface)
> >> +		tee_rproc_unregister(rproc->tee_interface);
> >> +
> >>  }
> >>  
> >>  static int stm32_rproc_suspend(struct device *dev)
> >> -- 
> >> 2.25.1
> >>

