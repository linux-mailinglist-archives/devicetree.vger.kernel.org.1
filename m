Return-Path: <devicetree+bounces-314317-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5WtaO3v2OGq/kgcAu9opvQ
	(envelope-from <devicetree+bounces-314317-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:46:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4006ADE4F
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:46:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Z/t0jXdD";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314317-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314317-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 12BA63053EAE
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:42:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0AF83955C9;
	Mon, 22 Jun 2026 08:42:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6643932D8;
	Mon, 22 Jun 2026 08:42:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782117769; cv=none; b=D653V6w8yd/yGX5QU/EpfQHD5FkSfSPf471HmF0QUyb1oPK1+xzTOrl2+2i4+69P0yxhkFO2N1VPXXzqB9OuJssKBnsH1i1AaKhbPYcerrpWOO3xJStEM7ioEporVTh4EujdJgwjWS4GCiHe3YF4KkF5f/jU+PL+dLHuXPCgHgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782117769; c=relaxed/simple;
	bh=NoIkgHjmiX4KCOnXdO+bozw96BGxwWSTYJxUK1g+uak=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jPv1JjhmVcvt+vmvZAT7rox/YzEXGhEMk5VElT8PVObv5YxB9RNXmCTuv6X6e7GExm/YBraXAOidArNsn7+OMzqRuOchtogFQWglbJb5CkLdVCbiFoG9hcFtPdcYReJUiZizy5znvfgiSwMN5UPsrUYKwxnkdT+QQuL1RsJiepI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/t0jXdD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D01A91F00ADF;
	Mon, 22 Jun 2026 08:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782117767;
	bh=+Gp76w+0+T8PWIg87+yLuN/MbpfjdvEty2/M9YOxick=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Z/t0jXdDV6EUOYb6y5FcXqKGsOM55HhS8lUkoFmQXTx+8OuPaS7A6fhZxlJ0iemiC
	 j9CfGAxvJHz6UGLJgcrJ8jUSPXIzX8rCoviQ+wCSmSa0fsYtgclEzVy0hn1ePmavoW
	 9QQtpHuLOAEcJH1lvSoOEs/q28scVtcM77jLVF4IJ/jfhidrtZPfeNaBKbj2O8O+Gb
	 bDxzSDkLd8wq8YZSRgHsraelTLNxn2I/Gz/ll4Rb1HoA4huN4Sok/GXIZmpoMbgpXA
	 nYJEnNplem4vBMJOmy2x9OheLy0EDoHP0s4dkwBnHq3Sxr8Y/lt7jj1q84dBQFPqCD
	 zc65byleTaC6A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] watchdog: npcm: add bootstatus support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tomer Maimon" <tmaimon77@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, linux-watchdog@vger.kernel.org
In-Reply-To: <20260622083046.3189603-4-tmaimon77@gmail.com>
References: <20260622083046.3189603-1-tmaimon77@gmail.com>
 <20260622083046.3189603-4-tmaimon77@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 08:42:46 +0000
Message-Id: <20260622084246.D01A91F00ADF@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tmaimon77@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-watchdog@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314317-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8F4006ADE4F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The first watchdog instance on NPCM750 clears the global RESSR reg=
ister without caching it, causing subsequent watchdog instances to permanen=
tly lose their reset status.
- [High] Non-atomic read-modify-write of the shared INTCR2 register clobber=
s concurrent modifications and incorrectly handles W1C semantics.
--

commit dafe1267618ef0158376caf5f3acee9d7fe7b1b7
Author: Tomer Maimon <tmaimon77@gmail.com>

watchdog: npcm: add bootstatus support

The NPCM750 uses RESSR and the NPCM845 uses INTCR2 to latch reset
indications. Read those bits during probe and map them into watchdog
bootstatus flags.

> diff --git a/drivers/watchdog/npcm_wdt.c b/drivers/watchdog/npcm_wdt.c
> index e62ea054bc618..98660419ec3f0 100644
> --- a/drivers/watchdog/npcm_wdt.c
> +++ b/drivers/watchdog/npcm_wdt.c
[ ... ]
> @@ -169,6 +250,92 @@ static bool npcm_is_running(struct watchdog_device *=
wdd)
>  	return readl(wdt->reg) & NPCM_WTE;
>  }
> =20
> +static void npcm_get_reset_status(struct npcm_wdt *wdt, struct device *d=
ev,
> +				  const struct npcm_wdt_data *data,
> +				  resource_size_t start)
> +{
[ ... ]
> +	if (of_device_is_compatible(dev->of_node, "nuvoton,npcm845-wdt")) {
> +		ret =3D regmap_read(gcr_regmap, NPCM_INTCR2_OFFSET, &rstval);
> +		if (ret) {
> +			dev_warn(dev, "Failed to read INTCR2 reset status: %d\n",
> +				 ret);
> +			return;
> +		}
> +
> +		if (rstval & NPCM8XX_RST) {
> +			ret =3D regmap_write(gcr_regmap, NPCM_INTCR2_OFFSET,
> +					   rstval & ~NPCM8XX_RST);

[Severity: High]
Does this non-atomic read-modify-write risk clobbering concurrent modificat=
ions
to the shared INTCR2 register?

Since INTCR2 is a shared global control register accessed by multiple drive=
rs,
using regmap_read() followed by regmap_write() drops the regmap lock between
operations. Any concurrent modifications to INTCR2 by other drivers could be
overwritten.

Also, if INTCR2 contains Write-1-to-Clear (W1C) status bits, writing
`rstval & ~NPCM8XX_RST` might incorrectly write 1s to all other active bits
(clearing them) and 0s to the watchdog bits.

Could regmap_update_bits() or a W1C-safe write be used here instead?

> +			if (ret) {
> +				dev_warn(dev,
> +					 "Failed to clear INTCR2 reset status: %d\n",
> +					 ret);
> +				return;
> +			}
[ ... ]
> +		}
> +	} else if (of_device_is_compatible(dev->of_node, "nuvoton,npcm750-wdt")=
) {
> +		ret =3D regmap_read(gcr_regmap, NPCM_RESSR_OFFSET, &rstval);
> +		if (ret) {
> +			dev_warn(dev, "Failed to read RESSR reset status: %d\n",
> +				 ret);
> +			return;
> +		}
> +
> +		ret =3D regmap_write(gcr_regmap, NPCM_RESSR_OFFSET, rstval);

[Severity: High]
Will the first watchdog instance on NPCM750 clear the global RESSR register
without caching it, causing subsequent instances to lose their reset status?

The NPCM750 SoC has three watchdog instances that share the global RESSR
register. When the first watchdog probes, it reads RESSR and immediately
clears it by writing the value back. Because the value is not cached
(unlike the SCRPAD10 mechanism used for NPCM845), when the remaining
watchdogs probe, they will read 0 from RESSR and permanently lose their
boot status indications.

> +		if (ret) {
> +			dev_warn(dev, "Failed to clear RESSR reset status: %d\n",
> +				 ret);
> +			return;
> +		}
> +	}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622083046.3189=
603-1-tmaimon77@gmail.com?part=3D3

