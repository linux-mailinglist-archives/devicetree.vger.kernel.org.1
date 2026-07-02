Return-Path: <devicetree+bounces-319027-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WdDGDDgGRmoAIAsAu9opvQ
	(envelope-from <devicetree+bounces-319027-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 08:33:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD316F3D47
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 08:33:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="dsWq5/co";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319027-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319027-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D17D3301112E
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 06:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0F553603E9;
	Thu,  2 Jul 2026 06:33:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424A835F615;
	Thu,  2 Jul 2026 06:33:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782973994; cv=none; b=puTTG+FISSrmLVXdSYr8WKCQBkuECj42tl+rRyRaaKPCenSUZCFuBP1pzacRrHMDBZvKDsfHiviOeLN/G3qfqsrLw8HNduZ1a6HE0scNO+ZRwrYLg12JkXt8naPS2m528mM3ji1RBfuD9jmSHmUBYj9Aq2qzuETTWpankpLrOv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782973994; c=relaxed/simple;
	bh=wZx63kGmZqpkioXrjypKTewkI0ErO0odVwQKhO3uFoQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dYbdL9hwThZ7ftdSPRnuD3IQZZO7HvxtK+FOtiorZbRf83RZCgKQMZlgTKH71x2gVs6l/Hk9SwXxDKrCuUQCPR1Xa61rpQS/T2Lc29SwFS7zaloAzbwenKzGrPkvQK75E8zwdL/VynBz6vgNhcIx0Cifxy8rdCAZloON1WR62X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsWq5/co; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CB381F000E9;
	Thu,  2 Jul 2026 06:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782973992;
	bh=7G57MBBgwmHcxmcMqRtIxBuKOiHfjxyItxFaFc5ITt0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dsWq5/cof9r30xrYsmz+so6wHaSJu9bojEgXWYTI7nby9fyinRcLI8BgVqVwFLIh8
	 +j16+M0uui5OlPg2ii9h5YvAyi1sZNudy3uRqEmJTXQOdjkUqwaaNicfvpAeyWZp5H
	 TsBNdl9iN2H4dA5LjQ6ytjMg7RYPPbJT+23VDbiJQYT1t9Ox4d0ZYZ6Bsqfw6C7w5C
	 SjGvQuBGG07XEr9tulrM4b3eYswcmOMbur07XHRv37cVfAJv4RgDULcTH1xUu1k0cb
	 CQ13ZEVrEuixgFbuf8qO5Q0c5Kv1rNisqeU0YdQ+gK6KFabKwaz9QXt9TuUuUo8NjC
	 WlVZnQmuvULjQ==
Date: Thu, 2 Jul 2026 08:33:08 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Coia Prant <coiaprant@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add Graperain G3568
 series
Message-ID: <20260702-belligerent-dormouse-of-glory-cb0ee0@quoll>
References: <20260701164543.3967388-3-coiaprant@gmail.com>
 <20260701164543.3967388-7-coiaprant@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260701164543.3967388-7-coiaprant@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319027-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:coiaprant@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:dsimic@manjaro.org,m:jonas@kwiboo.se,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,quoll:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,chukouplus.com:url,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6FD316F3D47

On Thu, Jul 02, 2026 at 12:45:45AM +0800, Coia Prant wrote:
> Document the Graperain G3568 v2, which is a development board based on
> the Rockchip RK3568 SoC.
> 
> Graperain G3568 series also have an SBC series with the suffix "box".
> 
> Graperain G3568 v2 belongs to development board series, not SBC series.
> 
> Link: https://www.graperain.cn/RK3568/RK3568-Development/ (China)
> Link: https://www.graperain.com/ARM-Embedded-RK3568-Development-Board/ (Global)
> Link: https://image.chukouplus.com/upload/C_153/product_file/20211022/6daddec9e400458816dd4c57ba807fc3.pdf
> 
> Signed-off-by: Coia Prant <coiaprant@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


