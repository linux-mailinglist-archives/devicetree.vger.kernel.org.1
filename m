Return-Path: <devicetree+bounces-313927-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ni5/Bgt3NWpSxAYAu9opvQ
	(envelope-from <devicetree+bounces-313927-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 19:06:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DBC6A7369
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 19:06:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Digz7RkV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313927-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313927-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9AA46308A5E8
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B870C3BB66B;
	Fri, 19 Jun 2026 17:05:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C1263B19D6;
	Fri, 19 Jun 2026 17:05:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781888706; cv=none; b=e16MdihgFRRs9dIygRxTcCBPUEBOpsTavnzBdu68i4YKRmX6N5pSExc3uhKSrhxw9BfBW1IwuY6xR5UUzI/bFCxorNDnkigy0gLtMkbrm56hGxcBjGmJBJXFH49VrP3Cm+n3uLq5HWb5XEMt9BGMdCmekIpYysW5xk5FXLAmIzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781888706; c=relaxed/simple;
	bh=SRRzcwaH4d1wxFZYtGSRDSdJpieIh3jJ5CEMg853dhQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=R/ANQJn/0RzJ0LxdJa5dMQJGF1YZmO2C9B66pbo+rinDv3iNzEpLG0T2rR/4ZqGCcA8DtWFeGEvv+3KzawDDNifTKhDQWzC4hLoXLUgjprp8wqbuO6ZfSguhMtecRO5KDpq9ChyKCaGn2K81lt2QUshTrf5BGcBTgd5J1CpK0R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Digz7RkV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B9091F000E9;
	Fri, 19 Jun 2026 17:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781888705;
	bh=SRRzcwaH4d1wxFZYtGSRDSdJpieIh3jJ5CEMg853dhQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Digz7RkV5vKHK3x/VfyiCMQpapcFtP/wf8fplSSA66JmR5jQBgx/GKyfBCKYmxg3G
	 vgkQimbUZeuR2PD45uJc+gu4keQl/W3+X1XN8qG/bAWZnrNrJ0UICDiyjVEVWIZI8C
	 PBEHoKZ6pOIRthUNh3EDGHeKAOdkCK6AmbEDjp0rZT+4ZKgEFDu/LAEj3RftFmoO31
	 Mq76japzgC70tKC4CzaoJtGCPPGfl2ZULr9t7tPVPgDTA7lPavrnmtyWXDO66Lw/w5
	 GWtbZzAYY/uImIlz3ozHF2La6Ce0TfHfHCnxdKHlTFt8KtDYUUSVV0gQ8gz8sOQ9mk
	 d0x9o5wFJfG0g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 09/10] rust: driver: remove duplicate ID table
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gary Guo" <gary@garyguo.net>
Cc: "Danilo Krummrich" <dakr@kernel.org>, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, linux-pci@vger.kernel.org, "Alexandre
 Courbot" <acourbot@nvidia.com>, ojeda@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260618-id_info-v1-9-96af1e559ef9@garyguo.net>
References: <20260618-id_info-v1-0-96af1e559ef9@garyguo.net>
 <20260618-id_info-v1-9-96af1e559ef9@garyguo.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 17:05:03 +0000
Message-Id: <20260619170504.4B9091F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313927-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gary@garyguo.net,m:dakr@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-pci@vger.kernel.org,m:acourbot@nvidia.com,m:ojeda@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[garyguo.net:email,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 60DBC6A7369

> Previously, `IdArray` contains both device ID table and info table so we
> keep a separate copy for MODULE_DEVICE_TABLE for hotplug (which needs to =
be
> just the device ID table). With the info being changed to be carried via
> pointers, `IdArray` is now layout compatible with raw ID table and hence
> there is no longer a need to keep the distinction.
>=20
> Deduplicate the code, and remove the redundant copy for hotplug purpose by
> just giving the `IdArray` instance a proper symbol name.
>=20
> Signed-off-by: Gary Guo <gary@garyguo.net>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618-id_info-v1=
-0-96af1e559ef9@garyguo.net?part=3D9


