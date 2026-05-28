Return-Path: <devicetree+bounces-303748-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KB+5BAkHGGrGaQgAu9opvQ
	(envelope-from <devicetree+bounces-303748-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 11:12:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 666365EF4FB
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 11:12:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5F22319AABA
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 08:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2510C38BF9E;
	Thu, 28 May 2026 08:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isKFcXyX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578CD38D411;
	Thu, 28 May 2026 08:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779958690; cv=none; b=i8yhw+h8lhevnhuWIBzgqtFY8a6jd3TFWG7CmN709bS/Tcw3NPpV2JORsHKg6QDRiyJpcKP2CN4unDfo4iNi260meb1cqpYUyWJTBhepZ27DYx5DWsVh23MXpLyT49AnbSM84tSQz5eZtQAnolUT3ji983B7vJKT1eqhYZ+YMHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779958690; c=relaxed/simple;
	bh=M4ud8nqkmcdfv/7EMVLmGGhByg/WoWOYFp8Sxswp1m8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SAzivhy5CFR7q+VYIeNfHknxRQmBQnEiRfm4nePyqItdLOZ/5wZ0BOfuTIuRzDVyAKhvz8sEgW4tJg64K1UDH6NMIK0+DyKbZyvyGcc4OYKcSFEBrqPLfx2DUnTz3MPlHrpR5x2fqarSkg7YkQcRUYwi3uA4boZ48mgWw0WQE/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isKFcXyX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FB601F000E9;
	Thu, 28 May 2026 08:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779958687;
	bh=8T8woJbbi3NNsEe3nlXUbIygofrJLaWrhX0VE2ysUqU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=isKFcXyXQUiH91tA0qIZy1Fww7H7UVKE/TUI0FioffnQnz3ZSKG0nNRj0C5sD3dr0
	 JzpwEuVnWRinyxeRHBWePkBbfPmrFb6Fd++WLYQGWCzibxVxCBaIRY6KckKrD5uXD4
	 XU8CWxOJQMpFVwX6GZc1vRxtJBKmkxXV4ZRPzWVydXj6GAUGG4UX8nCPFMk5fUiFGR
	 swADhB/UrAfqk9egNhBBFjDVw1tms6aKwd9UNEuoNO3MaptZIYP97wkivArT33k5zS
	 CA7yUs9391eqiNFl3QMoEFNsmyvsh6bjeNHSqYtzzgsfHFZAfN07ZEvzfl6fvS3FoH
	 hvmFRGwz45P0w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 7/7] power: supply: Add charger driver for Asus
 Transformers
Reply-To: sashiko-reviews@lists.linux.dev
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: robh@kernel.org, dmitry.torokhov@gmail.com, conor+dt@kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260528053203.9339-8-clamor95@gmail.com>
References: <20260528053203.9339-8-clamor95@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 May 2026 08:58:07 +0000
Message-Id: <20260528085807.6FB601F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-303748-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qmqm.pl:email];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 666365EF4FB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Strict equality check on `action` bitmask may cause dropped even=
ts.
--

commit 55ed27a4bfa91a64727ac41721ebdb9163ebef2a
Author: Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.qmqm.pl>

power: supply: Add charger driver for Asus Transformers

This commit adds a new driver to support charger detection capabilities
provided by the embedded controller on ASUS Transformer devices. It
reports properties like USB type, charging behaviour, and online status.

> diff --git a/drivers/power/supply/asus-transformer-ec-charger.c b/drivers=
/power/supply/asus-transformer-ec-charger.c
> new file mode 100644
> index 0000000000000..c7a6bd2ba533f
> --- /dev/null
> +++ b/drivers/power/supply/asus-transformer-ec-charger.c
[ ... ]
> +static int asus_ec_charger_notify(struct notifier_block *nb,
> +				  unsigned long action, void *data)
> +{
> +	struct asus_ec_charger_data *priv =3D
> +		container_of(nb, struct asus_ec_charger_data, nb);
> +
> +	switch (action) {
> +	case ASUSEC_SMI_ACTION(POWER_NOTIFY):
> +	case ASUSEC_SMI_ACTION(ADAPTER_EVENT):

[Severity: Medium]
Will this strict equality check cause charger events to be dropped if multi=
ple
interrupt flags are set simultaneously?

The action parameter appears to be constructed by the parent MFD driver by
taking the raw ASUSEC_IRQ_STATUS byte and OR'ing it with the SMI code shift=
ed
by 8 bits. Since ASUSEC_IRQ_STATUS is a bitmask, if an SMI event occurs
concurrently with another event (such as a keyboard press), the action bitm=
ask
will contain additional bits.

Could this strict switch check be replaced by checking the ASUSEC_SMI_MASK =
with
a bitwise AND operation, and then evaluating the SMI code separately?

> +		power_supply_changed(priv->psy);
> +		break;
> +	}
> +
> +	return NOTIFY_DONE;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260528053203.9339=
-1-clamor95@gmail.com?part=3D7

