Return-Path: <devicetree+bounces-139989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5569DA17BAC
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 11:29:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 747383A6A89
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:29:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D4A11F03DA;
	Tue, 21 Jan 2025 10:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b="TodriPTU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449831F03C6
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737455336; cv=none; b=HVF16Js7Hyhp4+N1B/yblPkqNexV7iOSw7fNjPiwZwGS+gvi4frrOo7Bd14m7LJl3SNfKnGvsNRVQ9mQDxwwZkoXSHSGG9m2tJXx92d8MLeY+h/5M2TG73pdH9TaW7AMZI8/e01vcsaAvOCTrqrXrnmmupP3Hc0EXEawpuC0um0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737455336; c=relaxed/simple;
	bh=Sr0sCOcX7uHKMssv62r3hF336fh80SYkMIuY/VEN81w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VIsxGhlfT5X7Ad3U0mR+d56z2LmhCj4WIeoMug1U/2BDovmnFWTjjsTzvumY/EgppsU6Q8ny20ON6eB+sBQRqQUXXfeyYpYSo0LofV4x/ErQ89GkGkXBIrQaNK9rTUf/N5I2K8EigYF07tcjoHAOjYSucdtkmPoi6cHA9h4NAE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com; spf=pass smtp.mailfrom=thaumatec.com; dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b=TodriPTU; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thaumatec.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ab633d9582aso208842966b.1
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 02:28:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1737455332; x=1738060132; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Sr0sCOcX7uHKMssv62r3hF336fh80SYkMIuY/VEN81w=;
        b=TodriPTU/M+VUDtY2/6Ud9eTJS0MRwBgry5/kr/7NdcI8NJDB8nEurDZWqMT9yn3zp
         scgalJ4Wp/IIira6hyO61pKeHsHz3qb5aRoUundSh6fQJYz+Y0CsE/t4fW3bGxpM2rkC
         fIgqNfJuX+Pf+HgFyMjyIS5ArGq9mrag5v/Kp1p5sYBBwjLKs/MEHzOgSxQbQC5kl8J+
         mvyzEg1XvxV7hxdGVpIAAUjfsoFafUcfJK2Yu6mrfT1W2id8DK6hOPI+GMP/wx4Wwzcg
         K06DBzDt1zQeaeX0JVNQYrWHoDzhnXCBhyYLx997WI2uElrKeg/DRR0fzQFDDObC+LGP
         ivIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737455332; x=1738060132;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sr0sCOcX7uHKMssv62r3hF336fh80SYkMIuY/VEN81w=;
        b=d6jMKHxmdLS+Ij3H5N++7HD+GycNgVIhop0AuoBGcHaO+JePHtC4pUbu8BjquBarrD
         YL+HtBMsWKmWwbX8KnEinpq2lEnONbWf7u8Kf/WBhxIsNudxHG6GGjrDtuWhRym0GZJN
         oJgDw5nFZ9Tz698vv+z4vkq3sTMFwrjrjnurYfXZkMX0VXGJG95LHhgK1FfEFJsuMdRz
         4enNX5s8Aaet2qy9JNQPPS/ZZKVXwZCsqxohFJP0BR5NKRGUvZ7JtrJ9s6z3Nm8qi0m9
         fgHISfP2xWzruBe5G4rPY4jn4adm4NdzOCnddF7+zezSPtx+5MWDE+cQYhwpGoYCcYkK
         4wEw==
X-Forwarded-Encrypted: i=1; AJvYcCWJzQrf5U7JG+EDr47q6YT/C3JBWLrU99hONtWqdbKT9iryuIs6IfteorWRv+hjtzNImz01CYlg30v3@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb1zhiUS6+Ein1sBwfipV34vauHiUWLgbyAO1CQun3sfWIDxP+
	u42ovx4MSSP+gCJYq+MrvyOWi0r+8IXh24v2ImsYZ9SpbJaNogBKIapVlxbLrd6C3AsSMZCxFsI
	+Hx+H43Tyj/iYofOigVDHstYWLGC1hoCJcPTDpE6lPsbsHmqeGGM=
