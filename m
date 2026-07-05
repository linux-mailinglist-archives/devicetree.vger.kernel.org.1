Return-Path: <devicetree+bounces-320633-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0kmUJGtbSmruBgEAu9opvQ
	(envelope-from <devicetree+bounces-320633-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 15:26:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F130770A1A5
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 15:26:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=N6bB94eQ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320633-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320633-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D0A2F3014656
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 13:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74F6037DAA9;
	Sun,  5 Jul 2026 13:25:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9CA3769F8;
	Sun,  5 Jul 2026 13:25:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783257939; cv=none; b=k5kjp/RrDRxcdAydHNqz593Ed+NfhGf/fVn1sjbGfav+oa9yJddV/accjOfAZNQXwaMnl/2q2YQTaWLihjMKI61CCPkSOZlSejThalt4Np5V8NMaObpn2A9CBPjj7SYsgQJC8z0OZ+TU8BUMjnKNQIQP1O9HaR8Cl5nACOQn4ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783257939; c=relaxed/simple;
	bh=v/MuXK0A7PWdJe7cYHvN4YSzD+If7m5nJBXkAvWHFrw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aMHUQ1SvOC7ORbG8DDIp6jGhG36jyDykN7LO3m8CPxzTqFGWK94e9CB4eOHYinBkR2eTWRQoFN+ilBSLmvNNOy9ea8TjsAig0ZEg+N/8EJzapWZklYINPcvDeWUuNeI1UH/B73K2028NvepJfHKjOIqBQRcUBTI1UQbG7ebsOxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6bB94eQ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67E191F000E9;
	Sun,  5 Jul 2026 13:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783257937;
	bh=sk9s+wmenO4lhSSQUR2ZhBw0dUI3zeOMEI/SPYuTWGc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=N6bB94eQRBxZlmbhlqZqTZuK5qxEgseOUVlaPFlP1ScEopC9Oh9O5qPyo+mUjpoOe
	 l/bj5bBzWGnBdovre8O7x1X1BPd5FCdFR27zMLNbu4yKc1tekONgt75UKnpCzRjdm7
	 xqlBhftHd+BQ45g+eaTDI0OUUwB2EfBWXuVpGjX+hKBs4Jy73DluWl7MN4gKw1mcR6
	 pGpe4vQq1lqBQnqNqC+qEaoCfjT3ykVmBxCqBBVtale4Ne4Nf5TWVBKWzEB9HWXGhG
	 E87/mzDPg9QfiT44XlV902CZ4urc5pjo4Ir7q5MzQ7fxEaXHiiGJeCsiZocIEMmiXp
	 abk/e8yd88awQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 07/10] dt-bindings: i2c: apple,i2c: Add t8132 compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yureka Lilian" <yureka@cyberchaos.dev>
Cc: linux-watchdog@vger.kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260705-apple-m4-initial-devicetrees-v1-7-e5655ee56523@cyberchaos.dev>
References: <20260705-apple-m4-initial-devicetrees-v1-0-e5655ee56523@cyberchaos.dev>
 <20260705-apple-m4-initial-devicetrees-v1-7-e5655ee56523@cyberchaos.dev>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 05 Jul 2026 13:25:37 +0000
Message-Id: <20260705132537.67E191F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320633-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,cyberchaos.dev:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:yureka@cyberchaos.dev,m:linux-watchdog@vger.kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F130770A1A5

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The 'apple,t8132-aic3' (and 'apple,t6030-aic3') compatible strings =
are omitted from the if-then conditional block that defines the '#interrupt=
-cells' constraints.
--

commit 0a172829316de760c58e58c389ee943615b44f94
Author: Yureka Lilian <yureka@cyberchaos.dev>

dt-bindings: i2c: apple,i2c: Add t8132 compatible
   =20
The i2c block on the Apple silicon t8132 (M4) SoC is compatible with the
existing driver. Add "apple,t8132-i2c" as SoC specific compatible under
"apple,t8103-i2c" used by the driver.

> diff --git a/Documentation/devicetree/bindings/i2c/apple,i2c.yaml b/Docum=
entation/devicetree/bindings/i2c/apple,i2c.yaml
> index 9e59200ad37b6..8ce77258e2e5b 100644
> --- a/Documentation/devicetree/bindings/i2c/apple,i2c.yaml
> +++ b/Documentation/devicetree/bindings/i2c/apple,i2c.yaml
> @@ -25,6 +25,7 @@ properties:
>            - enum:
>                - apple,t6020-i2c
>                - apple,t8122-i2c
> +              - apple,t8132-i2c
>            - const: apple,t8103-i2c

[Severity: Low]
Is there a related regression in the interrupt controller bindings for this
SoC generation in:
Documentation/devicetree/bindings/interrupt-controller/apple,aic2.yaml?

Looking at the conditional block that defines the constraints:

  - if:
      properties:
        compatible:
          contains:
            enum:
              - apple,t8112-aic
              - apple,t8122-aic3
    then:
      properties:
        '#interrupt-cells':
          const: 3

Are the 'apple,t8132-aic3' (and 'apple,t6030-aic3') compatible strings omit=
ted
from this if-then conditional block that defines the '#interrupt-cells'
constraints?

Failing to include new generational strings in existing conditional blocks
can cause schema validation to be incomplete.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260705-apple-m4-i=
nitial-devicetrees-v1-0-e5655ee56523@cyberchaos.dev?part=3D7

