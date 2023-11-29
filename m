Return-Path: <devicetree+bounces-20027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8A47FD8FF
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:10:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2703EB21170
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:10:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00A2430329;
	Wed, 29 Nov 2023 14:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R3QmAJVi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59D63AF
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 06:10:39 -0800 (PST)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-5cc86fcea4fso57481017b3.3
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 06:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701267038; x=1701871838; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F4YgMwpWk3DM18zVHWXUshQ7Hq2vVbZ+qHKkATPOglw=;
        b=R3QmAJViKCnqEXpBIOWIsJW1pVQisVrOvuhtN6K3kOLKaiFCwLY734PAJaIKAdKHcF
         d1kr4AzCBMB0BCXAy0ADUScO7zjTv7urUSqHKh4Vn0Uayu988b1UvsfOEJqQMV9r7fuF
         FxM4qfGQPr1jTCVW+Qqaw0FWoUPFnEDRH0IhXfXgAH65JzRFDEbSwM76EjDkkvMPVsee
         i0Ex/TA0z/b47OyyuzUNAN9G6HRzlhrWwD8EblbuPYEu+lHZd+SmXux6jYSO7lJp3vJx
         HtOMufY5X9cR1fpIZyw6L9RCrijm6NpbkY8KNUeRpRfayDfd2VD/fKpQidmroM6U4EyW
         97bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701267038; x=1701871838;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F4YgMwpWk3DM18zVHWXUshQ7Hq2vVbZ+qHKkATPOglw=;
        b=L/RSa4mqLH9v0i6nd072aMF9eimD6lqWrgU33/0u67MkcZqYsXvNU2jJCH5uXn/a7o
         TrEWz+0bF1qhrg/miK3RXIf1WUH1xuVlibYxBa/Jk2tfEZ6fn3FjBv7JKtKUHFngzwhi
         nOO4BLkahPo1CmHdlP93ZLlbEL2oIKTT3EzH06Hzd7xJ9BCKSjYnAQnXSpjUd46SmPFN
         QHv/2VqQuZYFTTq9U3hdK+Negf7B/ogEBIp5TQoBdp8craimAp8gWFo2cGLeIYtngkSH
         2/Ef4VB8tGco5ZmmR/THj9P0EIGD/DvbKjymCPiDYgLWt15VG0hASWqxZFJS8R2Y44Ml
         cEUA==
X-Gm-Message-State: AOJu0YxLUabxQ45citUQcugYjo9gBOfrVqgHoXXJ1V38nuTSl6gQ/XTD
	31yIllaskisvr4kLX+hIMwO7KiyP5omPzgpw1JUdYw==
X-Google-Smtp-Source: AGHT+IFYRZbtLNDuKxAN7bokht3V/01ANp2eTBXMc6bL/P9sgi01OUjcqSjDqOZSFH3dshHDFn84juUVViO24APqGvk=
X-Received: by 2002:a81:9bcc:0:b0:5d0:d517:a8ee with SMTP id
 s195-20020a819bcc000000b005d0d517a8eemr7832100ywg.31.1701267038552; Wed, 29
 Nov 2023 06:10:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231124-ltc4282-support-v2-2-952bf926f83c@analog.com>
 <202311250548.lUn3bm1A-lkp@intel.com> <fb2aaa4c69c88738499dfbf46ef93e3b81ca93cb.camel@gmail.com>
 <76957975-56e7-489e-9c79-086b6c1ffe89@kernel.org> <ac950d01-d9aa-4fb7-810d-b21335e4cc94@kernel.org>
 <ZWS90GQTJWA7DrML@smile.fi.intel.com> <bcc5da24-7243-42fa-a82b-48851ce17c0c@kernel.org>
 <cacce41f-f1c0-4f76-ab24-c6ea8bb0303f@roeck-us.net> <c7e7b7bedd5b016a29cc86f767cbec533d727ff4.camel@gmail.com>
 <d4a9bd79-1cb6-4da6-9380-bb8085866533@kernel.org>
In-Reply-To: <d4a9bd79-1cb6-4da6-9380-bb8085866533@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 Nov 2023 15:10:27 +0100
Message-ID: <CACRpkdaQ0=KduRoSOn+NKNOXvL2HqL_xeCR-LQZWh6CdRMf1Pw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] hwmon: ltc4282: add support for the LTC4282 chip
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: =?UTF-8?B?TnVubyBTw6E=?= <noname.nuno@gmail.com>, 
	Guenter Roeck <linux@roeck-us.net>, Andy Shevchenko <andy@kernel.org>, kernel test robot <lkp@intel.com>, 
	Nuno Sa via B4 Relay <devnull+nuno.sa.analog.com@kernel.org>, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	oe-kbuild-all@lists.linux.dev, Jean Delvare <jdelvare@suse.com>, 
	Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 29, 2023 at 9:45=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
> On 29/11/2023 09:35, Nuno S=C3=A1 wrote:

> > world. If we are now going to ask to run smatch, cocci, sparse and so o=
n, we will
> > scare even more developers from the community... I mean, the bots are a=
lso in place
>
> This is not related to Linux at all.

Smatch, main author Dan Carpenter
Coccinelle, main author Julia Lawall
Sparse, main author Linus Torvalds

To be fair I think these tools has quite a lot to do with Linux, being deve=
loped
for the kernel as the primary use case, by Linux kernel contributors.

> When you develop any C or C++ code,
> you run these tools. Upstream or downstream, does not matter. Why would
> you not use automated, free and easy tools to detect errors in your
> code? It's just a matter of professional approach to your code.

This I agree with. We just happen to have some especially
talented C developers who write some novel tooling.

(I think developers should be able to rely on robots to run them though,
we all seem to agree on that.)

Yours,
Linus Walleij

