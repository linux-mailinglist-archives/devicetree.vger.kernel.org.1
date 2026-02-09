Return-Path: <devicetree+bounces-264075-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAPnBm4PimlrGAAAu9opvQ
	(envelope-from <devicetree+bounces-264075-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 17:46:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7FA112A33
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 17:46:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 878A2301DAF5
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 16:43:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0732D385515;
	Mon,  9 Feb 2026 16:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KfaX8d48"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90CF2385509
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 16:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770655390; cv=none; b=t5MUMr85NVnNduYxo8oEnClyqBD0vTZ9Uf/w5rUEgozOIA3oeBpSosjrVqv9G6906/CCUsq+n+U5sdnkmkK5Z7RGyXKeswcQx75V2gV/TrC+wI/5L0npMAXXUubbJJhAp+oqQiGXEnCKmGph8niPpZ4tygySRGOEcnCzdNmdHOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770655390; c=relaxed/simple;
	bh=HO4NVWU1cpyt+WaP5Xl/YtJ0mNO+RC4cmc+HXwcf+h4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=obFrtReeTScE1X3iLoh704SV7DsA+sEe3oiApujLloekBU+xq8Jfc19GEJLogpUa6i/ZlRnuNVAWY1KxnLsJ2BRzQVhRKIUW48Ewx1439UlIpcRg0xhRVL7g3HQZIgnPTEX5x+wjV27xVnUY5Jh4qnsMUhovElxT1CU4wCMvh3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KfaX8d48; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4805ef35864so39933855e9.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 08:43:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770655389; x=1771260189; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HO4NVWU1cpyt+WaP5Xl/YtJ0mNO+RC4cmc+HXwcf+h4=;
        b=KfaX8d48STSV+Fv2rbb5mGVr85TCATG/q0pEWghYzNJKzkVszCFql3ik+ndQDQrAgT
         0Df363I9gM7EJiKrelanrKOGaO/17Z4pF/5IEPPzr9Ua7nNIhDb2MqaG+lQP/vbRIofH
         uxNfuc+KOFQe1S1TlN69ML91U9wDgZ8NR/w+A82+ZNQRwi8tjv8Cj5UnHFlU2Cgr10dp
         zq+kDXq7ZZm0KvaQbL9/x0FcZaF7tokRJ7W3nJs3mJO6UwsbEjceA232bdzCyX4BWbtb
         j47SZrzVmRRWUYuack+erLbHnP6XMvMU8Y0/Ifrb4TcB5DWqzYCldYWq6p63+YTC1nd0
         xqGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770655389; x=1771260189;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HO4NVWU1cpyt+WaP5Xl/YtJ0mNO+RC4cmc+HXwcf+h4=;
        b=w9+nvlf3wP691unUUwz/YGrdhhZV+MgOMM1JonMxj47J2iffci+Hi8mMp8LFHvQm7K
         pF5eDgO28Q6JoKdJEM3RE12d3CUygM0arojxMAx+GsxzyO3XIjw0QarFb3qyGG6OrwhQ
         6L7j9VLtLxzRlItyE2bqI9gm1lM6Bzp/bSeod8tD+d3LeRD4c4GuA33LZPf0yIQjwj4Q
         43jEpPAa8ju/m8irQOxzXonktG5K1WMELJFkmsIGG7oy7N2vrMOOfdXCNDL6iX9aIyyQ
         J4iEylCzx7CUv7s/93AmYsP5+BItv3sx2Z+n4UQ78e4QwDlRto6hroF2scYUFCjfSWT5
         3mYw==
X-Forwarded-Encrypted: i=1; AJvYcCWRZG+vAAeNKO+KOr3zE/f+p2IcaUeOE68UibDvTsXPCL123YVFhkqU7BymENNhVgKfMe2io5Td6obc@vger.kernel.org
X-Gm-Message-State: AOJu0YzjtzyI3N1BmT4AknAlbP/Tj18ubU0OE0Ir8pTrSVJDC+/8bL/Z
	ObJV5lAK5lqYzr09NL4h8kWqxZUKtm8wMVO7BHij8t0Gp4D2uLvgdKjJ
X-Gm-Gg: AZuq6aJEeBUhY0Ym4PO0R0kSP1p7iWwQg0lsjaV+P6niF/ydHEQSEfZjrfEB6f8/w3n
	InIN1o9XfFBSB+f88CjndfvFhQQGPElebBehwTudQ4VdozmDc1y7X2D29Ahwncx/UMVwgU6K8Cf
	nLoSEpgOXnRgI4ltcREddbVeB/gKWMz5R87p1LhDT2AN/aVgTKdxD4sVhfuEe9tMGkP3E33zCze
	7homkc9u4Tme8zjgV9i26JCvLKMruI3pO9+M7X8Js53xJF3Ym8hH2vU7h24E1kchw2820IiVnXI
	10FLQ4csVCygIz4qbv6h0o4NraVtL6ZpVCOG7bAf/uoM+Wkb7E7m74oPJfXYObLaBz/MEvRdEPZ
	CFMiQietAG83970lhdrJ/xEF0KR5ARnUHnXxAz8YU6nYCCpE94nlh3nREnbfwiedVTEJ56oM5R6
	6daf5EdVA80IXErGJUUjE=
X-Received: by 2002:a05:600d:640f:10b0:477:a1a2:d829 with SMTP id 5b1f17b1804b1-483201dd24dmr135515485e9.13.1770655388817;
        Mon, 09 Feb 2026 08:43:08 -0800 (PST)
Received: from [192.168.1.187] ([148.63.225.166])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4376806626fsm14707030f8f.37.2026.02.09.08.43.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 08:43:08 -0800 (PST)
Message-ID: <6b33ddfce874006bd10e223701802dec52fdddf9.camel@gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: iio: adc: ad4080: add AD4880 support
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Antoniu Miclaus
	 <antoniu.miclaus@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich	
 <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, David
 Lechner <dlechner@baylibre.com>, Nuno =?ISO-8859-1?Q?S=E1?=
 <nuno.sa@analog.com>, Andy Shevchenko	 <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan	 <olivier.moysan@foss.st.com>, Mark
 Brown <broonie@kernel.org>, 	linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org
Date: Mon, 09 Feb 2026 16:43:51 +0000
In-Reply-To: <be3808e2-ef17-4191-8c1c-5acb53114863@kernel.org>
References: <cover.1770393792.git.antoniu.miclaus@analog.com>
	 <290f35bcbd2f1ee68333ff65f89b54ec7fbb9c53.1770393792.git.antoniu.miclaus@analog.com>
	 <20260207-evasive-mastodon-of-apotheosis-e663a1@quoll>
	 <b3571244f058133a7a0f3b5ca6ef7dc377e3fac8.camel@gmail.com>
	 <be3808e2-ef17-4191-8c1c-5acb53114863@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264075-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8E7FA112A33
X-Rspamd-Action: no action

On Sun, 2026-02-08 at 10:20 +0100, Krzysztof Kozlowski wrote:
> On 08/02/2026 10:16, Nuno S=C3=A1 wrote:
> > > > =C2=A0
> > > > =C2=A0=C2=A0 io-backends:
> > > > -=C2=A0=C2=A0=C2=A0 maxItems: 1
> > > > +=C2=A0=C2=A0=C2=A0 minItems: 1
> > > > +=C2=A0=C2=A0=C2=A0 maxItems: 2
> > >=20
> > > Instead list the items with minItems, so the order is defined.
> > >=20
> >=20
> > Also looks like we now need 'io-backend-names'.
>=20
> No. Just define the order here.
>=20

Things are still not really defined on the code side (I know bindings don't=
 care about the driver
side) but io-backend-names is a standard property and we might actually end=
 up using it so that
we know how to map the backend to a given channel. Unless what you're sayin=
g is that in here, -names
doesn't really makes sense given that we just want n io-backends for n adc =
channels and having=C2=A0
-names as "adc1", "adc2", "adcn" is arguably useless.

- Nuno S=C3=A1
> Best regards,
> Krzysztof

