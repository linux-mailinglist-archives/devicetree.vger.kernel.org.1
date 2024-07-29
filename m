Return-Path: <devicetree+bounces-89109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9669993FF6F
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 22:29:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E88B284816
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 20:29:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9971C1891AA;
	Mon, 29 Jul 2024 20:25:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C5AA37708
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 20:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722284701; cv=none; b=JUf/X2RngUcUG6mWvHpUFuxdG4PP5lJ0FaimXBG10YRELMXnk8PR1HA5JBAMgRWKCddFMIKxQiv7YbTKBUBJ3hfUPvmJTPdsZcxCbYKIoJZ5PoC6c+fsJ+b5ZUtB5NrgktgAaSSKWKbbTJ8DBCgyNYhxr9KVea3EhXlSGPtyeyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722284701; c=relaxed/simple;
	bh=k+aLb2zk0zDQ3OLaPuMBMB/PwZwGyTvc1/kzg46Jkrs=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=AfsdEdl7hVYmnH41i3r30xbazuY50IuAsid4MpuWICiChswiuy+ZAf57Oth+a3vyLlEEqm81i2GWBylS51RGWQLGY45pk9YMbKzwDkuNKOyoAvFkhAV82yGrnzLUz/hlMXAZJyNyRSDBLTACvcx132JGBpmkNB5XSvFUW/VW38s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=baylibre.com; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1fc60c3ead4so21982995ad.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 13:24:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722284699; x=1722889499;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=083DIGVwY1s52Yql4zVhjameXJVd9htGKGheDXBjW/w=;
        b=EkaSiD2ksivdC9izf1gKlayvqzX3f29m68GAbEge8OFLbsEuJYSDarN0pj/B7qL4Z4
         Adh/SXTlwvmq6gIVZENuMCc1aHUzGV3ANj5oL06DcP38pNMvKXHiklK2dBbgz/+6d8Lu
         jxVyZ1ZmBLlNUsXNSZlnylXblYkk84MA5ZDUwYfwMTvhumME5ubRGuGtUp7/jt/LdWVC
         9364kzURnljXl5r3Q044Ih9Jl09NTYXIda9EAUDxManbleHB4n+oq1P3YyeApnUWOTkd
         l3elmGj1BEUUEdycp52ZMf++uicD/95eupa7kTgT9/XkR2/uotCepDIS8Ve/PfkOCOpi
         bONw==
X-Forwarded-Encrypted: i=1; AJvYcCU3zmwJL0T27M8O7d+lph8N878C4QxoHh6I9FHfxZyduov1w8mx0yhNRmVGhSuSkMlRxTShmyDT/W22HYGfojUQN5Jxg9JpiWY5hQ==
X-Gm-Message-State: AOJu0YwKpBM7ih0EnyCycfsJpz2rOFMpi7AFrkRlVOeC+mS74P47IFT5
	UiZV5Z8WE0azt/xvdIIb5ECkUBuitEb8SGNooqcP4/GDoLu7D2/aL2nDkT1qXU8=
X-Google-Smtp-Source: AGHT+IFaoIYolpqDXKvmz4AJh4w8HIrzefVUkn4tMKwtqCG2E8NuNmhBwdq43k3APJ3edufWyQrY/g==
X-Received: by 2002:a17:903:32cb:b0:1fb:43b5:877b with SMTP id d9443c01a7336-1ff04808975mr71149725ad.5.1722284698420;
        Mon, 29 Jul 2024 13:24:58 -0700 (PDT)
Received: from localhost (75-172-120-197.tukw.qwest.net. [75.172.120.197])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fed7fbc1e7sm86958505ad.266.2024.07.29.13.24.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 13:24:58 -0700 (PDT)
From: Kevin Hilman <khilman@kernel.org>
To: =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, =?utf-8?Q?Beno?=
 =?utf-8?Q?=C3=AEt?= Cousson
 <bcousson@baylibre.com>, Tony Lindgren <tony@atomide.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org, =?utf-8?Q?Rafa?=
 =?utf-8?Q?=C5=82_Mi=C5=82ecki?=
 <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: omap: convert NVMEM content to layout syntax
In-Reply-To: <a08e6a76-6f01-4234-8102-675c32d1171f@gmail.com>
References: <20240523042750.26238-1-zajec5@gmail.com>
 <a08e6a76-6f01-4234-8102-675c32d1171f@gmail.com>
Date: Mon, 29 Jul 2024 13:24:57 -0700
Message-ID: <7h8qxk3q06.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> writes:

> On 23.05.2024 06:27, Rafa=C5=82 Mi=C5=82ecki wrote:
>> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>>=20
>> Use cleaner (and non-deprecated) bindings syntax. See commit
>> bd912c991d2e ("dt-bindings: nvmem: layouts: add fixed-layout") for
>> details.
>
> Ping? Could I get this PATCH picked up, please?
>

Sorry for the lag here.  Tony is stepping down from maintaining these
platforms and I'm stepping into help (but with some lag.)

I'll queue this up for v6.12.

Note: I'll do a minor subject fix to add am335x-bone to be more
specific.

Thanks,

Kevin


