Return-Path: <devicetree+bounces-322039-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uEEwNjr/TGrhtAEAu9opvQ
	(envelope-from <devicetree+bounces-322039-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:29:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6778C71BE8D
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:29:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=koed4iua;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322039-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-322039-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 983783081D37
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 13:24:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B58A4189CF;
	Tue,  7 Jul 2026 13:24:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B507414DD3;
	Tue,  7 Jul 2026 13:24:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783430691; cv=none; b=Sej4ln5Km2I3UjlzdZ1qfdzP/qYL09kVDmsGXg56tHU2caB4DbPOs0yqksryvjLnc8BBockkbw7GbmmAZlY0UFUS6UiAaDMLGB66Z0Em0OpM0WN1nogId72kwULPRUIG1LUxIydFAjzK6QsM8LWueTHtoH8xTgBrKBAstDKnOW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783430691; c=relaxed/simple;
	bh=GlqHFrjdlNIErYROMXfKwasPGQ6xm8o4zGv6nz9nAoc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=KiCThlXpFkixZRXoVxp08Ve3pBaGvy2dyImA90z72dqETVXIizMUHGDlvg4yIMLFz0jk1bkmp3eTQOX0Zc8wlSnJbtVhEngWxBX5/y4MmmfI64StejnA2bJOYg5cEQxCOKjlWDwO41Uh8a8hk+criOQzERlTzo5iCnxRX0DRfUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koed4iua; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD8451F000E9;
	Tue,  7 Jul 2026 13:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783430690;
	bh=GlqHFrjdlNIErYROMXfKwasPGQ6xm8o4zGv6nz9nAoc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=koed4iuakklkKmsiiqhNDsLCOwb/Quq11U+L37U6sTMJfSCom3+qSW7/d9xGprUhc
	 ZK7DvEai/7MvcIkAtYPqC3zc4xuiVMW/qCIkChly7j2fa7LAkhJPc+IKtNgImpj0L+
	 MsEiG9jNTK9pEAjmmTZwYd3c75EqM4Yacbq4P4NCMCHn83l2fUfSOiklpFuVc39KWA
	 wnBROUs4U6K5V//0l4oGrgtJ9jUwynEU0pZ+8uFUTZg0nyW8kGuup0C/Fa7+nrCM54
	 EL89VoCPmkoJPwwJJTbuSH9B10aS7qZEvUM89471qTHse4iSPRbMbPBd4UFCxeESmn
	 3Yd7W6GSxzFsw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 03/20] driver core: platform: provide
 platform_device_set_fwnode()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: imx@lists.linux.dev, Frank.Li@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, mfd@lists.linux.dev, conor+dt@kernel.org, devicetree@vger.kernel.org, lee@kernel.org
In-Reply-To: <20260706-pdev-fwnode-ref-v3-3-1ff028e33779@oss.qualcomm.com>
References: <20260706-pdev-fwnode-ref-v3-0-1ff028e33779@oss.qualcomm.com>
 <20260706-pdev-fwnode-ref-v3-3-1ff028e33779@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 13:24:49 +0000
Message-Id: <20260707132449.AD8451F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322039-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:mfd@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:lee@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,qualcomm.com:email,vger.kernel.org:from_smtp,intel.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6778C71BE8D

> Provide a helper function encapsulating the logic of assigning firmware
> nodes to platform devices created with platform_device_alloc(). Make the
> kerneldoc state that this is the proper interface for assigning firmware
> nodes to dynamically allocated platform devices. This will allow us to
> switch to counting the references of the device's firmware nodes in the
> future, not only the OF nodes.
>=20
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-pdev-fwnod=
e-ref-v3-0-1ff028e33779@oss.qualcomm.com?part=3D3


