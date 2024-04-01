Return-Path: <devicetree+bounces-55122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6762893D0C
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 17:46:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 062EE1C219E0
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 15:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E9D74778B;
	Mon,  1 Apr 2024 15:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s7Fj9eHl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE27C4776F
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 15:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711986400; cv=none; b=fVy4Gt8nGVxQm+Xy07Mvl3VBGj1k3WwV4Z4Nvp9CHRseba5aMSz2NINEzcBHEsvbBNcd8sWm8lB87XeRFLINh+F8e8kEDnK0hpzEAvHFg0EARI1+WNkYehn4ZMaxu5u/UW2Ey+moq9RxvY/PACEa/V5RV8P//xg0LvoFeNUga0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711986400; c=relaxed/simple;
	bh=3Jf2jJY/3pz2Pkuu5KzxdnmKJHhcg/bTnBADcyc7ij0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kJIdo6O2mNhCXpxbjdR3BseZQteTCXT6bohtHB9MxPwCCKSQMKPlxTK7rbsA23V2LOMVLQfLHNqLnlx9IwDrchnvcB0ONKmgaocdvT0kJHJJpxQG88KwCEn3u6kaC/f9mR/MC1yQ661gzByTqadfwjMHGPCGZkyJbT0j2dROpls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s7Fj9eHl; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-5dbf7b74402so2059393a12.0
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 08:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711986397; x=1712591197; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tWWRyK5tdfdVBLwP7xJLWPNoP24uv5LR7F3wgBZy5NM=;
        b=s7Fj9eHlaaGBxlF+VraVgQNrVNWi6DzNmPFbIXcoR1enR5qjJGw4r4pSkwtIZxCmKP
         4crsQ37PHcZSo9Zy/uiE27BDE+Hjm72qqCFnw5GBHnRVXerOQnPFVbJqWjAdS6uEQ+Hr
         00yyH5wxNI9RPBl0DsH6ifz2mym9pkcNgvwdzjB9TqePcWQpU8JpxORFZBtbjRRgWJCc
         XgVVBP8Y1ilzgpbf48u7lh9hEsnaehMc63T+V1ip2596p8FXq5y4eVeZYHGQy5NTb+f/
         G1z9vuvs0I41abcz/rG8YQgtXV9CnMX2kAMKKwTaAIrVYYiHlp4SN+LAKmpzPSPitsSv
         T0KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711986397; x=1712591197;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tWWRyK5tdfdVBLwP7xJLWPNoP24uv5LR7F3wgBZy5NM=;
        b=eK6n8ZDvh5kCABgZ6LTeYHrJi4jWqA97ORRy5iIo08GjHVJUXiTEqexIkYbNQe/ePo
         +TBB9LaFoctEW7U5wUyb2hN/52d+hTIUVLxpA1GVG+zwD2KzNFcSXc9uW+3VWoR0JwUE
         NZfOy9GqKKqMzzvJ5ZCoMZ8wmHNI1Eg2qMe5v3JKw6GFRAQE9U77uTE0BG5B6ZK4GRGb
         O4PielvqJyPSzn5FSeeDBHM394kvz6rteXJl6oWMybeK8DQPn76VIqkYu+wEV08nXOZv
         S+cIZvLv74etvbEojQf93guSa8OXHYyXNWptm1doMGUwxq879Q9uOc2BaVywUcGF6iPO
         12HA==
X-Forwarded-Encrypted: i=1; AJvYcCWupoW+S7IHMUIrjyx9Ip6ep7NN30Q83jOp9dQdlqhX9vYZ5vAG3Pu1w27F084V0aemDmgG2jX0XjiLCdKpcCaGUPDI9PokZ9CEag==
X-Gm-Message-State: AOJu0YxHuFPTPSMZbzo1O5zfbVEIEuDIk7dLhcZR9Ghc8YJVAAV/oQHX
	r6c2etB3mBVDq+Kk8v/+WjVah3NG371aaQ5wFhskh5zUzJaFJ+3uxxltiiggAiU=
