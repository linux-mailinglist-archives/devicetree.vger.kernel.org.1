Return-Path: <devicetree+bounces-25535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B27A4813851
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 18:17:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B666282434
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 17:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74BC165EAF;
	Thu, 14 Dec 2023 17:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gjwBFQpy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31B1C170B;
	Thu, 14 Dec 2023 09:17:34 -0800 (PST)
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6da3659535fso1660471a34.3;
        Thu, 14 Dec 2023 09:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702574253; x=1703179053; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sdhRanQFrFV0TuBSHOaE+X1d5YXiNzoy0E1bPVU3K44=;
        b=gjwBFQpyDzHatOM31WU9GBKhD+HvzBi7T0y+a2pvxrLc7EjqhAyUx6w0ggSFneOG/N
         UZnDYUBCvhxVubG9Rjplrmo4B4c+Bm9HUqruCVNcQc4hdQYLbdDSgA11SbrF7D2F7PGs
         g8Qmv3MBJv6M5t76D4Xe/Oj454seRmyo8saEFp8rvSjyuIq13JiHxUx/d61bsbu2zoBT
         pZpjvURKrmwCnfy8pHWt0gQujcTQxsHtHi1JCoEb9LTCE25oQC+OOFI67WP6TeqTMfy3
         w9B7UnVFmGGUXPqhb+4fyw1J9/+e3y440BsDEH1AbMUMq6YGQzfwEzTTCgRArHkP9u7r
         cqsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702574253; x=1703179053;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sdhRanQFrFV0TuBSHOaE+X1d5YXiNzoy0E1bPVU3K44=;
        b=nU46Rf+gMrN1Oh691+K4pFmZygAAiQNSXi/aJs4WzO6WMzvgrPsxdn/unQorAmRzGc
         RciTwXpvAnQYYJeDofKlZB0cZkT61uIAO2otRYC5jq7yzrz0Wb2UwNrxhL9wcr4PFhDX
         +w+2raeALrkRSZQQv5TdKKXysHvD13y0tuP2dRWlBb4JqyU5/ly1lj4zeGwhoAsAJYOB
         3W/JbGGkRKrTIdZbQT2OIphZuJHZRaehaA/FW42VIMJfcMaZ98v1BgaC1ldfUrfHFn4t
         yl2YfumXc7/d0gJtb3EbY8w/X+iXgmA83ztNxLDb8jqO32qHssydCwyKKllKCDVoCplP
         mQPQ==
X-Gm-Message-State: AOJu0YzD6v+TWOOmyQrjGNeizKfQzFM+Rmf1K2U+pFI93rJ4u0mFdf2D
	7kBLarfMQmZaRNTOSMhtWl3gI/5DjDkhqz908rI=
X-Google-Smtp-Source: AGHT+IGu0qsEalrz1YM6XxCprXRke2tEQ/qScT/H2ci6ZNr18869lf+HGxmdxY1qgpq2RIpITtyGbHOZaz8VsNvNVrc=
X-Received: by 2002:a05:6830:3103:b0:6da:2edf:3132 with SMTP id
 b3-20020a056830310300b006da2edf3132mr4998217ots.27.1702574253354; Thu, 14 Dec
 2023 09:17:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231206151600.26833-1-quic_pintu@quicinc.com>
 <20231208203128.GA2646347-robh@kernel.org> <CAOuPNLg90T69USVQ8Ti6c8fXb_XrnaR035in_CbJHmNMUYLqOg@mail.gmail.com>
In-Reply-To: <CAOuPNLg90T69USVQ8Ti6c8fXb_XrnaR035in_CbJHmNMUYLqOg@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Thu, 14 Dec 2023 22:47:04 +0530
Message-ID: <CAOuPNLj4_pQiAHoER2VJpW_2NEaq8+zF8p1br+tf0Toe1t1UDg@mail.gmail.com>
Subject: Re: [PATCH] of: reserved_mem: fix error log for reserved mem init failure
To: Rob Herring <robh@kernel.org>, vichy.kuo@gmail.com
Cc: Pintu Kumar <quic_pintu@quicinc.com>, linux-kernel@vger.kernel.org, 
	akpm@linux-foundation.org, linux-mm@kvack.org, frowand.list@gmail.com, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 11 Dec 2023 at 20:13, Pintu Agarwal <pintu.ping@gmail.com> wrote:
>
> Hi,
>
> On Sat, 9 Dec 2023 at 02:01, Rob Herring <robh@kernel.org> wrote:
> >
> > On Wed, Dec 06, 2023 at 08:46:00PM +0530, Pintu Kumar wrote:
> > > During fdt_init_reserved_mem() when __reserved_mem_init_node()
> > > fail we are using pr_info to print error.
> > >
> > > So, if we change the loglevel to 4 (or below), this error
> > > message will be missed.
> > >
> > > Thus, change the pr_info to pr_err for fail case.
> > >
> > > Signed-off-by: Pintu Kumar <quic_pintu@quicinc.com>
> > > ---
> > >  drivers/of/of_reserved_mem.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> > > index 7ec94cfcbddb..473665e76b6f 100644
> > > --- a/drivers/of/of_reserved_mem.c
> > > +++ b/drivers/of/of_reserved_mem.c
> > > @@ -334,7 +334,7 @@ void __init fdt_init_reserved_mem(void)
> > >               if (err == 0) {
> > >                       err = __reserved_mem_init_node(rmem);
> > >                       if (err != 0 && err != -ENOENT) {
> > > -                             pr_info("node %s compatible matching fail\n",
> > > +                             pr_err("node %s compatible matching fail\n",
> >
> > Isn't the message just wrong. If compatible match fails, we return
> > ENOENT. The failure here would be from the init function.
> >
> Okay.
> You mean to say, if __reserved_mem_init_node fails with default err
> (ENOENT) then it may not hit this condition.
> Instead it will hit the 'else' case which is wrong ?
> Also, the "initfn" inside "__reserved_mem_init_node" may fail in which
> case also it may return default err.
>
> Maybe, the initial author's intention was to free the memory only if
> the failure type is not the default ENOENT type.
>
> This seems to be a different issue.
> Can we address this separately in a different patch ?
>
> And how do we fix this ?
> One option is to add another "if" condition with just ENOENT error check ?
> if (err == -ENOENT) {
>     pr_err("node %s compatible matching fail\n", rmem->name);
>     return;
> }
> Then, correct the existing log with a different message:
> pr_err("node %s matching reserved mem not found.\n", rmem->name);
> Or, add one more "if else" condition ?
> Or, fix the calling function itself : __reserved_mem_init_node ?
>

Any further comments on this ?

