Return-Path: <devicetree+bounces-250602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DCECEA635
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:03:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 51640301E915
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 961FE2FF65B;
	Tue, 30 Dec 2025 18:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luy/Uv7k"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7230A2D3738
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767117777; cv=none; b=Xaz9xuZt/BDjyJJdVWpwtbh9/gNUjOx/xUnB+MiwAkkIRkbMZWF/RyTfivgkaX3gopPHsxgRPvrPCXyNIAdIm/cGthRnvPwj0LrEZYICl35IodmB05sqd4A9fXfF6qLarGJDs4Oj8f0pBmwMa31jSeFtKngwQMnnzJjCnSqKegM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767117777; c=relaxed/simple;
	bh=iEJPo+RclQgKvgaNojcfutzZClUtmHHAkPxNewG49s0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wm2fJW1GxdQnUpUdozJkP3pfUNbZdlzgMuZuU2mFixri4x6m6L60gSvHOcKGxbkKzxdocoyQBq4dQuoLRxCsLFq3+HoC6KZi3/dcviY9GSipXUC4whfi7FJ03T9kvdbg/ZPpAL8g2SjA/Qq+2bHR+BB767vRBDzpQt67P9pF3uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luy/Uv7k; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE973C4CEFB;
	Tue, 30 Dec 2025 18:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767117777;
	bh=iEJPo+RclQgKvgaNojcfutzZClUtmHHAkPxNewG49s0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=luy/Uv7k8FTMztHjS5L7JajzUoQCQsQzLvjCoJRgbm55HJJhxoMSmC92Q7VHvdfbE
	 2mUCgAJ0LDJ0v0N6d/mTojzJ+KnQFwvkhi7zJyWFH9LLe04lALEZGkocwBfz15/DPI
	 N+Gq4Je+5qppS1Cttc7HnyyPlaPIsHc37VZVjoKGyM1umdZZRoSfAmj4LifHLkRKi+
	 CmACICSn17+Ri+umY7IimYQqODE7D2PtjnjoMj4bnZCyiDIqg2ciB1jv2qGKIUvtL1
	 ycFxqv1ElusfYHvqvBCyX5ZH8aK2n7/zzu+xB6q7Rd70SD7VIYQtVsHU4U9Z3jcXBc
	 V99y7VAIHpWtQ==
Date: Tue, 30 Dec 2025 12:02:56 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: honyuenkwun@gmail.com, i@next.chainsx.cn, heiko@sntech.de,
	krzk+dt@kernel.org, linux-rockchip@lists.infradead.org,
	kever.yang@rock-chips.com, michael.opdenacker@rootcommit.com,
	devicetree@vger.kernel.org, jonas@kwiboo.se, conor+dt@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: fix description for
 Radxa CM3I
Message-ID: <176711777554.871580.14571318556214839794.robh@kernel.org>
References: <20251229045838.2917-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251229045838.2917-1-naoki@radxa.com>


On Mon, 29 Dec 2025 04:58:37 +0000, FUKAUMI Naoki wrote:
> "Radxa CM3I" is the correct name[1], so fix the description.
> 
> [1] https://dl.radxa.com/cm3i/docs/hw/radxa_cm3i_product_brief.pdf
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


