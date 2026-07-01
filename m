Return-Path: <devicetree+bounces-318293-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3E19ApzbRGrX2AoAu9opvQ
	(envelope-from <devicetree+bounces-318293-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:19:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E1E6EB89C
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:19:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IlgN8Sw7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318293-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318293-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 16552303D333
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 09:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA7633B19BA;
	Wed,  1 Jul 2026 09:19:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B912E38656D;
	Wed,  1 Jul 2026 09:19:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782897561; cv=none; b=HrKfahw2vuHubmk2kLEc9D69AzTybrN3B9TzYLi7ykD2YgUzWygPGAFuKNh4QU7NRW4jvffcsRm4It8mDpb3UlkaX2bpEQjA2/DKF2JAsVYz0vF90skw/tZpnbnN1PpLrEk1Thgj8vxhvSfLtVGJa1APQyc3T6pQIE25kcyRq38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782897561; c=relaxed/simple;
	bh=O+WxQEJcPlXHvA5K00jtBGLyDoXDhWTLYNbRqUxjJFI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oA8aBJ4fNxAIDlzXlr/nNTZaHxbvZobDuCXi7tths7bAtki4UthAZ2VVtRnHne29YBFgoGHwgX3g9U+oxP4aGV99GL/IzdFb6nIZ34+oTOuk056umMVeunKc1Nkk2cze8Va+hav1gOfUxiestpxk611psW4GbAaHUosezh0soYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IlgN8Sw7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CD3E1F000E9;
	Wed,  1 Jul 2026 09:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782897560;
	bh=uuwWOO8gIcp9Zj4i7cd94cyG6/9P3iRk4Gw/v7AhFYo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IlgN8Sw7RQR2YtkSmDQE4lpHykmigcb1sLi19M3MvTy4q6bdC1iRTIx+PHJb5j+oh
	 kKUtXSWBKO8mmTZvuUt3fHYX4128m05laoKRSFHY2eluYUMzaF+IaWmkNviYceTRL6
	 xDouxDmlGJsDqwRxGAhReeFad5cTCVHpz8snEXO7n/+kClMU7jGEP1vEbKrrWPcOyR
	 pzu/MSSMsXEnWKRY6u095F06/7RT3gcDLNqH2Jn5f/UGXUlsHTMtBu7r7fsJRcSyFP
	 WcSJGVeHTJfs0SdHxaQlAoaZD/xKf21FdvpDI54G3L/awEF/SbyIANGGxvzf744qp7
	 vFHiJR53ir+aA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 13/22] RISC-V: perf: Add a mechanism to defined
 legacy event encoding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atish Patra" <atish.patra@linux.dev>
Cc: linux-perf-users@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260701-counter_delegation-v8-13-7909f863a645@meta.com>
References: <20260701-counter_delegation-v8-0-7909f863a645@meta.com>
 <20260701-counter_delegation-v8-13-7909f863a645@meta.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 09:19:19 +0000
Message-Id: <20260701091920.0CD3E1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318293-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rivosinc.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:atish.patra@linux.dev,m:linux-perf-users@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 49E1E6EB89C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The fallback log message incorrectly reports 'No default PMU events=
 found' if a vendor only provides hardware events.
--

Note: The format of this review is altered to provide a free-form summary
rather than inline diff quotes due to recitation restrictions.

commit 8db6e371918071f188390a413ded48d85e22f4f9
Author: Atish Patra <atishp@rivosinc.com>
   =20
RISC-V: perf: Add a mechanism to defined legacy event encoding
   =20
This commit introduces a framework in the RISC-V PMU driver to support
vendor-specific legacy event encodings and counter mappings. Platform-speci=
fic
events will be added using this framework in later patches.

[Severity: Low]
In the newly added rvpmu_vendor_register_events() function, the fallback lo=
g=20
message evaluates if either the hardware event map or the cache event map i=
s=20
missing before printing "No default PMU events found".
   =20
If a vendor provides a valid hardware event map but leaves the cache event=
=20
map as NULL (e.g., if they do not support legacy cache PMU events), won't=20
this condition incorrectly trigger the fallback log? Does this code need to=
=20
use a logical AND instead, or should it evaluate and log hardware and cache=
=20
event presence separately to avoid misleading kernel logs?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-counter_de=
legation-v8-0-7909f863a645@meta.com?part=3D13

