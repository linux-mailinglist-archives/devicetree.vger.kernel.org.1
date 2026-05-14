Return-Path: <devicetree+bounces-297795-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBgJFwcnBmoBfwIAu9opvQ
	(envelope-from <devicetree+bounces-297795-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:48:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 65261546821
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:48:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 60B113017D10
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 19:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C20A1391E72;
	Thu, 14 May 2026 19:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeTVk9RZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A008D38F951
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 19:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778788097; cv=none; b=W2ZKb1RlIM1GOF7N6m4UAhYm6h6hj3Jdctmb6Svy3e9maJXIuknyE8dpeL4r6YkWozHX+g+Aeln2GezLsuMMp5TO8NL4NUYeh+/Z7T+D9SpDkEXRSDc9G/YGtdZ2LOkD0I920YFkgfUuKMojMI87TzCkZf/5Ps2H15c45w/ze8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778788097; c=relaxed/simple;
	bh=c6SqRkdXWL3498QUVuWUHOacLrxP1U6vXcy8zKU/plk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HpovL7oqrrEmqXwOg5t8ahx2UUvENjHnJxtfMX3qHQGWOyR3bZRZ2cycZ6N3QTCZ53PAXBjPChhmP3UqRYgUfbdPE445ikNoifgCRPt0qwiykpP7lwaiWp6crL7dxapOS+Nh6lMWoefa/jtAzsZF4ssbOyFaOSjUJMAughnz0Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeTVk9RZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEFF1C2BCB3;
	Thu, 14 May 2026 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778788097;
	bh=c6SqRkdXWL3498QUVuWUHOacLrxP1U6vXcy8zKU/plk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=QeTVk9RZClB8dSsBp2PTnOHfYQv86IMfxqmJ3aLjAFqM0koSo4pf7V/OCfmuM3022
	 IVzNqAzocHFl6LIJ96E93aDjLGRk80NcBrIwpwSmQEEjhjSQGXBAqCpweHWfYRtqyT
	 PPl1OeGF+iILWWIP93qSLaLfwtPQbYhatBS+lQnuS4DD1ywFbmawtsLSF7aus9ZYvZ
	 w6SPeEnjFrBWKmb0fbtPLcEZCSI7ItccDLUIk+c7goMiI5AD3yixFeslEVCSWZSFIA
	 K0zBu/5hCXSgdnenONinaZnycrNWDA4YeyHZAGLSydSaJijVq9rZdGknDKCKKqqzhV
	 gOIUCBWY7wI8g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/4] firmware: psci: switch SYSTEM_OFF to sys-off
 handler API
Reply-To: sashiko-reviews@lists.linux.dev
To: "Diogo Ivo" <diogo.ivo@tecnico.ulisboa.pt>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260514-smaug-poweroff-v1-1-30f9a4688966@tecnico.ulisboa.pt>
References: <20260514-smaug-poweroff-v1-1-30f9a4688966@tecnico.ulisboa.pt>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 19:48:16 +0000
Message-Id: <20260514194816.EEFF1C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 65261546821
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297795-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,ulisboa.pt:email];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Premature memory allocation during early boot causing kernel panic
--

commit ef783d7ffab1683b74c28865d23fcb00064437a6
Author: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>

firmware: psci: switch SYSTEM_OFF to sys-off handler API

This commit replaces the legacy pm_power_off hook with the generic sys-off
handler infrastructure. It converts psci_sys_poweroff to the sys-off callba=
ck
prototype and registers it through register_sys_off_handler.

> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> index 38ca190d4a22d..d6e9721d11e54 100644
> --- a/drivers/firmware/psci/psci.c
> +++ b/drivers/firmware/psci/psci.c

[ ... ]

> @@ -671,7 +672,8 @@ static void __init psci_0_2_set_functions(void)
> =20
>  	register_restart_handler(&psci_sys_reset_nb);
> =20
> -	pm_power_off =3D psci_sys_poweroff;
> +	register_sys_off_handler(SYS_OFF_MODE_POWER_OFF, SYS_OFF_PRIO_FIRMWARE,
> +				 psci_sys_poweroff, NULL);
>  }

Can this cause a regression during early boot?

The function psci_0_2_set_functions() is called extremely early via
psci_dt_init() or psci_acpi_init() from setup_arch(). This happens before
mm_core_init() brings up the slab memory allocator.

Because the priority passed is SYS_OFF_PRIO_FIRMWARE, alloc_sys_off_handler=
()
falls back to dynamically allocating the handler using kzalloc().

Could calling kzalloc() before the slab allocator is initialized result in a
kernel panic?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514-smaug-powe=
roff-v1-0-30f9a4688966@tecnico.ulisboa.pt?part=3D1

