Return-Path: <devicetree+bounces-41743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 983CC854F01
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 17:47:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 901AF1C22CCD
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 16:47:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCD0F5D49C;
	Wed, 14 Feb 2024 16:46:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAC0060BB7
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 16:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707929208; cv=none; b=o7yEFtYt1iUMMnUYDDp2QqNw7oV5wwZ9GylNbwci7gJdg1mJPrClharqF3gs24bNJ7aujWs5FKC1HnWxcurV15oPkcNZalxh4diZxTZFWwSqDc+O7QVis+qB5am2W9QIpA6inBFk4S57l2i+KcPwdp/RGgymLwgOLLh99YWtGbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707929208; c=relaxed/simple;
	bh=dY684CAoJU6VqT17b9L8sj7CVCpM2mQCMManSCu2FUo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Gmu0MG4rNCFzsFnVE8eYnXCyoBkhc9qkq77v0gH5YznBGSdz8F6lDBL6UVzlfZ6mm4y+7UYqkfez9b5d1PtHxWeH+3VH2YPDESpuScsHl80jjDUfg3iBBtfuHoRY48FKOK0cytgcqPapXLBAIL1KvKpkBaC0YrM6wZV7sLYkdss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dcbef31a9dbso1989542276.1
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 08:46:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707929205; x=1708534005;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DTTIgCoCwOQIInJuLvBE4wrl9p+fTiO+q4bbZEcWlHk=;
        b=pVOxIYZas4Ig/LEomqcdm2pcF4zpqV5cdcxAidGicOMnINHLN7Lo5KicsL1v7yWUwt
         tLe5p+6nn4Pi+njjWghK2yUe7xp0MGT/qQIJs4whl2LXL47IoDWNkJZs6lMj7MGSbzJ+
         f/7lloXNqz2bHFY/PHWLLSUqi0a/yQYxAtEJHwUvrwWGgVcVjQYxM0Upbwt5mY5mmt0/
         jYkWVSIdxbv0OSQlaS6e2rwj74cVd7wAzhnpVcadTeYc3O5gvnjtOR654SpCmdWasly7
         qEI964+eSExyDGu2AV79K0/+HSROsY/sfDvTN8j1qY+cC4xzksWEU5PrL5TfoBDxaGEk
         FQGg==
X-Forwarded-Encrypted: i=1; AJvYcCWRmqAQFMpvp3Fc/3lvk2+L8iVtMXgfgTQobeTzglhFXtWpYZ/iAYDK9H2tEjHy4x/tNUbewopz/OKBxCSeAoPYSrFExeQXvG0Atw==
X-Gm-Message-State: AOJu0YyhpiIhzksGvDK/A4ZYnsDPAGcdRXOpbLuok86VuXOGnMEqEEUj
	6vUMuKxktZ0H9XrkAl4tpRSto1LJQudbif08AqL7sbDDHF6TaSZtTUJmXWZkHuI=
X-Google-Smtp-Source: AGHT+IFcuacxaxZwcB2JLInAgetb3t0GjUhnYwjoyq3/j8YQHPn/81g1Od+HRTtND13pa6tl/i+sjA==
X-Received: by 2002:a05:6902:2484:b0:dcc:97e4:bc61 with SMTP id ds4-20020a056902248400b00dcc97e4bc61mr3350086ybb.57.1707929205302;
        Wed, 14 Feb 2024 08:46:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXloLyMazTcW5bNk+ZY20kYYNre+LIhGOjI8nfbHe8Nb1YggiXHBEh8g9FyD5QJ0cyGmjs4tZ/R4v8kqQA+5jYjLKZknMNoUR6tLQ==
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com. [209.85.219.174])
        by smtp.gmail.com with ESMTPSA id a11-20020a5b090b000000b00dc727104273sm2122031ybq.34.2024.02.14.08.46.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Feb 2024 08:46:44 -0800 (PST)
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dc74e33fe1bso5597148276.0
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 08:46:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXIaypFJsQnjRmrAzOLuafxKCAf5xf9aHVu4lilZdq8qkHcyGpKJfFopMATzrrXZ6RhoDUrmOiVUPbHNePus33VoIjwmIuokRUNlA==
X-Received: by 2002:a25:bcc9:0:b0:dc7:6192:c688 with SMTP id
 l9-20020a25bcc9000000b00dc76192c688mr2473039ybm.65.1707929204430; Wed, 14 Feb
 2024 08:46:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <3d4b1bbc105ccb8cc0a4ea79b76c70df7d0683e6.1694768749.git.geert+renesas@glider.be>
 <CACRpkdYcyxQVjiMqoUJ1JbOLeywoeDGR8dY+ZLZT1kdmk1kSVA@mail.gmail.com>
In-Reply-To: <CACRpkdYcyxQVjiMqoUJ1JbOLeywoeDGR8dY+ZLZT1kdmk1kSVA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Feb 2024 17:46:32 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXftwMRPRb=U58XTOigo0Q0q_i+6M3hQfLdo88QXd2Ykg@mail.gmail.com>
Message-ID: <CAMuHMdXftwMRPRb=U58XTOigo0Q0q_i+6M3hQfLdo88QXd2Ykg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: arm: realview: Spelling s/ARM 11/Arm11/,
 s/Cortex A-/Cortex-A/
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Linus,

On Fri, Sep 15, 2023 at 1:34=E2=80=AFPM Linus Walleij <linus.walleij@linaro=
.org> wrote:
> On Fri, Sep 15, 2023 at 11:07=E2=80=AFAM Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> > Fix misspellings of "Arm11", "Cortex-A8", and "Cortex-A9".
> >
> > While at it, add a missing comma before "and", and reflow the paragraph=
.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> Picked up the patch and applied it on my versatile-dts branch,
> thanks for cleaning this up Geert!

Looks like this fell through the cracks?
Should I resend?
Thanks!

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

