Return-Path: <devicetree+bounces-311899-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xhlzMtjrL2pFJAUAu9opvQ
	(envelope-from <devicetree+bounces-311899-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:11:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 179E868604E
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:11:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YhZPfXnh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311899-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311899-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0FA0F30575F5
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F5683E5A35;
	Mon, 15 Jun 2026 12:06:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C60F30D3FC
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 12:06:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781525194; cv=none; b=JQuLJW2ItclD6n30598Y/qvAe7oKxzmpyAS+7qGbz9dWK6HOjEOotEcqv8fXFh/J8cRs1/i1gF3YwyCY9zrje0FvjRnA1Wp6LEOZNWSsc/m5yTig1ICKrVP7E0KQfpv6qox8NZBBREm4ldWHeAhoDmExkj39yZT+E3P2sWVHeNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781525194; c=relaxed/simple;
	bh=7KxcQnq/kHV5+ZnpJfQeayzbt4wk4kpjtDu+yu+7D8Q=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QSMhnqMftEtuAbDZx9agJ+ixS7C0LXMwc4BYutR9+0zadl9zBAsVAF1ER1qG3geVYnjDGQ41F+Ctu3VY1UQQWbNNIYiJEerOU5YhCNNkq71O68uu4ZS6l5BQhw+kPCcSQ0UufiB2B++3JJ70Q2BoWw/7VUrnltH5gBX2omlMix8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhZPfXnh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA7DE1F000E9;
	Mon, 15 Jun 2026 12:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781525193;
	bh=MLhxDtwRH3heymAa2jmGqJYEA1ns+JBxjPpvqn4LTUM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YhZPfXnhLA7Lr58TEf+xoqpJHNtihOcCZASAMV8kteJzc/uRdirAZnUjCFU9+Egjg
	 wQ7uT+zBOYDV7wXwwGyTLA/QZLSCFoIdsmzW5BqDzJiNZDLuxIcS3hNhWZHFva6W1L
	 GRzY0R6TbJbzEaZ0dLLoc3Ky9T4AdCEVhkhaCV0UE/ckTAxL859LTnyjgX1KHBLf8I
	 vA0mxb0+q7K8SMXEZti4zEwG/6W7bhhZ7AGqffsBI2oAFmOpyWayhXaUoIxilhG8Vy
	 bn2G204v5mGPgrVvtuGP2kEre+LFHrselbhZ2fXruwg/sbHdZpPBvBwjJBf1/F8ZBT
	 cn7FmP7WvAsjQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] spi: dt-bindings: microchip,pic32mzda-spi: Convert
 to DT schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Udaya Kiran Challa" <challauday369@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260615115311.515404-1-challauday369@gmail.com>
References: <20260615115311.515404-1-challauday369@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 12:06:32 +0000
Message-Id: <20260615120632.DA7DE1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311899-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:challauday369@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 179E868604E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `cs-gpios` property was omitted from the `required` list dur=
ing the DT schema conversion.
--

commit 418415dcdca7e4f555bde32db4703c62c250ee78
Author: Udaya Kiran Challa <challauday369@gmail.com>

spi: dt-bindings: microchip,pic32mzda-spi: Convert to DT schema

Convert Microchip PIC32 SPI controller devicetree binding
from legacy text format to DT schema.

> diff --git a/Documentation/devicetree/bindings/spi/microchip,pic32mzda-sp=
i.yaml b/Documentation/devicetree/bindings/spi/microchip,pic32mzda-spi.yaml
> new file mode 100644
> index 0000000000000..a0a182cdccbd9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/microchip,pic32mzda-spi.yaml

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-names
> +  - clocks
> +  - clock-names
> +
> +unevaluatedProperties: false

[Severity: Medium]
Did this conversion intentionally drop cs-gpios from the required properties
list?

Looking at the legacy text binding being removed, cs-gpios was explicitly
listed under the required properties section. Since the PIC32 SPI driver
returns -EINVAL if the GPIO chip select is missing during setup, omitting
it here might allow incomplete device trees to pass schema validation but
fail later at probe time.

Could we add cs-gpios back to the required list to maintain parity with the
old binding constraints?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615115311.5154=
04-1-challauday369@gmail.com?part=3D1

