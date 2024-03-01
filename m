Return-Path: <devicetree+bounces-47584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 478E586DCE4
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 09:18:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0F6CFB26231
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 08:18:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D912969D28;
	Fri,  1 Mar 2024 08:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="pYcN9v2M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529CD69D24
	for <devicetree@vger.kernel.org>; Fri,  1 Mar 2024 08:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709281094; cv=none; b=KnIv4qH0J1mccbsDVvumW8x8OQkgje6Gr0KXvFNvC3CzwWwoyoFGinzWZJ+Krlsl1eOTJtiGMUcOA0+Pr+VCZaMc8bPWqjUvK0C7mlndyiIxydv++aDAz0+dDDWHbvsUJuugYhjVAuoyoJipXJKWK49ovYwsU8QtUHEAXhVPGCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709281094; c=relaxed/simple;
	bh=yp68DEdZUIp6DbHm5jT7o9JF91i5ZA3+8zf7cCaGH40=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qCJc/vctkyt55IjW0rLNoOyH6+ndkRSCU13avneR9FGocMKV20fetmQ6EfI/GrXGMefWlBeuVbNHM7PU/T+8tgtdiisstSHtkeyV2jkqLDML2X9/ExemSODuVNcHtbl0YBO/YeGE/DOhguxQdw1ri/ah8yz0BhvSl5l36WpkJB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=pYcN9v2M; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-4d34dadcb23so474387e0c.1
        for <devicetree@vger.kernel.org>; Fri, 01 Mar 2024 00:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1709281092; x=1709885892; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yp68DEdZUIp6DbHm5jT7o9JF91i5ZA3+8zf7cCaGH40=;
        b=pYcN9v2MFnr+htNsmgg76MVJkUTQPC8qdovJrex9a8fus63Lm4KwlesmZH+WqfGoJZ
         E9c4HbZqv7hE9TtpuaiTVQkjLee5P3eH9bI+W364kdjl+144FclYhvtex6NGt7XDxIja
         qA0LcRsjeuElviSQt2y/1/4WSbjnbLKbPTAXjh0lJr8SFtqEAaxD6O8WAMDQUgFs1nGO
         N0BUEU97MlrfPW9aI6CIeBeaub3YyGQfXyVWxRORDi/hpeqlTVrF0i8Fh5QaOfqgXZj5
         TW7AKGtdo6nAoEgxL4lSz5b2VxV0i/qMygbk+WTuFMzOHFRTdJTfYaq6E2Gpn3YpHdA0
         yeQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709281092; x=1709885892;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yp68DEdZUIp6DbHm5jT7o9JF91i5ZA3+8zf7cCaGH40=;
        b=tN3Ry21S3QQb9+Zebwi/sJcL+ruD7j5nRlo6mzdt01Jrod/CgMWmuRXuSQsIdlG+lf
         7pQhieQnpCLiQMCc5N5fQhrTk0bwFPMpLLZPqf0Cj6bucjBLuKW7V5dQXLD7LqqUho+F
         1LJOtckXCmlfQnaxK54VQKr5pdPIX33ewHVa240koqfC1uOJImbf2xbB4BCBc6QbQD7G
         tYBRWirdex8NsEn7GUaZCDX0tA9tgLN+xr64YRYUngsk6SHmcYqOEdHDAhssH0Kp23wX
         wNybMtddY5Ye5Q7hlhlKuAMaSEGxNmswCMngjamLK4efRy01WhsmInx3dWMohc4LqoWE
         OKIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHp6dwT3h6ckCId/ltCue5QiTkVFSZc/e227PJjDXShdhu8PLh7Bs17rWKo7WsdLFli+zw5LQDkAl0OWtbPtviGSAdLtJ2nTH59Q==
X-Gm-Message-State: AOJu0YwWq+LKO5DtWy6tX4UeiSLVCtGmR8ziRApV858D3vOAwmAwR46c
	i1v0HbCnkXmTWqKhEQ7r0Q2DUAK5hc7hIgVwmUpow0cuyprgcg9r9dm0C9LTvVcQ1ap01VCIVyK
	7v2310GQMRcBlJOVW8IcAwgaY4/lwknws2yveMg==
X-Google-Smtp-Source: AGHT+IEhwqISmIJ5HCe1Nfu0Bnq1Pv29jU9DH3Pp2yv9SKTj1rghbwGyjrDqQbRbf0cdwpde2nH0FRgUZpSk6SGKDXU=
X-Received: by 2002:a05:6122:1aad:b0:4cd:b55a:bb0d with SMTP id
 dz13-20020a0561221aad00b004cdb55abb0dmr704388vkb.2.1709281092151; Fri, 01 Mar
 2024 00:18:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228003043.1167394-1-andrew@codeconstruct.com.au>
 <c2060450-4b76-4740-afe4-d14717245f01@linaro.org> <16ddd99007176da3f84462de217cb76c8fa4e1bd.camel@codeconstruct.com.au>
 <CAMRc=MeEyo7y-G1saydxtTRedNtHPaEeLANuzXt6KsiDU2jOWw@mail.gmail.com> <e55aa1321ccac8e6391ab65a5a439b49d265bfce.camel@codeconstruct.com.au>
In-Reply-To: <e55aa1321ccac8e6391ab65a5a439b49d265bfce.camel@codeconstruct.com.au>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 1 Mar 2024 09:18:01 +0100
Message-ID: <CAMRc=Mfa1uUhkPNpLdcMsGC4=G+_MGzaxXRL7UVdfKJD_zF0+w@mail.gmail.com>
Subject: Re: [PATCH v6] dt-bindings: gpio: aspeed,ast2400-gpio: Convert to DT schema
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linus.walleij@linaro.org, 
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, conor+dt@kernel.org, 
	joel@jms.id.au, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 1, 2024 at 12:23=E2=80=AFAM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> On Thu, 2024-02-29 at 09:52 +0100, Bartosz Golaszewski wrote:
> > On Thu, Feb 29, 2024 at 4:21=E2=80=AFAM Andrew Jeffery
> > <andrew@codeconstruct.com.au> wrote:
> > >
> > > On Wed, 2024-02-28 at 08:47 +0100, Krzysztof Kozlowski wrote:
> > > >
> > > > You still have way too many examples. One is enough, two is still o=
kay.
> > > > We really do not want more of examples with minor differences.
> > >
> > > Noted, I'll keep them to a minimum in the future.
> > >
> >
> > As in: I'll still send a v7? I can trim the examples when applying,
> > just tell me which ones to drop.
>
> Ah, thanks. I wasn't planning to send a v7 given the R-b tag from
> Krzysztof for v6. I intended for "in the future" to mean for patches
> converting other bindings to DT schema. But if you're keen to trim some
> examples out I'd drop the aspeed,ast2400-gpio and aspeed,ast2500-gpio
> nodes, keeping just the aspeed,ast2600-gpio example.
>
> Andrew

It's ok, I applied it as is.

Bart

