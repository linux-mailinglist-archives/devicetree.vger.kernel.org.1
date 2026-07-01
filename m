Return-Path: <devicetree+bounces-318390-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OFr2Htf4RGo64QoAu9opvQ
	(envelope-from <devicetree+bounces-318390-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:24:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E996ECC59
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:24:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=O8QJfYJE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318390-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318390-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2B9D03106CFA
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 11:11:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B97E42EEA7;
	Wed,  1 Jul 2026 11:11:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E55A53EFD09;
	Wed,  1 Jul 2026 11:10:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782904260; cv=none; b=sgJM+c4tESFRS4Z2oZQP/Y/4RGNpmSh6jAN3PGufBONT3y3YiyMHncO1qu/dPFP0MJQjZWMwd9g8hI4C/io/72/jIC46iC3ntghIoBP6iSOcdNrZBYW2uVwewHHcJO9T7MMOlImZV8TC6cSio1POz/Ie9JClStZFbkuh+jbLsKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782904260; c=relaxed/simple;
	bh=VNQiKyq4HgcqP/QWG4QLn7djfhmUAouDeO/uc5ZopT8=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=apNM00qwpFz2RqQWm70ljo13NLvniToolStKyvTuP9Hmq+4q053YSUwzXpJx40+2x2mw2bB1FQaPO4Q1m1k/W9X1p5egJd6PIwdooFkRthjl0Be03oPqpQNjC3nUofGmcn0ypD4xRUUQtM2s6M8okyqVbxrcXEvAJdl5Muz+vSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8QJfYJE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BA9A1F00ADF;
	Wed,  1 Jul 2026 11:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782904258;
	bh=VNQiKyq4HgcqP/QWG4QLn7djfhmUAouDeO/uc5ZopT8=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=O8QJfYJEJsU5wAFNDvnBkGMu/Gh+igh3b4BvDJaSGrzB+ptVsmnFrlZipXIEP7N5g
	 3103CaNtEMO+eJSWI5ATD9v8cv5HXXG/tVWbvcxN5jjNsp1dC4QMoGIC6urtV89sKR
	 dQGMZ+iJd/YG+lGgnnvWl56i+kh/l/V+02OOpoFub4Mk/s4Q8V2Nm7kJVh1d1pyOjq
	 h8Ic5B9/c+AwH5WRWrpnCjPzxnxy6G/39gHCQ8q6OOTMH5vhQ6aW7ebGIVJxScF6L0
	 ZyqmVRuZrJ20ND8M7IuHSfUyh+w6GQkqaZSsI7ZJW6H/xUre4lDfcfC33WtfrVY1Rh
	 uDJkFHGw96b8g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V5 2/7] arm: dts: imx6sx-sdb: Add power supply property
 to Root Port node
Reply-To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260701105234.198987-3-sherry.sun@oss.nxp.com>
References: <20260701105234.198987-1-sherry.sun@oss.nxp.com>
 <20260701105234.198987-3-sherry.sun@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 11:10:57 +0000
Message-Id: <20260701111058.2BA9A1F00ADF@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_TO(2.00)[];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318390-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,nxp.com:email,smtp.kernel.org:mid];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:linux-pci@vger.kernel.org,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 53E996ECC59

> From: Sherry Sun <sherry.sun@nxp.com>
>=20
> Add the power supply property to the Root Port child node to support the
> new PCI pwrctrl framework.
>=20
> Legacy power supply property is retained for backward compatibility with
> existing kernels. New device trees should specify power supply at the
> Root Port level to utilize the pwrctrl framework.
>=20
> Signed-off-by: Sherry Sun <sherry.sun@nxp.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701105234.1989=
87-1-sherry.sun@oss.nxp.com?part=3D2


