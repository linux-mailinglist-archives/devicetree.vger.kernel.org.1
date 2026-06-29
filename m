Return-Path: <devicetree+bounces-317196-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KZClF++dQmrq+gkAu9opvQ
	(envelope-from <devicetree+bounces-317196-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 18:31:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC72A6DD5B0
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 18:31:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=B2RjEyD4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317196-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317196-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4247C303CA51
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 16:27:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B570E44D696;
	Mon, 29 Jun 2026 16:27:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645EB43C078
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 16:27:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782750460; cv=none; b=CJE3IFgDR3r/VDq7UQJgQUi8H4farC+KbuACP/Yr8tn6uBOUIGATvVajlRi9spJaMF6iCTPCHtU2/pp2taRZsOnp835nLdm7C3/2w4IaQYHYP5uQAmF2ZtB5ZwxmiPCh4YQQIjcRnAdczPI527wfgNLNx+SA0BG5HQUqOJBg5y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782750460; c=relaxed/simple;
	bh=LRBuWO7sXtjtuQCETz0veDvzO9V3r3MdLYVKJFAqd54=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=ku1jUsixWJeeRT7IXHhcRgB+YP1vU4LxtULwImWa9CMVtS7BUGPinwofQVcOlXJeoiJxD5Zc2K4G0xparP50qdTdc2HUyJdG7RbQSQS5G4HdT5CaBUko9OSXnNMHcG6yMk5Pz4ZxBPipuPOOgT2/zhOXZIajeGWrfNW2GcJ7KKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B2RjEyD4; arc=none smtp.client-ip=209.85.221.176
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-59e23d70dfaso1137261e0c.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 09:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782750458; x=1783355258; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hLchI3E0Uu7WQf0kAyF2SZwR4eWIe2krp0NcWRo6lD8=;
        b=B2RjEyD4TNmLFibeoaiAy+6fjR7M1MssYu790doGpQ+5UZjuZQdaijLLY1YOc35JvM
         AP4Hhj7dB6Vd4cUHkqRiVFoYPx54LrPKz/5Nv3gDsGhrgf1W815o9qNco3Kiay4yLklt
         +e+iJFSQN5HdV41QPsq5zpM1f3iu7XSTAN5XwTURNdvNCbQdwO1zam02ZF5S1KAPK15k
         sIFMpyO1d8s/hWIBzJ5LYzV6I6Q6MAGenHO6PYfLtIZy1zpG2t0kHO2k2H0IkEetkjEw
         Q6VaQ2VirejOGdmpEI2Rh1O5M8iXchmQw+MDVKAO8BtjS0S9r9DSqhsnTBu/snXtg6YR
         0bNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782750458; x=1783355258;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hLchI3E0Uu7WQf0kAyF2SZwR4eWIe2krp0NcWRo6lD8=;
        b=MkjNdzaHyO+Vp3hG/lYMls27JpyATy7vhwib4IJ/Acyxj3hqkIJ8NM0MB5NnK9JH6s
         BoW3ALmKROtvRC14w+YrMSe7+b+ZgWRStnJKMog1NWakNEnQjs/CacTAK/8ReNkftK7P
         pA45LyCMViUyBAH50q3hHbYZ5a94CdjEEtR98Q5GCMv7L3egh1OtrQv1faN5oPqHr/OI
         EazM9HEOdFSEKZSc6NfH/UhM/qCnSUQ16Pt/HdyoCKnk03llCkLJ7H3lf6rIErWr6VAC
         MveJQWyyaoq2rskpi1TSw+LCIebii8ScgIQn3APC6YHp64BMfu+vAGG5xyQiHhgRblkr
         29xg==
X-Forwarded-Encrypted: i=1; AHgh+RqDExSW1DzPj8zIvKu1QMEGpQ4ab2+0xX5/eHlkYo/maSVdwb+kLF+xeXGtxJzEM9lw1Ni7hVMIE1jp@vger.kernel.org
X-Gm-Message-State: AOJu0YwLIhVBsAxGcJvFAvFEvWJoKToMnszK1VZiaHQjYyQX9ijs/ci2
	Kg8lDnO32pm13QsPSTVqy6cj/tkfRZY+ljpvKXr+VD7oE3KvSleWNq9CkwKaSQ==
X-Gm-Gg: AfdE7cmaG5SozUiRyNkArZwzGae+mN6IwXGFCb+uKZOtgbjtDak+y+vFKr9O2sZOTPK
	9Wkk9AESPspSEgc+UrYXDdosoDK+fzUl/gyOgxujscBVQOsAh8lTlgEqkc46FVbPP1UtFrMXWoY
	zPf5t22QWTygzw5Eig0NsQb5Wc9Tsx6ohM9yI+J/U0H3KslR3V7pzvlRFt9r/cteSCK41+TXrd2
	4x8ll+2H3GcwPu6vWTCrQbrVq7GL8cP8lPHMnwdFq6aypPv652C4fE8UMy5dSD8pxHNo+xZxSFo
	94JiPoDnsY+np0V+V0Fgn/6SZGOoxPprWWDdLoBm613AdbO8lb6XLROeTpdNJjB/sL53cjjB0rX
	EeVxHNjTa6ev6zZfSEwKqgTgHfH66uNxRpYEn3mSapIdUOmiL8RKHna/13s6ksLJxMXg7kiGzHB
	Et5cA=
X-Received: by 2002:a05:6122:3117:b0:5bd:9f23:a74b with SMTP id 71dfb90a1353d-5bdbed8d55dmr293272e0c.9.1782750458347;
        Mon, 29 Jun 2026 09:27:38 -0700 (PDT)
Received: from localhost ([2800:bf0:82:11a2:7ac4:1f2:947b:2b6])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5bdb2c1e818sm1119039e0c.5.2026.06.29.09.27.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 09:27:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 29 Jun 2026 11:27:30 -0500
Message-Id: <DJLOAISPZLG7.VZYX8B16QU4K@gmail.com>
Cc: =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, "Andy Shevchenko"
 <andy@kernel.org>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/7] dt-bindings: iio: adc: Add TI ADS126x ADC family
