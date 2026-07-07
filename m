Return-Path: <devicetree+bounces-322040-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5jK/C0v/TGrotAEAu9opvQ
	(envelope-from <devicetree+bounces-322040-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:29:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AC95771BE9A
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:29:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Tj89kf+1;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322040-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322040-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AC35830BEBC6
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 13:24:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DD4741A790;
	Tue,  7 Jul 2026 13:24:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2A0414DC1;
	Tue,  7 Jul 2026 13:24:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783430692; cv=none; b=pE7vEY/JveMZDzv01rJHDY059Fwz4Iz1zfdFhMF8mHFBhoqm447Fm3tPPXLyVWUX4ZAle5KbJ1AFPm/AVK7Et1CINCikvE02jvNmrXq1xaEy6aNsuqQGNqAyFk3KwNY4IVu8LGZ1lwWvjB8WnNCtXVnr5iQ++bLIbtT0BXj2Aug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783430692; c=relaxed/simple;
	bh=f8K40v15474Lyj6aQ2owDQdvjNay3Tkw5dMYAJ7/Um4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kW8DiuUiaOEddk4Vbwt9yjz1XeEuRHFJzqcF3RpM702m5CcBQ3tKMLE6xv5IKZzBkM7FstwO3BUfHxkTBWaSZGLS+t4bMSUKnx14wFsyc95fYjLOfT2HXbJDqkXhEKI8p6+mFkezj5GkRvRcZ4yW/Dc7QM6eZHHP011YqUs4lKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tj89kf+1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 872321F00A3F;
	Tue,  7 Jul 2026 13:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783430691;
	bh=f8K40v15474Lyj6aQ2owDQdvjNay3Tkw5dMYAJ7/Um4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Tj89kf+1bv1fkc2o0jtLyy95Ch2odKt2Odu9Ba/2bxl9Bc/YKx05mZy70dzDq3BW4
	 9mnz1BZbKTluES9tQa1MAmvB+e4K+wEJLWtqR29yRxK7yJdEadZpM6u7eaMD7POEtP
	 E4PMgl6aBpV1U4ISxZcCTJmBXRFXGwwZiH1fuScFJXHSn4m5BAiBfNC2lsemaEUQvj
	 mMI26UL8xSs6DeWhHyRWa+GL5RQTYXD/8rBpGQvgEI8wSiw9RFnvatAtgHc+YP/50O
	 +/kY7FoRrwSg7F6cZN1PvHD35U399rV+dZkSLiYFHxHbWo/5QuBOLhQmiICTPAByAT
	 BfVhle2MNco5w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 04/20] driver core: platform: provide
 platform_device_set_of_node_from_dev()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, imx@lists.linux.dev, mfd@lists.linux.dev, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, lee@kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260706-pdev-fwnode-ref-v3-4-1ff028e33779@oss.qualcomm.com>
References: <20260706-pdev-fwnode-ref-v3-0-1ff028e33779@oss.qualcomm.com>
 <20260706-pdev-fwnode-ref-v3-4-1ff028e33779@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 13:24:50 +0000
Message-Id: <20260707132450.872321F00A3F@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322040-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:imx@lists.linux.dev,m:mfd@lists.linux.dev,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:lee@kernel.org,m:Frank.Li@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,smtp.kernel.org:mid,intel.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AC95771BE9A

> Provide a platform-specific variant of device_set_of_node_from_dev(). In
> addition to bumping the reference count of the OF node being assigned,
> it also assigns the fwnode of the platform device.
>=20
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-pdev-fwnod=
e-ref-v3-0-1ff028e33779@oss.qualcomm.com?part=3D4


