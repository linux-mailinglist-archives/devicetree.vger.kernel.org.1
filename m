Return-Path: <devicetree+bounces-297559-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECAUKuPGBWrDbAIAu9opvQ
	(envelope-from <devicetree+bounces-297559-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 14:58:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BA454206D
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 14:58:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C3B83061004
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C40F3DDDC2;
	Thu, 14 May 2026 12:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIJbzejp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F9B26E6F2
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 12:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778763402; cv=none; b=tj2JoTUMCXL81QPkA05/utp0XyhgZt/joMzfVOejQ8ndw4oE92yon/wzciXOM9w2hwi2TZhORg6GjbdMGbSN2U2wQ06HcTl89R2RfAzUJNL9AKE205APKqcsb0RD1TRablh4BZf8KVz0eFLWJ1EKm6KtihJTza3arTbaL2A3zCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778763402; c=relaxed/simple;
	bh=TUL3z1D1MDOOSlizlpHCxgUdQowEhc+8huLxgcDe67o=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=p0Mh0dJHPYLaIkQrKwXMsjXqo4lCIk0/mhPiFMZcyXxb7vGNPDhFkjgUTLyd/tQiMDvonJbTkgk5bnvV7+ap28Ty2SAY9vrk/f+T/foYEV5ho4KWYh49xRcbUU+gbFsJ6duk2mOJ78/P4gFcx+DJ16K8Tu3gvRerYTtp7adhm3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIJbzejp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C94F2C2BCB3;
	Thu, 14 May 2026 12:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778763402;
	bh=TUL3z1D1MDOOSlizlpHCxgUdQowEhc+8huLxgcDe67o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=bIJbzejpCjW2e4+YsnC6NUjQ9zYKzmHWcoLuQYN7sTis5FC5P8f8FKGJfioDdT+w7
	 7u6Eu3bLcBA+Uzdx1B0Zv88ipNAUCVcZUDoN6Sloy6pDr1/tdBsiqSzje8Wj/aENfD
	 Li55b6w088RqDrnuoJ5W0xvikoumod2mVU6GXAum+c73CEpYBDoeToyWM3tV1xmglU
	 ZaIrPU1UAOf9jPbSZeEQTafW1/Q6j0x6Wfx2PVX6dFIH/evWWi9hSuRJ5g/nodhw+R
	 0taEaKGIGrRztuQlZ0AQ1/jiXrzFLJOaQgtfRKIUbdKcQUH45pQVef3eSvZtvR+7Q5
	 kJkyJQVwC6BQw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/5] clocksource/timer-econet-en751221: Unmap io mem
 on probe error
Reply-To: sashiko-reviews@lists.linux.dev
To: "Caleb James DeLisle" <cjd@cjdns.fr>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260514000601.3430262-5-cjd@cjdns.fr>
References: <20260514000601.3430262-5-cjd@cjdns.fr>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 12:56:41 +0000
Message-Id: <20260514125641.C94F2C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 06BA454206D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297559-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Critical] Unmapping IO memory after a successful `clocksource_mmio_init(=
)` registration introduces a fatal use-after-unmap vulnerability.
--

commit dd9c92736c75fb466e09313766fb39cf62c86394
Author: Caleb James DeLisle <cjd@cjdns.fr>
clocksource/timer-econet-en751221: Unmap io mem on probe error

This commit updates the econet timer initialization to unmap the IO
memory blocks if an error occurs during probe.

> --- a/drivers/clocksource/timer-econet-en751221.c
> +++ b/drivers/clocksource/timer-econet-en751221.c
[ ... ]
> @@ -198,12 +199,12 @@ static int __init timer_init(struct device_node *np)
>  				    clocksource_mmio_readl_up);
>  	if (ret) {
>  		pr_err("%pOFn: clocksource_mmio_init failed: %d", np, ret);
> -		return ret;
> +		goto err_unmap;
>  	}
> =20
>  	ret =3D cevt_init(np);
>  	if (ret < 0)
> -		return ret;
> +		goto err_unmap;

If clocksource_mmio_init() succeeds, it registers the clocksource and saves
the mapped IO pointer. If the subsequent cevt_init() fails, the code now
jumps to err_unmap and unmaps the memory via iounmap().

Since clocksource_mmio_init() does not provide a way to unregister the
clocksource, the registered clocksource will remain active. When the kernel
reads from this clocksource later, will it dereference the unmapped IO memo=
ry
and cause a use-after-unmap regression?

Looking at clocksource_mmio_init() in drivers/clocksource/mmio.c:

clocksource_mmio_init() {
        ...
        cs->reg =3D base;
        cs->clksrc.read =3D read;
        ...
        return clocksource_register_hz(&cs->clksrc, hz);
}

Before this patch, if cevt_init() failed, the driver returned an error
without unmapping the memory, which allowed the already-registered
clocksource to safely continue functioning.

[ ... ]
> +err_unmap:
> +	for (int i =3D 0; i < ARRAY_SIZE(econet_timer.membase); i++) {
> +		if (econet_timer.membase[i])
> +			iounmap(econet_timer.membase[i]);
> +	}
> +
> +	return ret;
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514000601.3430=
262-1-cjd@cjdns.fr?part=3D4

