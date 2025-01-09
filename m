Return-Path: <devicetree+bounces-136907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 07508A06D0C
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 05:31:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8CAB41889C13
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 04:31:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5048620B20E;
	Thu,  9 Jan 2025 04:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="arIkq6Q7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD0920ADEF
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 04:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736397051; cv=none; b=dtyf5LmSEFtzaJqdwiGxqXRRVXsly2lFejqY9WDmIFXVKMEaaCq5qAKhC4biP08Z5IWYlhoPlGFiayA/hTDqEKIPDen3ilk3jJBXTDhODY+Qs+Lo4kZmcqcgCLsvN6sP+aTZNYidVVk+jZt+YuoFLu5QyQzLg3qrwHOKvqtsC74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736397051; c=relaxed/simple;
	bh=CjYGWC6pFZDIgl1PfQJLuOA8BUchnTEqOb54FQCWCX8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=anP1kRqh3zaBSrGLAFwJtzu9DFWihP8rcnzEN68uRGpxXMluXTBP0W5MmFN/hN63z7iyKvL/ZTlCcM4iB5gY2Kk3xEMQIZ1qXOmNr72eSVZyVQDJzf7pl2NAFBeSlD1DYkyUMjbPlJpcGoPRc12Ns68t/d1zxZIWOomlOIh5Rco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=arIkq6Q7; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2ffd6af012eso4934961fa.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 20:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736397046; x=1737001846; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=U6ZRjLdBCnvLSbysb/UpNAvZFmTM2Tj8k+ivRI6MKJs=;
        b=arIkq6Q7D5v7Ia0cgCWHLuLcFX8s/JTC3bT4i+Y1fubCKOXovNcandIEibMxNpZBB9
         tMPpytI7t5CwzsMR2yv4pjSVoLGXdg0TOxwHhd8HpB80m2GEZfCW3X0cfn21aD1F3E8h
         MCQu8N97sUMI5Jujr4SL3YjtB6tm1CDs3BBPFOQZiESDtPoLALH41oaq9WFA/ypoyc8o
         xfT2b2p+fcyqrW+laA8CAKG81RU1+3oC0rvTF6OJdyolhdwmqle2yriNbTqZN2eq5j8x
         smLY28XReX1KoU9bI/i3vYxR4nVL6r+6UKE7fwNaWuveKda93ZKcPbaPJaCSSl+3baEd
         6HNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736397046; x=1737001846;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U6ZRjLdBCnvLSbysb/UpNAvZFmTM2Tj8k+ivRI6MKJs=;
        b=PQfGscty4mGEDueswFoI4Bjxwuqj8BnecGtinWEl1ms6KGSeJ2MkJ8PHpIwVER4/a8
         vhZLRwC+sgZFg6g08n2b6NOUkOU6PArNDKedCE6KT089svdTErkIu2WcuR2gR/WvfCWs
         7grsd1meZ1Vqe5vB1MmwQIzDRDzYCWblTq0kDrgG3Cn9Tvwjop88lfCUXVoAl5FePPly
         yc1m10cSEJHYTiijoQqShuiIhaUoO0kHCNn415i0NsZ7/V+KFT9mZfAYsSyYZ0KmPbXd
         pMRVtJ3wVi7gpPTOJBj2F4tRY9MToYxB/L8tHR7Vi8JtKgSUKRbAPUAlKCGhmK/hL6RS
         c5mw==
X-Forwarded-Encrypted: i=1; AJvYcCXJ9Wa5PdNvJpEHP/+GFuw+OYUzBtG+GkliUf3iTCXRUvr88aSEbWqW2B97sRAPTXzlqhuGwOJAz03R@vger.kernel.org
X-Gm-Message-State: AOJu0YzBx08odMDCbk/CA/G2SAZLItIpi03ca9ptAmnfb51ET38Wgihc
	5h0eoNznyVQbjk4A3xWZ1AnLudstk/zP9uAn01SjXzzpYqUa1GKMpuTQMlR1AG0=
X-Gm-Gg: ASbGncuzFcm6mpgGsiWFigUv1mp9NYr6fSryBJKfAKi1BFx6/jl0WUjfuwIZk4WDJnY
	s2mDqP6hBzzy/QX7MslyvZMa3kVOvN4wKU1zg3ruvwdOv7+RmlvDgE3NK/74TNahK+Vo9xIOtUC
	Lj+kv+KMWdi3R5TLgi8UsPTw4dlFQf0QeFxyWQTayE/Y9Bb8gFyXgnKjQJErV4O0T+7D6YTVarY
	+N2bkX6ajzCljn+2Ra4W9DiORg6W0q5N2BRmM/X6OAuucxGjkiwo1tRpOdsUH+M8Siv1lsDA/pd
	/q8sCHcPAHAvNLUjms0mSB+4ovXTU9W9l2FO
