Return-Path: <devicetree+bounces-308072-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8L0FCRl1JmoDWwIAu9opvQ
	(envelope-from <devicetree+bounces-308072-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 09:54:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 675D4653B6C
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 09:54:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=D+merpwy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308072-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308072-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C784303715A
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 07:49:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6A27391835;
	Mon,  8 Jun 2026 07:49:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A823A1DE8BF;
	Mon,  8 Jun 2026 07:49:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780904958; cv=none; b=u+C1BjaVITCamkyz6nJVDD41EWbhNstHDxsn7ekw03RL3geTlSSQZC4TwM/NK6T4r/Ci4/nJKmI670oZCfHI5YfF+YbqoxqQneti5Rtg+/GtdYnMQRgyyDZOR/8VHErYhdNNTy4kjBQK5USQFHIol3wdT5XJRoX/YTuKOAfWmhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780904958; c=relaxed/simple;
	bh=DDYs9Hc7KYGqeC+T3KFmi4YWfs7isV3FO0fydCX98Qo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A0sKEMruYACKIetL8F4SQ5Ylrbxnkyz2Q8OARzHynpSEtVvm3vOQ1i+eeFLoV+xIlNjnohlJUyoEvFKviBfzu3joJFbWY14kP4uuMjlalmqbi3rno79hCy15iw+WblshIJdSeVtTKvYqEjz8n8I9ox6i9cQf6zj3ITfVcllMdLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+merpwy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 400EF1F00893;
	Mon,  8 Jun 2026 07:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780904957;
	bh=kxTaNcAY9RKQ6zenFAqGz5cN6oBxyIOCDQqq8HMgsQw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=D+merpwyG1yN/U9rXyWBu/DYhV+l6wOrMyo2gvHuC9PCLEzWXN+dl44+iDmje1qzu
	 OUwYA26UCxiRfpEbbCPNwJlP2cY9dIqCbjrlTtT6GZYjIkT9w+DR0QPxni1pHiwuFd
	 hbvnxkb3i63JDi8Hfws0bx4BrH3JUPfS7UIE0so9KIsp/xbqNm/EJKpULO2xlBIjUN
	 I/cpbwVFiAaiRbnR2lBn5YIqoBzkiRzJ6RQP7D1hayIQiAU3aTFrG9mIVRG4QAY644
	 xxhIyMKcmPrYi7QInIAXdDfI0yO7qj17uj3ZlGP6sCZQ8WhPgykWJxWH4+yv+rRYgf
	 JMhw7HKc+U87g==
Date: Mon, 8 Jun 2026 09:49:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Felix Fietkau <nbd@nbd.name>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/3] dt-bindings: clock: airoha: Document support for
 AN7583 clock
Message-ID: <20260608-feathered-sincere-petrel-1e88fa@quoll>
References: <20260528190000.9164-1-ansuelsmth@gmail.com>
 <20260528190000.9164-2-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260528190000.9164-2-ansuelsmth@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308072-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:nbd@nbd.name,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 675D4653B6C

On Thu, May 28, 2026 at 08:59:54PM +0200, Christian Marangi wrote:
> Document support for Airoha AN7583 clock. This is based on the EN7523
> clock schema with the new requirement of the "airoha,chip-scu".
> 
> Add additional binding for additional clock and reset lines.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
>  .../bindings/clock/airoha,en7523-scu.yaml     | 18 ++++++
>  include/dt-bindings/clock/en7523-clk.h        |  3 +
>  .../dt-bindings/reset/airoha,an7583-reset.h   | 62 +++++++++++++++++++
>  3 files changed, 83 insertions(+)
>  create mode 100644 include/dt-bindings/reset/airoha,an7583-reset.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml b/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
> index eb24a5687639..6c3c88798515 100644
> --- a/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
> +++ b/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
> @@ -30,6 +30,7 @@ properties:
>    compatible:
>      items:
>        - enum:
> +          - airoha,an7583-scu
>            - airoha,en7523-scu
>            - airoha,en7581-scu
>            - econet,en751221-scu
> @@ -50,12 +51,29 @@ properties:
>      description: ID of the controller reset line
>      const: 1
>  
> +  airoha,chip-scu:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: phandle to Chip SCU

Here you explain for what purpose this device needs to reference SCU.
This is SCU, so I don't understand why SCU needs phandle to Chip SCU...

Best regards,
Krzysztof


