Return-Path: <devicetree+bounces-303555-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UO9WKK03F2os9gcAu9opvQ
	(envelope-from <devicetree+bounces-303555-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 20:27:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 737E65E903D
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 20:27:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 417D230B0D42
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 18:20:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D20347887B;
	Wed, 27 May 2026 18:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMwwZPjF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80949453498
	for <devicetree@vger.kernel.org>; Wed, 27 May 2026 18:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779905878; cv=none; b=IvWqpqH5cKimS2C+er9Pn+x4gBmLXIdiqNzLyeM8/i3OEfwBsz6r0+bZ4hCJN6/5/Xj/Zou+ymtuqZrIN8G87bUL0xfadjFxL0XalGpm9QiUKqWgdIWKaBrxRXiycBA/S0IeaqLsMi+szRfCsPSwoyU5FZ6KJWKwiFMiNDf8Ouk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779905878; c=relaxed/simple;
	bh=fDNYIemZZTPVpfMZeZyOHlHoMgOD4SLL5LbNFCun2Hc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mTlGaXRGN9My4yTEUHeMy2+tybH3S8HAXDmbOT7MmGrLw+Scnk1oARrSBFJcutwv6CW+0zpmRbjdiHhQmIvxaOiP9QiKzY1Gg/RSNUMcb+FbcklSUzjxwMQsB/iyn6JUMKP+MxCbMPXFGIDrukm5pyQEoCtzmo9WYukxLYPb6MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMwwZPjF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C59A1F00A3D;
	Wed, 27 May 2026 18:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779905876;
	bh=UVGrwWWFJSsEojo4q8v6xqxssfvfBavXJ5XhgvnFN70=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TMwwZPjFSQXmVs9THlk4zmfgTTJ3qbh6PciZIMBhOv9X9RY3okH9PWkUkjO8zA1UH
	 XHK1yo5SEFX+cIWpcbQOwPZ4kWWKWS2dLIQM7I6mKq+A03pepzYOgmfAcdpPZ2p9i8
	 rDEyQZSXL0HiwPs8/oHYA3QGvcFJOrXJQmwLeg6fAKrHzsPJQiU6hT42zP4lX4KPd5
	 Ly/v5t7z0vh+F5t0Tat7kyl8jEGj6NGghmBdvXozQmsKItwwZUsr81sd2brajTzZhN
	 nv5FwM8qCfWxQ6TnQ6ZvsbQqlvmEDeAd4AjlmNzW2DtqT65cVQKRq+cvwlhq1ZdmIZ
	 LHcuYmHC9wmdg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 01/13] spi: dt-bindings: allow spi-max-frequency to
 specify a frequency pair
Reply-To: sashiko-reviews@lists.linux.dev
To: "Santhosh Kumar K" <s-k6@ti.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260527175527.2247679-2-s-k6@ti.com>
References: <20260527175527.2247679-2-s-k6@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 May 2026 18:17:55 +0000
Message-Id: <20260527181756.3C59A1F00A3D@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-303555-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 737E65E903D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Schema Validation Regression: Changing `spi-max-frequency` global =
type to `uint32-array` silently disables bounds checking on existing periph=
eral bindings.
--

commit 165130603fd7c72c188dc391a534397b6c57dbd4
Author: Santhosh Kumar K <s-k6@ti.com>

spi: dt-bindings: allow spi-max-frequency to specify a frequency pair

This commit extends the spi-max-frequency property to accept either a single
maximum frequency or a two-element array. The array format allows specifying
a conservative base frequency alongside a higher speed that is supported
after controller-side configurations.

> diff --git a/Documentation/devicetree/bindings/spi/spi-peripheral-props.y=
aml b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
> --- a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
> +++ b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
[ ... ]
>    spi-max-frequency:
> -    $ref: /schemas/types.yaml#/definitions/uint32
> +    $ref: /schemas/types.yaml#/definitions/uint32-array

[Severity: High]
Does changing the global definition to uint32-array cause issues for existi=
ng
peripheral schemas that constrain this property using the maximum keyword?

According to the JSON schema specifications, the maximum keyword applies on=
ly
to numeric instances. When the instance is changed to an array, the maximum
constraint is silently ignored.=20

If existing device bindings constrain this directly using maximum (for
example, maximum: 10000000 without wrapping it in an items object), will
they silently fail to validate bounds and allow out-of-spec device tree
values to pass validation?

> +    minItems: 1
> +    maxItems: 2
>      description:
> -      Maximum SPI clocking speed of the device in Hz.
> +      SPI clocking speed of the device in Hz. Either a single maximum

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527175527.2247=
679-1-s-k6@ti.com?part=3D1

