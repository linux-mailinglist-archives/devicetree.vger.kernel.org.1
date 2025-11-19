Return-Path: <devicetree+bounces-240402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 750A8C70CE0
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 20:28:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CA01E4E4644
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 19:25:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3C483730E4;
	Wed, 19 Nov 2025 19:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hjRMbauD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067463176F2
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 19:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763580220; cv=none; b=W7xZK/OAvMzDBktnwP/E0iSH6whjX/8PdW0HQYsqBQCurg1PQegKIo6lUn0ex5lS8ibFN9p9Hz26f9yWAAL1d/EjS4Uzq9eH85IHvZO+SRsfpiY/pXtTLqOZ6TRCskCmxSyG+LLKtXCIyGixUtAaEWxn0NDbU8aB4Em66KTUnzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763580220; c=relaxed/simple;
	bh=NedQUfwo9fH7Hna30ofHnHLV9348yz1Mzkl1m2FQKpM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gm0o+LDW7x9/rX5cDOUujZurffnfFOao2RiyHohXuzI6A3HpDO3yn6X+RHPh90zWOpj+bV9ipqOkFWmc3aoW+NoAYyPTGmQ2pQxwVVm3/nMBMozxxjYmi4L2GmjYYlrnY9JGDwhgWaQhXFQt/X1wyMGCrrvXVH7hTO+t+39AWVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hjRMbauD; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4779c672e9cso122335e9.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 11:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763580210; x=1764185010; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MLogAxNGjiigadE1rwrA8a4RXHrpBoSC3+TrVQwZY7I=;
        b=hjRMbauDLuOXUp8BxZcmE2IhQ+cdVTUGdtM25dfEuVn8hHJ4AgglyXZ3RrSY633PEU
         8sdWOzF07b5xH5o1XpNjInOiKOBC3Pt/TSK3nne6H3YD3uPwmrqrUICAY3yj2uTy53WM
         jH6st6ElZm8Qo5X0C2q6B3j8jLOwqr+O+w5OqIZRBaENfP7XKqaeHoXyEAn5ZAwAivl4
         x3Gt67MFQSK55SMp5n+cd4VKN7i7AA1UVa/Tg9IZWqsR4NLKOvR61B482mriud6t6fKs
         LY6u6MdVHeTTdxVhZbtK4JgqNZvbtJeeqjoLUhRsfPyDTdnlzr3h31l5qztoBZBmWooB
         f/UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763580210; x=1764185010;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MLogAxNGjiigadE1rwrA8a4RXHrpBoSC3+TrVQwZY7I=;
        b=sltGGtoFMJPp/n+38u/6Oo7de/4iN566S3ue8ZD08SgNoQFq9S9/spCJQa771pZiyN
         /AgxWxIEmoJ0t0EOW6X4jOcZWum5nkWc+TJZQGLPU142GaKH8ooUMfkwrA/vxkZMLfj5
         xYd69VbKJWje52Evd7P68xMQ2J0lWAZXnBrQ/kq+/p2m/XEBOpcQpvrzBQSMJKjJx6Cw
         +XyPp9bNQdhFiuvYZg2rZFhq13S3pn7yC/WyamfbflK6p8jac6Nz/Koi/djhU5McXhBS
         /ldiGuPjGSKqVHFkXKGVm+xtKs2t914TTH/gfi57rFozOdCledXQeFRSN/DpZoZ8cnDl
         ItPA==
X-Forwarded-Encrypted: i=1; AJvYcCW9/6uDW98acYGXrCrFfllgyBLaCLqtTeyj1pIxph+Htod58uB3x2Rxsa/jeh0TOH59LF4pgwIWB8OH@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/IKl9VbqmlyATsWJ6ulaXfbmL5Qt76Ww2yLJLe5bPqvEphSp8
	AmKBiqA/k8aaukq77LLxbGNWZih35W6ZSWcDiMoPspCOjibHBnc7KCKTWmDMKQ==
X-Gm-Gg: ASbGncuzz6ZrEZZCrd30V9ussne1S2uj+OTp9AtMf5gi7SdTQN5gaapGW8Uc6+F5wVV
	JIKXu2UIgVUA5kHNJKXJNKc14MVsKvnBvUEe/6HYk0+SofYQLTkBO0gi1nLjtSKmttlRn/K6tya
	+u0to2TM67cPxeuM+Y5ZOohp3oTcE7KSmBekni6boWCv/yVf5C/azTk6YUsGMfMhwuflWBk8TQl
	hHRnT+4sl4JSJ4yl6Ph6ueQiiKauoBUy+Rt9m8J1ib+tGR18fyrdRL71SZ5OxoWHbhrPlt4QM/z
	zF2CkdhJrEMLmxbPupEbNzaLvr6sxO5H1QW++HJzGjYUTEnoGkcO6jUsvNaPaNaAVWmwUb/MZSw
	n8trmeYOWDj2rFzhBECG0LKrxomiHK4lqi1k3UOYkuCh9ZWmEMhHieUP6HjncFeJfKIJ+8AX3Xy
	xX3A==
X-Google-Smtp-Source: AGHT+IHc0rQkUlODH4e8Ox9CfugcMtuw2oByT3bP5OSjkiKT9z5TjLYVlgVIgUfYDFNn+RnRunywAw==
X-Received: by 2002:a05:600c:46cf:b0:46e:43f0:6181 with SMTP id 5b1f17b1804b1-477b8c93834mr1695005e9.7.1763580210359;
        Wed, 19 Nov 2025 11:23:30 -0800 (PST)
Received: from skbuf ([2a02:2f04:d106:d600:2e45:b79d:e48e:e6b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b10142d3sm72561855e9.5.2025.11.19.11.23.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 11:23:29 -0800 (PST)
Date: Wed, 19 Nov 2025 21:23:26 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH 0/2] phy: microchip: lan966x: Allow to invert N and P
 signals
Message-ID: <20251119192326.4bflaqkh4zvz2rib@skbuf>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110114216.r6zdgg4iky7kasut@skbuf>
 <20251111095016.42byrgj33lp4bouo@DEN-DL-M31836.microchip.com>
 <20251113163023.syl6nxq2mqkxpz4z@skbuf>
 <20251114103411.rzigaoictyinmx66@DEN-DL-M31836.microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114103411.rzigaoictyinmx66@DEN-DL-M31836.microchip.com>

Sorry for the delay. This time I got it but I forgot to answer.

On Fri, Nov 14, 2025 at 11:34:11AM +0100, Horatiu Vultur wrote:
> > Would it be possible to leave the SerDes muxing alone (with its
> > #phy-cells = <2>) and just add the lane OF nodes as an extra? You can
> > add new support for phys = <&phandle_directly_to_lane>, but that
> > wouldn't remove the existing support.
> 
> So you were thinking something like this
> ---
> 	serdes: serdes@e202c000 {
> 		compatible = "microchip,lan966x-serdes";
> 		reg = <0xe202c000 0x9c>,
> 		      <0xe2004010 0x4>;
> 		#phy-cells = <2>;
> 
> 		serdes_lane_0 {
> 		    reg = <0>;
> 		};
> 	};
> 
> 	port0 {
> 		phys = <&serdes_lane_0>;
> 	};
> ---
> 
> Maybe it is just a silly idea but what about doing like this:
> ---
> 	serdes: serdes@e202c000 {
> 		compatible = "microchip,lan966x-serdes";
> 		reg = <0xe202c000 0x9c>,
> 		      <0xe2004010 0x4>;
> 		#phy-cells = <2>;
> 		status = "disabled";
> 
> 		serdes_lane_0 {
> 		    serdes-properties
> 		};
> 	};
> ---
> Then there is no change to the ports and then in the lan966x-serdes I
> will iterate over all the child nodes and read the properties for each
> lane.

Well, if you re-read my message I think we are saying the same thing,
but in reverse order.

"Would it be possible to leave the SerDes muxing alone ... and just add
the lane OF nodes as an extra?" <- this would be your "silly" idea where
serdes_lane_0 just holds reg = <0> and the polarity properties.

"You can add new support for phys = <&phandle_directly_to_lane>, but
that wouldn't remove the existing support." <- this would correspond
to the first example you gave, presented as "So you were thinking
something like this".

Actually, I wasn't saying you have to implement the first way, just that
you can optionally do that as well.

To expand on your example. The base SerDes device tree node would look
like this:

	serdes: serdes@e202c000 {
		compatible = "microchip,lan966x-serdes";
		reg = <0xe202c000 0x9c>,
		      <0xe2004010 0x4>;
		#phy-cells = <2>;

		serdes_lane_0: phy@0 {
			reg = <0>;
			#phy-cells = <1>;
			tx-polarity = <PHY_POL_INV>;
		};
	};

and you could reference it like this (i.e. keep everything the same in
the consumer as until now, to avoid breaking compatibility):

	port0 {
		phys = <&serdes 0 CU(0)>;
	};

or like this (following the principle - if you have an OF node for the
lane, why not allow it be the PHY provider):

	port0 {
		phys = <&serdes_lane_0 CU(0)>;
	};

Just be careful that transitioning existing boards from one phandle
format to the other is a breaking change (old kernels won't understand
the "phys" with just 1 #phy-cell).

> Anyway I can wait with this patch series until you get your changes in.

I will keep you copied to the patch set which I hope to send later today.

