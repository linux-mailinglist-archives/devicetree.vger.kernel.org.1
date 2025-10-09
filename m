Return-Path: <devicetree+bounces-224951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B503BC927B
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 15:00:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6D0EE4EEFB0
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 13:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EA182C159D;
	Thu,  9 Oct 2025 13:00:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA781339A4
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 13:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760014833; cv=none; b=M26ZLssBY07JUuhV7heAHhV+dvN0zXXyVyaWqoQM3M5WXW6gFoJ+xDu3J3K0seNTlkKLabVtbAAjZPLC9gGjJPs6BqSNHw7fWL/OsBuGfLLHQZ+KZp1MsCgiuh7818HukpITB6ReoWKD2ivglpYm+70gNtm220XC4Mgtl/qYAiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760014833; c=relaxed/simple;
	bh=6u3hExo8BaFPYnHeuKnQj7DLSLZp25d6G7VihlvHxCc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YePurZ8YQSuJOeLgsShgwwWVys7Riat0GEv1GAjWRbN/3sDWnjaYjSJO+qyKd6xKKZAdqAwZXyHpVPX2NW2PDT+sI8I7/MEXwM/FDnqX2m6P3ZEMHM2faBSEw+pFe6fjfBafSKhMuXZE0PzMtb7RTsMArjpDnvMUKcuGdSnNmqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-8e936be1359so531005241.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:00:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760014829; x=1760619629;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eotha7xWzuEbV2GrcE4HgLJOI5Q7DNyYVipBin0aoCQ=;
        b=CBPkutTeFuHt96EvQgToBNaYdTevLF6kiZR5mb6O8RsLXLlNZfW6i5tk+8jG67BTzO
         bTplzkNoCpUGNG3z4kj0rKeeZD0p4jSiVcKd4b1/Cja6nz5xqW6F1MZIrts/msFTyXJW
         M3seWx6c1pz1motn7UQS4x7RL7rCMKTviRerIarB0bOaLQ5c7eB3E4OOdgTVMN8x7Dv7
         x9KPHBEShLfVVEpWNM0UT9LNS6MzkPdR+oaaS1Hbia9+9OlmTAfZRQU8iOQ5jLCM+XIJ
         H+kwCX9EPyKQGAhiZnSqQsZd1//1zQnjZSBbwVtQk484Toj9BO8fGHbMD8DUll71I+xN
         bANQ==
X-Forwarded-Encrypted: i=1; AJvYcCWyQ6x9Ix8th2qA0nouENw06yIFL3JXORQXqEsKHd9VgD4qQfAwk/QtXZFrY55ZeftS7QcnJ0JCQRlW@vger.kernel.org
X-Gm-Message-State: AOJu0YxxhK7rBguC3wXv71S1Ygu1asWNWoeobDJXVrZ/wjrVVYoT34Ph
	9d3f1u/GKKUfyfGGsdSNvCOlaLtBUIEwMFYuhyxkDe8tJQVfh4rLZjb8ZZgwhuct
X-Gm-Gg: ASbGnctD3w9OCmU6FEeaH+tg8+Qz1AxV3BqTu++oVOf4zKklWLCQHJwa/n8C5rn/Cdq
	Zqwz2KvF9DornAAil+FsAOKidI7iVps3vGe9ne4AdWFFC7HYCWs1pehHMVb/Z1ETmCNSzthpWJk
	9OlIzyik3iNerTdapT4ajAh+DSPpHj2iPELBUVD9/fpt++VOvS5/firC0En7qJQJQvB/cHT5h9Z
	X6glNM6TZnFeG+tEn7Yjr64L96h7z4zogqeld1uroTnbL5aWeWz4ZWhdsZ8MTtNsZJYmzSYdbL2
	sWIGMsuOVS+M61WuPUmdG+/HAWR41f0eh6Qk+q5Dg7iytyqxB68qBFo+JYM5p6MY0ColTfGTyLJ
	ZhdQ1h8j04qgQdPrbwgedXzeWD91S1RL9VyUi+y//kXbLorXNDnCoieAnuEE2vVA2tehoaAPrfc
	50pHk3wWWMJ2CLDAOWtMY=
X-Google-Smtp-Source: AGHT+IEPVd9kCxwkRY4aAyamG6/iK1XgWtPSyNXgKOcyZIf2vLaI2ATzB6M2RrfA1VEbMM4aK6sqQg==
X-Received: by 2002:a05:6102:290f:b0:5d5:f6ae:38f4 with SMTP id ada2fe7eead31-5d5f6ae3ec7mr423902137.43.1760014828678;
        Thu, 09 Oct 2025 06:00:28 -0700 (PDT)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-92eb4d83c45sm4814192241.4.2025.10.09.06.00.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 06:00:28 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-8e0c90cac25so588060241.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:00:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWYVSV6+xKjN0uZ9dfx/3TUJ/78bu5mcHRNdia9yYfgoZrKSFyJZfg9QzGE7jiN8k2pceuCfSfpC9/4@vger.kernel.org
X-Received: by 2002:a05:6102:5ccc:b0:5b2:d28a:8937 with SMTP id
 ada2fe7eead31-5d5e226ab38mr3410054137.12.1760014827953; Thu, 09 Oct 2025
 06:00:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251009104500.69787-7-wsa+renesas@sang-engineering.com> <20251009104500.69787-11-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251009104500.69787-11-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Oct 2025 15:00:16 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWa275FOXW0esEPo40wXxy379XZfvv8DZ1Djj15v5BYsw@mail.gmail.com>
X-Gm-Features: AS18NWCp4Dgt694yDYCJKQXwRm4FIe-wfRRX6CYajTay2WubO0THp0YFg2rjuFQ
Message-ID: <CAMuHMdWa275FOXW0esEPo40wXxy379XZfvv8DZ1Djj15v5BYsw@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] dt-bindings: watchdog: factor out RZ/V2H(P) watchdog
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	"Rob Herring (Arm)" <robh@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-watchdog@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 9 Oct 2025 at 12:45, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Renesas created different watchdog IPs but they are all handled in the
> same binding documentation. This leads to a lot of conditional handling
> which makes it unnecessarily hard to add new items. Factor out the
> RZ/V2H(P) watchdog to make handling easier.
>
> Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>
> Changes since v3:
> * added tags from Rob (Thanks!)
> * merged the two if-conditions (Geert)

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

