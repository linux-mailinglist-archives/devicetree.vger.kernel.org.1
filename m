Return-Path: <devicetree+bounces-296298-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMmKAiFFA2ri2QEAu9opvQ
	(envelope-from <devicetree+bounces-296298-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 17:20:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D3F523815
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 17:19:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1D9223094FAC
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 14:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CF033B5E1F;
	Tue, 12 May 2026 14:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="zPZD/p4S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43166.protonmail.ch (mail-43166.protonmail.ch [185.70.43.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24F93B5E08;
	Tue, 12 May 2026 14:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778596505; cv=none; b=OvsOcquhNEAl0QpRF8+OY9InugIck4rdGwOIRLMPUomvUvKBMHfB10a8DMu7SpU3dPkwl4A4QycgIaWw/RNrsljPOc9JAkDuwaOqiBYi2Ctu1nM0qB7620ByRjU8N4sMcQDabAzXMVCvDSRflJ+B4fO8ChdJp9iJZz1RUbcCJo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778596505; c=relaxed/simple;
	bh=oePKEJkn2juqCCW/XpWjF9krjiF7QgG8BJrFN8PDLwg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=i0UrZ84GTc6j9ARDK0IlJCjGozFuMViWo+qF58l41S7AIvKJiPW1X3bkzulxyVIooyJ8IAiyp5Z+AnJHnJ2wzoeECUSpOcK69DNH556eK/AYldMOi8E1g7MWM+u3Hky5WdFkS4MdPGCbW7BiNxGUiHuJ8rhofmRKCKwVxwAU1/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=zPZD/p4S; arc=none smtp.client-ip=185.70.43.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1778596500; x=1778855700;
	bh=Bjvlgt0Lgrc9OBikw5UYF113Dh9R7321VRJTyU1aRkA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=zPZD/p4SRQgqRukzsZL8bfeuoUSZlow8uaSZj8HdWMiT1ef1HN/ZIXaLy/0KCPInP
	 SASaTb2/Z2Uf/M+XrpexvbSgYgxVF/Mo8BmlCpluMJAqcvhtKAIFImoy2WbaFWLjjR
	 mAcTx4LqulUTmRWkPwhTE+WUSYzmuYsHUV2BtrdscD2iE9Tiv96KiUci86fVA3WieJ
	 a9LmYG3HqnRq5QRH23n2Q9BRY8Agl2SQuRYPYs7xYnw3h3ii3aRjv33L/Oy9WvEDSt
	 YV8KUgbSgbOfzSFuTvKXm7h4SYjEPN7IgvnCzrFq4yKc8S2ITo0KzlsG/AkD49NtuH
	 xs/29bVL96M2A==
Date: Tue, 12 May 2026 14:34:55 +0000
To: Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>
From: Roman Vivchar <rva333@protonmail.com>
Cc: David Lechner <dlechner@baylibre.com>, =?utf-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>, Lee Jones <lee@kernel.org>, Srinivas Kandagatla <srini@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org, Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH v2 05/16] iio: adc: mediatek: add mt6323 PMIC AUXADC driver
Message-ID: <gWxamwTKyUeOF4QCsiIsrnh7DSWzIKFaY0h83qKq_0vg786xv1uFYhypix7BVO_ruG_vw3DrIsRhIKv5NAzl8hK72rjzPAjwAGU-rhkMgeA=@protonmail.com>
In-Reply-To: <20260512142932.5c6801d1@jic23-huawei>
References: <20260512-mt6323-v2-0-3efcba579e88@protonmail.com> <20260512-mt6323-v2-5-3efcba579e88@protonmail.com> <20260512142932.5c6801d1@jic23-huawei>
Feedback-ID: 173184497:user:proton
X-Pm-Message-ID: f3a0f1c1dc4818e265ee79b323d08552aaf3f4e5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 16D3F523815
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[protonmail.com,quarantine];
	R_DKIM_ALLOW(-0.20)[protonmail.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296298-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[protonmail.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,gmail.com,collabora.com,mediatek.com,intel.com,arm.com,vger.kernel.org,lists.infradead.org,protonmail.ch];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rva333@protonmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[protonmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,protonmail.com:mid,protonmail.com:dkim]
X-Rspamd-Action: no action

On Tuesday, May 12th, 2026 at 4:29 PM, Jonathan Cameron <jic23@kernel.org> =
wrote:

> On Tue, 12 May 2026 08:18:19 +0300
> Roman Vivchar via B4 Relay <devnull+rva333.protonmail.com@kernel.org> wro=
te:

...

> > +#define VOLTAGE_FULL_RANGE=091800
> Probably better to have this inline - however if you do keep it
> prefix t he define  VOLTAGE_FULL_RANGE sounds too generic!
>=20
> > +#define AUXADC_PRECISE=09=0932768
> I'd put that inline.  Little benefit it in having it up here...

There was a mention about magic values in the v1 for the thermal patch [1].
Andy, would it be better to use an inline style or a #define here?
If the former, I'll rename the first constant to something like
AUXADC_VOLTAGE_FULL_RANGE.

[1]: https://lore.kernel.org/linux-mediatek/afmnUG8dG0N0HpV6@ashevche-desk.=
local/

Best regards,
Roman

