Return-Path: <devicetree+bounces-214933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B13B4FB69
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:38:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AA0841C6001F
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 12:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B9083314A0;
	Tue,  9 Sep 2025 12:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLapeKkH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67509199934
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 12:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757421519; cv=none; b=GNTDsZSF+ZJFke0byoprIu3uGGpWHd03s8HIBWFgFHlBAcEQpoHk8UwRzA1E4CnUj8s0pxso1Op6OV2BqUc79qaEXTyw5KXWWiKvauHNQlbCUmL/eKN17x/KhkfgGNkO4zHxckYeiI4jiVSFqEKZDPgg6u9jIz4YZgV5GNi2DBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757421519; c=relaxed/simple;
	bh=xfgZpizSAgvpGfQ8FdJH4LJSv5oOdJ0VWjfgQAiTsPA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aAskMoNwaqjmmoIlCLXjb024/zaxvHeA0ryqaGO5afZ6ewuOz/Hdfy0vvrsdYJ+eftJ+JXrd9r4GO6Cq5mdnw+W+FTd1COZB3wQwBca3+CtvEJpfs8M/xAEnSoCR0iNid2nqyvYuBv73PZoPPgGRs44h8u7NyFhItDsQP6mPaZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLapeKkH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A145EC4CEF4;
	Tue,  9 Sep 2025 12:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757421518;
	bh=xfgZpizSAgvpGfQ8FdJH4LJSv5oOdJ0VWjfgQAiTsPA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=VLapeKkHSiUpVT88yPkc0OnVXeMqWBP6lcyXDy6HLdVlaQ3XnSFzdWV6JotxLRisG
	 CWWH/rMMNftyNPxRKTG1IoYbvljzP5wy9LEM+STlAp/IZbHFkdCsS2ekXN/5Xy3w2T
	 m89f8HrBmWokcWFPlm6UTxwNAPNBbqWDjuHclvxNOMeWQ3xWFe9cdPUrLWXhsLKTTn
	 ujnjfzSxA3WuEdmXVvmiNJ8nEfsxazKPHNomVZlsnV6xOYeaVgCxB22qIV8Js9xfga
	 XeMI7HeUDhrIHdFAYRX4oBW53M2FXRZ8IL0AAINTg9+YO7LUi/qA2/wSBfaqj5ArI+
	 goBPjjRfaA1xQ==
Message-ID: <a85fa602-8310-446d-8903-92f1d597976c@kernel.org>
Date: Tue, 9 Sep 2025 14:38:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt8195: Remove suspend-breaking
 reset from pcie0
To: Guoqing Jiang <guoqing.jiang@canonical.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, jianjun.wang@mediatek.com,
 tinghan.shen@mediatek.com
Cc: macpaul.lin@mediatek.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20250721095959.57703-1-guoqing.jiang@canonical.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <matthias.bgg@kernel.org>
In-Reply-To: <20250721095959.57703-1-guoqing.jiang@canonical.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/07/2025 11:59, Guoqing Jiang wrote:
> When test suspend resume with 6.8 based kernel, system can't resume
> and I got below error which can be also reproduced with 6.16 rc6+
> kernel.
> 
> mtk-pcie-gen3 112f0000.pcie: PCIe link down, current LTSSM state: detect.quiet (0x0)
> mtk-pcie-gen3 112f0000.pcie: PM: dpm_run_callback(): genpd_resume_noirq returns -110
> mtk-pcie-gen3 112f0000.pcie: PM: failed to resume noirq: error -110
> 
> After investigation, looks pcie0 has the same problem as pcie1 as
> decribed in commit 3d7fdd8e38aa ("arm64: dts: mediatek: mt8195:
> Remove suspend-breaking reset from pcie1").
> 
> Fixes: ecc0af6a3fe6 ("arm64: dts: mt8195: Add pcie and pcie phy nodes")
> Signed-off-by: Guoqing Jiang <guoqing.jiang@canonical.com>

Queued, thanks.

Matthias

> ---
>   arch/arm64/boot/dts/mediatek/mt8195.dtsi | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> index dd065b1bf94a..50cf01452208 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> @@ -1563,9 +1563,6 @@ pcie0: pcie@112f0000 {
>   
>   			power-domains = <&spm MT8195_POWER_DOMAIN_PCIE_MAC_P0>;
>   
> -			resets = <&infracfg_ao MT8195_INFRA_RST2_PCIE_P0_SWRST>;
> -			reset-names = "mac";
> -
>   			#interrupt-cells = <1>;
>   			interrupt-map-mask = <0 0 0 7>;
>   			interrupt-map = <0 0 0 1 &pcie_intc0 0>,


