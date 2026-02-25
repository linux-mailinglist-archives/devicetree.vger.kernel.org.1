Return-Path: <devicetree+bounces-268116-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MF4uNON6nmlGVgQAu9opvQ
	(envelope-from <devicetree+bounces-268116-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 05:30:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3583219196C
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 05:30:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8AE3304C966
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 04:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67BDE27B353;
	Wed, 25 Feb 2026 04:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="bA7IWNSX"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6324369A;
	Wed, 25 Feb 2026 04:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771993824; cv=none; b=DEr3tM2hyoUpEfC49W4kHbwXLmDdXPy5Wuea+eNCcR6k+uyJHSD82+bhlRlDXYoY2K4+oPVTdDkfnn3sNsIt6wgjHATyvzDbrqDz5QwqNxnFGY/935q3ikrjBSzwPDF5grIH0ynw5C+LtAB6ysnQszyB2KxjUa1Lkw6Bt02dJAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771993824; c=relaxed/simple;
	bh=uuNz0M9WBkItf7D1SEjgMLlBY5QrhLH+7WlBomk+924=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=ibmMva1mdmUl3niJIynE4CG28e7IapOl39K4+yiH6XYfTbz+4E5Gac5cNdrWga5ljeelb0YTSUzscuGotMusND/TY9pkok1wXPES59pe4YN94WLAu1P/rZQiDQFirsgD10y4epQHrm2XJHyPT2UmEduxtZQDkLIaVe8Br7/fVM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=bA7IWNSX; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id E37B126726;
	Wed, 25 Feb 2026 05:30:19 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OcC-zT7sxKQm; Wed, 25 Feb 2026 05:30:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1771993819; bh=uuNz0M9WBkItf7D1SEjgMLlBY5QrhLH+7WlBomk+924=;
	h=Date:Cc:Subject:From:To:References:In-Reply-To;
	b=bA7IWNSXuxq9cLSSxbWjAk5ujiAduUFug6RLBCgZXwgfbcccZlh/xsZH42iEZU7XR
	 4BFNG4mP0X4QGhRkYj47c/7y0VqPRzQkdCGi7qHnqqQFC7YBmspc8Sco7TlLKAX/aW
	 2E9Xko1TebrdVBWaTrzUdvH9QmzxntuRlOyvwPyO28CZteadOqSc+TYwK0ogYC1xaX
	 sG0eLsCcWCQWtLrJBWJA+RywgEONg+3szUhMuFuwNba08mmVQ1aQ+s+029MGgGT04R
	 uBlNl00dDN0G+KGK67SWHRfnRkWzAtgr4TiQRAed6l+SKdT2l698gXVah82S52yfQs
	 8skxxwcVya5IA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 25 Feb 2026 10:00:09 +0530
Message-Id: <DGNRDQ5886K7.3NSLKILM1GDWR@disroot.org>
Cc: <linux-arm-kernel@lists.infradead.org>,
 <linux-samsung-soc@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Rayan Marzouk"
 <rayanmarzouk743@gmail.com>, "bluebunny" <kalorin.bok084@passinbox.com>
Subject: Re: [PATCH 2/2] arm64: dts: exynos: add initial support for Samsung
 Galaxy J7 (2016)
From: "Kaustabh Chakraborty" <kauschluss@disroot.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Kaustabh Chakraborty"
 <kauschluss@disroot.org>, "Alim Akhtar" <alim.akhtar@samsung.com>, "Rob
 Herring" <robh@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Kees Cook" <kees@kernel.org>,
 "Tony Luck" <tony.luck@intel.com>, "Guilherme G. Piccoli"
 <gpiccoli@igalia.com>
References: <20260125-exynos7870-j7xelte-v1-0-5cacc3042c42@disroot.org>
 <20260125-exynos7870-j7xelte-v1-2-5cacc3042c42@disroot.org>
 <7cdeb30e-13b9-4c7d-95b4-f6bb6cf15ae8@kernel.org>
In-Reply-To: <7cdeb30e-13b9-4c7d-95b4-f6bb6cf15ae8@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268116-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.969];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[passinbox.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3583219196C
X-Rspamd-Action: no action

On 2026-02-24 12:20 +01:00, Krzysztof Kozlowski wrote:
> On 24/01/2026 21:05, Kaustabh Chakraborty wrote:
>> From: Rayan Marzouk <rayanmarzouk743@gmail.com>
>>=20
>> Add initial devicetree support for Samsung Galaxy J7 (2016) (codename:
>> j7xelte), an Exynos7870 device.
>>=20
>> Signed-off-by: Rayan Marzouk <rayanmarzouk743@gmail.com>
>> Co-developed-by: bluebunny <kalorin.bok084@passinbox.com>
>> Signed-off-by: bluebunny <kalorin.bok084@passinbox.com>
>
> I cannot take anonymous contributions (see submitting patches). Please
> resend or confirm that I should drop above Co-dev and SoB.

Please drop the tags and accept, this has been endorsed by the
co-author. Thank you.

>
>> Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
>> ---
>
>
> Best regards,
> Krzysztof


