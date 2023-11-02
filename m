Return-Path: <devicetree+bounces-13619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6AB7DF551
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 15:52:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF163B210FC
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 14:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2504514274;
	Thu,  2 Nov 2023 14:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IAPghaxP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E18713AD9
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 14:52:33 +0000 (UTC)
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E98D136
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 07:52:29 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-5af6c445e9eso12526917b3.0
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 07:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698936749; x=1699541549; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xbLEZ3Dvy6vK8c71cfbvowkvFzjH6f30mEWwF7xpWnk=;
        b=IAPghaxPakTkeRKc0a8hHSHGrdyQTBCC1HXsGMy1RpMmyKowY1RdWXhSoW1Q2gHP6b
         Li/4kVvbg93bsUkSvp5EbSYKb9JdLUUd6pnRWY8EVdSRsS2JztFt8rF2M5SvJxHJRHPY
         +BLuuxgMq7zdikCJGs9lL1utzZg0slPx/IZn8UvxxJD29RXztci9P8TrEaUrU66/hMMb
         0h3q2mqhZ44RfZlLht292+1q2yR6PAvxvXKar5EJu65elARv3xWals5w1oktg8ZVspiD
         kFPiPQs832ri9ROO/2Vk7CtrIvV7eSeXROwCggzGWxDbOvCmbW8rvZrdMyZjRIUIEmXT
         xW3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698936749; x=1699541549;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xbLEZ3Dvy6vK8c71cfbvowkvFzjH6f30mEWwF7xpWnk=;
        b=XUobkPkoZVzIDe9I6xQOP43dXr9xmBT2HqxBRaH9hz+DBKMV8oC/rZN8CSY/r5/Prg
         dGZcf4k2pluEW/K3rHUg4QsWt+nmd7QBvx9jLwHM8Vos5ge18FWAebvXZua4j7wGftkM
         OlqTU1Dw1pjbc8truf1VYQ9hWU7U36d51ZM3CA7aQcpN3NIcxf5Hztylkt5P0ZrB3qaM
         ocBwI0Mb32vwIenr5JH2c88LFGQNt9N21c/Wx6IgUzNpR5CfnnZFQxJEdlqxnxj/BLJd
         9JDqjVUk2NKJiEIzQWd+9j6aGYE5xDcYb9WJa9vnZhuax8AFprUXerzBrwm+jVFNHSdB
         rBoA==
X-Gm-Message-State: AOJu0YxgAVNNEitJMklFVUO7MKP0l8vxMqk4etcQroqEidlkAVjELELK
	i6XqFOaUun7aZ1QM7sjH1WcT+Xg6ZFvF/F1DPNBxKA==
X-Google-Smtp-Source: AGHT+IEl7ofcy4D9X68NHHw7pUhvn8bxhJkochTuFAuTvhqv2XrX3jJ6UIKbAvIYl66RsjKik0g1glAWSst4hBH0Cf4=
X-Received: by 2002:a05:690c:ecd:b0:5b3:f5f8:c5bf with SMTP id
 cs13-20020a05690c0ecd00b005b3f5f8c5bfmr6756787ywb.9.1698936748715; Thu, 02
 Nov 2023 07:52:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231101025802.3744-1-tychang@realtek.com> <20231101025802.3744-2-tychang@realtek.com>
 <CACRpkdZiKCiVsmkPnJRW1c5SBfzNmBqCH9bS8XsgUszD6H=vPg@mail.gmail.com> <12ada22542cf4b2991da2e8c2858c5d7@realtek.com>
In-Reply-To: <12ada22542cf4b2991da2e8c2858c5d7@realtek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 2 Nov 2023 15:52:16 +0100
Message-ID: <CACRpkdYcK+sr5Ohh5su1cYv8R6BtKSxUUS-rAZP_iWmXbkL-Ug@mail.gmail.com>
Subject: Re: [PATCH 1/2] gpio: realtek: Add GPIO support for RTD SoC variants
To: =?UTF-8?B?VFlfQ2hhbmdb5by15a2Q6YC4XQ==?= <tychang@realtek.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 2, 2023 at 1:40=E2=80=AFPM TY_Chang[=E5=BC=B5=E5=AD=90=E9=80=B8=
] <tychang@realtek.com> wrote:

> >On Wed, Nov 1, 2023 at 3:58=E2=80=AFAM Tzuyi Chang <tychang@realtek.com>=
 wrote:
> >> +static unsigned int rtd_gpio_deb_offset(struct rtd_gpio *data,
> >> +unsigned int offset) {
> >> +       return data->info->deb_offset[offset / 8]; }
> >
> >So this is clearly counted by the GPIO number offset and the GPIO number
> >determines how far into the array we can index.
> >
> >It looks a bit dangerous, it it possible to encode the array lengths bet=
ter?
>
> I think I can add array size members for each offset array within the
> rtd_gpio_info structure and utilize them to prevent accessing elements ou=
tside the array.

I don't know about that for constant arrays, if you look at recent commits
from Kees Cook you will find examples of how to use the compiler helpers
for dynamic arrays, e.g.

git log -p --author=3DKees

will find you things like this:

@@ -60,7 +60,7 @@ struct reset_control {
 struct reset_control_array {
        struct reset_control base;
        unsigned int num_rstcs;
-       struct reset_control *rstc[];
+       struct reset_control *rstc[] __counted_by(num_rstcs);
 };

So the compiler instruction __counted_by() is used pointing back to
the variable above to avoid outofbounds accesses.

BUT: those are *dynamic* arrays, placed *last* in the struct.

You have several *constant* arrays, in the same struct (and
C allows this).

I don't really know what is the best practice for constants, maybe Kees
has some pointers?

Maybe what you have is the best we can do.

Yours,
Linus Walleij

