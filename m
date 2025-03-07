Return-Path: <devicetree+bounces-155531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE34A57442
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 22:59:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6D48173DD8
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 21:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D775322069A;
	Fri,  7 Mar 2025 21:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b="KPih+DMa"
X-Original-To: devicetree@vger.kernel.org
Received: from out-176.mta0.migadu.com (out-176.mta0.migadu.com [91.218.175.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418E821C9EC
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 21:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741384770; cv=none; b=JM/uEnHiNWeooPtxLighMrc+gwdNUAWlRejEYPH4y294nMuII6u59Zr5u5q0cwnOio9FRb0xcxg+1BYsrZPESLFV/HqJBQfvCuSq8wa1aOqtspIBl8dRnt2IGGhojnXDZviud9x6BbdnV4xO4sTFEQNEU9Emckr9nmDRUqn81vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741384770; c=relaxed/simple;
	bh=6EchceztAW6CFtsUTWw4IQZ8aH/PJSZtQ7XND/0uu0g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p0cZBqZXo/ID58hrIKOHp1wEf9Ck9Yzx0TeQi9Qg2hkAYkNFaJFHUMl/kE6gWnP/87nstwGPPezN5e2GM7hpkhzwG91kn8msA4XBMQ3cHW4Q7icy/GiqHsgkEFlP0h02pPEYlirhHgSFKp5o9Pptr6t/T/vd1WP3hfiO9nSCjjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io; spf=pass smtp.mailfrom=rosenzweig.io; dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b=KPih+DMa; arc=none smtp.client-ip=91.218.175.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rosenzweig.io
Date: Fri, 7 Mar 2025 16:59:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rosenzweig.io;
	s=key1; t=1741384765;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=I5YH1gMXjYvHWKof3eUCQYsGSuXQkfMfI4FEeXllrZs=;
	b=KPih+DMa0rkvqdL/53iYFfAXRlPP3ItVPk238X6R113xcXTBtFvuhJeXL0caJYp6j3y722
	EV6aorD+Zdis5a3Xg+2Pco6SBX/ZP4j7PGLeuxdvBQWyUZpOon5yJlP4wZfQ9vx1JlbMGD
	Rey469cEKsDoPQ/KdeicoSDMkA/RvI/TqL9X9D1B1v1sW24l+hXsSszK/JoZRMnV1CMkD2
	mOXsUA4DEeG/CLBUAuEnB317THdXtQGEsgXiYZo7pYXeNM2kO10+3nnD45PuhzOCJZDVV7
	s3h0HQHBpYpsKM2z6fnoj6lAW+aqiNwWWWzRy7YxJnDM3/UzmRE6CLtTlgTeFQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alyssa Rosenzweig <alyssa@rosenzweig.io>
To: fnkl.kernel@gmail.com
Cc: Sven Peter <sven@svenpeter.dev>, Janne Grunau <j@jannau.net>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Jean-Francois Bortolotti <jeff@borto.fr>
Subject: Re: [PATCH v2 2/3] spmi: add a spmi driver for Apple SoC
Message-ID: <Z8tsOKbxVOXmOicF@blossom>
References: <20250307-spmi-v2-0-eccdb06afb99@gmail.com>
 <20250307-spmi-v2-2-eccdb06afb99@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250307-spmi-v2-2-eccdb06afb99@gmail.com>
X-Migadu-Flow: FLOW_OUT

> +static inline u32 read_reg(struct apple_spmi *spmi, int offset)
> +{
> +	return readl(spmi->regs + offset);
> +}
> +
> +static inline void write_reg(u32 value, struct apple_spmi *spmi, int offset)
> +{
> +	writel(value, spmi->regs + offset);
> +}

At this point I don't think these are gaining us anything. Can we inline
them?

