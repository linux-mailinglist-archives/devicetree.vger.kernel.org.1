Return-Path: <devicetree+bounces-323288-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jSe+CHUeT2pgawIAu9opvQ
	(envelope-from <devicetree+bounces-323288-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 06:07:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 930D872C826
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 06:07:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NKtVy74k;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323288-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323288-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 15E113011589
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 04:06:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AC3B32E696;
	Thu,  9 Jul 2026 04:06:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6951332B10F;
	Thu,  9 Jul 2026 04:06:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783569974; cv=none; b=JKJaV28dOm+USg3Kk7u2PRddG6PNk+tcrwHnhnyUZpjFZq9yBFm8fVcqDsOFfMllEDeJfxyex/1aI69vB6lHqSPHH6t1DI8nAzgKrnIANHTTjrqJT09LvX27mgm/a+19QVAGlvUABNUi75iEudCgyXpp6Vrm35JLHjJsKbZhRXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783569974; c=relaxed/simple;
	bh=VtSV4clyRnnHmgg4iRmZUMNjsoYToMZ7rYX/1Hbg6PY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DVy9bCvoiS2coRfOchAGmmG+A6+5TQQ+kX+cdYpW5KvBMTAHZz/f0Goe0XL19RGWQbCCIDGoWOEwCjA6Hth16JWxhsaVgiLS8XvDZ54fMXtoAdoEAbHW7Dhs3li0NqvoHEKYLf9Gds7hzN/83TSyXgI9BL234NqWrjVhiRjJH0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKtVy74k; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B0381F000E9;
	Thu,  9 Jul 2026 04:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783569973;
	bh=VtSV4clyRnnHmgg4iRmZUMNjsoYToMZ7rYX/1Hbg6PY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NKtVy74kwZ9/AR9RNaHNycm6Nh1IxXD/2IrTAwAy2dsJjRTBtlUn2htkUlo28YTic
	 KYA2L3uUHVEgj4BGzfchLF1a2VH3jqFL5MqSwOWbd8EGruLiIxcOVzuBTtkOoZr/Gi
	 /el1CvuIn286sHRRnLcAQWF3M4l9VFxSQkIFA4pIlMwx4dcY9RB0kYfPh/AB5PbO9E
	 lazcYJK5aHk6W+7IPd5PGqiEe/I0G7Z6EJFlbiGaF1RL1Cw1aUOm/ivnJLwtszcz4t
	 +bpDhI8NvVuaiRpseJHSmLv0rG2hit3Ew5C9dQHp5WjRPIuGhNKnT0hwr2ujO5j8Q9
	 9FwjLklcws4rQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 4/6] dt-bindings: PCI: snps,dw-pcie: Add msi-parent
 for MSI handle check
Reply-To: sashiko-reviews@lists.linux.dev
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org
In-Reply-To: <20260709040027.958400-5-inochiama@gmail.com>
References: <20260709040027.958400-1-inochiama@gmail.com>
 <20260709040027.958400-5-inochiama@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 04:06:12 +0000
Message-Id: <20260709040612.9B0381F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:inochiama@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-323288-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 930D872C826

> The IMSIC device on RISC-V based system does not require ID
> remapping for MSI. So this device only needs "msi-parent"
> property for IMSIC-based SoC, and the "msi-map" is not a
> necessary property.
>=20
> Add new condition for MSI handling on IMSIC based SoC.
>=20
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709040027.9584=
00-1-inochiama@gmail.com?part=3D4


