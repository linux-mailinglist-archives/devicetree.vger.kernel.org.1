Return-Path: <devicetree+bounces-314071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0pKEN6agN2rqPQcAu9opvQ
	(envelope-from <devicetree+bounces-314071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 10:28:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 251D76AA73F
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 10:28:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jlOXErVS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314071-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314071-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A040E300EFBA
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 08:28:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F252E270ED7;
	Sun, 21 Jun 2026 08:28:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEB5D1A6836;
	Sun, 21 Jun 2026 08:28:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782030499; cv=none; b=WXiisCU2IFpEkcCZSRIyh2UW2tOInthbqWtmgDMHoyw+AcwWDA0B5XjAI3iLWmlDDUceFIGYVlVucYt9yS05SVCll9KxiZ6NBEEJOCRedXPjDNH7qbxPtyfA/MWJKeKpDTiFs2nXP6OFPU9hVe5rwnmudRrdF2Z7C5DEeKAOj6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782030499; c=relaxed/simple;
	bh=HxWvA8thnN/i6lhpt9d1jR1BQibREwSMNWrvvn+8jBY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nnyYSqDLb97UpiLXRK05G49tIZ9ORDMJPPF0asMoikykwri2hLhaalpyBh7hSwkJge0YMDjjXguWhCdUtzUBn8isYw4UwTsQlDdxHnnpsfeVo/mCsUWVCKyH7LupxJZlOHM4N42Q/S5zkahBT1xuO7NpmudlTHja5K3LXuXU9qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlOXErVS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 428DB1F000E9;
	Sun, 21 Jun 2026 08:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782030498;
	bh=2L6kKHlsjLdT0kU0g0n3uuer0y758z+IMlNK9GBYCQU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jlOXErVSNNEW9V6NTrb27h1CLRRcm3CMT0HqyR/QdoPyd0MYmo17iIbxtFCxqROLh
	 373c/leFjhiYOGHO6i3QGjHtjcOdRulFO/vrzxCZ1zEu1GMxIf0zbyMhir9lL2dYwA
	 ESRcj2YvBByhkrr+sGhLd/H1k8CpBBwcwxWTMaF/V3dd7MSGf46BsETjZxqJOJew4+
	 iAZXkngQNbOc1byHlD67R5N0Wky8kweSi28vjCo6R/IsoDff42oj3JsJwpH4Du8X1j
	 6xfuBjaesV+SbIiOfMCYryJQ6ZadSKh+8pjsvZt6/Yg2WqZcvIYtIHKxstPabQveLN
	 Sl2QMGBVud3mQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 6/9] input: keyboard: mtk-pmic-keys: Add MT6392
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Luca Leonardo Scorcia" <l.scorcia@gmail.com>
Cc: robh@kernel.org, dmitry.torokhov@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org, linux-input@vger.kernel.org
In-Reply-To: <20260621081634.467858-7-l.scorcia@gmail.com>
References: <20260621081634.467858-1-l.scorcia@gmail.com>
 <20260621081634.467858-7-l.scorcia@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 21 Jun 2026 08:28:17 +0000
Message-Id: <20260621082818.428DB1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-314071-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:l.scorcia@gmail.com,m:robh@kernel.org,m:dmitry.torokhov@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:linux-input@vger.kernel.org,m:lscorcia@gmail.com,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,packett.cool:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 251D76AA73F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Potential array overflow when iterating over device tree child nod=
es if disabled nodes are present.
--

commit 59fc7db0ad7a68e49a6e83f5d6e6861165fb6460
Author: Val Packett <val@packett.cool>
Subject: input: keyboard: mtk-pmic-keys: Add MT6392 support

This commit adds support for the MT6392 PMIC to the MediaTek PMIC keys driv=
er
by introducing its specific register definitions.

> diff --git a/drivers/input/keyboard/mtk-pmic-keys.c b/drivers/input/keybo=
ard/mtk-pmic-keys.c
> index c78d9f6d97c4f..8b4a89fce4fb1 100644
> --- a/drivers/input/keyboard/mtk-pmic-keys.c
> +++ b/drivers/input/keyboard/mtk-pmic-keys.c

[ ... ]

[Severity: High]
This isn't a bug introduced by this patch, but there is a pre-existing issue
in mtk_pmic_keys_probe().

Is it possible for the loop iteration to cause an out-of-bounds array acces=
s?

The code starts by validating the available child node count against the
maximum allowed keys:

	keycount =3D of_get_available_child_count(node);
	if (keycount > MTK_PMIC_MAX_KEY_COUNT ||
	    keycount > ARRAY_SIZE(irqnames)) {
		dev_err(keys->dev, "too many keys defined (%d)\n", keycount);
		return -EINVAL;
	}

However, the loop below it iterates over all child nodes, including those
with status=3D"disabled":

	for_each_child_of_node_scoped(node, child) {
		keys->keys[index].regs =3D &mtk_pmic_regs->keys_regs[index];

		keys->keys[index].irq =3D
			platform_get_irq_byname(pdev, irqnames[index]);

If a device tree happens to contain more than two child nodes in total but
only two or fewer are marked as available, the initial keycount check passe=
s.

The loop will then execute more than twice, and when the index reaches 2,
it overflows the keys->keys array and the irqnames array.

Would it be better to use for_each_available_child_of_node_scoped() here
instead to safely skip the disabled nodes?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260621081634.4678=
58-1-l.scorcia@gmail.com?part=3D6

