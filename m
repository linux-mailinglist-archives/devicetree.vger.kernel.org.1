Return-Path: <devicetree+bounces-139450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8ACA15D0B
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 13:58:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 09AF97A3506
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 12:58:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38EC2188580;
	Sat, 18 Jan 2025 12:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b="q+9tTc4i"
X-Original-To: devicetree@vger.kernel.org
Received: from classfun.cn (unknown [129.204.178.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E32C18BC26;
	Sat, 18 Jan 2025 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.204.178.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737205124; cv=none; b=KHnO0WmzUHWY2w9hIgLNlBL4MU/Xu7+lmXVVGH+feVJmxqyr8dZUsmXrBBvfh+vKIgd8AlrlB9sLpKHRqQOGGc3SPKkieMacjHidijX/725HlQ+1YSxclSRSzAAlTXAjrXgvh4uFzr7m2YLOpyGP34P02L3qqsBzkwvpHGcPQ/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737205124; c=relaxed/simple;
	bh=mxVnanCbefN1C+ECW3PVj98FXp1/JBhKw0K4Se5Z19M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ld0IzKnYAILo2/6tfmFb6LhoM0yxm9dpsGVfj3SiLXexdVkHk0CFnIgxNo9vKIxuaTXa0GPenQU7Kc40Uf2s9IGCJbCzS6DwdLJTJ0O+Ra6CX2S1R21EBVPJNRtz4HkBBXuLFEFUSjwekXRPOCiLyw4vKKs1SIJR/Rsm9MCrA2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn; spf=pass smtp.mailfrom=classfun.cn; dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b=q+9tTc4i; arc=none smtp.client-ip=129.204.178.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=classfun.cn
Received: from [192.168.0.160] (unknown [222.77.7.241])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 923A778841;
	Sat, 18 Jan 2025 20:58:26 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 923A778841
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1737205108;
	bh=WzcoBWAmZuk+L6ZYrQyhx0+ZNUjnzZUyHD63eA/BBT0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=q+9tTc4iXeejAsSSeHoDDuZcTc3pU16vwQ3OECd3EfUkzOCdr9eu+1o53K+L8gp70
	 drVi/Th0WzKB8esVfHkjVP6DmIyfsnhGf+Ay5nxzVG6Exg367bfRysgBsGQy9xD4DK
	 vqUs+8YpdQ+F18HAy14V0B16c8Y+DfASxTAcjOiE=
Message-ID: <000e447d-a1bc-4118-865c-8c0b70146ab6@classfun.cn>
Date: Sat, 18 Jan 2025 20:58:30 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Junhao Xie <bigfoot@classfun.cn>
References: <20250114001411.1848529-4-bigfoot@classfun.cn>
 <20250115023018.15353-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <20250115023018.15353-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2025/1/15 10:30, Chukun Pan wrote:
> Hi,
>> [1] https://github.com/photonicat/rockchip_rk3568_kernel/blob/novotech-5.10/arch/arm64/boot/dts/rockchip/rk3568-photonicat-base.dtsi
> 
> I don't think this link has reference value. I was misled
> by this several times when I wrote dts before.

It really helped me, I wrote first dts with reference to it and other devices
in mainline.
Could there be a better reference link here?

> 
>> +&pcie3x2 {
>> +	max-link-speed = <1>;
>> +	num-lanes = <1>;
> 
> I'm not sure about this.
> This PCIe3.0 x2 is not split.

In the schematics for that slot I saw that it only has a PCIe3.0 x1 connected.
I think maybe max-link-speed = <1> is wrong.
Now modify it to the following, it should look correct?

/* M.2 E-Key for PCIe WLAN */
&pcie3x2 {
	max-link-speed = <3>;
	num-lanes = <1>;
	pinctrl-names = "default";
	pinctrl-0 = <&pcie30x1m0_pins>;
	reset-gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
	vpcie3v3-supply = <&vcc3v3_pcie>;
	status = "okay";
};

> 
>> +&sdmmc1 {
>> ...
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
> 
> pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_clk &sdmmc1_cmd>;

I will correct it.

> 
>> +	wifi: wifi@1 {
>> +		reg = <1>;
> 
> No aliases needed.

I will remove it.

> Other parts LGTM.
> 

Thanks for your review, I will fix all problems in next version!

Best regards,
Junhao


