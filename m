Return-Path: <devicetree+bounces-306481-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xz4iGN6MIGre4wAAu9opvQ
	(envelope-from <devicetree+bounces-306481-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 22:21:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4E563B15D
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 22:21:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=freeshell.de header.s=s2025 header.b=MnHl7vsX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306481-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306481-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=freeshell.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30DF73029E74
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 20:18:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B79FD3D9DA0;
	Wed,  3 Jun 2026 20:18:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE76639A4BA;
	Wed,  3 Jun 2026 20:18:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780517936; cv=none; b=b5WrfqXfN3/OL/8h6Xj8/ObI5a+7CzIKxQGMDlwUAWufdL6HP/4eK+XrvDUarjDmUaMTLXExRH0H9YiwMJX6ZmpAbBsHbST5i7/hLvOkCj1x78H0FfIw2KlE9iOxr4stPcj0m+nDrIYUpYWI4fldGKSZVUCbowv8ZH6cFUdRvzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780517936; c=relaxed/simple;
	bh=XYunRdMmAzqUsQMnnJO4P8x+6tdzgJ5ccjupNfcQffo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CH/fH/HWdH8rLzpyK07j5Gh6kV1q93BpIl/PaarBgswiPVfC5CPPqCnMmW+puoNsHqFGCwsWDQrROKk/Ne5NY43zCep6sA1bp/rP4jcAlZcN7i6RSgiq2nn2M7a6Ca0qXtBRHqnMfwXRWYHl5Qk35DLGJ/xhTLIe5QEhorAAhfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=MnHl7vsX; arc=none smtp.client-ip=116.202.128.144
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1780517888;
	bh=SVSZqLrNktqGcyxLR2Ua1Ku73FMd2lVYF7WXhi+1RiI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=MnHl7vsXPkKjoE61gw+tZRPVMDzdX7/vPbpNvbu9Y2zweKgL2bKl2L+/VcQ1/Zr8u
	 rWrIDcohxwQSN0yzkE/ewXx46WfqMjjwm4ZWKtzJGS+opUH22IrpsNS1Uc349f7zya
	 iv04qny+mPrK9QFjK0zcRjWsTNe4ROMYfi6vsc3cJK7aSQdd9hfzk5kWO14VQAWSXH
	 X9v1vzvrDLukFbdCo42/zX2anRQgV8bvO8pbCLMGf8fHMykXHjI+mJ+qy03LWXXAXm
	 4hySMNOYCVyGa01QTIVp7aLOFBLj0dFqbqVhpfqmjZl8oOIlS4K+/oOEmgMGy2Ra5o
	 ZeYyO723JfsqA==
Received: from [IPV6:2605:59ca:364f:d400:1b91:6b30:22c2:fffc] (unknown [IPv6:2605:59ca:364f:d400:1b91:6b30:22c2:fffc])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id 0F5B7B220A94;
	Wed,  3 Jun 2026 22:18:05 +0200 (CEST)
Message-ID: <9585b7c7-100c-4d77-bed1-d2b6b25b3940@freeshell.de>
Date: Wed, 3 Jun 2026 13:17:56 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dts: riscv: spacemit: k3: Fix I/O power settings
To: Yixun Lan <dlan@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Inochi Amaoto <inochiama@gmail.com>, Han Gao <gaohan@iscas.ac.cn>,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20260518-07-dts-pinctrl-io-power-v1-1-abe19c14a726@kernel.org>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <20260518-07-dts-pinctrl-io-power-v1-1-abe19c14a726@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[freeshell.de,reject];
	R_DKIM_ALLOW(-0.20)[freeshell.de:s=s2025];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306481-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[e@freeshell.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:dlan@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:inochiama@gmail.com,m:gaohan@iscas.ac.cn,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,iscas.ac.cn,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[e@freeshell.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[freeshell.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,infradead.org:url,infradead.org:email,freeshell.de:mid,freeshell.de:from_mime,freeshell.de:dkim,iscas.ac.cn:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AA4E563B15D

On 5/18/26 13:58, Yixun Lan wrote:
> SpacemiT K3 SoC support dual-voltage I/O power domain, while initially
> configure to 3.3v, and need to access register from APBC space to switch
> to 1.8v domain.
> 
> Fix the GMAC0's I/O pins 1.8v switch failure that will result a broken
> ethernet driver.
> 
> Fixes: d8944577496b ("riscv: dts: spacemit: k3: add pinctrl support")
> Reported-by: Han Gao <gaohan@iscas.ac.cn>
> Signed-off-by: Yixun Lan <dlan@kernel.org>
> ---
> This issue is reported by Han while booting kernel from UFS storage, and
> found the ethernet driver is broken, we can see the message as below:
> 
>  [    1.635881] mdio_bus stmmac-0: MDIO device at address 1 is missing.
> 
> This problem is caused by GMAC driver that unable to configure I/O power
> domain to 1.8v, which leads to the MDIO communication failure.
> 
> We didn't find this problem due to using tftp(net) to load kernel images
> while bootloader already configured the I/O power.
> ---
>  arch/riscv/boot/dts/spacemit/k3.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/riscv/boot/dts/spacemit/k3.dtsi b/arch/riscv/boot/dts/spacemit/k3.dtsi
> index 815debd16409..2b0bf9cd755b 100644
> --- a/arch/riscv/boot/dts/spacemit/k3.dtsi
> +++ b/arch/riscv/boot/dts/spacemit/k3.dtsi
> @@ -803,6 +803,7 @@ pinctrl: pinctrl@d401e000 {
>  			clocks = <&syscon_apbc CLK_APBC_AIB>,
>  				 <&syscon_apbc CLK_APBC_AIB_BUS>;
>  			clock-names = "func", "bus";
> +			spacemit,apbc = <&syscon_apbc>;
>  		};
>  
>  		uart10: serial@d401f000 {
> 
> ---
> base-commit: 254f49634ee16a731174d2ae34bc50bd5f45e731
> change-id: 20260518-07-dts-pinctrl-io-power-1bd33bfe5894
> 
> Best regards,
> --  
> Yixun Lan <dlan@kernel.org>
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

Hi Yixun,

This property on its own does not seem to be enough to get the ethernet
network port functional on Sipeed K3 Pico-ITX 32GB model that I have,
when it is loading Debian 13 Trixie debian-installer netinst initramfs
(with cross-compiled Linux kernel and modules from -next 20260602).

Reproducer instructions for cross-compiling and debian-installer netinst
initramfs modification at:
https://wiki.debian.org/InstallingDebianOn/SpacemiT/K3PicoITX?action=recall&rev=2

In addition to those instructions above I am using within the factory
pre-installed vendor U-Boot the following commands to try what your
patch does:

fdt addr $fdt_addr_r
fdt resize
fdt header get filesize totalsize
fdt rm /soc/pinctrl@d401e000 spacemit,apbc
fdt get value spacemit_apbc_phandle /soc/system-controller@d4015000 phandle
fdt set /soc/pinctrl@d401e000 spacemit,apbc <$spacemit_apbc_phandle>

I then verify within Linux environment the presence of
/sys/firmware/devicetree/base/soc/pinctrl@d401e000/spacemit,apbc

The same Linux kernel and modules as modified into the installer then do
have functional ethernet networking on that board if running from the
installed system and with the spacemit,apbc devicetree property. Is this
a dependency or ordering issue of the modules, or the Kconfig options?

Also, the more general problem is that cycling rmmod and modprobe on the
ethernet networking related modules fails:

rmmod dwmac_spacemit
rmmod stmmac_platform
rmmod stmmac
rmmod mdio
modprobe dwmac_spacemit

[ 1487.618517] mdio_bus stmmac-0: MDIO device at address 1 is missing.

[ 1487.623815] spacemit-dwmac cac80000.ethernet end0: renamed from eth0

rmmod dwmac_spacemit
rmmod stmmac_platform
rmmod stmmac
rmmod mdio
modprobe dwmac_spacemit

[ 1539.374486] spacemit-dwmac cac80000.ethernet end0: cannot attach to
PHY (erro
r: -ENODEV)
[ 1615.299451] spacemit-dwmac cac80000.ethernet end0: stmmac_dvr_remove:
removin
g driver

Please advise how to troubleshoot?  Thanks,

- E Shattow

