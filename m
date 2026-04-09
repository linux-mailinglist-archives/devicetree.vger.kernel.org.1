Return-Path: <devicetree+bounces-286016-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJ1MM4pg12keNQgAu9opvQ
	(envelope-from <devicetree+bounces-286016-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 10:17:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 312C43C79F8
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 10:17:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 24C67300A631
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 08:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 823D73976A9;
	Thu,  9 Apr 2026 08:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQnXBfz4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F672396588;
	Thu,  9 Apr 2026 08:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775722404; cv=none; b=hkvejJJ+lxKb4FKIWxlbp3jSvct1xu7C8wm0NqEnQFS1AKTUrPqCTTVClfjUuHGUAsaD8t5oDk8QONGt9hvWba28Wpap7OOF1LKIINQISB7u2Tn625TEN0T2VjzPI9Xch3cdbnLGGOOG8Kb2QFDS9mj1xXPhl+kbXP1pqiGfn8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775722404; c=relaxed/simple;
	bh=CgU7whiQMd3BptzzMKu/4KAdATHpRf7rC84jNQ/3l0M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tUhPBXndegNgAg2qSvgtOBAP/qII1IWJXd1UCdINp+lpQbdzhBiHYDhd9IJYrlCbU0IA3VWkPSq6h+2DmF69RiW0mrv+h0ePWElAc9P839iTTmq1kh+NGEoZnB4tzDSaY4KBlidbdvF0z32ajbo6vRz8ZjgO+z+r83Xviue6EeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQnXBfz4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89625C4CEF7;
	Thu,  9 Apr 2026 08:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775722404;
	bh=CgU7whiQMd3BptzzMKu/4KAdATHpRf7rC84jNQ/3l0M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NQnXBfz4tEMNrwlgBQmt+XZHESHzNgKRETe5j7yv52Nyy4kCGlgHfEov2kff4zfov
	 idfL+6y6wMUbGv0u28HKfAFrWFMF8PmKMIUXKOEHzYGbs8klp8+yYAdAGst8fzWBSL
	 LwNW586jTkmrq+D8J+RbP5hnhbKH9f/yI11/ut/FPcKutJIdqYh5qv5SqIWct5uEMG
	 v51hqf6T3pnvbo+i0BQxMh2XID1fP4S1MdxN462FRoGo+WWfmqVosjLJuP0/sKrsN7
	 +8qe1uraHN/Xps2wmYKagbFIyEwkWHFHOhbxBK6gmGcxzzd/xQ0qebfJF7vJMESUQn
	 CFHjXAo92atzQ==
Date: Thu, 9 Apr 2026 10:13:21 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gregor Herburger <gregor.herburger@linutronix.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>, 
	Srinivas Kandagatla <srini@kernel.org>, devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: nvmem: Add a binding for the RPi
 Firmware OTP register
Message-ID: <20260409-intrepid-discerning-peacock-bbf19a@quoll>
References: <20260408-rpi-otp-driver-v1-0-e02d1dbe6008@linutronix.de>
 <20260408-rpi-otp-driver-v1-1-e02d1dbe6008@linutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260408-rpi-otp-driver-v1-1-e02d1dbe6008@linutronix.de>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286016-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,broadcom.com,anholt.net,gmx.net,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linutronix.de:email]
X-Rspamd-Queue-Id: 312C43C79F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 10:00:15AM +0200, Gregor Herburger wrote:
> The firmware running on the Raspberry Pi VideoCore can be used to access
> OTP registers. There are two OTP regions (private and customer). Add a
> binding for these.

A nit, subject: drop second/last, redundant "a binding for the". The
"dt-bindings" prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

> 
> Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
> ---
>  .../bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> index 983ea80eaec9..975c8927d75b 100644
> --- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> +++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> @@ -137,6 +137,20 @@ required:
>    - compatible
>    - mboxes
>  
> +patternProperties:
> +  "^otp-(customer|private)$":

Not a pattern but just "otp".

> +    type: object
> +    additionalProperties: false
> +
> +    properties:
> +      compatible:
> +        enum:
> +          - raspberrypi,firmware-otp-customer
> +          - raspberrypi,firmware-otp-private

I don't understand why having OTP regions is not deducible from
top-level compatible. I also do not get why do you need per OTP
compatible.

There are no resources here, so standard review would be "no" and you
need strong justification in terms of DT.

Best regards,
Krzysztof


