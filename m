Return-Path: <devicetree+bounces-313925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8HHIIs12NWotxAYAu9opvQ
	(envelope-from <devicetree+bounces-313925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 19:05:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4801B6A7329
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 19:05:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Gv6xr8WK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313925-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-313925-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 66C14302F7D1
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:05:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6A3B3C108F;
	Fri, 19 Jun 2026 17:05:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E49F63B4E9A;
	Fri, 19 Jun 2026 17:05:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781888703; cv=none; b=T4M2hhndXM0nh6mjFaBo7CeWrCXgSpXFcvP64rLTIlVtV/s7wOwmScC1jCTeWdtRzsLKrtiUk0AbCAxiKAx68BfHP/yyTkUJM5zm/Em0Ai9EQlqCi2/4KIBndIiia9LqN6vhDS2Q7JAevCBvQhcNBiN/cY2BM3EyeVxseGv+RFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781888703; c=relaxed/simple;
	bh=HkeFeRTWOk4VOrJCSpjbq1rbFgylJxEdA96UbntTN2g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YL+zuehhSpsfG+a2EI7ZBz2CYpq2z8wtQ2GCdiRjBJIQq4el8fbHpSIhGuD2KRDEFqxoUgSy7snTc0ynjiVC5/Fm8tG05RAnvkrdshJXhkupda84S0n3jBhFYpSs1klLOIIZw5/6rK1LroSIFDRY9tTL9vo01bQj2c4dyxG93HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gv6xr8WK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 575281F00A3D;
	Fri, 19 Jun 2026 17:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781888702;
	bh=HkeFeRTWOk4VOrJCSpjbq1rbFgylJxEdA96UbntTN2g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Gv6xr8WKeGiiMk41Fk3VCaPN3dOrA7zLo3G/xXjk68pQutAxbFmAWLnxgH5BAamU2
	 W/BDK1ktqicPTxt5NCQuGnMq8ynderdyKlNnDoNCGnhFctTVOpQKcNE0A7fNkYikFK
	 5ZVGuP1kmZP/eLCcQWe7maSnWxQWr3Ze70GizY3JU5iWChGZr9UP2oirBjRbrCu5Ud
	 uxxDMLD0x06op4Ot8OcUek4x4PRLUdASbbqdSCTRnsrw2AsvBrfCeHjzoACa2Tjzd0
	 1R+t+2UKf4hqL66vbnBVCg93aMG5SmXZ8k6MC+rQWNcIncgVBRUGCfB9i5IaYvYZ1R
	 RpMghq5UDrXeA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 10/10] RFC: rust: driver: support map-like syntax for ID
 table
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gary Guo" <gary@garyguo.net>
Cc: robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org, ojeda@kernel.org, linux-pci@vger.kernel.org, "Danilo
 Krummrich" <dakr@kernel.org>, "Alexandre Courbot" <acourbot@nvidia.com>, devicetree@vger.kernel.org
In-Reply-To: <20260618-id_info-v1-10-96af1e559ef9@garyguo.net>
References: <20260618-id_info-v1-0-96af1e559ef9@garyguo.net>
 <20260618-id_info-v1-10-96af1e559ef9@garyguo.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 17:05:01 +0000
Message-Id: <20260619170502.575281F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313925-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gary@garyguo.net,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:ojeda@kernel.org,m:linux-pci@vger.kernel.org,m:dakr@kernel.org,m:acourbot@nvidia.com,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[garyguo.net:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4801B6A7329

> The device ID table and its associated info is really just a map. Add a
> syntax to `module_device_table` macro that reflects that.
>=20
> Signed-off-by: Gary Guo <gary@garyguo.net>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618-id_info-v1=
-0-96af1e559ef9@garyguo.net?part=3D10


