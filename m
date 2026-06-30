Return-Path: <devicetree+bounces-317740-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3S/2DKS5Q2p6fwoAu9opvQ
	(envelope-from <devicetree+bounces-317740-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:42:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2FA6E44DA
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:42:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RRUvHqpP;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317740-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-317740-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8F6C83016C2B
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4510340BCCB;
	Tue, 30 Jun 2026 12:40:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436F6404BFD;
	Tue, 30 Jun 2026 12:40:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782823217; cv=none; b=KQJyhptfQdjt+ToHm3zSeyJsFZHqsBSTo5RpMgzGkDN+wGAZ7Zy8JhN2DQL1gRIkhfSXXxSVnC9CsFeoN1qQaLWHXRG1DmR0D1RM0epAt6jXSjm45dMBPB/wY/x9aY051nyFbaypMUdi0D0ZemMIgfnY4cWo3ll7bhjWVfzBSME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782823217; c=relaxed/simple;
	bh=pkOfWleTAoRTBq+Oo5iJfbPZ0XHswf3coUym+OIUsVI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PuWaX/0ahQVbOpZK/JjhU5Cctt4+9Qyeef2ovhyhzY/6lZfLU2YAM84XhLWXBqOUL13m6yFR948jFVmELmRmZakugOVPKN9M02vKvxpdNXl/vA+07RcHwPzLeqFLwM2wAde6vbOXMzGUAdJxZ12vObdJUBHG19WHqAFhwUnNvVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRUvHqpP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 798A71F000E9;
	Tue, 30 Jun 2026 12:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782823215;
	bh=pkOfWleTAoRTBq+Oo5iJfbPZ0XHswf3coUym+OIUsVI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RRUvHqpPkYvquyRFGM5LH0H2ZROJL43y+UX5njVPQzxeaL+ioroDnSCYFjHMkcnM/
	 MuO24o0G9wcOWs9ymFIRBvMFTPWNfHUjtubUDjAMfCfnvpBRHOJ6KZxB2DGgzRJTke
	 sVbaIP6rzKhPAI52BFJwmqYkIaf+XoTRXzd+hkGXpMTbvfezMTKCIvi7zQnDuj9qH5
	 rTvsFkx7U9td6Cr93yG94YnBmDttlCsvl/znc5MSP9EdZhbJCeRCoqPF6NpaxVcubs
	 +jHetG6MYpf9PwJwdKKTAeKEKeDnc/IeOTGQEqESujuNH0QBhqlxzsijX88OneeqLE
	 TTMDl11xe20WA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 05/11] rust: net/phy: remove expansion from doc
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gary Guo" <gary@garyguo.net>
Cc: "Alexandre Courbot" <acourbot@nvidia.com>, robh@kernel.org, "Danilo
 Krummrich" <dakr@kernel.org>, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, ojeda@kernel.org
In-Reply-To: <20260629-id_info-v2-5-56fccbe9c5ef@garyguo.net>
References: <20260629-id_info-v2-0-56fccbe9c5ef@garyguo.net>
 <20260629-id_info-v2-5-56fccbe9c5ef@garyguo.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 12:40:13 +0000
Message-Id: <20260630124014.798A71F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317740-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gary@garyguo.net,m:acourbot@nvidia.com,m:robh@kernel.org,m:dakr@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:ojeda@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,garyguo.net:email,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E2FA6E44DA

> The expansion serves little purpose and it can easily diverge.
>=20
> Signed-off-by: Gary Guo <gary@garyguo.net>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-id_info-v2=
-0-56fccbe9c5ef@garyguo.net?part=3D5


