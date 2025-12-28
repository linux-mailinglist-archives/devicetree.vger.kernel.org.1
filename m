Return-Path: <devicetree+bounces-250002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E56CE57EB
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 23:21:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5526030037B3
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 22:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5DC9199E94;
	Sun, 28 Dec 2025 22:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="sBJ7fvuG";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="sBJ7fvuG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2175C2EA
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 22:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766960498; cv=none; b=BKUKw7GyXWrXQFv5v+hsU7COv4dQzVzI6rYzkiiJ+pmWdeIBted6JXVLs9w9Xon8lxcqsjiyzPJoHhXQW4pB7eTdeQrlXY5g4VPNINE7n6L+RO8ZMbbePK+WLjRB5wjndfY+dQ7uzUOivL2TeaYG5gXWE6fqpHVvCM6y5vEXZHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766960498; c=relaxed/simple;
	bh=CpO1rSWzqrOyPAFxxg06leQheFevM1H2QpJi0wSDqJs=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=YHaWKrwe/naqwDq/I/6FK/7XRh2HqFkbPUhiK+92iFKhQhS83rs8wT2p4SaVnjQuMnpz5CgsR1BbW4zrjxaIJ6HhCik5xSFwLw95xRqO8V61nRomay3wEYORWu2VS+UBkiTkk1QkMOSukEToE8dJdBvU9o61VVuwMqKBs6ehtfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=sBJ7fvuG; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=sBJ7fvuG; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766960488; bh=CpO1rSWzqrOyPAFxxg06leQheFevM1H2QpJi0wSDqJs=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=sBJ7fvuGIg/zQfIUn4Cz5efgPja03YYCu1+GiDuyjEGH+FZOuEUEHokd0fK979Ypr
	 Qm/Xr+6rsTJZyf+N6X/40Chug7tBsGm/AvGUWt/ClvQrdX+Zz+nzIL9mL3bGscEui6
	 3izWdiSNXGCnD21FqOKQQNpWRGp9FMNM10NQnyqSJ65x4YphK96HfUoo1Ghy6So3UJ
	 e4Z7UOYdUq65ynYWPkTak/tn3vWoscveSE5zwnsY4XbFABUVIbacmXYDsTJBf4ZTC6
	 Ad6k4zdNVTbULJevV966UtCiqdfCJsXPwTP2Zs/bbWOyGv0RxVwMMONhdkmLfF6t6D
	 BHsN6KtaQZRwA==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 981B53E90D7;
	Sun, 28 Dec 2025 22:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766960488; bh=CpO1rSWzqrOyPAFxxg06leQheFevM1H2QpJi0wSDqJs=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=sBJ7fvuGIg/zQfIUn4Cz5efgPja03YYCu1+GiDuyjEGH+FZOuEUEHokd0fK979Ypr
	 Qm/Xr+6rsTJZyf+N6X/40Chug7tBsGm/AvGUWt/ClvQrdX+Zz+nzIL9mL3bGscEui6
	 3izWdiSNXGCnD21FqOKQQNpWRGp9FMNM10NQnyqSJ65x4YphK96HfUoo1Ghy6So3UJ
	 e4Z7UOYdUq65ynYWPkTak/tn3vWoscveSE5zwnsY4XbFABUVIbacmXYDsTJBf4ZTC6
	 Ad6k4zdNVTbULJevV966UtCiqdfCJsXPwTP2Zs/bbWOyGv0RxVwMMONhdkmLfF6t6D
	 BHsN6KtaQZRwA==
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id 312F53DAF7E;
	Sun, 28 Dec 2025 22:21:28 +0000 (UTC)
Message-ID: <379f38ac-ab4a-4615-894b-e404bea4a6a1@mleia.com>
Date: Mon, 29 Dec 2025 00:21:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 0/2] ARM: dts: lpc32xx: set DMA and NAND flash
 controller properties
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20251225203157.1414349-1-vz@mleia.com>
In-Reply-To: <20251225203157.1414349-1-vz@mleia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251228_222128_636837_195F82B6 
X-CRM114-Status: GOOD (  14.03  )

On 12/25/25 22:31, Vladimir Zapolskiy wrote:
> The changeset adds a numbed of necessary properties to ARM PrimeCell
> PL080 DMA controller and to SLC and MLC NAND flash controllers, and now
> it obsoletes the platform data of the controllers populated on boot.
> 
> To respect any probable users who does not update dtb on the boards,
> the platform data cannot be removed instantly, but now it's time to
> declare one year timeout for such a synchronization to be completed,
> the platform data of DMA and NAND flash controllers will be removed by
> the end of the next year.
> 
> The changeset is based on top of the previously sent changes:
> * https://lore.kernel.org/linux-arm-kernel/20251224165845.1261926-1-vz@mleia.com
> 
> Note, the changeset is marked as the resent one, it's identical to the one
> https://lore.kernel.org/linux-devicetree/20251225180230.1400420-1-vz@mleia.com/
> but now the changeset appears on the linux-arm-kernel mailing list as well.
> 
> Vladimir Zapolskiy (2):
>    ARM: dts: lpc32xx: add DMA controller properties to the device tree node
>    ARM: dts: lpc32xx: add DMA properties to NAND flash controllers
> 
>   arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 

Found a previously unapplied change, which is more comprehensive and
substitutes this series, still have to add {lli,mem}-bus-interface-ahb2
property to the DMA controller device tree node:

https://lore.kernel.org/linux-arm-kernel/20240627150046.258795-6-piotr.wojtaszczyk@timesys.com/

Will apply the one from Piotr.

-- 
Best wishes,
Vladimir

