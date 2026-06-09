Return-Path: <devicetree+bounces-309300-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WawxCCVoKGq6DQMAu9opvQ
	(envelope-from <devicetree+bounces-309300-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 21:23:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 813636639E9
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 21:23:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=protonmail.com header.s=protonmail3 header.b=jxZ8lbzX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309300-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-309300-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=protonmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 296D830C4245
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 19:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87BAC403AF5;
	Tue,  9 Jun 2026 19:15:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-106102.protonmail.ch (mail-106102.protonmail.ch [79.135.106.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E540403AE6
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 19:15:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781032558; cv=none; b=sXvr/R9DODrFDrgCeGt3v0ESuz/nk68AhB4jmoyS1GzxAg4AfMOxROybRH4ZAyF/l3IUKsMziZgO+Ri2Iacs4CurOO8GmZi6NitZI5d+f9//iML4Kp2XhMsZPt2Qmf5iiHhIVNBN7YbMSIjQlj7Fulc7u8Y+PY7SnwEAbxAJdTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781032558; c=relaxed/simple;
	bh=GgKZnTuVOJ6xRAmOu/hDneQopQHt5m3ut48mdldgavo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=D+AMZOk31L8QbqM1lU71hAbAVJYGP1GJxEf9AvFgAbxcmKKt5L/AFxJM0f3oD1MYE+n7qq87sp4IkfbNeEJUocsFhCtmxHg466mHQ0HM+nKrrQwrgaB75v9Rp0Pk2LfI4FmKXtxd4JiuflthiL333FzgXYSpDpD4Zlf1P1ZTdUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=jxZ8lbzX; arc=none smtp.client-ip=79.135.106.102
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1781032548; x=1781291748;
	bh=dLyB8XawH2sgIIZ5MIGWnJ1sq7S1TgdTUSfQDubvnvY=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=jxZ8lbzXdWYig6RBNon62GlCSUWxQT8YgWPOGrQicRm1+BP4F6N1vmbOsYU2Mf6Jg
	 aJHhD77bzauCDH34ogxqUaD8PHf+9PtL2fo6qgpBpwtuMhHfWA7kZMj4ozOSkoh/X/
	 L3jmVZQ1JnSp3vUJFiP6sqSSmpvPjUsR04kvLBfPTGNp/e4oT0FQwcIObd5vouo9hN
	 ZrWdB0hgOK+fwTNA3vRUqr9CsiUmc5zbP9ZwKxyK8Vt1m7tXr2sQnrfELoGXIVHWJe
	 Ic68gU5gkwaRChhxc3HO2DwlcXXA/qE/mRDopRlf/ZjpwVvciYM983aQZAxDJI0uiH
	 uLYUKLEuxvytg==
Date: Tue, 09 Jun 2026 19:15:42 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>
From: Roman Vivchar <rva333@protonmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, =?utf-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH v2 2/4] iio: adc: mt6323-auxadc: add mt6323 PMIC AUXADC driver
Message-ID: <hacDZbv1Whk_g8AMSfJqKHrgXfyVKt2o3_UGK-1k9jNRJyMxEFPztGhytHvHbc1x9j-F84I_ZuprmXWf2Azbtdqj2vnVal4PO1gG_DijYyA=@protonmail.com>
In-Reply-To: <aihbxowyAIlSeDjH@ashevche-desk.local>
References: <20260609-mt6323-adc-v2-0-aa93a22309f9@protonmail.com> <20260609-mt6323-adc-v2-2-aa93a22309f9@protonmail.com> <aihbxowyAIlSeDjH@ashevche-desk.local>
Feedback-ID: 173184497:user:proton
X-Pm-Message-ID: 254bdc277eca4fcbf59a132a374d5de774ac7810
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[protonmail.com,quarantine];
	R_DKIM_ALLOW(-0.20)[protonmail.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[bounces-309300-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[rva333@protonmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[protonmail.com];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:lee@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[protonmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rva333@protonmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,protonmail.ch];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,protonmail.com:dkim,protonmail.com:mid,protonmail.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 813636639E9

Hi Andy,

On Tuesday, June 9th, 2026 at 9:30 PM, Andy Shevchenko <andriy.shevchenko@i=
ntel.com> wrote:
> On Tue, Jun 09, 2026 at 04:31:59PM +0300, Roman Vivchar via B4 Relay wrot=
e:
>

...

>
> > +=09ret =3D regmap_read_poll_timeout(map, MT6323_AUXADC_ADC19, val,
> > +=09=09=09=09       !(val & AUXADC_ADC19_BUSY_MASK),
> > +=09=09=09=09       10, 500);
>
> It's better to split on logical boundaries:
>
> =09ret =3D regmap_read_poll_timeout(map, MT6323_AUXADC_ADC19,
> =09=09=09=09       val, !(val & AUXADC_ADC19_BUSY_MASK),
> =09=09=09=09       10, 500);
>

Agreed.

...

>
> > +=09case IIO_CHAN_INFO_RAW:
> > +=09=09scoped_guard(mutex, &auxadc->lock) {
>
> I'm wondering why we haven't moved to guard()() here

The compiler would complain about 'cannot jump from switch statement'
due to default case.

Best regards,
Roman