X-Gm-Gg: ASbGncuERjiu34bXFs126Jwt8TsxlOr3emVqec+WSLzh4IY3g/LuXTdo71Ds/IQ7Z+U
	HZxx++lCSconCO9jbvysmzY76yIntudN5+4ThXscISi2Flws=
X-Google-Smtp-Source: AGHT+IEcsLPaoNoghItPAJ5Bi0M9AGwAezLgRPxEZ2srqEeLZMEDrHzM4WtrrsNk9nSAiLHw2juwxr/qVGZCXKm8D4Q=
X-Received: by 2002:a17:906:7953:b0:aa6:6885:e2fa with SMTP id
 a640c23a62f3a-ab38b26f4acmr1382334866b.14.1737455332458; Tue, 21 Jan 2025
 02:28:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250121092255.3108495-1-lukasz.czechowski@thaumatec.com>
 <20250121092255.3108495-3-lukasz.czechowski@thaumatec.com> <2be46f44-6c81-417b-b0b9-7325cb0f7c10@cherry.de>
In-Reply-To: <2be46f44-6c81-417b-b0b9-7325cb0f7c10@cherry.de>
From: =?UTF-8?Q?=C5=81ukasz_Czechowski?= <lukasz.czechowski@thaumatec.com>
Date: Tue, 21 Jan 2025 11:28:41 +0100
X-Gm-Features: AbW1kvbBRHTdZcGUKzENwwtfueprpEt6a9kFTwxCgS9D6yxja5shI7FMHmjn2FI
Message-ID: <CABd623tHh07Nb7KVjS_GJ5OqfjF4kOUKsSKNKA_HcJbLG=WBiw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Disable DMA for uart5 on px30-ringneck
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: linux-arm-kernel@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Quentin,

> On 1/21/25 10:41 AM, Quentin Schulz <quentin.schulz@cherry.de> wrote:
>
> Hi Lukasz,
>
> On 1/21/25 10:22 AM, Lukasz Czechowski wrote:
> > UART controllers without flow control seem to behave unstable
> > in case DMA is enabled. The issues were indicated in the message:
> > https://lore.kernel.org/linux-arm-kernel/CAMdYzYpXtMocCtCpZLU_xuWmOp2Ja_v0Aj0e6YFNRA-yV7u14g@mail.gmail.com/
> > In case of PX30-uQ7 Ringneck SoM, it was noticed that after couple
> > of hours of UART communication, the CPU stall was occurring,
> > leading to the system becoming unresponsive.
> > After disabling the DMA, extensive UART communication tests for
> > up to two weeks were performed, and no issues were further
> > observed.
> > The flow control pins for uart5 are not available on PX30-uQ7
> > Ringneck, as configured by pinctrl-0, so the DMA nodes were
> > removed on SoM dtsi.
> >
>
> Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
>
> We should backport this to stable releases too, so please follow the
> instructions from here:
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#select-the-recipients-for-your-patch
>
> Essentially:
>
> Cc: stable@vger.kernel.org
>
> in the commit log and we'll need a
>
> Fixes: <commit hash>
>
> trailer as well with the commit hash of the commit introducing the issue
> (likely the one defining uart5 for Ringneck for us).
>
> Considering that UART0 CTS and RTS are routed to Q7 header but only
> usable when Haikou exposes UART0 on the DB9 connector (via the SW2
> switch), which is NOT the default state (and in any case not supported
> by our current device tree), I believe we should make the same change to
> the uart0 node in haikou dts for Ringneck. What do you think? Can you
> send another patch for that one?

It seems that in case of uart0, that is configured as kernel console, the DMA
is not used by the kernel:
https://lore.kernel.org/linux-serial/20200217114016.49856-7-andriy.shevchenko@linux.intel.com/
Which is likely why the issue was not observed so far. However it might be
good to do the same change to be on the safe side.
Should I extend this patch series with the fix for the Haikou device tree then,
or create a new one?

>
> Thanks!
> Quentin

Best Regards,
Lukasz

