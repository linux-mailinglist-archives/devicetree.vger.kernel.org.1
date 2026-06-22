Return-Path: <devicetree+bounces-314393-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xZRGHG8XOWrKmgcAu9opvQ
	(envelope-from <devicetree+bounces-314393-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 13:07:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C70C06AEF1F
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 13:07:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LHRFKqkg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314393-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314393-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 575A0302A72A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 11:07:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D72B379ED2;
	Mon, 22 Jun 2026 11:06:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC593783BE;
	Mon, 22 Jun 2026 11:06:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782126419; cv=none; b=oIRiFY0TBvskAZ8D883xeziDfGh1CEW+gBZAKkliQ3nGpY/3cfcx7aGLJklMXJxWwhc3r3Zs3hKEvm/btJSKDc5EWCyb7tmnnubwsqfv9/nJt9FroqPJU2FSeA4Tg18W4JhmM560pyy42SXLqbAIlcDtT6+aVJ3j2w2oQJG9+Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782126419; c=relaxed/simple;
	bh=H3OtbWKIQdcXN72LryqeX9mMIKMbKHa/YGAW8mtibSs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QS+3qNCSFwwtxeMFjFEemFFbO7a8VNtatJvooQ2hBdyB+eL4AyVlzr41cODmYIRQmbOxaDrx8McYVTbuXJEkfpxs6cWy52TB+4hNULmOpLpl8hU8ZA9CnXUI3g+oI4lSWEE7YlidZ8aO8AnXFHjPwMfVyfuayHnbtKaCkiGf3cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHRFKqkg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CD641F000E9;
	Mon, 22 Jun 2026 11:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782126417;
	bh=oHKjtb6fT61seAkFCx1+4G+n51UfUaaQfsTP82qzf/0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LHRFKqkg0UpsQp3g0duGOI4kQDhge3W457tFI857JbXU+K1g9X3XOqL03baaUIY0Z
	 ZFChklZnxyixE7jPhf8VLlqxC62+ckrgp3xJ+7HsaIWBClr9gZFGPUaVHnr9QdVeUR
	 bg3T+ptJtDueUgD19CAuadEnC7pvo0NFhM8Y86r/XWzJLJmDJLM4KWrjDpZgb17ymA
	 3l1S9n2CSUSgkFmjd+tVZC8FZBg8al84ma+dfgjjFH1H0pF6NnrQc0+vzMssrlAXqD
	 5wljh8o9//92SRjaAO+IwjOVSbv1oojpa2MWQcRMjay7Z7dOtOVWp5VVFJ45jUVnHy
	 SEWIHzYzqwpNw==
Date: Mon, 22 Jun 2026 13:06:51 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Waqar Hameed <waqar.hameed@axis.com>
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, kernel@axis.com, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: power: supply: Add TI BQ25630 charger
Message-ID: <20260622-whimsical-inescapable-pronghorn-5f94bb@quoll>
References: <cover.1781789320.git.waqarh@axis.com>
 <96b7d1a0aa0c00929f0fef2847db116b54079a30.1781789320.git.waqarh@axis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <96b7d1a0aa0c00929f0fef2847db116b54079a30.1781789320.git.waqarh@axis.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:waqar.hameed@axis.com,m:sre@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:kernel@axis.com,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-314393-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:email,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C70C06AEF1F

On Thu, Jun 18, 2026 at 03:37:59PM +0200, Waqar Hameed wrote:
> +allOf:
> +  - $ref: power-supply.yaml#
> +
> +properties:
> +  compatible:
> +    const: ti,bq25630
> +
> +  reg:
> +    const: 0x6b
> +    description:
> +      Device I2C address.

Drop description, obvious.

> +
> +  interrupts:
> +    maxItems: 1
> +    description: |

Do not need '|' unless you need to preserve formatting.

> +      Device sends active low 256 =C2=B5s pulse. Type should therefore be
> +      IRQ_TYPE_EDGE_FALLING.
> +
> +  monitored-battery: true

Drop this one

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - monitored-battery
> +
> +additionalProperties: false

And here use 'unevaluatedProperties: false' instead.

With these fixed:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