From: "Kurt Borja" <kuurtb@gmail.com>
To: "David Lechner" <dlechner@baylibre.com>, "Kurt Borja"
 <kuurtb@gmail.com>, "Jonathan Cameron" <jic23@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260628-ads126x-v2-0-4b1b231325ba@gmail.com>
 <20260628-ads126x-v2-1-4b1b231325ba@gmail.com>
 <946a30c9-01e9-42f1-bd2b-b7934fda85cf@baylibre.com>
 <DJKX600ONL4O.1YUTCD1L9FU8F@gmail.com>
 <a16f61fb-4e98-4c30-8d4f-da084e27ebeb@baylibre.com>
In-Reply-To: <a16f61fb-4e98-4c30-8d4f-da084e27ebeb@baylibre.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317196-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[kuurtb@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dlechner@baylibre.com,m:kuurtb@gmail.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuurtb@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC72A6DD5B0

On Mon Jun 29, 2026 at 9:21 AM -05, David Lechner wrote:
> On 6/28/26 2:12 PM, Kurt Borja wrote:
>> On Sun Jun 28, 2026 at 10:45 AM -05, David Lechner wrote:
>>> On 6/28/26 12:36 AM, Kurt Borja wrote:
>>>> The ADS1262 and ADS1263 are 32-bit, 38.4-kSPS delta-sigma ADCs with an
>>>> integrated PGA, internal reference, excitation and burn-out current
>>>> sources for sensor biasing and diagnostics. The ADS1263 adds a second,
>>>> 24-bit delta-sigma ADC (ADC2) for background measurements.
>>>>
>
> ...
>
>>>> +
>>>> +patternProperties:
>>>> +  "^channel@[0-9]+$":
>>>> +    $ref: /schemas/iio/adc/adc.yaml#
>>>> +    unevaluatedProperties: false
>>>> +
>>>> +    properties:
>>>> +      reg:
>>>> +        maxItems: 1
>>>> +
>>>
>>> If we want to allow single-ended/pseudo-differential inputs, then we sh=
ould
>>> also allow single-channel (positive pin) and common-mode-channel (negat=
ive
>>> pin) properties.
>>>
>>> This will also require additional common-mode-<N>-supply properties to =
allow
>>> for the negative pin connected to something other than GND.
>>=20
>> Ah interesting. Why the N though? wouldn't a single supply connected to
>> AINCOM be enough here?
>
> In theory, any AINx could be a common mode input by connecting it to
> a constant voltage supply.

Technically yes, but there is a pin named AINCOM intended for this
purpose. Can we do a simplification here? I propose having

  common-mode-channel:
    /* AINCOM pin */
    const: 10

That way we would only need one common-mode-supply. Would that be okay?

--=20
Thanks,
 ~ Kurt

