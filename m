Return-Path: <devicetree+bounces-266082-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLoAFMJSlGlFCgIAu9opvQ
	(envelope-from <devicetree+bounces-266082-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:36:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DAF14B76B
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:36:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8DCD13068F1C
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96440334C3D;
	Tue, 17 Feb 2026 11:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IvDB00Wg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EE9334698
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771328046; cv=none; b=j6HLLnQL5pssXbfg5CsCFjCLtfOtKMXe+9yGEbM56jIbRyESCq65z563tSChSi4IyREX2kjyEJJw247pH80B/5sMO8o13ZSlc9M2rVUsHhmIzEjwbQA1ZP1voTTiNVOW5v3XeEOxZ8RTrU+sfPL1OJFJ4yA9E6kCPbT2AhYWI/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771328046; c=relaxed/simple;
	bh=fQ8E5acDbAblxMkbnCnCAJWUBT9isNE0OZ0UrEJWNjA=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=ntguVnHV1n77MLwk1XZpwY7PATHUIW0L2ycBfdgbiAU76pfTEgvEKf4lIiLHQkn+uuAp3FYF0ml51MNj4cI4WOzXXGu7iS5dF6+JoshkW0LpGy6JYrUND3xqI40REg6eNXv4VX9C0bjGRAI4egCJf4IVBJ3MLnHzfw7mJ2azZII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IvDB00Wg; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-b8fa79b9fcdso691991666b.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 03:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771328044; x=1771932844; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9ig/smemhQzs72G8UP4RStDyB0Ks5cZKeOVkcJVdGZI=;
        b=IvDB00WgoJIDfnyQs3YgF7X4Bjvz6cRdDeEkYZ5be8u3xVnF6jPCa3NqfYEeG8ZPwG
         UpsQeb+weCs7FZsYsj2Er/9cNRCy/PyvwUtChfy9objRuhvTY/OvZ/OzrDB7LDFVelZm
         WxdpIwPcH2dfZT40/R3rRU2092xGYF2O/37CDT/O6ViRjMpywuc3sok6tg/fnQsFQ4Gc
         +KbckEWrx5jbsaDJGfWoEeIYHKbiV6f6Q6tMCPx7HANWvx5XMvVfXiy8lf6fWT5K3wSq
         Hjil/mOsTls/l8vjuUtmqjyVNVP54ahVRfDXnWipQp0wwuOhrLOJvvdfmMR+5vFlu30t
         pA3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771328044; x=1771932844;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9ig/smemhQzs72G8UP4RStDyB0Ks5cZKeOVkcJVdGZI=;
        b=I7zm+i0FzEJ79vtp81KUAlOWrR6A3IoTyq66AxslAjUYFh3MaosocW0yFMpkZIGku+
         P0ORcskKMFpDelGF2IIK4YPNh6kBVgM/miboa1E6HyPiOJ3Apr9jnUvNRXw88CXdOhdq
         zyt7XPPij78ssVbKEofnHxqtzouG322DIOOwCAoaJrdf8Psq2XX4twHmBepwn1N0EtDW
         LBaNlIUauwXh1cVNqAMs9FamgPfCkoUYhlV9RJ73emJnP/2RG8MkRKze9HkEKDzBxrZM
         ydvzYLfLuxaW1n4vv9h5WrUU5uLVtFuu4My+IwIYpHKLDrt3yLxh4iHnf+XMD6THWHMC
         uWew==
X-Forwarded-Encrypted: i=1; AJvYcCVlqDssceXe5VmAlDw4ePoCDOadRn0I46t0MLDKsWAcg+kuyw3gZfSE+Idr2m1mqYoFSpUlS+WKS0nt@vger.kernel.org
X-Gm-Message-State: AOJu0YzE2+mVcQIdxsYp6WURJjb8PK9nDfk9E2yMqxKbL9GneYBKlHVz
	P9BPoHnHv4Kdd68PipaSBlKaYRBiWFByR0tLDYxw9aZc+gTXfojBVIf6
X-Gm-Gg: AZuq6aK3VFCh+TpHKl6yeb9JlHMDhZNZtg+yDmjAdmIZ9I07N3rFrtM7/WG7mT86o5F
	3B0KXzEckG7qIuamQgqzuDE9bqgqdnAw/rjJ7C2gwBfqby6FN0o0T/rOtvHnQGTHBUuo4O8TzUo
	vhH9HAS2WS+Jk0Xy0QqXQsmhXYpR2QVYyOxUK9wpZRu4Kj33uk/h+EyFoXjqjXRHF8ztBTU/zz9
	IlTUGXSDVbX0ymVURF8DNqq7rcNQhotnosCJFH5nQVbxg3x+OaXFLKILuZow53JvEZVD8HEYl18
	Z5eMYsFThXufkhh56iKUijv3AvAjV77cohcSIym/JU4wS44wqiGdudFTBO90euz8dEJQw5sQrcG
	Dh81y0FEFJo4wbo3AMypGB+DFTA8oWosBT4XF07+9lihgvc6xZ+17pBPxlnvKQ+COB7XIMj6Cef
	DReqA3bZEWy78piWO+6Y9ewnxNjwWOI5M=
X-Received: by 2002:a17:907:86a2:b0:b07:87f1:fc42 with SMTP id a640c23a62f3a-b8fc066218cmr713013666b.16.1771328043629;
        Tue, 17 Feb 2026 03:34:03 -0800 (PST)
Received: from ehlo.thunderbird.net ([178.137.63.129])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc735e4cbsm352054066b.13.2026.02.17.03.34.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 03:34:03 -0800 (PST)
Date: Tue, 17 Feb 2026 13:34:01 +0200
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor@kernel.org>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Lee Jones <lee@kernel.org>,
 Pavel Machek <pavel@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Ion Agorria <ion@agorria.com>,
 =?UTF-8?Q?Micha=C5=82_Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-pm@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v3_1/7=5D_dt-bindings=3A_embedded?=
 =?US-ASCII?Q?-controller=3A_document_ASUS_Transformer_EC?=
User-Agent: K-9 Mail for Android
In-Reply-To: <1519143e-4fc3-490d-ab8d-e65edd2c4eec@kernel.org>
References: <20260214180959.30714-1-clamor95@gmail.com> <20260214180959.30714-2-clamor95@gmail.com> <20260216-sprung-scallop-de7b64bf528c@spud> <CAPVz0n06+uLCSfY_bYS9v7KJ-hXotye7ej-rze6-Q8_JAF7XVA@mail.gmail.com> <20260216-plunder-defense-de11cf56dd3d@spud> <CAPVz0n0-LbTUZBCaO=oN3PpPLpwAqzNo29r687pKY8NbEE9giA@mail.gmail.com> <20260217-vowed-botany-b1c47c7e40b8@spud> <55C30023-4175-48F2-BCB0-12EC23C48F01@gmail.com> <1519143e-4fc3-490d-ab8d-e65edd2c4eec@kernel.org>
Message-ID: <81844CC9-5355-4B1D-AEBD-6DD67FB8C81B@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,agorria.com,rere.qmqm.pl,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266082-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B3DAF14B76B
X-Rspamd-Action: no action



17 =D0=BB=D1=8E=D1=82=D0=BE=D0=B3=D0=BE 2026=E2=80=AF=D1=80=2E 13:32:26 GM=
T+02:00, Krzysztof Kozlowski <krzk@kernel=2Eorg> =D0=BF=D0=B8=D1=88=D0=B5:
>On 17/02/2026 12:23, Svyatoslav Ryhel wrote:
>>>> in other words you propose this:
>>>>
>>>> properties:
>>>>   compatible:
>>>>     oneOf:
>>>>       - items:
>>>>           - enum:
>>>>               - asus,sl101-ec-dock
>>>>               - asus,tf101-ec-dock
>>>>               - asus,tf101g-ec-dock
>>>>               - asus,tf201-ec-dock
>>>>               - asus,tf300t-ec-dock
>>>>               - asus,tf300tg-ec-dock
>>>>               - asus,tf300tl-ec-dock
>>>>               - asus,tf700t-ec-dock
>>>>           - const: asus,transformer-ec-dock
>>>>
>>>>       - items:
>>>>           - enum:
>>>>               - asus,p1801-t-ec-pad
>>>>               - asus,tf201-ec-pad
>>>>               - asus,tf300t-ec-pad
>>>>               - asus,tf300tg-ec-pad
>>>>               - asus,tf300tl-ec-pad
>>>>               - asus,tf700t-ec-pad
>>>>               - asus,tf600t-ec-pad
>>>>               - asus,tf701t-ec-pad
>>>>           - const: asus,transformer-ec-pad
>>>>
>>>> And in the driver add match to every single entry of enums?
>>>
>>> No, I was talking about removing the generic compatibles entirely, sin=
ce
>>> they are not suitably generic to cover all devices at the point of
>>> addition=2E So like:
>>>
>>=20
>> Actually, they all can be grouped under asus,transformer-ec fallback if=
 that is needed, both pad and dock EC have the same core functions just dif=
ferent set of cells=2E And then in the driver each compatible will get a de=
dicated matching data=2E Will this work?
>
>Then what does the generic compatible express if it is not used by the SW=
=2E
>
>Wrap your emails to mailing list style=2E
>
>>=20
>> properties:
>>   compatible:
>>       - items:
>>           - enum:
>>               - asus,p1801-t-ec-pad
>>               - asus,sl101-ec-dock
>>               - asus,tf101-ec-dock
>>               - asus,tf101g-ec-dock
>>               - asus,tf201-ec-dock
>>               - asus,tf201-ec-pad
>>               - asus,tf300t-ec-dock
>>               - asus,tf300t-ec-pad
>>               - asus,tf300tg-ec-dock
>>               - asus,tf300tg-ec-pad
>>               - asus,tf300tl-ec-dock
>>               - asus,tf300tl-ec-pad
>>               - asus,tf700t-ec-dock
>>               - asus,tf700t-ec-pad
>>               - asus,tf600t-ec-pad
>>               - asus,tf701t-ec-pad
>>           - const: asus,transformer-ec
>>=20
>> And them schema name will match the genetic compatible=2E
>
>Then what does the generic compatible express?
>

Then enum it is

>
>Best regards,
>Krzysztof

