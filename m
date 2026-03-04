Return-Path: <devicetree+bounces-271210-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPFeBCd7qGmHuwAAu9opvQ
	(envelope-from <devicetree+bounces-271210-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:34:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D392066C3
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:34:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D275B307B65E
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 18:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D50F73D3CFD;
	Wed,  4 Mar 2026 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="bfMBbmSK"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDFC337998B
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 18:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772648753; cv=none; b=XPNxCHtqfSmcROyCFqtk4gj8pz2JFPRkrteOO3rty7As6OukLn94W5khK52gyin24Uuxg5ypN7J80bzET6EHPoKAoD51u9CgYWl4El5HhhSFqByDVQcF7WUfEXNMSNSIJu8UeS17VuqTVdYzrXhCumn//bcnB0ttOX/DbqGzPxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772648753; c=relaxed/simple;
	bh=xlBgkcUqCWFYqZ5/ceGtSRgml2VTR1EsefuBfXiaOr0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=GR9GBczLYYvQhEx68VRgFT4Y6RFFLoNktOY9DTS9GqwQebc7vs27XzA1oZcpGuk5OhVZSuKyS1XgJ2kRJh5aFInVxsWXn8EkALk8loiihJNneYn82nIecv+Ta7KOIoLiyQaxAsMgHnvjBk1sh26ZXswAWIiKDP6J9u2OlOlT7C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=bfMBbmSK; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id BA5BB240101
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 19:25:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.net; s=2017;
	t=1772648748; bh=8yhiqCB96GTqqa0h+fYnytE0lAq+2YDH+/Rk+pdxEpo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 From;
	b=bfMBbmSKox3AyKDidM55DRPG8nfBJSMhQx3nwkQwS/iD0HPW37FcxZY2GTMksGFHZ
	 Iq+/4kg4blKc8mv1Sq3MUX7V5tAIeJTpbJ0TztsMSquGTqjBNRXKV3Yn3AFXewq9+h
	 M/2qpa8CVAldmvl2AH4zBH0ez3NsHs00YTkac7dKHgJQDLfbL5Fpnkt2UzRD+VjFT/
	 Q32owKzgcvjCkdaW4taccfDDifY0pNiZJkgZNl4aCQxD0xiVU4jntyFo7NplJ4HmI1
	 ffQMfG8l6q3u2vJvIxjV4VNQDgHmpCIl8KCxTrYpIlVOKa+Ej62W8CoV3RGWZ7enwb
	 +t14hinm3Ja4A==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4fR1Lz08XBz9rxD;
	Wed,  4 Mar 2026 19:25:46 +0100 (CET)
From: Charalampos Mitrodimas <charmitro@posteo.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de,  robh@kernel.org,  krzk+dt@kernel.org,
  conor+dt@kernel.org,  devicetree@vger.kernel.org,
  linux-arm-kernel@lists.infradead.org,
  linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: Fix the trackpad supply on
 rk3288-veyron-jerry
In-Reply-To: <20260304164448.1024410-1-festevam@gmail.com>
References: <20260304164448.1024410-1-festevam@gmail.com>
Date: Wed, 04 Mar 2026 18:25:48 +0000
Message-ID: <87a4wnmoye.fsf@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Queue-Id: 83D392066C3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[posteo.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[posteo.net:s=2017];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-271210-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charmitro@posteo.net,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[posteo.net:+];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,posteo.net:dkim,posteo.net:email,posteo.net:mid]
X-Rspamd-Action: no action

Fabio Estevam <festevam@gmail.com> writes:

> According to hid-over-i2c.yaml, the correct name for the 3.3V supply
> is 'vdd-supply'.
>
> Fix it accordingly.
>
> This fixes the following dt-schema warning:
>
> 'vcc-supply' does not match any of the regexes: '^pinctrl-[0-9]+$'
>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts b/arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts
> index 6894763979f0..0bf03b1ff2ab 100644
> --- a/arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts
> +++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts
> @@ -488,7 +488,7 @@ trackpad@2c {
>  		interrupts = <RK_PA3 IRQ_TYPE_EDGE_FALLING>;
>  		reg = <0x2c>;
>  		hid-descr-addr = <0x0020>;
> -		vcc-supply = <&vcc33_io>;
> +		vdd-supply = <&vcc33_io>;
>  		wakeup-source;
>  	};
>  };

Reviewed-by: Charalampos Mitrodimas <charmitro@posteo.net>

