Return-Path: <devicetree+bounces-297185-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gO+XFjkBBWquRQIAu9opvQ
	(envelope-from <devicetree+bounces-297185-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 00:54:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C925D53BABB
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 00:54:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 226BD3020FDA
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 22:54:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70F6B37DE85;
	Wed, 13 May 2026 22:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnDyw6XF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9A62D29C8;
	Wed, 13 May 2026 22:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778712886; cv=none; b=Wt+GK+cNjob+UAosvcYEVPHJN47I9VIo/DZvllfF2o9eK/VSAYs4OBuo3E8jyitqg179d+iLDvsB5p5D48WLAxUVqQa0+hdcxJOnWP3bWbJsjibb4i+o6IUstA/Euc6BtPZBg4NuLsG3KVmkIEsE/+DVyXt2YXWQsCexXo1fLgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778712886; c=relaxed/simple;
	bh=ppN4BtPgCISrT1VuAeGbv8M0b6eeB+wblh5mGaVOfEA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=m6CZOiXD5PjsfP4xpdhQt8OgW00Jx4hITlZNavLFfdF5RVIv/mlJDOXmhOdvnRlW6GmQlzWh7TC9L0W8C+A5nEygGsrTHF+XHoAdLqkrCrpKoXLhXN8NXlXV8xZk3QQ+7m96w5wIKpSJOFqV/TIe329BVo2MKq3cmbN+WJEmT0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnDyw6XF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8AA8C19425;
	Wed, 13 May 2026 22:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778712886;
	bh=ppN4BtPgCISrT1VuAeGbv8M0b6eeB+wblh5mGaVOfEA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=LnDyw6XFxsoqXUe+pnBN/g+YqaYF3di94ps9xAKACxRB0sDUkKEzt41/VJXYtAS04
	 oBNqbUhlisDxZgkdwJwcxhF+M6f8MpTLOIbwAr3xy5boKKkLqZAGJjpeTXLeTBKDrp
	 duxpFZL1iOCx7J4Y2loAjKvL4IfsdZfjZ4vAwsZ9jjANmfiXw8M2kiqtzumNiVK1Kq
	 OacVgBDFV2I3y3YL1yH2odzHd8i/wUnuvPxNNTK94tJY3Yt/gzwP04ms24XZqr3lZp
	 nThCI/Tiv/+MGpmACamiLznwn0eJ3okXn07e6z8Ud/r4o7I/8qxhW7ZRTee7kiKa9b
	 1DH9m3C8nBEuw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 05/10] dt-bindings: arm: fsl: Add solidrun lx2160a
 twins board
Reply-To: sashiko-reviews@lists.linux.dev
To: "Josua Mayer" <josua@solid-run.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260512-lx2160-pci-v6-5-d0ff72d3c983@solid-run.com>
References: <20260512-lx2160-pci-v6-5-d0ff72d3c983@solid-run.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 22:54:45 +0000
Message-Id: <20260513225445.A8AA8C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: C925D53BABB
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
	TAGGED_FROM(0.00)[bounces-297185-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,solid-run.com:email,smtp.kernel.org:mid]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The commit message contains spelling and grammar errors: 'with with=
 a sinle' should be 'with a single'.
--

commit 2b66fde99c455bef77062b52de3d83d8ee016506
Author: Josua Mayer <josua@solid-run.com>

dt-bindings: arm: fsl: Add solidrun lx2160a twins board

This commit adds a device tree binding for the SolidRun LX2160A Twins board,
specifically supporting the single CEX-7 module configuration.

> The SolidRun LX2160A Twins board supports two configurations, one with
> with a sinle CEX-7 module, and one with two (dual).

This isn't a bug, but there is a typo in the commit message. "with with a
sinle" should probably be "with a single".

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512-lx2160-pci=
-v6-0-d0ff72d3c983@solid-run.com?part=3D5

