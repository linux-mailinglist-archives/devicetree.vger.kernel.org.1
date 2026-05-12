Return-Path: <devicetree+bounces-295893-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBASAcdvAmqZswEAu9opvQ
	(envelope-from <devicetree+bounces-295893-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 02:09:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B9F517BC4
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 02:09:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CDC003015893
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 00:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6CBE3B1B4;
	Tue, 12 May 2026 00:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDchgRya"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3BC411CBA
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 00:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778544580; cv=none; b=dohIs93f8WPYcKTv0JWzBZOq3HxMqzfuBnvbq/jngopgKgFrmnyxQav/M8ZfPp90rzRS0TQHrAJ07yAcxXznjYGT7w61hwYrsGLuO7xyliYDMkPEj6M94NUjOOaOD54iO7y3ZrUkMyiHvXgKA0RDhcymz/1HerDuMLfyDFNo3vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778544580; c=relaxed/simple;
	bh=L8foGPJpuqj0jkgt81XA+D+5gEB4DJE/BsLxvyjWVhU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DOKUvFNg5lRpoaE1xQbKRqcTNptSlSDO7rIsjYd795cvAF2WA8IQOmgv0I4xPGBHbXVPtMGSOBywR49C1Jgs3bxcT++0CHyBN+kJh/O75Htyq223ii1475YMFYo+fnSeus6GwRKTL4cTBXRJ/tnqBBKhcXb+U2RENckYQlWrlZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDchgRya; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3316C2BCB0;
	Tue, 12 May 2026 00:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778544580;
	bh=L8foGPJpuqj0jkgt81XA+D+5gEB4DJE/BsLxvyjWVhU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=aDchgRyahYao9VJzbJLVrS9t0tGvS0Z4l8xxIVvkW1UQcI7d/zMtS3+JQsIOYESWR
	 p8I8fRIaPQla2+0itCG7rAuSVTaOs7XF3pDambKuZTKhE6+0NywUMqtXfF1MxNLBN4
	 isGd2i5E/LciIOxNH26je5uTJjTjMyYvEN70sgx3hJwaY3rjI4lGdOtx39bgvmuVVq
	 +ND1Oi1TNoWFPW9qHGBn8nkN3OM3jAor+Fd/YQ1/5hmfgQHlllNnPs9g+cSVDPgzVw
	 t4AfPiw0AubtgihBpFvmqpmJSroB1v5ZnV7uC6Z3ZuGCaejrNrrCC1xMJOAMSTF78b
	 ChGMaF7SBaVJA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 09/10] ASoC: renesas: fsi: Use clock prepare handling
 in startup/shutdown
Reply-To: sashiko@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260510084303.122426-10-phucduc.bui@gmail.com>
References: <20260510084303.122426-10-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 00:09:39 +0000
Message-Id: <20260512000939.F3316C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 97B9F517BC4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295893-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] State mismatch between stream open/close (startup/shutdown) and st=
ream start/stop (trigger) causes unbalanced clk_prepare() and clk_unprepare=
() calls.
- [High] Unbalanced `clk_unprepare()` in the error cleanup path of `fsi_clk=
_prepare()`.
--

commit d8393e5f5d5c8b0313ed0200fa4a0d38663711d4
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: renesas: fsi: Use clock prepare handling in startup/shutdown

This commit updates the FSI driver to use fsi_clk_prepare() and
fsi_clk_unprepare() during the DAI startup and shutdown phases to
reduce power usage and ensure clock operations run in non-atomic contexts.

> diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
> index b93809b5da15e..c3ac8b30f342b 100644
> --- a/sound/soc/renesas/fsi.c
> +++ b/sound/soc/renesas/fsi.c
> @@ -1644,9 +1644,16 @@ static int fsi_dai_startup(struct snd_pcm_substrea=
m *substream,
>  			   struct snd_soc_dai *dai)
>  {
>  	struct fsi_priv *fsi =3D fsi_get_priv(substream);
> +	int ret;
> =20
>  	fsi_clk_invalid(fsi);
> =20
> +	if (fsi->clock.count =3D=3D 0) {
> +		ret =3D fsi_clk_prepare(fsi);

Is it safe to use clock.count to guard the prepare and unprepare operations
in startup and shutdown?

Since clock.count is incremented and decremented during trigger (stream
start/stop) rather than startup/shutdown (stream open/close), this can lead
to state mismatches in multi-stream or full-duplex operations.

For instance, if Playback is opened and started (count=3D1), and then Captu=
re
is opened, Capture will see count=3D1 and skip preparing the clock. If Play=
back
is then stopped and closed, it will unprepare the clock.

If Capture later starts, it will attempt to enable an unprepared clock,
violating the Common Clock Framework and potentially causing hardware failu=
res.

Similarly, this can cause resource leaks if multiple streams are opened bef=
ore
starting, or if trigger fails and underflows clock.count to UINT_MAX.

Also, looking at the error path for fsi_clk_prepare() which is called here:

sound/soc/renesas/fsi.c:fsi_clk_prepare() {
	...
	if (!IS_ERR_OR_NULL(spu) && fsi->master->spu_count =3D=3D 0) {
		ret =3D clk_prepare(spu);
		if (ret)
			return ret;
	}
	...
err_spu:
	clk_unprepare(spu);

	return ret;
}

If fsi->master->spu_count is non-zero when entering the function,
clk_prepare(spu) is correctly skipped.

However, if a subsequent clock preparation fails, the error path unconditio=
nally
calls clk_unprepare(spu). Does this prematurely decrement the shared SPU
clock's reference count, potentially disabling it while other instances are
still actively using it?

> +		if (ret)
> +			return ret;
> +	}
> +
>  	return 0;
>  }

[ ... ]

> @@ -1655,6 +1662,8 @@ static void fsi_dai_shutdown(struct snd_pcm_substre=
am *substream,
>  {
>  	struct fsi_priv *fsi =3D fsi_get_priv(substream);
> =20
> +	if (fsi->clock.count =3D=3D 0)
> +		fsi_clk_unprepare(fsi);
>  	fsi_clk_invalid(fsi);
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260510084303.1224=
26-1-phucduc.bui@gmail.com?part=3D9

