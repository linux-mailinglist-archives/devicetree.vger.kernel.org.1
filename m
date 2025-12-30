Return-Path: <devicetree+bounces-250603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A02CEA638
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:03:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32A59300980F
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D6FA2D3738;
	Tue, 30 Dec 2025 18:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiURWpvh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7931C254B03
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767117800; cv=none; b=bFRCS1Ho5IxEnTs6QqxYpLeRn1Nrivtj/EF3BmhfQTHnZEpLzlaaz3FpDqmygleh+3VtL8lnn7kWyD2Xne69zHTPyNbrt7XMUUGXUzmCHNBkwcxR3HbxKk1y0nk5l20jqI2vBXMqej+akxIxg9BqxNdqg+GHG2Xknds6gQQUvnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767117800; c=relaxed/simple;
	bh=H9u7r07r8oeNwop96A3O/qOKh8YqoZQVliySjmPt5O8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lBXGbvTxw34a4NJi9vNkzVlWHC/7WUtV7EAsYXx2mitqTj9x5ttblychY9TzmVlmr0gwNtqfv0WiohgRrX6c00E+THyGx282DkBL32PECg61nlR8y1jLegegqSah1w57N6yL4hbRCKl57FobAMogdmORrziMJbq5WULdMTP5JHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiURWpvh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27937C4CEFB;
	Tue, 30 Dec 2025 18:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767117800;
	bh=H9u7r07r8oeNwop96A3O/qOKh8YqoZQVliySjmPt5O8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HiURWpvhDyUA7UmLoZio8mS1/0L1ZdBfUM1JM135bHNFGKck+/Q+EmcuBVzpxP4p7
	 O1R3r59qTq32JqIdVBcyfP3eHWd/hhVBaNNa7ow6zKeHzKeAXS5ApH1qUOMWo73G9g
	 4hfrLfmWLzAE81YnCKljQ4Sd795XnVFLhq/dBa4jRmxB1ti1xWUzVQGyct5IqhE/A0
	 raKhIm+cfiu0LupF0c7AyHQMJ0lhFvPkcI+ujYv5kbcLAgLl1wYyME+9iGgT5/x/Kl
	 0gy59qSmVWi5fWcw5BbiTWiPJsNPovVjRI0Bz1vrWYHFiw28heS/hN59ORErJsYKr2
	 WrfOQK3wtYLzg==
Date: Tue, 30 Dec 2025 12:03:19 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: michael.opdenacker@rootcommit.com, honyuenkwun@gmail.com,
	krzk+dt@kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kever.yang@rock-chips.com, i@next.chainsx.cn, jonas@kwiboo.se
Subject: Re: [PATCH 2/2] dt-bindings: arm: rockchip: fix description for
 Radxa CM5
Message-ID: <176711779905.872882.4079419194603323719.robh@kernel.org>
References: <20251229045838.2917-1-naoki@radxa.com>
 <20251229045838.2917-2-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251229045838.2917-2-naoki@radxa.com>


On Mon, 29 Dec 2025 04:58:38 +0000, FUKAUMI Naoki wrote:
> "Radxa CM5" is the correct name[1], so fix the description. While at
> it, move the CM5 entry after the CM3I.
> 
> [1] https://dl.radxa.com/cm5/radxa_cm5_product_brief.pdf
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml          | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


