Return-Path: <devicetree+bounces-298317-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEq2Hr8WB2rgrQIAu9opvQ
	(envelope-from <devicetree+bounces-298317-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 14:51:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E051054FEC4
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 14:51:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 940D7312F96A
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 12:31:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 025FE223DE7;
	Fri, 15 May 2026 12:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6NKTR1t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41F81DA62E
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 12:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778848296; cv=none; b=BTM3jKBgfz+Nuk9cADvY05i6UB8HVh9eH0Gh5kwiHUUUhAPJjz6jd/AL3Gu0BfmjQew8+Wnaj1ccXthYgOquB+VbslvHmLZpIjkn0xBCO94zb+lsucHdLOcD2g3vChVTq/p7M+obBpPvAd00bpvLLgZvj3TCca4sLxnc9oT/VDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778848296; c=relaxed/simple;
	bh=Ym4ZYdBttUTInMMGhfIllAdqkDsbTTDhJPs079oKRnk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mLedwhDAu00Ko6MKI8yU5jbhf1P1RFULfbk+UC9pRvn0eL+ibwvhXaUmJd58h2KF7Z2LPIRfj3HBM5dHovOwuLlXfTI80gYe1XtSJp5XWOoYCgDqEJ7vErG17rZOo08bdtfV/bl+HlfjyWeuo+8lD04ZCnl1RfLZmvDx03nWfco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6NKTR1t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A843C2BCB0;
	Fri, 15 May 2026 12:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778848296;
	bh=Ym4ZYdBttUTInMMGhfIllAdqkDsbTTDhJPs079oKRnk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=k6NKTR1tQkuJ6kwGHVrOJLL6fmNVtcudYpEJCUQyMOKsqhY4CPPsQ1gOCRs5EuxPe
	 dZbI0aVRL5YkkTo6HfdzHFUl+GotURwFHXudHrR2X3hTgifN03ipACUeRYLzivWl30
	 asWKHk8PXotCSEnvzHpnALu1y8dBPGtGVgMuQxcXaeqzN1zXndmFrjXEQnw1x2EOIY
	 PXpeHovzhsgxET575rSVcDcKtB3abOXA1vmS8DVJy4lZ9zx+tQBOb6EDtxlrVUTUUU
	 QBhP4JIwGI9kaV1r6fbaUWF5nWdMeNnVkMJC+jg5YTUgCPisbBpc84m+yGculpZFVB
	 RfTC12cUM078w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/3] nvmem: lan9662-otp: add support for LAN969x
Reply-To: sashiko-reviews@lists.linux.dev
To: "Robert Marko" <robert.marko@sartura.hr>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260515115954.701155-2-robimarko@gmail.com>
References: <20260515115954.701155-2-robimarko@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 12:31:35 +0000
Message-Id: <20260515123136.3A843C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: E051054FEC4
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
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298317-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The driver mutates a shared static global structure (`otp_config`)=
 during its `probe()` function, creating a data race on concurrent probes.
--

commit 084765687704216b34f261a961d208c0c6497f50
Author: Horatiu Vultur <horatiu.vultur@microchip.com>

nvmem: lan9662-otp: add support for LAN969x

This commit adds support for the Microchip LAN969x to the lan9662-otp drive=
r.
It relies on the existing control logic while allowing the OTP size to vary
based on device tree match data.

> diff --git a/drivers/nvmem/lan9662-otpc.c b/drivers/nvmem/lan9662-otpc.c
> index 56fc19f092a7f..62d1d6381bf88 100644
> --- a/drivers/nvmem/lan9662-otpc.c
> +++ b/drivers/nvmem/lan9662-otpc.c

[ ... ]

> @@ -196,6 +194,7 @@ static int lan9662_otp_probe(struct platform_device *=
pdev)
> =20
>  	otp_config.priv =3D otp;
>  	otp_config.dev =3D dev;
> +	otp_config.size =3D (uintptr_t) device_get_match_data(dev);

Does modifying the static otp_config structure during probe create a data
race?

If multiple device instances are probed concurrently, threads could race to
update these fields. This could lead to one instance being registered with
another's private data before devm_nvmem_register() creates its internal
copy.

If that happens and the latter device is unbound, its devm-managed memory is
freed, which could result in a use-after-free when the first device attempts
to access the nvmem interface.

Would it be safer to allocate the nvmem_config structure locally on the
stack within the probe function instead of using a global static structure?

> =20
>  	nvmem =3D devm_nvmem_register(dev, &otp_config);
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515115954.7011=
55-1-robimarko@gmail.com?part=3D2

