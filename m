Return-Path: <devicetree+bounces-309810-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zeXsNwpmKWrgWAMAu9opvQ
	(envelope-from <devicetree+bounces-309810-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 15:26:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D15B669B2C
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 15:26:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=ioFXR+3k;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309810-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309810-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07E5B331C24C
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 13:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0F4D40682C;
	Wed, 10 Jun 2026 13:20:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24E9407CE1;
	Wed, 10 Jun 2026 13:20:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781097635; cv=none; b=JCwB39KXGD7Ugz+BVbZ6Wvcf91cfhbqqih5phLC041uug8w+TQCN1hSHyyQMFBUsboeEDXJOUKDvLx8dhb1eXaaN4ofJMCb1DH8rDdAwOGf1WIKC431/kP0miMor1OMMVM1V01KSsjyt0PpxGjJNOAIoqq4JmulsIqZHbE+IK+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781097635; c=relaxed/simple;
	bh=pLfnxG8CRgB2w2CIPqE1uqZRrr2lOmlh/ZfKh14Oc+g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XAfz9haOmUucJr+OaXs79u0+UkXRPN29bvzC2tmdi2vMjR1Lp6qQgMRjcbQaORzM0uItrH0zW9AtBsO7v977ksKsozslQu6auEtHNYkH2tLFHRvfCbvYaHqRK3vzwwzaUjbBdK8oUtNIbLzBPr6s4/T2FrAaOyARqNOuZBcwTd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ioFXR+3k; arc=none smtp.client-ip=185.246.85.4
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 2DBC44E42E01;
	Wed, 10 Jun 2026 13:20:32 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id F2C7A5FFC9;
	Wed, 10 Jun 2026 13:20:31 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C622E106B9316;
	Wed, 10 Jun 2026 15:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1781097631; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=S/sAbNVC/Zw03oyI6CPc1uAG9o/25ixggU+uAfnF4sc=;
	b=ioFXR+3ks6+ilxULAkEMKUNAbVQhEil8Jc/xfAV6m0T4dhyDz7FdJWRrdUFRvDEsHh75i9
	Sdwf1oNZ3mHMdj2kia2Tu2Iw2OESVPIGN4T/SUXjZCmPvfRmmEIJapmW6xZUh8XxLb6YCT
	0LGNanMDOemjN7AZFV3k8ZmkrFrL7eMJRtbbj4GuPkJBsg8vxNZXbTX0XNtNjkhtS8lUxd
	LFSkgW2TiIar1Tr0TH//nBM1McjFKIyTGwgw4qQ7ALKdWzft5bu8lJkQEplhCjJ6lsYRpw
	06b++Mtvt0sAb6VtjvwtcUKQ228zk6gNCfeBgMrfvoaIcimdPFJi5etTs7E/4A==
From: Romain Gantois <romain.gantois@bootlin.com>
To: Jonathan Cameron <jic23@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Puranjay Mohan <puranjay@kernel.org>,
 David Lechner <dlechner@baylibre.com>,
 Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Wil Stark <wil_stark@keysight.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject:
 Re: [PATCH v2 0/2] iio: temperature: tmp117: Support the TMP119 sensor
Date: Wed, 10 Jun 2026 15:20:22 +0200
Message-ID: <Wejeq12mSna7icR-VLLjig@bootlin.com>
In-Reply-To: <aigpNx-8rbXfJecC@ashevche-desk.local>
References:
 <20260608-tmp119-v2-0-30c3537d5097@bootlin.com>
 <20260608182412.4738f1d4@jic23-huawei> <aigpNx-8rbXfJecC@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPartgUvre__ZQNuAi-rCuc2NKw";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309810-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:andriy.shevchenko@intel.com,m:puranjay@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thomas.petazzoni@bootlin.com,m:wil_stark@keysight.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,bootlin.com:from_mime,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3D15B669B2C

--nextPartgUvre__ZQNuAi-rCuc2NKw
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Romain Gantois <romain.gantois@bootlin.com>
Subject:
 Re: [PATCH v2 0/2] iio: temperature: tmp117: Support the TMP119 sensor
Date: Wed, 10 Jun 2026 15:20:22 +0200
Message-ID: <Wejeq12mSna7icR-VLLjig@bootlin.com>
In-Reply-To: <aigpNx-8rbXfJecC@ashevche-desk.local>
MIME-Version: 1.0

On Tuesday, 9 June 2026 16:54:47 CEST Andy Shevchenko wrote:
> On Mon, Jun 08, 2026 at 06:24:12PM +0100, Jonathan Cameron wrote:
> > On Mon, 08 Jun 2026 18:00:23 +0200
> > 
> > Romain Gantois <romain.gantois@bootlin.com> wrote:
> > > This is version two of my series which adds support for the TMP119,
> > > which has an identical programming model to the TMP117, but slightly
> > > different specs and electrical characteristics.
> > 
> > Other than the DT indent thing Conor calls out this looks fine to me.
> > However, unless the cycle is extended IIO is effectively closed for this
> > kernel cycle. Anything I queue up now will be targeting 7.3 now.
> > On the plus side no rush for v3!
> 
> Please, incorporate what I commented on. Id est add #include
> <linux/array_size.h>

ACK, I will.

Thanks,

-- 
Romain Gantois, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--nextPartgUvre__ZQNuAi-rCuc2NKw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEIcCsAScRrtr7W0x0KCYAIARzeA4FAmopZJYACgkQKCYAIARz
eA559Q//aHgExb9JS0/Xuu3+ZLPeDq/zBtdD0TeSjjeUMQddcl/Cn6QYRf9KbRd7
zF2pr+g4CvxUqnORxdFXUU8nVGhts3iT7Dxe9NnxhiQu1EvJY1D8yZeR44lnPS30
4G8KEUZD7Ctl9V45GqgepIZnGVIdSW8VVJuGC1/4uesZgrTev84LWe+XwbJ7nxuX
2X/VaNQTzQDxN+tASUsnnE3jBb4SuBv8hHYbivd63VKxSURdCRuHGPtwqFtGtDz8
pbXcoP74KEFxhWkRkM7lGDiiksnjnEYTLJBSEzIcE7HG1WYR/CHS/CySBh/gaByg
SDRNHHiwb5HQ0+gOSebmeDkbwc64xNQOl2pB33HpYlR2QXog3GX8SnyFaE+gyRei
Xs3+EoGG8qB7wv9vHFnhOrv5KGYbw1Arp5ujYpq/8Jmoe/kgYhd/++d8s4WD7S+c
n5v1paQkiOubpHvBgYzuTW4DNxUWGwbT7EX4XnplMFUEc2hnMXK/3SXjBQx4EQJw
kFwkjoT2qUnsPARdmWiDTJEHYOV3RHIysmbeqgGOtGN6gNCEZv2NJp4+6nWY0Ld9
A3+sFkUwk8CF8ifL3oDHfp/UTQZgN2Gc3jJxYfThuFDwEMbk+mmH20LBMfBChtCv
tpP9p5Pmxx7RyzDShy4ALbqX3K0pf+k7JclfTHDT37nzSoSSbNo=
=PdVB
-----END PGP SIGNATURE-----

--nextPartgUvre__ZQNuAi-rCuc2NKw--




