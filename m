Return-Path: <devicetree+bounces-313932-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yFkgMed2NWo8xAYAu9opvQ
	(envelope-from <devicetree+bounces-313932-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 19:05:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 741166A7349
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 19:05:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="ZqhaNj/U";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313932-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-313932-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9F0C1302D186
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ABD23C1097;
	Fri, 19 Jun 2026 17:05:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042BA3C1089;
	Fri, 19 Jun 2026 17:05:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781888711; cv=none; b=tjeQzWPtf+e5NhN8DiCztxyFhKA5/JIY5WH2DHw8x1cmRlWM7FCaAE9ZDNzR++8OmNayPTxVP9cW9JII5Jqad0mQ38akGD9FZVGnuc5lU2G75c1lxFxiJAwD584C0LSGxdwnBPN/8tw7aAfPe9NOs9QEARA2Wd082bQXw/VrSCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781888711; c=relaxed/simple;
	bh=4hFSJbLjJdVvEruNcpXNrm5TQZw+01r2kmFGRAFhdAs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=g129CN/ulvF54vOfh4ZpJOApL828NLQotWu4DhsSOMAr/j9Mx7KEgZ4teG73TUMGLUyYRH8sPlZS0stM0jv8EXpau4UfFsCOwHTLVr/6GFe/RsyRsgI47iDZRMcCZxFcNZwJOM3hU+HlbI+4g8px2SSzDv96h2mg9uQiK9svIOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqhaNj/U; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 767021F000E9;
	Fri, 19 Jun 2026 17:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781888709;
	bh=4hFSJbLjJdVvEruNcpXNrm5TQZw+01r2kmFGRAFhdAs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZqhaNj/UP2341Ok16bAGk6xFLSMMJju51wPHZW/HyF2/yr1/qOBoLEcPh0oFDsr4M
	 geYSWYkLaC+2hYznb9gf7l4RNcugt22IxEEtkRwYBoWIsLDksDUjgcySUHd0VCcohd
	 bnnShQ4lsvKvnlyxPxSAfXhBn/rKdYnIX9aQ4aNoOoR6IYamuu3fic+0wXirnjOUlD
	 X7jY5UwZWTyDvyIINJvXdGw1HSKkjpenXlFAyBlrmiE5/bHR3meJXMBjMfV/fAzs58
	 1UyTE9fPENL6r/F4yscIj2lgkQqkq8PnyxqXXG1swrJMjTQksBUBCnCAmIisM4XW/x
	 2hYGEG04CCU4g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 01/10] rust: driver: remove `IdTable::id`
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gary Guo" <gary@garyguo.net>
Cc: "Danilo Krummrich" <dakr@kernel.org>, "Alexandre Courbot" <acourbot@nvidia.com>, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, ojeda@kernel.org, robh@kernel.org
In-Reply-To: <20260618-id_info-v1-1-96af1e559ef9@garyguo.net>
References: <20260618-id_info-v1-0-96af1e559ef9@garyguo.net>
 <20260618-id_info-v1-1-96af1e559ef9@garyguo.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 17:05:09 +0000
Message-Id: <20260619170509.767021F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-313932-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gary@garyguo.net,m:dakr@kernel.org,m:acourbot@nvidia.com,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:ojeda@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: 741166A7349

> This is unused.
>=20
> Signed-off-by: Gary Guo <gary@garyguo.net>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618-id_info-v1=
-0-96af1e559ef9@garyguo.net?part=3D1


