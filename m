Return-Path: <devicetree+bounces-217003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF79B56A73
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 18:17:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 259D3189304F
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 16:17:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D6CF2773FA;
	Sun, 14 Sep 2025 16:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OnfRgQvG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1997192B84
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 16:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757866625; cv=none; b=pqZIg+RHg1Bkz2YHlIQVqA8X2JCMuTDpNhA7p97YZjPmCRfFyWjVqgC8UEFI5c2s4SZwS1YEO7dcL7Mz2BJy9cAeohu7y7BAtIH+IAVW1EUoU1KpLQ4x40MZhdpyGtkWDf5x7uoYc1tU10KK5kMaxbZFost0nj2stLRhHj5uJUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757866625; c=relaxed/simple;
	bh=jWbdC2pvgh9ssiqZWTBrNl6uNVTE68yxw5S35v3pW8Q=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=oX0q2k1Tl+eMgMBeijLNSOv1trjVeCgB7l+O0FrsjrlX5M8mpxwAOEJ2iI+JFimuwGIjJXqb5AUKOXTDmOiQNOZnPuKRYanzXn3H7hyXVmaAAILrxeTY2r6wWUGrzcKjJxMg2swFDHQNMhRuEqjmi20xG9Gv7H/gCh98JMbOq9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OnfRgQvG; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7762021c574so1297769b3a.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 09:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757866623; x=1758471423; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IHfQfaNhE376CkNmiYZYTQUu0TvMLQbCRNkJjZT7v68=;
        b=OnfRgQvG8sxsY/NS5VsLqjSXJrNDneKrv6LaKt8qqJweaBbHbkicSxg0Kfhxou+Opk
         rGnOaqMJeDPUkPobL09OwGme4JhFecn8brVi9VptbuuFUhV4Vyuhib3FQY41pjO1Nf/V
         CCw07EEHswVBxyxJZ4gVgirDss1QINF+ODkf+Le+KMRuXfnV2sL6zH7c3v8Ld+SD/LjP
         LkwiwhYjVKYQEE+aj3gQT9mQVEkgcFSNI1ivR+aob7/gxxyM+rdqht75HkCneSzQExqp
         dkgiZZ5zTkt/3ZyfEpp/U9K5bvK3n7ey7z3bb8hBShH3ChWwwNcN1xabLLyTL30Hw8I7
         hqIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757866623; x=1758471423;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IHfQfaNhE376CkNmiYZYTQUu0TvMLQbCRNkJjZT7v68=;
        b=wNfJv8N93OEiO+dtE2c9D7+VKDuQ7Dzr97+/WPshPq48Sf1/qhPAWAERF1k24i2ikC
         EQsONMiuH2joIwMPRfV4Nsm/xbfwG9bzcB+q/g2fmb2GjlgwZJZJIfv2GB+JVmADl2cB
         0ozark/f2j3fhgRHWSCO9QRj8n7jPAMvWgXU1yd/GHBTJdLc595P6CIuM/wM+W5hLdWV
         4v83nJgJvycyNTwxXYmLzKoEPJhR8kt7+XMFQKiOnD9y71hnBxH1ZCKHQXoOii93PY9k
         WcM2pP35brUCAlS3DO92ELDWhHMhXOzP5UqkVCTq+fz0bs/WFPgugSJ+L+E5TXeHtKRS
         dNnw==
X-Forwarded-Encrypted: i=1; AJvYcCWDHxtI+BnXRhqVvKY+rS/UQ/KcOMq5FfpF9XN46T1ZfhGCDJSxtVc+VYTdLZk0QJccYqAjD8oIybxY@vger.kernel.org
X-Gm-Message-State: AOJu0YzTL1G/uWL4N4LwLUvMu/aeXpKraU1TDn3R6w+1mkNUHDWGmDIm
	SbhVbiFx4+ttGJR+ffe2kTVJSKYcCpEF+BnfCs2Ck77xX7/q+UGGc/oG
