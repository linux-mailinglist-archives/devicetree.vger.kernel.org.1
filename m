Return-Path: <devicetree+bounces-146843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 798EBA367B8
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 22:45:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 367C916D65E
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 21:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E7FD1DB153;
	Fri, 14 Feb 2025 21:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="raqnuDzq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F0218A6D4;
	Fri, 14 Feb 2025 21:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739569530; cv=none; b=VPSVVAosuoqpr9z8mOeMlWKXCbY5jWThE3B7yT3JfWWvab5KZyuhTWVEMfVwK4im1tHpK2gIDirppdeD4CIVHJkphKlNByNQAHsGuuuw9AKnhMpUKvLIThJSR/+6G1HNGXA7aMhHiGifBTCa29WkLp/XUZD2iHpmLuJGkiQaY1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739569530; c=relaxed/simple;
	bh=Tgu8c487qpSf1JKB3abGCdZ+fVqXR6+ogPiAKyoojU8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uD6iuzKit9x4Yh0iOnNZG+d7rrfw/yhTdl84rCGe8o1UlQilgmHaDzs0FEewbe5nsgOtE9+djGxTsDNwVGmySNpgBRYYAIN//xnGazUCQVv6iW/khYhMTOJFWaFnR9MEvw/PmyV7k+zY8b4lv2UZoARnusbijUPG4pRixAgN9vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=raqnuDzq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB95BC4CED1;
	Fri, 14 Feb 2025 21:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739569529;
	bh=Tgu8c487qpSf1JKB3abGCdZ+fVqXR6+ogPiAKyoojU8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=raqnuDzqxhWY4N/YiQgksHu9BEcFLn37zQFHJeewh64NdxF52Mb7djkMP9MlRznlW
	 oACDX2dhWr8bXHSVrBmz45pht+4+juGqmRR4WA47+nxP00HnIB6dEdgQofIFFPEwP6
	 85Q8AlTwfUKq3XhU9mccBVB/LqjmPqBVPR5l5ukrNMO4aeAf+XY/wQGl1OkuCCic3W
	 4ckRrzOvTu+XF2Ju5czVu7ADB6u/o3pj3hG6WN+od4YQBHWv4j7WPZ1VYSqvRu/A//
	 4vKtB9/qQidYyLRcxmmZoyjCC0MQqiepiByPYZh9t8yUmsWvnNJ3jCoEnXA0oEOw4u
	 pCi/dfvnkGPCQ==
Date: Fri, 14 Feb 2025 13:45:28 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>, lee@kernel.org,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, tsbogend@alpha.franken.de, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH net-next 0/5] dt-bindings: net: realtek,rtl9301-switch
Message-ID: <20250214134528.4630b6b2@kernel.org>
In-Reply-To: <20250209234751.460404-1-chris.packham@alliedtelesis.co.nz>
References: <20250209234751.460404-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 10 Feb 2025 12:47:46 +1300 Chris Packham wrote:
>   dt-bindings: net: Move realtek,rtl9301-switch to net
>   dt-bindings: net: Add switch ports and interrupts to RTL9300
>   dt-bindings: net: Add Realtek MDIO controller

AFAIU we're waiting for a review from DT maintainers on this one,
is this series on your radar?

