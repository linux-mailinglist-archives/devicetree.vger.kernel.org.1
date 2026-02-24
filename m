Return-Path: <devicetree+bounces-267974-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qL6ML5LJnWl9SAQAu9opvQ
	(envelope-from <devicetree+bounces-267974-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:53:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C634F1895FD
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:53:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8C9AD30591A7
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:53:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCF2B3A63F1;
	Tue, 24 Feb 2026 15:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="AKKuoRHM"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0FB63A63E6;
	Tue, 24 Feb 2026 15:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771948426; cv=none; b=HEV/EWAkI+Hz23dbrDfeJLcftMoltayv0A5+A8qrEhkufTt55MlOCgcZARKb2G1uZIAgaJUHhWJY+25B8fSC/zHSr8jMJ9sew2BiVJ4qRZn7gIIXVhvW9sSez/8GGYGb9Oq6gQkKlpSbdZHNuoXTVAPfRVv3cwp3ak9OMHj4OQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771948426; c=relaxed/simple;
	bh=CdbiAuW7DFMBwfjS2vMQ1K/iVr4GBckWh/hFmYDp5pE=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Tnxry1gg2gtV2KEtWCLV3ByKzKuh632ADvOZrqqEU2BSeQXOulNsUIT0A8vCKnSx6Lo970bTsaI5P6gDkhJDAl2ZgGeYJSuSELKFkXJWFvw9Irsfj048ffz+OPbebj/VT9OP3nIdesihGoMc9qQzbLhcxsc1ckcw+Rsirz/3qUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=AKKuoRHM; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id A789F26892;
	Tue, 24 Feb 2026 16:44:28 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7xyD80bs-K9V; Tue, 24 Feb 2026 16:44:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1771947868; bh=CdbiAuW7DFMBwfjS2vMQ1K/iVr4GBckWh/hFmYDp5pE=;
	h=Date:Cc:Subject:From:To:References:In-Reply-To;
	b=AKKuoRHMYpcTcf4DSfkaKL7PR0lNFp0OegfvvhIbh/Zc35nY2dehSqIhmylr7VF3N
	 OsiTV+GL6iuS9dOwnpmMcM1Tzcl3HTY2HgVWe4dcJ1UM2gcQhNg2qaMbaDW55X2sou
	 h6GZBX6wjXMODivdMj3+/lIg37v+ZWlFhyKx6OJmz8EKgugksCnZRmCZFb2sdjhD+1
	 Z+aWH9VqgvoEeIn1B6J/7JkqC3bzxnL64QY8/2b/Y0/QKWgIa9Rkyw75VEX62MsZ4m
	 it6laVov+XlKsvRNPQlyruVmWQoAo1dJ1pIQvoaoQWVV7W8Fp7YQ3qXWIV/+3hdv6b
	 ELGfsQQwSvseA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 24 Feb 2026 21:14:16 +0530
Message-Id: <DGNB3BMA20CI.BFNTFEX5T5FY@disroot.org>
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
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267974-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com,passinbox.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kauschluss@disroot.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[disroot.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.959];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,disroot.org:mid,disroot.org:dkim,disroot.org:email]
X-Rspamd-Queue-Id: C634F1895FD
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

If I recall correctly, "known identity" refers to anyone with a
consistently named user name. This previously used to be a "real name"
but was amended since, so I believed this was valid?

>
>> Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
>> ---
>
>
> Best regards,
> Krzysztof


