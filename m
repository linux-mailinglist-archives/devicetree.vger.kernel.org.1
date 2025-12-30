Return-Path: <devicetree+bounces-250352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 620F7CE88B0
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 03:23:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0814D300AFC1
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 02:23:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFF372DFA2F;
	Tue, 30 Dec 2025 02:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqYbwLcC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A5F2DEA74;
	Tue, 30 Dec 2025 02:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767061389; cv=none; b=lzZxtiZYlZKIajHMspdjDIoWNRafPURKYgVkBvtD0ly7+G6nHMHYmI3pj/O8yOcb2CaDSNpSv+luwHUXrgJwhXle2Ijzm26/wuezPub16QOUdnmTkZIXvir3FBQnmQiXsKrCDe9+Wko3hW0CEt7OUcQnhFm6/FMWfcW8gGXmf9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767061389; c=relaxed/simple;
	bh=JJBLWrKZJscwjA3cx9oGiJGVinABxL8hJC6q1izjjk8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VG4FjlVx+SwlDdcidSZzGUvtuu3eedcLg35uDd5XpFFF9b7FDRi/3R7C/M97N7pU/rgylNmlncAWMjdZxdXzXMUg7agOz79Rru/HZkSJRnBCceypwAEWc/4PE4meGKR5tvghWaHt1M76l4UGh0c2XRT8fJUN4EiT9Xeiuz92lMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqYbwLcC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF22EC4CEF7;
	Tue, 30 Dec 2025 02:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767061389;
	bh=JJBLWrKZJscwjA3cx9oGiJGVinABxL8hJC6q1izjjk8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rqYbwLcCSdqZrAaL/5UsPcAo8T2EDLTfE1oTIkzwEfPaJdrUnSmDDV55LSKJ47gcj
	 YBFLWcMkGwLr3aFXJVHwprtarb3yS9dlbYMKYiM4OqhCIxxs4Q97Ek/XhiqlRPx1Sv
	 nDb2mTjXDgfzKwjRgVeMZFPprSPZqqIcIPaqNquB/3MJ1DqmTeQ2TmY0MftLWCNTl6
	 cqGmi0dIvmVXdrDj6YK8R56n4hKb8eIBpFwSV1Kk7z+4rqNQmthXbHcx8mzUAFA6Jc
	 DSD9co6p2wVqWwFbmKdRhUNdRodck8eHI5Nhd7DM4s2KfuXFVKjEH+7ipHXly8CiUr
	 bBu6+rzZ9g9NA==
Date: Tue, 30 Dec 2025 10:23:04 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: maudspierings@gocontroll.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/3] arm64: dts: freescale: moduline-display: several
 fixes
Message-ID: <aVM3iCWrKkpcqe2N@dragon>
References: <20251201-disp_fix-v2-0-9b03026311b6@gocontroll.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251201-disp_fix-v2-0-9b03026311b6@gocontroll.com>

On Mon, Dec 01, 2025 at 12:56:49PM +0100, Maud Spierings via B4 Relay wrote:
> A couple of issues where discovered:
> - compatibles should integrate the SoM
> - the eqos mac address is stored in eth_mac1
> 
> The first one is breaking, but it is early enough that it can be
> corrected without causing any issues.
> 
> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
> ---
> Changes in v2:
> - re-add the old compatible to fsl.yaml
> - expand the reasoning for these changes in the commit messages
> - Link to v1: https://lore.kernel.org/r/20251114-disp_fix-v1-0-49cbe826afc2@gocontroll.com
> 
> ---
> Maud Spierings (3):
>       dt-bindings: arm: fsl: moduline-display: fix compatible
>       arm64: dts: freescale: moduline-display: fix compatible
>       arm64: dts: freescale: tx8p-ml81: fix eqos nvmem-cells

Applied all, thanks!

