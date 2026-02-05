Return-Path: <devicetree+bounces-262925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMYSGmJjhGkM2wMAu9opvQ
	(envelope-from <devicetree+bounces-262925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:31:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E3EF0C9A
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:31:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 83FAC3021CCC
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 09:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B637D389E1A;
	Thu,  5 Feb 2026 09:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUGlFh4m"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 941A13876AA;
	Thu,  5 Feb 2026 09:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770282785; cv=none; b=sBrNJJtPEXI53crZTPV+oIXH8lD7Ry4T8HKniBDD4ck99mrNOIZ66oInY8toxC3yaGkNrF5GCuN7a9+u0gVua33ziRuUAEs4Yi71MRrbNM/0fhHYo93ehsLOBGKD+ijuhqm52PBMZrqni6yhFH+GtgVqf1RXZ9ajyaguBVy/zSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770282785; c=relaxed/simple;
	bh=6P+RzgxrHHsOPrWorXefV5aQyNrxfF8FiKVM6BWUqvY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l8l6RZWHC5V9Fp2GNPSdMrDDd6GhzHE/C/77pV7xYxLGgpbgR2LHzexrjHR1IBulF2XyhrQ3jTCX74pRItLLEBI2kmt2V+t+hpde+r7hIC4oo85fv6X2114u4Zu6PSMkPL3JDRweniYi8MiB1qKn80zfZBCRFvnpO7RrULN9CM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUGlFh4m; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 974DEC4CEF7;
	Thu,  5 Feb 2026 09:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770282785;
	bh=6P+RzgxrHHsOPrWorXefV5aQyNrxfF8FiKVM6BWUqvY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bUGlFh4mLruuaYXSMa3gxriyYIWQvIJ8AjlAozutphkm/d3JIPOm2L+zZDpeLbE/w
	 76dDqeTt2NMDryN39tzZ29Nx2oU/3bHh5h7twhSqU+pkvPInMUCZZSYOK2mDgfgEmy
	 G5V5II5boaDubgfr1uPlj5APR3p3Nw+9N29tPWUXBVM8ZgzXo537tJq9Xse0Lgmhxb
	 P5rVWWUy+I/JImwfRHVR1azONnKGjdc9vnKnmISXcDs06jBhLjPl2Vs7FQsckxLYGH
	 IYJ3+8p6CAaFNtLOgT/Eg3W1+6Ut43UvyFxp4dsWAJ+O6/4rigGvaoXYtuFchi7/XV
	 MsrXnJV46H2CA==
Date: Thu, 5 Feb 2026 10:13:02 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gary Yang <gary.yang@cixtech.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	p.zabel@pengutronix.de, peter.chen@cixtech.com, unicorn_wang@outlook.com, 
	inochiama@gmail.com, alchark@gmail.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	cix-kernel-upstream@cixtech.com
Subject: Re: [PATCH v7 1/3] dt-bindings: soc: cix: document the simple-mfd
 syscon on Sky1 SoC
Message-ID: <20260205-noisy-fabulous-bumblebee-e0cb32@quoll>
References: <20260204020644.155094-1-gary.yang@cixtech.com>
 <20260204020644.155094-2-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260204020644.155094-2-gary.yang@cixtech.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-262925-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,cixtech.com,outlook.com,gmail.com,vger.kernel.org,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A9E3EF0C9A
X-Rspamd-Action: no action

On Wed, Feb 04, 2026 at 10:06:42AM +0800, Gary Yang wrote:
> There are two system control on Cix sky1 Soc. One is located in S0 domain,
> and the other is located in S0 and S5 domain. The system control contains
> resets, usb typeC and more. At this point, only the reset controller child
> is described as usb typeC uses it by phandle.
> 
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> ---
>  .../soc/cix/cix,sky1-system-control.yaml      |  49 ++++++
>  include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 +++++
>  include/dt-bindings/reset/cix,sky1-rst.h      | 164 ++++++++++++++++++
>  3 files changed, 255 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml
>  create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
>  create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h
> 
> diff --git a/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml
> new file mode 100644
> index 000000000000..5fb6b97c3c00
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/cix/cix,sky1-system-control.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cix Sky1 SoC system control register region
> +
> +maintainers:
> +  - Gary Yang <gary.yang@cixtech.com>
> +
> +description:
> +  An wide assortment of registers of the system controller on Sky1 SoC,
> +  including resets, usb, wakeup sources and so on.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - cix,sky1-system-control
> +          - cix,sky1-s5-system-control
> +      - const: syscon
> +      - const: simple-mfd

Drop simple-mfd, no children

> +
> +  reg:
> +    maxItems: 1
> +
> +  '#address-cells':

Drop, no children

> +    const: 1
> +
> +  '#size-cells':

Drop

Do you see any recent simple-mfd binding written like this? There are
no. Did you read any of other bindings before sending this? Or at least
my slides or amny other resources from vast documentation from
elinux.org?

Best regards,
Krzysztof


