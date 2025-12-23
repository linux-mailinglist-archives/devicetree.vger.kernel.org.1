Return-Path: <devicetree+bounces-249151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0BECD985C
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:58:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 591F4307C546
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:54:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A32092BE03D;
	Tue, 23 Dec 2025 13:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrmsdykT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A6A276058;
	Tue, 23 Dec 2025 13:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766498057; cv=none; b=QUo0w/HQA62KM4RYv6urmKK1AMgdlyNijTaUx3PQpVULSRDqPqKYmbKAmhKOiHlEsVXBQECNBMf1wiVQJg42SX67NTcfroYk4N5Sla1QtJYU1yR68eIspLmJM0N6g0/ULIx0bkPAVyR/2Qt0OTRdOONY8em8SIDBvL2nEbjdZ70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766498057; c=relaxed/simple;
	bh=AiITmCreaKBX7HKqX2F5SX04cacgCiPL74DHqx+cHiY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jQIAeCqH5ctiUQjhhWBlLYyUuionaTmUc2XVs2XQWYCC0/i/KOPhppOHGU31iVzYAEPVPKOI3FUR7gOAmzPec6DPPGSVmQLjpxmjlR8yP5sJHDwmYVONitgZx7sOXNT2T1PrfJYxDrzyo8gqs3+DGGOg9EJmQYNjySTzQq5xwys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrmsdykT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EBEDC113D0;
	Tue, 23 Dec 2025 13:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766498056;
	bh=AiITmCreaKBX7HKqX2F5SX04cacgCiPL74DHqx+cHiY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qrmsdykTICzc1mqAHBjdG9SAc/oCv5sxGKGxwnXadPn1+LOy1LVhoMMzrBhhBkuDP
	 w2K07fAkYvb3vTL6xolLw35bpdOQqJAmGrdrEwXfdrobtJe8tibdsHa4nwC/pq9P01
	 ma2qh2+JsjFFIa5o3aZRLYbkNVhyEfQadnc+P41mkK60xosPQDc0Sptz3Mj2dwkopE
	 jRCW2U+pVv3Jkgfmi6+LzzJZkDzq6lvnXARy4IeKr+89d46c9FCsLBqnxIbP0m7vCQ
	 Kkkf5GPDTZxUkPZwNK6G3RvQHHut/6W6guZ9aCsNxLfbAKZ1jqx5wLKouSTNu7anUo
	 F1Ay4F91canbA==
Date: Tue, 23 Dec 2025 14:54:13 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kyle Hsieh <kylehsieh1995@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: aspeed: add Meta ventura2 board
Message-ID: <20251223-ginger-worm-of-swiftness-a8fa05@quoll>
References: <20251222-ventura2_initial_dts-v1-0-1f06166c78a3@gmail.com>
 <20251222-ventura2_initial_dts-v1-1-1f06166c78a3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251222-ventura2_initial_dts-v1-1-1f06166c78a3@gmail.com>

On Mon, Dec 22, 2025 at 03:45:43PM +0800, Kyle Hsieh wrote:
> Document the new compatibles used on Facebook ventura2.
> 
> Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


