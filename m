Return-Path: <devicetree+bounces-317830-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xZkAN5jIQ2oxhwoAu9opvQ
	(envelope-from <devicetree+bounces-317830-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:46:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 483A16E501F
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:46:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Hj8y4IkE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317830-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317830-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 09A89301E21B
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:43:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8486A368D60;
	Tue, 30 Jun 2026 13:43:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78DAB1F91D6;
	Tue, 30 Jun 2026 13:43:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782827002; cv=none; b=naw/gCfuQi5ZKZnO94GEbYANr0GIWI7MLV2kF/W+A8xHPeJi9LtCareYVN2y5lFmEl0WwDJlcQBcM54gWRKQelDfUkP6+4mVl1k5U+IiUpw+beifVb4qm76vBxKh7Bg++hetc2OukD+YdlPjlEHcDLGT6WUXkhJwVrR0dPV/Vr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782827002; c=relaxed/simple;
	bh=4xAGmXJqZM3io21y1PJtvb9xzmA+OJsDD68FA7vbQu8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jRXLm5VUPlzimxe0EQnuAEJEDaUouCQ4JBbD2YetZjW3dRYd2sDZZM3PmJarmGy4/k4c/GTL3SKdj5J5eZf4p3CaUA6JRTMqUGdUG7csE+M4c9lq5J97zcF8hKArTDuEnzyyfdZtNeVycPR56TWxp6jbw2hx86GRrdxWEHeC0m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hj8y4IkE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A1271F000E9;
	Tue, 30 Jun 2026 13:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782827001;
	bh=hxvdIQKRJ+fZFg/VkVSimqsytVMc7FfZZeStsjMdW9Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Hj8y4IkEqjsE+EMF3nXeSRDdbt6PhCMSMHAYM/3gmqYSRMjs4VrrbykJ4GY1VoJoA
	 NRP6JFQ6aJm6DTau5RkEvJncSfPnwf7fLTnwI3rlQwM/NVAA2e94QlFSX/GzUaVWqZ
	 MLL/Wlt31jnvyS+MkRl3+bUsaN3H2S/rziKpaboPGUXk2gYSNqCSdHTTi+aXRbU65z
	 ERMmfoVkVhLuctNpxjXTEMDJggz+++IHege+uqyfkuQaIOhZUf1zMhbnf59U6/VPFA
	 xc9A4U5MjRRply29ivdw2I3LCla4iiPccPa6rmyAsiHaX8YAaUcfXbtHW9UVxDE5Uk
	 K2/zY3BtaknSQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 07/10] HID: apple: Add support for DockChannel HID
 keyboards
Reply-To: sashiko-reviews@lists.linux.dev
To: "Michael Reeves via B4 Relay" <devnull+michael.reeves077.gmail.com@kernel.org>
Cc: dmitry.torokhov@gmail.com, devicetree@vger.kernel.org, robh@kernel.org, linux-input@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260630-apple-mtp-keyboard-final-v1-7-506d936a1707@gmail.com>
References: <20260630-apple-mtp-keyboard-final-v1-0-506d936a1707@gmail.com>
 <20260630-apple-mtp-keyboard-final-v1-7-506d936a1707@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 13:43:19 +0000
Message-Id: <20260630134320.9A1271F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-317830-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+michael.reeves077.gmail.com@kernel.org,m:dmitry.torokhov@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-input@vger.kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,michael.reeves077.gmail.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 483A16E501F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The custom `apple_match` callback fails to check for the `HID_QU=
IRK_IGNORE_SPECIAL_DRIVER` quirk, bypassing system or BPF-driven overrides =
that force the generic HID driver.
--

commit 28e52ea5c163ab3459cd9d8d4a75ee76a37b6489
Author: Michael Reeves <michael.reeves077@gmail.com>

HID: apple: Add support for DockChannel HID keyboards
   =20
This commit registers DockChannel keyboards as host-bus Apple HID devices.
It updates hid-apple to match these devices, applies the Magic Keyboard
function-key table, and fixes their oversized report-size descriptors before
parsing.

> diff --git a/drivers/hid/hid-apple.c b/drivers/hid/hid-apple.c
> index bf7dd0fbf2496..47c6ec09d5fae 100644
> --- a/drivers/hid/hid-apple.c
> +++ b/drivers/hid/hid-apple.c

[ ... ]

> @@ -1003,6 +1035,17 @@ static void apple_remove(struct hid_device *hdev)
>  	hid_hw_stop(hdev);
>  }
> =20
> +static bool apple_match(struct hid_device *hdev, bool ignore_special_dri=
ver)
> +{
> +	if (ignore_special_driver)
> +		return false;
> +

[Severity: Medium]
Does this custom match function bypass the HID_QUIRK_IGNORE_SPECIAL_DRIVER
quirk?

It checks the ignore_special_driver parameter, but it looks like it omits
checking if hdev->quirks has the HID_QUIRK_IGNORE_SPECIAL_DRIVER bit set.
By unconditionally returning true for standard Apple devices further down,
this might allow hid-apple to bind even when a user or BPF program explicit=
ly
requested to ignore special drivers and use hid-generic instead.

Should this also check for (hdev->quirks & HID_QUIRK_IGNORE_SPECIAL_DRIVER)
before allowing the match?

> +	if (hdev->group =3D=3D HID_GROUP_APPLE_DOCKCHANNEL)
> +		return apple_is_dockchannel_keyboard(hdev);
> +
> +	return true;
> +}
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630-apple-mtp-=
keyboard-final-v1-0-506d936a1707@gmail.com?part=3D7

