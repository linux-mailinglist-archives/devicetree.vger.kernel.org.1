Return-Path: <devicetree+bounces-23927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 090DE80CE92
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 15:43:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CEEF9B207D2
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 14:43:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4449E495C2;
	Mon, 11 Dec 2023 14:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DwNK+TRc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B39ACB4;
	Mon, 11 Dec 2023 06:43:13 -0800 (PST)
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-6d9f514f796so2239743a34.3;
        Mon, 11 Dec 2023 06:43:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702305793; x=1702910593; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kAGq5AqxYLsV9NmCyr3ON2UzGw+Y2b+9De8snWeswyo=;
        b=DwNK+TRckjBVrw/LK+3Igu7jFL0EtZ0BhiVHoYQ9mj4NWseZzWQmfapq/Z7yGtG2lJ
         GMmxvSkUHCJL4+1N5ew2UnaBoYWcuPQpWkxe0LGrXySnTpxnyVL0NBZAjR1MT7ZdsOkU
         tIZZKJhfyY71YVOX0g4eyB/vgcctwphI1VqQi5S4yG4Jk1ZsQAQjmLqnTNds5Jlielyb
         oMEh4cN/UmgLMI/vvB7XhnsrEdAGZbuhajEtwyM7corQ3lbBS0grrmVp8PekduAZ0yju
         9xoxtL7LGfeAQ2E846yojHgh8PsvK1k8V7QUWel4kCLXm6o1YDyJki7ab45NN30SQLyW
         dYWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702305793; x=1702910593;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kAGq5AqxYLsV9NmCyr3ON2UzGw+Y2b+9De8snWeswyo=;
        b=MxGk1ZbY3AcoaYCkTBraFvYZ67W0l00r4Dg6GpVEJU4CArR9ZEwpR0QAQaVxxKYivK
         bIObg7h4zJau0lrAJfpug9RJV8fp/STYnqujiGydM6ge2ZrCc91DI2qSwx5ZYIcZbXSn
         AqVU8ePR/RXTM9lo1WXaCPhmxWiF30xweWtf5fGrx/wYonYGPx2fwCUJP5OXm3+3Oogk
         5UQLH2J6WTS7wpRSPDVm1PPYPrHNPwWV/pUXkQQKBeWbOwq9JKjYW4j/CbYkObN748u8
         0uzwgpuNWkFLczGbuE4YvzObbuob5gx7jm8HHMNce7XUowqO/G0+ZkSpflZcu33h8xIr
         A2VQ==
X-Gm-Message-State: AOJu0YwdqT4gngJJYsvMdr8WXOrEtEQN9AyszPda39HUNgIKr8ZQGCuX
	K/jJMRVlpCn6nfnVy0fTSpwhkAa08mesST7NIFA=
X-Google-Smtp-Source: AGHT+IGOTKdyA3Tnc/HsAYD0s7GgR5HPNnLyp1pa5rQI87rlCSMsSPItBZK0zYEMc09+E3RFSdQ45hNpQlIW/bS6aSo=
X-Received: by 2002:a9d:7d82:0:b0:6d9:f66d:5508 with SMTP id
 j2-20020a9d7d82000000b006d9f66d5508mr5010832otn.40.1702305792951; Mon, 11 Dec
 2023 06:43:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231206151600.26833-1-quic_pintu@quicinc.com> <20231208203128.GA2646347-robh@kernel.org>
In-Reply-To: <20231208203128.GA2646347-robh@kernel.org>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Mon, 11 Dec 2023 20:13:00 +0530
Message-ID: <CAOuPNLg90T69USVQ8Ti6c8fXb_XrnaR035in_CbJHmNMUYLqOg@mail.gmail.com>
Subject: Re: [PATCH] of: reserved_mem: fix error log for reserved mem init failure
To: Rob Herring <robh@kernel.org>, vichy.kuo@gmail.com
Cc: Pintu Kumar <quic_pintu@quicinc.com>, linux-kernel@vger.kernel.org, 
	akpm@linux-foundation.org, linux-mm@kvack.org, frowand.list@gmail.com, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi,

On Sat, 9 Dec 2023 at 02:01, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Dec 06, 2023 at 08:46:00PM +0530, Pintu Kumar wrote:
> > During fdt_init_reserved_mem() when __reserved_mem_init_node()
> > fail we are using pr_info to print error.
> >
> > So, if we change the loglevel to 4 (or below), this error
> > message will be missed.
> >
> > Thus, change the pr_info to pr_err for fail case.
> >
> > Signed-off-by: Pintu Kumar <quic_pintu@quicinc.com>
> > ---
> >  drivers/of/of_reserved_mem.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> > index 7ec94cfcbddb..473665e76b6f 100644
> > --- a/drivers/of/of_reserved_mem.c
> > +++ b/drivers/of/of_reserved_mem.c
> > @@ -334,7 +334,7 @@ void __init fdt_init_reserved_mem(void)
> >               if (err == 0) {
> >                       err = __reserved_mem_init_node(rmem);
> >                       if (err != 0 && err != -ENOENT) {
> > -                             pr_info("node %s compatible matching fail\n",
> > +                             pr_err("node %s compatible matching fail\n",
>
> Isn't the message just wrong. If compatible match fails, we return
> ENOENT. The failure here would be from the init function.
>
Okay.
You mean to say, if __reserved_mem_init_node fails with default err
(ENOENT) then it may not hit this condition.
Instead it will hit the 'else' case which is wrong ?
Also, the "initfn" inside "__reserved_mem_init_node" may fail in which
case also it may return default err.

Maybe, the initial author's intention was to free the memory only if
the failure type is not the default ENOENT type.

This seems to be a different issue.
Can we address this separately in a different patch ?

And how do we fix this ?
One option is to add another "if" condition with just ENOENT error check ?
if (err == -ENOENT) {
    pr_err("node %s compatible matching fail\n", rmem->name);
    return;
}
Then, correct the existing log with a different message:
pr_err("node %s matching reserved mem not found.\n", rmem->name);
Or, add one more "if else" condition ?
Or, fix the calling function itself : __reserved_mem_init_node ?


Thanks,
Pintu

