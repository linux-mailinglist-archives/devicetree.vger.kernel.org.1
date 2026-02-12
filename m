Return-Path: <devicetree+bounces-264903-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MkveAY5ljWlI2AAAu9opvQ
	(envelope-from <devicetree+bounces-264903-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 06:30:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5DF12A6BC
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 06:30:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EFB183041D42
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 05:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D8661862;
	Thu, 12 Feb 2026 05:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fw1r337u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5011191F91
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 05:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770874251; cv=none; b=p4znlbY8OKaW8zgt89QM0FOMYM/fX2qFq31p7+zRDuqPaXMJ3caxyqBTz4EcVQCZPLbC8hsWwDMRUaNvuvkvCMOqQqwN9d5/r7AIydF8WPniDlqLIeabpXhZmDALjAMhzefMYeniPzintYL0xKSs9lwBVhNKIxiBOg9p2s60Z2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770874251; c=relaxed/simple;
	bh=M9u3F8vMbb8KnjCzF8afvRTHFhneUQC2iutBlxhIGw8=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=ayHKSOEbEMClnUuS0vZ652gx8KK+3ZTUXL9mSG3IE3ENfcjkiwizQCRN63GQ9z2KN4TWcavR7CY6hCkd7RnUTLUzzPKk4khdW65ChalfmVr24kKjHRNXAEJBziDMrXOcQIsavRjQrzhLgyClKfdrudlHFI4pkQfh9aYWtRgdwug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fw1r337u; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b884d5c787bso977918366b.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 21:30:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770874248; x=1771479048; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aiP8Erv5C7Xj3JXt8nFdVUGp5E+liP8wGy23CnOFomo=;
        b=Fw1r337udEW91F8u+YRGcxg44DHKZEh9G7IyyPaa/BqFhGrU13/FCcjbqwBatHYUfl
         OiDRT6iSKincNmWBYwN0orurS49sPxcfRSF7iKQs0R91B23OoSOCdul49BSIBvhs2NJk
         YA+aHD+IHQRe+q7jUscSiquMH9dVFp8ZIRB45+aRtUiEJtaGIhhDskd8NOqCZDdO/VPB
         51q/uu1VgDzIZH89M0OjoCxN8ZPyAUCdGhHv3IfPB8gklPH5R2c4u/V4Vo3qWydcoQ9d
         BueNeIFYeF/rcu7usGZok0u1SbCz89+bxPWY6WBNSLGDKsOCxg7XjDXciEGFWHCYwtgR
         3jzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770874248; x=1771479048;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aiP8Erv5C7Xj3JXt8nFdVUGp5E+liP8wGy23CnOFomo=;
        b=v1HGCEt3hARFlsh+r4aYVuJNleYPYB5dOk8RQ6MCZBW375yWD5l9+7ul92SSXozKo3
         D1CwY6DWInsh3GRefGf2E7R4k8lJ3DDK7FUa1zlivdzSGTIFJQtY8oj9EZIkLhlZPBPc
         g8zrtGVTp06b1d8ERcq1jArN7hRf580i5z0KC2FAG7HUbxHa+NkGvFyqGUi2bfk1Nm5H
         rP0LYgXrmpfTqRhWIRmFb55jEmhYovbXin3app0I7acoCh2xPYWL06nniWbWHZUAEYv3
         uIti5uR6BZPBWX97Q+mcaE6QSFM1/iq6AImLn+Y5yRVAxasUzjtG3n2XhGRV9h6IK8QX
         gCFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvKLJbuKbOkRJrCluQtLDG9pvcLgKzOZOYkz2vw4kKm4fLJHf27U/4xo6pPNjhiLnVPfzulTAuUzmL@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/0gLUpKoC8JDrveylLVZ8g3X4K9VmHuaCUPmYvbUWcObbG+8f
	PCUoWFvWYppV8NCEJXZ89q1xF4qPOHk0WH5+C1tadDDvy7f1iGSamT91
X-Gm-Gg: AZuq6aIrrBcXqa+uAimDrvSMwJZy+CpbEzEhCQmQoqo8sGkASCfSjKLBq+Tky8hKYH0
	9lf52QXB1YHFW+YmlHXWP4EkkIiBr+mImjskkWvLYsUkCfqK0hi2QGpk7SnNmobRvFPBRKgz/Qj
	zrRiv7HKA7XhiK3LV8qaNfX9pcGRu12t9ygmJzHEy1KFD+Bt5s9HBc6oSM89xz3fdW5zexcFuN3
	ePCi68sSxrhmHfu7UXGFyLKc4Ts/HfrYT2t2ED4DxRqli9k1lelkzfveWt7fbD4FudYJcFi9nMH
	UZzrGtakIW+OHTIHiQbF+PHkQjXnO4HDiTtMxhTkspUVzIQ81G/xDu1U6uGkGXZ/jSSdcG4TqFN
	F3D1RZoBmJOE29inhLfHmfDFBN8h0IP/cA05znoRGQNNP4ExVBzV+qWK1VhvGkfnT+905MYfWt3
	KIdY8Gc15A2qPCoMwTdlr7S595zeociR4Y
X-Received: by 2002:a17:906:eec6:b0:b8e:3d49:25db with SMTP id a640c23a62f3a-b8f8f842106mr82989966b.54.1770874247809;
        Wed, 11 Feb 2026 21:30:47 -0800 (PST)
Received: from ehlo.thunderbird.net ([178.137.248.178])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6e9d0212sm129363366b.26.2026.02.11.21.30.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Feb 2026 21:30:47 -0800 (PST)
Date: Thu, 12 Feb 2026 07:30:45 +0200
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>
CC: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>,
 =?ISO-8859-1?Q?Nuno_S=E1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Lee Jones <lee@kernel.org>,
 Pavel Machek <pavel@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Dixit Parmar <dixitparmar19@gmail.com>,
 Tony Lindgren <tony@atomide.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v2_08/11=5D_dt-bindings=3A_mfd?=
 =?US-ASCII?Q?=3A_motorola-cpcap=3A_convert_to_DT_schema?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20260211212016.GA3910589-robh@kernel.org>
References: <20260206172845.145407-1-clamor95@gmail.com> <20260206172845.145407-9-clamor95@gmail.com> <20260211212016.GA3910589-robh@kernel.org>
Message-ID: <E5BC797C-4362-4C75-BCAC-7C32A51C4725@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJ_EXCESS_QP(1.20)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,atomide.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-264903-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5E5DF12A6BC
X-Rspamd-Action: no action



11 =D0=BB=D1=8E=D1=82=D0=BE=D0=B3=D0=BE 2026=E2=80=AF=D1=80=2E 23:20:16 GM=
T+02:00, Rob Herring <robh@kernel=2Eorg> =D0=BF=D0=B8=D1=88=D0=B5:
>On Fri, Feb 06, 2026 at 07:28:42PM +0200, Svyatoslav Ryhel wrote:
>> Convert devicetree bindings for the Motorola CPCAP MFD from TXT to YAML=
=2E
>>=20
>> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail=2Ecom>
>> ---
>>  =2E=2E=2E/bindings/mfd/motorola,cpcap=2Eyaml          | 411 ++++++++++=
++++++++
>>  =2E=2E=2E/bindings/mfd/motorola-cpcap=2Etxt           |  78 ----
>>  2 files changed, 411 insertions(+), 78 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/mfd/motorola,cpca=
p=2Eyaml
>>  delete mode 100644 Documentation/devicetree/bindings/mfd/motorola-cpca=
p=2Etxt
>>=20
>> diff --git a/Documentation/devicetree/bindings/mfd/motorola,cpcap=2Eyam=
l b/Documentation/devicetree/bindings/mfd/motorola,cpcap=2Eyaml
>> new file mode 100644
>> index 000000000000=2E=2E7e350721d9f6
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mfd/motorola,cpcap=2Eyaml
>> @@ -0,0 +1,411 @@
>> +# SPDX-License-Identifier: (GPL-2=2E0 OR BSD-2-Clause)
>> +%YAML 1=2E2
>> +---
>> +$id: http://devicetree=2Eorg/schemas/mfd/motorola,cpcap=2Eyaml#
>> +$schema: http://devicetree=2Eorg/meta-schemas/core=2Eyaml#
>> +
>> +title: Motorola CPCAP PMIC MFD
>> +
>> +maintainers:
>> +  - Svyatoslav Ryhel <clamor95@gmail=2Ecom>
>> +
>> +allOf:
>> +  - $ref: /schemas/spi/spi-peripheral-props=2Eyaml#
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - motorola,cpcap
>> +      - st,6556002
>
>This does not match the only user in the kernel =2Edts files as=20
>"st,6556002" should be a fallback=2E
>

Honestly, I would remove st,6556002 since it is not the only cpcap model w=
hich can be used, hence it cannot serve as a universal fallback=2E Some dev=
ices use ST produced cpcap chips, others use TI and range of models varies =
too=2E I guess I have to multiply commits=20

>Rob