X-Google-Smtp-Source: AGHT+IGWzqfdQG8QU+iZ2Gll0nvewCIExy0+sTscNhq0mJMvkBLBHBxl3TB+FIZyie/YQqZOZslCNA==
X-Received: by 2002:a17:903:2284:b0:1dd:c953:cfa0 with SMTP id b4-20020a170903228400b001ddc953cfa0mr11118225plh.48.1711986396521;
        Mon, 01 Apr 2024 08:46:36 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:8aef:41d9:be1:3de4])
        by smtp.gmail.com with ESMTPSA id q11-20020a170902e30b00b001e25e0cb271sm1073263plc.224.2024.04.01.08.46.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Apr 2024 08:46:36 -0700 (PDT)
Date: Mon, 1 Apr 2024 09:46:33 -0600
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
Message-ID: <ZgrW2avODv29vWNP@p14s>
References: <20240308144708.62362-1-arnaud.pouliquen@foss.st.com>
 <20240308144708.62362-5-arnaud.pouliquen@foss.st.com>
 <ZgGrnkcebcIQQic6@p14s>
 <a08add21-b8ff-434a-9689-6af8b05b1965@foss.st.com>
 <ZgRT7PtzIogAWc50@p14s>
 <2cd23e93-1a3a-4128-b947-35fe2b04ccab@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2cd23e93-1a3a-4128-b947-35fe2b04ccab@foss.st.com>

On Fri, Mar 29, 2024 at 11:57:43AM +0100, Arnaud POULIQUEN wrote:
> 
> 
> On 3/27/24 18:14, Mathieu Poirier wrote:
> > On Tue, Mar 26, 2024 at 08:31:33PM +0100, Arnaud POULIQUEN wrote:
> >>
> >>
> >> On 3/25/24 17:51, Mathieu Poirier wrote:
> >>> On Fri, Mar 08, 2024 at 03:47:08PM +0100, Arnaud Pouliquen wrote:
> >>>> The new TEE remoteproc device is used to manage remote firmware in a
> >>>> secure, trusted context. The 'st,stm32mp1-m4-tee' compatibility is
> >>>> introduced to delegate the loading of the firmware to the trusted
> >>>> execution context. In such cases, the firmware should be signed and
> >>>> adhere to the image format defined by the TEE.
> >>>>
> >>>> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
> >>>> ---
> >>>> Updates from V3:
> >>>> - remove support of the attach use case. Will be addressed in a separate
> >>>>   thread,
> >>>> - add st_rproc_tee_ops::parse_fw ops,
> >>>> - inverse call of devm_rproc_alloc()and tee_rproc_register() to manage cross
> >>>>   reference between the rproc struct and the tee_rproc struct in tee_rproc.c.
> >>>> ---
> >>>>  drivers/remoteproc/stm32_rproc.c | 60 +++++++++++++++++++++++++++++---
> >>>>  1 file changed, 56 insertions(+), 4 deletions(-)
> >>>>
> >>>> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> >>>> index 8cd838df4e92..13df33c78aa2 100644
> >>>> --- a/drivers/remoteproc/stm32_rproc.c
> >>>> +++ b/drivers/remoteproc/stm32_rproc.c
> >>>> @@ -20,6 +20,7 @@
> >>>>  #include <linux/remoteproc.h>
> >>>>  #include <linux/reset.h>
> >>>>  #include <linux/slab.h>
> >>>> +#include <linux/tee_remoteproc.h>
> >>>>  #include <linux/workqueue.h>
> >>>>  
> >>>>  #include "remoteproc_internal.h"
> >>>> @@ -49,6 +50,9 @@
> >>>>  #define M4_STATE_STANDBY	4
> >>>>  #define M4_STATE_CRASH		5
> >>>>  
> >>>> +/* Remote processor unique identifier aligned with the Trusted Execution Environment definitions */
> >>>
> >>> Why is this the case?  At least from the kernel side it is possible to call
> >>> tee_rproc_register() with any kind of value, why is there a need to be any
> >>> kind of alignment with the TEE?
> >>
> >>
> >> The use of the proc_id is to identify a processor in case of multi co-processors.
> >>
> > 
> > That is well understood.
> > 
> >> For instance we can have a system with A DSP and a modem. We would use the same
> >> TEE service, but
> > 
> > That too.
> > 
> >> the TEE driver will probably be different, same for the signature key.
> > 
> > What TEE driver are we talking about here?
> 
> In OP-TEE remoteproc frameork is divided in 2 or  3 layers:
> 
> - the remoteproc Trusted Application (TA) [1] which is platform agnostic
> - The remoteproc Pseudo Trusted Application (PTA) [2] which is platform
> dependent and can rely on the proc ID to retrieve the context.
> - the remoteproc driver (optional for some platforms) [3], which is in charge
>  of DT parsing and platform configuration.
> 

