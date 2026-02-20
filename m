Return-Path: <devicetree+bounces-266903-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IK4HEUY6mGmFDQMAu9opvQ
	(envelope-from <devicetree+bounces-266903-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:41:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 917B3166E99
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:41:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F18DB3083DFF
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0D0C33E360;
	Fri, 20 Feb 2026 10:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thorsis.com header.i=@thorsis.com header.b="G7g+VOFZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.thorsis.com (mail.thorsis.com [217.92.40.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF843314C4;
	Fri, 20 Feb 2026 10:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.92.40.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771583910; cv=none; b=knAu9lm/YHgeIy99n9fHxVButblEF/0t9n/XCD7JcGvpJ3lI2MR5firlpLnfFaXn9FdStu5rtsyLtjJaXZ/yJB/owSVMwDslPAo4JTBosrO3VAApR1dUMCTc+rw4umVOaBilmimaf2QFgM5yTS/7glmI8WLpo6DdguhoanWq9kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771583910; c=relaxed/simple;
	bh=hKZ/W/TzpC5un+HZt0p3i2V4ZGBdodyIIwxNvlUY3Bs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sbMIqVyLJA596wkUNL4QmS04fTDkneAgrLlxm2WvdUIzO9zU4ihoffVPW9ugYpU/HKkMYCuuvlvXmDqgs/kd7G+tkwp8NxpuANzAqB3vyC3Ahk4sPSlxudoueaapBVo22M9xKX5WGo8DiHeGGuJa/8sogDgWrAeHagf6QwYq3hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=thorsis.com; spf=pass smtp.mailfrom=thorsis.com; dkim=pass (2048-bit key) header.d=thorsis.com header.i=@thorsis.com header.b=G7g+VOFZ; arc=none smtp.client-ip=217.92.40.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=thorsis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thorsis.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 346A2148332C;
	Fri, 20 Feb 2026 11:38:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thorsis.com; s=dkim;
	t=1771583906; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=95n3S7OhyJLgWav5p8ft1mLShRbAAlU1n4biE46GLho=;
	b=G7g+VOFZLjBF2BUmYiAdr1GiXzIa+8CnOYBDQCbrNJ9+Ra0s4qkJZnIZxpsrALLzT7lcTg
	lQRUz8fsYM4LjhrTHhuAR/l4kdAG1sF1vPP4bplE44rNxt4uEwbOLMCNO2oGFqtt0Bkj/B
	K5dSi4MyuZDF7Sk9Nph5L27TGl6+BQAGiTJYokLFdsU6LirFGkNq9XB0f611eEjRX13Rq5
	l91gGrD4UawxLvKnUr+ctIcb9PyhjQuq3yvohY1zv43VrGk9iZBeM4QR8Txo2SsJpUHCVX
	6uRhTrRsL7534DCokwloECZbwjizVGMHwfJBcHn5r4FAQLBzZwlSx7NADxUAcA==
Date: Fri, 20 Feb 2026 11:38:23 +0100
From: Alexander Dahl <ada@thorsis.com>
To: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Cc: Alexander Dahl <ada@thorsis.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Ryan Wanner <ryan.wanner@microchip.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	Srinivas Kandagatla <srini@kernel.org>
Subject: Re: [PATCH v3 14/19] nvmem: microchip-otpc: Expose UID registers as
 2nd nvmem device
Message-ID: <20260220-maximize-glance-a0abd1806c44@thorsis.com>
Mail-Followup-To: Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Ryan Wanner <ryan.wanner@microchip.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	Srinivas Kandagatla <srini@kernel.org>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120154502.1280938-1-ada@thorsis.com>
 <20260120154502.1280938-8-ada@thorsis.com>
 <05128a16-553d-49d5-b09d-2c3e03cb4421@tuxon.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <05128a16-553d-49d5-b09d-2c3e03cb4421@tuxon.dev>
User-Agent: Mutt/2.2.13 (2024-03-09)
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[thorsis.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[thorsis.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266903-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[thorsis.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ada@thorsis.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,thorsis.com:mid,thorsis.com:dkim,thorsis.com:email]
X-Rspamd-Queue-Id: 917B3166E99
X-Rspamd-Action: no action

Hello Claudiu,

thanks for your feedback on this, see my remarks inline below.

Am Sat, Jan 31, 2026 at 06:11:56PM +0200 schrieb Claudiu Beznea:
> 
> 
> On 1/20/26 17:44, Alexander Dahl wrote:
> > For SAM9X60 the Product UID x Register containing the Unique Product ID
> > is part of the OTPC registers.
> 
> SAMA7G5 as well.
> 
> > We have everything at hand here to just
> > create a trivial nvmem device for those.
> 
> Please massage a bit the patch description to match https://www.kernel.org/doc/html/v6.13/process/submitting-patches.html#describe-your-changes
> 
> > 
> > Signed-off-by: Alexander Dahl <ada@thorsis.com>
> > ---
> > 
> > Notes:
> >      v3:
> >      - no changes
> >      v2:
> >      - Use dev_err_probe() for error reporting (thanks Claudiu)
> >      - Move required register definition over here from removed patch
> > 
> >   drivers/nvmem/microchip-otpc.c | 38 +++++++++++++++++++++++++++++++++-
> >   1 file changed, 37 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/nvmem/microchip-otpc.c b/drivers/nvmem/microchip-otpc.c
> > index 34c0d7611f3e4..b35ed13b004bb 100644
> > --- a/drivers/nvmem/microchip-otpc.c
> > +++ b/drivers/nvmem/microchip-otpc.c
> > @@ -25,10 +25,14 @@
> >   #define MCHP_OTPC_HR			(0x20)
> >   #define MCHP_OTPC_HR_SIZE		GENMASK(15, 8)
> >   #define MCHP_OTPC_DR			(0x24)
> > +#define MCHP_OTPC_UID0R			(0x60)
> >   #define MCHP_OTPC_NAME			"mchp-otpc"
> >   #define MCHP_OTPC_SIZE			(11 * 1024)
> > +#define MCHP_OTPC_UID_NAME		"mchp-uid"
> > +#define MCHP_OTPC_UID_SIZE		16
> 
> I think you can drop these as they are used (individually) in a single place.

If you don't mind I would rather keep it here together with already
present similar definitions, instead of sprinkling new literals over
this c file.

> 
> > +
> >   /**
> >    * struct mchp_otpc - OTPC private data structure
> >    * @base: base address
> > @@ -230,6 +234,16 @@ static int mchp_otpc_init_packets_list(struct mchp_otpc *otpc, u32 *size)
> >   	return 0;
> >   }
> > +static int mchp_otpc_uid_read(void *priv, unsigned int offset,
> > +			      void *val, size_t bytes)
> > +{
> > +	struct mchp_otpc *otpc = priv;
> > +
> > +	memcpy_fromio(val, otpc->base + MCHP_OTPC_UID0R + offset, bytes);
> 
> Include <asm-generic/logic_io.h> for this one?

Yes, include what you use, I'd add `#include <linux/io.h>` then, seems
the usual way in drivers/nvmem.

> 
> > +
> > +	return 0;
> > +}
> > +
> >   static struct nvmem_config mchp_nvmem_config = {
> >   	.name = MCHP_OTPC_NAME,
> >   	.type = NVMEM_TYPE_OTP,
> > @@ -239,6 +253,15 @@ static struct nvmem_config mchp_nvmem_config = {
> >   	.reg_read = mchp_otpc_read,
> >   };
> > +static struct nvmem_config mchp_otpc_uid_nvmem_config = {
> > +	.name = MCHP_OTPC_UID_NAME,
> 
> Should the type be filled here?

In general I would say yes, but looking at `enum nvmem_type` none of
them seems to match.  IIRC I more or less copied the approach from
drivers/soc/atmel/sfr.c here.

Greets
Alex

> 
> 
> > +	.read_only = true,
> > +	.word_size = 4,
> > +	.stride = 4,
> > +	.size = MCHP_OTPC_UID_SIZE,
> > +	.reg_read = mchp_otpc_uid_read,
> > +};
> > +
> >   static int mchp_otpc_probe(struct platform_device *pdev)
> >   {
> >   	struct nvmem_device *nvmem;
> > @@ -269,8 +292,21 @@ static int mchp_otpc_probe(struct platform_device *pdev)
> >   	mchp_nvmem_config.size = size;
> >   	mchp_nvmem_config.priv = otpc;
> >   	nvmem = devm_nvmem_register(&pdev->dev, &mchp_nvmem_config);
> > +	if (IS_ERR(nvmem)) {
> > +		return dev_err_probe(&pdev->dev, PTR_ERR(nvmem),
> > +				     "Error registering OTP as nvmem device\n");
> > +	}
> > -	return PTR_ERR_OR_ZERO(nvmem);
> > +	mchp_otpc_uid_nvmem_config.dev = otpc->dev;
> > +	mchp_otpc_uid_nvmem_config.priv = otpc;
> > +
> > +	nvmem = devm_nvmem_register(&pdev->dev, &mchp_otpc_uid_nvmem_config);
> > +	if (IS_ERR(nvmem)) {
> > +		return dev_err_probe(&pdev->dev, PTR_ERR(nvmem),
> > +				     "Error registering UIDxR as nvmem device\n");
> > +	}
> > +
> > +	return 0;
> >   }
> >   static const struct of_device_id __maybe_unused mchp_otpc_ids[] = {
> 

