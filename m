Return-Path: <devicetree+bounces-321656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FDxWOcxfTGrhjgEAu9opvQ
	(envelope-from <devicetree+bounces-321656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 04:09:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FDB716BAE
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 04:09:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=COKZ92la;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321656-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321656-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 03C33301F1B5
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 02:09:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5940A2EF67A;
	Tue,  7 Jul 2026 02:09:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4476F26F29B;
	Tue,  7 Jul 2026 02:09:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783390154; cv=none; b=H2XV09OTy3TWJf78sZaCSWqIFgF89htZYmPmsZkoGPViHOkVDzxYwk51rjt7Vm1olWADdte3jlEjCHx0f4Lv97P+ESDKP6ldmaSwfMtBVyXrjcXBD0z0KLFVtqdHqC/R4k4WTF7NkGx14pN9Lu5+MEx/RMiq2+KDLClq70+9CVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783390154; c=relaxed/simple;
	bh=FVtVAaSuJTY7vHYjip/kdPM2L3aNFrm1fPM3MEPpF3g=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oS5yss+Zjsjaval64OJgOwFgA50B3E3KqNcv/hc8OMKvSnDq/wYRWHw69f21YaFIL2uZ++2Cip70aka7FY0xD9t8KQIUiLsqCsLA2OyWrbvhKxVKhs0pxTS5IA9+TDyGdNJFWzDFxNuwKHoACDM4yGb5Td7z7WetmeyV774JIf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COKZ92la; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 261E81F000E9;
	Tue,  7 Jul 2026 02:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783390152;
	bh=X+GavMHJxo/C0eP06aCFkaFhtwTiuGsoQw2pkGdhRkc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=COKZ92laQhl1csIEkPD6FHIBolJNsjd27MEkSM1QUkHmeCLiZzXhiSbxzh+80bodW
	 Eo9LRa5hhnpXN+NLjvJp085C/ja6Wp0kSwiGNSJNmoRY0VMOuRk0HtTHPWoPRWbzUm
	 wPYcrpPXbnkCqJcf8CqOEAQDZDMcWc3rQ5UWFuqQRmtv8Rk8ky7xVSrz5KvRasbxHi
	 UMVdqAoIRjPMxTVHGtxZ0RjWrfxUPIfEr2WQN3lodMRh6jyJykB/lLCHPIfb70YEsK
	 myxcIfD0CkLgRK/xGp5L/yinB0F6Jm8aVbqq76O0bX9Fu1ja5G/x8EiONakVuWhlPY
	 LEGrsrv//djCQ==
Date: Tue, 7 Jul 2026 03:09:07 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Simon Glass <sjg@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>,
 linux-arm-kernel@lists.infradead.org, Andy Shevchenko <andy@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>,
 Jonas Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 09/12] dt-bindings: iio: adc: rockchip-saradc: Add
 RV1106 compatible
Message-ID: <20260707030907.1502dba6@jic23-huawei>
In-Reply-To: <20260706195818.3906949-10-sjg@chromium.org>
References: <20260706195818.3906949-1-sjg@chromium.org>
	<20260706195818.3906949-10-sjg@chromium.org>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sjg@chromium.org,m:heiko@sntech.de,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:festevam@nabladev.com,m:linux-arm-kernel@lists.infradead.org,m:andy@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:jonas@kwiboo.se,m:krzk+dt@kernel.org,m:nuno.sa@analog.com,m:robh@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-321656-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,chromium.org:email,jic23-huawei:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 35FDB716BAE

On Mon,  6 Jul 2026 13:58:05 -0600
Simon Glass <sjg@chromium.org> wrote:

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
> +          - const: rockchip,rk3588-saradc
>        - items:
>            - enum:
>                - rockchip,px30-saradc

Follow the style of this one...  I.e. use an enum and
then a const given both the rv1106 and rk3576 fallback
to the rk3588

Thanks,

Jonathan



