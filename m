Return-Path: <devicetree+bounces-313041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fYFkOSKrMmrQ3QUAu9opvQ
	(envelope-from <devicetree+bounces-313041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:11:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4648D69A704
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:11:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dkYUgmRR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313041-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313041-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DFE37307EA20
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 14:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F4BF421F17;
	Wed, 17 Jun 2026 14:09:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416522D12EC;
	Wed, 17 Jun 2026 14:09:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781705350; cv=none; b=FpBrIuvlI7EIuhllgYtqWstPLCunp1iGEhWL1rEVMCwCNJT+HNk5DdluivJzaTN3Yd6plCmjuFglzwmbaS7vYRgeB9NEn6CbE4ifyJMgai2e5Vb7jAh/c0wIAgkhNZ+1WnkhNVNBrY4BPvTc3OD6WkZzKY9C+HIld9HwXkp5hXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781705350; c=relaxed/simple;
	bh=pElGO8DdnWVpirRLkNCQR3lp7A6U4z0APfRAFyJC7HE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fNNNdu7paLD2vqwdlojFZivZ8h4I0KtBKeHhyCDHAhRUj+93PCIJgfU4uCE910VAkqvntvNkBmbDpL6qVGHxokDlfvdEQ7f+5+5nMEcOHKHk91r6n5s4frt36dFaPJGxUPT9CCDQzxmh9diH5okZv0SpOKcQj4jOWb/6hjrg00U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkYUgmRR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FEA81F000E9;
	Wed, 17 Jun 2026 14:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781705348;
	bh=ojOXwpqpQjyswucugg131KVRIK8IRPfBz6xWmqwJKps=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dkYUgmRRTc382uGxguAYxa0xkPCHbVi0Ri5uENjbyLSkqkrvl9j9qnw/HijU9TWfl
	 5/owiIcRNA9pOw475yd5fKmNK/O9AZCsfokxn0ni5JonVZDzVUH/SGfgQQEWwP0tGz
	 DKyjBh4Hi1M9mhWTTMH+0dPoSv29bMldomQLfEd7DmH4LG8GDf6i1UQdgaQZ6Cstvi
	 KHltgGswRjQZTc2mzKrCrzgQffIGnuEGdhNvU75cen4u4pCVGLmPAC68EtVlVet+nn
	 O+BJXLutL8Ula349sq4kOUhftgi9Mr+fQzpWizvC1ka9BdzC7g3daXJhvX6VCzKt8B
	 5LC/zyq9qvhGg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 01/10] ACPI: APEI: GHES: share macros via a private
 header
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ahmed Tiba" <ahmed.tiba@arm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, linux-cxl@vger.kernel.org
In-Reply-To: <20260617-topics-ahmtib01-ras_ffh_arm_internal_review-v6-1-91f725174aa0@arm.com>
References: <20260617-topics-ahmtib01-ras_ffh_arm_internal_review-v6-0-91f725174aa0@arm.com>
 <20260617-topics-ahmtib01-ras_ffh_arm_internal_review-v6-1-91f725174aa0@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 14:09:08 +0000
Message-Id: <20260617140908.9FEA81F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313041-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,arm.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ahmed.tiba@arm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-cxl@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4648D69A704

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing irq_work_sync() during GHES device unbind leads to a Use-A=
fter-Free of `struct ghes`.
--

commit e704c2dde2d2667b464a2f5a2c5c45ed826cc539
Author: Ahmed Tiba <ahmed.tiba@arm.com>

ACPI: APEI: GHES: share macros via a private header

This commit moves CPER helper macros and function prototypes out of
ghes.c and into a private header. This allows these helpers to be
shared with other firmware-first error sources.

> diff --git a/drivers/acpi/apei/ghes.c b/drivers/acpi/apei/ghes.c
> index 3236a3ce79d6b..4f67f46410c46 100644
> --- a/drivers/acpi/apei/ghes.c
> +++ b/drivers/acpi/apei/ghes.c
[ ... ]
> @@ -313,7 +255,7 @@ static struct ghes *ghes_new(struct acpi_hest_generic=
 *generic)
>  	return ERR_PTR(rc);
>  }
> =20
> -static void ghes_fini(struct ghes *ghes)
> +void ghes_fini(struct ghes *ghes)
>  {

[Severity: High]
This is a pre-existing issue, but does ghes_remove() need to call
irq_work_sync() before freeing the ghes structure to prevent a
use-after-free?

When unbinding a GHES device, ghes_remove() unregisters the error
notification handlers and calls synchronize_rcu(). While this ensures no new
handlers will execute, it does not wait for any already-scheduled irq_work
to complete:

drivers/acpi/apei/ghes.c:ghes_remove() {
	...
	ghes_fini(ghes);
	...
	kfree(ghes);
}

If irq_work_queue(&ghes_proc_irq_work) was called just before the handler w=
as
unregistered, the work remains pending. When the asynchronous work runs, it
dequeues the node and dereferences the freed ghes pointer:

drivers/acpi/apei/ghes.c:ghes_proc_in_irq() {
	...
	estatus_node =3D llist_entry(llnode, struct ghes_estatus_node, llnode);
	estatus =3D GHES_ESTATUS_FROM_NODE(estatus_node);
	...
	ghes_do_proc(estatus_node->ghes, estatus);
}

Could this lead to a use-after-free when ghes_do_proc() accesses ghes->dev
and ghes->generic?

>  	kfree(ghes->estatus);
>  	apei_unmap_generic_address(&ghes->generic->error_status_address);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617-topics-ahm=
tib01-ras_ffh_arm_internal_review-v6-0-91f725174aa0@arm.com?part=3D1

