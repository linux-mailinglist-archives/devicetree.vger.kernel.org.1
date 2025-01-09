Return-Path: <devicetree+bounces-136961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FFDA07146
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:19:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 356B71674D8
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 09:19:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D48CC2153D9;
	Thu,  9 Jan 2025 09:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lk+VgA5v"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE57D2036ED;
	Thu,  9 Jan 2025 09:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736414217; cv=none; b=rpHU4Y7cBpqGSl+Ck4Z6+zyyPuWxs1ngLcvXr11mfiJsfAraoZGj0MT+G/Aa56YYSJ57aOQ0NAqOJoBVspVRAUCt9T3NB18V28PL+wSBLMNbyKA79UxT5iKiHVlqIbakV8KnfU1r+YbRYkHItE2hKF2dalQ+bCcm+rVPjG0KsV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736414217; c=relaxed/simple;
	bh=qEZaozu+bXu2t7oNZxrWED/rFRW9H4LMBLptuZ38CgI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WVoXIu87lHNf3WA1d23uiooCaFEkkRR9gBoKfCxh1P/R8EbQlyWo1UjTtaijLaE6jIrJY8bcq0+pfZoZtWqHKzNIsy6S4TLngefrF72OA2L6uKZS59VwoEETs0/t1KjYXmd1mdDWQ8kXcm25s4uHZeOzwIpVqyGB/ubabF/VnZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lk+VgA5v; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89030C4CEE1;
	Thu,  9 Jan 2025 09:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736414217;
	bh=qEZaozu+bXu2t7oNZxrWED/rFRW9H4LMBLptuZ38CgI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Lk+VgA5vyJ/3vcjDmyHDOznoG2NP1c8SoUJLaYLhir/BPWmfeBJ1qVJVWIMgp6wx8
	 JHBmKsKNo6ObIn7sXAgASr1Z17sCuqMyF8MV3gZaJgltvHjpvvnpW8seOMRUfjyzVt
	 Paaiib9sY8F49MVnX6/wjW2r0tyTLWTbOMQ4SmufvilFgAtzs0NOkrcIdhWQBlM5Gc
	 RLSwRXXpEM6c2CzfsvvXUOJyLAtvu1RXSwZKqgDx/g+sNI2Cytw5q/eil1e/p71KjQ
	 q/URwWPUmQpCuYITAgrCy25huCwMIS3iV/wP1y/MjdIDjCJ5h62HeD+9JtisIBGfk8
	 UeQgYECmXUuYg==
Date: Thu, 9 Jan 2025 10:16:54 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bryan Brattlof <bb@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: ti: k3-am62l: add initial reference
 board file
Message-ID: <wbi7xppldoroq2okv4s43njug7x2yzgvnkhtjrtsij77fn6vsv@zzzzq6qzfeyh>
References: <20250108-am62lx-v2-0-581285a37d8f@ti.com>
 <20250108-am62lx-v2-3-581285a37d8f@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250108-am62lx-v2-3-581285a37d8f@ti.com>

On Wed, Jan 08, 2025 at 04:51:55PM -0600, Bryan Brattlof wrote:
> +	chosen {
> +		stdout-path = &main_uart0;
> +	};
> +
> +	memory@80000000 {
> +		reg = <0x00000000 0x80000000 0x00000000 0x80000000>;
> +		device_type = "memory";
> +		bootph-all;
> +	};
> +};
> +
> +&pmx0 {
> +	main_uart0_pins_default: main_uart0-default-pins {

Avoid underscore in node names.

Best regards,
Krzysztof


