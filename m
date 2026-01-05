Return-Path: <devicetree+bounces-251636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D377BCF52CE
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 19:10:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64047305574E
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 18:05:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A48C5313546;
	Mon,  5 Jan 2026 18:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHXcvaha"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 800E61D7E42
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 18:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767636331; cv=none; b=ufBrqW9L82p+ElytD4/IqfSwiFOX+OQuoUGc29wF7t6nuOYN9Z2Ib6orabIMETBB9KYlOkoiC1ulJXH1LzAHYW8bbOx3xkAV6fdeARBiipRfi5koTMRMOk2Tcz4WDYa+ZTf9D6E5beJ0XXaD77ETTWX9kbXrasUzlMm4Zf/C7qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767636331; c=relaxed/simple;
	bh=GdjI++O5FHvFcVhhJqFQs8YBsaBzvX7sA6t19aYaiYo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fNF5zjodCvCczV09TAseFS1s/apmIpUe2i/zvMsKRU/fuDpg46TuVzTcD04Azdlcj8sRW/6ufUDbag4f/e4fHLqS1D6EZKZ/E0UUM802B2TeUA1ZVwQtXCOvmiJJPhnV4Gq4l3IgSkTX4W+l1fEb+ZF3nky98PrgdaiKafiyN8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHXcvaha; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD435C116D0;
	Mon,  5 Jan 2026 18:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767636331;
	bh=GdjI++O5FHvFcVhhJqFQs8YBsaBzvX7sA6t19aYaiYo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XHXcvahaKUI7WI6t2L/vnVhLRONcdXcRMI3G0l86hi7MuXhhFyVTXgQHQlFALiarI
	 Wvg0J1g/Q4Y46Ggy37ZGyaFGrO2PJf7112PTtk7HY8i0HpUkS3S9j6RoIcy+aV3nSU
	 /QEvy79BE5WIuN8e2dmiuo5y9iOvQWr+A5lkpHtsxLH1UXDKS/yHb7ELlT94cmT1eA
	 SAHgOmiZhbL8R6xJRK0XM+iZZidD+TwSoNZwrwLwhfdFa3fyfqmz2qhgFfvl2NUIQq
	 W/oKlGEFEzhBEsD4W88Yal+ULBsoPLBd7xWGC0f+6dzVpD3gS5oUn00NzDgx+6b56p
	 ccl3JBQ5YQFQA==
Date: Mon, 5 Jan 2026 12:05:30 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: pbrobinson@gmail.com, alchark@gmail.com, ziyao@disroot.org,
	linux-rockchip@lists.infradead.org,
	michael.opdenacker@rootcommit.com, will@kernel.org,
	catalin.marinas@arm.com, quentin.schulz@cherry.de,
	kever.yang@rock-chips.com, jonas@kwiboo.se, conor+dt@kernel.org,
	honyuenkwun@gmail.com, heiko@sntech.de, krzk+dt@kernel.org,
	dsimic@manjaro.org, devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 1/3] dt-bindings: arm: rockchip: Add Radxa CM3J on
 RPi CM4 IO Board
Message-ID: <176763632953.3036662.6418177359981655547.robh@kernel.org>
References: <20251229073840.25516-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251229073840.25516-1-naoki@radxa.com>


On Mon, 29 Dec 2025 07:38:38 +0000, FUKAUMI Naoki wrote:
> The Radxa CM3J is a feature rich industrial compute module developed
> by Radxa, based on the Rockchip RK3568 SoC. [1]
> 
> Add devicetree binding documentation for the Radxa CM3J on RPi CM4 IO
> Board.
> 
> [1] https://dl.radxa.com/cm3j/docs/hw/radxa_cm3j_product_brief_Revision_1.0.pdf
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


