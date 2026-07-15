Return-Path: <devicetree+bounces-326677-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rzyFHqIsV2rKGwEAu9opvQ
	(envelope-from <devicetree+bounces-326677-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:45:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E0075B33D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:45:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=A74U19e1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326677-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-326677-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 166463039B27
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 06:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E382C3218BA;
	Wed, 15 Jul 2026 06:45:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2F38325701
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 06:45:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784097929; cv=none; b=kMTeFJzwEQKmThLI3R3HwAlsNrBpZt+EIVCq5lPDEpEy0uALEIX32Mui5boRILR+81eSPlmbqrEsDoR4omgib2M5EOcdbbLy/piZ6OzkqFdNytJLQFHHZSnseBdWuug3Xbg7hvKdZVHNAuU5sD4UWfsq4CNMv3GjA+1XbrRjKxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784097929; c=relaxed/simple;
	bh=dvB1ku2ih9N+hjXliA2dkGafHTZPyHGIiCoZ6VV4Jww=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=d+vAEiQ2aIV5B3SBoxL55Q40jcLSu6sQiG1AsS3Og9fnPRe8G9FdGyNbENIiyZ3qZYq+foZGJl84uh3nqb+enrz6rPnVeRwAPs4vNTzW7sLnt6o9Ff+jWDK63vkAFxDhsX0FWUaECWEEKbLwj6hop4OVKFn9G+zs6UlXLZSnzjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A74U19e1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E3FF1F000E9;
	Wed, 15 Jul 2026 06:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784097928;
	bh=5TvmqIpdkwF7WoetwylVrCPOs3by5RB6hCKuAaseWEA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=A74U19e1x38WjGTcTvjUXY3e/098asdUcTN4/zYdFdk5cATr8nW19tQGWC8Jrt948
	 V/rvHclJPCuM6weOGPtkGXAqsNl6W4HYmnNGMj8RfO8HQhkwjFYOeKuda2UdoDSHaH
	 gzNpty2MfzP8j4fihWIePGhBNsyQGNvXyZx3DkA943nCjlc1GDwRNg4uIM+hi5mBiR
	 Myslt0PrzN1cDNU9/HI9Gs5adgiTXxFqHCGrfdgWMsA+lq2zHyjOWd6vGGPPqYgtK8
	 cfizrZz4nLggLYV7wfKqQQOO+PlExrIQNEun2Dyf/bMf5wrN5JNi6kXL0MJskCheno
	 5oV08Tzp6JqsQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: adc: add maxim,max40080
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefan Popa" <stefan.popa@analog.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260715063652.368501-2-stefan.popa@analog.com>
References: <20260715063652.368501-1-stefan.popa@analog.com>
 <20260715063652.368501-2-stefan.popa@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 06:45:27 +0000
Message-Id: <20260715064528.1E3FF1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-326677-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stefan.popa@analog.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,analog.com:email,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 13E0075B33D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `shunt-resistor-micro-ohms` property is missing from the `re=
quired` list, allowing incomplete hardware descriptions to pass validation.
--

--- Patch [1]: [PATCH v3 1/2] dt-bindings: iio: adc: add maxim,max40080 ---
commit 102dd7d43e2e646eee1b098788f579fc92431947
Author: Stefan Popa <stefan.popa@analog.com>

dt-bindings: iio: adc: add maxim,max40080

This commit adds device tree bindings for the Maxim MAX40080 bidirectional
current-sense amplifier. It defines the required and optional properties for
the device, including an integrated 12-bit ADC and an I2C/SMBus interface.

> diff --git a/Documentation/devicetree/bindings/iio/adc/maxim,max40080.yam=
l b/Documentation/devicetree/bindings/iio/adc/maxim,max40080.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/maxim,max40080.yaml

[ ... ]

> +  shunt-resistor-micro-ohms:
> +    description:
> +      Value of the current-sense shunt resistor connected between the IN=
+ and
> +      IN- inputs. Used to scale the reported current.
> +
> +required:
> +  - compatible
> +  - reg
> +  - vdd-supply

[Severity: Medium]
Should shunt-resistor-micro-ohms be added to this required list?

Without this property, the schema will silently pass incomplete hardware
descriptions during a dt_binding_check run. A current-sense amplifier
requires a shunt resistor value to correctly scale the measured voltage
drop into a current measurement.

> +
> +additionalProperties: false

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715063652.3685=
01-1-stefan.popa@analog.com?part=3D1

