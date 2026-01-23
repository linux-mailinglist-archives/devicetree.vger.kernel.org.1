Return-Path: <devicetree+bounces-258797-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMajN3E0c2lItAAAu9opvQ
	(envelope-from <devicetree+bounces-258797-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:42:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B58272A42
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:42:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AFFD63008D30
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69632320CB8;
	Fri, 23 Jan 2026 08:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZgtZ5Qt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451EB221540;
	Fri, 23 Jan 2026 08:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769157739; cv=none; b=phfj/JRu1QEYvp+7l/LQaVV05rB9VzgerV3YEVOjA2ooGsuMIDecZ54wtFwfKkLlr8cdI7OylSXS5s+B/m3BMOEcJGz8th8U7tqLKtGwj/Rm9dwfsmrDMj6ehAstLx/XH4JMfhi9yQKnVkctYCFT2fmehjeXCRBigHcrLYtpsYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769157739; c=relaxed/simple;
	bh=ZF4MCBQc/YdUin5yMuUG+YhDaer9ICDy74uaTRS/vAA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hRJkMSc6/UFM4rxo5WpM4aQ/MabMwg3Jnwu8998BC1MaAMln0oi4jRpDENen3cOGRbtGcOlosLw2ZzNNAJptOwr1g173A4Gv41zM8A2oMkvgpMKaf4wJyehX4nsBQm23FqK/tVZ3HybtuV5NmfjL26x4fAAIKnKcKh7d2vtAGCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZgtZ5Qt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E43E0C4CEF1;
	Fri, 23 Jan 2026 08:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769157738;
	bh=ZF4MCBQc/YdUin5yMuUG+YhDaer9ICDy74uaTRS/vAA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=SZgtZ5QtowHSEfYwykFxM86TiiZMdg6mL9JTdg3mrKypzorFu2REsUccZ3ckPVaYN
	 45mgKxG7LIhUvaERFiPNpRMYWlJuZ+mK27oYQXD+bBVzagozYyf56LIbUIuWeJI0wI
	 JpJt6H73Sb+S5XlEL23jmW+kqhi20FkaHg+9S3BqYUhzrRBr/ejT95/4oKFU4RDK18
	 FlPP4vqoSE2BYB/ey7kBZC/HkNXnUYNRIwbBykjFai3Q/pLfPkoPKnyFrxTztCfrP7
	 l9fP2poXVliTScjQm3ovuJu55OT+msW4lSrBqMfcFu6F+FBL+jJDQsM8HGux8nw1lH
	 x6ZO+2mw6IYzw==
Date: Fri, 23 Jan 2026 08:42:10 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, Michael Hennerich
 <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, David
 Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 7/7] iio: amplifiers: ad8366: add device tree support
Message-ID: <20260123084210.7ef1684c@jic23-huawei>
In-Reply-To: <1ae2f7de-f1f9-4f45-b38f-b68089fc017c@kernel.org>
References: <20260119-iio-ad8366-update-v1-0-8044e23e964a@analog.com>
	<20260119-iio-ad8366-update-v1-7-8044e23e964a@analog.com>
	<1ae2f7de-f1f9-4f45-b38f-b68089fc017c@kernel.org>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258797-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1B58272A42
X-Rspamd-Action: no action

On Mon, 19 Jan 2026 15:47:46 +0100
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 19/01/2026 15:37, Rodrigo Alencar via B4 Relay wrote:
> > +	st->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
> > +	if (IS_ERR(st->reset_gpio))
> > +		return dev_err_probe(dev, PTR_ERR(st->reset_gpio),
> > +				     "Failed to get reset GPIO\n");
> >  
> > -		st->enable_gpio = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_HIGH);
> > -		if (IS_ERR(st->enable_gpio))
> > -			return dev_err_probe(dev, PTR_ERR(st->enable_gpio),
> > -					     "Failed to get enable GPIO\n");
> > +	st->enable_gpio = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_HIGH);  
> 
> No, you are changing the same line *third* time. you need to organize
> your patchset in logical way but also in a readable. You do not add
> incorrect code just to change it later.
> 
> I do not see the reason behind removal of switch case. It's really
> independent change of OF support which must come with its own
> justification of affecting other platforms.

FWIW, I was about to write the same about this set needing a thorough
reorganize. From a quick look at this last patch I'm probably fine
with everything it contains, but it's 3+ patches rolled into one
and I'd also like the big array of chip_info broken up and the enum
gone as mentioned in earlier patch.

Thanks,

Jonathan


> 
> 
> > +	if (IS_ERR(st->enable_gpio))
> > +		return dev_err_probe(dev, PTR_ERR(st->enable_gpio),
> > +				     "Failed to get enable GPIO\n");
> >  
> > -		indio_dev->channels = ada4961_channels;
> > -		indio_dev->num_channels = ARRAY_SIZE(ada4961_channels);
> > -		break;
> > -	default:
> > -		return dev_err_probe(dev, -EINVAL, "Invalid device ID\n");
> > -	}
> > -
> > -	st->info = &ad8366_infos[st->type];
> >  	indio_dev->name = spi_get_device_id(spi)->name;
> >  	indio_dev->info = &ad8366_info;
> > +	indio_dev->channels = ad8366_channels;
> > +	indio_dev->num_channels = st->info->num_channels;
> >  	indio_dev->modes = INDIO_DIRECT_MODE;
> >  
> > -	ret = ad8366_write(indio_dev, 0, 0);
> > +	ret = ad8366_write_code(st);
> >  	if (ret < 0)
> >  		return dev_err_probe(dev, ret, "failed to write initial gain\n");
> >  
> > @@ -384,24 +322,41 @@ static int ad8366_probe(struct spi_device *spi)
> >  }  
> 
> 
> Best regards,
> Krzysztof
> 


