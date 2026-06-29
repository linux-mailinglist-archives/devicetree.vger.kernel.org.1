Return-Path: <devicetree+bounces-316735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /Zg2E6gfQmp+0gkAu9opvQ
	(envelope-from <devicetree+bounces-316735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:32:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA326D708F
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:32:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RbbcYqVv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316735-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316735-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 085063027B5B
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 07:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85FAC3BBA0A;
	Mon, 29 Jun 2026 07:12:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDCA1A268;
	Mon, 29 Jun 2026 07:12:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782717175; cv=none; b=NDAK+dKBvUO2sR/Lut9OitWRPaGIZ95Jdvx6mk05x+jH03AVQOkrGfRZVFmTa1PXZoxN7F0fgbhYqEJ4dCftl0SU5oubmEyMH2u0xKmZt+Cvrsa9lT+E7k6Fx77iS4ZJANM5nRik3V7rHPTf2mEvzmugxuUBKPCBVPnS7kSRqOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782717175; c=relaxed/simple;
	bh=00yVwLuHm2ne6zSxNI/ns3uW/Q7fjVYu4xykEPUL1Xs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TAh5mE40nSCA55NMN5RL/5dtaPI9cQa/LTJA9nYK62x1PkYRiDjFIk7NLVOQkdN434y6tKg60cJxp2nhL1Hrpl30kinHXUsBCsU45WpLdiCqPI0akWf3ZrhYL2r0YMcV39dNdGvV7sCfVaJ3tziokCqh4/nc2dxTAGMgBtghJrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbbcYqVv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8FB31F000E9;
	Mon, 29 Jun 2026 07:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782717174;
	bh=lvsriI3t3iSP3DY58EeBnMIAqO6ZShyEyigTn5qUvnQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=RbbcYqVv8rd4QbMquaoo9oWErUDsuulIUi23oHVAfT1RUkK0/5lCRJ1q6o4f0Hm8B
	 GSwcDm13faPCYwoRKkQIobCAhfO9ShMIJNyvVgHZIx9II2AZXFyRXJgBTx+FtYyg8A
	 Asb/a4DzTSIFGreSGP+bmy5z46DLVm8welhk4snwR5tWDzSy6+Gy/yLcK1/O2AbNp7
	 7lr+VP90sZcmLZeR9lpH+NKzQTnScMGhorZOAbmn8NEVlm6jYvPYGOhfFGHLUDA93l
	 D7wgRWKm2+1ceM4awGWJF8mk3ES43yxF8tPvwwZ0dzw9OPqHbEnm6Tdxv0+JMBsuQx
	 3rcR/CpyLuA0w==
Date: Mon, 29 Jun 2026 09:12:29 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Coia Prant <coiaprant@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add Graperain G3568
 series
Message-ID: <20260629-fabulous-muskrat-of-romance-cd1bef@quoll>
References: <20260627225755.1710837-2-coiaprant@gmail.com>
 <20260627225755.1710837-4-coiaprant@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260627225755.1710837-4-coiaprant@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316735-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:coiaprant@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:dsimic@manjaro.org,m:jonas@kwiboo.se,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,graperain.cn:url,quoll:mid,bootlin.com:url,graperain.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3AA326D708F

On Sun, Jun 28, 2026 at 06:57:56AM +0800, Coia Prant wrote:
> This documents Graperain G3568 v2 which is a development board based on RK3568 SoC.

"Document"

Please do not use "This commit/patch/change", but imperative mood. See
longer explanation here:
https://elixir.bootlin.com/linux/v6.16/source/Documentation/process/submitting-patches.rst#L94

> 
> This series also have an SBC series with the suffix "box".
> 
> This board is development board series, not SBC series.

Remember to also address Sashiko review.

> 
> Link: https://www.graperain.cn/RK3568/RK3568-Development/ (China)
> Link: https://www.graperain.com/ARM-Embedded-RK3568-Development-Board/ (Global)
> Link: https://image.chukouplus.com/upload/C_153/product_file/20211022/6daddec9e400458816dd4c57ba807fc3.pdf
> 
> Signed-off-by: Coia Prant <coiaprant@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 1a9dde186..873d41bff 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -683,6 +683,12 @@ properties:
>            - const: google,veyron-tiger
>            - const: google,veyron
>            - const: rockchip,rk3288
> +      

Looks like you just added bunch of format-patch and check-patch
warnings...

Best regards,
Krzysztof


