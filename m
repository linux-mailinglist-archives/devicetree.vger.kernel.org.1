Return-Path: <devicetree+bounces-126666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EF09E2727
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 17:22:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1EF9B169889
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 16:19:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DB681F8AC0;
	Tue,  3 Dec 2024 16:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="aN5UlgvC"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE601F7591
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 16:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733242741; cv=none; b=PW6ggkXXf9CG9grmkNREndm082sb0QejeORMCtq/r6fYjcBVFw84lc860e8bATUqx3+M2OX1t5lSnJgBHKQApqNYyAz+F9HrTJnArHgDgQif4IgeWgIJ8Mx541JEg51DTdfJuUZdhELLys22VuS3298yADEBNp6BBtVe9yyGvSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733242741; c=relaxed/simple;
	bh=ksvp9AG2nKQ7wjbNa2w18OypJ4On19JMydxUrQdqlJ8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=e9xUj6bBkULxSYCZ2nrtIy2Gefm3izxSfqH83iRl/iPpmb2TobT7kceiu665tgpfRDCE+sNnNp89RNT1hm5nAuUzUObU2ZX5tUs6T3dL4uDeQq7H3rgNe6hmp7iEjNzEwoXdZ0GPl2GoLFF1U/pRZvqUroZyZY2lVIt5Cf3D4ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=aN5UlgvC; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=yhaxMPAd2c0afvX2792EZE1r3sNxolxn6w2os8f33rk=; b=aN5UlgvC6UhPoHoKuCxe+CBzRJ
	X56HsU2XN4gLFuNKGUyLoLEeqpGssgwLpvIZnSg/pOYP429/mWDQPDH+5KkCEPFDh94tB//daRabv
	xxpABiJ/xznG1J4D9u1NL4x4RmEjZm2CkOkMXUSE57rEPSd7+0nNL5sWDw6nMexNwEXg1TyLCDFjs
	51rdlbR9s2GomQWKByejjGczSrex8H8breUDnrzfwmPJhWn7EmwVjW7gPgnK1Eh337PCy6x55tiJd
	BqMM4wL1b8A4o1O9/0RzJn/gVKZPv5Y/fAiqQ6Mulluz2FbX6nN2DeWAcwOD8D8HBrVEm3l3U1qD3
	LfNpAujg==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tIVbk-0003L9-SN; Tue, 03 Dec 2024 17:18:40 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
 inindev@gmail.com, cristian.ciocaltea@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>
Subject:
 Re: [PATCH 1/2] arm64: dts: rockchip: use Type-C port as USB HOST port for
 Radxa ROCK 5B
Date: Tue, 03 Dec 2024 17:18:39 +0100
Message-ID: <18640241.sWSEgdgrri@diego>
In-Reply-To: <20241130014043.12942-1-naoki@radxa.com>
References: <20241130014043.12942-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Samstag, 30. November 2024, 02:40:42 CET schrieb FUKAUMI Naoki:
> Type-C port is dual-role USB 3.0 port. add usb_host0_xhci and phy
> nodes to use it as HOST port.

This needs a bit more explanation on _why_ you're statically
setting this to host-mode.

Heiko

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 0ec4992b43cd..c5776e3b4aab 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -840,6 +840,14 @@ &tsadc {
>  	status = "okay";
>  };
>  
> +&u2phy0 {
> +	status = "okay";
> +};
> +
> +&u2phy0_otg {
> +	status = "okay";
> +};
> +
>  &u2phy1 {
>  	status = "okay";
>  };
> @@ -883,6 +891,11 @@ &usb_host0_ehci {
>  	status = "okay";
>  };
>  
> +&usb_host0_xhci {
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
>  &usb_host1_ehci {
>  	status = "okay";
>  };
> @@ -900,6 +913,10 @@ &usb_host2_xhci {
>  	status = "okay";
>  };
>  
> +&usbdp_phy0 {
> +	status = "okay";
> +};
> +
>  &usbdp_phy1 {
>  	status = "okay";
>  };
> 





