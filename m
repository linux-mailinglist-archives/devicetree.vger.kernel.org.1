Return-Path: <devicetree+bounces-245378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E88F9CAFD47
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 12:53:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EF6033012DE3
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 11:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDFF32FD670;
	Tue,  9 Dec 2025 11:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYaMbBkz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B2826B08F;
	Tue,  9 Dec 2025 11:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765281224; cv=none; b=cIZSwjzvO9LDwRiNmmGZLaU1VDM3NI8CNT3JlnKEzbd+uz/xBj1wreeAMmLFPb2mI7wAw98Rh7n14x3eN0kNSRSfhWJTaFnUVH2nyEQ/yGt10b0Q/qt0C0TqJDzmuepKIkACzBIrTF8mvJmmnqmdJqk6k2aw6b3DYvI/6hb7670=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765281224; c=relaxed/simple;
	bh=xdF0JFCuLf+JbpJeXbnRsnFeIglj2gBgzHUoPU1pNO8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=aEXZj5Ivl3iUzdku+0aXyLdr97ziiAMA+SnoVoa0uKDuwxWG1+/WNLl8sJHfwVPUh4brSUKQsHqADhTVabh5r6YzOy7r3wOfwDYrIvlLWMmtrYET5yuKyiesGmciiF1BNH5lnllQnWDtplr2XT+uXze//yRFBEDx8kupeRmg2rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYaMbBkz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6879BC4CEF5;
	Tue,  9 Dec 2025 11:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765281224;
	bh=xdF0JFCuLf+JbpJeXbnRsnFeIglj2gBgzHUoPU1pNO8=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=KYaMbBkzSS5KBx+o4qUjxMA8kij1XHbwL/4MIGJpybfjJwTcFsHyWOP9QkW1OYC1+
	 rEOGKRTrpWiIGvefmdniTmGQQL1p5GpSgRmuHpHrIhznlzQ+O0lTuMlq9PW91sYJcb
	 1yjyfy0JTgBSShUw5IPIsbmsK2cYiw3Ftri9uy3c2nb7eJzvG8XsEen3DAY4NFHkUj
	 0MV0D8q7TpWVz9H5kugS+rohHENNreJgshCQC5CfDVcuTJimeywk+XFCgXrXp4Pbc7
	 w1iGJElRksIT+NJN9d1nxwi7RdDwY2ZOFudlJZDap78GWuBVuBFqYftxWUuCHTmscy
	 QNrLhuHW8jdsQ==
Message-ID: <f3c5a9f5-c608-4bce-94c2-6a97172d329d@kernel.org>
Date: Tue, 9 Dec 2025 05:53:42 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: arm64: dts: socfpga: agilex5: Add IOMMUS property for ethernet
 nodes
To: muhammadnazimamirul.nazleasmade@altera.com, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>
References: <7379d0b30094b30843c99f801dfcba9fafc4ae1d.1764294423.git.muhammad.nazim.amirul.nazle.asmade@altera.com>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <7379d0b30094b30843c99f801dfcba9fafc4ae1d.1764294423.git.muhammad.nazim.amirul.nazle.asmade@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/3/25 20:29, muhammadnazimamirul.nazleasmade@altera.com wrote:
> From: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>
> 
> To enable SMMU integration, populate the iommus property to the ethernet
> device-tree node.
> 
> Signed-off-by: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>
> ---
>   arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> index 1f5d560f97b2..06f98667499b 100644
> --- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> @@ -577,6 +577,7 @@ gmac0: ethernet@10810000 {
>   			snps,tso;
>   			altr,sysmgr-syscon = <&sysmgr 0x44 0>;
>   			snps,clk-csr = <0>;
> +			iommus = <&smmu 1>;
>   			status = "disabled";
>   
>   			stmmac_axi_emac0_setup: stmmac-axi-config {
> @@ -689,6 +690,7 @@ gmac1: ethernet@10820000 {
>   			snps,tso;
>   			altr,sysmgr-syscon = <&sysmgr 0x48 0>;
>   			snps,clk-csr = <0>;
> +			iommus = <&smmu 2>;
>   			status = "disabled";
>   
>   			stmmac_axi_emac1_setup: stmmac-axi-config {
> @@ -801,6 +803,7 @@ gmac2: ethernet@10830000 {
>   			snps,tso;
>   			altr,sysmgr-syscon = <&sysmgr 0x4c 0>;
>   			snps,clk-csr = <0>;
> +			iommus = <&smmu 3>;
>   			status = "disabled";
>   
>   			stmmac_axi_emac2_setup: stmmac-axi-config {

Applied!

Thanks,
Dinh


