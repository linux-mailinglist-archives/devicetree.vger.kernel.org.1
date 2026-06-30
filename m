Return-Path: <devicetree+bounces-317746-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kaLEMrq5Q2p+fwoAu9opvQ
	(envelope-from <devicetree+bounces-317746-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:42:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7008C6E44ED
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:42:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=O8MgRWRl;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317746-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317746-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B4486301CF4D
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:40:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5387A3A4F4B;
	Tue, 30 Jun 2026 12:40:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9E240BCD5;
	Tue, 30 Jun 2026 12:40:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782823226; cv=none; b=cWjMzNydWp8oRrT7lVguavzpuHTV4jkAefaBjvSpxCpH/+4ilNxjA2SYSJfhLfMmFzwbKz0j9WTNMGCTW7vsay6iAoarcttBK8RcANsodTZOeiTrGJu7s6jrqzx+FgcdjEPhPpddh92tXYRAREHcH0gNLjP9ftSVntsyYY9gDek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782823226; c=relaxed/simple;
	bh=BZDn9zyhiAJotKucvTyzRFglPuTMZiR6GF5jquk1YIU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=H6MozSEGuMO6hbQb6AtXZ+F40GUHxVcqh5F563YmxTdHrgzfKhlpdb30DC8dJALFsYeboLdtEVVeWxbral9p0LzWVFdGNb2UD/BWsFvQOeLGd+CDNDpP2dZBTF9dwcMn7V+gBaS6Ke9W13W7OCLzndIUQSfQ2vS3sldDbSlD6cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8MgRWRl; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7F391F00A3A;
	Tue, 30 Jun 2026 12:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782823225;
	bh=BZDn9zyhiAJotKucvTyzRFglPuTMZiR6GF5jquk1YIU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=O8MgRWRlM7TURdKX9dsYCFwnrzKbKGN4zl9zy/P3fqFj2FEGG4ruZYuRnJC5XLbc8
	 H9htLP7mqxikcDlwylWoDMnbNTC/Ats8f5zNpBFnHZJOv3kUdXWfUm7deMO0gvZC1W
	 2s6RT1ygnjzcxrhBu3zl9Qtmyc4/NzenDJ6ocf37NKdxOUmq9w3tTF7tTeY2N0mEzs
	 uh/T8jc1ERU1YpwNDpCGU6BsJL1szfJ4N+pQ+kI2k/+1GyLuN1uAuS9OptiL5UlKv8
	 QP3hDYgpREuLfBNKo1U5wQCES2F13bXcUrIQMN8/mDCn6Uu3AhFCds/sceNT1ZrN0P
	 y1UZU0sliTc5w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 11/11] RFC: rust: driver: support map-like syntax for
 ID table
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gary Guo" <gary@garyguo.net>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org, "Alexandre
 Courbot" <acourbot@nvidia.com>, "Danilo Krummrich" <dakr@kernel.org>, ojeda@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org
In-Reply-To: <20260629-id_info-v2-11-56fccbe9c5ef@garyguo.net>
References: <20260629-id_info-v2-0-56fccbe9c5ef@garyguo.net>
 <20260629-id_info-v2-11-56fccbe9c5ef@garyguo.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 12:40:23 +0000
Message-Id: <20260630124024.A7F391F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317746-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gary@garyguo.net,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:acourbot@nvidia.com,m:dakr@kernel.org,m:ojeda@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto,garyguo.net:email,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7008C6E44ED

> The device ID table and its associated info is really just a map. Add a
> syntax to `module_device_table` macro that reflects that.
>=20
> Signed-off-by: Gary Guo <gary@garyguo.net>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-id_info-v2=
-0-56fccbe9c5ef@garyguo.net?part=3D11


