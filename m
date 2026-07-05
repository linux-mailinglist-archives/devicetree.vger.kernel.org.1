Return-Path: <devicetree+bounces-320596-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tSRkNOgvSmrH/AAAu9opvQ
	(envelope-from <devicetree+bounces-320596-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 12:20:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2054E709BDF
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 12:20:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=limaXQ4Y;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320596-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320596-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A82DB300A778
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 10:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AA4135BDAA;
	Sun,  5 Jul 2026 10:19:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152522472B8
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 10:19:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783246794; cv=none; b=dniWh/cLHtmO2HblHNu8gOrGHBkTH/jJC8tQAnfsAuflE5DrW0OHfJ2aLiBRe/akrOp+pH631/5dPeuP8fVKgBTV8j9bzyA538HCgR72GTqvG/s1v1psBIKwQxuuOTFfCtyShrxhul9FnUfsKCxTMhaIuzJC92UHC6tcWvoMdRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783246794; c=relaxed/simple;
	bh=EhheuWa0B0KUsdLsS8pd7TMEJLpCf0Ci8XbU8ihqsiQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=O9sEXwyDlwMhBt8+Mr1SvL4J1WWDyuIvqK9/ZC52fxICftd2KxlTDwbGTP3NWVbnzhHTGqB47DkGDd9IG7f8x9dppVA1Jl68JJjWMoHj/iagDCfusiWUbNXnMs5PSAp/Vy6XCXjSdsnQG+p/UYF/ZUxGcmgtgcitt+vdNigm5Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=limaXQ4Y; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D76F1F000E9;
	Sun,  5 Jul 2026 10:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783246792;
	bh=vLPkzF0A560kYNyxKCvHMFB2LDMQOoEAEr7vl1kmp7E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=limaXQ4YM89tyf4VdqFqN7YDt50eED5m2dj3QvTNv0R73pU9I7ECeuk6QoTHN0rbl
	 jvmW4aFiG+QgmUfCbXXXrAeNJe05aDMLCqzMxVaRzWhOfK32g6pSxhWOFZjWN/OnWU
	 XT79tCDYY1CNHavDNKLO317cl44EJDdATodoCVHaMcRi+C3aC1uOO42aNXjPccL2Bi
	 yZY0TZKHHlhTZXN2g7DWdoZAhVYB/DhXyWRKMyfMD97TsjD3zMYcnYr0MlNyu23LRh
	 1W9awYyf+b7nADo22HwNlQYbo7mDn6rG+0qec1EOxNRNt4+o7HQYJuymzN+6bZbQ5B
	 sf7VKgOG7CmGg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: motorola,cpcap-usb: add
 chrg_det interrupt
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ivaylo Dimitrov" <ivo.g.dimitrov.75@gmail.com>
Cc: vkoul@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260705101105.1798069-2-ivo.g.dimitrov.75@gmail.com>
References: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
 <20260705101105.1798069-2-ivo.g.dimitrov.75@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 05 Jul 2026 10:19:51 +0000
Message-Id: <20260705101952.3D76F1F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320596-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ivo.g.dimitrov.75@gmail.com,m:vkoul@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:neil.armstrong@linaro.org,m:ivogdimitrov75@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,lists.infradead.org,linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2054E709BDF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Critical] Adding a new interrupt to the items list without specifying `m=
inItems` breaks backward compatibility for existing device trees.
--

commit 7e8931dde2ba82b58d38efd0314e63d294e5301f
Author: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>

dt-bindings: phy: motorola,cpcap-usb: add chrg_det interrupt

This commit updates the motorola,cpcap-usb-phy binding by appending a new
charger detection interrupt for DCP detection and updating the example.

> diff --git a/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy=
.yaml b/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
> index dd345cbd0a0b4..7488c46cc6193 100644
> --- a/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
> @@ -30,6 +30,7 @@ properties:
>        - description: se1 interrupt
>        - description: dm interrupt
>        - description: dp interrupt
> +      - description: charger detection interrupt
> =20
>    interrupt-names:
>      description: Interrupt names
> @@ -43,6 +44,7 @@ properties:
>        - const: se1
>        - const: dm
>        - const: dp
> +      - const: chrg_det

[Severity: Critical]
Does appending these items implicitly change the required number of interru=
pts
from 9 to 10?

In dt-schema, defining an items list implicitly sets both minItems and maxI=
tems
to the length of the list unless explicitly overridden. By appending the 10=
th
item to interrupts and interrupt-names without adding a minItems: 9 fallbac=
k,
it appears schema validation will strictly mandate exactly 10 interrupts.

Is this a regression that will cause existing device trees with 9 interrupts
to fail validation?=20

If the driver is updated to unconditionally require this new interrupt, cou=
ld
this also cause the driver to fail to probe on hardware using older device
trees?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260705101105.1798=
069-1-ivo.g.dimitrov.75@gmail.com?part=3D1

