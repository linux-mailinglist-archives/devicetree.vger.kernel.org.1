Return-Path: <devicetree+bounces-296540-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0iKhK0PBA2oV+QEAu9opvQ
	(envelope-from <devicetree+bounces-296540-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 02:09:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A7F52B7E5
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 02:09:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 52A2E3048F20
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 00:09:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD6A1883F;
	Wed, 13 May 2026 00:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiCpCSMy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8682C9D
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 00:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778630975; cv=none; b=e0Y5sa/i9lS6OVYWguA0tBluL0tE8rtdu2AH/fuAnxMYj1CgwqIPqSna7VcU2LMsqvODfWJ6sYQWOei2Hut5MmmUbdb5y4VgAjz9bq88pOBXYW/OSbmKscYru37YGP7SqTlIDWkT6dkKsAUy9lBn42bKNy8wfJIAXD5Kmp2DK0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778630975; c=relaxed/simple;
	bh=vaultDQ8zF9dneJBQMOW5HIgnIo6UI8UNA9TdN/c3/I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=V6XxcR7jEOX7TE/SH9t5r9CNqTRE75zpy7pdysIsOD84KsCpCBUaTTtvR24FQafaJIRb//R+ES6RhvHQmHTKyOV3Y8wEMYWxIiSwisfrXjn5YadCxgkw0QiMCYNnWevwPofCHte/try7Powf4imNQTZ3eLZKtU9Oqa0d6nI/Qo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiCpCSMy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E066C2BCB0;
	Wed, 13 May 2026 00:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778630975;
	bh=vaultDQ8zF9dneJBQMOW5HIgnIo6UI8UNA9TdN/c3/I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=MiCpCSMyG2q+LwZB3pVogc2BiE4n46okR2rr4BjeuCaZUCLrcxXWQFjjq4F4rexJD
	 rvQbZCAccSRiRmm84XcrLriFzJ/ris/AhyVQ8OlhMmC4ZXfJePz50SypRj0VWUdL81
	 8ke3cN861M9HYYZ5OfBn+xU+YPyqyk819IeHfo3s6IsbF1mmVHcAUpG64rrFNJ6SHL
	 GrSvw9M65niRcZt1aUTNQaJYVgY2TzS8IyZRUaCLmrk0efljZmd2Quo94m9xHBQWEg
	 m+xnAsEpB6QV+z07gZzht+S4yuZ5G6bYUnpigzPDWJ2+ju4Wx1DraEHQ2eJOwWr6JV
	 2Ao8SlnsYZTIA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next 1/3] dt-bindings: vendor-prefixes: add SiTime
 Corporation
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ali Rouhi" <rouhi.ali@gmail.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260511211143.19792-2-arouhi@sitime.com>
References: <20260511211143.19792-2-arouhi@sitime.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 00:09:34 +0000
Message-Id: <20260513000935.2E066C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 15A7F52B7E5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296540-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,sitime.com:email,sitime.com:url];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
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

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Mismatch between Author email and Signed-off-by email.
--

commit f07aed4ee2f7551cdd59eeae879a77c0e43ec6f2
Author: Ali Rouhi <rouhi.ali@gmail.com>

dt-bindings: vendor-prefixes: add SiTime Corporation

This commit adds a new vendor prefix for SiTime Corporation to the vendor
prefixes device tree binding.

> Author: Ali Rouhi <rouhi.ali@gmail.com>
[ ... ]
>     Signed-off-by: Ali Rouhi <arouhi@sitime.com>

This isn't a bug, but should the Signed-off-by email address match the
Author email address?=20

The Developer Certificate of Origin tracking usually expects these to match,
but here one is a gmail.com address and the other is a sitime.com address.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511211453.2067=
1-1-arouhi@sitime.com?part=3D1

