Return-Path: <devicetree+bounces-190413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 314C3AEBB06
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 17:07:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36B7C3AAF0A
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F93F2E8DEC;
	Fri, 27 Jun 2025 15:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="W0I5aYKe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B552E88A2
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751036843; cv=none; b=UismDVmIRHjraHH8gmfL8HwUoILT0ppYPIHv6f/gI1D6SPMo2+d8qzObABmLlqgLQAx1yQBsPkF/4to56gU4w1FwAsAGNNwjAm7LKSVhi+gwtzJSxyH9IkXr4WIeMOM3WW8pdCwjaocxZXJAlctqOS5dD1X13EBoQSA8qSi/ORE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751036843; c=relaxed/simple;
	bh=K1W/ACUkhEzsh3VhZeua9bbwljhzBiDcmta6M6ukqF0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D0pvWwFDzH/h4tf1Mztrn6WkRZt4qknUWM3TFMIxnn2ETFKxMs9vtG+QS05in9uaAHVnTsw0LXN7EOIEcreLCtDaR4KuaBuNNvYE5lKWsA433v1MBv9GH9NeoPgC9EPKt9UvHrk/MvR+u2u8igO1ZaV3W5kQVSduMGEHrnWYQSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=W0I5aYKe; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-879d2e419b9so1939723a12.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 08:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751036841; x=1751641641; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kTVCLY7nH8LB+Zm3xLfrn9nxZr6jXIw9YXpYJef7Kgs=;
        b=W0I5aYKe9TNZF3x3s8NbzSc0Rc+cyLW/VmOIG9YOhE3k4EwWdm5Zx0CKysc1Ca3410
         naaxRhWVUGfuII4mQHBE0FmKQyKkcZuXqLZwouh3Ha1IK9+eMY+q4wne1rW+Ml3AMCCS
         5+eiQFtHc/GLYdbozRd3n04xbYSRCCSbF3KJQ6MVycyrIk3E/OIEyaKeqyg2RhSV8cqK
         HGIdPcyavhst+Wy8JFf03Gldr4MVu2oRm5oNBlfqmW1HpoWP2CgklDfaS/g+kb+tXOD3
         4HSC8AF5i51/AjeNBSou4F1w1I3MN2FtuxAV3rR9MfbYgggvOC7zLT0cQXAc6UHwnBi9
         A7xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751036841; x=1751641641;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kTVCLY7nH8LB+Zm3xLfrn9nxZr6jXIw9YXpYJef7Kgs=;
        b=IW3xjLUw/qRPOwtBrUdyjXMAo+Zh4x7ukdnGHEDOxoN2qByu6oO8Dj0HW7NaF4nxTx
         B0116fG9mRkGZeody9cRlHa2J1Lwxcgv31qzkOq3/+Mz+NZ8pfUPaEIfVYl3VAO8TlBz
         5WGU41QFvtVscXxmZJdQN4z7gnzletahiRi09OHXAlPufeW2ZuFqz5jS8tQBG2NuCKoN
         C4l0Fhlg/6YqKRhlf0eE/NMo+kv5D7JCtHMiBBOtCc7/Hq7RiBhqLGf6q6mrHeAtHa3i
         zX3VbcVnLF4li/ky7l+3/CbHzvYJY/BbuJBYqJVOAcGhf44rSyYFrY+Wd6EKKiUP/x+d
         HI5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVUO9aDdebealZIvLJ837x5YfTyB1GQr5DazkC753vUXvxu+UZS6WFPgWoBcUD8vXpPbFstzMsP/sXZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzCnWkPrhnk0bBuqF8BirWp9A9uhFb3d6t4GhtEqRyubbWA3SSP
	GJojNyWJjc2u//96lR8mSVtLasNOp8bWvFrHpo5Cw9iwul5Rm9Xn0H6T/y8tOBTU6qJvF0qcE+P
	C9NbQCfY2biKgbCrreaXs0811jAwwKgT5TsAfGSZFWQ==
X-Gm-Gg: ASbGncv5TrH9+1tdqPRLJVriH9r8lG2gZK6DJfoPrLEF9CzGAYJHLIzwSL0eQLsHlxH
	oyZophy2ClwxWAXY8nM6QAgeYNTuyxDEhL3gzH27+0G3KYjFhSGs+SNSGm3lZJhuQb16wE8bav6
	Vmzl3l5lqVeWdTEiKkhbKIRjf2u6jzYbc9GHXFFg6uDbmtbto/Ug6La2NcnXYiWN+RWAoovJItp
	jqY
