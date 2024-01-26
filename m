Return-Path: <devicetree+bounces-35396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F07C183D5C7
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:15:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B2581C266D9
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 09:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96ED6171AB;
	Fri, 26 Jan 2024 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="lzwrviwr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E03D272
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 08:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706257234; cv=none; b=AqISVXLsX2YIbgRpncfchpmO3qOwu94WoFDJFTe/pl0A6QHMcJgMXgq9xwfj3UA3D85z5801WSJFNsjlm4G8PeFr8YCm5Lod36WwDxgAJZMYLWd1dtS2UzXtdrgx2I3uRQjV/HaYLN/Obsm5h/sWqNaFStNEOkq8vWl6KIC5k2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706257234; c=relaxed/simple;
	bh=LcaQO4Y0Om2XAvomVedhbbfSkTpmnqjr9w/usEsktZA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ly572NfprloAUvetmJwYMttWnr+PTKDGOaOfqEISQuHvFs+KJUAh39EjlXUEEN8z2kEwOU13scPOdIFPuCEG96ewMMT2ZXP54HSWJndWUnRnsk9ucY3ISGFr0RWYY2uejJrDY1k2YX5aJ3piNRDZbcFV0tLzgIM0ZQgqbNPtVng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=lzwrviwr; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 3238E6042F;
	Fri, 26 Jan 2024 08:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1706257232;
	bh=LcaQO4Y0Om2XAvomVedhbbfSkTpmnqjr9w/usEsktZA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lzwrviwrXNxml6xexZr7PhltBsmUh37iWa+Yvdc9asidM0bAbs5HXsZoXiYYvYBdp
	 /U2ENoGFDaOC1uklay1jKSTxi5TOOvBqveGQHlPUBIdvJJmZrvChX4c2eECgLAS3Lb
	 wfHS0RnI52KHtJBjvYYjvnLuolJaOgvba61/m/IjrV2IG8izKLqTCADDeZS7AtAb1Q
	 wA1nKy7O9DT89ZC/yf8mBCdG+LBZtZnKDow2v5kvdgZCoGAFeokqSS2J8H347/wtWv
	 Qzt1h380ugDUbICcxKxaTsVSGLuuQDJLKPPuRK3+CxqxjAA3WFFAGhje2j8kjKa+9z
	 cFi5qg4NE53dA==
Date: Fri, 26 Jan 2024 10:20:06 +0200
From: Tony Lindgren <tony@atomide.com>
To: Markus Schneider-Pargmann <msp@baylibre.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Dhruva Gole <d-gole@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/1] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc
 for wkup_uart0
Message-ID: <20240126082006.GT5185@atomide.com>
References: <20231219072503.12427-1-tony@atomide.com>
 <q54c4f3l2ddvnnwzigz2hebru27nhevf4oij6g2nqv6yyijigr@nuvwukfwpsjh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <q54c4f3l2ddvnnwzigz2hebru27nhevf4oij6g2nqv6yyijigr@nuvwukfwpsjh>

* Markus Schneider-Pargmann <msp@baylibre.com> [240124 13:55]:
> I tested this patch on am62-lp-sk and required this additional property:
> 
>   ti,no-reset-on-init;
> 
> I am not sure at the moment why a reset doesn't work. But with the given
> property (so without reset) the wakeup on wkup_uart0 works as expected.

OK. This might be some firmware related difference. Care to describe what
goes wrong so that can be added to the patch description?

Regards,

Tony

