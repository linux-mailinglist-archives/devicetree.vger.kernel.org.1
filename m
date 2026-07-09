Return-Path: <devicetree+bounces-323622-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ExVLMqB9T2pDiAIAu9opvQ
	(envelope-from <devicetree+bounces-323622-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:53:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EED472FE82
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:53:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Ct+yQB0a;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323622-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323622-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 810F330848A6
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 10:49:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C4D340BCD8;
	Thu,  9 Jul 2026 10:49:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78373F411F;
	Thu,  9 Jul 2026 10:49:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783594144; cv=none; b=AHKQrf9g1H6G6RmGcdf+BNRYDAsDnWSVq4NIgEnLwpfD2kxlDQRLOSGJO/T9XCsrtyDaNOw2IsXh4M+0B4t3S0/nw9kQuCQMdP8jDrn3hZWyTNpwaHdh8mvp4rtgHvXPQiJnupSUZDFW+vP8LZNgj6KIbFVJY4spEMsz7BM6tD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783594144; c=relaxed/simple;
	bh=YI6tWy9xpqSyTmSO6IJ8KTBuUwfWNf2qe1Uej1Bwe68=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uwFGzDWquuvF/KFRs8y4mrc41+70Sqk3TvADjgebWMnJusgXW9uBhePipfm8NgvO0TsDQwxuviApy0GfAnjXmXhTZeFDtNrmJj299FJHtANxL0J97pK9VXKxRQ0xipoHtwAYdkQ1rvgQA8Y1wVwi0Oe67yyziOvRUIWHWDWu+0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ct+yQB0a; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 001AF1F000E9;
	Thu,  9 Jul 2026 10:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783594143;
	bh=YI6tWy9xpqSyTmSO6IJ8KTBuUwfWNf2qe1Uej1Bwe68=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ct+yQB0a1UV8iVjxlmTiIREpUY1gJ9vujMTbxodlsEMT3ogtkyeSaVCoecZqmVXHL
	 d2cTiuqdbtiXcusCvVQVJKqSAyQmvHqBgn8Gc+mrIrmxD+H7kUGmYgOm90buDMARTf
	 LEKAvGakwpHEa3XmqrgmDQlm0hC0SpucSmdqvgjYDdXA4WZMQIYkHbZKttu2uAKdP2
	 uylxyjCodvlDnPXeCzOE2Bks7V5Fv4onZXOFgR2YKdY0erhyAh9Q6g1bhZLhnMflB8
	 OEZOzBdpZJQUT8nCN9aOS63XJNgxedsbfbAOy3w3Sn3q3NW2e3K0UiFDVid+tXOfUD
	 EpF/hbCukJzkQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V5 2/4] PCI: imx6: Add skip_pwrctrl_off flag support
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U2hlcnJ5IFN1biAoT1NTKQ==?= <sherry.sun@oss.nxp.com>
Cc: linux-pci@vger.kernel.org, robh@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org
In-Reply-To: <20260709101555.3034853-3-sherry.sun@oss.nxp.com>
References: <20260709101555.3034853-1-sherry.sun@oss.nxp.com>
 <20260709101555.3034853-3-sherry.sun@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 10:49:02 +0000
Message-Id: <20260709104903.001AF1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	TO_EXCESS_BASE64(1.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323622-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:sherry.sun@oss.nxp.com,m:linux-pci@vger.kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1EED472FE82

> From: Sherry Sun <sherry.sun@nxp.com>
>=20
> Use dw_pcie_rp::skip_pwrctrl_off to avoid powering off devices during
> suspend to preserve wakeup capability of the devices and also not to
> power on the devices in the init path.
>=20
> This allows controller power-off to be skipped when some devices (e.g.
> M.2 Key E cards without auxiliary power) need to support PCIe L2 link
> state and wake-up mechanisms.
>=20
> Signed-off-by: Sherry Sun <sherry.sun@nxp.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709101555.3034=
853-1-sherry.sun@oss.nxp.com?part=3D2


