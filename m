Return-Path: <devicetree+bounces-318299-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id x/6ZDlTfRGrD2QoAu9opvQ
	(envelope-from <devicetree+bounces-318299-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:35:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7F26EBA37
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:35:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hmLH5pxe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318299-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-318299-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E991E3006525
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 09:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B31C33EFD04;
	Wed,  1 Jul 2026 09:34:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276903B52FA;
	Wed,  1 Jul 2026 09:34:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782898486; cv=none; b=h44QaYfs72J1TEgxzYMav8ZAY1GrLVikmLarsvIDGdIbImy4eLWShhjA2IkfSrsP6H0Ru7Zph80ckoxfdt9alIHL/SYHuwuZI2Od/mECx2Y5YD7lN4yT/z0Nu5PekbUFHxFe7l73q5DJP6UzK3QdI6FIANHuC6C1B6G5/+tdS0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782898486; c=relaxed/simple;
	bh=LomHJHSBbrbrPpJfgrszjuD/iO9ifK+o001M0/h4E24=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cNZCWY+p/CKP0ZlqrTA55i9OorADx+H6dyBpzZs160y7bfTguDVLp9MvCU0QWd1QmcJfwYbQITxf9EJKid5gwbD+H5vBTRkW66brXyGHApbqxi3SeYmIQgxNWJlZe/6A2knmJXgXeqcqijz/EYD92n9zkM4FiREj2RJpogol5C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmLH5pxe; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 817D81F00AC4;
	Wed,  1 Jul 2026 09:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782898484;
	bh=8pToScgcy0iBzj4LPIt1TkgFIE6I0OLg9YG7jH/ubhk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hmLH5pxeRwG01g8EFUoECJCSm/tdr/cjgX3l5jR09+exFyQ1qGAAhF2iDdHnXatX5
	 9GrTneTL2p6mnaWvFHB7/tP1pz38FZTLMMXiRqlplaNhQkeKc3aOEJrJakHhCaxtIH
	 5H6Zl3r2KVOtttLmdZCYSxs0qYOS7T1tZRt2fW9cOHStCf13ELs7+VorQ3qfsmEniD
	 ggcRYc6fghv//LjUNZ6znbLBMZUqsuQBvnkCfoN277j0fSp93+Du+eptk71PYRqq2R
	 yb7xBW+Amx9MlJNl6KVg+7GM9QQlcNbyF38ftur8xusX8ILhB3V+Movb4K7EbsxA+M
	 P8Nc6kZrtOzEg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 22/22] TEST(do-not-upstream): fake qemu vendor JSON +
 mapfile entry for CounterIDMask path
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atish Patra" <atish.patra@linux.dev>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, linux-perf-users@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260701-counter_delegation-v8-22-7909f863a645@meta.com>
References: <20260701-counter_delegation-v8-0-7909f863a645@meta.com>
 <20260701-counter_delegation-v8-22-7909f863a645@meta.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 09:34:43 +0000
Message-Id: <20260701093443.817D81F00AC4@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318299-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,meta.com:email,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:atish.patra@linux.dev,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:linux-perf-users@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9A7F26EBA37

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] This patch contains fake test data and is explicitly marked as '=
do-not-upstream'.
- [Medium] The patch adds a mapfile entry for '0x0-0x2a-0x0' which is not d=
ocumented in the commit message.
--

commit 2c14c47c4b1f0c0aa09f9d1287cb457e27674f5b
Author: Atish Patra <atishp@meta.com>
Subject: TEST(do-not-upstream): fake qemu vendor JSON + mapfile entry for C=
ounterIDMask path

This commit adds fake JSON events and mapfile entries for a QEMU virt
environment to test the CounterIDMask path in jevents.

> diff --git a/tools/perf/pmu-events/arch/riscv/mapfile.csv b/tools/perf/pm=
u-events/arch/riscv/mapfile.csv
> --- a/tools/perf/pmu-events/arch/riscv/mapfile.csv
> +++ b/tools/perf/pmu-events/arch/riscv/mapfile.csv
> @@ -24,3 +24,5 @@
>  0x602-0x3-0x0,v1,openhwgroup/cva6,core
>  0x67e-0x80000000db0000[89]0-0x[[:xdigit:]]+,v1,starfive/dubhe-80,core
>  0x31e-0x8000000000008a45-0x[[:xdigit:]]+,v1,andes/ax45,core
> +0x0-0x0-0x0,v1,qemu/virt,core
> +0x0-0x2a-0x0,v1,qemu/virt,core

[Severity: Medium]
The commit message explicitly states that it adds a mapfile entry for
0x0-0x0-0x0, but it looks like a second entry for 0x0-0x2a-0x0 was also
included here. Should this additional entry be documented in the commit
message, or was it included by mistake?

> diff --git a/tools/perf/pmu-events/arch/riscv/qemu/virt/events.json b/too=
ls/perf/pmu-events/arch/riscv/qemu/virt/events.json
> new file mode 100644
> --- /dev/null
> +++ b/tools/perf/pmu-events/arch/riscv/qemu/virt/events.json
> @@ -0,0 +1,26 @@
> +[
> +  {
> +    "EventName": "fake-json-any",

[Severity: Medium]
Since the commit subject explicitly marks this as a test that should not be
upstreamed, and it populates the PMU event list with artificial hardware
events, was this patch included in the series by accident?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-counter_de=
legation-v8-0-7909f863a645@meta.com?part=3D22

