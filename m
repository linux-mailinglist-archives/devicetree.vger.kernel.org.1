Return-Path: <devicetree+bounces-299284-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EJMClnqCmqR9QQAu9opvQ
	(envelope-from <devicetree+bounces-299284-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 12:30:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFD756ABF1
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 12:30:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47D3330530D8
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 10:27:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18B012FC037;
	Mon, 18 May 2026 10:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLoyEcHV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9E53E8681
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 10:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779100061; cv=none; b=d2pHCjdLpoV+33FhExF7MKbroXl+G5F3auIY4cfXc7uZOtO/tgWm0b6S0y1wmqYl1vzkCCVcTY234B4VaAz8T8vUiCWq3ZFFewSUarHXRoubFQpnNmgH0ou25rn0NtS1s49CsZY4MPGninSzCN4dHgEC+T37QFfedVUX0B9UjVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779100061; c=relaxed/simple;
	bh=VnOrgsB/RAIn1p0b3p2RIWmVeown2QrCKy0DQy1hwBU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kjsj//Uwrl1avJDYvPS3bskmFUk2OC8IpZTAfrv4TPCGARScae+bA2uqPO7VPcM0+3D7KkWp6y0R/uAtqgcM7IvrfMxn9mWYar2BDjZVQpl17szelJzmPb/5X2es+uVjlnVGWgDEYLp7taiVehjRtpapo29XmznXGxd4rIieEEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLoyEcHV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65539C2BCB7;
	Mon, 18 May 2026 10:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779100060;
	bh=VnOrgsB/RAIn1p0b3p2RIWmVeown2QrCKy0DQy1hwBU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=aLoyEcHVfBqA4tJq5JnnJSEvlozQ62zoJZAuLANa87Uh1Z1JPwYZ2aPWrpKMqmzFW
	 dOnU553SabuvFqy0fMnmDDizD+ZjAhsfODO5ldGqAcxlERY3qfoeqk2o7WEGhmEgkl
	 KT1vu7Zh4MSdhsZZCWgqpA5VWfjMEtGBKc9pGj0jm2zMCgL856N+3RQHzj/8vZnCRm
	 BRE89F3c3J1W2aSxAqbcuFtyap4+dT76ptU3biiRQo59bFfMi5oK+HTiuyvr9GHiIw
	 yiD53r0OqW7rSRdIeoUK/ShK4STVyYDOIL6cUSs1c+R5k7FpAN3KfLQqeKgeSLX8gf
	 LpJOCQ4/GkljQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] docs: dt: maintainer: Add Devicetree and OF
 maintainer profile document
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260518101259.34948-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260518101259.34948-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 10:27:39 +0000
Message-Id: <20260518102740.65539C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 8CFD756ABF1
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
	TAGGED_FROM(0.00)[bounces-299284-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing `F:` pattern for `Documentation/process/maintainer-devic=
etree.rst` in the Devicetree subsystem sections.
--

commit 78607746831a0985a18a7d86f6aa537fdeb92761
Author: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

docs: dt: maintainer: Add Devicetree and OF maintainer profile document

This commit adds a process document explaining how Devicetree and Open
Firmware maintainers handle patch review and rely on Patchwork. It also
updates the MAINTAINERS file to point to the new document.

[ ... ]

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2fb1c75afd163..300e6985f9d84 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19942,6 +19942,7 @@ S:	Maintained
>  Q:	http://patchwork.kernel.org/project/devicetree/list/
>  W:	http://www.devicetree.org/
>  C:	irc://irc.libera.chat/devicetree
> +P:	Documentation/process/maintainer-devicetree.rst

Should there also be an F: entry for=20
Documentation/process/maintainer-devicetree.rst?

The scripts/get_maintainer.pl script uses F: tags to map modified files
to subsystems, but it ignores P: tags for file matching.

Because this new process document falls outside the existing F: patterns
for the Devicetree subsystem, patches modifying it might not automatically
CC the Devicetree maintainers.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518101259.3494=
8-2-krzysztof.kozlowski@oss.qualcomm.com?part=3D1