X-Google-Smtp-Source: AGHT+IGI95Xeh5elkDW79+sdKoMteOGmXNkLWQ3nBT794ETJS5RK6r49ksLB+H1XZatU4+ltRbTI+Q==
X-Received: by 2002:a05:651c:221e:b0:300:15d9:c625 with SMTP id 38308e7fff4ca-305f4587489mr13890791fa.14.1736397046212;
        Wed, 08 Jan 2025 20:30:46 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bec20absm73810e87.210.2025.01.08.20.30.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 20:30:44 -0800 (PST)
Date: Thu, 9 Jan 2025 06:30:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 1/5] nvmem: core: fix bit offsets of more than one byte
Message-ID: <wkcs7v76a52fiqc6znwr77kvzvz3hu2nwq4ijvek7cowurrb4l@cdgrohoefg4e>
References: <20250104-sar2130p-nvmem-v3-0-a94e0b7de2fa@linaro.org>
 <20250104-sar2130p-nvmem-v3-1-a94e0b7de2fa@linaro.org>
 <ae7f2d05-df0a-42e5-9e2e-586c35e5754d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ae7f2d05-df0a-42e5-9e2e-586c35e5754d@quicinc.com>

On Thu, Jan 09, 2025 at 03:17:08AM +0530, Akhil P Oommen wrote:
> On 1/4/2025 11:49 AM, Dmitry Baryshkov wrote:
> > If the NVMEM specifies a stride to access data, reading particular cell
> > might require bit offset that is bigger than one byte. Rework NVMEM core
> > code to support bit offsets of more than 8 bits.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  drivers/nvmem/core.c | 24 +++++++++++++++++-------
> >  1 file changed, 17 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> > index d6494dfc20a7324bde6415776dcabbb0bfdd334b..c0af43a37195c3869507a203b370615309aeee67 100644
> > --- a/drivers/nvmem/core.c
> > +++ b/drivers/nvmem/core.c
> > @@ -834,7 +834,9 @@ static int nvmem_add_cells_from_dt(struct nvmem_device *nvmem, struct device_nod
> >  		if (addr && len == (2 * sizeof(u32))) {
> >  			info.bit_offset = be32_to_cpup(addr++);
> >  			info.nbits = be32_to_cpup(addr);
> > -			if (info.bit_offset >= BITS_PER_BYTE || info.nbits < 1) {
> > +			if (info.bit_offset >= BITS_PER_BYTE * info.bytes ||
> > +			    info.nbits < 1 ||
> > +			    info.bit_offset + info.nbits >= BITS_PER_BYTE * info.bytes) {
> 
> Should it be ">" check instead of ">=" check here?
> For eg: bit_offset = 7, nbits = 1 and info.bytes = 1 is valid, isn't it?

Indeed. I'll send v-next.

> 
> -Akhil
> 
> >  				dev_err(dev, "nvmem: invalid bits on %pOF\n", child);
> >  				of_node_put(child);
> >  				return -EINVAL;
> > @@ -1627,21 +1629,29 @@ EXPORT_SYMBOL_GPL(nvmem_cell_put);
> >  static void nvmem_shift_read_buffer_in_place(struct nvmem_cell_entry *cell, void *buf)
> >  {
> >  	u8 *p, *b;
> > -	int i, extra, bit_offset = cell->bit_offset;
> > +	int i, extra, bytes_offset;
> > +	int bit_offset = cell->bit_offset;
> >  
> >  	p = b = buf;
> > -	if (bit_offset) {
> > +
> > +	bytes_offset = bit_offset / BITS_PER_BYTE;
> > +	b += bytes_offset;
> > +	bit_offset %= BITS_PER_BYTE;
> > +
> > +	if (bit_offset % BITS_PER_BYTE) {
> >  		/* First shift */
> > -		*b++ >>= bit_offset;
> > +		*p = *b++ >> bit_offset;
> >  
> >  		/* setup rest of the bytes if any */
> >  		for (i = 1; i < cell->bytes; i++) {
> >  			/* Get bits from next byte and shift them towards msb */
> > -			*p |= *b << (BITS_PER_BYTE - bit_offset);
> > +			*p++ |= *b << (BITS_PER_BYTE - bit_offset);
> >  
> > -			p = b;
> > -			*b++ >>= bit_offset;
> > +			*p = *b++ >> bit_offset;
> >  		}
> > +	} else if (p != b) {
> > +		memmove(p, b, cell->bytes - bytes_offset);
> > +		p += cell->bytes - 1;
> >  	} else {
> >  		/* point to the msb */
> >  		p += cell->bytes - 1;
> > 
> 

-- 
With best wishes
Dmitry

