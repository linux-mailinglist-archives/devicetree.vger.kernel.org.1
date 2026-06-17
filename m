Return-Path: <devicetree+bounces-312778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2wSoDOU5MmpMxAUAu9opvQ
	(envelope-from <devicetree+bounces-312778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 08:08:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E058696C2E
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 08:08:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=K51FwIbI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312778-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312778-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 72F1D303E6E9
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 06:08:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE1373B19D2;
	Wed, 17 Jun 2026 06:08:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F703B19AA
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 06:08:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781676514; cv=none; b=eU4FhCXioy6lA8iRhYV7+jluQ4d7uLt9Jrir7W3euZhF+wPToQEelBdCUNNQyNQrRjoBdc1ObnysUHzQeIi5rNeQa6bCmI56dqMdR81wFalFAGFH60YgMBqgpGVeby2ruvRf2EnGhw3bzw4uTMBZOZnSt15+aJ5RkF1IaNJV3RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781676514; c=relaxed/simple;
	bh=9ehBrF5wTPuxo15wCUGBvfWY5SgLjfW0WLdNQSzHpH0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Md8sQRHnL8lfOXv/k7Zot5MqJ6j6/Ip1undJyVNyUs97lypTBQpRM3REf4cAgD3yQHtWUQTCqc52OMjpHRJu8z5QTaDF4Kj35RDzTSpxY4Gn0G19b0iMLqsP0ax/0142+rQZc/6wKQdWlgSGrXHW8xeYxYqeLV7hpTsPCa7N1zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K51FwIbI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D4DA1F000E9;
	Wed, 17 Jun 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781676513;
	bh=773lQpUtu5fd0VnAigd+mpmrajONj1D137g5eZ7wPBg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=K51FwIbIggYUac1wg0rK3LKXc0IqMoFENQWxkJwh8Bdf1adx7LgotLFCcFAwUqdLP
	 McO6YGKCXRlD0Do+3EeZOOH2WhMHvtJBOt4qO3uSHgd+wKvu44jhRkgKy53CTui7Ia
	 bKrtHpq0WKQ1DniQqumwl1vlDHr4KGnvWue7iS7d+WxFC/D3me5O6XtfWmCsIECqAB
	 AUsLthEET0us8OLZlhE/igGSnEXzX25wTA+5jMRoYoS8iy8vkSrFcl/+QwjDWYjATB
	 ISMtYmKabrfy74tshFuZuMVKucjDZLQ5TEWiromIorkDS8nkcTXC1jaybk/Su9L+5T
	 L4EDEIaHShEkQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/5] dt-bindings: clock: cix,sky1-audss-clock: add
 audss clock controller
Reply-To: sashiko-reviews@lists.linux.dev
To: joakim.zhang@cixtech.com
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260617060437.1474816-4-joakim.zhang@cixtech.com>
References: <20260617060437.1474816-1-joakim.zhang@cixtech.com>
 <20260617060437.1474816-4-joakim.zhang@cixtech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 06:08:32 +0000
Message-Id: <20260617060833.2D4DA1F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312778-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:joakim.zhang@cixtech.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,cixtech.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8E058696C2E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Typo in the clocks property description: 'delicated' instead of 'de=
dicated'.
--

commit 0bf88f97ab11d2c8010b886d37df1eed62b3d256
Author: Joakim Zhang <joakim.zhang@cixtech.com>

dt-bindings: clock: cix,sky1-audss-clock: add audss clock controller

This commit adds a devicetree binding for the Cix Sky1 audio subsystem
(AUDSS) clock controller. It acts as a child of the system control
syscon, routing 4 reference clocks to internal consumers.

> diff --git a/Documentation/devicetree/bindings/clock/cix,sky1-audss-clock=
.yaml b/Documentation/devicetree/bindings/clock/cix,sky1-audss-clock.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/cix,sky1-audss-clock.yaml
[ ... ]
> +  clocks:
> +    items:
> +      - description: I2S parent clock for sampling rates multiple of 8kH=
z.
> +      - description: I2S parent clock for sampling rates multiple of 11.=
025kHz.
> +      - description: clock feeding most devices in audss (NOC, DSP, SRAM=
, HDA, DMAC, I2S, and Mailbox).
> +      - description: clock feeding for HDA, Timer and Watchdog, which is=
 a delicated 48MHz clock.

[Severity: Low]
This isn't a bug, but there is a typo here where delicated is used instead =
of
dedicated.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617060437.1474=
816-1-joakim.zhang@cixtech.com?part=3D3

