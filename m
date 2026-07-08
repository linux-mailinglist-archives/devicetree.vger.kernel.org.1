Return-Path: <devicetree+bounces-322684-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T4HHKv8iTmqADwIAu9opvQ
	(envelope-from <devicetree+bounces-322684-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 12:14:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8737241D4
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 12:14:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fNhDvOVX;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322684-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322684-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9E7231468B4
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 10:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F09638837B;
	Wed,  8 Jul 2026 10:06:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8699038AC97
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 10:06:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783505174; cv=none; b=TVyaYP7eoHjYizopeUTbn9LlJU4SKrWslEIkz7nB7gSkKkMNXzSO7C8CNeDH6wQpNWcvknfxzRoNiHxsNEIlO4VH0bbisSZdN9MGyUGT6kxc2Vg/eBARW3UVPx31tu+uWM+k93Mhov/t08E2xPTCFuXwBWT7zIX2mXzJ09Ztu0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783505174; c=relaxed/simple;
	bh=B6MeDfUG5mQDlM5l3gQa1XAIk9thgxnE2L1Aq+NjufY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=KPeT+yW5BSFwv2gJ7Q5co+UkDRXKCuSvhPxya+68raWqSt2LLouajKEkM1DYJ1dJ0IoUAFA+u00X3aQKikOVYQxMXZiFmPtyHjiwliU9y54/fsrECC/oeiLKIrn395eB2IEy/HKoXvxHTYzbELUXoeIsvI2ZTOUTwFxH1jpSfp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNhDvOVX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D54441F000E9;
	Wed,  8 Jul 2026 10:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783505173;
	bh=bixFD+WckKB6s0N2ii1HpnfCILr1sSnwWjZ8gZcqZN4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fNhDvOVX82OPYdHIMXwXvYXC4iKgBv6T90CX+MbBsx4SvnahmlUm2HfE480AZfa8F
	 k82fxSwl6PUspLTCOCEA1QJm467FLM9RUflWrcP6GnViap87FXwAV+ArP07RtRgXmL
	 91OBwoOMOMxepmW05RD4eM4gjbhmhVlO6nOvuey4nu8n4qWefGnI6ckiLJclPtkcKq
	 a9FApjTLJ5u1OiDnrCUBm9SQ4v+Z1ezKuvUH2IzWFTit8uD4uMk4nRQjoZLisMJQ5H
	 yIF7Y7phHJK3+1RZEOaxkSXHHCtpwfMs2HRWTux/E/nvyOpFrNQuwjGa+x9bbLgrPC
	 T6ylHhPL1M5kg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: dac: Add DAC8163
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lukas Metz" <lukas.metz@gmx.net>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260708-dac8163-work-v2-1-3acd1bf20182@gmx.net>
References: <20260708-dac8163-work-v2-0-3acd1bf20182@gmx.net>
 <20260708-dac8163-work-v2-1-3acd1bf20182@gmx.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 10:06:12 +0000
Message-Id: <20260708100612.D54441F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322684-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmx.net];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:lukas.metz@gmx.net,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EB8737241D4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The device tree binding uses the non-standard `clr-gpios` property =
name for a reset line instead of the standard `reset-gpios`.
--

--- Patch [1]: [PATCH v2 1/2] dt-bindings: iio: dac: Add DAC8163 ---
commit f211d5a7de6b208a53302eba555c43258dd0918b
Author: Lukas Metz <lukas.metz@gmx.net>

dt-bindings: iio: dac: Add DAC8163

Add device tree binding for the Texas Instruments DAC8163 family
including the DAC7562, DAC7563, DAC8162, DAC8163, DAC8562 and DAC8563.

> diff --git a/Documentation/devicetree/bindings/iio/dac/ti,dac8163.yaml b/=
Documentation/devicetree/bindings/iio/dac/ti,dac8163.yaml
> new file mode 100644
> index 0000000000000..533cc7327c2b6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/dac/ti,dac8163.yaml
[ ... ]
> +  avdd-supply: true
> +
> +  clr-gpios:
> +    description:
> +      The device registers are reset when this pin is asserted. The outp=
ut is
> +      set to zero (xxx2 devices) or mid-scale (xxx3 devices).
> +    maxItems: 1

[Severity: Low]
Is clr-gpios the correct name for this property? The description indicates =
it
functions as a reset line. Should this use the standard reset-gpios property
name instead of a datasheet-specific pin name?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-dac8163-wo=
rk-v2-0-3acd1bf20182@gmx.net?part=3D1

