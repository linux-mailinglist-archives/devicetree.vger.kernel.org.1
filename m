Return-Path: <devicetree+bounces-82351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 898CA923F81
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 15:51:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BBBE01C22A3C
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 13:51:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 700101B4C59;
	Tue,  2 Jul 2024 13:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="bHoa7vds"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700EF19F49D
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 13:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719928272; cv=none; b=r8p8UcgP3hsgvmyKnU/zzPC4rCmwvs9Bq0rXUuZNTau5g/twj/XowsckTU+bikn/YgMkEt/BSUm02pqsMyZZPkJQZvbjjj7LwmLR50jGdy/5Ysj6R050A4mNnCk4guYe3gHwSA4UaTWBSmud5xvdXISvAnErJcCqbzP7NYcaTvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719928272; c=relaxed/simple;
	bh=H4zXuLbKf5yBXhHLRGsi3H0Bgm73XTrKySH6mB2lt0w=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=lKJTlvL+PULbMRX88ic41RPTAmIDGFgo+rJCnaffFVKXIfAyUC2Xsm3Yi9+yiD6FSkcXaQMgSZadqzEvkEL8a+0xqK31K2Xo5pebPpJvbsW3/v1cnZosqJmZQv8XrCaLqcMba6yNre+G6klfCVpFnfXR6KDGH3xcBmKF65HvgK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=bHoa7vds; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719927817;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9RX9SwG+Ud+rC8/PJcXDp/BFOh2r5o2V9dRBtdE1RAY=;
	b=bHoa7vdsnmgdt2n+DRizAmRL9D44zGgxWVRniutYuvxVOAYv1Jdv4qAvxH0h/1yERaqAbn
	5Dp0yNtjzAgDIT86aCQ/AjJi/eKzM2QUA+PyBAC033ImfKGYZIZ5CO1GR+saIqRh8qFegu
	rexvIP6anoi0yLGIhJXslW3AqjHqfBDz3UNDLzqU39uTfrsHiwuwhm7ovuoJ+2LWByxkv6
	DCWS8whHy3xl968t8xvMa8eVecSmH03xGAX8UEXbtsx4SgBxaTTrYrE1XajqaiJwpqi+gl
	MdpNcYjfZ3bgizWPor2/sb43wKT+lBkR6l2Z6DkVqdP7U9eFGQA75rXLEQG5tg==
Date: Tue, 02 Jul 2024 15:43:37 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Philipp Puschmann <p.puschmann@pironex.com>
Cc: linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 heiko@sntech.de, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk356x: add ethernet aliases
In-Reply-To: <20240702124626.116290-1-p.puschmann@pironex.com>
References: <20240702124626.116290-1-p.puschmann@pironex.com>
Message-ID: <6bb12ab4cd12357dfd69db35107d8b88@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Philipp,

On 2024-07-02 14:46, Philipp Puschmann wrote:
> Providing ethernet aliases solves a subtle problem for the rk3568. The
> bus_id used for the sysfs directory name of the mdio. Without ethernet
> alias the bus_id is always 0 and so creating the sysfs directory for 
> the
> second mdio fails with a duplicate filename error and by this the setup
> of the second ethernet port fails too.
> 
> Note: The alias numbering is inverted as gmac1 comes from more generic
> rk356x.dtsi but gmac0 comes from specialised rk3568.

Please see the following commits and the discussions on the 
rockchip-linux
mailing list that are linked in them:

- b0140a1b3b1d ("arm64: dts: rockchip: Add ethernet0 alias to the dts
   for RK3588(S) boards")
- 36d9b3ae708e ("arm64: dts: rockchip: Add ethernet0 alias to the dts
   for RK3566 boards")
- 5d90cb1edcf7 ("arm64: dts: rockchip: Remove ethernet0 alias from the
   SoC dtsi for RK3399")
- c900fef5deff ("arm64: dts: rockchip: Remove ethernet0 alias from the
   SoC dtsi for RK3368")

To sum it up, ethernetX aliases are considered board-level features,
because not all boards/devices actually expose the Ethernet interfaces
built into the SoCs.  Thus, adding ethernetX aliases to the SoC dtsi
files, unfortunately, isn't an acceptable option.

The sysfs issue that you've discovered should be instead solved in some
other, more systemic way.

> Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 4 ++++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
>  2 files changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index f1be76a54ceb..42018c8666e0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -8,6 +8,10 @@
>  / {
>  	compatible = "rockchip,rk3568";
> 
> +	aliases {
> +		ethernet1 = &gmac0;
> +	};
> +
>  	sata0: sata@fc000000 {
>  		compatible = "rockchip,rk3568-dwc-ahci", "snps,dwc-ahci";
>  		reg = <0 0xfc000000 0 0x1000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index d8543b5557ee..e13bd7b24752 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -43,6 +43,7 @@ aliases {
>  		spi1 = &spi1;
>  		spi2 = &spi2;
>  		spi3 = &spi3;
> +		ethernet0 = &gmac1;
>  	};
> 
>  	cpus {

