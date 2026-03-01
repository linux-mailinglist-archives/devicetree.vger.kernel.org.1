Return-Path: <devicetree+bounces-269688-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4VzNEp0PpGnSWAUAu9opvQ
	(envelope-from <devicetree+bounces-269688-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 11:06:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 933E41CF064
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 11:06:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E72413016EC5
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 10:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C8C132E126;
	Sun,  1 Mar 2026 10:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pm0mxr6h"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187F4430BBE;
	Sun,  1 Mar 2026 10:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772359578; cv=none; b=dLH6Ufpnxddr68X+Iulx51J5a+jSEiWkFGF2wkXHS6pR2sFmfMiJi6U5m8SMmJuyU4/bvl6mHVObYlKaqUKkp+DmHn3PeMd9fFHk1wsznoBhImiywPsihk0cTkGRC88fxypAdyiEP/Mmithm0ryZTUcYIgr8hlhXg5QGLkkhQGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772359578; c=relaxed/simple;
	bh=fbudWWtSDtbaamUQSG6OMvnlgBAE0SiRayr4RJ2OiUo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OubPVqHQ8e3vJKMrwuIoOGqnBrdIXAycGjX8NTrHR4j97ytlU7gEtBWKxp8mjzf7hQ+YuLnu3LNUhCWkwDKtC+fqoEfhkdTebI7beIl7dEdderzu6nJpMc23XIhaG2GYHEVTM+GXSe9bedEvEvHR9P2WjUQ98QwQiFnwNrqSz6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pm0mxr6h; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECFE7C116C6;
	Sun,  1 Mar 2026 10:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772359577;
	bh=fbudWWtSDtbaamUQSG6OMvnlgBAE0SiRayr4RJ2OiUo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Pm0mxr6hT3zrGQKfL1psKmGT9eH95h5wOZAWW570zFCOkpq1oJrC7cc8dGupSSSpa
	 aGWN9RGspOY1lRn6/PJ9dQsoF12OMYHYV6qQm4iKMOv+Q/JP0QSsA++ZiZiF27KV4o
	 MJyL54mtTo+YBD8nRPfDN9aUlzt/OPgVybZLc9NC+WozWtLDxwRRS6SyjBOkQMAc/3
	 Wt6LwRQnUd6aSMmSPK68uzy8p4E/cU47wrlLe2y6Dvs+FIn1h94QgsBPmzke8UQq3z
	 3QnUEy/GvQLQUB59cesnI3kwm0EkaAzPlWFl2DDmVoRK1bmyBvbVPyYtIiVSV8PsPV
	 pPxQGZUZE0ctw==
Message-ID: <f7b854e4-c1cc-4444-93f8-2a815b890d68@kernel.org>
Date: Sun, 1 Mar 2026 11:06:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: greybus: Document google,arche-platform
To: Soham Kute <officialsohamkute@gmail.com>, hvaibhav.linux@gmail.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260301050343.23258-1-officialsohamkute@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <20260301050343.23258-1-officialsohamkute@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269688-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: 933E41CF064
X-Rspamd-Action: no action

On 01/03/2026 06:03, Soham Kute wrote:
> Document the Google Arche platform which enables the Unipro
> link between the application processor and the SVC in a
> Greybus-based system.
> 
> Signed-off-by: Soham Kute <officialsohamkute@gmail.com>
> ---
>  .../greybus/google,arche-platform.yaml        | 71 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/greybus/google,arche-platform.yaml
> 
> diff --git a/Documentation/devicetree/bindings/greybus/google,arche-platform.yaml b/Documentation/devicetree/bindings/greybus/google,arche-platform.yaml
> new file mode 100644
> index 000000000000..6e176efc264a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/greybus/google,arche-platform.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/greybus/google,arche-platform.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Google Arche Platform
> +
> +maintainers:
> +  - Vaibhav Hiremath <hvaibhav.linux@gmail.com>
> +
> +description:
> +  The Arche platform driver enables the Unipro link between the

You need to describe hardware, not drivers.

This wasn't tested, so limited review.

> +  application processor and the SVC (Supervisory Controller) in
> +  a Greybus-based system.
> +
> +properties:
> +  compatible:
> +    const: google,arche-platform

Your description is insufficient. Is this SoC? Is this device?
Compatible is way too generic and "platform" is not correct in the
compatible. Everything can be a platform.

> +
> +  svc,reset-gpios:

No, use standard properties.

There is no such company as svc.

> +    description: GPIO used to reset the SVC
> +    maxItems: 1
> +
> +  svc,sysboot-gpios:
> +    description: GPIO used for SVC sysboot signal
> +    maxItems: 1
> +
> +  svc,refclk-req-gpios:
> +    description: GPIO used to request the SVC reference clock
> +    maxItems: 1
> +
> +  svc,wake-detect-gpios:
> +    description: Bidirectional GPIO for wake/detect signal between AP and SVC
> +    maxItems: 1
> +
> +  clocks:
> +    description: SVC reference clock

What is SVC?

> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: svc_ref_clk

Drop names

> +
> +  svc,reset-active-high:
> +    description: Present if the SVC reset GPIO is active high
> +    type: boolean
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - svc,reset-gpios
> +  - svc,sysboot-gpios
> +  - svc,refclk-req-gpios
> +  - svc,wake-detect-gpios
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    arche-platform {

Again, what is arche-platform?

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
If you cannot find a name matching your device, please check in kernel
sources for similar cases or you can grow the spec (via pull request to
DT spec repo).

> +        compatible = "google,arche-platform";
> +        svc,reset-gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
> +        svc,sysboot-gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
> +        svc,refclk-req-gpios = <&gpio 2 GPIO_ACTIVE_HIGH>;
> +        svc,wake-detect-gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
> +        clocks = <&svc_ref_clk>;
> +        clock-names = "svc_ref_clk";
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e08767323763..46cb6825f4d6 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10886,6 +10886,7 @@ S:	Maintained
>  F:	drivers/staging/greybus/arche-apb-ctrl.c
>  F:	drivers/staging/greybus/arche-platform.c
>  F:	drivers/staging/greybus/arche_platform.h
> +F:	Documentation/devicetree/bindings/greybus/google,arche-platform.yaml

Don't send bindings to match staging code. This is not the correct
process. You must come with proper bindings for hardware, following
standard review process like there was nothing in the staging. It's
second bindings this week, is this some sort of GSoC again without any
supervision?


Best regards,
Krzysztof

