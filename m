Return-Path: <devicetree+bounces-249123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DA8CD9640
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:01:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95741302D5F7
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 394EE33BBD5;
	Tue, 23 Dec 2025 13:01:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B8833B6CF
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 13:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766494860; cv=none; b=A9avAXneRt1qy2FohjbKNMhgYBkVFVTO5xMJ/Diq/bSmOSLcaPfNcvj+LR3cExV8pmZbd6s6Ymp6nFaoLa7+iJ+EsAyTr8uSyGt1GHHBMdLzxWE7vCWdO7VGnTEKIEys9HotAvBOe4Gm7zvlVN05ybs5RseyNHWGQ6fr3zY9ikg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766494860; c=relaxed/simple;
	bh=HEqsK9Z5r2vHLwE1iRzi4qqy0StklJQS/KD1cB0QMWI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lBbZo39Myw5cFX1lomMuZoZ1j6oJRGeY3I4ilo5zm8MO1Zpt8dGj7WZfrmPFa7IigMIrKCpBBWgU3hFDRyIFhUYVJilA+EK/we2dYhLt2K+QzuFczPvgFB275Rq4vvJwmKpBn55wpGeuaS2n6FIWA5Uh4MPuP59+McsT2vuljuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-55b219b2242so2753071e0c.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:00:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766494857; x=1767099657;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/MpJqkv6JnZsSqSn+n7d/g2Gjy+SF5KqOdVd8mQ0/c4=;
        b=CIfJDEroLauvyvL0tLhGzwgD573+mxp0VPobOP0tjNxLR151pC8P/Dt5lf6/ibGAwI
         WEzMcHSSjA6+T1fqQ/bOW2p3p94JaqWbrbc+3RQ99ciExUMcgfl/DMTE2idQXTh9QRME
         3oWXTocZPw1LoJOWfMcBmW39CGS0LEEMzV3CtLISZbWDjMNL4rRUKFikoOPZZD8cHgsm
         LpDxdbAEl6MECRFv9S3sf3bKYaySt1BgqKiSZCyk6I4s3FzPRIpiWs4SNB20vRyQDHNR
         0pQFjzTIOvKWRC1Lpmp0dNi7ADsW3PZeLY4hzeOE61iP5r3SuKuqWRfGWQA6l9TdQp5H
         0FOA==
X-Forwarded-Encrypted: i=1; AJvYcCVl7Cv3OzsjSRJw46lrDQ9QLJv6r24wlUQRrgqqtcbHmTpIU0Q0cd81Ar9PblY4crg+IP1S6ptMU4yn@vger.kernel.org
X-Gm-Message-State: AOJu0YyYaddlhKv4iyXRgoXmmoSA1BZJ9yEgXcKuVtpy+kYytJKlPIXM
	8RpqULN7S32gWys2OM7Le+olD83auxKSLEOq+PCz1I9SMLffgLNPTGUXI4Sn07YW
X-Gm-Gg: AY/fxX68QU0YUI6gIEbvCzH+g8feeYuB/TIUZqOQdAdUUrK70JBpeHLQJtLJoGrjaYv
	o4fxAODeGvfm+aO6fy3wd4MY3oMP/hW7GZLq1d/UtEn7xm6bnGLUzQMo0Hl0+phq6WVwzASPPmt
	ogiB6x6bGBanwkIYRbq3ZHknKrEsLIkCJADCSk98P7WtPiYSqkLnL6kPHeYhIpGJbPHq2mJZjsg
	Ohx43Y9X45Q78g9nIeujeS8GJh7hk46633GqpEGDnpxS+Rua74gQNBZtRj8JmpHIqCh8693MWha
	9FTxUzSqx97LSy6JCznPPKeMPuIz3A1L51Nax/jGxfWqroWJUb1gEBGjFMROnoaAwzXFv9QrEp+
	rGSggY/TydWQlKnLnWmZXCJZWYWFH6krEVRdRTI1b78Q1kWZkjhfMTyXbNL1mUQH6EZLJOUGLZ/
	I9LkejUFS4jfQgI3XzVkz2zreaEKnaNjfqgfj88uh1dDoJsawL
X-Google-Smtp-Source: AGHT+IEmQLwoC86t0fMpYEUfz1wAngkfmUTG4/HgK7sM5jrQevjSBENUgx0ImHwVofTXIj2EO9eXbw==
X-Received: by 2002:a05:6122:3197:b0:557:c734:ee5 with SMTP id 71dfb90a1353d-5615b8a7c5cmr4688753e0c.8.1766494857514;
        Tue, 23 Dec 2025 05:00:57 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d060bf4sm4647944e0c.7.2025.12.23.05.00.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 05:00:56 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-93f5910b06cso3020828241.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:00:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX8Qo4Ek97BjA5HKA3ilh0pxR9IHhBXfEzt1jPCi58nNjRvpUVsws6KCd29ltOx29/AR6/3O+9GR8GQ@vger.kernel.org
X-Received: by 2002:a05:6102:3f56:b0:584:7aa3:a329 with SMTP id
 ada2fe7eead31-5eb0237d7f4mr6920137137.4.1766494855771; Tue, 23 Dec 2025
 05:00:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215034715.3406-8-wsa+renesas@sang-engineering.com> <20251215034715.3406-13-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251215034715.3406-13-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 14:00:44 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUoac1SuzScWWPhZE4DRbwFZfBDKGmwFTJDkAz71-QYJA@mail.gmail.com>
X-Gm-Features: AQt7F2qXq1PzsVyFuQ5E9Y-8C4pfdYrXjw5o8VSen6X8c48D49kFrgPDyscXgmE
Message-ID: <CAMuHMdUoac1SuzScWWPhZE4DRbwFZfBDKGmwFTJDkAz71-QYJA@mail.gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: renesas: r8a779g0: Add WWDT nodes
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Dec 2025 at 04:49, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