That part makes sense.

> Here TEE driver can be interpreted by remote PTA and/or platform driver.
>

I have to guess PTA means "Platform Trusted Application" but I have no
guarantee, adding to the level of (already high) confusion brought on by this
patchset.

> [1]
> https://elixir.bootlin.com/op-tee/latest/source/ta/remoteproc/src/remoteproc_core.c
> [2]
> https://elixir.bootlin.com/op-tee/latest/source/core/pta/stm32mp/remoteproc_pta.c
> [3]
> https://elixir.bootlin.com/op-tee/latest/source/core/drivers/remoteproc/stm32_remoteproc.c
> 
> > 
> >> In such case the proc ID allows to identify the the processor you want to address.
> >>
> > 
> > That too is well understood, but there is no alignment needed with the TEE, i.e
> > the TEE application is not expecting a value of '0'.  We could set
> > STM32_MP1_M4_PROC_ID to 0xDEADBEEF and things would work.  This driver won't go
> > anywhere for as long as it is not the case.
> 
> 
> Here I suppose that you do not challenge the rproc_ID use in general, but for
> the stm32mp1 platform as we have only one remote processor. I'm right?

That is correct - I understand the need for an rproc_ID.  The problem is with
the comment that states that '0' is aligned with the TEE definitions, which in
my head means hard coded value and a big red flag.  What it should say is
"aligned with the TEE device tree definition". 

> 
> In OP-TEE the check is done here:
> https://elixir.bootlin.com/op-tee/latest/source/core/drivers/remoteproc/stm32_remoteproc.c#L64
> 
> If driver does not register the proc ID an error is returned indicating that the
> feature is not supported.
> 
> In case of stm32mp1 yes we could consider it as useless as we have only one
> remote proc.
> 
> Nevertheless I can not guaranty that a customer will not add an external
> companion processor that uses OP-TEE to authenticate the associated firmware. As
> the trusted Application is the unique entry point. he will need the proc_id to
> identify the target at PTA level.
> 
> So from my point of view having a proc ID on stm32MP1 (and on stm32mp2 that will
> reuse same driver) aligned between Linux and OP-TEE is useful.

I agree, for as long as it is not hard coded.  The way remote processors are
discovered in the DT is perfectly acceptable, i.e the first remote processor is
for application X, the second for application Y...

> 
> That said using a TEE_REMOTEPROC_DEFAULT_ID is something that could be
> more generic (for linux and OP-TEE). This ID could be reuse in the stm32mp
> driver and platform drivers with an unique internal remote processor.
> 

I can't find the definition of TEE_REMOTEPROC_DEFAULT_ID anywhere, something
that doesn't help the confusion I referred to above.

