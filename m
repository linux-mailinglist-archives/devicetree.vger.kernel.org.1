Return-Path: <devicetree+bounces-317737-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dqSoLzG5Q2pBfwoAu9opvQ
	(envelope-from <devicetree+bounces-317737-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:40:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6140B6E4461
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:40:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Hvfq7PnE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317737-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-317737-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BFB323030F09
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 506D3408002;
	Tue, 30 Jun 2026 12:40:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B89C40DFA0;
	Tue, 30 Jun 2026 12:40:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782823210; cv=none; b=FssmHIulQODa3eTOlJ4uAxZwV+kDRuv/Mj0T3dgxnHLNswnIWLpuHfqzIy2wqnDgaHhtPMvCDh1oKp9RiJ+3ZKIGgdyFiE009H0F7d7IF/FpVku1S9ZU22zyKLnPODllwYXBmYPTq35Z+SQT9lBFTQf0OAavYr0cEzIvYy2kDwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782823210; c=relaxed/simple;
	bh=qbLIPEp1f0KioW0gXIhoeCj4r5zV7yz64AxIyvN8+H8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RtSfIHZQgfiI+nbpzP+aDqbeVpbstR1qweha+Wp1m2V6b8uTgyv39r8e6vJbcGMhbtb07DYOKbzm/b4RY79lXz47105LjrPS5OJpgsYycHDXx7lDduhzzcONqm4Prss9+ozx2W9M7TJaxaPPvpswKum7tgabRtrPIKPJ6LqeiwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hvfq7PnE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 689FA1F00A3A;
	Tue, 30 Jun 2026 12:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782823208;
	bh=qbLIPEp1f0KioW0gXIhoeCj4r5zV7yz64AxIyvN8+H8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Hvfq7PnEa8IplybTjdAE9V/LzWqzUOqJ4lxd5h/39S/QohFhvuWoW4vTpizRIBLnS
	 2vGNtQeE0pJdFSCaFghjHZ9OKL+hBM/jJ7mucrIo4K2F99RSgnaSIn0gsRe8jj9bWb
	 mCGIyBoZ5QNnLFQsW5w9ffQC6PF5T38FU1gZbiyOz30InkzAnaJSKMOYU1u1EeD2wv
	 XKx5PwTIsUAeX6ezs8Yv6yhRlFW19LVfpXybXaSXT4SRyYcWKwKpOB6d7PnpeD+7d5
	 1QiF6trENVWXi+hZjyzR3QUSjLArJFEpvegf6LcchtLo2+/qPUuzCPt0HyVIePxsgN
	 +od1pPL7JXW+g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 02/11] rust: driver: simplify
 `IdArray::new_without_index`
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gary Guo" <gary@garyguo.net>
Cc: dri-devel@lists.freedesktop.org, "Alexandre Courbot" <acourbot@nvidia.com>, conor+dt@kernel.org, ojeda@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, linux-pci@vger.kernel.org, "Danilo
 Krummrich" <dakr@kernel.org>
In-Reply-To: <20260629-id_info-v2-2-56fccbe9c5ef@garyguo.net>
References: <20260629-id_info-v2-0-56fccbe9c5ef@garyguo.net>
 <20260629-id_info-v2-2-56fccbe9c5ef@garyguo.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 12:40:08 +0000
Message-Id: <20260630124008.689FA1F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-317737-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gary@garyguo.net,m:dri-devel@lists.freedesktop.org,m:acourbot@nvidia.com,m:conor+dt@kernel.org,m:ojeda@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-pci@vger.kernel.org,m:dakr@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,garyguo.net:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6140B6E4461

> This method can very easily construct the `IdArray` on its own without
> delegating to `Self::build`. Doing so also simplifies the phy device table
> macro because it does not need to construct tuples anymore.
>=20
> This also allows simplification of `new` and `build` which removes the
> `unsafe`.
>=20
> Signed-off-by: Gary Guo <gary@garyguo.net>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-id_info-v2=
-0-56fccbe9c5ef@garyguo.net?part=3D2


