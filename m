Return-Path: <devicetree+bounces-21137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B79BC8027CE
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 22:32:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E51401C2095B
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 21:32:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E5A199CE;
	Sun,  3 Dec 2023 21:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dGb8DE/H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 143E7C2
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 13:31:54 -0800 (PST)
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-67ac0ef6bb8so3657066d6.1
        for <devicetree@vger.kernel.org>; Sun, 03 Dec 2023 13:31:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701639113; x=1702243913; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=G02u0sdxnFAEWbNN9nRUil1ZtXJaIE05IGNFhr9iJSA=;
        b=dGb8DE/Ha8y2tMZKwY7e55pB2iCbFw6dKq1sGjeeyTxWnjOt6BEfH8I4g9JbOLrPL8
         ENLnaHInyTQiEFGPyIAd3PFkC5HgzVzscJ0X7epy+NW4beYxO5LwaictflB/ipOWZD+H
         MDcsU15rDyA7WAke96kbhUoWzqRSvkCLgspQyFHC4vAIxizQc2k4ANgxjflwvtQ+V3kQ
         FWOj9fWlUZztxf0EiZrQFK8DyzdX3n4Z4n6YAfWdruGbimif1N30TcqPuQ+h4rlCk7YG
         r3qc17C9GcXp9Z9w3ux34NJkLUjuR861mAyRJKIvp8pjGlSwqnZ2fr68ktIW4uSqR3N3
         c66Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701639113; x=1702243913;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G02u0sdxnFAEWbNN9nRUil1ZtXJaIE05IGNFhr9iJSA=;
        b=qSnZLYCIHLXYIC94iy+yPsUSVJ5hAUJ2hZm3kvIREVeqPGpkH6FvIJJayO9WEE/4JZ
         79p9GG/Vz9yJNGzER0cKcQu8//DV6GsNuA6uxcBaVtyQA6CrqMHsDO7xX46k4dwzo/nz
         LewdnbQvqV7/tSxAbhwJFFWARSaSlRdVzjuZBzsxX/kuHfAKUT26Iz3zhspk3L7g95ep
         6SmGMxf+zglOmbNKfQvuPJkH5qWFoFURwVSleqbQZzo8iwDd4R5LkW8Z3wIo5yyVZ8Zt
         o936Ui2VfoivURKxnUT0biND/3VRVMJgLGtfo375WqEjM9BhKZ4+xVWUqysm8t1byBNE
         GK0A==
X-Gm-Message-State: AOJu0Yx77k35LVWbZP82Q6BvmcZMJNEkTDvJeUkV+yWfRJx9QTYl/y/c
	3t5aEkLRBgySIavfZ4zvQHu4zl98quxrXVnTp2iN/A==
X-Google-Smtp-Source: AGHT+IGNohdhuUx6qw41RjMk55NiBYO1sgpsNCtd4DXi5RmzCel7FKuFM65wkoSHPpohcTc4yi+ZokTYRVrg0YEEWT8=
X-Received: by 2002:a0c:f7d0:0:b0:67a:bb7f:ebd7 with SMTP id
 f16-20020a0cf7d0000000b0067abb7febd7mr1547835qvo.61.1701639113122; Sun, 03
 Dec 2023 13:31:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231201160925.3136868-1-peter.griffin@linaro.org>
 <20231201160925.3136868-10-peter.griffin@linaro.org> <59b949a0-5aeb-4f01-8789-cb305513b626@app.fastmail.com>
In-Reply-To: <59b949a0-5aeb-4f01-8789-cb305513b626@app.fastmail.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sun, 3 Dec 2023 21:31:41 +0000
Message-ID: <CADrjBPoeLLcoDuLdkVhO4C_8qFAvFSu2igNPP09RXagiJpPsig@mail.gmail.com>
Subject: Re: [PATCH v5 09/20] dt-bindings: serial: samsung: Make
 samsung,uart-fifosize required property
To: Arnd Bergmann <arnd@arndb.de>
Cc: Rob Herring <robh+dt@kernel.org>, krzysztof.kozlowski+dt@linaro.org, 
	Michael Turquette <mturquette@baylibre.com>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Olof Johansson <olof@lixom.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, saravanak@google.com, 
	William McVicker <willmcvicker@google.com>, soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-watchdog@vger.kernel.org, 
	kernel-team@android.com, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Arnd,

On Fri, 1 Dec 2023 at 16:39, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, Dec 1, 2023, at 17:09, Peter Griffin wrote:
> >
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - google,gs101-uart
> > +    then:
> > +      required:
> > +        - samsung,uart-fifosize
> > +
>
> Is there a way to reverse the list and make the property
> required for anything that is not explicitly enumerated?

I'm not aware of a way to do that, but I'm by no means an expert with
json schema. Krzysztof or Rob may know of a way.

I presume your rationale is any newly added platform would get a DTC
warning if they didn't add the samsung,uart-fifosize property?

Krzysztof and Rob also had concerns in the previous series about ABI
breakage on existing platforms, which is why this was only made
required for google,gs101-uart.

regards,

Peter

