Return-Path: <devicetree+bounces-254278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A19D16DA9
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:35:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 88FD0301584F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 06:35:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25F3C311592;
	Tue, 13 Jan 2026 06:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="g6a3fX9g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90121255F2C;
	Tue, 13 Jan 2026 06:35:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768286148; cv=none; b=PUVJPASLxVimw/E7mzueL5CPCodkLHtBbdOx6rcWI46QeskTGIhVsENJREOaVVPRYAqOCU3jEgxvwDV5ot81OaOjTC/4O9M0z+iXRiMqaQu4/MPMkeOd6ZwvDiiFXnIaptnXnOOoMpAYaCJzwo7MqCGWg3c6k25mL7sOZl/m2zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768286148; c=relaxed/simple;
	bh=hjWinnVuEWCjiwKWXGxw451IPiDaz66u+Jwf0lf/LjA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mQSy1JXt3/LWgGI8m1LNKtNKgQBaBpD5o5E7j10/oQ6SYoFIGwiXiGn4ERGvExGXhR7RSXX6Q3hA7S/rQvio98DUzPSuvYph4QnPJVdrhJU+XgFGbRJdG1XANgE+WPkbTavSaudLcjd4pQcBTjbIL9bXL+Rl48uiDMj0Qj+CqfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=g6a3fX9g; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch [83.173.201.248])
	by mail11.truemail.it (Postfix) with ESMTPA id 2E5EC1F995;
	Tue, 13 Jan 2026 07:35:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1768286135;
	bh=24ANg8ZT7wYFPMeB3/AaOeucnD+hKTLwceUjJJzk91A=; h=From:To:Subject;
	b=g6a3fX9g9PrX1Dwdkff/iJ9+HXZTJCCB65qo15lRmdzEcPm2DaW4bjNyNFop/+3Wd
	 eUEmQUqLqBnpu44WGMR2K1n1SkZ3wxbtJcmcpY5XfxecBTo/L7ZEjhtvDNiEUYK/CY
	 yz7KSgomjxkEETGhijtd+UWwIoNbiULGTE8vZCKQiLwNSDfzn9dim/Cjw39KjvlmcP
	 tUQj1h0q1uCUriM9bN7l7Dla6uz6ZxAjfxuhNXVRJE4wVlF04MzyZ5vz6WVPtEkgxY
	 xotnNB6hnKLcSng1o95CItBTPMuvgpSKGF4R+fzHUI07ROTXbv8aUS35diXKdMuKuY
	 x95M+k7Zuv66A==
Date: Tue, 13 Jan 2026 07:35:31 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Vitor Soares <ivitro@gmail.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vitor Soares <vitor.soares@toradex.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 0/2] arm64: dts: ti: k3-am69-aquila: fix SPI hardware
 CS issue
Message-ID: <20260113063531.GA4635@francesco-nb>
References: <20260112175350.79270-1-ivitro@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260112175350.79270-1-ivitro@gmail.com>

On Mon, Jan 12, 2026 at 05:53:45PM +0000, Vitor Soares wrote:
> From: Vitor Soares <vitor.soares@toradex.com>
> 
> Hardware chip select does not work correctly on main_spi0 and main_spi2
> controllers on the Aquila AM69 module. Testing revealed main_spi2 loses
> CS state during runtime PM suspend, while main_spi0 cannot drive CS HIGH
> when bus is idle. This series switches both controllers to use GPIO-based
> chip select instead.

Reviewed-by: Francesco Dolcini <francesco.dolcini@toradex.com>


