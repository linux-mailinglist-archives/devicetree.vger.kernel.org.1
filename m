Return-Path: <devicetree+bounces-320441-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qSdqGr3BSGrgtQAAu9opvQ
	(envelope-from <devicetree+bounces-320441-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 10:18:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C13EB7070BE
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 10:18:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HGs6WlwC;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320441-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-320441-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C9D14300E173
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 08:18:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8513F391E7F;
	Sat,  4 Jul 2026 08:18:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8B738A706
	for <devicetree@vger.kernel.org>; Sat,  4 Jul 2026 08:17:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783153080; cv=none; b=XY7SAXDgDSiP+3y2t9UxO8KkHWKo5EmBda86jhFCuPHAzq6JePgoKpDve6+2Yca43UDHwCM4+L+PLnzLeoJ3i3YPVbyODJOlgfBTfrxeYE0GcBXNh7wuJimQKW6bE9Q+/gx7IsdxsMy89zPoAjMcLyJQJEG9A+1AU8Qyb7FDAo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783153080; c=relaxed/simple;
	bh=C1jj7Xcm0s576A9CaB/YrqNAtez5r5fdtxChSqNoiPg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=k/Q6S+h7U4ym9q+gR79qNU3TcLhLLM8eQGygBMbi9ObDEUo15qo6yEb3IXx3wWaHFyNLVDPElQswkRmwcIOoLUM3iuMSOwKzLmXuLO1JcY9F34VIMJg+VLb0FX9cto7cTYXbde16gEJly/NS63HsFlCJ/lK0amgJyZ1w8pOfdAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGs6WlwC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BD4D1F000E9;
	Sat,  4 Jul 2026 08:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783153078;
	bh=eYdslUEHglSsKArGGYBW8S+iSURNODT8r9whWz4B9R4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HGs6WlwCM9f/mawrsX022QQHevm+W0PXWjlfWzl51azxHJvSA7YuOVpHz14NpNNrx
	 wUGM/CVuHIHE8YVhUai/nRrhmHeGXpTHjttsIPQ03L8QhxHeg4hnvFia3dcr+KSbGs
	 iA01V40zuAbrj+wdYDuoFN9Iy54DydlJTbVYbHx2jw/1aqlr1sT1XO3i/TgD5ieMa4
	 nYu2MPb/2XUB+9cftXzK/V3wDPcIiJC228QchrBJStZ0KTwU7L5vQnLTLiVA0jPpjn
	 wSdnNPYUtLJb/L5grbgnnuKvfNqTmzCBqZsXBVQomDRj0mTYi5k5DVgFhAhnfI+lGq
	 KYxmeYvl6BJAQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: display: Add Solomon SSD1351 OLED
 controller
Reply-To: sashiko-reviews@lists.linux.dev
To: "Amit Barzilai" <amit.barzilai22@gmail.com>
Cc: dri-devel@lists.freedesktop.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260704080925.75113-2-amit.barzilai22@gmail.com>
References: <20260704080925.75113-1-amit.barzilai22@gmail.com>
 <20260704080925.75113-2-amit.barzilai22@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 04 Jul 2026 08:17:57 +0000
Message-Id: <20260704081758.0BD4D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320441-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:amit.barzilai22@gmail.com,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:amitbarzilai22@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C13EB7070BE

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] Missing default values for `solomon,width` and `solomon,height` in =
the binding schema.
- [Low] Malformed Git trailer in the commit message (`Assisted-by: Claude:c=
laude-opus-4-8`).
--

commit 1fc812656be731d6e9e5623e968e630de22b7e48
Author: Amit Barzilai <amit.barzilai22@gmail.com>

dt-bindings: display: Add Solomon SSD1351 OLED controller

This commit adds a device tree binding for the Solomon SSD1351 OLED display
controller. The binding builds on the shared solomon,ssd-common.yaml proper=
ties.

>     Assisted-by: Claude:claude-opus-4-8

[Severity: Low]
This isn't a bug, but this Git trailer does not follow the standard format
`Tag: Full Name <email@address.tld>`. Without an email address enclosed in
angle brackets, this will likely trigger checkpatch warnings.

> diff --git a/Documentation/devicetree/bindings/display/solomon,ssd1351.ya=
ml b/Documentation/devicetree/bindings/display/solomon,ssd1351.yaml
> new file mode 100644
> index 0000000000000..80850c2ab5b3e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/solomon,ssd1351.yaml
[ ... ]
> +allOf:
> +  - $ref: solomon,ssd-common.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - solomon,ssd1351

[Severity: Low]
Should there be default values defined for `solomon,width` and
`solomon,height` in this block?=20

Since the common schema `solomon,ssd-common.yaml` indicates these defaults
are controller-dependent, omitting them here leaves the hardware's default
resolution undocumented in this schema.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260704080925.7511=
3-1-amit.barzilai22@gmail.com?part=3D1

