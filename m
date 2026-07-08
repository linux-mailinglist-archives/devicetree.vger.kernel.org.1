Return-Path: <devicetree+bounces-322873-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IMy7AmFeTmqkLQIAu9opvQ
	(envelope-from <devicetree+bounces-322873-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 16:27:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F5D72754E
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 16:27:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Kfejp4Db;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322873-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322873-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 38E69300FC79
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 14:18:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B354D437877;
	Wed,  8 Jul 2026 14:18:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB441A6822;
	Wed,  8 Jul 2026 14:18:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783520309; cv=none; b=ZapSwJCmyEZl8LE6NSUlf4BgmByszAn1QWgC5u7PvCfetw242HiolnrRkEDhtDRqQxMzjhp+3isl4NpDYxTsWMVmnEzckyrPtNjjcAFjJ08iuqzpTGjZxIa7qkEffdlnPj8ZSWMcAoprk3QgAdkDk5JbjDdD+DaTpvuzIYNa61w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783520309; c=relaxed/simple;
	bh=eQSNEY71hP0uIjOga+Q4h7FqRxWEjoFD5SLiKJJUUN4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PyFzhmVN7TrdG/5sM9nL4luxqN2ssA4URI1t0HLLrNQv4WPkZxK0x3RO5ZOiAbZueOVCtPhSYkCEkV5ntFWu8xyUEapRCFN9WBhXIJOJAYTjVtQOtdQ+Te1g/6Zc/2GtvIRP7nWgKoeJYhLKFiUAagrCTlZI4dahcLwekIheORU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kfejp4Db; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFDF61F000E9;
	Wed,  8 Jul 2026 14:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783520308;
	bh=BBwTfe3mtserabrJ4Uvf+Lg5B1k6V5Vwa5nwi5JOQxk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Kfejp4DbF2pkWN6TmNJtdL3BAg4yhmmEwq8H7PgralHE/nBwCJZIw/8p5RP+UmCR9
	 f2d10vgazxMx2gpAS+D0fHSUISP4llDiJ5YJueQp67uARq5F4pATf57/Fr3er+IWDq
	 v0OoNpAuiJ0GyDA/GHcPH5ch59lCUumKmRSKN5ufbr3ni/pHygBJhOinUzKHCVcYPh
	 grYNNGyULihWPZJblya8Zow0CuMPRzT6tHUapy/l4ZFWWi//rSHB3CoiCfgg8vnkgi
	 1udlDsWTdTcdB6I/Oi4V5XII97tR3YtNNIMxLtE2qKUxmBk83DPVjonYfTCdMEnh6y
	 +8pbdgNcJ4U4Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 03/10] ACPI: APEI: GHES: move GHESv2 ack and alloc
 helpers
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ahmed Tiba" <ahmed.tiba@arm.com>
Cc: robh@kernel.org, linux-cxl@vger.kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-3-8b3a85216cef@arm.com>
References: <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-0-8b3a85216cef@arm.com>
 <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-3-8b3a85216cef@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 14:18:26 +0000
Message-Id: <20260708141827.BFDF61F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322873-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ahmed.tiba@arm.com,m:robh@kernel.org,m:linux-cxl@vger.kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 93F5D72754E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The EDAC driver initializes and exits by iterating over the `ghes_=
devs` linked list using `list_for_each_entry_safe()`, but fails to acquire =
the protective `ghes_devs_mutex`. Concurrent modification of this list by `=
ghes_probe()` or `ghes_remove()` (e.g., triggered via sysfs bind/unbind) wi=
ll cause list corruption and use-after-free. This problem wasn't introduced=
 by this patch, but pre-existed in the codebase.
--

--- Patch [3]: [PATCH v7 03/10] ACPI: APEI: GHES: move GHESv2 ack and alloc=
 helpers ---
commit bf19da8163cfc99677668eb5a9ba4a2f8cc72b57
Author: Ahmed Tiba <ahmed.tiba@arm.com>

ACPI: APEI: GHES: move GHESv2 ack and alloc helpers

This commit moves the GHESv2 acknowledgment and error-source allocation
helpers from ghes.c into ghes_cper.c. The logic is kept unchanged while
making the helpers reusable.

> diff --git a/drivers/acpi/apei/ghes.c b/drivers/acpi/apei/ghes.c
> index f74fd5de34cc5..bda535224422d 100644
> --- a/drivers/acpi/apei/ghes.c
> +++ b/drivers/acpi/apei/ghes.c

[Severity: High]
This isn't a bug introduced by this patch, but while reviewing the GHES
codebase, I noticed a potential locking omission involving the ghes_devs
list.

Does the EDAC driver need to hold ghes_devs_mutex during initialization
and teardown?

Looking at drivers/edac/ghes_edac.c, ghes_edac_init() and ghes_edac_exit()
traverse the ghes_devs list locklessly:

drivers/edac/ghes_edac.c:ghes_edac_init() {
    ...
    list_for_each_entry_safe(g, g_tmp, ghes_devs, elist) {
        ghes_edac_register(g->dev);
    }
    ...
}

However, in drivers/acpi/apei/ghes.c, ghes_remove() deletes entries from
this list under the mutex:

drivers/acpi/apei/ghes.c:ghes_remove() {
    ...
    mutex_lock(&ghes_devs_mutex);
    list_del(&ghes->elist);
    mutex_unlock(&ghes_devs_mutex);
    ...
}

Could concurrent execution of module loading/unloading (e.g., modprobe
ghes_edac) and GHES platform device bind/unbind via sysfs cause linked
list corruption or a use-after-free?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-topics-ahm=
tib01-ras_ffh_arm_internal_review-v7-0-8b3a85216cef@arm.com?part=3D3

