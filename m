Return-Path: <devicetree+bounces-260554-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCzgOhBIemkp5AEAu9opvQ
	(envelope-from <devicetree+bounces-260554-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:32:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E6BA6F3B
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:32:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B8D303047520
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:18:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77403318EE5;
	Wed, 28 Jan 2026 17:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="FnH6M/LE"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBC3225390;
	Wed, 28 Jan 2026 17:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769620678; cv=none; b=LDWgCLmKZTQpp9q7UMdSrT4AVj3WZ1m78TTna50q/W8g/wUmk4RmP0Mk+8muZidf5AoyVmmlZ6REOAl9/hxFeEO3qdWhEWmcFQilh0D+SacUlNc8cYRSGRd4ot//9AT2ITJShFWa5k8w5tdC+iHa09dUEoUJUzyVfUmUHylc/OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769620678; c=relaxed/simple;
	bh=2CMFkKWYqAiPJqedGOMih8yrSq49djeQXlILBKYzmzI=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=DKv7vj/kIbcuab4cZk1g7EgYybw2Kwq2Pomaa2LNzVzQkG4DJC2O5jdvf7YDW0c0xEOC1P4nCOtbWhUywQHCV6u36M3+dioqiJv10xRKRLHOs6S1oHpnsJd2CO4KWV7927Psr+ycsdPK9FgYLxfn6OsSprt+iXE3W4ONmpHwg0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=FnH6M/LE; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id EAF64279C4;
	Wed, 28 Jan 2026 18:17:47 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JSSomJ4dRYpG; Wed, 28 Jan 2026 18:17:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1769620667; bh=2CMFkKWYqAiPJqedGOMih8yrSq49djeQXlILBKYzmzI=;
	h=Date:Cc:Subject:From:To:References:In-Reply-To;
	b=FnH6M/LE6xRvSd3BCxukBrBdzw9jV5ENDKtDMtHsNFgtczSxak0z1Vgj2MIXluCJ2
	 DfnsSqIXb5Fvbcdr9BB++GU84i466rHHEkJ7A5G0234h7xBsfIBEIXQCZIA87ctQt8
	 9E/gq9/BZ8BnTtFuQre3vA3bvHTy/xxWNBB3LBDyjNUvAhSPYSUnZhR8RRkokbAdM/
	 a/xpyiXZPJxPKBidcQVS6wHOBJNWvuXhbbxz7EcJESEXSCFvQ8w6Wqy784F/iiY6i2
	 xif2IYytwsuS6DOgS8r39Jc8+mYgPqir56vni7MZ2lJkF6VXjRS1VChwk6JHvq0ous
	 gtxLEsJBJpO9g==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 28 Jan 2026 22:47:38 +0530
Message-Id: <DG0E63PNXEGU.1MAVGEG49ZV87@disroot.org>
Cc: <linux-arm-kernel@lists.infradead.org>,
 <linux-samsung-soc@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Rayan Marzouk"
 <rayanmarzouk743@gmail.com>, "bluebunny" <kalorin.bok084@passinbox.com>
Subject: Re: [PATCH 0/2] Add device tree for Samsung Galaxy J7 (2016)
From: "Kaustabh Chakraborty" <kauschluss@disroot.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Kaustabh Chakraborty"
 <kauschluss@disroot.org>, "Alim Akhtar" <alim.akhtar@samsung.com>, "Rob
 Herring" <robh@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Kees Cook" <kees@kernel.org>,
 "Tony Luck" <tony.luck@intel.com>, "Guilherme G. Piccoli"
 <gpiccoli@igalia.com>
References: <20260125-exynos7870-j7xelte-v1-0-5cacc3042c42@disroot.org>
 <abc5995e-3b29-4e0f-a091-40797f1b6abf@kernel.org>
In-Reply-To: <abc5995e-3b29-4e0f-a091-40797f1b6abf@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260554-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com,passinbox.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kauschluss@disroot.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[disroot.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[disroot.org:mid,disroot.org:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 18E6BA6F3B
X-Rspamd-Action: no action

On 2026-01-28 11:58 +01:00, Krzysztof Kozlowski wrote:
> On 24/01/2026 21:05, Kaustabh Chakraborty wrote:
>> This series introduces the device tree for a new Samsung Exynos 7870
>> device =E2=80=93 Samsung Galaxy J7 (2016).
>>=20
>> I have acquired permission from the authors of this patch to upstream
>> this on their behalf.
>
>
> Thank you for the patch. My tree is currently closed for new features
> till the end of the merge window. I will review and/or apply the patch

It's alright, I did not intend to have it picked up in v6.19 release anyway=
.

> then. If I misjudged this patch and this is a fix, please let me know.

It is indeed, not a fix.

>
>
>
> Best regards,
> Krzysztof


