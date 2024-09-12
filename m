Return-Path: <devicetree+bounces-102325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEC5976722
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 13:03:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40AC51F21F48
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 11:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81D3019DFAC;
	Thu, 12 Sep 2024 11:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="jjLWYZW2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49237.qiye.163.com (mail-m49237.qiye.163.com [45.254.49.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1DD18FDD7
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 11:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.237
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726138992; cv=none; b=feje85rFRGzvaGy56HANFbUlyRFr54yqgAi+cGvYNwFO/W4DtuztmtTGESprGeEFU6CVI1tHUgo3frD6Prchp2S6HcGtPsQh9eOsUDieIDabIfnYnH4dLq/CLDrCPylp728KxZ1t7ZQvaZlgcC+Yl43lkyaL4arOHQM9SYRIwek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726138992; c=relaxed/simple;
	bh=E8VoImG9+MF3eUu1HB3WXy5oVqOL5uqa+5XM8hDlKqo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hFOUaiAuSBhLD0VSMwCXyrlEWJKF2RsdMzi5bkjaJ9X2ygarE8Z6pCE89K+9KP3VAAIPx8+r87a1Qiq/7wuCIQAZ41Zl7MYST+XGiR+SUqQWecIgeUsJ8nOy/4ACdv6jBXelQd1G9dTdDcXVaCCgtfF0uCyzMnVrS4LO3xLnDp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=jjLWYZW2; arc=none smtp.client-ip=45.254.49.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
DKIM-Signature: a=rsa-sha256;
	b=jjLWYZW2/7k3ggTDYipqkgmDgFY/pTxmOTvJxzY5vtJe7j/XVvxz+px9s3HVrkxxj+zEk+m4M1iOI1e4+QYsCwb2tJ1PUHCepl63amaGPBxYFNUTkkbxvYIMblqNgP20StyOySvJIuYP6maRCmKR7UKs4jAwHGewBmDTQin8vtM=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=0GXIUc6xG/GGsPFZhO+ucHCg3q0s0E/+IDeCgVQl8YE=;
	h=date:mime-version:subject:message-id:from;
Received: from [192.168.60.65] (unknown [103.29.142.67])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 06B29900C0D;
	Thu, 12 Sep 2024 18:26:46 +0800 (CST)
Message-ID: <e534f0b2-8d30-4175-9616-105e53d25811@rock-chips.com>
Date: Thu, 12 Sep 2024 18:26:39 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] Revert "arm64: dts: rockchip: remove redundant
 cd-gpios from rk3588 sdmmc nodes"
To: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240611120645.457-1-naoki@radxa.com>
 <20240613001757.1350-1-naoki@radxa.com>
Content-Language: en-US
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <20240613001757.1350-1-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTh4aVhlJTE9KQ01CGENPSFYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKS0hVSUJVSk9JVU1MWVdZFhoPEhUdFFlBWU9LSFVKS0lPT09LVUpLS1
	VLWQY+
X-HM-Tid: 0a91e5c570ba03a3kunm06b29900c0d
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PU06Myo5PTIyNyM9Nw8TCEg6
	DSFPCTZVSlVKTElNSkhNQ0tDSUJIVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQU9NTkI3Bg++

Hi Naoki, Heiko,

On 2024/6/13 08:17, FUKAUMI Naoki wrote:
> This reverts commit d859ad305ed19d9a77d8c8ecd22459b73da36ba6.
>
> Inserting and removing microSD card is not detected since above commit.
> Reverting it fixes this problem.
>
> This is probably the same thing as 5 years ago on rk3399
> https://lore.kernel.org/all/0608599d485117a9d99f5fb274fbb1b55f6ba9f7.1547466003.git.robin.murphy@arm.com/

Sorry for didn't notice this patch.

The SD card hotplug can not work because the controller is getting into 
runtime low power mode,

so we need the fix in mmc driver to make the CD function work as below:

https://lkml.org/lkml/2024/9/12/323


Thanks,
- Kever
>
> So we'll go back to cd-gpios for now.
>
> this patch is tested on Radxa ROCK 5A and 5B.
>
> Fixes: d859ad305ed1 ("arm64: dts: rockchip: remove redundant cd-gpios from rk3588 sdmmc nodes")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>
> Changes in v2:
> - reword commit message
> - remove empty line
> ---
>   arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 1 +
>   arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts     | 1 +
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts         | 1 +
>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts        | 1 +
>   4 files changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> index 1a604429fb26..e74871491ef5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> @@ -444,6 +444,7 @@ &sdhci {
>   &sdmmc {
>   	bus-width = <4>;
>   	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>   	disable-wp;
>   	max-frequency = <150000000>;
>   	no-sdio;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
> index b4f22d95ac0e..e80caa36f8e4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
> @@ -435,6 +435,7 @@ &sdhci {
>   &sdmmc {
>   	bus-width = <4>;
>   	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>   	disable-wp;
>   	max-frequency = <150000000>;
>   	no-sdio;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 4e2bf4eaef2b..df845929b084 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -390,6 +390,7 @@ &sdmmc {
>   	bus-width = <4>;
>   	cap-mmc-highspeed;
>   	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>   	disable-wp;
>   	sd-uhs-sdr104;
>   	vmmc-supply = <&vcc_3v3_s3>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 8e2a07612d17..b070955627be 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -366,6 +366,7 @@ &sdmmc {
>   	bus-width = <4>;
>   	cap-mmc-highspeed;
>   	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>   	disable-wp;
>   	max-frequency = <150000000>;
>   	no-sdio;