X-Google-Smtp-Source: AGHT+IF4AdiLDVJzWcIgdL/8Bs2UVOqvh/d51X69lsgIeuxgoVvKvtiPfY/zv1dvVDdkVgnc/ZS5VJNJlB5QgtEcAew=
X-Received: by 2002:a17:90b:528a:b0:311:d3a5:572a with SMTP id
 98e67ed59e1d1-318c9225e52mr5337592a91.8.1751036839222; Fri, 27 Jun 2025
 08:07:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250618121358.503781-1-apatel@ventanamicro.com>
 <20250618121358.503781-10-apatel@ventanamicro.com> <aFkZJKnweqBi64b8@smile.fi.intel.com>
 <CA+Oz1=a65HvfXHWjeSq4Ubq=5kzHp9pkLJVr77hvTYAGFHv0Mg@mail.gmail.com> <aF1UWNzWhheLNTky@smile.fi.intel.com>
In-Reply-To: <aF1UWNzWhheLNTky@smile.fi.intel.com>
From: Rahul Pathak <rpathak@ventanamicro.com>
Date: Fri, 27 Jun 2025 20:36:41 +0530
X-Gm-Features: Ac12FXyg_1voP3_rSKmrZJ_A-E3gflVigZ0fA-ce5u-xgIj9wegRrIsa-1iLCcE
Message-ID: <CA+Oz1=bAsykB=qAk3r8FV8K8cnPEVT4Ow7L4SWBvrc_3DsyaWw@mail.gmail.com>
Subject: Re: [PATCH v6 09/23] clk: Add clock driver for the RISC-V RPMI clock
 service group
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Anup Patel <apatel@ventanamicro.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Len Brown <lenb@kernel.org>, Sunil V L <sunilvl@ventanamicro.com>, 
	Leyfoon Tan <leyfoon.tan@starfivetech.com>, Atish Patra <atish.patra@linux.dev>, 
	Andrew Jones <ajones@ventanamicro.com>, Samuel Holland <samuel.holland@sifive.com>, 
	Anup Patel <anup@brainfault.org>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> > > > +union rpmi_clk_rates {
> > > > +     u64 discrete[RPMI_CLK_DISCRETE_MAX_NUM_RATES];
> > > > +     struct {
> > > > +             u64 min;
> > > > +             u64 max;
> > > > +             u64 step;
> > > > +     } linear;
> > >
> > > Have you looked at the linear_range.h? Why can it not be (re-)used here?
> >
> > I did the first time only when you commented. And i dont see any
> > benefit in that.
> > linear_range has slightly different way to access any value using `sel`.
> > Here this union represents how RPMI protocol represents the rates and
> > reusing linear_range will only introduce conversion to and fro.
>
> Summarize this in the comment on top of the struct definition so one will not
> attempt to convert the driver in the future.
>

Sure, I will update.

> >
> > >
> > > > +     if (ret || rx.status)
> > > > +             return 0;
> > >
> > > Why rx.status can't be checked before calling to a sending message?
> > > Sounds like the rpmi_mbox_init_send_with_response() links rx to msg somehow.
> > > If this is the case, use msg here, otherwise move the check to be in the
> > > correct place.
> >
> > Yes, the rpmi_mbox_init_send_with_response is a helper function which links
> > the rx to msg. It's a very simple function which only performs assignments.
> >
> > Using msg instead of rx directly will require additional typecasting
> > which will only clutter
> > I can add a comment if that helps wherever the rpmi_mbox_init_send_with_response
> > is used.
>
> This is besides harder-to-read code is kinda of layering violation.
> If you afraid of a casting, add a helper to check for the status error.
> Comment won't help much as making code better to begin with.

Why using rx is the issue in the first place when it's the same layer
which links the rx with msg using the helper function and then
uses it directly?  Infact using rx directly avoids unnecessary code
which is only increasing redundant code which ultimately results in
same thing. Even if I add a helper function that will require additional
pointer passing with NULL checking which all is currently avoided.
And, we are not just talking about rx.status but a lot of other fields.

>
> > > > +     struct rpmi_clk_context *context = rpmi_clk->context;
> > > > +     struct rpmi_clk_rate_discrete *rate_discrete;
> > > > +     struct rpmi_clk_rate_linear *rate_linear;
>
> > > > +     struct rpmi_get_supp_rates_rx *rx __free(kfree) = NULL;
>
> This should be assigned where it's used. NULL assignment is not encouraged.

Sure, I will update.

>
> > > > +     struct rpmi_get_supp_rates_tx tx;
> > > > +     struct rpmi_mbox_message msg;
> > >
> > > > +     size_t clk_rate_idx = 0;
> > >
> > > This kind of assignments is hard to maintain and it's mistake prone in case
> > > some additional code is injected in the future that might reuse it.
> > >
> > I dont understand what is the problem with this assignment. If any
> > code added in the future reuse it then it has to make sure that
> > clk_rate_idx has the correct initial value before any further references.
>
> Yes, it will add an additional churn and require more brain activity to
> maintain such a code. It's a general recommendation to assign when it's
> actually needed (there are, of course, exceptions for some small functions,
> but this one is not).

Sure, I will update.



-- 

Thanks
Rahul Pathak

