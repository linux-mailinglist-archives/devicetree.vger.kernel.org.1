Return-Path: <devicetree+bounces-258031-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDCsC28KcWmPcQAAu9opvQ
	(envelope-from <devicetree+bounces-258031-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 18:18:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 912315A6DA
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 18:18:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2C7FD74F20B
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 16:00:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BB48342519;
	Wed, 21 Jan 2026 15:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdKGfU+z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E1B21FF26;
	Wed, 21 Jan 2026 15:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769010964; cv=none; b=i27gopGM81KNOg21w+7WWlrHUaS0I5NYn++8awFsQVm72+LgL7R2RSih+MC9MOLUUfFpjmSpFF2tC9JAHEa0DMhR/6b36fxSN/V3TdUJmesv2QkqX5r9Ljd2woJaSlkTeOZvC/szawtecDfSrR3OGKu0/AsrGJlrdXrWUfJ7b7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769010964; c=relaxed/simple;
	bh=B6U1Ofk9F1wTEsHuFfC1/BhHkDnhP0tr/NtPJUGxDIo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TwxyN0zWr4Jt6YDfrpDLngOu3kotp5WdrI16ZbrSWTp4gkGgEwD/4lmixlOI2ydQ+9eHSTucx3Vsy0zeOBVi0wTY9SiPaAsKVDbFNyOVhcYkKYAjNh62obnvcxdmd6GuEB8ktIBg16uKxQp93W97oVNy66QuIw2H/wRCZyJa2e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdKGfU+z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3561FC4CEF1;
	Wed, 21 Jan 2026 15:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769010963;
	bh=B6U1Ofk9F1wTEsHuFfC1/BhHkDnhP0tr/NtPJUGxDIo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KdKGfU+zIV3gmykIXhiL/Av+WT3F+Aq1N9fsUZfjQwGpTgJZytuVkb3sBVA7WPDDh
	 bX2ZwzvH0GfaCHtrBD9brhMXMIkwDyNZoBNJ3Ot9lU5COkWgJMsu9l7l02E67gQFd9
	 uCbIGui53xUfRh+fcQUKx9JGYOAxwItdnnWHn4GiLccGb0VoyQBrw85e5XNrmcfnDf
	 S2JcOXYrcJPC3NI4SJ19UjJcMlvUZlB6boYWr1R7yUUp2MF1cJbSWC3Z15ApenP215
	 MrYhGiDRTsyCiW81zD/RbyWjejwnta+7HAeL7BMx9KFjjxnd3WwIWbZ3tOLgDKwduI
	 vmim4kIwzdpwg==
Date: Wed, 21 Jan 2026 09:56:02 -0600
From: Rob Herring <robh@kernel.org>
To: Aniket Limaye <a-limaye@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, u-kumar1@ti.com,
	Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Thomas Gleixner <tglx@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, j-mcarthur@ti.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: interrupt-controller: ti,sci-intr:
 Per-line interrupt-types
Message-ID: <20260121155602.GA3196596-robh@kernel.org>
References: <20260120-ul-driver-i2c-j722s-v2-0-832097c6b64f@ti.com>
 <20260120-ul-driver-i2c-j722s-v2-1-832097c6b64f@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120-ul-driver-i2c-j722s-v2-1-832097c6b64f@ti.com>
X-Spamd-Result: default: False [-0.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258031-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,ti.com:email]
X-Rspamd-Queue-Id: 912315A6DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 04:13:46PM +0530, Aniket Limaye wrote:
> Update the bindings to allow setting per-line interrupt-types.
> 
> Some Interrupt Router instances can only work with a specific trigger
> type (edge or level), while others act as simple passthroughs that
> preserve the source interrupt type unchanged.
> 
> In addition to existing edge or level interrupt setting, add a third
> enum value 15 (IRQ_TYPE_DEFAULT) for "ti,intr-trigger-type" property, to
> indicate that the router acts as a passthrough. When set to 15,
> "#interrupt-cells" must be 2 to allow each interrupt source to specify
> its trigger type per-line.
> 
> Signed-off-by: Aniket Limaye <a-limaye@ti.com>
> ---
> Changes in v2:
> - Reword Commit msg to better describe the patch
> - Link to v1: https://lore.kernel.org/r/20260116-ul-driver-i2c-j722s-v1-1-c28e8ba38a9e@ti.com
> ---
>  .../bindings/interrupt-controller/ti,sci-intr.yaml | 42 +++++++++++++++++++---
>  1 file changed, 37 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml
> index c99cc7323c71..59c01f327f3b 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml
> @@ -15,8 +15,7 @@ allOf:
>  description: |
>    The Interrupt Router (INTR) module provides a mechanism to mux M
>    interrupt inputs to N interrupt outputs, where all M inputs are selectable
> -  to be driven per N output. An Interrupt Router can either handle edge
> -  triggered or level triggered interrupts and that is fixed in hardware.
> +  to be driven per N output.
>  
>                                     Interrupt Router
>                                 +----------------------+
> @@ -52,11 +51,12 @@ properties:
>  
>    ti,intr-trigger-type:
>      $ref: /schemas/types.yaml#/definitions/uint32
> -    enum: [1, 4]
> +    enum: [1, 4, 15]
>      description: |
>        Should be one of the following.
>          1 = If intr supports edge triggered interrupts.
>          4 = If intr supports level triggered interrupts.
> +        15 = If intr preserves the source interrupt type.

Why do you need this property in this case? #interrupt-cells == 2 means 
preserve the source type and this is redundant. Just disallow 
ti,intr-trigger-type when #interrupt-cells == 2.

Rob

