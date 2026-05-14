Return-Path: <devicetree+bounces-297264-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKPjDG44BWq6TQIAu9opvQ
	(envelope-from <devicetree+bounces-297264-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 04:50:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A94C953D2C2
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 04:50:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 527A5302AF27
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2DC12EBB89;
	Thu, 14 May 2026 02:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EI7jeCte"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B02D124CEEA
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 02:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778726974; cv=none; b=BceLdoOkJ7M6gyb3azi9EWmPKxEiGa7i2g+95mb4j8TOpasLOVCiMvNAmsApTjdQx9yiGdd9AdD8lbKJ17L/P247VO9LY7SszK1E537IZ4rzS9n+cr4jPAzW/rqUtTmd3L7+ZXE3mSYN0Ym7XGFTu8PgQveveuRDYDC8WQlR5BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778726974; c=relaxed/simple;
	bh=gbVI3XcLQD3v1rGIKMGDPKZCYh221ZrQ/CzZAe5m2Ko=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RPOkCHmc+bgKvdaJkW5oW99Bkcm6fuvrvEvoGWPo9fshcpTdGhKhy0bS560dE+1TPlRFSWE2Gfsqbhn7OHJ62OyzJBHpFapoQp0XiJUG2ubbBkch/r+uyjf3cNBpCRYL+LLzavhirkj99YhL0wfaGgehNEnsQfhM9Kvni+eZSSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EI7jeCte; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 270E0C19425;
	Thu, 14 May 2026 02:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778726974;
	bh=gbVI3XcLQD3v1rGIKMGDPKZCYh221ZrQ/CzZAe5m2Ko=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=EI7jeCtePisRJ8NoMPeYnpIBDbD0Qxr8WocCdAihWf9EFBo3usaifXnD5NnfCdrpA
	 4Ymq51NUqL45SIZjNTS1KoUo/Vw4oOfUJefPP//S6L7yeQRGYFAynSsUTA9VLhuCjo
	 kSnfy8LjC/2Q8PjiBvQvXZ9ncc/PwvIYZm7ZxBtw/+RHdPgYmDhEuJvpfBRnb324+0
	 /nV4TChWTNT64o/mEAlAWws5Dq1mKclp7R6363O28ugBvvAG6Ipok0w9qkAgGsfkx8
	 sJFwpHyXdO3dRoUjc/xMkqKzGjxUrjWIyBHLgOwKNS9MIbzqk1vzwxLC5aIc9AKFjI
	 qjTQrwnI2na1g==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH v2 1/2] dt-bindings: iio: light: add Broadcom
 APDS9999
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jose A. Perez de Azpillaga" <azpijr@gmail.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <438370a42f57250cbead53ac73834fbf9ccb9269.1778659152.git.azpijr@gmail.com>
References: <438370a42f57250cbead53ac73834fbf9ccb9269.1778659152.git.azpijr@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 02:49:33 +0000
Message-Id: <20260514024934.270E0C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: A94C953D2C2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297264-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,it-klinger.de:email];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Incorrect alphabetical placement of the new entry in the MAINTAINER=
S file.
--

commit 9c652efb6ad9a7c4e83bfb1ad645000b5ee9d6a4
Author: Jose A. Perez de Azpillaga <azpijr@gmail.com>

dt-bindings: iio: light: add Broadcom APDS9999

This commit adds Device Tree bindings for the Broadcom APDS9999 ambient lig=
ht
and proximity sensor, and updates the MAINTAINERS file.

[ ... ]

> diff --git a/MAINTAINERS b/MAINTAINERS
> index a92290fffa163..289130aeb4192 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3976,6 +3976,12 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
>  F:	drivers/iio/light/apds9306.c
> =20
> +BROADCOM APDS9999 AMBIENT LIGHT SENSOR DRIVER
> +M:	Jose A. Perez de Azpillaga <azpijr@gmail.com>
> +L:	linux-iio@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/light/brcm,apds9999.yaml
> +
>  AVIA HX711 ANALOG DIGITAL CONVERTER IIO DRIVER
>  M:	Andreas Klinger <ak@it-klinger.de>
>  L:	linux-iio@vger.kernel.org

This isn't a bug, but should this new entry be placed further down in the
file to maintain alphabetical order?=20

It looks like the BROADCOM entry is currently inserted between the AVAGO and
AVIA entries, rather than in the B section.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1778659152.gi=
t.azpijr@gmail.com?part=3D1

