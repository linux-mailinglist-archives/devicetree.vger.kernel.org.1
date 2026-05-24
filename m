Return-Path: <devicetree+bounces-302222-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OyQCuvdEmqZ4wYAu9opvQ
	(envelope-from <devicetree+bounces-302222-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 13:15:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DE95C22A9
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 13:15:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB9CA300AB18
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 11:15:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA9123932C0;
	Sun, 24 May 2026 11:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UF6pPDXr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8760038E12D
	for <devicetree@vger.kernel.org>; Sun, 24 May 2026 11:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779621339; cv=none; b=NLFN1ujHJHGoDmK1X63aIZtf6aNLmaXOG207Wi1MYOa6/2ysuddZAqNbq3AYhBZK8Mx5VG3uXXx5tVnpCD7SQfmnyRgUiVYWkyQ39CMzYjWvU+SkGxsjBBp09KG7Fkkf0XCzkkD2hJ6j0sAIs2Tyi9MFz6zPMwt7oy7vdHZX80Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779621339; c=relaxed/simple;
	bh=Eet/GGdyW6G9V6iSJeupRXURL+4pO7UA7poCAgWNUUM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lie0X84bSKUrdSrUXPrcS0bU5WneVyMM56oNbjKqFJu4MQclwT49b4Mxvm/BpZbmbf5BJwB4jpLyovdyfK2BVXlV6l3SvgC+8gM4jjoNuHAUkF3f/7mwtireSbQuPWzhJWj42M7NOrKSIEC10VwRfRFA0ql/aC2GLRWnFA3bGVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UF6pPDXr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0DA51F000E9;
	Sun, 24 May 2026 11:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779621338;
	bh=0YRGT2J+MtL9DQr1bHUczELTToH51sVYUwogtixSp1s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UF6pPDXrr7kF1BbsnH+Pp4UnssD35UElRRrPqoZCD5vT7xXGJf9tiu4lAOSHgKTFp
	 UsLUo3giUrkg3vKqNN59KHKtBcNe9QYs8kATKZBH/r2fqSYmGT1GkQ++4aVZZDYtOU
	 J4jq1DRs5ytlWPfNNMTUfhA0vBqCTwIud9n8Z6KbWl7tZB1oHyG1gnhUUhkQQEQ5Gr
	 fza0oWGH9/aWPHmM9i/81ECABrQGDiB4iapvFOMZx39TsbKqVYZgzvOuqGgZ7SdYGy
	 CHUp9THVPvpjeWviCTROPUMoKQ1ZCoJGz8jGX4gVB1iqBE+aqgsT7ZbExU7jJ8Fm/c
	 QTwlLLpcDEhVg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 10/12] iio: frequency: adf41513: features on
 frequency change
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260524-adf41513-iio-driver-v14-10-06824d9c15f4@analog.com>
References: <20260524-adf41513-iio-driver-v14-10-06824d9c15f4@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 24 May 2026 11:15:37 +0000
Message-Id: <20260524111537.E0DA51F000E9@smtp.kernel.org>
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
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-302222-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Queue-Id: 75DE95C22A9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Bleed current is not computed or updated when switching from Integ=
er-N to Fractional-N mode if the PFD frequency remains unchanged.
--

commit 299bd27511dd5b2a2354c749631d53bcff158e2b
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

iio: frequency: adf41513: features on frequency change

This commit adds bleed current configuration, lock detector window adjustme=
nts,
and phase resync support to the ADF41513 driver when changing the PFD
frequency.

> diff --git a/drivers/iio/frequency/adf41513.c b/drivers/iio/frequency/adf=
41513.c
> --- a/drivers/iio/frequency/adf41513.c
> +++ b/drivers/iio/frequency/adf41513.c

[ ... ]

> +static void adf41513_set_bleed_val(struct adf41513_state *st)
> +{
> +	u32 bleed_value, cp_index;
> +
> +	if (!(st->regs[ADF41513_REG6] & ADF41513_REG6_BLEED_ENABLE_MSK))
> +		return;

[ ... ]

> @@ -630,6 +725,14 @@ static int adf41513_set_frequency(struct adf41513_st=
ate *st, u64 freq_uhz, u16 s
>  		st->regs[ADF41513_REG6] |=3D ADF41513_REG6_BLEED_ENABLE_MSK;
>  	}
> =20
> +	if (pfd_change) {
> +		adf41513_set_bleed_val(st);

[Severity: High]
Will the bleed current be properly configured if the device switches
from Integer-N to Fractional-N mode without changing the PFD frequency?

In adf41513_set_bleed_val(), if the device is previously in Integer-N mode,
ADF41513_REG6_BLEED_ENABLE_MSK is cleared. If the PFD frequency changes
while in Integer-N mode, adf41513_set_bleed_val() returns early without
updating the register.

If a subsequent frequency change switches the PLL to Fractional-N mode but
maintains the exact same PFD frequency, pfd_change will be false. Since
adf41513_set_bleed_val() is only called when pfd_change is true, the bleed
value configuration gets skipped entirely.

Could this leave the bleed circuit enabled with a stale or uninitialized
current value, potentially preventing the PLL from locking?

> +		adf41513_set_phase_resync(st);
> +	}
> +
> +	if (pfd_change || mode_change)
> +		adf41513_set_ld_window(st);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260524-adf41513-i=
io-driver-v14-0-06824d9c15f4@analog.com?part=3D10

