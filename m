Return-Path: <devicetree+bounces-298017-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMtYKeLcBmp4ogIAu9opvQ
	(envelope-from <devicetree+bounces-298017-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:44:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1700A54BA05
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:44:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BA59B303F9A7
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 08:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC5C44218B2;
	Fri, 15 May 2026 08:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="StoV+jzp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43166.protonmail.ch (mail-43166.protonmail.ch [185.70.43.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B965241C315;
	Fri, 15 May 2026 08:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778834341; cv=none; b=HY5x7VP0Vkkbv1GxJrwOdzoTqlbw5K/nV8MQfU4q/pa0keHSBKJFxs7ZNO1+9wbsiJ0Ck/Qe99Mea28hHY9g0rHHbhecm4hSIeNBBYjYX2pifBw1+Llj2isWH2w3w/EZDmkth3z68Hl7pv6a286MtM0DMd72yz939vHjnxQt6B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778834341; c=relaxed/simple;
	bh=gFOxLwuKLJqHFVUAa7d0vs339f2pCox0FPD1LrAAnQo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tJPnBFvFp3/ojtclc/C3CrPaVA+ALPC9sb3HNPCer4RWaI+F0m+AIQABq/A1qtm/F48NPHml9ST3yxsyQjImqNRScUJ+qVay0t6cxKMu705lVOjJGylTUQdkuXn0LuNxR1HU0PNcyeEmGJxljSSINPdjt8z01JJSSNu/wKwOYyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=StoV+jzp; arc=none smtp.client-ip=185.70.43.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1778834336; x=1779093536;
	bh=gFOxLwuKLJqHFVUAa7d0vs339f2pCox0FPD1LrAAnQo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=StoV+jzpjxbhAoP9HPjGBy18gotqnhuHTjD+iqdspaDUwbrDbH6brBTfXAV4CvsYz
	 MURN8g9kejR0W/sMHRBcxXm1xygP975hAQVs7Ttj/oQnIdRytg14FAnV2KFK3XMPJW
	 LlTErOdFlezTlVv4Z0+EoqYWQOKubCCVlGMzMtykSJpPLyYaSfR9HrmhTIIv87u8EZ
	 /IwnqSmDGRKBOHtQYlT2dR5j2HDY0ywcg6Qmf+IkEKko1Tk1uhuclFF9utA42IukFI
	 S1jeQ331cIsWIyejiICOu403zxKKC/fEe9yfLCaOidtkhSVbLnIlZ2wOrlBn8kZDeC
	 7WPe05ky813jQ==
Date: Fri, 15 May 2026 08:38:46 +0000
To: Krzysztof Kozlowski <krzk@kernel.org>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Matthias Brugger <matthias.bgg@gmail.com>
From: Roman Vivchar <rva333@protonmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, =?utf-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>, Lee Jones <lee@kernel.org>, Srinivas Kandagatla <srini@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org, Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH v2 16/16] MAINTAINERS: add MediaTek mt6323 PMIC thermal driver maintainer
Message-ID: <F4Z7s65enSXh9nWU9ypYTOaxyIVJX68NzxyJAH6FDNZxtJ-3JwSc0iIsK9v5rwdavG2SlwyuIp1cz-N4s2P7OwTHJ69edEjQsEG40C0_yl0=@protonmail.com>
In-Reply-To: <20260514-sweet-electric-buffalo-841c18@quoll>
References: <20260512-mt6323-v2-0-3efcba579e88@protonmail.com> <20260512-mt6323-v2-16-3efcba579e88@protonmail.com> <20260514-sweet-electric-buffalo-841c18@quoll>
Feedback-ID: 173184497:user:proton
X-Pm-Message-ID: d8c14f9fad7e94425200fd560e52fcb3d8ec6e2b
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 1700A54BA05
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[protonmail.com,quarantine];
	R_DKIM_ALLOW(-0.20)[protonmail.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-298017-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,collabora.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[protonmail.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rva333@protonmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[protonmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,protonmail.com:email,protonmail.com:mid,protonmail.com:dkim]
X-Rspamd-Action: no action

Hi Krzysztof,

On Thursday, May 14th, 2026 at 4:03 PM, Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:

> On Tue, May 12, 2026 at 08:18:30AM +0300, Roman Vivchar wrote:

...

> >
> > +MEDIATEK PMIC THERMAL DRIVER
> > +M:=09Roman Vivchar <rva333@protonmail.com>
> > +S:=09Odd Fixes
>=20
> Odd Fixes means driver is half-abandonded, so please explain in the
> commit msg why you add yourself as maintainer but not really committed.
> Such entry makes more sense for subsystems, but if individual driver has
> odd-fixes stage, shouldn't we just remove this maintainer entry? If so,
> why adding it in the first place?

That is a fair point. As an individual contributor, I'm hesitant to use
"Maintained" indefinitely, but I understand that "Odd Fixes" for a new
driver is not the best idea either.

If no one else can take it, I'll change the status to "Maintained" for
v3, but I want to see if there's a more sustainable long-term home for
the drivers first.

Angelo, Matthias:
Since the patch series is about MediaTek PMIC drivers, would you be
open for taking drivers under "ARM/Mediatek SoC support" entry?
Or is there someone at MediaTek who might be interested in this?

Best regards,
Roman