> It that solution would be ok for you?
> 
> Regards,
> Arnaud
> 
> 
> > 
> >>
> >>>
> >>>> +#define STM32_MP1_M4_PROC_ID    0
> >>>> +
> >>>>  struct stm32_syscon {
> >>>>  	struct regmap *map;
> >>>>  	u32 reg;
> >>>> @@ -257,6 +261,19 @@ static int stm32_rproc_release(struct rproc *rproc)
> >>>>  	return 0;
> >>>>  }
> >>>>  
> >>>> +static int stm32_rproc_tee_stop(struct rproc *rproc)
> >>>> +{
> >>>> +	int err;
> >>>> +
> >>>> +	stm32_rproc_request_shutdown(rproc);
> >>>> +
> >>>> +	err = tee_rproc_stop(rproc);
> >>>> +	if (err)
> >>>> +		return err;
> >>>> +
> >>>> +	return stm32_rproc_release(rproc);
> >>>> +}
> >>>> +
> >>>>  static int stm32_rproc_prepare(struct rproc *rproc)
> >>>>  {
> >>>>  	struct device *dev = rproc->dev.parent;
> >>>> @@ -693,8 +710,19 @@ static const struct rproc_ops st_rproc_ops = {
> >>>>  	.get_boot_addr	= rproc_elf_get_boot_addr,
> >>>>  };
> >>>>  
> >>>> +static const struct rproc_ops st_rproc_tee_ops = {
> >>>> +	.prepare	= stm32_rproc_prepare,
> >>>> +	.start		= tee_rproc_start,
> >>>> +	.stop		= stm32_rproc_tee_stop,
> >>>> +	.kick		= stm32_rproc_kick,
> >>>> +	.load		= tee_rproc_load_fw,
> >>>> +	.parse_fw	= tee_rproc_parse_fw,
> >>>> +	.find_loaded_rsc_table = tee_rproc_find_loaded_rsc_table,
> >>>> +};
> >>>> +
> >>>>  static const struct of_device_id stm32_rproc_match[] = {
> >>>> -	{ .compatible = "st,stm32mp1-m4" },
> >>>> +	{.compatible = "st,stm32mp1-m4",},
> >>>> +	{.compatible = "st,stm32mp1-m4-tee",},
> >>>>  	{},
> >>>>  };
> >>>>  MODULE_DEVICE_TABLE(of, stm32_rproc_match);
> >>>> @@ -853,6 +881,7 @@ static int stm32_rproc_probe(struct platform_device *pdev)
> >>>>  	struct device *dev = &pdev->dev;
> >>>>  	struct stm32_rproc *ddata;
> >>>>  	struct device_node *np = dev->of_node;
> >>>> +	struct tee_rproc *trproc = NULL;
> >>>>  	struct rproc *rproc;
> >>>>  	unsigned int state;
> >>>>  	int ret;
> >>>> @@ -861,9 +890,26 @@ static int stm32_rproc_probe(struct platform_device *pdev)
> >>>>  	if (ret)
> >>>>  		return ret;
> >>>>  
> >>>> -	rproc = devm_rproc_alloc(dev, np->name, &st_rproc_ops, NULL, sizeof(*ddata));
> >>>> -	if (!rproc)
> >>>> -		return -ENOMEM;
> >>>> +	if (of_device_is_compatible(np, "st,stm32mp1-m4-tee")) {
> >>>> +		/*
> >>>> +		 * Delegate the firmware management to the secure context.
> >>>> +		 * The firmware loaded has to be signed.
> >>>> +		 */
> >>>> +		rproc = devm_rproc_alloc(dev, np->name, &st_rproc_tee_ops, NULL, sizeof(*ddata));
> >>>> +		if (!rproc)
> >>>> +			return -ENOMEM;
> >>>> +
> >>>> +		trproc = tee_rproc_register(dev, rproc, STM32_MP1_M4_PROC_ID);
> >>>> +		if (IS_ERR(trproc)) {
> >>>> +			dev_err_probe(dev, PTR_ERR(trproc),
> >>>> +				      "signed firmware not supported by TEE\n");
> >>>> +			return PTR_ERR(trproc);
> >>>> +		}
> >>>> +	} else {
> >>>> +		rproc = devm_rproc_alloc(dev, np->name, &st_rproc_ops, NULL, sizeof(*ddata));
> >>>> +		if (!rproc)
> >>>> +			return -ENOMEM;
> >>>> +	}
> >>>>  
> >>>>  	ddata = rproc->priv;
> >>>>  
> >>>> @@ -915,6 +961,9 @@ static int stm32_rproc_probe(struct platform_device *pdev)
> >>>>  		dev_pm_clear_wake_irq(dev);
> >>>>  		device_init_wakeup(dev, false);
> >>>>  	}
> >>>> +	if (trproc)
> >>>
> >>>         if (rproc->tee_interface)
> >>>
> >>>
> >>> I am done reviewing this set.
> >>
> >> Thank for your review!
> >> Arnaud
> >>
> >>>
> >>> Thanks,
> >>> Mathieu
> >>>
> >>>> +		tee_rproc_unregister(trproc);
> >>>> +
> >>>>  	return ret;
> >>>>  }
> >>>>  
> >>>> @@ -935,6 +984,9 @@ static void stm32_rproc_remove(struct platform_device *pdev)
> >>>>  		dev_pm_clear_wake_irq(dev);
> >>>>  		device_init_wakeup(dev, false);
> >>>>  	}
> >>>> +	if (rproc->tee_interface)
> >>>> +		tee_rproc_unregister(rproc->tee_interface);
> >>>> +
> >>>>  }
> >>>>  
> >>>>  static int stm32_rproc_suspend(struct device *dev)
> >>>> -- 
> >>>> 2.25.1
> >>>>

