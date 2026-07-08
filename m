Return-Path: <devicetree+bounces-322728-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4gS0AIErTmrwEQIAu9opvQ
	(envelope-from <devicetree+bounces-322728-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 12:50:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7908172481C
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 12:50:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="dUv/aaBr";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322728-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-322728-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 83169300AEE2
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 10:45:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F09F942E8E9;
	Wed,  8 Jul 2026 10:45:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6036B42CAE4;
	Wed,  8 Jul 2026 10:45:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783507536; cv=none; b=E3EUbLJB2zGgm/SGSsUSRY1rk91hchiI83pdmRzAn+DOM8Wg0KdgtXwpXwmqcxvG/XWZ49LpMOX4184nadd1pA0ZvC1qnSsc27cgkLqCsjCQdk+t5qCTUGnWIILthBfcGHkgVc6ZjWDTzeAkX659lszk5v4hmtmkPFve4Q2ynb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783507536; c=relaxed/simple;
	bh=pux0VXMKGxe/GygS3tapFrP8EPQF3hB8WrKJiuxFx0Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Eefrh0K01DzUI9lL/fh7+ZWSHoH/XjO+xzHw5i2RX+dDAOSLqNCATC6mhO/bGmxkjjyWmJlQ2S6Dkzsjp7h0bBU2tKiEbe+EreQ0IZLHFCCrUcpuvYYhLBB0agBdPHWZ7yI0fWgYM3ChYyhxKRP2TvZIpD6zSsGnGKbYThK4OUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUv/aaBr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87EC91F000E9;
	Wed,  8 Jul 2026 10:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783507527;
	bh=pylafSGUukz/4i8OoUfzyabnXGXIxcGDOPGtUmbKyoY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dUv/aaBr1uN7VfTdA/Mpn68vwcEgIyJQRX0FWY1Hnd1YVyT/5DgM++bpPB/Fkv3JB
	 PEPlD4SXsVhNA0i6/lGqsmoKFDanh5h9znke27buXLwcdmROjizFnqV1wqYVN1ZICD
	 BwxY5YI3FN/c9nHAhaUyB+OzEKjHfnBIDz87A/vsILfDMgCpsw0CaleU2f+90+lD/q
	 2iCWJA2L3hzpwsA/yAy0arwno6Q/qK+B70tp468gmrnv42UXwAQn5naVXsVQCNbvJ1
	 IKLBbq4f4/gyZSDLTRNxOe9+ez0EUCg29p2aEcca3r3V48rKnteNVExLD2xui3c41F
	 olINebbehNM9w==
Date: Wed, 8 Jul 2026 12:45:23 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Simon Glass <sjg@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>, 
	linux-arm-kernel@lists.infradead.org, Andy Shevchenko <andy@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jonathan Cameron <jic23@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Rob Herring <robh@kernel.org>, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 09/12] dt-bindings: iio: adc: rockchip-saradc: Add RV1106
 compatible
Message-ID: <20260708-intrepid-piquant-teal-26615d@quoll>
References: <20260706195818.3906949-1-sjg@chromium.org>
 <20260706195818.3906949-10-sjg@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260706195818.3906949-10-sjg@chromium.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:sjg@chromium.org,m:heiko@sntech.de,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:festevam@nabladev.com,m:linux-arm-kernel@lists.infradead.org,m:andy@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:jonas@kwiboo.se,m:jic23@kernel.org,m:krzk+dt@kernel.org,m:nuno.sa@analog.com,m:robh@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-322728-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,quoll:mid,chromium.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7908172481C

On Mon, Jul 06, 2026 at 01:58:05PM -0600, Simon Glass wrote:
> Add the compatible for the SARADC of the Rockchip RV1106, which is
> compatible with the RK3588 variant.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
> 
>  Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> index 6769d679c907..c3bb03dc4853 100644
> --- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> @@ -24,6 +24,9 @@ properties:
>        - items:
>            - const: rockchip,rk3576-saradc
>            - const: rockchip,rk3588-saradc
> +      - items:
> +          - const: rockchip,rv1106-saradc

Why can't this be an enum with 3576?

Best regards,
Krzysztof


