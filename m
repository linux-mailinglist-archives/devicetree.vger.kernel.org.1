Return-Path: <devicetree+bounces-299242-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IB0iFJjcCmog8wQAu9opvQ
	(envelope-from <devicetree+bounces-299242-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 11:32:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A517D569C1E
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 11:32:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64F1330067B9
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 09:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8420A3E314B;
	Mon, 18 May 2026 09:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlG+t80n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604B53E121A
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 09:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779096439; cv=none; b=pQdb8QvsmOzizC1LSeERUx0RJM8qZ5mveTs1n1iFmFHUOkz7uP6UuFBeXzy+eW4exCWBLRwy7zqYFHNm/XdEpaq+n5lm0IYKR1QmHi57OA/PgGLiX8eg+sS0gqsJCG8znErGIm5dT2MIBJLPl9XH9ubDHFyTKfvKBticrKM6CbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779096439; c=relaxed/simple;
	bh=gxFBsWO2b3aWVIgNHt0OrFhOfRQ248cgzdeUoDcjVnA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=j2x14tkf38nnnxSTT3d4BOowuqHu60C9FK7ztyM/VZ1riMnfhhu79oq2q1Wsvh740YJl3qBd/0K+iweVPQ3AxeYic7A6zcg7pnOErjPY62coSnSadZx4sZrf9wlmBgTWb8PIpNIuamoEH+/T6QZ82X8V5+CEA/pWUEMfN9dZGaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlG+t80n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B33B0C2BCB7;
	Mon, 18 May 2026 09:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779096438;
	bh=gxFBsWO2b3aWVIgNHt0OrFhOfRQ248cgzdeUoDcjVnA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=SlG+t80nyf9jU/GxDSFCCH4gM7F7yXuUhHP2U5ASjpjWSrTZ0vYRoL4/wxem6RW1T
	 BEdbKKQcmtOawcVNtdB7pypphaX/VPkdfxgz0wIfTfle/xa818PNZhQOBzrUTAd19W
	 5WVqhfBVfb4U6agbkFa8wGQxNxPHFk0npwXzpGdYrVk+KMrE79I6UKVltK7RgDV2TC
	 740cICrCOaBnJjy1oEMhVmaYGkDdaU5VuhhH1Ko+8Pj61bBoJWGaXmxEx9Gf46jStS
	 IZA5oY+ysxfW0L6x7bhAxa0IqVGX6yG5NpuG9PXMpm9Hx7XJa6cIQGlRjZLJV4ajnK
	 M0rUhcxsoIfaw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] docs: dt: maintainer: Add Devicetree and OF maintainer
 profile document
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260518091942.29822-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260518091942.29822-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 09:27:18 +0000
Message-Id: <20260518092718.B33B0C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: A517D569C1E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299242-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] Typos in the new documentation file: 'Pachwork' instead of 'Patchwo=
rk' in the section header, and 'statutes' instead of 'statuses' in the text.
- [Low] Incorrect tag ordering in the MAINTAINERS file.
--

commit 51df2774f45c1a37759547f78fcc2881a87cc94a
Author: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

docs: dt: maintainer: Add Devicetree and OF maintainer profile document

Document how Devicetree and Open Firmware maintainers handle their
subsystem, focusing on how bindings are reviewed, applied, and the heavy
reliance on Patchwork.

> diff --git a/Documentation/process/maintainer-devicetree.rst b/Documentat=
ion/process/maintainer-devicetree.rst
> new file mode 100644
> index 0000000000000..b983c5f1d851b
> --- /dev/null
> +++ b/Documentation/process/maintainer-devicetree.rst
[ ... ]
> +3. DTS and drivers:
> +   DT maintainers might provide comments, but review is generally not ex=
pected.
> +
> +Pachwork
> +~~~~~~~~

This isn't a bug, but there is a typo in the section header.

If Pachwork is changed to Patchwork, should the underline also be extended =
to
9 characters to avoid a Sphinx build warning for the title underline being
too short?

> +
> +Devicetree maintainers review patches using Patchwork, so the current st=
atus of
> +a patch can be checked there. For typical driver submissions, Patchwork
> +receives the entire patch set, but only a few patches are usually Device=
tree
> +bindings that are reviewed by DT maintainers.
> +
> +Explanation of Patchwork statutes:

This isn't a bug, but should this be statuses instead of statutes?

> +
> + - **New**: Not yet processed by the automation toolset.
> + - **Needs ACK**: Waiting for review by DT maintainers.
[ ... ]
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2fb1c75afd163..c0ef1ee78ffcc 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
[ ... ]
> @@ -19962,6 +19963,7 @@ M:	Conor Dooley <conor+dt@kernel.org>
>  L:	devicetree@vger.kernel.org
>  S:	Maintained
>  Q:	http://patchwork.kernel.org/project/devicetree/list/
> +P:	Documentation/process/maintainer-devicetree.rst
>  C:	irc://irc.libera.chat/devicetree

This isn't a bug, but is this the correct tag ordering?

The preferred order defined at the top of the MAINTAINERS file specifies th=
at
the chat (C:) tag should precede the subsystem profile (P:) tag.

>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git
>  F:	Documentation/devicetree/

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518091942.2982=
2-2-krzysztof.kozlowski@oss.qualcomm.com?part=3D1

