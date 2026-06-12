Return-Path: <devicetree+bounces-310991-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id F2GoGCUSLGp3KwQAu9opvQ
	(envelope-from <devicetree+bounces-310991-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:05:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F351567A0D8
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:05:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fSH3B+6l;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310991-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-310991-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 54AD7300615D
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 14:05:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 308ED382F3A;
	Fri, 12 Jun 2026 14:05:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2093D3806D7
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 14:05:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781273123; cv=none; b=b8yAvVJdJOGuUIc+F/mTYHLyDws5i4dZMJG9Hte9Kgun3O1AGHAg/6M0bNaUTpIuvJ5WGKLm0Z6gs2N9+tAqxcz8qK8ch5Wjn2NYK/UiXY0RTOUrhQTmKaaSHYfWfecElHDZiqvv7wD6pPmnJ+keBCyQflUtR7Jtn3oYE/qITgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781273123; c=relaxed/simple;
	bh=HXvaJ2lXMtfOTqSD+QuRJTFG9ekC+02QVNfs+QTXhxM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GTSFRd1F0JmL1g5EjGOWezOmpRRG3ItIm+mxiC++Zd6UeO9K/Zkis3cWrRiF3zNhqdUUDeDhwTb1JnMJTVbGTZA3/nUQgiL0vYF2Hx8uYzxg5Ub5dffC7vHt0dzC2OrREeXILSKyRU6HN4RaQhQklzpjq36PlX5PvBckmQqt61U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSH3B+6l; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FDB41F000E9;
	Fri, 12 Jun 2026 14:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781273121;
	bh=ynOvXDmZCuomrKtVD1b0A1IlIzgqIP1O5fRlLCq3uiY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fSH3B+6lb28m6b/Ipa1LQq89sLe6AcvE949aWGi+SPe1O6v8uCUexPNzkTJ42IJjg
	 y9/8mdbD8tA6OTCj07I82ojmejW9ZiTMT0oYSBPTOneyXdfuSAsc+f6nD9KJN4c44J
	 zDky/mQejSAvXXXuSP45JNl70r1RBr05pwRnDH2z8Ul5Rf56f6H9oN0pFX2scazGQf
	 MmzNRzdBe+yBaSzSNTxTWvM7wic8gzNfGQcH0b7sriEpHld0M8HrDbb0soc2YemTml
	 ctKgRU8S649sl7CnyWTGlbewEgXjh6K4uPRjOFA4P4cx4RKh+Ijsv5CJp8MVDokoiD
	 dQVgSr909obTg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/3] dt-bindings: pwm: Add Raspberry Pi RP1 PWM
 controller
Reply-To: sashiko-reviews@lists.linux.dev
To: "Andrea della Porta" <andrea.porta@suse.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <350c2fb454951fd2c9d959f1d94802fea8fa8152.1780670224.git.andrea.porta@suse.com>
References: <350c2fb454951fd2c9d959f1d94802fea8fa8152.1780670224.git.andrea.porta@suse.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 14:05:21 +0000
Message-Id: <20260612140521.7FDB41F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310991-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:andrea.porta@suse.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[raspberrypi.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F351567A0D8

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The binding advertises optional DMA support but omits the required =
`dmas` and `dma-names` properties, causing schema validation to fail for fu=
lly-described hardware.
--

commit e8a66b347923785d0769453c48739036bf8237d0
Author: Naushir Patuck <naush@raspberrypi.com>

dt-bindings: pwm: Add Raspberry Pi RP1 PWM controller

This commit adds the devicetree binding documentation for the PWM controller
found in the Raspberry Pi RP1 chipset.

> diff --git a/Documentation/devicetree/bindings/pwm/raspberrypi,rp1-pwm.ya=
ml b/Documentation/devicetree/bindings/pwm/raspberrypi,rp1-pwm.yaml
> new file mode 100644
> index 0000000000000..6f8461d0454f7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/raspberrypi,rp1-pwm.yaml

[ ... ]

> +description: |
> +  The PWM peripheral is a flexible waveform generator with a
> +  variety of operational modes. It has the following features:
> +   - four independent output channels
> +   - 32-bit counter widths
> +   - Seven output generation modes
> +   - Optional per-channel output inversion
> +   - Optional duty-cycle data FIFO with DMA support
> +   - Optional sigma-delta noise shaping engine
> +  Serves as a fan speed provider to other nodes for a PWM-connected
> +  fan using shared registers (syscon).
> +
> +properties:
> +  compatible:
> +    const: raspberrypi,rp1-pwm
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  "#pwm-cells":
> +    const: 3
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +unevaluatedProperties: false

[Severity: Low]
Since the description advertises optional DMA support, should the properties
block also define dmas and dma-names?

With unevaluatedProperties set to false, any device tree node that tries to
describe the hardware's DMA channels will fail schema validation. Even if t=
he
OS driver does not yet implement DMA support, shouldn't the binding fully
describe the hardware capabilities so fully-described nodes aren't rejected?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1780670224.gi=
t.andrea.porta@suse.com?part=3D1

