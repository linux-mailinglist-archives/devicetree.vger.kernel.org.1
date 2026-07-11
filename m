Return-Path: <devicetree+bounces-324757-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XUvgCbruUWpvKgMAu9opvQ
	(envelope-from <devicetree+bounces-324757-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 09:20:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D37F740B62
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 09:20:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=freeshell.de header.s=s2025 header.b=iQSoRTtQ;
	dmarc=pass (policy=reject) header.from=freeshell.de;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324757-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324757-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 02B34301CCF5
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 07:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0461A3612D5;
	Sat, 11 Jul 2026 07:20:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF6D1A0BF3;
	Sat, 11 Jul 2026 07:20:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783754421; cv=none; b=RJOw21/KXQX/u39vjqjaT1ml5Abxv6nIfSp3kuAu5CJPmkg3icob+2RumeM1BH7tPTUThUOY7lsswpnlAaTZ08V9/IR2i0uov38HBKsYeurf5xocVart7frMJdMsmhqGCd69IsuvUNLHJIuxVybk80JKSM2W3X89jMBOwsFFJBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783754421; c=relaxed/simple;
	bh=5/IVMg7m+YUeqqaYrkeep9Y4dUU+S0uzEjToK5eYRHY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t+meOnyM3+Hl56tC8/XIAuXnR/jI3NwXxpYlZxKr9xk1dW70w5krudR4IE5i2w5ZOAMmVMe4z8bqgHV4ZDDuP5rT1CMTSU9ElBBJztBPvrpWBrOJZDFBMQeFcap1htOHR+a2Q3/fmwvuPqj6IOv4UBusEXCzDNu1WSyM6erf9EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=iQSoRTtQ; arc=none smtp.client-ip=116.202.128.144
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1783754367;
	bh=ngWbz8DrOWdmcWpLkZogRY7ab+fCnSeo75BW8o2EQes=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iQSoRTtQZRu/nW1sc6xNC538QoXSWRk9gIIv9Cp3eRJ9B2AIb+II9nmI2QYNYcGJZ
	 nATa6FvHJO86pldUgN2951/HhzAw6O5l3h2RKu6gsWvoNdDC3kWLt74trNQL3w4/6j
	 dWhG/bcZ2VxuQYPlkBBILuPsCrOpjDHlgXprU4Y6B/BU/vcxuoZs7eOPeOnIY8Taap
	 lRk09eUVROo+3p0S91KVd0UaQrz9IH/c5fzz4IGXvbHC15fBfWuflAtwfd+owb5cXB
	 ZpAxTcMkpOFhpeeaVAUdTKVFkwwJoZtrS9hBPjC9zwaJtoNL8Wg46WFlAnDfSVA6zC
	 mDgdgi/kjvA6g==
Received: from [IPV6:2605:59ca:364f:d400:1b91:6b30:22c2:fffc] (unknown [IPv6:2605:59ca:364f:d400:1b91:6b30:22c2:fffc])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id DFDCCB2215A9;
	Sat, 11 Jul 2026 09:19:24 +0200 (CEST)
Message-ID: <65498313-582e-4891-9468-a38a76cb4626@freeshell.de>
Date: Sat, 11 Jul 2026 00:19:15 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] riscv: dts: spacemit: Add enough deassert time for
 the PHY on PICO ITX
To: Inochi Amaoto <inochiama@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
References: <20260710063314.1030249-1-inochiama@gmail.com>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <20260710063314.1030249-1-inochiama@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[freeshell.de,reject];
	R_DKIM_ALLOW(-0.20)[freeshell.de:s=s2025];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324757-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	FORGED_SENDER(0.00)[e@freeshell.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:inochiama@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlan@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:dlan@gentoo.org,m:looong.bin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:looongbin@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[freeshell.de:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[e@freeshell.de,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gentoo.org,gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6D37F740B62

Hello Inochi,

On 7/9/26 23:33, Inochi Amaoto wrote:
> RTL8211F require at least 50ms deassert to guarantee the register
> access, 10ms is only enough for the PHY reset.
> 
> Fixes: 74657a376960 ("riscv: dts: spacemit: Add ethernet device for K3")
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---
>  arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> index 1eb5abbc61f9..b2a7d2d0d3a8 100644
> --- a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> +++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> @@ -200,7 +200,7 @@ phy0: phy@1 {
>  			reg = <1>;
>  			reset-gpios = <&gpio 0 15 GPIO_ACTIVE_LOW>;
>  			reset-assert-us = <10000>;
> -			reset-deassert-us = <10000>;
> +			reset-deassert-us = <50000>;
>  		};
>  	};
>  };

applying this as vendor pre-installed u-boot runtime command modifying
Fdt as...

load usb 0:1 $fdt_addr_r
/debian-installer/device-tree-custom/spacemit/k3-pico-itx.dtb
load usb 0:1 $kernel_addr_r /debian-installer/riscv64/linux-custom
load usb 0:1 $ramdisk_addr_r /debian-installer/riscv64/initrd-custom.gz
fdt addr $fdt_addr_r
fdt resize
fdt rm /soc/ethernet@cac80000/mdio/phy@1 reset-deassert-us
fdt set /soc/ethernet@cac80000/mdio/phy@1 reset-deassert-us <50000>
env set bootargs 'initrd='$ramdisk_addr_r',0x'$filesize'
console=ttyS0,115200'
ping 127.0.0.1; bootefi $kernel_addr_r $fdt_addr_r

...before booting 7.2-rc2 and debian-installer initrd is successful to
allow debian-installer hardware probe to continue with the network
device, on Sipeed K3 Pico ITX. I don't know if that is a full fix for
the problem I observed with rmmod/modprobe cycle of network module but
at least it is resolving this trouble observed from debian-installer
usage with K3 Pico ITX.

Non-functional values are 10000 25000 30000 35000 39000 39750 39700
39600 39585 39581.
Functioning values are 39582 39583 39580 39575 39550 39500 40000 50000.

For this particular hardware I have thus observed an exact minimum
required delay value of 39582.

Tested-by: E Shattow <e@freeshell.de>

