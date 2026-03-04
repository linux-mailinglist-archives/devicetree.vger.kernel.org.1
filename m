Return-Path: <devicetree+bounces-271261-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMfjOW6VqGkLvwAAu9opvQ
	(envelope-from <devicetree+bounces-271261-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 21:26:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F3811207970
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 21:26:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CB1B301C3E1
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 20:26:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4132937B417;
	Wed,  4 Mar 2026 20:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="OCG17ytg"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84C8361DAB;
	Wed,  4 Mar 2026 20:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772655979; cv=none; b=lCAqUB3TVKQIQ3ZLyQo3plB4yoRxkgaJhCfx8B7Q3EPZgsCmuzaA6x00CwzDkkbUeiE+XLmQol9O7maGYh2EdsrxXGxRts4D2GWF3OSSsbNpEq/h3oEoZMVrSpThpZyLcENPc/nAFoaLaBG2RZ8kQcGUTccz21q+hGn6yuryh1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772655979; c=relaxed/simple;
	bh=Efys+qdhDxW8gOWCNyG8ButQuR6xST9UMil7BTxFr0I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=n3oAh+69gRES7Fi/vSp2Y6aR+195iaT6dmP19FxlHEOs7V18zlvuKHXCnuf2deP/UglIuqIHlClLQUdHJ8/feAtQK5MF9EZ8DVs1Kow8tpWoX5plUI66R7BWdTcnnj8Bz74D/Xn9tPvDvDFXX3faMybEU8bkUwB+cuHoCpVtjTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=OCG17ytg; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Efys+qdhDxW8gOWCNyG8ButQuR6xST9UMil7BTxFr0I=; b=OCG17ytgl1BIh7wKVHQ4jUE/W+
	d5UEeIn5BVPknW6046z/yb39IA1XP8V1orCGXXIlSIyrH8UoQ3OYBIHi9yy5fKgR0Sqz7BKQPjkdS
	lndwsYRNYUzucKXAOmK5neJDjzib9cMOjPVWOVPTbTxsdniFXBc+mrgPpcIbK2k6XXfoHO57AKLmw
	KFwAbkBv81HPtyiai9lPGFenEaeo0nLQFCbA62/882SgY8QsK2/9l5pTKXLnRWju+Cjgr+TR2FWOF
	FUafC9j7Ipb5YL7c644l7xIRK4Ltc3GmjU/TJ1sYieJ2QbLHaSVw/UYmUkeUWpFcUElTfISEgvlQA
	2NITJWaQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Diederik de Haas <diederik@cknow-tech.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Pedro Alves <pta2002@pta2002.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
Date: Wed, 04 Mar 2026 21:26:00 +0100
Message-ID: <24285215.6Emhk5qWAg@phil>
In-Reply-To:
 <CAAEXfUVBVMmT3i+10F3uvmGOtMMLoQK4WXM7_0G88aL5DntOuw@mail.gmail.com>
References:
 <20260304-radxa-r5-itx-hdmirx-v1-1-f77bf1f7ce03@pta2002.com>
 <DGU7SPZQMZR5.1506XM8RO4EHE@cknow-tech.com>
 <CAAEXfUVBVMmT3i+10F3uvmGOtMMLoQK4WXM7_0G88aL5DntOuw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Queue-Id: F3811207970
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271261-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sntech.de:dkim]
X-Rspamd-Action: no action

Am Mittwoch, 4. M=C3=A4rz 2026, 21:05:52 Mitteleurop=C3=A4ische Normalzeit =
schrieb Pedro Alves:
> On 04/03/2026 18:38, Diederik de Haas wrote:
> > I have a strong suspicion that it was named 'hdmirx_det' because in the
> > schema its label is 'HDMIIRX_DET_L' where the extra 'I' was probably
> > dropped as that seems to be a spelling issue and the '_L' suffix is
> > quite often dropped.
> >
> > FWIW: The label in the schematic for Rock 5B, Rock 5B+, Rock 5T and Rock
> > 5 ITX+ are all 'HDMIIRX_DET_L', yet none of them follow the convention
> > to use the label from the schematics.
>=20
> That's a good point, and the other boards all have the hdmirx_det
> naming in the downstream kernel, so I guess that would be the most
> "correct" name to use.
>=20
> > So now the 'problem' is indeed: make it consistent with the other boards
> > or keep the one where the convention was followed.
>=20
> Also a third option of changing the other boards to all match. Either
> way, I can do those changes, just let me know what would be desirable.

I really want pin-names to reflect the schematics. This makes searching
so much easier. Sometimes things slip through where that doesn't match,
but the goal would be to always move to improve things.

So at least the newly added hdmirx here should follow the schematics,
and if you are keen to bring everything in line, you could also change
the other boards. But please make sure via the schematics of those :-)


Thanks
Heiko



