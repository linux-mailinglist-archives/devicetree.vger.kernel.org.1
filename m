Return-Path: <devicetree+bounces-221483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 935C6BA03EA
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 17:22:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC0042A08FB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:16:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 670EF2E1EF4;
	Thu, 25 Sep 2025 15:16:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D066F2C21E7
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758813405; cv=none; b=bp7Z2Jb1/y7HyLE4e0SBSh8rC5RjMuAG8rk91Wq2FiUsa6E7ps7YYrsnESKr2fF27EqWsoFC638YshYjFRXarJxBxCb+2IXxxm/5HWQRvangdn8rlqo2/A0riGUtC3Gi7newmf2a8nTXiGfvS2C0+7zcTaCVVGJS993vxbHwdMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758813405; c=relaxed/simple;
	bh=m4v2PJnZTWFcPM4vwV03B+DdPrjczoMLEbCJNH11ExA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L+f38YLkUmyvKclBJjnlwmXeU5uhXdQer7pz2+YwGYM/MW473takByiiZkxRdnrFbSsIbv/fab8+WWgpG6nU41bQD5Ht7p/CnIO/mKmXNciELImubIFQBeFGTmY4fJ2kXp8puKJVS6RbNly5pzycGd7qw0cuf7u7fC0K5cwRheY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-59d576379b9so579674137.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:16:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758813402; x=1759418202;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=95UeH5Wrdj2nWFDACiTCmJA7K9iWHeQl32Wj8GxRyR4=;
        b=sSQBvhM74WMgRNgvhZpBQLn1oGLt2rSCMexlQ1NDJH1dBnIq4gepx3wKxJxsY2RL6M
         aBcmYqp6YKLymKMcZu2zAPP/h4215IGD2jB7+9uw+weka2qPalrnHuEBo3WDwVPLK3yK
         hloXTrJho0Q/rEW+uF8jl5GRght9TxgQjiu47zd2MNjlMhs2gaTqjrV13xgd+os5syvi
         QXX+w496EBaBk4sEfwIQtz2lSguyCNqhTjSnLgWkAJZHIatw5diipJ9flZ8NxB+o6Mwz
         1mShATRe5ch701GOvmbAYZ1vE2iR/BriQjdWFikRgzWVlXCLPbDGPgAd8nBcfZwTFzDW
         FzYg==
X-Forwarded-Encrypted: i=1; AJvYcCXtfUCOfJPYbtJvU/cTIIZLE4e6rwR8+GEVZjM0c4J1PcItlxebjeFFoUF7BvIDm4uwQbpQJZ16HWIm@vger.kernel.org
X-Gm-Message-State: AOJu0YwuyLYL5/KpKD2duVV2jHq2M20JSgElbr5cVD9x5NjyBbS47/dc
	CrYdk2+EZ4zJ9dFmXox3a2bNIDuLGFRKbuyl1lAg12y85qFzWaiadIHYBZ17l9jQ
X-Gm-Gg: ASbGncsGxsMIGZiap9f8Gjpu2Q3vmwmORlFlUbFMjsc1u+voRGWwWZjWqQdszID5Ktf
	uQViBsRV3tdsTWfrQ9RbbeSGLGE3M3Ys4fLbrIxtcLFpCz9IwWaxg/OuAozSGelScdYAS4CzMu9
	0Yo1CYJrUfVSiT7zEZcl0GjnnFkUSlZ9JDknw1HuZECjy2lpFZU4AglWRX4j5sh9NCxoonvi4UU
	YDRgvKZtsiwDs9FUOifIaoWUGBUs/eQxwnmDlQId7w2bzR4O0oHGuMvhZ2Cj3KIxYt15g2RLpES
	Vw10ayQ9SeyJgLWE2fEsusSVbA4EmYeDTRuHhk8UTJnPCLqOMwRQ0SUAB6mdyVtjCj5EufkzqWt
	ltvBCDbjkwjovq2fJqZmf90STK85WLlCC9VCgr8d9/ncJ1V36SeIufIuLtm5O
X-Google-Smtp-Source: AGHT+IESBOSf55tftO5L9ymMME09EHRCW7IRXifH5Fh9AgksMhWbQNxtydW+f0qVMBJBzh9HfVS3zw==
X-Received: by 2002:a05:6102:161e:b0:4dd:b037:d239 with SMTP id ada2fe7eead31-5acc6fc48admr1519177137.14.1758813402332;
        Thu, 25 Sep 2025 08:16:42 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-916d17f8d25sm442241241.8.2025.09.25.08.16.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 08:16:41 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-52e6037a484so324259137.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:16:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV41Kh6N0al8RYtt/1yFHk3g+cdFa4GJW15VCFgz20utabuh32ayik5vcw5yN3tGExzpCJbNXF1XcLx@vger.kernel.org
X-Received: by 2002:a05:6102:d90:b0:59c:5e29:dd8f with SMTP id
 ada2fe7eead31-5acce75ae4fmr1755148137.26.1758813393977; Thu, 25 Sep 2025
 08:16:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250907161130.218470-1-marek.vasut+renesas@mailbox.org> <aNVbEvSRCpQSXT4W@shikoro>
In-Reply-To: <aNVbEvSRCpQSXT4W@shikoro>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 25 Sep 2025 17:16:22 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV9N-Q4uJXMKg095LD-mFvZv_yU_5jppZM6TZ3xh08zpw@mail.gmail.com>
X-Gm-Features: AS18NWDEqoQdloQzIjh0wjgWDVcokcQ2jeIfuog0D3JY4DANF_f6TtXyGtHRpVI
Message-ID: <CAMuHMdV9N-Q4uJXMKg095LD-mFvZv_yU_5jppZM6TZ3xh08zpw@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: renesas: r8a779g3: Add Argon40 fan HAT DTO
 to Retronix R-Car V4H Sparrow Hawk
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>, linux-arm-kernel@lists.infradead.org, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Thu, 25 Sept 2025 at 17:09, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> On Sun, Sep 07, 2025 at 06:10:53PM +0200, Marek Vasut wrote:
> > Add DT overlay to bind Argon40 fan HAT, on Retronix R-Car V4H
> > Sparrow Hawk board. Fan RPM control and full RPM on reboot has
> > been tested.
> >
> > Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> > Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
>
> As the dependencies are in, can we have this patch in -next now, pretty
> please? :)

Only after v6.18-rc1...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

