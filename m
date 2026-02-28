Return-Path: <devicetree+bounces-269541-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHc2DBzVomkY6AQAu9opvQ
	(envelope-from <devicetree+bounces-269541-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:44:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FC21C2991
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:44:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 310E03031AEE
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:44:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9DAD4279E5;
	Sat, 28 Feb 2026 11:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="CMC5iq29"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA12D2F25F0
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 11:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772279065; cv=none; b=XVBmkqoiHyewps0FU9ImTnmdumgiFiqUudxgHknJbNRbnzNTs0yda0j3va9+SiOvenNVPL9Q6xbNFtz9HXh9l+JMAYp++2nxOdLzHPgN7nJefJePBBepVIf1tpN4CFIhmyHe5Cxv9Wwvw+DdGPXhAnOj0UZ5wEBaMVwsvVjZ1ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772279065; c=relaxed/simple;
	bh=MZnRIGUcBKD1ZzMC2nIziJFNhFQJbnZoUOOTrhjvM18=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=mZz/0PhU8yz3NfgMBxdBoYO9EHFxLq+8RZ9Qb1r5ZxUOEEzwPSekqZWj3L8JMzvg1wZm2OwlNiDS72bq9JoD41wBIKtCD+HtWsTdd0ACq7mWLSWktp2h9ifRA9KcjQCyVF/O39HI/Fnzi3sh8FzhQVFgrHr9TO/ujnuFKV0iiL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=CMC5iq29; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id AF8E6240104
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 12:44:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.net; s=2017;
	t=1772279061; bh=OiQ3Yebcw45RCZupvgaV4twZnj9RwShWRtrLmqKJBP8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 From;
	b=CMC5iq29tOORdyqhGzq13sV3qgguA1IXKdZWt/bRuQboOiPw9Aw346EoSPuEFRups
	 7NwpFYstRcMKMUwQPR3/34akskOrMTQTfQyw5JFEySn223NPFiPF8fCOUfWisJX8Rc
	 XT/A/eSbeUCbCED3CK/g1vYMi7hwtVhIrb/TYOwyAguqVPmG+xoFF7pPxx8lFhAEVF
	 L4bIFw4MdF4zX8ULAXtaUP1Sa4t5gUKJgRIXvC2tviJGyb65F+9DFAeIaFroQ8lN8z
	 UrG8ZO8Omtggn8FzeQMAw2IHPAgef/GyMg+a7fd+K/SQPH/h0wPS97diBXUnppKfUW
	 h4EE+yfnK+TBA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4fNNdc20Wwz6tw4;
	Sat, 28 Feb 2026 12:44:20 +0100 (CET)
From: Charalampos Mitrodimas <charmitro@posteo.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de,  robh@kernel.org,  krzk+dt@kernel.org,
  conor+dt@kernel.org,  devicetree@vger.kernel.org,
  linux-arm-kernel@lists.infradead.org,
  linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: rk3036: Move PHY reset to
 ethernet-phy node
In-Reply-To: <20260228013257.256973-1-festevam@gmail.com>
References: <20260228013257.256973-1-festevam@gmail.com>
Date: Sat, 28 Feb 2026 11:44:21 +0000
Message-ID: <87ldgdjdnx.fsf@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[posteo.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[posteo.net:s=2017];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[posteo.net:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269541-lists,devicetree=lfdr.de];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[charmitro@posteo.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_PROHIBIT(0.00)[3.147.135.0:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.947];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: 85FC21C2991
X-Rspamd-Action: no action

Fabio Estevam <festevam@gmail.com> writes:

> According to rockchip,emac.yaml, 'phy-reset-duration' and 'phy-reset-gpios'
> are not valid properties.
>
> Use the valid 'reset-gpios' and 'reset-assert-us' properties under
> the etherne-phy node.
>
> This fixes the following dt-schema warning:
>
> Unevaluated properties are not allowed ('phy-reset-duration',
> 'phy-reset-gpios' were unexpected)
>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  arch/arm/boot/dts/rockchip/rk3036-evb.dts   | 4 ++--
>  arch/arm/boot/dts/rockchip/rk3036-kylin.dts | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)

Does this need a "Fixes:" tag (haven't checked)? And could stable benefit
from this?


Cheers,
C. Mitrodimas

>
> diff --git a/arch/arm/boot/dts/rockchip/rk3036-evb.dts b/arch/arm/boot/dts/rockchip/rk3036-evb.dts
> index becdc0b664bf..c8100dc4c7ce 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036-evb.dts
> +++ b/arch/arm/boot/dts/rockchip/rk3036-evb.dts
> @@ -16,8 +16,6 @@ memory@60000000 {
>  
>  &emac {
>  	phy = <&phy0>;
> -	phy-reset-duration = <10>; /* millisecond */
> -	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emac_xfer>, <&emac_mdio>;
>  	status = "okay";
> @@ -28,6 +26,8 @@ mdio {
>  
>  		phy0: ethernet-phy@0 {
>  			reg = <0>;
> +			reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>;
> +			reset-assert-us = <10000>;
>  		};
>  	};
>  };
> diff --git a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> index ae2f84a4e922..bc6e6468fcc4 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> +++ b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> @@ -102,8 +102,6 @@ &acodec {
>  
>  &emac {
>  	phy = <&phy0>;
> -	phy-reset-duration = <10>; /* millisecond */
> -	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emac_xfer>, <&emac_mdio>;
>  	status = "okay";
> @@ -114,6 +112,8 @@ mdio {
>  
>  		phy0: ethernet-phy@0 {
>  			reg = <0>;
> +			reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>;
> +			reset-assert-us = <10000>;
>  		};
>  	};
>  };

