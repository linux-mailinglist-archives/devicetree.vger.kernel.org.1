Return-Path: <devicetree+bounces-326114-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IVeTFIgaVmrpzAAAu9opvQ
	(envelope-from <devicetree+bounces-326114-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:16:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFCE753D10
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:16:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=K5CzIEoW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326114-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326114-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E391F30D3B05
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 991B33806D5;
	Tue, 14 Jul 2026 11:14:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C5637FF61
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 11:14:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784027651; cv=none; b=g9gFzmMszGPqE7F9afXK6pV0L3MIVsivD5PyTGrTiQC38ZmU7bcXUrQwpfY3TFl4O9r+Fty7UK2YIiymzeT2JjEaiJKgfzbow4DrRO69Ceur9N5CDdCA5BXGSGhUO7NdEG0P6q+liGpuoDi/1kUnduo5vsfE/3UDGHC0K/L85Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784027651; c=relaxed/simple;
	bh=MSwpkIig4x4S/8pzagAIh5nnRLIXtk3oTeUCrITGUHE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=tYN1Sq9EnXdZfb7pUTg4zOpK7RLgT/qdjVeGQQWEAbN5Us8ki34vo1gei7mXRCpxImM0I41p41LaRzPZCOwJUbojGiT+t0womWN/idAaR0dsQ0AnYpsfA47YdyECrU9kwytN02E6HwJ+0N44GOC6bEyOgtq4IT4G6kwcuaenfeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5CzIEoW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F07811F000E9;
	Tue, 14 Jul 2026 11:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784027650;
	bh=m/OoiZt96HoSJmucDVl8DUhyIv5OlisNYgZ8CfiAtRM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=K5CzIEoWdhyUsmCrWFKMMvuxgnxs8VM/RcDdN0OOXWyeJtBEGL2uzxOmuxtH0lNVJ
	 Je4DQXWxu4mi6OBbek971y9O1rGWr7P2R/WT22kfV4HsLElCOQwfy3vnMNiy1fU/ld
	 +2BhnBKj9ev5TxHigWfzer8hGh88qEfGP2ABvuB6N+i/mBYjgIvfDtiMOEnBV47n7R
	 CIN7s01e4guuwL4Vx/kT7DBVtR8hbLN1aYgr5LVWnQg+CGYHBF3M+UbsMFZF1idfQ+
	 UB+3UBRrsi0pEjINuY7OTWBWSBPQiD2GeyoNEgvQDy/sz208uS4+Lu8ePkDTOmv08V
	 Xv4AowAFrExMQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 01/17] iio: ABI: add attributes for altcurrent
 channels
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar" <rodrigo.alencar@analog.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260714-ad9910-iio-driver-v8-1-36939c3c07d2@analog.com>
References: <20260714-ad9910-iio-driver-v8-0-36939c3c07d2@analog.com>
 <20260714-ad9910-iio-driver-v8-1-36939c3c07d2@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 11:14:09 +0000
Message-Id: <20260714111409.F07811F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326114-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.alencar@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,analog.com:email,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BFFCE753D10

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] `out_altcurrentY_raw` is incorrectly documented as an input measure=
ment instead of an output setting.
--

--- Patch [1]: [PATCH v8 01/17] iio: ABI: add attributes for altcurrent cha=
nnels ---
commit f95abfd3ec5c3cd46b3d0c4a84b154158053f62c
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

iio: ABI: add attributes for altcurrent channels
   =20
Add attributes applicable to altcurrent channels, e.g., frequency, phase,
scale, raw, label and powerdown. Those are going to be used by a DDS
device to be introduced shortly.

> diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/=
testing/sysfs-bus-iio
> index 5cc2e82c4997e..90047189c3ebe 100644
> --- a/Documentation/ABI/testing/sysfs-bus-iio
> +++ b/Documentation/ABI/testing/sysfs-bus-iio

[ ... ]

> @@ -1736,6 +1743,8 @@ Description:
> =20
>  What:		/sys/bus/iio/devices/iio:deviceX/in_currentY_raw
>  What:		/sys/bus/iio/devices/iio:deviceX/in_currentY_supply_raw
> +What:		/sys/bus/iio/devices/iio:deviceX/in_altcurrentY_raw
> +What:		/sys/bus/iio/devices/iio:deviceX/out_altcurrentY_raw

[Severity: Low]
Is out_altcurrentY_raw grouped under the wrong description here?

Since it is an output attribute, having it fall under the "Raw current
measurement from channel Y." description below seems inconsistent. Should t=
his
be separated into its own section or grouped with an output setting?

>  KernelVersion:	3.17
>  Contact:	linux-iio@vger.kernel.org
>  Description:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-ad9910-iio=
-driver-v8-0-36939c3c07d2@analog.com?part=3D1

