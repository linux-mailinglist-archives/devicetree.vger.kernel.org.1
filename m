Return-Path: <devicetree+bounces-259984-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mEnKEsvYeGmftgEAu9opvQ
	(envelope-from <devicetree+bounces-259984-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:24:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3405C96A2E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:24:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 17B8C30433CF
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:15:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D363035E529;
	Tue, 27 Jan 2026 15:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UaI65I1w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF013360753
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769526693; cv=none; b=kXuHt4b8aaGyuac9tyy6SkrEOuPfzpyWDiC3zzvLmamETKMSDRHlIHKrwPlklkEKpFhtbhv2e5qy2qpi5Ebc0IoQWzVilOsmKCAy2CdwGG+68fiqopYpteKP0lR0VrdblaHy0UqaC7vEtyGtOBBWJuTJR+DOjTTytsZFf+e4Kcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769526693; c=relaxed/simple;
	bh=Blyg8N4zeGue27HmsSmO/bdRk6JHhRMc1NUiP/XT1BI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aPfphMyiXJpHKtBHdbeo93fo1KCf5Meddv22ziHAw699TzF9DTdsltHWc1vZUZ+cX6Gh2/ezX3+cOTVuDuAHpSYYZrDrrLoHWpCyQNFUaKeXHrP0bDX24mG8jFDEP7aSAq97Nz43hrywtvWCf4Lk5wi82J/MN5EiqyOyVtux4ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UaI65I1w; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47edd6111b4so66282145e9.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:11:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769526690; x=1770131490; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZiYOJIssOgLGJ3sqVKfxdywenJ86qmXkRu/RSeqz5RI=;
        b=UaI65I1wJEdhdhHNY5g4yd/swGFeeaVU5zSXxy4UlJZkQhQsSJjxT1ryKyL7NYsVUG
         vzhzUAQHljHgvTBgjeLUp3BUiKXqlHNpWkXyRSU6Qsybs9Cu9pc3mt9Y2OKkkHIIMf0b
         9Vz3akvxXe5oV9u2bbccyc+4E84//bs9PPDQu9uOYzVFKhQVTECEtgHF7qTyQP4/iWXn
         63vLNVd91YXvWryyJcQ5csQn8DJ4ZQe9XaC4SERr+OIl58PC3QkNDRMlATBlaFxjKGIU
         oiXOe4MuJXuOKIbw9+ASmIaHmisJk1UGWDL3dSwzmtni8RaskJd5Ts54h1lotns5b+5V
         n/iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769526690; x=1770131490;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZiYOJIssOgLGJ3sqVKfxdywenJ86qmXkRu/RSeqz5RI=;
        b=M2jKVHoDuGT5y1lJW+3LfGyL9hYz/VqI+bGU4nEUoNl0htZWeZBinE1T4d0LFLk6tv
         pH8ISVSdRJr5teeFXJb42LJGmrlB3GUpXsyq9P3weSnNC6Ihv1czgWxmEyn6/xFiHrkH
         stPD9ud3U/fYWGLdpLE/PLbYCt8appfhFIQCsMvOyFZtrFw4Md220MfNP9ReZRlmqKaV
         rjWprXU1w5ned9WIQoFgxqPIbOXPw+FtJSSB6kJU9nwNY9IkfSvdOHzMhRvvk7p+uuoF
         GBY0jLAlU/hzXTx0qiUkohyBmZTbLIwD/7g9ilwM+ZAOBd0xCJcdpeFe924/AxesQHVj
         5nvA==
X-Forwarded-Encrypted: i=1; AJvYcCWAvxxsXeIG7Lwyu9zyPfKhZhJ2n2ojRIaemBkoA9L+WA6PCMM5r3PUZbm4m/6XVHud1hIkRQ5f2O5a@vger.kernel.org
X-Gm-Message-State: AOJu0YwiTqGSD/febvJXie8V91Bp406Oc+MMKQvyA5GdRhSgeRAArhBv
	B+DPOTQpZ4Kn07yILAEpZwJE7mDaPlPdSCWpd0jxHlg+s7B3Uk5Ao2jj
X-Gm-Gg: AZuq6aJIijqONyBFYP76E/aKqWffOTtgtOGmQ1C0OH8o0MhBLW8PHlrS72OqqiLcXSY
	EFS7DOfsJ19L6oZ3rsa8/HOruIcPMc5IYGM3Hl4uvQUpQMi8whYOnaGcEzYU+e3AUITBZN/5lut
	rLX4dXRg1Euua6+fdpGkHauoMG5QteBglYcHY8grsBYgPfYQDybmG6U8antAb8sSS5vHPdSnNBB
	sQzAzA+BWG0Kk7DULFi7N1eWGahSndGA+sVEdMFGpcIyjfBAe5xZDNoyNEeMF92vvG6UX3a8/JP
	3gPzGfzd0Io4oNjAovBqVE25v+BPbX+E86o3gCDhlTQUztuZZ4yuQH0U39QKhfd41n/OzJAXGZl
	HCl37yo8naHx5tIqtgBL62t8JH0QvY7qkF3Tf0geZNCkrDsE/pvPmF8iMucdthFRjZ+2e3AxSIj
	4BXrlER+pBtfDJLloSuonXytEyFNmx/2jUBWZte9olLVLblJgu52zNmoo=
X-Received: by 2002:a05:600c:8211:b0:480:4c45:aff5 with SMTP id 5b1f17b1804b1-48069c755e6mr25187715e9.34.1769526689995;
        Tue, 27 Jan 2026 07:11:29 -0800 (PST)
Received: from anton.local (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066be7623sm63589915e9.2.2026.01.27.07.11.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:11:29 -0800 (PST)
Date: Tue, 27 Jan 2026 19:11:24 +0400
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
Message-ID: <aXjRx12yPA7QflaF@anton.local>
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
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <88ef974b-9fa8-490e-ba19-1fb31ca94342@sirena.org.uk>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259984-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[anton.local:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3405C96A2E
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 12:49:52PM +0400, Mark Brown wrote:
> On Tue, Jan 20, 2026 at 11:06:07PM +0400, Anton D. Stavinskii wrote:
> 
> >  	help
> >  	  This driver provides an ASoC codec DAI for capture and basic
> >  	  control of the RXADC registers.
> > -
> >  	  Say Y or M to build support for the Sophgo CV1800B
> >  	  internal analog ADC codec block (RXADC).
> >  	  The module will be called cv1800b-sound-adc
> 
> Extra change here.
Will fix, thanks. 
> 
> > +static int cv1800b_dac_hw_params(struct snd_pcm_substream *substream,
> > +				 struct snd_pcm_hw_params *params,
> > +				 struct snd_soc_dai *dai)
> > +{
> > +	struct cv1800b_priv *priv = snd_soc_dai_get_drvdata(dai);
> > +	int ret;
> > +	unsigned int rate = params_rate(params);
> 
> > +	cv1800b_dac_mute(priv, false);
> > +	/* minimal decimation for 48kHz is 64*/
> 
> Nothing ever mutes the DAC so this is a bit redundant.  The mute should
> probably be a mute_stream() operation.

I'm not sure here. DAC mute feature was not implemented because I don't know how
exactly do that. The public documentation is very weak for my taste. 
This call added here to be sure that override flag is
not set (override feature replaces the output by setting it to constant 
value and ignoring the input, so it is some kind of mute from my understanding. 
So ensuring this off is needed be sure that DAC will output our I2S data). 
What do you think will be better to do here? 
I'm sure that is needed, but may be better to move 
it to some early stages, like probe function. 


