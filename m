Return-Path: <devicetree+bounces-313780-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i1yQBdA7NWrzpQYAu9opvQ
	(envelope-from <devicetree+bounces-313780-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 14:53:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8CB6A5DDC
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 14:53:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="I2Lu/e4T";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313780-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-313780-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1FFE5300AC86
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 12:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5FAA3890F7;
	Fri, 19 Jun 2026 12:53:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C073890F3
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 12:53:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781873612; cv=none; b=OuRkurNf38z/TMgMjHJJP1n3xq7tPnc7EN2oskBlgkbQ0EHmtWyAX3E9YfI2yjiiYpnvTMU8q8Gpsw4pbDxaGZGscSTGju6Cl1ZCLy2i7xZW2S9oyrIPymiNPiCUQERssFif3AfVt9Pot8/1uiAzR8W0SeDX26Lz+qBCy5/wr4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781873612; c=relaxed/simple;
	bh=ryU1tZTeswrfZ8iwXeLI59+Z41KCaez9u8Ydbewpt2c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HP6Yt+oyE79IHaXn3T+dDPrPA2OsiEWgBAXm9kPeoW2830xYolTMvROVGGWmd5VSYUti+fcTLhOMS2QdhNOwpgqQZWlt1az/gZ8vtU4efRv0gAOCTf0whb3j0J7QuV1NXf3ekTZBkJSMpnERT/UB8ZDgvUurqZIDjNIsoBjI8sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2Lu/e4T; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F3501F000E9;
	Fri, 19 Jun 2026 12:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781873611;
	bh=J/cKCcbMdTu9hfCVi+oJbEwh7A+3vW3QjfTroaPp+E0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=I2Lu/e4T1hppO1VIHkwNfSmcdqrw3VgHNdA0L3yJt6IgE61EbN05gZhEBcaVvdS0J
	 mm3bTTYNndKC3gKxJwTFp+Q3Sl/Js4SPUcNXimbpE5Z961s2kFfmVUBq0WQIt+/ZKp
	 DhRsE/wbvecs84w3evXvbcd3Qpnx0DSJNharnL2KyT+bUM086bXe+nRVMUur5nOJ0c
	 XCjp4GhBXQJi2Eh/29Z6mvrvQjyWyMXH54sU77uiHvvdsfjeqUKgT530Y/LO4LeHaT
	 IZDFEPC35uHzbM2ShBP/rWjs1nhZEN9gDYFq51BeDGwEsX+pvfHy/1bFQsOC5oZbQQ
	 Ke8IOXs5K8TKA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4] dt-bindings: misc: convert lis302.txt to YAML
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jad Keskes" <inasj268@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260619124426.882626-1-inasj268@gmail.com>
References: <20260619115649.840676-1-inasj268@gmail.com>
 <20260619124426.882626-1-inasj268@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 12:53:30 +0000
Message-Id: <20260619125331.1F3501F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313780-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:inasj268@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C8CB6A5DDC

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The YAML binding erroneously forbids `Vdd-supply` and `Vdd_IO-su=
pply` for the SPI variant by setting them to `false`.
--

commit 286d4c20f34dbb3740102063ad8a21275e5828b2
Author: Jad Keskes <inasj268@gmail.com>
dt-bindings: misc: convert lis302.txt to YAML

This commit converts the old LIS302 accelerometer plain text binding into a
YAML schema. It covers both I2C and SPI variants and retains deprecated
property names for backwards compatibility.

> diff --git a/Documentation/devicetree/bindings/misc/st,lis3lv02d.yaml b/D=
ocumentation/devicetree/bindings/misc/st,lis3lv02d.yaml
> new file mode 100644
> index 0000000000000..c73371b754a1e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/misc/st,lis3lv02d.yaml

[ ... ]

> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          not:
> +            contains:
> +              const: st,lis302dl-spi
> +    then:
> +      required:
> +        - Vdd-supply
> +        - Vdd_IO-supply
> +    else:
> +      properties:
> +        Vdd-supply: false
> +        Vdd_IO-supply: false

[Severity: Medium]
Does forbidding these power supplies for the SPI variant prevent accurate
hardware description?

The hardware physically requires Vdd and Vdd_IO power supplies to function,
regardless of whether it is accessed via I2C or SPI. Setting these
properties to false in the else branch explicitly forbids device tree
writers from modeling the physical regulators powering the SPI device,
which will cause valid hardware descriptions to fail dtbs_check schema
validation.

> +      required:
> +        - spi-max-frequency
> +        - interrupts

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260619124426.8826=
26-1-inasj268@gmail.com?part=3D1

