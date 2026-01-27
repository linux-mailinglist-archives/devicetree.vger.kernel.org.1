Return-Path: <devicetree+bounces-260005-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGQnOeHceGnbtgEAu9opvQ
	(envelope-from <devicetree+bounces-260005-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:42:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD1D96EF6
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:42:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ED30A30C5742
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F0F72FD7B3;
	Tue, 27 Jan 2026 15:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kQIQOE71"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F082EA159
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769527836; cv=none; b=rjOuP5kgNTE4ou7Ga5PwLAQtQqtbHR9cBcJNzQjSefSyFKGWxTZixQDX29GiS9BeNqEABzdKttezfie9vhKr/JznjOqENnMwcnCBbSQT0xpP9S6FtK6tyd/7h2Fs2axlKpeKxR11oKq5P98E2nhbTGR6q/FtCbFDKWCguzaaceM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769527836; c=relaxed/simple;
	bh=FquAxMyEZUnx56clUpEYy39o5UtF6dOtZ+36u7/JQ9E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CU47sIwf65TvK4pDttbadnAYcYhHVk99s3jXdNdggDX9J6ggKdotfKSP8YgqQdou0W3+cpcnOGcgNSTDFznxeAD4s4is5oh2barYGu8kaSOqLok5WC1MT85aXWQ5vS6wNn1W6zU3a16EmCs732rKXEOhFzel/6R2oMpVCUGaDF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kQIQOE71; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47edd9024b1so48819475e9.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:30:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769527833; x=1770132633; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y+BzwDOXsuwsKZRnCwm7TR0RjiDWsT5xOCESlbi3ly0=;
        b=kQIQOE71mNGWcbWuQ9LoRb1g/3Y1ApZzi4AzAEK4qYe3Cqq0wpue47pfFBepFyLTIn
         WZPOlqQXECroAfsxneCBxbR29qyYtgHVMLMLb8LnpkrKTllMg8FZJNtOqMx5AJ6QSD4Q
         4mzh34YGiwsNeUPAh0+3uGrghqzqsXYvWIR3o+/k0IJMsWVCaOG4uWcSGL7HxXlNXZxU
         Vf8KMbB7+QnviAhR0+jg0mpoyOCb44eo7559fzSPMvsi3pVA4Rfaz/wEDyvMcOM94ThO
         vUNUB/uaML3Pto2mNDOLcZQDLpU74Y/flWx1DSiFHm5xD0aVh5vuFqijzzk6A9X3ADHN
         xUiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769527833; x=1770132633;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y+BzwDOXsuwsKZRnCwm7TR0RjiDWsT5xOCESlbi3ly0=;
        b=uI0S6nDzee2V3drXy99q5YYX4HBI0KxcVOLm0dlrzbtQcm6hFm5/lE+qkSWFZW4vZP
         wtnufbINUtmqJpdmyvcPcSOBKJlhji7QcmA+/8nQ5OLK3v5I+Z8+BjUzNOjj2v3YIKQn
         I0vrW03F+tFbqVIrB5nubFHDeqlbzJGKQlY0IULoML8EIMzxqeD5Vz9T0ySbMkkSVLqz
         K2u8otJK8Yis2Y+XJusA+C7MX5V/vvorD59v1yLBpqRLGwoVn0CMigD5s4vaxyZIW0Bi
         vhbVxZ7KYM1q960zadIHA6DiqJoJkJTMoHbjFuIIBjuVNq/0XRiuP7HVjHs9vqmX5zv3
         KuZA==
X-Forwarded-Encrypted: i=1; AJvYcCXhhy5HZqQk6/Ek2DGBsTqDpsdXqAoBonXD0xBQHWc1cx8CS+coFoHIJLIZsCKkp/LGj3WvpDBcv6kY@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2ajjTl9goMeHi4lYLu2zrPP7DVZvT9lRTWPEJ9Vi+kntcK46P
	52F6qt0+3A7EmR5Q7La9JViqhSGT5SlpbsWfvEmEbE4NcYCFvmRNkhe2
X-Gm-Gg: AZuq6aLPwmRt79Zmlxsdd08OjQTYeaVPKKYK6vs03KhZ85Xcy+JO2VGSGWndfBJSLgh
	gkyTwHTfamy+/+Rhqy6jab8rmuSRCkD6XTXXl+4bL9NbumQ/8RE1Vuu063PRDensw6moG4Wo/2+
	dUkTsqtFJ6wRBwZrgRJACMCGFvKDvpaTf9K3ApDZFjr2Qy+IcOUZLdvJvArROd0Rij8Qh7GtEAu
	208LzST7FAauwwilU472a2bkx1xwI2M41K5flVgx3JZFEGjVxdRSGr61OjHDl8hE9AMiFRvupTj
	mPghHzsJYP86Vg53u+siTJQqqCziWed2anpbx3iLernDpLixwx6rTiiGIF4d8cXAwsOyq38XKRD
	MdzkfQXvi7GFI2lF9XfP9PkLSVO3qa9EuMCaC4eSYrZHtmaCTHKbSb10VGcbDByYF9N9ez7nbeF
	WMPqbFvAu9jH7948Z/9DY+qLjCYHfBPlSWTZUrE5JN6UUPironABdSwRU=
X-Received: by 2002:a05:600c:1f88:b0:459:db7b:988e with SMTP id 5b1f17b1804b1-48069c39a00mr29694175e9.13.1769527832532;
        Tue, 27 Jan 2026 07:30:32 -0800 (PST)
Received: from anton.local (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804db63817sm137117845e9.3.2026.01.27.07.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:30:32 -0800 (PST)
Date: Tue, 27 Jan 2026 19:30:27 +0400
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v4 5/6] ASoC: sophgo: add CV1800B internal DAC codec
 driver
Message-ID: <aXjZoFi_fq3tzJFY@anton.local>
Mail-Followup-To: Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20260120-cv1800b-i2s-driver-v4-0-6ef787dc6426@gmail.com>
 <20260120-cv1800b-i2s-driver-v4-5-6ef787dc6426@gmail.com>
 <88ef974b-9fa8-490e-ba19-1fb31ca94342@sirena.org.uk>
 <aXjRx12yPA7QflaF@anton.local>
 <153acfd6-cb4f-48ee-82e0-0a18a4a1e9c7@sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <153acfd6-cb4f-48ee-82e0-0a18a4a1e9c7@sirena.org.uk>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260005-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,outlook.com,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stavinsky@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[anton.local:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,infradead.org:url,infradead.org:email]
X-Rspamd-Queue-Id: 6BD1D96EF6
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 03:13:59PM +0400, Mark Brown wrote:
> On Tue, Jan 27, 2026 at 07:11:24PM +0400, Anton D. Stavinskii wrote:
> > On Tue, Jan 27, 2026 at 12:49:52PM +0400, Mark Brown wrote:
> 
> > > Nothing ever mutes the DAC so this is a bit redundant.  The mute should
> > > probably be a mute_stream() operation.
> 
> > I'm not sure here. DAC mute feature was not implemented because I don't know how
> > exactly do that. The public documentation is very weak for my taste. 
> > This call added here to be sure that override flag is
> > not set (override feature replaces the output by setting it to constant 
> > value and ignoring the input, so it is some kind of mute from my understanding. 
> > So ensuring this off is needed be sure that DAC will output our I2S data). 
> > What do you think will be better to do here? 
> > I'm sure that is needed, but may be better to move 
> > it to some early stages, like probe function. 
> 
> It's probably fine to leave the functional code as is but you should add
> some comments to the mute function explaining waht's going on here.

Sounds good. Will add comments and prepare v5. 
Thanks a lot!


> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv


