Return-Path: <devicetree+bounces-250108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 322FECE64CB
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:36:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E30563003BF2
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 09:36:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1082C24A076;
	Mon, 29 Dec 2025 09:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ge/++Wvv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 817EB241696
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 09:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767001013; cv=none; b=UVARxu3u1ulxZA4IszJ//FSYaaM7AXKCpFDMfAMqfZc5lVftW4egc4ExRjCaMn+rlndfIvTD1A/jNyKpozTeuG+I6dqLhKR0SKMAVsOvycMrRlA6Ib6LbXK0SEOkyrJTL7AFljbELVdSZlrlK+P73tX3/sEGQDUJnbCeER6qm8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767001013; c=relaxed/simple;
	bh=y0DBFrvTw5WGdJotdWoUOWRFqnUJHGhrLoNAJ0wT9kM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SawwUsUULc2lf4an68boD80xrB+rriS0M4ApQtQhrbMkipQtVS2MSwHddFEVAW+9FHO1TtDk+1Pz9rsd+EMTC+rK5vI3h4kHNwa/0jtSmzwYVmboqML767XbxtmjTl+a/ndDRw3sgZWFSeJAoUulTl1eA2hCoZD8sm8cJchsly8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ge/++Wvv; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5959105629bso8923845e87.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 01:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767001010; x=1767605810; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zy6FaAKrnG9vWUbCJzba2W1+Xz+O91x0kok02ukJILw=;
        b=Ge/++WvvfTI/b0rED819cAWCD/grpvWrpAEWvKteReG87oHunH3Co5Nm33I48vG5tN
         G3hljpNUER3uKaEdPqEDWUsimXzW4d4mG5OEjm2fFIP9w0xj+kA9Z9tzG/XJrBoYXlbo
         O2YUqTodqvk29q+vUwwvH913bKyowHFDqqRJdvvXtwiHzIo08QSS4qu674HFXpp5ANzi
         c8MSP286AuThBBXQ+xcfNtInRK0nfBLioCSr4mm+lMwCaUIWQMM7wVCIoTyq2ezep+b7
         PBieBxcEnfg3wzyZo5sF7w6+4HveW5E6FJSe+f94Ks/UGNNHL8p6oGaG4L2+/A3jo1zK
         YCmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767001010; x=1767605810;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zy6FaAKrnG9vWUbCJzba2W1+Xz+O91x0kok02ukJILw=;
        b=BjaVW6APhTkpvcEXSf5xrJfJMf2GYKB4U4DH2gXdxLBbVSW7I/8SDuo5noGtOupU1d
         sOnGqTH/J6HYdBPbM0ZUpNzqK0d8mbWBIMe+01zdxRmjfp3H4aedwtRzbibutz6g0BXA
         7fvKHuztiTRv7AyEU8c/fA4wGKU+IJk2EB4u8W+nREXP6lt/xTigR2ti7GpJCYksYRo/
         Eip+xlhciWsNK5XDjy7agiDVb+ctg4kyIW9/4UXYslQvdfQnJRigMvGi5P6RvV9Or7XY
         AJvSUxvag1dszzBBtMRk5sce4yNFkGCbR+bDdFYZebR2C02/+ktWMMwLCbkCGIn0Bvjd
         KvXg==
X-Forwarded-Encrypted: i=1; AJvYcCWzIBwYsbvnXF5puywfh+u7GMFOLUMkSyrlFBeSsosIr40I3CZMsV/aN6rZU3hjMAo0cOJ7HEKwgpGe@vger.kernel.org
X-Gm-Message-State: AOJu0YyBq6YsrTcZetv7OJN4OSzA3vi9foBKeyAufUw5+a7ZEuzVQoY8
	qkA3JPaSus7jW9EeRE3RryJWgcsTFJ+1fqe6f+0nYRHwiXPii1FfqjWq
X-Gm-Gg: AY/fxX6bcF0+rOyqKUhoBAyL2vVu1a+LeyUdx1ywJfqVhr/CRo7ZQ8RiiAYKmon1HGZ
	vpvI7xshC8YvJR2/o8hYrjqqvsglhnRjEj9M2YWTRztyBvQQIntDhbxBYZsaVZKjpAw8oN47XhJ
	HsdTy4Cg1gt98iOO4vc1bAhJrQa5/B42qo3oL+oTUFGFo9PRqecGDm8WFaY6ncTyWDWyecKUXZm
	Gk6i3izxzuiduJyua+TUNqYMCDsc9SppXE9MNpBQcQL2IaDGjGT5WFlRcQnD+5mVo7pAJzBIOUK
	qR5x2ifyTma79ouu7piEdBgwGDj8CdR04lKvpyfsyQZa9ffpAbpb5nGqGpAeAhMDXK+0jf89tTG
	8WPGK0+E6DyETDiyzSP6J+0nNDUkgPmMGdBrH1D3DnSsucj82q1BHd/h/ItN25sSV1ad9dmHD+O
	5QB89YvnBcPhw=
X-Google-Smtp-Source: AGHT+IGHm0Kgnu2qkWrY4EqAUf2ZqTKoDeBs41GVC0pxMiQJd7hpHFbnbDaD1TLfB5HETP94i+VV9w==
X-Received: by 2002:a05:6512:4020:b0:598:f262:1666 with SMTP id 2adb3069b0e04-59a17d1258dmr11279969e87.16.1767001009412;
        Mon, 29 Dec 2025 01:36:49 -0800 (PST)
Received: from eichest-laptop ([2a02:168:af72:0:305a:a3c6:f52d:de0f])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18618d59sm9115943e87.61.2025.12.29.01.36.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 01:36:47 -0800 (PST)
Date: Mon, 29 Dec 2025 10:36:45 +0100
From: Stefan Eichenberger <eichest@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	horms@kernel.org,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: net: micrel: Convert to DT schema
Message-ID: <aVJLrTnCefcjF39m@eichest-laptop>
References: <20251223133446.22401-1-eichest@gmail.com>
 <20251223133446.22401-2-eichest@gmail.com>
 <0376a133-44a7-40e8-be7d-0d04d33c0ec7@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0376a133-44a7-40e8-be7d-0d04d33c0ec7@lunn.ch>

On Tue, Dec 23, 2025 at 03:34:57PM +0100, Andrew Lunn wrote:
> > +examples:
> > +  - |
> > +    ethernet {
> 
> This should be an mdio node, not an ethernet node.

Thanks, I fill fix that in the next version.

