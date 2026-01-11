Return-Path: <devicetree+bounces-253545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A2947D0E88F
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 11:06:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD0AC300EE43
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 10:06:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A4AE322B89;
	Sun, 11 Jan 2026 10:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2j4+TvJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D102D7DC1;
	Sun, 11 Jan 2026 10:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768125988; cv=none; b=oacuy0xv3ob8pN+pqQ7ut04nBNu/jJifduN18MdvUXtyCea0vFKtgqs2PPWpe8TQsaeTiBjUvWM8cXvQc0fo8794fKk2izQXbfX07eXXEc3ayWoM1j3IvXNhjLk1rxN/a1Dy5QzwD2QdYikMWEiAfXQx04/8QMV1Yxs9e5rY2o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768125988; c=relaxed/simple;
	bh=f0Wq9MbNlKb5pZ0bl8dUQVC9Gg9yFaWKAKdarLjQiF8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HAQhtlEIIYDEHfDiT8aBZ4HO4ewf9Y6hok5WbDBZOojT2X36yK5mFTt6F6W8ERUN3OUssl08S7BJQK8oH8r2AlfJ7wCg7ZYPsWzvPQSmvRAaQ4n0+9xIXf210vObkAo/hjR8QdFFdmm6Y8IfgbA9Jp9qLuz1XHNirP5K8N7ylgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2j4+TvJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81948C4CEF7;
	Sun, 11 Jan 2026 10:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768125987;
	bh=f0Wq9MbNlKb5pZ0bl8dUQVC9Gg9yFaWKAKdarLjQiF8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F2j4+TvJHQgaYIuzBXiyLcNVYoQi5bLxvI1ZtXK5CpFybhmSRDNihJO98r3xF0kEo
	 V9hq8H/2hwwGt8n4lUbkV/VvPUY2fflZS0AHP6SuKv6VA7IvbKeEQUtqv1fvFKSKui
	 pGOrKaPjuMeTDrEOLcU5Xuq0qk/grWzXKlsYOGhbekkEk46/us3kkRCI30eoDeJG70
	 rs4c2lxaPJwwAtrTdSVogcV8XOq+mG5UfsaLoCP0VvlLOEiLDKOTzefvulqmpFwXbr
	 +YcTUldfjUD8GK65qV8FKPI4ROtWYwS86vupdB6a1BQt0iV9g3LswxEcQO1Kt7oRxw
	 8ybW8hQenNUGA==
Date: Sun, 11 Jan 2026 11:06:25 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gary Yang <gary.yang@cixtech.com>
Cc: peter.chen@cixtech.com, fugang.duan@cixtech.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, cix-kernel-upstream@cixtech.com, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: cix: add OrangePi 6 Plus board
Message-ID: <20260111-elite-wren-of-force-eef87b@quoll>
References: <20260110093406.2700505-1-gary.yang@cixtech.com>
 <20260110093406.2700505-2-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260110093406.2700505-2-gary.yang@cixtech.com>

On Sat, Jan 10, 2026 at 05:34:05PM +0800, Gary Yang wrote:
> OrangePi 6 Plus adopts CIX CD8180/CD8160 SoC, built-in 12-core 64-bit
> processor + NPU processor,integrated graphics processor, equipped with
> 16GB/32GB/64GB LPDDR5, and provides two M.2 KEY-M interfaces 2280 for NVMe
> SSD,as well as SPI FLASH and TF slots to meet the needs of fast read/write
> and high-capacity storage
> 
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> ---
>  Documentation/devicetree/bindings/arm/cix.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


