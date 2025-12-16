Return-Path: <devicetree+bounces-246861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44980CC0FF6
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 06:22:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A9CA6300444E
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 05:22:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D994B335550;
	Tue, 16 Dec 2025 05:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SjFdVCfU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88679334C26
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 05:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765862540; cv=none; b=p8t1+KMsHOCpun/Xxy6Fd5LloUQUq3u3M8qX+RCFxrnk3/MO+Uc+Uec+hlMHUqkzpRDbhZXkzCJCCLAxAq4M8GHReAUwBS5NN8VkorNpbs1fXZuMR6UFEBS4j9T6QMUKvJFDmmRJ8EMkvLL0hIiWI1AuoJvv+sB+Fdq1ytLNKZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765862540; c=relaxed/simple;
	bh=3bfVF7cqEIEY6T2vhjKvm3WS7PN9zCOvWF1W1Amy+0Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f/8WoQUdeLTTslVkESiOI+JhvrH87V4QLUbgFBmcNr1FNKP2h9hxw3p0t4IgcAhl+1PR4t/qrixRcxqfg5o18q9mUMvv5wksIJqzRZzflwmHbGMzpN+rLhyP8fbSeIlbGULzzA16cnWN0xvcHVkHZ/xuN7yWuqfz5UJebM9ID4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SjFdVCfU; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-34ab8e0df53so4455208a91.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 21:22:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765862523; x=1766467323; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g0IdpBtg/JhdmjSRlVsZcTYVx5UhfvoA9V35JLo5kNg=;
        b=SjFdVCfUI8T0Q5YtMK3YKeyYMyWvXLYFJj3VX4yr+EqZY4KYZYjAtTzL44G36M1sld
         FWWKpwNejHYfB7LCqtokPaMwad4hR59OP2wwfGeAZT7qF+Maktpfsc2rBqdQZJoERsH2
         VN9J0X76HsYhjTiyYrxYehmuf+EiBvWX25XQDQ0WG1nvhzGDcSzyKYy47oL3hDUkYirm
         C94y30QjmEtvipO4gYAWVQJ1+w/SdX6/pAyGBvNZ17iuwj2iwy64XOFNVXfqR33KUQp3
         F4vq8jiqRxaGCoM83C2ug/9P/4JVH11WtCqDvk2WJj6ZtH8KtE4C/7n1JemtY5SDAYle
         bYVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765862523; x=1766467323;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g0IdpBtg/JhdmjSRlVsZcTYVx5UhfvoA9V35JLo5kNg=;
        b=r/umrO5anhuKX2Y8PrT0HIircTdCwNN9ZlpLfHNgCxOby/wHEA9TzyYJaSeuLOD2up
         yiZvTXRYhQ/4b3hyeyj8jm8Ksu8QBYZk8Rlx+CrtkDuDR1Aadr+A4G8Nc1sUnQThmnQZ
         UDlRScOfwl+ifzHcotPwoN6bROpzysoSo/9Hd7SsNgQlPNfnv+6NM8qele69uOAwTLT0
         ycJqAB/XyUJLvHfVmWwrr6CnbN+Lmt2gYb1Wo84Q3XM7c/TVD6ataX4BuKgdiQ2Z0/KO
         2R5CLobm94tLxZmxG6J82nDDrNdmE/ln/6215L4VyVuNjfMuzVdPvSfBNLbfS6VS8VKy
         twEQ==
X-Forwarded-Encrypted: i=1; AJvYcCWh8RFevNgXyV/X8UcjF7+7b57ouG/EFYdzbZJVhDhu5S8wVNaxbDE9un+Y4NgqqQdYmfESCTmm6113@vger.kernel.org
X-Gm-Message-State: AOJu0YxNLZxIx600eOZzbgTzlwkVgQ4uBSL0zo7ATaz7IQFgj6rvPlNQ
	/faPy/3fB4O8jSwGECY/rlu9Xi45HTxchMeLolV1MrK7aMfIvP7Ulmp8S0MCcm5+
X-Gm-Gg: AY/fxX4YEgjbqhbcuf5siAiU41Iay9Oel62kIk+BRvg374x/vlmU0pUIowUqXbC5wLE
	c1ZTe6clT3/76y80ZJs5QpB6FrDHEV7FGK6FkCKOVmRi+m0Zy7OlsBiZN3/Q6VIuufyzLo9EV8C
	NYxpIISuOa6mLxz71iTwhuiYZZ7GT1e/k4yUe5DAP6ijHaZMEHdQYo0jFX0cr+GpHUy9lJT+53c
	eRToc+zLvpQJ9ZU8V4tBnGyPk9UAV0IA3sYUgYpORbK/IB46WufeUA6fuZ0DfUWvgd7dKJcF/tD
	BI25dMwFsmTi1FXFdBJxNcmGUW86EiEx4B4GAS0b4P/0i2dz4gvhF2M0veYRBrZ++R3DL/eTGNM
	r0iT2SXJONpOlTlZ6F7Vb+CHzh0RsXUdHpq0FxkMqb1sWZHEKEwGHRpai04jALFah
