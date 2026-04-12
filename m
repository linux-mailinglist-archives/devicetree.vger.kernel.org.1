Return-Path: <devicetree+bounces-286803-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJdeJNls22k/BwkAu9opvQ
	(envelope-from <devicetree+bounces-286803-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 11:58:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DDF3E35F6
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 11:58:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 680A23007482
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 09:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 215973750D5;
	Sun, 12 Apr 2026 09:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApjeXvFz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1FAA313E10;
	Sun, 12 Apr 2026 09:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775987925; cv=none; b=lINAdrLXOM2XNHF4kYea3Bo9426f1po3ysxzJfsHz93mPwlMVoBUcISXxC2g+AvZXDi3Web+qTv4E8fsMJcmUhSD4nmy3HWroofrcmqqVe8cG058vC5arNB5FnzbWQtik/+B1X1KXzukOdooPSz0YynDb0QmGpjAwVOHq8oIE7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775987925; c=relaxed/simple;
	bh=zIplO9XJuBXyoCejItnRIwDvvhcyaRbki3fs/p1THpU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qICJEmA6GX39Q0Er2TtT/0GD7a7ubCdJsJAfucb7nHHyTLe++ANdBhlcyJ1EVYr1jWBT2s7dzyViw866D4pyT5gWOcds+wGEPWo43SpmIFD3jU+7MSujGtWcL/heSg97v11wupxstBdQgnDxtTNJDcnuRutjnXtRQdM2qzrLnII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApjeXvFz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 256E7C19424;
	Sun, 12 Apr 2026 09:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775987924;
	bh=zIplO9XJuBXyoCejItnRIwDvvhcyaRbki3fs/p1THpU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ApjeXvFzueV95XP2YOnVk5tJ0hV4tBLnKhSecuiG6Gr4VAnKHjqAds8qb8X+3u4z3
	 d+GsxDjxfrEgPac1NbkCR7/jkZEplLioV9Mo8C5k0D8W2LO3AtjRxn7pgLLlai7YiD
	 fdiQF2o2RiIAAT0s9qmOEZJg2yY0NVFO2krzfU1oE+mTo/DG24LMs99IHCa7okyUXu
	 v+iuiDzsNyyzrEkCR6sQySiSHfkoCr+gpXHP7pr8o1G6CAli+SG0hJn09J6mxoDgVe
	 Sn5L8R2ckRzp17fFBBXzuftPMtehuOJChwRh0keHyGY86ivNjGiKOZJ8OcsPkoJ0X7
	 zBRj8og8Qz+7g==
Date: Sun, 12 Apr 2026 11:58:42 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ronald Claveau <linux-kernel-dev@aliel.fr>
Cc: Guillaume La Roque <glaroque@baylibre.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	linux-pm@vger.kernel.org, linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/8] dt-bindings: thermal: amlogic: Add support for T7
Message-ID: <20260412-abiding-silver-turkey-1623cc@quoll>
References: <20260410-add-thermal-t7-vim4-v1-0-19f2b8da74d7@aliel.fr>
 <20260410-add-thermal-t7-vim4-v1-1-19f2b8da74d7@aliel.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260410-add-thermal-t7-vim4-v1-1-19f2b8da74d7@aliel.fr>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286803-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,intel.com,arm.com,linaro.org,googlemail.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 36DDF3E35F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10, 2026 at 06:48:02PM +0200, Ronald Claveau wrote:
> Add the amlogic,t7-thermal compatible for the Amlogic T7 thermal sensor.
> 
> Unlike existing variants which use a phandle to the ao-secure syscon,
> the T7 relies on a secure monitor interface described by a phandle and
> a sensor index argument.
> 
> Introduce the amlogic,secure-monitor property as a phandle-array and
> make amlogic,ao-secure or amlogic,secure-monitor conditionally required
> depending on the compatible.
> 
> Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
> ---
>  .../bindings/thermal/amlogic,thermal.yaml          | 40 +++++++++++++++++++++-
>  1 file changed, 39 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
> index 70b273271754b..85ee73c6e1161 100644
> --- a/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
> +++ b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
> @@ -22,6 +22,7 @@ properties:
>                - amlogic,g12a-ddr-thermal
>            - const: amlogic,g12a-thermal
>        - const: amlogic,a1-cpu-thermal
> +      - const: amlogic,t7-thermal

So these two entries are enum.

>  
>    reg:
>      maxItems: 1
> @@ -42,12 +43,40 @@ properties:
>    '#thermal-sensor-cells':
>      const: 0
>  
> +  amlogic,secure-monitor:
> +    description: phandle to the secure monitor
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle to the secure monitor
> +          - description: sensor index

For what exactly this sensor index is needed? commit msg explained me
nothing, instead repeated what you did. That's pointless, explain why
you did it.

> +
>  required:
>    - compatible
>    - reg
>    - interrupts
>    - clocks
> -  - amlogic,ao-secure
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - amlogic,g12a-cpu-thermal
> +              - amlogic,g12a-ddr-thermal

Drop both, you need only fallback.

> +              - amlogic,a1-cpu-thermal

And list is sorted alphabetically.

> +    then:
> +      required:
> +        - amlogic,ao-secure

Best regards,
Krzysztof


