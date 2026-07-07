Return-Path: <devicetree+bounces-321790-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NowuGm+0TGrJoQEAu9opvQ
	(envelope-from <devicetree+bounces-321790-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 10:10:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8202718ED3
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 10:10:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=A9bjJadL;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321790-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321790-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 526B8306FF6C
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 07:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCE7E37D10E;
	Tue,  7 Jul 2026 07:56:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C47830E0E9;
	Tue,  7 Jul 2026 07:56:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783411006; cv=none; b=UPmUSwsGjWa27JNyk4xcZHMNWuZ9H5UfTypGG1TiUtGMGN4WhDOXm7vQOPc7ZfUMk7y4dvvBJaHWpS2g6VxTnIPO2Gy7xPTSJ68JkPPoXTCwyZSifs1jscm697tQExsuHsWQKTCs0ucUqoOzechHrH/1AxI4Ze5wfj4L97th3kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783411006; c=relaxed/simple;
	bh=t45HS3VqzLs2gZdMxEqbLZ8AZAO09G1Hi91tXQsUgyk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=evtztG6fFqd7AoxPrivwl5H3rzynKIyCF7t71ARm7XXs/xoyg1fFGJaeNw9wn8swDoW6CqUOkVIFdLWs+D13hZHi/1DRL39SpT1B3Mx/Sog7FhL1QpoXRR//1t0MHVbwxkeNFWZA0rEyeErvJ2sKbRZSGzxXyE5h0FE+r5zdFCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9bjJadL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 245F11F000E9;
	Tue,  7 Jul 2026 07:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783411005;
	bh=qaJDMFyR+9jLQSxF03msoSIkTshFmDA4EhMhCDFnmjE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=A9bjJadLxG7fn5qzOI2Qt9OPM+U3hP3p5LM/75sg6b45yzGpoyX8tnEdXaOuB4HRh
	 /bwASg9dpZ5oFrf+ISXo4aN3d3Z9jl070OUQMmTjx10FdBHbb6nueTTppRJelqTRBN
	 A7PJopGnCYOuFPjxQQTgbWlSzbytw0HVdLLLN6N3DGcs+kO6TK0uM75Z4E3o0zTH8O
	 hznV7A8UruoBehq1CXMx92z33Q3Lr5YDSwaK9KLxSZLwZayKvIYX32AkQ26YuCBKU4
	 U44d6P9KWlHlzB4i6z8s/MiB75PZPiu7Jr8RPAZAS8hCVHGJ8+AGs7NLVZm7Gvm+mS
	 3+GlhJSgmoziQ==
Date: Tue, 7 Jul 2026 07:56:42 +0000
From: Yixun Lan <dlan@kernel.org>
To: Aurelien Jarno <aurelien@aurel32.net>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"open list:RISC-V ARCHITECTURE" <linux-riscv@lists.infradead.org>,
	"open list:RISC-V SPACEMIT SoC Support" <spacemit@lists.linux.dev>
Subject: Re: [PATCH v2 5/5] riscv: dts: spacemit: improve RTL8211F PHY
 configuration on K3 Pico-ITX board
Message-ID: <20260707075642-GKG35811@kernel.org>
References: <20260623204431.498700-1-aurelien@aurel32.net>
 <20260623204431.498700-6-aurelien@aurel32.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260623204431.498700-6-aurelien@aurel32.net>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321790-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:aurelien@aurel32.net,m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A8202718ED3

Hi Aurelien,

On 22:43 Tue 23 Jun     , Aurelien Jarno wrote:
> Vendor kernel enabled ALDPS (Advanced Link Down Power Saving) on the
> RTL8211F PHY to save power when link down.
for ALDPS, tested here do noticed it will configure RTL8211F PHY's
 RTL8211F_PHYCR1 register via rtl8211f_config_aldps()

And plug out then in the cable, the network(eth0) will come back and still
works fine, although I have no power consumption meter to test, but I think
 it deserves:

Tested-by: Yixun Lan <dlan@kernel.org>

> 
> Vendor kernel also disabled the 125MHz clkout clock signal, and indeed
> the schematics confirms that it only goes to a test point (TP14), so
> let's do the same.
> 
> Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
> ---
>  arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> index bf64b6c6f867f..e12d798b48a49 100644
> --- a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> +++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> @@ -234,6 +234,8 @@ phy0: phy@1 {
>  			reset-gpios = <&gpio 0 15 GPIO_ACTIVE_LOW>;
>  			reset-assert-us = <10000>;
>  			reset-deassert-us = <10000>;
> +			realtek,aldps-enable;
> +			realtek,clkout-disable;
>  		};
>  	};
>  };
> -- 
> 2.53.0
> 

-- 
Yixun Lan (dlan)

