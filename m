Return-Path: <devicetree+bounces-268546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNUDCCB0n2mgcAQAu9opvQ
	(envelope-from <devicetree+bounces-268546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 23:13:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D903019E350
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 23:13:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 37EA230234ED
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 22:13:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8BA331A041;
	Wed, 25 Feb 2026 22:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SJWsU4sq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1BEC311C22
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 22:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772057629; cv=none; b=TbfOyDunmScljamjICceDrkbYYOfmCv1PKj2gXap1p4IshjppVVUY06/TpamSyE7gZvPKHrFwehjm5OBBVkkPG5LsF+IAGplwI1GcHFG24PKQvXNKA/XZsDEa0rj3kQsAF1NTy3iW38XBUSyi7qmIVqMkfmnaZvvsZVp9gtlLGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772057629; c=relaxed/simple;
	bh=TOgbNBbKU9iPOcuckC2IVjsArS+79bW2WQ2DfWtt9Zs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WVfq9F7n0V82F3STW6XekCCR94W4pvfzmATHtWXbpYXQzQOSqcXaF139KdBWnm6ueuDn1N85HEvswADD04f16aqeN6AyRSNjjZp3B0wxrYDrtpVL66idwtGpgNDre9pIULjXbsC8lYohv1Dz7LhG2MnbIqodLXSTYpW8ffzF48E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SJWsU4sq; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-c6e1dc5c5edso60336a12.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772057628; x=1772662428; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5aiKwhpHaGzJ3DICfSZzF0PjdBtray3xMHDXBsERpgo=;
        b=SJWsU4sqxHWs4GZAiT9mNCVOf7tsuhKmxNyn46NGnlceY/2z8TErE4PUDQh8uZjtLv
         r40fgWVm6/n3SSPGPSrtL3Jmo6to11r25ASS+rQ80W3loeg/bra0T4h6imBqCskWrtLd
         xyDgR4xJKHZWkTPDciKeTajWmbFJFQexXJLgziwpuhk0vaOC9ng+Do250dWwOCeS6QYt
         4NRDz7+5ZNr2A0vWFLu+NR5Y9slqEjQEpleqD3yC6i3ll6mzW39Gytin7NyGnFb65q1c
         08vqbbtyOKwsR6vqeWVa1+mx2KbWMH9Sz4URtox2QuIhMNL2eevhDanm2vAFnXwAaLIQ
         SSHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772057628; x=1772662428;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5aiKwhpHaGzJ3DICfSZzF0PjdBtray3xMHDXBsERpgo=;
        b=bDf9supClLy1jFlPnYhIAaEtXZeYxWlpyx99W1pOspsHoU7DAj7oiSJQOYB6eMu9Ib
         mRInDDMDJ5aetk0unIIwkM6u738htB+6SQtarHn4dXJrwGIpbrbwxW6oo1fvVKdVNl19
         bdfsXqrQoGsYEsL12PQSHaNtgDp7NG3c43VsoK82kpk1JFx8pDzHazsjNXsknfSXAmix
         alnUSrDXJPH+oE7bt1OaQN3jeJYyE8CBEVO4Oxgs0EvhlTw16DtudO1N7so5Ho83lbUz
         oTgLkyn4B+iXCn0Iw/L7gKQg3XhPayFklIaudvp7W0neHWEHTSewfUxtr6AyKsgsfIPD
         kl5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWPiK4/sq8pC4108pgbW+DJstGgdZJNT6NBm3j7e5f8Y05adkpNFIYz2Nx/bx8On9qhaSPIt88YGQq0@vger.kernel.org
X-Gm-Message-State: AOJu0YxGntPXL/sWDuF5KAp3+EGmRpOjVooAYqL7qR1oCsNGQxWLTDNr
	m9BHDwV1rQSw0OLyEw1h+w7Tv7oYP8UX8DAovBNcKYmF3B+/JnzFQzuEDkF1dpdw
X-Gm-Gg: ATEYQzxE4qGG/OwNjeSldH9gGqJd6+OW31cuTIDRLh4kPgMiwvK43oOScM9tdml9/ab
	VpXJa2QbBuLPxKXa1E2f/5CIq6FdWO6+akvewSiI38/8S8QgndoBiOECy9NfeD7x8AsiA6O5knr
	AckZd1hrr7Cu4gKuUZZjqGeNoFr2pKi27eR194qqihR5lrxpfS2OfnQPA8TYhL0Jzf7aoum0Saf
	LiRSyLn/eLrHoVbqb1vNUSh93eoelK8a1fm7eTQ5tBwNGtWtNihbh/mUD1LKr7gKA59hA6kEzWq
	b7Yc2DwgzXbPeTdqYPYg/oJR3U2OoUk3+AerugnjzkAIv9T26svRWNgr7mYmrMkZhMP1DnBa5CA
	taqD6bl/Jyc2RG+0yPBFULgV41urDwBbpd+EbwG0emkj4pV999LbaeTGYshGjRdVA0uj5K0dQXY
	ygLq+1u1VwtU+qr7rXzeue2A==
X-Received: by 2002:a05:6a21:4910:b0:34d:d030:6739 with SMTP id adf61e73a8af0-395b482d1e6mr88993637.31.1772057627939;
        Wed, 25 Feb 2026 14:13:47 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359130719a3sm1267511a91.8.2026.02.25.14.13.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 14:13:47 -0800 (PST)
Date: Thu, 26 Feb 2026 06:13:25 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
	Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
	Longbin Li <looong.bin@gmail.com>, Ze Huang <huangze@whut.edu.cn>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, sophgo@lists.linux.dev, linux-riscv@lists.infradead.org, 
	Yixun Lan <dlan@kernel.org>
Subject: Re: (subset) [PATCH v3 0/3] riscv: sophgo: allow DMA multiplexer set
 channel number for DMA controller
Message-ID: <aZ9z0gV8ZrfpL2JG@inochi.infowork>
References: <20260120013706.436742-1-inochiama@gmail.com>
 <177201865381.93331.6104381063514168222.b4-ty@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <177201865381.93331.6104381063514168222.b4-ty@kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268546-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,synopsys.com,outlook.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,gmail.com,whut.edu.cn];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[inochi.infowork:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D903019E350
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 04:54:13PM +0530, Vinod Koul wrote:
> 
> On Tue, 20 Jan 2026 09:37:02 +0800, Inochi Amaoto wrote:
> > As the DMA controller on Sophgo CV1800 series SoC only has 8 channels,
> > the SoC provides a dma multiplexer to reuse the DMA channel. However,
> > the dma multiplexer also controlls the DMA interrupt multiplexer, which
> > means that the dma multiplexer needs to know the channel number.
> > 
> > Change the DMA phandle args parsing logic so it can use handshake
> > number as channel number if necessary.
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/3] dt-bindings: dma: snps,dw-axi-dmac: Add CV1800B compatible
>       commit: 5eda5f42d2fee87127b568206a9fcc07a2f6eab6
> [2/3] dmaengine: dw-axi-dmac: Add support for CV1800B DMA
>       commit: 02a380ea7ed2d737a42693d7957ec8c33a92d9fd
> 
> Best regards,
> -- 
> ~Vinod
> 
> 

Hi, Vinod

I guess you applied the version 4, but replied to the version 3?

Regards,
Inochi

