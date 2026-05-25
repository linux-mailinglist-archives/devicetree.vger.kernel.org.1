Return-Path: <devicetree+bounces-302439-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFD5AMr0E2puHwcAu9opvQ
	(envelope-from <devicetree+bounces-302439-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 09:05:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F66E5C6E1E
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 09:05:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C89AA30073D0
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 07:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9B6F3B1034;
	Mon, 25 May 2026 07:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUolPVjw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C12E3A5E89
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 07:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779692740; cv=none; b=iocUDUBlqE/ZAzsxwdclgdpn9KK7VKNhAJ/cQoYBgN7qBD9Yoj8ZqGybC6rcSgmZJ4Jc+w+TGCmWHJoOLjLI5VaU8meLNen9Kf1XJ13xuq4CSEv7I6ZMb4dSTclvECWhv7lxC4ZhKw2BlkP3BDba88qhUFZOBpRpNdwkQMvmIHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779692740; c=relaxed/simple;
	bh=vQ0HG6h/IrTvpCXgtQoGw2ZSEd/GlpaYCtk5uIjOF6A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mH0yt0bHXjrlceZFJrFZujhZpgl+ttDZU7EJdua/HDjf5NK3OmeSv5gUa+WQ6n/vZn9ci9vpseVnXtKlY5rP3y+zVbFf9qpTOIgnQphhLq2TYFxVkcXvlTAHBpWAIfsxN8Pj7+2YCeTqCB0i0R0idpGlQy10W1RrEejPk69g7VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUolPVjw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDF7A1F000E9;
	Mon, 25 May 2026 07:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779692736;
	bh=leWOtyNxqopbKyjmWyNvkGUTrXSBiZX95Te/85SrrOY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JUolPVjwc5qlrTDYtvDWauAWdGo6aFIM8uy74cD0JI86X0x/JZKJGF/LJ3t4geXhv
	 NqeUOa3pmrEAz0r81+I4X2qQ4awRKWAu8e4Sbng9F5LgsJMfI6G1Y/4xO1DRU1s9It
	 djsgnJ2G4u6iaoYGLuqlrAdozsPFKuVnCVXAiLTT8NCdBaFoVqIdUt6Wd6W1PsW9Qa
	 b6NROfHcFFN6urhpaI5SbR35sXOES/Mi4DMyaRQsYK7AdjBrKf178CTSYtnkp3myKg
	 XAlE2W8x8P9CJCW9Dkn5EIKuBXvaDQXIfrH5s0nvMaxeUN9DOff0bBFVCnfLcfkP/o
	 brIi8J7UGhCbQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 1/9] i3c: master: rename
 i3c_master_reattach_i3c_dev() to *_locked
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lakshay Piplani" <lakshay.piplani@nxp.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260525064209.2263045-2-lakshay.piplani@nxp.com>
References: <20260525064209.2263045-2-lakshay.piplani@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 07:05:35 +0000
Message-Id: <20260525070535.DDF7A1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302439-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,nxp.com:email]
X-Rspamd-Queue-Id: 6F66E5C6E1E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The return value of `i3c_master_reattach_i3c_dev_locked()` is igno=
red in `i3c_master_add_i3c_dev_locked()`, which can lead to an I3C address =
collision and bus address slot corruption on failure.
--

commit c8a363e4e146cbd0fba01ffdf2e47defa9bd5b84
Author: Lakshay Piplani <lakshay.piplani@nxp.com>

i3c: master: rename i3c_master_reattach_i3c_dev() to *_locked

This commit renames i3c_master_reattach_i3c_dev() to *_locked() to make the
locking requirement explicit and consistent with other I3C core helpers
that require the bus lock to be held by the caller.

> diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> index 6b8df8089a357..c45b450af319d 100644
> --- a/drivers/i3c/master.c
> +++ b/drivers/i3c/master.c

[ ... ]

> @@ -2358,7 +2358,7 @@ int i3c_master_add_i3c_dev_locked(struct i3c_master=
_controller *master,
>  		if (!ret) {
>  			old_dyn_addr =3D newdev->info.dyn_addr;
>  			newdev->info.dyn_addr =3D expected_dyn_addr;
> -			i3c_master_reattach_i3c_dev(newdev, old_dyn_addr);
> +			i3c_master_reattach_i3c_dev_locked(newdev, old_dyn_addr);

[Severity: High]
This is a pre-existing issue, but does this code ignore the return value
of the reattach function on failure?

If i3c_master_reattach_i3c_dev_locked() fails (for example, if the
controller's reattach_i3c_dev callback returns an error), it internally
calls i3c_master_put_i3c_addrs(). This frees the dynamic and static address
slots by marking them as I3C_ADDR_SLOT_FREE in the master's bus address map.

Because i3c_master_add_i3c_dev_locked() completely ignores the return value
and proceeds to return 0 (success), the device remains attached and active
on the bus tracking the newly assigned dynamic address, while the bus state
considers the address slot empty.

Could this structural inconsistency lead to the master assigning the exact
same dynamic address to a new hot-joining device or during subsequent
dynamic address assignment, resulting in an address collision and bus
communication corruption?

>  		} else {
>  			dev_err(&master->dev,
>  				"Failed to assign reserved/old address to device %d%llx",

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525064209.2263=
045-1-lakshay.piplani@nxp.com?part=3D1

