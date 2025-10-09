Return-Path: <devicetree+bounces-224956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CE937BC92DE
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 15:05:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E58A719E825C
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 13:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7528D2E6CB3;
	Thu,  9 Oct 2025 13:05:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFBB52E1F05
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 13:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760015116; cv=none; b=KUfFGKmsJrDx0bzLXHEkICvbsN/CpcxyoND2At0AQV5PfKMXqsnMgN+PwzSqNygQJhoaQC1V3czwUEcmWNgklL9/E2J1Pd7RA/2t32zbMXRI67KoJq/0Pzbl5J19HKqeoMdcVftn2pNQk4GeBji3swqpxVlKzV3Ya4pae6OqxQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760015116; c=relaxed/simple;
	bh=xD6NRTXf9K2gq7W3hAHzUvosh1ygHLtSYWKi0Ow6kC8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ff1DAKu3vny8pe0VzJa6gLfnHbPezkL2gdvW/eRiNg56eo7kZNZdxz7h+HyTN4tqII5M94tCRoV6r9qPNur36G17OTqFfDfdXtrvwSBavGV7m8eM7UH0pi3xaldFROSVAaz1RSHdWzdWkDsZDpXvaeBrptRhKlbGY8DqtXP1VnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5d28f9b4c8cso211826137.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:05:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760015113; x=1760619913;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hVdYrb04OGpyzIab7Gx3IKAauwKdWRH6vKgRJNRIq/Q=;
        b=KvUSEAs92qI2eipe4s6jyCp0v20T2F0NWugEq9wVsRDbZeJArzgzSCSR6ianp40Jgn
         m1jv+F8TYiTTIl5nqF1fiiDW/eEO5bOPiRWQv5U2TToIqM54fcTVMg43T0cdsQhXRraX
         EcKfw8V0ZfJXAEdDgymkM/rPQPc6MPs630ZzIQjx05pgvzZhAMlY/MccwlwNZct89/xC
         gw2hULZF4kRgXmwn8okQZKexEaUhBT8vUqWgZgS4myRo/h/3EN3ck9Dr1enc6j/eLXPb
         vtfriqSbfOdjNB8p+CNaQ9aTIGBDhiUF1oyYXE0v6Xrusxosem3eCL4fBScGUuLEgLZ0
         1N1w==
X-Forwarded-Encrypted: i=1; AJvYcCWtv7L2Og7acytVabCh40iF2RlwtsyE0r6KKwFnAkRG9rdVZwOP6CX4m54icGIrQfUwwkCHrDoiAxKa@vger.kernel.org
X-Gm-Message-State: AOJu0YxEvroLKMrPdAI9k1t1e+ba9QM5p4quyoXkTrEvH7NmmBGZ9FmW
	rT17mV2p/655WyqMQS3bSIO+ZqP26WbOB9v8OBDVsaVTBxc61xT3Opfp2tX8yXLh
X-Gm-Gg: ASbGncuSmXQTIybJB1ZLAF5/9djJxaCVldIkwo6GYfG5o/84KNJ2Xjg74omcmtrAvu3
	CL5OhHUIWBPbZ7dlsqm6lmAbdJpjybNMvG7ZB0suGx/Zc5V+XebXG6c5qE0D030NoLXclKLi1Qt
	EBcGoUfINAKEqMJMBu1youUQAapWSAb8+j1JBvOcoctO99f8AB31XFv7B8rcKDyNdT/n0fJC1NB
	LuIoJ8ClJZZqhIDpnMCtxD4H9m9uDnkUsiLXGXongAlEBfgarPa1u+Sq3V/IxZXdb/Gf54azoOo
	qDyXLzPjsdHoImb2jJeRxnFydyRyWC4/IkqSCVr1HXI4AkOpLFtZHvMhVViFzRa5tWdj4KjarGF
	UAilGol4xu+//YbXx87J81mu0wZrVnSCOqMUCm++M9qH0Odk6Q0eHTRILjPnykCriX3vsTflz1p
	BawKYGEfUi
X-Google-Smtp-Source: AGHT+IFG4a7Ag4YVE1buS/qzWcn5V+kJD3VEQ2sE7vLu/aDo3YlWR/s1Of/N4f4wSwYUFj8gFkrTAw==
X-Received: by 2002:a05:6102:3a0b:b0:5d5:f6ae:390a with SMTP id ada2fe7eead31-5d5f6ae3f56mr497001137.40.1760015113202;
        Thu, 09 Oct 2025 06:05:13 -0700 (PDT)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com. [209.85.217.41])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-92eb4ea7941sm5025906241.12.2025.10.09.06.05.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 06:05:13 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5d28f9b4c8cso211798137.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:05:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUzjrpdHk+ojEjSs4SkF0no8vgXSFnFsb+WdK6HeYrcITdiIvDvlhASuRayMY9y61oyz4YCvs9oxVou@vger.kernel.org
X-Received: by 2002:a05:6102:54a3:b0:5d5:f6ae:3908 with SMTP id
 ada2fe7eead31-5d5f6ae3db3mr457996137.38.1760015111607; Thu, 09 Oct 2025
 06:05:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251009104500.69787-7-wsa+renesas@sang-engineering.com> <20251009104500.69787-12-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251009104500.69787-12-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Oct 2025 15:05:00 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUXmBgHv7=8NTCJwZguFAKeWyWu9dWkQxa_0kKpBVC=jA@mail.gmail.com>
X-Gm-Features: AS18NWCUrBtX_uO-fi06wEi1p8_gUsISME0n2FhoKXZozrGR11xEwQp2ykYneWo
Message-ID: <CAMuHMdUXmBgHv7=8NTCJwZguFAKeWyWu9dWkQxa_0kKpBVC=jA@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] dt-bindings: watchdog: renesas,wdt: add SWDT
 exception for V3H
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-watchdog@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 9 Oct 2025 at 12:45, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> The SWDT on V3H has no reset bit. Make resets optional on this SoC.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>
> Changes since v3:
> * don't introduce new compatible, just make resets optional (Geert)

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

