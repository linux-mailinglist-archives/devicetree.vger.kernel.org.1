Return-Path: <devicetree+bounces-322883-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NdjzLgRgTmoqLgIAu9opvQ
	(envelope-from <devicetree+bounces-322883-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 16:34:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 147047276E6
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 16:34:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dn37d7+4;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322883-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-322883-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 40BB0301A74D
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 14:21:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB159478E34;
	Wed,  8 Jul 2026 14:20:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C4D4A2E20;
	Wed,  8 Jul 2026 14:20:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783520424; cv=none; b=dAYFvCl5qEjM3OfjExRfoJbeUx0+VMfnOUhshrhl4BmYgiYAdJtQqT2I7kRodJdc/hYBDHJ2f7N+ZnwD3rCD9LRpeka8Hqk59BrjdBsEaC8Id6R6ndcevOwLIuxfwufyIhmJwKPbpKyJO6dwKz5gadu0Q7yc6C65Z7fWl6uTYjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783520424; c=relaxed/simple;
	bh=VTNXFxmADtunm95Bl35OmYPHz/4+srrzH8x2hzNgwe8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nm78QSqa+OhbrMz5UYB9y7ZaNgFm2db9UcRNjtw87B9KsUzhYkeKV4CqeFwaPhxU8DFNhHdM9bylYrFMZyD0D2suKE9ar0keLNYcX2+skOVztRDe1RtoykY8Y/EMUpXGwKRUV3T79mA8yiVDgYOLorkX4H46h6Ticb5uK3WYrkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dn37d7+4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0E941F00A3D;
	Wed,  8 Jul 2026 14:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783520423;
	bh=VTNXFxmADtunm95Bl35OmYPHz/4+srrzH8x2hzNgwe8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dn37d7+4VTYXLaLr64gO0WgrqZNI5qdrGlZhQTdmjTdo6bGo7EsezsUhq3IHNWbCS
	 qRFFdEHs8cEx4wUXPnbKBtmaP6wKi3idSqT5J4aKn2wi3522u00JqV9EneWVXRrOap
	 HbrS/QCzEiUF2YziqKToiGxL3to93U/Op0M4FRxgszf23b0iCcY7xaDjPjIVqlzuJf
	 YKqaJn4/XavN2DYd19QaPZVLiZtQMJS+saMxHF0J0zD+18NxiyOtVtfXbXy2sTl4gU
	 m1dOMtASl5O4wLcKs0w5zPF0iJxZMFTNLXUHYuTMkjsnfgS8uq+C5jZIGDoM1Ipkoe
	 zaQ07gCC4GqHg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 05/10] ACPI: APEI: GHES: move vendor record helpers
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ahmed Tiba" <ahmed.tiba@arm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, linux-cxl@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-5-8b3a85216cef@arm.com>
References: <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-0-8b3a85216cef@arm.com>
 <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-5-8b3a85216cef@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 14:20:22 +0000
Message-Id: <20260708142022.B0E941F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322883-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ahmed.tiba@arm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-pci@vger.kernel.org,m:linux-cxl@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 147047276E6

> Shift the vendor record workqueue helpers into ghes_cper.c so both GHES
> and future DT-based providers can use the same implementation. The change
> is mechanical and keeps the notifier behavior identical.
>=20
> Signed-off-by: Ahmed Tiba <ahmed.tiba@arm.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-topics-ahm=
tib01-ras_ffh_arm_internal_review-v7-0-8b3a85216cef@arm.com?part=3D5