X-Gm-Gg: ASbGncurB+AyBrNeNSYv2mi3Iuj5oOy9f9JIiMI3nCx/eyimAVKZ5enBxrdv+EqZkDX
	bAYefrdRB8eCT9MzqzkCG3aAoyy87hbSx+/9ENBK2Y5Y3VoNWIz4euZM4DM5cqFl38RRNwETKjO
	eH8mv4hhP5uoR7xcT67for7IKHU4uiqVr0IVlFsnHziKYriDNysqoCIccTSIUWsAjR3JnbcSem8
	MV/U/kb6w4m0hdVMwtQ4OPi/abDFBqV9c2uDQ68FR3tQ5Z2NxGo5ArIpzewCu8nc4Q7bgiAuPKC
	KuA2hdhsFw1xaNTAQh+TJS0WU7yMQlzh7ZrpwGltIDpGprS4bmx9i+tiKH7heBTI9YyWpgScBfr
	PUsLrnJ6ORMZZsaHqaCdVU71oWxFdoB5nYlQyMAx8vFU=
X-Google-Smtp-Source: AGHT+IFBdVQ5WdHk8mTH1q+OPlFBftcvNPg40I/u2Qs2j0u22IjgQh7Xfs6CdY7txX411Mjc7ZKVbA==
X-Received: by 2002:a05:6a00:809:b0:772:6235:7038 with SMTP id d2e1a72fcca58-7761208c93amr9813558b3a.10.1757866623058;
        Sun, 14 Sep 2025 09:17:03 -0700 (PDT)
Received: from ehlo.thunderbird.net ([2804:7f0:9240:8534:6a:af3e:787a:d2c8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607a48c19sm10912022b3a.36.2025.09.14.09.17.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Sep 2025 09:17:02 -0700 (PDT)
Date: Sun, 14 Sep 2025 13:16:54 -0300
From: =?ISO-8859-1?Q?Eric_Gon=E7alves?= <ghatto404@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Henrik Rydberg <rydberg@bitmath.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, linux-input@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BRFC_PATCH_1/2=5D_dt-bindings=3A_input=3A_add_ST?=
 =?US-ASCII?Q?-Microelectronics_FTS2BA61Y_touchscreen_binding?=
User-Agent: Thunderbird for Android
In-Reply-To: <716da762-3aa8-4c39-b9fe-8e923b20a0d5@kernel.org>
References: <20250911211910.45903-1-ghatto404@gmail.com> <20250911211910.45903-2-ghatto404@gmail.com> <716da762-3aa8-4c39-b9fe-8e923b20a0d5@kernel.org>
Message-ID: <CF4D01CD-5C96-44A1-B7E0-BF3D77EFE5F5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



On September 14, 2025 11:48:49 AM GMT-03:00, Krzysztof Kozlowski <krzk@ker=
nel=2Eorg> wrote:
>On 11/09/2025 23:19, Eric Gon=C3=A7alves wrote:
>> Add the bindings for ST-Microelectronics FTS2BA61Y capacitive touchscre=
en=2E
>
>Please wrap commit message according to Linux coding style / submission
>process (neither too early nor over the limit):
>https://elixir=2Ebootlin=2Ecom/linux/v6=2E4-rc1/source/Documentation/proc=
ess/submitting-patches=2Erst#L597
The commit description is 74 characters
long, and the name is 73?
>
>A nit, subject: drop second/last, redundant "bindings"=2E The
>"dt-bindings" prefix is already stating that these are bindings=2E
>See also:
>https://elixir=2Ebootlin=2Ecom/linux/v6=2E17-rc3/source/Documentation/dev=
icetree/bindings/submitting-patches=2Erst#L18
Thanks, will do!
>>=20
>> Signed-off-by: Eric Gon=C3=A7alves <ghatto404@gmail=2Ecom>
>
>
>
>> +
>> +properties:
>> +  compatible:
>> +    const: st,fts2ba61y
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  avdd-supply: true
>> +  vdd-supply: true
>> +
>> +unevaluatedProperties: false
>
>This goes after required: field=2E
>
>Other than that - why isn't this finished (non RFC)? Code looks ok, but
>I also did not look that thorough=2E
>
>Best regards,
>Krzysztof

