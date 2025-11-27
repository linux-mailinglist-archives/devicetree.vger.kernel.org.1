Return-Path: <devicetree+bounces-242587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AA4C8C6EB
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 01:38:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 155313B18C3
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 00:38:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CF8A21E091;
	Thu, 27 Nov 2025 00:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="duCJEbmU"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD233A8F7;
	Thu, 27 Nov 2025 00:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764203880; cv=none; b=dU47nLI/AmfRaow/X5p+a5CZt9Rd4Q3zyJIAAc/XoVH3qhj6cV6GXg0QC+uO+59WqcN0pEkahne5HALNYhfyoRGXPOaS7OcnXMAydG7MT6GDINxgvAosdECJPXk5Qt4h/c1F7+OwJVCBp0a+2ZotYs7+LTra23GVkW+kICdJzdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764203880; c=relaxed/simple;
	bh=XqENWuQEumTZEw1SapKk7yDHS93oMl0q6jpVGGU35jU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=uHjdNwhFEOFou9BYebk2XaeyZqM0ffTyfCJLgZBUDWTFuyQCAxg2ailuQJknirdyByaOqUwVLBt9FV5PWaSBqI1BS7S2Bq8errAIn5l/SQoSxCv3R1eONK8CvpXOo3BDuOlsTWOB9OhIWjHgzQG/5neFqf49XWlrPXg1u8ZNxbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=duCJEbmU; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1764203876;
	bh=CQ20Iy0RcHBHgkwxq2o8sUHkUfWWwKay7LCggNECWyg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=duCJEbmUPl0A54Y1u8LnbdpsMQtdW7BLOiZvOGnOu3g7CgGd8C886uT4RPZmWiPxi
	 WK6oX07ebhuv7vmGwct/dxh0g3+0YC+LXiy8r8x5Diam/pncqqi0n1L7tNXl8YKfGA
	 t0eh5i9ljzCeaL/tIFxhveCHUsxwA1cIUiLZ3yrFbv6LND/8mjpLFOJoQLLDAQiAkn
	 1AkxzUMuQIyPJYxouzCHDNOdBzoG5WyVa++3k0ZrEiBHMsXfwKgQyCCb0PeojNSZvA
	 bM/HX8sESNqI82kLc1G0kqEuB0RhvPxavXinraD9tE9xRhDeRtGd2wBO+bjpJCUtpu
	 vQii4AJok0U6A==
Received: from [127.0.1.1] (unknown [180.150.112.38])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id CB7A26561D;
	Thu, 27 Nov 2025 08:37:55 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Kimi Chen <kimi.zy.chen@fii-foxconn.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 george.kw.lee@fii-foxconn.com
In-Reply-To: <20251125-dts-add-gpio-to-io-expander-v4-1-e6d31f80470c@fii-foxconn.com>
References: <20251125-dts-add-gpio-to-io-expander-v4-1-e6d31f80470c@fii-foxconn.com>
Subject: Re: [PATCH v4] ARM: dts: aspeed: clemente: add gpio line name to
 io expander
Message-Id: <176420387574.173041.5260439773042865128.b4-ty@codeconstruct.com.au>
Date: Thu, 27 Nov 2025 11:07:55 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Tue, 25 Nov 2025 13:42:50 +0800, Kimi Chen wrote:
> The chassis power cycle process requires a forced shutdown before
> cutting off the standby power. The SCM CPLD implements a hard shutdown
> host function that is controlled through the IO expander in the
> Clemente platform.
> 
> This change adds a new GPIO line named "shdn_force_l_cpld" to the
> PCA9555 IO expander's gpio-line-names at index 10. When asserted,
> this GPIO signals the CPLD to pull the HPM's SHDN_FORCE_L pin low,
> which triggers a forced host shutdown.
> 
> [...]

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