X-Google-Smtp-Source: AGHT+IH7rgc/KiTJTKPFRn//6KTwpo0aXlM6RPxFGdwYRhguaslwU6dfICFDwUD8TCCvmZpUxPVrDg==
X-Received: by 2002:a17:90b:1fc6:b0:349:7fc6:18 with SMTP id 98e67ed59e1d1-34abd6e0193mr11861601a91.13.1765862522998;
        Mon, 15 Dec 2025 21:22:02 -0800 (PST)
Received: from localhost ([221.192.179.227])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34cd4bd9987sm109226a91.4.2025.12.15.21.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 21:22:02 -0800 (PST)
Date: Tue, 16 Dec 2025 13:21:56 +0800
From: Encrow Thorne <jyc0019@gmail.com>
To: Guodong Xu <guodong@riscstar.com>
Cc: alex@ghiti.fr, andi.shyti@kernel.org, aou@eecs.berkeley.edu,
	conor+dt@kernel.org, devicetree@vger.kernel.org, dlan@gentoo.org,
	krzk+dt@kernel.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	p.zabel@pengutronix.de, palmer@dabbelt.com, pjw@kernel.org,
	robh@kernel.org, spacemit@lists.linux.dev,
	troy.mitchell@linux.spacemit.com, troymitchell988@gmail.com
Subject: Re: [PATCH 2/3] i2c: k1: add reset support
Message-ID: <20251216052156.GB6413@hailin-HP-Pavilion-Laptop-14-dv0xxx>
References: <20251119-i2c-k1_reset-support-v1-2-0e9e82bf9b65@gmail.com>
 <20251211073526.3164875-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211073526.3164875-1-guodong@riscstar.com>

On Thu, Dec 11, 2025 at 03:35:26PM +0800, Guodong Xu wrote:
> On Wed, Nov 19, 2025 at 07:46:44PM +0800, Encrow Thorne wrote:
> > Add reset control handling to the K1 I2C driver.
> >
> > Signed-off-by: Encrow Thorne <jyc0019@gmail.com>
> > ---
> >  drivers/i2c/busses/i2c-k1.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/drivers/i2c/busses/i2c-k1.c b/drivers/i2c/busses/i2c-k1.c
> > index 6b918770e612..64d817d8315d 100644
> > --- a/drivers/i2c/busses/i2c-k1.c
> > +++ b/drivers/i2c/busses/i2c-k1.c
> > @@ -10,6 +10,7 @@
> >   #include <linux/module.h>
> >   #include <linux/of_address.h>
> >   #include <linux/platform_device.h>
> > + #include <linux/reset.h>
> >
> >  /* spacemit i2c registers */
> >  #define SPACEMIT_ICR		 0x0		/* Control register */
> > @@ -113,6 +114,7 @@ struct spacemit_i2c_dev {
> >  	void __iomem *base;
> >  	int irq;
> >  	u32 clock_freq;
> > +	struct reset_control *resets;
> 
> Thanks for the patch! A few suggestions to simplify this:
> 
> The reset_control structure doesn't need to be stored in the device
> struct since the devm API automatically manages the resource lifecycle.
> 
> >
> >  	struct i2c_msg *msgs;
> >  	u32 msg_num;
> > @@ -571,6 +573,15 @@ static int spacemit_i2c_probe(struct platform_device *pdev)
> 
> Please use a local variable in the probe function instead:
> 
>        struct reset_control *rst;
> 
> >  	if (IS_ERR(clk))
> >  		return dev_err_probe(dev, PTR_ERR(clk), "failed to enable bus clock");
> >
> > +	i2c->resets = devm_reset_control_get_optional(dev, NULL);
>
  
> There is a new API, I would suggest this:
>        rst = devm_reset_control_get_optional_exclusive_deasserted(dev, NULL);
> 
> 
> > +	if (IS_ERR(i2c->resets))
> > +		return dev_err_probe(dev, PTR_ERR(i2c->resets),
> > +				    "failed to get reset\n");
> > +
> > +	reset_control_assert(i2c->resets);
> > +	udelay(2);
> > +	reset_control_deassert(i2c->resets);
> > +
> 
> Why you need to call assert() then deassert()?
> Wouldn't the single API fit?
> 
 Good point.
 
 Thank you for your suggestions, I will fix them in v2.

 				- Encrow
> Best regards,
> Guodong
> 
> >  	spacemit_i2c_reset(i2c);
> >
> >  	i2c_set_adapdata(&i2c->adapt, i2c);
> >

