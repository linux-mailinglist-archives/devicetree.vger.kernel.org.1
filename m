Return-Path: <devicetree+bounces-319385-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id F6YVBFxdRmo4RwsAu9opvQ
	(envelope-from <devicetree+bounces-319385-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:45:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E21E66F7D42
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:45:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MDCsjV81;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319385-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319385-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D7BD930533BB
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 12:44:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 994FD4963A6;
	Thu,  2 Jul 2026 12:42:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7309D48124E;
	Thu,  2 Jul 2026 12:42:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782996174; cv=none; b=MV2R4Dp12gkZ7qOQqv/OXq25OgkNDgjKvC4nm7fyQsioHvq3w+k7Cj2f/uRcRgP9CxAxoagSnpTyrTTDGDdQEGuxFx8EGoyRg0rTu9G4mE/cB4W72mcIQobJX8+hO5J4xJHXJAmdbKLc+6HuVcmen0qGmmjxrv1bd4LfqwcOxNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782996174; c=relaxed/simple;
	bh=OzV8cP9QZGr+41f8NmTp8mZKxv03Jpl2DNS9zZ8Xr+I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XZ0NB9XjGDn12os5Qo58DkpMJbfKMuHd+t/xxLWq5Zb4Y3Y/+FBpwsenEWOODhmIPCEXTOszs+qp63sOKXQfB4CHlLBlNvFZ0heT71mczOqyWh5tHyI0oO+vays6qT5W5Zd0ZTWUwIhel3i0y6kxIAKYrUwbS5gUF7rMsq1gv/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDCsjV81; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C1B51F000E9;
	Thu,  2 Jul 2026 12:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782996173;
	bh=SF9O4nRzwUFA6GE0sxzFCpvmzTqtQjXTF7DW/vG1rYY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MDCsjV81/TbU5kSNRY3lOjyL5NZGQBwKL677GX9JrEMfEmLREzJUEipcdYWTM0tEj
	 1o31KrYEjNxpHTpBlDUb9Jr8TGevVSUrc2NG9Gc6NIrdHxE37ED3s5NFFC0I6yxqOW
	 5Wa5BrQDv6GvqHNPEMpz8X2h4IDT3DzLUq6f9eYHpLLqdZoyr86DcMk/INRu7vhOaW
	 cVpUoW4f59sTpkgV/1tymJaStgyMTIOdnhDNCbef/A35n+Yk/I/OmU/+jrJeHdR/Iy
	 rDaEVK15wsAahTy/KQKqrATNlUpACxKUTRsCxUlzk7O+WNumM7zxfCHVbfdgYF6gSI
	 iZQKOtWtnJAqw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v2 7/9] watchdog: rzv2h: Add syscon support for
 RZ/T2H and RZ/N2H WDT control register
Reply-To: sashiko-reviews@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: linux-watchdog@vger.kernel.org, wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260702123112.161160-8-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260702123112.161160-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260702123112.161160-8-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 12:42:51 +0000
Message-Id: <20260702124252.8C1B51F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-319385-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:linux-watchdog@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:prabhakarcsengg@gmail.com,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E21E66F7D42

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The error rollback path in `rzv2h_wdt_stop()` leaves the watchdog =
deasserted but unconfigured, breaking the hardware state machine and potent=
ially causing spurious resets.
--

commit e9173a2a019341cec05cdc87e042bd8dd2f92721
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

watchdog: rzv2h: Add syscon support for RZ/T2H and RZ/N2H WDT control regis=
ter

On RZ/T2H and RZ/N2H SoCs, the WDTDCR register is shared and managed by a
dedicated SYS driver. This commit updates the WDT driver to support a syscon
regmap interface for WDTDCR control while maintaining backward compatibility
with direct mapping.

> diff --git a/drivers/watchdog/rzv2h_wdt.c b/drivers/watchdog/rzv2h_wdt.c
> index e9545b8f5fd09..e14ff853a4e9f 100644
> --- a/drivers/watchdog/rzv2h_wdt.c
> +++ b/drivers/watchdog/rzv2h_wdt.c

[ ... ]

> @@ -179,8 +208,13 @@ static int rzv2h_wdt_stop(struct watchdog_device *wd=
ev)
>  	if (ret)
>  		return ret;
> =20
> -	if (priv->of_data->wdtdcr)
> -		rzt2h_wdt_wdtdcr_count_stop(priv);
> +	if (priv->of_data->wdtdcr) {
> +		ret =3D rzt2h_wdt_wdtdcr_count_stop(priv);
> +		if (ret) {
> +			reset_control_deassert(priv->rstc);
> +			return ret;
> +		}
> +	}

[Severity: High]
When rzt2h_wdt_wdtdcr_count_stop() fails, this rollback path deasserts the
reset line and returns an error without reconfiguring the hardware.

Because rzv2h_wdt_stop() returns an error, the watchdog subsystem will keep
the device marked as active and continue pinging it via rzv2h_wdt_ping().

Since the earlier reset_control_assert() wiped the configuration registers,
will the subsequent ping lock the unconfigured control registers and
potentially cause an immediate spurious system reset?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702123112.1611=
60-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D7

