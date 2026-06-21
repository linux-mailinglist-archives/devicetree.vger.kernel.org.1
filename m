Return-Path: <devicetree+bounces-314110-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 93bKM9scOGqgYAcAu9opvQ
	(envelope-from <devicetree+bounces-314110-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 19:18:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 264136AB53A
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 19:18:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hUiDDge9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314110-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314110-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9A6E3003324
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 17:18:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A74AE1AA1D5;
	Sun, 21 Jun 2026 17:18:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF9BB640;
	Sun, 21 Jun 2026 17:18:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782062296; cv=none; b=qB0oRFt4AZVDGFuFVWdgpdww9Gbm+GzEILt5v9qv5tcTOqziBVwmMpqYj+0MGUjchl6rTnszgLNr4bb+GCBuuZw7LQbBqQnRvn8UxjG/IOUsx2SwfKE7zVcUTyd6cnDo15HkD/k92zcP7Rwq9lAHa7KwMK3NQoaLGMSLl6zvfvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782062296; c=relaxed/simple;
	bh=Rf+La8jFVT95KkIR0ldQb6LhrquOwNjriq1Vi5P8ngk=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=d1gAn18xulOsNGXDTByxxjSDItz94c6PuX4bK/cCLMc5Gqbf0z0Jrzj/ntGkh8JA/gWIAO/fnll8ZpzDVYJkNNJRk6+HPNqMbZX96FcXU12hgW6eEaISKbi1oK+KsUfd3pwJ7VRGlC/++mVX4vZj4IWMW+i7uDZ1iesC/UGleqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUiDDge9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E6B11F00A3A;
	Sun, 21 Jun 2026 17:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782062295;
	bh=OGWHEfZZb2DOcBU3QFV2hDPwohTz7bPGX7NOarWIQ8k=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=hUiDDge9qOtiRkbOIMHx6VZGGg1bjX1POvsJq5bafa4MzrdJ0TTNVnYRWnmLnriAp
	 FzEUuXJ7IGBsoUdnxzvNTo6PZKH9v01GsruGsn0oaa0SXy3HkdGGkqrf9olS1ghDxK
	 BsRTASY1gJ/wc4b7KrVatmGFMFr2Pq1ku90G0gAJeVwDz1k1lQLutzDIJ1E7kUzy20
	 q40Drb1ovZjra8mDCP4Ni4A45jzxSHxbKJwqOV9eG036TX0mLitjYxRcpG9MJR76vs
	 WMlLVMIJVokfA//YLpVHgILnM/Xt+in0Ls7eA9Yt/ElcpUS1TwzcY/4Okk4hGH0++O
	 vFOsONABDzzvg==
Date: Sun, 21 Jun 2026 18:18:04 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH V13 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Message-ID: <20260621181804.27b44942@jic23-huawei>
In-Reply-To: <20260615172554.160910-3-macroalpha82@gmail.com>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
	<20260615172554.160910-3-macroalpha82@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:nuno.sa@analog.com,m:dlechner@baylibre.com,m:jean-baptiste.maneyrol@tdk.com,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:heiko@sntech.de,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:andriy.shevchenko@intel.com,m:macromorgan@hotmail.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-314110-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com,hotmail.com,oss.qualcomm.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp,jic23-huawei:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 264136AB53A

On Mon, 15 Jun 2026 12:25:45 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the ICM42607 and ICM42607P inertial measurement unit.
> 
> This device is functionally very similar to the icm42600 series with a
> very different register layout. The driver does not require an
> interrupt for these specific chip revisions.

This talks about how they are different from other parts already
supported, but I think we need something on how they are different
from each other. 

I'm kind of assuming one is a subset of the other? If that is the
case the ideal might be the more complex part falling back to the
simpler one.

Thanks,

Jonathan


> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  .../bindings/iio/imu/invensense,icm42600.yaml  | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> index 9b2af104f186..81b6e85decd5 100644
> --- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> +++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> @@ -30,6 +30,8 @@ properties:
>        - invensense,icm42600
>        - invensense,icm42602
>        - invensense,icm42605
> +      - invensense,icm42607
> +      - invensense,icm42607p
>        - invensense,icm42622
>        - invensense,icm42631
>        - invensense,icm42686
> @@ -67,10 +69,24 @@ properties:
>  required:
>    - compatible
>    - reg
> -  - interrupts
>  
>  allOf:
>    - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - invensense,icm42600
> +              - invensense,icm42602
> +              - invensense,icm42605
> +              - invensense,icm42622
> +              - invensense,icm42631
> +              - invensense,icm42686
> +              - invensense,icm42688
> +    then:
> +      required:
> +        - interrupts
>  
>  unevaluatedProperties: false
>  


