Return-Path: <devicetree+bounces-273372-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAcgF6zgr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273372-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:13:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E99A1248103
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:13:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D1A763030FE3
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:07:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7A1143CEFD;
	Tue, 10 Mar 2026 09:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="VByBN9Dn"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C08218859B;
	Tue, 10 Mar 2026 09:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773133523; cv=none; b=fcdt4l6FNKCOhuWDmuSN1pJILS/pTn6TnUFPwb7QM/Tt/EhCY5sUjOUDyb9JBgcxtpKvO2UNyDOh99lVrye1E8K+/W6UxWCnJL60LK/Y0mjGREdY2mBnVHbn3TlkzPHDZRd5Vfyoc0hZd4Ko3ugVs5VfXfsPZh+dqFFrY/vydDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773133523; c=relaxed/simple;
	bh=M8pNDEtotLUhhRZIK1FscdSEc+0KR4iTe7nbV8NtZNg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=u7tqA48Qs4A9aQvdU6NkkYp8yX3CWmDd2zoz8pzpfhWcMg4UBWuJEcrRzAxYTW4LOxiaZMLehKiwPHIXClrcijkW58r+BYc1A0vYpoxI7gbGHc+g5CPYbAyv6d1oWYKBh253vU0/uz6Ef22mRTwRVKhl+ig06wdttcXteK0ZpQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=VByBN9Dn; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=M8pNDEtotLUhhRZIK1FscdSEc+0KR4iTe7nbV8NtZNg=; b=VByBN9Dn95xghDhOxw1yKNiwXM
	r67u85KhS+vpERHVwqtLGbtjeyLoXNagYYcAX8ZctMPr8ne6sDu25dL2HJCVlZWY/iFmVV/CPLqkc
	qYRBH2tW4/G6lIjbhDLA+XUtw9uYyjrtL7qprvhpQ/dX+X0jFt1C0zdtWcGEVOizceKRbaPBmm9Du
	R7zF05ExyeiTVeZXKOrL0tOLbziga2vhEufAO1uflnwBXSeTgL670SpR/YSALzrF1fYy7awaJd23e
	bRb5sAoIe2u0GOEqjtFBsDPj1eaTEMgFJfUBUc6zGQB8K980vOgBj+koQex7zA3cQb2aNRegoEzrQ
	fZkpOlxg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Frank Wunderlich <frank-w@public-files.de>, david@ixit.cz
Cc: Martin Filla <freebsd@sysctl.cz>,
 Charalampos Mitrodimas <charmitro@posteo.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, David Heidelberg <david@ixit.cz>
Subject:
 Re: [PATCH v4 3/4] arm64: dts: rockchip: Use reference PCIe clock generator
 for BPI-R2-Pro
Date: Tue, 10 Mar 2026 10:05:04 +0100
Message-ID: <4743255.cEBGB3zze1@phil>
In-Reply-To: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-3-37abd7ba29d0@ixit.cz>
References:
 <20260304-rk3568-bri-r2-pro-fix-pcie-v4-0-37abd7ba29d0@ixit.cz>
 <20260304-rk3568-bri-r2-pro-fix-pcie-v4-3-37abd7ba29d0@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Queue-Id: E99A1248103
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,public-files.de,ixit.cz];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-273372-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sntech.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:dkim,sntech.de:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sysctl.cz:email]
X-Rspamd-Action: no action

Am Mittwoch, 4. M=C3=A4rz 2026, 12:05:29 Mitteleurop=C3=A4ische Normalzeit =
schrieb David Heidelberg via B4 Relay:
> From: David Heidelberg <david@ixit.cz>
>=20
> Describe properly PCIe clock, which allow us correct the
> topology (removing the vcc3v3-{minipcie,ngff} dependency on pi6c as
> supply) and adding the clock dependency in the PCIe nodes.
>=20
> Suggested-by: Heiko Stuebner <heiko@sntech.de>
> Tested-by: Martin Filla <freebsd@sysctl.cz>
> Signed-off-by: David Heidelberg <david@ixit.cz>

I think patches 2+3 could do something like [0],
to actually model the clock-generator as one node.


Heiko


[0] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.gi=
t/commit/?h=3Dv7.1-armsoc/dts64&id=3Dcfe2d65332eff95ac7308478897760888f957a=
eb



