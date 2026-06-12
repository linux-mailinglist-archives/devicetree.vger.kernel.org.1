Return-Path: <devicetree+bounces-310873-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zfiKE9HjK2qKHAQAu9opvQ
	(envelope-from <devicetree+bounces-310873-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 12:47:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDCA678C8B
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 12:47:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=cknow-tech.com header.s=key1 header.b=nJiW+VqX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310873-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310873-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=cknow-tech.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3041231356E3
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 10:47:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C69A3890F8;
	Fri, 12 Jun 2026 10:47:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-187.mta1.migadu.com (out-187.mta1.migadu.com [95.215.58.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E85D9388E4B
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 10:47:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781261240; cv=none; b=mFinnb3JRuLPT1eW3MtK0mywGPqaVkkXkoXrKNNIuAlB7YzqN+P7s1hMRykpmL9iRiKEQholcefMmsnkCGL4G1SHiP1nEyKpl/pJ4MQpx2QXYcNhMWoVd2hhKqZjqxVxpOnd4fVsYmnCwvw6xrQdrRXVTotSD8VmneWeh2vMKgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781261240; c=relaxed/simple;
	bh=f8o/A6U7OoGeCow9Wv3qAA82ZXHwRJiMj5f6rOrMHew=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Mf0iSl5N68wjJ0APWte692BMKH6MKNwFWjkc+68HUscl1hS6Yk+4iPzZDu2ywbXpUhZ8B3EYe7G1UxSXJ89+S/p8/3NmAUOzQZ9loIGT2KiuJSnb4Sh+8C6kFyGgQenpcj1URlzMX8x86C//o1iADHvkpifh0x2OykuwLZT0ppE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=nJiW+VqX; arc=none smtp.client-ip=95.215.58.187
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1781261224;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AuXWeaZUn4HHhcWHF5iQYvYctTIR6OtS7Xwvq7/7gzQ=;
	b=nJiW+VqX35zVJOKKTD3RZfnVhXf37o0na34SuKhiD5lt8l9vWR0CHSOuZR+Ha0sdlnIjU/
	+XAeMLl/FFzWb6Ur0lR4QtjRix/kE2NL+zwkBq3Ym3bvIVGLDiF6ZKcPwBxDL74bhk/tZS
	YqBUrpJ3RfufAvEi+MSAoe3TwDx+GfSmp0uz5FbgkVBSw5HcvuZnwmdvWr3koNvyQGn/SS
	U6mO/OlredwC8eDP9uO9YqU3EuHtQpfIgUFX10tjBIggJcWuWlkKsXdwmQYZE89D/y560N
	8w2ZxsvcHLMt2KVmqR4lauCK3hbXtuoQAykouQkbI8FFOpzweX/kpsByQXZRfg==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 12 Jun 2026 12:46:57 +0200
Message-Id: <DJ70EIJ98W7C.2GFDF1LGW816V@cknow-tech.com>
Cc: "Diederik de Haas" <diederik@cknow-tech.com>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, <devicetree@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <linux-usb@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Fix devices suspend freeze on
 RK3568/RK3566
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Jonas Karlman" <jonas@kwiboo.se>, "Heiko Stuebner" <heiko@sntech.de>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Peter Geis"
 <pgwipeout@gmail.com>, "Michael Riesch" <michael.riesch@collabora.com>
References: <20260609154124.445182-1-jonas@kwiboo.se>
 <20260609154124.445182-3-jonas@kwiboo.se>
In-Reply-To: <20260609154124.445182-3-jonas@kwiboo.se>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[cknow-tech.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:diederik@cknow-tech.com,m:gregkh@linuxfoundation.org,m:devicetree@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-usb@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:jonas@kwiboo.se,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pgwipeout@gmail.com,m:michael.riesch@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-310873-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[kwiboo.se,sntech.de,kernel.org,gmail.com,collabora.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[trustedfirmware.org:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,kwiboo.se:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9CDCA678C8B

Hi Jonas,

On Tue Jun 9, 2026 at 5:41 PM CEST, Jonas Karlman wrote:
> The EHCI/OHCI controller depends on clk_usbphy1_480m being enabled, or
> the system may freeze when registers are accessed, i.e. during suspend
> in ohci_suspend().
>
> Add the missing clk_usbphy1_480m clocks reference to EHCI/OHCI
> controllers to ensure the clock is enabled when ECHI/OHCI registers are
> accessed to prevent a system freeze.
>
> Fixes suspend pm_test issue with EHCI/OHCI devices due to the missing
> clk_usbphy1_480m reference and makes following pm_test modes work:
>
>   echo N > /sys/module/printk/parameters/console_suspend
>
>   echo devices > /sys/power/pm_test
>   echo platform > /sys/power/pm_test
>   echo processors > /sys/power/pm_test
>   echo core > /sys/power/pm_test
>
>   echo mem > /sys/power/state

I did quite a few of ``echo mem > /sys/power/state`` while switching betwee=
n
the various pm_test options on my PineTab2.

On my 7.1-rc7 kernel without this patch that resulted at some point in endl=
ess
'rk_iommu' errors and the only way out of that was a hard power down via th=
e
power button.
On my 7.1-rc7 kernel with this patch, I have not been able to trigger such =
an
issue. Over multiple boots.=20

So feel free to include my

Tested-by: Diederik de Haas <diederik@cknow-tech.com>

FTR: I'm still able to trigger resume issues, so more is needed to make my
original tests [1] succeed as well. But I always suspected there were sever=
al
issues at play including the display pipeline.
It looks like this patch fixes at least one of them.

Thanks :-)

Cheers,
  Diederik

[1] https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/31265

> Fixes: 91c4c3e06a25 ("arm64: dts: rockchip: add usb2 nodes to rk3568 devi=
ce tree")
> Fixes: 78f7186095db ("arm64: dts: rockchip: rename and sort the rk356x us=
b2 phy handles")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/b=
oot/dts/rockchip/rk356x-base.dtsi
> index a5832895bd39..c930a6fd6ea0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> @@ -321,44 +321,44 @@ its: msi-controller@fd440000 {
>  	};
> =20
>  	usb_host0_ehci: usb@fd800000 {
> -		compatible =3D "generic-ehci";
> +		compatible =3D "rockchip,rk3568-ehci", "generic-ehci";
>  		reg =3D <0x0 0xfd800000 0x0 0x40000>;
>  		interrupts =3D <GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>;
>  		clocks =3D <&cru HCLK_USB2HOST0>, <&cru HCLK_USB2HOST0_ARB>,
> -			 <&cru PCLK_USB>;
> +			 <&cru PCLK_USB>, <&usb2phy1>;
>  		phys =3D <&usb2phy1_otg>;
>  		phy-names =3D "usb";
>  		status =3D "disabled";
>  	};
> =20
>  	usb_host0_ohci: usb@fd840000 {
> -		compatible =3D "generic-ohci";
> +		compatible =3D "rockchip,rk3568-ohci", "generic-ohci";
>  		reg =3D <0x0 0xfd840000 0x0 0x40000>;
>  		interrupts =3D <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
>  		clocks =3D <&cru HCLK_USB2HOST0>, <&cru HCLK_USB2HOST0_ARB>,
> -			 <&cru PCLK_USB>;
> +			 <&cru PCLK_USB>, <&usb2phy1>;
>  		phys =3D <&usb2phy1_otg>;
>  		phy-names =3D "usb";
>  		status =3D "disabled";
>  	};
> =20
>  	usb_host1_ehci: usb@fd880000 {
> -		compatible =3D "generic-ehci";
> +		compatible =3D "rockchip,rk3568-ehci", "generic-ehci";
>  		reg =3D <0x0 0xfd880000 0x0 0x40000>;
>  		interrupts =3D <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
>  		clocks =3D <&cru HCLK_USB2HOST1>, <&cru HCLK_USB2HOST1_ARB>,
> -			 <&cru PCLK_USB>;
> +			 <&cru PCLK_USB>, <&usb2phy1>;
>  		phys =3D <&usb2phy1_host>;
>  		phy-names =3D "usb";
>  		status =3D "disabled";
>  	};
> =20
>  	usb_host1_ohci: usb@fd8c0000 {
> -		compatible =3D "generic-ohci";
> +		compatible =3D "rockchip,rk3568-ohci", "generic-ohci";
>  		reg =3D <0x0 0xfd8c0000 0x0 0x40000>;
>  		interrupts =3D <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
>  		clocks =3D <&cru HCLK_USB2HOST1>, <&cru HCLK_USB2HOST1_ARB>,
> -			 <&cru PCLK_USB>;
> +			 <&cru PCLK_USB>, <&usb2phy1>;
>  		phys =3D <&usb2phy1_host>;
>  		phy-names =3D "usb";
>  		status =3D "disabled";


