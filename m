Return-Path: <devicetree+bounces-308579-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7IIIMNNvJ2rAwgIAu9opvQ
	(envelope-from <devicetree+bounces-308579-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 03:43:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2760265BB9F
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 03:43:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UW+Blp94;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308579-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308579-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9561300CE60
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 01:43:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61A0D33F5A8;
	Tue,  9 Jun 2026 01:43:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509552FDC3C
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 01:43:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780969425; cv=none; b=trvhr6vQKurtsHLljPphYlUjYmKaKm0sgYyaTjSuj/MjUOVJ2XWZDntVyBpXtCGeByPFgfOWwQvqzD3u8Lv++4BkG+hU7q22WyatsAvnk52de3IUg+RNTNPUAyAlKAH4wQb6Yx9Ayo4wNOSpiL9qcwGFw2jA053pEnAuG6Qu/Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780969425; c=relaxed/simple;
	bh=9GvD05Y8jJXdT0UFqIWuUqmUR18bxMK7hsTO3ekU3bQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=msrD1UUOY7by4j2DTSd2Pjsv4fnpjESNl5xIV/0F37zYH8LG03wWeM2dNQy6rTT94OsLILRFyODBHwdNTlR0vqULBc6YDn6sjzDv+KX/kpVE95m2ftP07rtpvUyaEo9IFePgn7douR9KZ36rl+DmY2vKmD94PWUl1ndkcvg38wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UW+Blp94; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB7021F00893;
	Tue,  9 Jun 2026 01:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780969423;
	bh=iR6/TjS3znHJVtC0fvpFqehWgMuTziPk7vZS6xTOPcs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UW+Blp94ljJgKXBjZvvH+StWXF99dTnMk5b/d2++fPQ+mlDjbR3FL8r9Eh7+8qGIl
	 FSTouWZZtZ0JGMfMjZpIzvPkx93EcOKtvEKZgBQ9RwTECz6gJm3YYc3f5Q71Dm3u5d
	 I5xPW9IyJyLWOjf6LkcCpyG6twOKWSijESjm7dGUO3NAgxla+ebEdtrCsrldyu4lnk
	 XXLVhmeqQQN4vs2FA3+CYyxZQ4i8WudKKSqY9krgfMsGxhQcST2H0Df47VbE1XN+v/
	 Z0MKaNao5/0uFdPP9UIyhAXcum3XeW6tpIlD+uAd3GSzBjO5FFmjqQd+HaR7EO0rqa
	 WoHOlI2GCjcRg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 08/11] ASoC: renesas: fsi: refactor clock
 initialization
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609013107.5995-9-phucduc.bui@gmail.com>
References: <20260609013107.5995-9-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 01:43:43 +0000
Message-Id: <20260609014343.AB7021F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308579-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto];
	FORGED_RECIPIENTS(0.00)[m:phucduc.bui@gmail.com,m:devicetree@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:phucducbui@gmail.com,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2760265BB9F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] Unbalanced pm_runtime_disable() on the fsi_clk_init() error path b=
efore pm_runtime_enable() is called permanently breaks device PM on deferre=
d probe.

Pre-existing issues:
- [High] Concurrent execution of playback and capture triggers causes lockl=
ess read-modify-write races on port registers and corrupts clock refcountin=
g.
--

commit 3878a75703ac4c551d532bdff9ddca5b624ed448
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: renesas: fsi: refactor clock initialization

Move fsi_clk_init() from set_fmt() to the probe path. This ensures that
clock resources are acquired only once during device initialization.

> diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
> index e29be2bcf952c..13988c7dc926e 100644
> --- a/sound/soc/renesas/fsi.c
> +++ b/sound/soc/renesas/fsi.c

[ ... ]

> @@ -1996,6 +1996,9 @@ static int fsi_probe(struct platform_device *pdev)
>  		dev_err(&pdev->dev, "FSIB stream probe failed\n");
>  		goto exit_fsia;
>  	}
> +	ret =3D fsi_clk_init(&pdev->dev, fsi);
> +	if (ret)
> +		goto exit_fsib;

[Severity: High]
If fsi_clk_init() fails here, we jump to exit_fsib before
pm_runtime_enable() is called.

At the exit_fsib label, pm_runtime_disable() is called unconditionally. Will
this cause an unbalanced pm_runtime_disable() call, incrementing the
device's disable_depth to 2?

If this happens during a probe deferral (e.g. -EPROBE_DEFER because a clock
is not yet available), the subsequent probe attempt's pm_runtime_enable()
will only decrement the depth to 1. Does this leave PM runtime permanently
disabled and break all future hardware initialization?

> =20
>  	pm_runtime_enable(&pdev->dev);
>  	dev_set_drvdata(&pdev->dev, master);

[Severity: High]
This is a pre-existing issue, but I noticed a potential race condition with
concurrent execution of playback and capture triggers.

ALSA core holds individual substream locks, meaning ALSA trigger callbacks
can be invoked concurrently for playback and capture substreams on the same
DAI.

In fsi_dai_trigger(), both start operations call fsi_hw_startup(), which
performs lockless read-modify-write operations on shared port registers:

fsi_hw_startup()
    fsi_reg_mask_set(fsi, CKG1, (DIMD | DOMD), data);

Could Thread A set ACKMD bits while Thread B concurrently sets DIMD bits on
the same register, causing one of the updates to be lost?

Additionally, fsi_clk_enable() uses a shared clock->count without atomic
operations or locking:

fsi_clk_enable()
    if (0 =3D=3D clock->count) {
        ret =3D clock->set_rate(dev, fsi);
        ...
        clock->count++;
    }

Could a concurrent increment of clock->count lead to both streams calling
clk_enable() but clock->count only reaching 1? On shutdown, clk_disable()
would only be called once, potentially leaving unbalanced clock refcounts in
the common clock framework and permanently leaking the clock reference.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609013107.5995=
-1-phucduc.bui@gmail.com?part=3D8

