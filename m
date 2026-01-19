Return-Path: <devicetree+bounces-257025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D786D3B4DE
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:49:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B866B300644F
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 17:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86AF232D0FC;
	Mon, 19 Jan 2026 17:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="JuVrS036"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB3F311979
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 17:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768844844; cv=none; b=bIOC9xPmcYHlJ/ZHGPkwVpCeIJ3P9HmVjxiCBTOuW/vsLvCHKFIX/KC/7cJocjzybP6kesQfJRELyDVuYcEXgdCav7lvN4kexN5WxSZFcme0ibXeU6esEO+Uv16aeAuMr46+YS99kdjOa9F+B09t3ArDeKNHzSaDhZWLJBK7KhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768844844; c=relaxed/simple;
	bh=UXz1GXuN6+Lb+cRGNam/+7JreOgouX0gxJ7F0pP8Rdk=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=mQFZMHX5xJ0zkJdOkiuIa9jodCWxH5j/rrJFIKgcdeRU73TeeMp9JldIABMXFBRDaVqBgEe6hLqoKc9IDlx9FVDQGKJtC8B3a28PtZp30s5M9ZF+6v8WrY/MPEEc1Py5qgYbzZl/5egssqtnPWTCQTMLT1QRvJsDFSzv0XMQewM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=JuVrS036; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a0c20ee83dso41314615ad.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:47:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1768844842; x=1769449642; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P9vmCqAtGysKfxxBfNQvQzZYtQZW3BMU6u0QIwzm6DI=;
        b=JuVrS036VJO+Gtkmz9lIv9i2WnkrH4pHhBVVENM7PxguhmnLEPYUvUPmRF4J0N8xqk
         yBk6h60AIlm27romoyfQAgHX80o2ie3Pgaud0d4O40cXzS6RzsnknCVNlUZIm/Q3rtau
         30X9R+KH8J/iwDsip2qUnv01jB0ZmvGiMrnP6LsXjpslszHF5itoqNwKLNFUassZdy9t
         /xXk5bK5yD74Wc3Eu2EAtF5Po8K6+Ui1K73Kl0N+Jmbv/I3IZ0BLv3mh9KnU3+0X1ILV
         Vr+NG9X9j0JIONwF0h68DjyQ7kTUE1eisBPQA5ThXMqqvKgeSa2ZeXUL3rEDF+qi8sh1
         SgWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768844842; x=1769449642;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P9vmCqAtGysKfxxBfNQvQzZYtQZW3BMU6u0QIwzm6DI=;
        b=bao8GUL4q8UzrE3Qkw1r5vu6d86zacF8sr1XAZtVM78CHXDGSoC7N20K3UyD55kRnw
         bhOB9xCVpxQAhBbcFyBtUg6B8PLFG7+Dko9+ZYaZkr6HhtaQhLlVoC0g0k9S88u2BXIu
         8uA4BGlbBa28vOskhotTcHM1bqCqXGjRvG39MtraOwZzo1j3WLRS8y6fk9YTQFePLTYx
         TtvUiVsjseITomgEELwchco72v75CpKBnZVtKijEkERqsDCEiab3Sr2JUsqyZgFlEyap
         KJPTExYsVGaAbc+MCZkU1JudN1UKt/p+ssmfOpRo4tHuOpqaYfrKzcU3b3IijH93SRdc
         FEqQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdd7CN0X1aM9bJtEkDPWsqHH3MBsYEDLbxPx3f16zCQCGblASuqspwtPsK4DpN/0N4M8QBNcQxi2QW@vger.kernel.org
X-Gm-Message-State: AOJu0YyBbP7m2eaXZCn3JOKBxfTNE2XuV55sABu3ee9P+jthqglBmjPp
	w08GfVLb6EGuhmA/yn3RF3Bkk/Vk1QVt1LoU9FBK71eVZtZvbEtozXhYNP1lJt4hQXXVbhDrgmO
	2ESXPGu8=
X-Gm-Gg: AZuq6aJC7G7hcLLj3NiYxsKsdrn0DC60xde1d6fYL6t9ojOuXHc4cDufzSdASfqdvPz
	N4wZ+mVzAAAP336tRe3e4RU1jaGUrmPTib5AoJJPcQQUb/FdgFoMF8p4QECJpJLJefnxMmHNan3
	HAIGkJb5sxF5JaL9HyDyVV1jRRnbcQi76M8UW49/A6GdGnNyN13xrEg1ln/u+xCdh8bMrW/7CsG
	UI+OozMdLhGEtalKwuC6oSuqNnStjzvnXViswHZ66yDHeaGfAf7wCChhcF4aEaP9xQJvfmfJ5Iq
	CgK9izlPOwSKagSU4ESrSgtz7eM/HDCgYzUxpLXoJbA2zjaLKjisbN+6ipE6JA/orNKkwOHBrr3
	AI9GompQFd7B+cV/0u78RMrudatXoRcaS0ILzlat6IzlGTA3nG5prPMTJcIOwEV9o4T6Udo/CHU
	ati06dYPOlueeMbm0VPesamOi5s1+mJSGelPuei4V355c3Y0Cnn9ANbqQ4SlZv2wQAvSYiZIA=
