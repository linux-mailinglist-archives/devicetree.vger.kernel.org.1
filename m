Return-Path: <devicetree+bounces-306671-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z1B6KXIsIWpXAAEAu9opvQ
	(envelope-from <devicetree+bounces-306671-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:42:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AFD63DB3A
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:42:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ARlnr6Qg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306671-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-306671-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D53723009F27
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 07:42:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7E143988F9;
	Thu,  4 Jun 2026 07:42:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41C92DEA7B
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 07:42:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780558956; cv=none; b=SKQALDCBaF888QWamHU/qcFApXeZkUEiWMBhgYlGwkqZvgaCqmLLDjEZy8xjsvqhEWSn/j7cPFATxwC9Jcb1uZIW2yIlQZ8R8cuFWnqOXCudPHjF2pHjSDBpldOWzyEksS8pDRXBFLaGKzHM7FMuHh6gZRXJLLqAjkV62WowHu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780558956; c=relaxed/simple;
	bh=43JHRMPrE8RExZMDKaJc5/rpSNlgegvQLCpdc2buwiY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aekDKcBYpdap6jUkzI4Ap2unfnywU1BoWRXRtTur39sMvSfHOyWQT/K9JE9OK7pKXrnNwqT1xd+UtAg0BhFN6tQf7jjg6unsZWCc4a5aVQKSkB2AJGw/a4IWV2YnUtguSA7XApnYXiBAr0vMe9eecTVAT9TnpnlqEk1E232WEt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARlnr6Qg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 890D01F0089C
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 07:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780558955;
	bh=43JHRMPrE8RExZMDKaJc5/rpSNlgegvQLCpdc2buwiY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=ARlnr6QgxV0f24N7f+XibJR5NUGfSP5Et5uHIOXcTTB434jnPSf7qDIm93yW9x4A6
	 hnp8zJj2WPekGIH5U/DlFUaPl6zqpSKwt/R4dRr6J87ZYKIWN5QhuNcmBjMnYi5N4q
	 dfyTqPPGGtiVMZr/VfYA1NAl7dKGyx5/AvFowlgnS8u+kDSW8DvvsUJtqnqlTejS1M
	 UcwVfytr7NZJ3KV6RDaGq18umQt2Uvg99qEChojK9bTC37Gi6UOqaW8Zm1aMhnD6IS
	 GUg7qI8dPSs8IBvsge9lbZkvj2ZQOTrbQ8mEuhxEEiJptVAOil9evPUV33RWzTtwlR
	 bqV7JBI1rE8KA==
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5aa68d9dc18so358544e87.2
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 00:42:35 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8Ql3/NhQm7ETYRIywTQN03f7s8SlxxzjNMfGe3Dv9QUAm3//Q0WjPYcOL1VNMxddff8vwvag5NV+Rl@vger.kernel.org
X-Gm-Message-State: AOJu0YzCQWyIgYdWCE1WpMU7FQyIFoD8kzANk8ooMPfWLMvajWq90FvQ
	Oj4LiEvNwzjm3HO8VQ6axhz8hzhl5FJ/spESe887cKOqeSvg99TMJUmV3Gj8nWxo0aCPaj8SXaY
	vvQBv+l8gBxBcftytZfr8UxEVc7NwEuA=
X-Received: by 2002:a05:6512:33c5:b0:5aa:6a2b:d456 with SMTP id
 2adb3069b0e04-5aa7c0fed0bmr2286914e87.27.1780558954293; Thu, 04 Jun 2026
 00:42:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260603-ks8995-to-ksz8-v4-1-e15149ef21e7@kernel.org> <20260603231122.905771F00893@smtp.kernel.org>
In-Reply-To: <20260603231122.905771F00893@smtp.kernel.org>
From: Linus Walleij <linusw@kernel.org>
Date: Thu, 4 Jun 2026 09:42:20 +0200
X-Gmail-Original-Message-ID: <CAD++jLkV4yb+e8+q+SfMFn6xh9+-6cdcHQ4yH_eBEj1LFMYNoA@mail.gmail.com>
X-Gm-Features: AVVi8CddqEUNmdHCizuLNlST0WT8-kHrjy8EucFRF_4NySw4BhHCEs0-6rW5PHs
Message-ID: <CAD++jLkV4yb+e8+q+SfMFn6xh9+-6cdcHQ4yH_eBEj1LFMYNoA@mail.gmail.com>
Subject: Re: [PATCH net-next v4 1/5] net: dsa: microchip: Add fallback Micrel compatibles
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306671-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 10AFD63DB3A

On Thu, Jun 4, 2026 at 1:11=E2=80=AFAM <sashiko-bot@kernel.org> wrote:

> Thank you for your contribution! Sashiko AI review found 2 potential issu=
e(s) to consider:
> - [High] The Kconfig dependency `depends on !NET_DSA_MICROCHIP_KSZ_SPI` f=
ails to prevent both drivers from being compiled as modules simultaneously,=
 leaving the probe race unresolved.
> - [High] Enforcing blanket mutual exclusion entirely disables the KS8995 =
driver when KSZ_SPI is enabled, breaking support for legacy `micrel,ks8995`=
 (KS8995MA) hardware.

We discussed this before.

Putting !NET_DSA_MICROCHIP_KSZ_SPI on the NET_DSA_KS8995
is the right thing to do, trying to put it on both sides would create
a circular dependency.

Sashiko needs to learn Kconfig properly, not that humans are good
at it either...

Linus Walleij

