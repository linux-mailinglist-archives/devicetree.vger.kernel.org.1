Return-Path: <devicetree+bounces-297764-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFKiDiQVBmp3egIAu9opvQ
	(envelope-from <devicetree+bounces-297764-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 20:32:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E9A545E52
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 20:32:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 15DB4300CCBE
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 18:32:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9663390229;
	Thu, 14 May 2026 18:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B44fNkFc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66B5388E6F
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 18:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778783519; cv=none; b=Oi92paJzv3Ydn7k09vfa2gPRhdPJuc8AIEVweaJ5OGBqxuEvGOvLYNyPiOR0v0slb6rlErGptMVrb4xbPi4Sj/GrWrroSjAOBnZe2HPA3hbradsQVGIHVh23hmyJB5gvu8TxOelrxf3U+VhucCgyTjTg03/j+dwcRorlST66KI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778783519; c=relaxed/simple;
	bh=ZWYFVq2SDdcjYq/XFklLqLMbJZJ6OKR2o9Yopzn/Ca8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YZtY9TtgeqTcOUyJDugTbEZWpA81TjCouhaCHAqIomZjrZ/3UUNZGSWijLeUFFlrqv1yhODvKazmOLqRPRRISUu+XpcsOSeATfyjZpCRujFcZwW2i1/k/peil9/hCIgpj6YEehtJWzrxWsNCy8wfZsDjebQ6CvaNdxv3iTid62c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B44fNkFc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D6FCC2BCB3;
	Thu, 14 May 2026 18:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778783519;
	bh=ZWYFVq2SDdcjYq/XFklLqLMbJZJ6OKR2o9Yopzn/Ca8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=B44fNkFcXCpQWm84zcXFfQSlUXB+Mn1rXxzLNIQg3nE2bTlW3R5jt3JPKruM03Gju
	 s/x12MpXiEJbY3mPu7fuB7x9WIL8qRZg57bzVrBLbt8FfYFukvIaUMAJWRl+J8s76N
	 Z+IQyFgeKaIvdKm6tGoeC4fGlAanRPA70r+cgJFZVg27BK86FPxoXucyfgaUMIM34b
	 XDbFdaMq7SxLo8DiwMTlU6KlS0Yt1FKNTNB03q3WTp75gRSOfAPq0J7atld4G/5dY+
	 dpQ3Z1+gyDuqIocRKYiXMrn8gtdzKKM2yNKymmarniEmjUtcDS4YhIULM3wlFSTiED
	 d8M6KzLYv9Bmg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] checkpatch: Don't emit warnings for USB & PCI device DT
 compatible prefixes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wenst@chromium.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260514105151.2771474-1-wenst@chromium.org>
References: <20260514105151.2771474-1-wenst@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 18:31:57 +0000
Message-Id: <20260514183158.5D6FCC2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: A2E9A545E52
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297764-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,chromium.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,checkpatch.pl:url];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The commit introduces a hardcoded bypass for `pciclass` based on=
 a false premise, masking an underlying bug in checkpatch.pl.
- [Medium] The code implementation silently supports the `usbif` prefix, in=
troducing a meaningful mismatch with the commit message.
--

commit 771fab4f035f631c7cd034c709f25afb0f1dc11b
Author: Chen-Yu Tsai <wenst@chromium.org>

checkpatch: Don't emit warnings for USB & PCI device DT compatible prefixes

The USB and PCI device bindings define some compatible patterns based
on device IDs that use the comma to separate vendor and product IDs.
This commit skips these prefixes when checking vendor prefixes in
checkpatch.pl.

>     These patterns include:
>    =20
>       - usb[0-9a-f]{1,4},[0-9a-f]{1,4}
>       - pci[0-9a-f]{2,4},[0-9a-f]{1,4}
>       - pciclass,[01][0-9a-f]{3}([0-9a-f]{2})?
>    =20
>     These are not real vendor prefixes. Don't emit warnings for them.

Is this description accurate regarding pciclass? The commit message assumes
pciclass is not a real vendor prefix. However, looking at
vendor-prefixes.yaml, it is actually defined as part of a grouped regex:

"^(pciclass|pinctrl-single|#pinctrl-single|PowerPC),.*": true

The reason the check fails in checkpatch.pl isn't because it is a fake pref=
ix,
but because the grep command below uses a literal match:

grep -Eq "\"^\Q$vendor\E,\.*\":" $vp_file;

Does this workaround paper over the underlying issue with the grep
command not matching grouped regexes, which would also affect other valid
prefixes like pinctrl-single or exynos?

> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 3727156e4ccad..ccedf152acfd7 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -3795,6 +3795,9 @@ sub process {
> =20
>  				next if $compat !~ /^([a-zA-Z0-9\-]+)\,/;
>  				my $vendor =3D $1;
> +				next if $vendor eq "pciclass";
> +				next if $vendor =3D~ /^pci[a-f0-9]{2,4}$/;
> +				next if $vendor =3D~ /^usb(if)?[a-f0-9]{1,4}$/;

The commit message explicitly lists usb[0-9a-f]{1,4},[0-9a-f]{1,4} as the
supported pattern for USB, but the implementation here silently supports the
usbif prefix as well.

While usbif is a valid prefix for USB interface bindings, could the commit
message be updated to reflect its undocumented inclusion in this regex?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514105151.2771=
474-1-wenst@chromium.org?part=3D1

