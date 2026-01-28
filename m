Return-Path: <devicetree+bounces-260269-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HAZLSvYeWlI0AEAu9opvQ
	(envelope-from <devicetree+bounces-260269-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:34:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEFC9EDA5
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:34:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9E5F3302ACA9
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2639A349B05;
	Wed, 28 Jan 2026 09:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TZRFkI1x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC40346FAB
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 09:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769592685; cv=none; b=IPOGJrmRDbtENElvVMLD9M43CjA62Q+ahW/qwoA9C9yYsNpe6WYyWiBhXoPhvDuJjOIkn/0yr2tTCjV1+b6VSbKBlgQ9XIyJ53UfjXBJ6Re9nizL+c8KKgT7qXR4l4hpuFbXiw9HaW2O6caXIUFZBVO2NEoE64pBMifcDJHnC40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769592685; c=relaxed/simple;
	bh=NAvNu9FzsiaLNC01QuHIJv/9Rsx/bXNEy3ddn+PCg5g=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MI7KL3vGA5X92vluiI3H6go5H/4qb77veQqfBRST+n3Z7Xt/LgM8WT5yf5piolJCpDP51joxrXDCGquHZtvYJX7VvuSkLaqEW+rZvGDbnL1DkDNbYmzbCvcdG8cRm2VzcBUlCyVbjNXFiwZTKbb/I0UbvmbHWPmybTJtzrL4Z1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TZRFkI1x; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-4327555464cso4727405f8f.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 01:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769592682; x=1770197482; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/RNSdF8NF1Qqll1XWLtY1WqSfii+PtXsNh/Cew2FGIM=;
        b=TZRFkI1xWYd/EVLwyr6fVqY5mUI169e/38QWi4hvS2sOYjGMmtpORx4/m5zu/YrKAk
         THm7Hi4WVpMmGP7+tySVxQzGL1kByPxmULqIGK89uN9oA1vmDaivP+xv4mWV3NcsDuZA
         n1gcmK4PI5F06PzYJgaXYErJjgE7n1JqB+C+m0CaCuUow4hhjXbrHhBtun4H9yIciFLf
         GOBOnAhIt4nMjxCNBJboI0RE96sxI214XAUOoy77paDXhjb0pL1CkTWdui59jtJHVUq6
         79ve34AAGG0UaF2gm7TKp6WSeV0UQu81ieH98pgmOZD89et35rWMtM7238G5CV4ie0m3
         Zrqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769592682; x=1770197482;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/RNSdF8NF1Qqll1XWLtY1WqSfii+PtXsNh/Cew2FGIM=;
        b=MJtjdh2+VJXfgJVDZcBLzEsvEcAEezG9QHvoAlLOqFf/rTd0a849Q62dVHwWtPQ6aw
         AeoQdDqtAz9baVPMllnPLZz0UKyC7XvvrKWYLdr3xL6gETFDhbhTkiDngyVKlIs+NhBo
         9QdPS3IxN9UBPITqbMO8wQYL8Pypp/pT3cn0VqXmW+9l5vhNgj1q4ijjIpBCG7jpTtYp
         OCqYqx741qdAmR8EOdQHZI1q/ZtLXMZwxXWcVGL+E5zc3VYBTiQG+oZTIJrx4FgloPon
         Vw4BKTd0x14bJ3Rhr9u4vSNXCr9R+so8aOAudtEKk6KF+FOKWxAvPTWt+ktaa2dPH+eP
         in0A==
X-Forwarded-Encrypted: i=1; AJvYcCV2QMQjaRJgd/6ncvrQ5bSnwivmXPRRYEJHV9zGjNgtBtKNH9Hl87AESW/56YUoSCX2dJShogP3Kf2I@vger.kernel.org
X-Gm-Message-State: AOJu0YxZajIQQNvWqTRQ0QCTRY9ipkmgqOImSbjfeMkYE1P1uQ0EL2E3
	/uS5R5gxhOxj1BqYns9GYP7MUBptXXom7l1btuib27/31DzDvGnxdgQx
X-Gm-Gg: AZuq6aJFJ67HY2w2WgAId6OU9dpPhgbmWjdJIDCFnORmSlXtbZzjDXy4iiw2+d2EZrS
	sPpqJDX3a47QVflCpo/kDrHt5rUwnjwlzflAaTwPehbQVoGENid/q8BF01jewG4RKtvwpALVNLy
	OX6+GPE+9TNT2bhKufhFdh3bytLNIFHSzRpanWr7HFutbvnyylaCAhQWfLFICRmI0WX3wDY7f2j
	JTifimGd1TZFTC58Kd8oZD047zjyLbl2+X6VbHfLSE5YYP60zWU7cwNrnGkLZCCu3uqSmyjwq0e
	+pbstslSUF1RhkPValIN/iHMWqBy6UHQeaWJvdLBXCUrfn/Mhq5EGhlL5BEQbq+lLsqYhRo7ymW
	qg85n3V5AQxqNCm72uK+yiJ/7u+FrqBTDi8HFq7LpfQo7ISvXWYHKMtQoyTxcKPfP4iKtk0ZJVX
	E2tink0XJMpNFQDC5TbFo1LFEELJmlM28x921YTa2bJcyaIWDUGak19r39iBFJm3ZD6f1W2N/5y
	Y7+
X-Received: by 2002:a05:6000:1786:b0:432:5bf9:cf2e with SMTP id ffacd0b85a97d-435dd02de05mr6653558f8f.13.1769592681473;
        Wed, 28 Jan 2026 01:31:21 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e46cesm5570352f8f.7.2026.01.28.01.31.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 01:31:20 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Wed, 28 Jan 2026 09:31:10 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 3/6] iio: amplifiers: ad8366: refactor device resource
 management
Message-ID: <rtu3nsjdufyhtox5uvtkoyzqtfcmq2wdfzmsr3xyvqlrdloirn@a3jdshanc7ha>
References: <20260126-iio-ad8366-update-v2-0-c9a4d31aeb01@analog.com>
 <20260126-iio-ad8366-update-v2-3-c9a4d31aeb01@analog.com>
 <aXkqKZELWdjrB8wN@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXkqKZELWdjrB8wN@smile.fi.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260269-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BBEFC9EDA5
X-Rspamd-Action: no action

On 26/01/27 11:12PM, Andy Shevchenko wrote:
> On Mon, Jan 26, 2026 at 01:51:04PM +0000, Rodrigo Alencar via B4 Relay wrote:
> 
> > Adhere modern device resource management with the following:
> > - Voltage regulator managed and enabled internally;
> > - Proper mutex lifecycle with devm_mutex_init(), replacing mutex_init();
> > - IIO device registration handled with devm_iio_device_register();
> > - removal of goto's from the probe function;
> > - ad8366_remove() removed as it is not needed anymore;
> > 
> > Also, dev_err_probe() is used to report probe errors with created local
> > device pointer.
> 
> And also it uses the temporary dev variable in the cases that are not covered
> by the above.
> 
> So, three changes in one patch...

I can split. Using proper devm functions allowed me to drop goto's and
ad8366_remove(). Dropping the goto's allowed for the usage of
dev_err_probe().

I could place the temporary dev variable in a separate patch. 

> 
> Dunno if Jonathan is okay with this. I would rather split it.
> Code wise LGTM.

Yeah I can now see it coming. Thanks for the review.

-- 
Kind regards,

Rodrigo Alencar

