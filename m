Return-Path: <devicetree+bounces-253655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8A6D10296
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 00:51:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65934303C9B2
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 23:51:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9A3F23FC49;
	Sun, 11 Jan 2026 23:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jYMrcqyq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23517199EAD
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 23:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768175497; cv=none; b=OaGiXedv0rGPbhQxn680eVUoEREjQ7rk8hBhIW0r9c/5mEi4NvGFtDcIVAA1I4KGy5ZaI6cJIRXHHIeTCEItU9i6ir3ED9jelm7KB0E1R7E2gILI7AV4sYzr6ldOz0/IW++G+Euqhfw8ColXq/eAVNWCi2r3xVqJGqLiIjgVZLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768175497; c=relaxed/simple;
	bh=wgI1Dg0jPOPFJlc1k2M53E5Velpu4JrQXL044O8LN4o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tNixRMDfMuricMVojA9Em8ukXN1ICCcW+EhyoJ1qtH6FCVX1YUDzpulIERUvVYdNn2raZxEBBKEGlxxb2Tfk5yHiZpAkchjR0E3RAF5n4QcxzupvjI+G4STUFHnu8NAfKCLEKpinwVO174Jx1Lp7ZPHPN/Cddss3KVk/DuwJFGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jYMrcqyq; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7ce229972f1so5480868a34.3
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:51:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768175495; x=1768780295; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D/ENBQX982lICCo3cjSQ7OsIstGG9Mk6/7pP55Ji4uo=;
        b=jYMrcqyqSGRy4sAq7KbadidJl88QbspQp5z82o7Q31zF87bSgL+ntzU09T8/cxHsJ+
         4lI7lkm78mZGTSLOkBulKcdK7niQQKABNe8DpCyjdOC39M/Il3ovHs1Lhh1hl0Cul4NY
         qOXvyyy5w+ewseZiaJ2iWQiu7zUakbkj8QXHJVxDiK4SPjacOuaZt+FIz9JNZfBwc3D5
         wN2ApJfaO/r8y0ouP14u5tIVoj1zl2Bj9I4cTERoJhVDheKwnt95QQ/XOEKC1FvQVU59
         Bb/yaJz28kfZTXfsCAUV1nsN/5yVJkeMnlzFubBq7ZXMTQjyc4SvrUEsTfnuDtEyA+GC
         gfng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768175495; x=1768780295;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=D/ENBQX982lICCo3cjSQ7OsIstGG9Mk6/7pP55Ji4uo=;
        b=APKszzi3FLkSoUnpxLbx8P9y6Efjd/wbmEcPVPWzQFvPWuksp16mCJ7FYXGq3P3H0/
         iCrHzqj+2BQCyAADhB3Gzao0OyIe4FxSxR7zAyncXqyuHT4zmCoc7Fv0hi87VZsrEGEh
         21Oy8fhv8NbYUef/DxJRHmTEuy88pammQRtD3Kk7vi9MCFerFK0J50bvdN1tLyDIVbhu
         TwPalwjZIap+bLUBrZc5idqmVPgp1aXc3xM6OxfCxKWf2PE21Vqy4Qw2/G/85DgI+WOw
         n0gp+2HNqi+dChaCzigxTcqKs2gBVlviX6/RyDtpLkUQLq7UWYylNF1c+FGvbE3m+gax
         ypmw==
X-Forwarded-Encrypted: i=1; AJvYcCW62iVdGF47qgaFGzVhRcFJLV/f8AXviZZobHgdTuzIpFhg4enARqI9PsOkm+NwJ+BUW2mRMZIPjeiU@vger.kernel.org
X-Gm-Message-State: AOJu0YxqHOYVA5IMHTX6MYXgUO/XE2f734dZ2osU6/CxIi0c7iy0NZP1
	GDIpOhy3qc+CgpkHy16AO30FUd2hXGadNRVcwuuaPLz3PKc1t3YMwO8OrG5I18CStXXEgInqi0L
	Z69Q3KevZx6biIbXVPY0p6opo8B84vdV6QLkpy80=
X-Gm-Gg: AY/fxX5yb5L7MaZQAoVEZGWgRWNC0U3zHVmxGpEn6ZgLM6nvw4C8rq5dejYNA8KAmZR
	lzq1djB6SvORHLQhROkZBNfYJ8fNKxFXIXRFujpTCdogmCYJHviZcjNgHgrYY/U+5t/zky2okxP
	fdss0r/z3jL676ZbTDYVQ7VIJ+O8k/nqxRseHh+m8hS+R4Wy5xXpGq7BGxFREKTC/0yiOeNwkjv
	16T0fNShnfPLqSiuVslVehxlhH2+1xjzNngWDrI9OcBKYn9FFYeKeJHQVrUdKIrq3ow55yl9Vbz
	q4v1r8e6GcvSjRFtWr5CZbglB3Y=
X-Google-Smtp-Source: AGHT+IGlge53U08ebFfe8r244rsrE6CkWTn00e+I2aSY3bW6BvjGm0i6R4xXCnYggHKHg3FXbw80wZStXmjolJVgDDY=
X-Received: by 2002:a05:6830:4111:b0:7c7:6c9f:bb06 with SMTP id
 46e09a7af769-7ce50b7b138mr11464374a34.16.1768175495062; Sun, 11 Jan 2026
 15:51:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
 <20260110010715.1610159-2-mschirrmeister@gmail.com> <20260111-melodic-chestnut-coua-73e6ec@quoll>
In-Reply-To: <20260111-melodic-chestnut-coua-73e6ec@quoll>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Mon, 12 Jan 2026 00:51:24 +0100
X-Gm-Features: AZwV_QgRXlN1CiuRYVEhXNkMAqD9Aoc5N6ROQBHLSJhP77NnrQn6dbThJj_qUMM
Message-ID: <CAGJh8eAWNe0JzC7BdA2Rw5etCYgGq3O5Zdgk9zSzsLNv18k=ag@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] dt-bindings: mmc: rockchip-dw-mshc: add rockchip,disable-runtime-pm
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: heiko@sntech.de, ulf.hansson@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

Thank you for the feedback.

On Sun, Jan 11, 2026 at 10:41=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
> > +  rockchip,disable-runtime-pm:
> > +    type: boolean
> > +    description:
> > +      Inhibit runtime power management. This is required for boards
>
> What is runtime power management? Like Linux PM? If anything phrased
> like that is it is a clear no go. Bindings describe hardware.

You are right. This refers to the Linux PM subsystem and describes
software behavior.

> > +      where the bus timing becomes unstable if the controller is
> > +      runtime-suspended.
>
> You described the desired Linux feature or behavior, not the actual
> hardware. The bindings are about the latter, so instead you need to
> rephrase the property and its description to match actual hardware
> capabilities/features/configuration etc.

On this board, the bus timing becomes unstable when waking up from
a low-power state. This causes a constant retraining loop.

I will move this logic into the driver and handle it as a board specific
quirk using of_machine_is_compatible("friendlyarm,nanopi-r76s")
instead. I will send a v2.

Best regards,
Marco