X-Received: by 2002:a17:902:cf07:b0:2a0:ad09:750b with SMTP id d9443c01a7336-2a7174efc3fmr85950055ad.9.1768844842261;
        Mon, 19 Jan 2026 09:47:22 -0800 (PST)
Received: from smtpclient.apple (c-24-16-26-157.hsd1.wa.comcast.net. [24.16.26.157])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7193dca71sm98315145ad.48.2026.01.19.09.47.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Jan 2026 09:47:21 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v3 3/3] spi: xilinx: use device property accessors.
From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
In-Reply-To: <b1b79de0-a078-486d-b3e9-96899354407c@sirena.org.uk>
Date: Mon, 19 Jan 2026 09:47:11 -0800
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Michal Simek <michal.simek@amd.com>,
 linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <3D1B59A7-6E57-4C8C-AA95-EA7AA115264F@nexthop.ai>
References: <20260119-spi-xilinx-v3-0-4566c33bac0d@nexthop.ai>
 <20260119-spi-xilinx-v3-3-4566c33bac0d@nexthop.ai>
 <8436e914-429f-40b9-8e6f-ec3b02702cad@sirena.org.uk>
 <69F83558-4675-4FC2-8656-BC6E3481AD65@nexthop.ai>
 <9e559e33-4f2f-40d4-a15f-584548bd6057@sirena.org.uk>
 <05D2CC15-DD6B-40F0-BFF0-3264D4FF96ED@nexthop.ai>
 <b1b79de0-a078-486d-b3e9-96899354407c@sirena.org.uk>
To: Mark Brown <broonie@kernel.org>
X-Mailer: Apple Mail (2.3864.300.41.1.7)



> On Jan 19, 2026, at 9:32=E2=80=AFAM, Mark Brown <broonie@kernel.org> =
wrote:
>=20
> On Mon, Jan 19, 2026 at 09:15:40AM -0800, Abdurrahman Hussain wrote:
>>> On Jan 19, 2026, at 8:50=E2=80=AFAM, Mark Brown <broonie@kernel.org> =
wrote:
>>> On Mon, Jan 19, 2026 at 08:47:17AM -0800, Abdurrahman Hussain wrote:
>=20
>>>>> Are these bindings appropraite for ACPI systems?
>=20
>>>> Yes, the Xilinx IP blocks are memory mapped and work exactly the =
same on ACPI as they do on DT.
>=20
>>> That does not answer the question at all.  Is it appropriate to
>>> configure an ACPI system in this way?
>=20
>> I am not sure I understood your question. What do you mean by =
=E2=80=9Cappropriate=E2=80=9D?
>> This is following the same guidelines as outlined in=20
>> =
https://www.kernel.org/doc/html/v6.7/firmware-guide/acpi/enumeration.html
>=20
> You are just bindly making the DT properties available as _DSD
> properties on ACPI systems, ACPI is a completely different firmware
> interface with it's own idioms.  Does this interface make any sense on
> ACPI?


=46rom the above link:

"The special DT namespace link device ID, PRP0001, provides a means to =
use the existing DT-compatible device identification in ACPI=E2=80=A6"

The following is an excerpt from=20
=
https://www.kernel.org/doc/html/v6.7/firmware-guide/acpi/DSD-properties-ru=
les.html

The _DSD (Device Specific Data) configuration object, introduced in ACPI =
5.1, allows any type of device configuration data to be provided via the =
ACPI namespace. In principle, the format of the data may be arbitrary, =
but it has to be identified by a UUID which must be recognized by the =
driver processing the _DSD output. However, there are generic UUIDs =
defined for _DSD recognized by the ACPI subsystem in the Linux kernel =
which automatically processes the data packages associated with them and =
makes those data available to device drivers as "device properties=E2=80=9D=
.

The two settings are just configuration data for the spi-xilinx driver. =
By switching to generic device_property_ APIs we can re-use the same =
driver on ACPI based systems where the properties are passed as _DSD.

Is this not appropriate?

Regards,
Abdurrahman


