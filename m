Return-Path: <devicetree+bounces-311711-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XKt4JNiiL2pODwUAu9opvQ
	(envelope-from <devicetree+bounces-311711-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:59:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EA313683FC9
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:59:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NpLBUruS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311711-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311711-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 003683001C4F
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 06:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F29E13B3C01;
	Mon, 15 Jun 2026 06:59:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEDBC3B388E
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 06:59:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781506772; cv=none; b=pYAUnuMeBU1nyIiuSuUlH5Eiq85h2DLI0XM7luLfy09scxGmxHKc7JXYEzUHjJiku0lgYyK7S04o0MVaMC1m8zpbvMJNUwqLZYCg4HT4fTstFOYn16aiMmTiFn5a32jyV+SbXKUAFH1R7FCuK21rit5DGBGY8iXbHJ/Bw5JG1KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781506772; c=relaxed/simple;
	bh=LVxPz6z9XH9EBV7fzU2Z8GYanURHaRC5MIyF9VWDKiw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=d5rBmsZk3sjhowJS0U2S7GmgUD+bBAOrHQdTC4VamkNvsnVS/CGcNk0WrvAiOzAWjGjMo6rNDFQ2e1/DxJRNjoKpLgjAJJQoeKSfJd3Xk+gSIIJWd5z8i4rDc9O6VuTxoE107Fx37RzYMO+XOyP0HEQoOmSe38d62RWAMFFapYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpLBUruS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A25C1F000E9;
	Mon, 15 Jun 2026 06:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781506771;
	bh=6XzBu3M2scvQsZp9WK4RvPSBsl6EUuLeUaeoh0Te2LE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NpLBUruSWPrSSg4S5u2fRhoCIUHFxb+q/2ecTnkppAa1qGFZVBZslkPCGrmecPsPU
	 ZwesQvGDjdqZY4Qkx5CKSPn20/gdHcdhKWHBHYAXA59kVloLiKLtEHIppQNj0Lqs1h
	 Hzu/y4jEnrrGJpb13Jm2Y8nV+E37mgFab49mQ29wKNUMf150zfZ8ctF7unFc88PFWj
	 wG0trOYG6ATncPsTiFW+8YL+SqNKhAeJfizrgPZna6CpjhUTUbNFHJTkOSEHNb6PQT
	 t8ACtEMFk3j4aQ8tYE4E9MML9Dr5iLARO2F4OhscFB4LNpTEXCfS2wXfgF9PftjexA
	 s4y/qTdCrQG8A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 5/6] drm/verisilicon: add DCUltraLite chip identity
 to HWDB
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joey Lu" <a0987203069@gmail.com>
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260615065003.76661-6-a0987203069@gmail.com>
References: <20260615065003.76661-6-a0987203069@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 06:59:30 +0000
Message-Id: <20260615065931.3A25C1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311711-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:a0987203069@gmail.com,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid];
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
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EA313683FC9

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] A wildcard entry in vs_chip_identities shadows specific customer I=
D entries, making them unreachable.
- [High] The function vs_fill_chip_identity() ignores the return values of =
regmap_read() calls, leading to potential use of uninitialized stack memory.
--

commit a6a5d6f3773180ae44a10c5525c46667d81239fe
Author: Joey Lu <a0987203069@gmail.com>

drm/verisilicon: add DCUltraLite chip identity to HWDB
   =20
Register the Nuvoton MA35D1 DCUltraLite chip identity in
vs_chip_identities[]:
  model       =3D 0x0   (DCUltraLite; Verisilicon uses 0 for this IP)
[ ... ]

> diff --git a/drivers/gpu/drm/verisilicon/vs_hwdb.c b/drivers/gpu/drm/veri=
silicon/vs_hwdb.c
> index 91524d16f7785..7d630a667a3f0 100644
> --- a/drivers/gpu/drm/verisilicon/vs_hwdb.c
> +++ b/drivers/gpu/drm/verisilicon/vs_hwdb.c
[ ... ]
> @@ -129,6 +129,16 @@ static struct vs_chip_identity vs_chip_identities[] =
=3D {
>  		.max_cursor_size =3D 64,
>  		.formats =3D &vs_formats_no_yuv444,
>  	},
> +	{
> +		.model =3D 0x0,		/* DCUltraLite */
> +		.revision =3D 0x5560,
> +		.customer_id =3D 0x305,
> +
> +		.generation =3D VSDC_GEN_DC8000,
> +		.display_count =3D 1,
> +		.max_cursor_size =3D 32,
> +		.formats =3D &vs_formats_no_yuv444,
> +	},
>  };
> =20
>  int vs_fill_chip_identity(struct regmap *regs,
>  			  struct vs_chip_identity *ident)
>  {
>  	u32 model;
>  	u32 revision;
>  	u32 customer_id;
>  	int i;
> =20
>  	regmap_read(regs, VSDC_TOP_CHIP_MODEL, &model);
>  	regmap_read(regs, VSDC_TOP_CHIP_REV, &revision);
>  	regmap_read(regs, VSDC_TOP_CHIP_CUSTOMER_ID, &customer_id);

[Severity: High]
This isn't a bug introduced by this patch, but does vs_fill_chip_identity()
ignore the return values of these regmap_read() calls?

The regmap_read() API returns an integer error code on failure and leaves
the output pointer's target unmodified.=20

If any of these reads fail due to bus errors or unmapped I/O, will the
function proceed to use uninitialized stack memory in the loop to compare
against the vs_chip_identities array?

> =20
>  	for (i =3D 0; i < ARRAY_SIZE(vs_chip_identities); i++) {
>  		if (vs_chip_identities[i].model =3D=3D model &&
>  		    vs_chip_identities[i].revision =3D=3D revision &&
>  		    (vs_chip_identities[i].customer_id =3D=3D customer_id ||
>  		     vs_chip_identities[i].customer_id =3D=3D ~0U)) {
>  			memcpy(ident, &vs_chip_identities[i], sizeof(*ident));
>  			ident->customer_id =3D customer_id;
>  			return 0;
>  		}

[Severity: High]
This is a pre-existing issue, but does the wildcard entry in
vs_chip_identities[] shadow specific customer ID entries?

Looking at vs_chip_identities[] in drivers/gpu/drm/verisilicon/vs_hwdb.c,
there is a wildcard entry at the beginning of the array:

	{
		.model =3D 0x8200,
		.revision =3D 0x5720,
		.customer_id =3D ~0U,
		...
	}

Since vs_fill_chip_identity() searches sequentially and returns on the first
match, will any hardware with model 0x8200 and revision 0x5720 instantly
match this wildcard entry?

If so, the specific configurations for customer IDs 0x310 and 0x311 defined
later in the array might be completely shadowed and never reached. This wou=
ld
cause customer ID 0x310 to incorrectly use vs_formats_no_yuv444 instead of
its intended vs_formats_with_yuv444.

>  	}
> =20
>  	return -EINVAL;
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615065003.7666=
1-1-a0987203069@gmail.com?part=3D5

