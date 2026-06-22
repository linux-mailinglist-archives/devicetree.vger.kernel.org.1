Return-Path: <devicetree+bounces-314258-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Z23cL4XqOGoxkAcAu9opvQ
	(envelope-from <devicetree+bounces-314258-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 09:55:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 164DA6AD70B
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 09:55:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=G4DZkxUU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314258-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314258-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A87E2303DD54
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 07:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3BB9383991;
	Mon, 22 Jun 2026 07:53:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD45838331F
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 07:53:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782114837; cv=none; b=ndaJfKjNhQWqck9rKBkYXWXH1e21IoMCM/tkBdfFyUtniLY1J98BM1ddXEM4auWA+J2wNDEjKQyKsoYmn/M8dAqFE6EiwD8bqdBbu66FpYXPYjBzry1E1Js8K0+/BtcxtjYo6ufWbWIEex8giP2ZL2n+xqPjV4IE+d23yW1Ooe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782114837; c=relaxed/simple;
	bh=t17gu4yMU3FuF4L51YWSp82BGqiZ9I6mOFZjfE5+VR4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WVXpDGEez2zMQalK6hyMwn1MsB38+S4GILJjkzPMEz4KGJgvjxgKjMssVmPCJuOrR8votvYWH4Tz0Gbr36cGpH7nlw86IX4Qf+yknzlR+akHbFD4THniLbhFk2V4J5FZyxCgIF/MSStx7e4icn3vR7ezJBCv8TPcREoFKWXMoDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4DZkxUU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA5241F000E9;
	Mon, 22 Jun 2026 07:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782114832;
	bh=ZEsFU/x3PzzbAkfC5cDRQrkFi2d1a/Tsug4d0KShVBg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=G4DZkxUUCOomfxyYAWxVIfOnVgFTNyZzfC1F1or8IXh0m2b8i6fvWeCSxV+mIdM2/
	 jrKfDZg1b/jjLIUyC5Dm5shBIWLiUpDPXwPSGSdBuPTpCyJQsnHIRfz6eMBCng3Mv1
	 JWra6tTMl1frP6AooP9TI1ooqv46ieeY4C3kaoR4OEkB7c6qT1MrSStZr8rmUZE06w
	 1qTYjk/RkrSnjLxaleHewL6oqBAS7A5z3N7KIo47Z1BMLIgbPv8OcFPAQ1hyc9Kdb7
	 UJuViGdp+pUd0Wuij8NMpag8uRSbqLTbODUhqTfJ/cXcl0vtRN59taTDS3xU8Xz6Rq
	 10SNT+KGVwqjw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: adc: add Axiado AX3000/AX3005
 SARADC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Petar Stepanovic" <pstepanovic@axiado.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260622-axiado-ax3000-ax3005-saradc-v3-1-e57c7c7ae675@axiado.com>
References: <20260622-axiado-ax3000-ax3005-saradc-v3-0-e57c7c7ae675@axiado.com>
 <20260622-axiado-ax3000-ax3005-saradc-v3-1-e57c7c7ae675@axiado.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 07:53:51 +0000
Message-Id: <20260622075351.CA5241F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314258-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:pstepanovic@axiado.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[axiado.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 164DA6AD70B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing IIO mailing list in MAINTAINERS entry.
--

commit 474cfbabb6190ddd4a26c0a176ce44e7335b5716
Author: Petar Stepanovic <pstepanovic@axiado.com>

dt-bindings: iio: adc: add Axiado AX3000/AX3005 SARADC

This commit documents the compatible strings, register regions, clocks, and
other properties for the 10-bit SAR ADC controller on the Axiado AX3000
and AX3005 SoCs. It also adds a new entry to the MAINTAINERS file.

[ ... ]

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 3d6db8cb608f3..963ac23a0a21e 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4336,6 +4336,13 @@ S:	Orphan
>  F:	Documentation/devicetree/bindings/sound/axentia,*
>  F:	sound/soc/atmel/tse850-pcm5142.c
> =20
> +AXIADO SARADC DRIVER
> +M:	Petar Stepanovic <pstepanovic@axiado.com>
> +M:	Akhila Kavi <akavi@axiado.com>
> +M:	Prasad Bolisetty <pbolisetty@axiado.com>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/adc/axiado,ax3000-saradc.yaml

[Severity: Low]
Should this entry include the IIO subsystem mailing list?

Typically, IIO ADC drivers direct patches and discussions to the IIO
mailing list by including an "L: linux-iio@vger.kernel.org" entry in
their MAINTAINERS block.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622-axiado-ax3=
000-ax3005-saradc-v3-0-e57c7c7ae675@axiado.com?part=3D1

