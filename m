Return-Path: <devicetree+bounces-139261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5870A14E05
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 11:55:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5820A3A4834
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 10:54:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E766B1FC7F4;
	Fri, 17 Jan 2025 10:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5fqfWtx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1341F9F43;
	Fri, 17 Jan 2025 10:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737111300; cv=none; b=d5qNaABYimZQlXuVjb6QohHPeikx9+kWvVQPAILMIfckPiWqK5Lfcg0TjMbIo3iQs67+wXgdM4ypHoRWLpmuPhLFjrgTYufrKEBBLIoHN4fqMG0C15OAjM8wPIooYBlnncQxsY6jlqRjP3i5o1bV9W4SG/6MFzTAXbxW+AnBcNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737111300; c=relaxed/simple;
	bh=mznmnvbqPaNzOEOTQeMYHdZ/QQ4aIM9FNbZ5f0Sk/jk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rTUML7oEiTWg6mBD6ExIo7O2+hCE9SnUuoLwINGMOK47GHMVXGSPSLm/p+4e0ZKOa7/ztP8NxTctSbKpO6B2hjI5tGWTeF+iZmGcvl0aGk+sUF5nMXq7V2XbXx9ZBHcTPcixBb69aqeP/KfrqfYApkMuN+ENbguYZTku+MkYn18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5fqfWtx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C02B4C4CEDD;
	Fri, 17 Jan 2025 10:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737111300;
	bh=mznmnvbqPaNzOEOTQeMYHdZ/QQ4aIM9FNbZ5f0Sk/jk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q5fqfWtxk8NkHmnMlthkMG2gItGoTJd1zSdDoLCz6IjQlg9MWwugXDPLcBEp6TNm4
	 RoyYb8f+1q5cpUrQv2TD4NA3fSe4yd3Le3I5l6DxcNNUcQcTNcAo4QRiosznafyMoL
	 kqsOZjfigRXJZOuuDAmh9m0FirH6Ip7s7GIOhQKDNFLeY9vCmqDsZgvMKzNNARsn9v
	 RW1W5+mweyjo9dCgIeM16TlByze+uh6PjkR4B9Sj7XTlWEeeZi2EGMGQBNEmMsR/HN
	 GixNdIA+yH0BxwdVmB8I6bTEPIhaCCQST8TXMFptU6x1gszoiGpknoovd568WFUpoX
	 kgWYQKiSkoDpw==
Date: Fri, 17 Jan 2025 11:54:55 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@edgeble.ai>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: add overlay tests for Rock
 5B PCIe overlays
Message-ID: <Z4o2_0yX-hq-DfCs@ryzen>
References: <20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de>
 <20250116-pre-ict-jaguar-v2-2-157d319004fc@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250116-pre-ict-jaguar-v2-2-157d319004fc@cherry.de>

On Thu, Jan 16, 2025 at 03:47:11PM +0100, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@cherry.de>
> 
> According to commit 40658534756f ("arm64: dts: rockchip: Add rock5b
> overlays for PCIe endpoint mode"), Rock 5B can operate in PCIe endpoint
> mode. For that to work, the rk3588-rock-5b-pcie-ep.dtbo overlay needs to
> be applied on Rock 5B base Device Tree. If that Rock 5B is connected to
> another Rock 5B, the latter needs to apply the
> rk3588-rock-5b-pcie-srns.dtbo overlay.
> 
> In order to make sure the overlays are still valid in the future, let's
> add a validation test by applying the overlays on top of the main base
> at build time.
> 
> Fixes: 40658534756f ("arm64: dts: rockchip: Add rock5b overlays for PCIe endpoint mode")

Not sure if I agree with the Fixes-tag.
I don't think there is anything broken with that commit, but I definitely
think that it is a good idea make sure that they don't break in the future.


> @@ -145,8 +145,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5-itx.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
> -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-ep.dtbo
> -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-srns.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-tiger-haikou.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-toybrick-x0.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-turing-rk1.dtb
> @@ -165,5 +163,9 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5c.dtb
>  
>  # Overlays
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-ep.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-srns.dtb

You moved these lines further down, but you changed the suffix from
.dtbo to .dtb, why? It seems a little confusing, is that really needed?


Kind regards,
Niklas

>  
>  rk3588-edgeble-neu6a-wifi-dtbs := rk3588-edgeble-neu6a-io.dtb rk3588-edgeble-neu6a-wifi.dtbo
> +rk3588-rock-5b-pcie-ep-dtbs := rk3588-rock-5b.dtb rk3588-rock-5b-pcie-ep.dtbo
> +rk3588-rock-5b-pcie-srns-dtbs := rk3588-rock-5b.dtb rk3588-rock-5b-pcie-srns.dtbo
> 
> -- 
> 2.48.0
> 

