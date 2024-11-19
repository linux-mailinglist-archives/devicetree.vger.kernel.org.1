Return-Path: <devicetree+bounces-122983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF0E9D2FAA
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 21:40:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7EF49B2A2A5
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 20:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68B931D3560;
	Tue, 19 Nov 2024 20:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hh2fVpma"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C52D1D416A
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 20:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732048749; cv=none; b=rlzrIphZuy57sN74QyQtRh1j/y0RsYtTB5nD3uomH9gMHII6w8NSJBpAi6N1cd3kw94wlOfXX1VqphHU3LNXnaXq5jgWrmCIyNsYQLlZW3y3T91RNhw/UbeIZUrIoQdVzbetBNUnO1mKsDwAJFZvzWbuOP5AYbJQHRN9mrd2ZEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732048749; c=relaxed/simple;
	bh=LVMJmQXw3ADJ+81V3pAk4GgkNBlcJcC41oI3Jp6++ek=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XkOUhixxNRqIXYdbhMVGTT6lWb0G/ok8Nna2Bih2IygySIO3u1GO5x0c1gxercQx5+OEnMim7mb27m3m6BYik5rdBvQ9iIi+Jl6x7aNmMetbHdAnWD+eDX2FIOwPY1qx0QUVadLvIUOYnZ3pKzJzVlAnkHnlXDqwRg1JDgPkVdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hh2fVpma; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539f1292a9bso1716934e87.2
        for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 12:39:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732048744; x=1732653544; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sDfh97UAGy7PQC6vVLeHyLfQ6w8qUE9SWMRtfhKq9aY=;
        b=hh2fVpmatyqCjJ68QK2xXEtQaIorFtSSDj6xjzgtUvLCWwUTO3XRbRTE2NeTpMENqJ
         P4hhHe5k6FKMRjBjSpyhJoltllOT1KT1RPh0tNwTTqxNm33yWbmJkJAtE9pkjNvloTxC
         J+bYL3VWqOygvr5EKr+V1hXFleoRITpovikEVV0v/cEo0Ak1TYRCBYOMG1s6RtkL1fNV
         fesKLjXW3NJKCElEdqloiyPzR6vYAZNkzWpGu37idHc3NsH+ZrUtOEZXKNQjOjyKyR8H
         9BMR28jyZY8ld7eO6Rk3N1WPWTg6vIMHi6CF7QLHeHeOCzGsIz3oyupu1+lLYaiTBGvg
         mDaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732048744; x=1732653544;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sDfh97UAGy7PQC6vVLeHyLfQ6w8qUE9SWMRtfhKq9aY=;
        b=YhqEk9rQdYtr/wzmW72eXHF84MuBQ40YZB2XOzSBI7Nl0dflx53db830gDefE/7afL
         Va5o7tRuk5qvn/0d2wG4Zo14v6N6qg2ylrCLopfTdBry5DER5hEDCxvDDyMH12sjsK0+
         xmz/uWQqLn2+UNY0nbEwkAVyFxnZ+rJhDOqIPuAhq8Hu6qAITBAimhDWZUwV4edsPk8q
         EVjccLRwt7k6aaIr/Og7IV2NiFc+y6QI0TvHQGN3QkRtQo1aQ1NKcu04n1ETUIW0c3Hp
         QDmAlsCWgjUW1GoaQy5v5kgexQAO/BPynyXQyfpP3oj/05y/6hONwW+FaFpmHqgUH9O0
         K/fQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8AY8eCSxL0t15uGe75HyLvkmoFFL1dI1+eTOz2uazuD32pjgo5qKqwu4JysIRh6TjoP/EijucVZGR@vger.kernel.org
X-Gm-Message-State: AOJu0YyXBMoGOg2EhJRy69SeiCKLFpZTo2m9Q3zKf1vl25bVf160Yqr+
	Iq+bo1kjgF8e8V1LJTfr7gSD4S18guULjYKf7Cn2pVimzYhWP7TYgfGEtNLxcab9v0A5x4IiLNT
	aR32zQ5g8CpJjh8xqYpx6cgleZiZBQDWGESBUFDPt9GiVp/It
X-Google-Smtp-Source: AGHT+IGFzizseTaJgxdRGvtF7EQdP6G2Yicvf95WCYB9ehjF/h2LCbevBuMy713pgLF3P76zayFHLmDXWWo4/tcOtxc=
X-Received: by 2002:a05:6512:3b9c:b0:53d:a546:7111 with SMTP id
 2adb3069b0e04-53dc13670fbmr28892e87.37.1732048744338; Tue, 19 Nov 2024
 12:39:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241104133515.256497-1-arnaud.pouliquen@foss.st.com>
 <20241104133515.256497-5-arnaud.pouliquen@foss.st.com> <Zzt+7NBdNjyzWZIb@p14s>
 <0d9075cd-68c2-49ec-9b9c-4315aa8c8517@foss.st.com>
In-Reply-To: <0d9075cd-68c2-49ec-9b9c-4315aa8c8517@foss.st.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 19 Nov 2024 13:38:53 -0700
Message-ID: <CANLsYkxvTuLv8Omw-UeyPaA9g9QokmtMaMYD0eoUPo20wUuONQ@mail.gmail.com>
Subject: Re: [PATCH v13 4/7] remoteproc: Introduce release_fw optional operation
To: Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Jens Wiklander <jens.wiklander@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-remoteproc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, op-tee@lists.trustedfirmware.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 19 Nov 2024 at 11:14, Arnaud POULIQUEN
<arnaud.pouliquen@foss.st.com> wrote:
>
> Hello Mathieu,
>
> On 11/18/24 18:52, Mathieu Poirier wrote:
> > On Mon, Nov 04, 2024 at 02:35:12PM +0100, Arnaud Pouliquen wrote:
> >> This patch updates the rproc_ops struct to include an optional
> >> release_fw function.
> >>
> >> The release_fw ops is responsible for releasing the remote processor
> >> firmware image. The ops is called in the following cases:
> >>
> >>  - An error occurs in rproc_start() between the loading of the segments and
> >>       the start of the remote processor.
> >>  - after stopping the remote processor.
> >>
> >> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
> >> ---
> >> Updates from version V11:
> >> - fix typo in @release_fw comment
> >> ---
> >>  drivers/remoteproc/remoteproc_core.c | 5 +++++
> >>  include/linux/remoteproc.h           | 3 +++
> >>  2 files changed, 8 insertions(+)
> >>
> >> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> >> index 7694817f25d4..46863e1ca307 100644
> >> --- a/drivers/remoteproc/remoteproc_core.c
> >> +++ b/drivers/remoteproc/remoteproc_core.c
> >> @@ -1258,6 +1258,9 @@ static int rproc_alloc_registered_carveouts(struct rproc *rproc)
> >>
> >>  static void rproc_release_fw(struct rproc *rproc)
> >>  {
> >> +    if (rproc->ops->release_fw)
> >> +            rproc->ops->release_fw(rproc);
> >> +
> >>      /* Free the copy of the resource table */
> >>      kfree(rproc->cached_table);
> >>      rproc->cached_table = NULL;
> >> @@ -1377,6 +1380,8 @@ static int rproc_start(struct rproc *rproc, const struct firmware *fw)
> >>  unprepare_subdevices:
> >>      rproc_unprepare_subdevices(rproc);
> >>  reset_table_ptr:
> >> +    if (rproc->ops->release_fw)
> >> +            rproc->ops->release_fw(rproc);
> >>      rproc->table_ptr = rproc->cached_table;
> >
> > I suggest the following:
> >
> > 1) Create two new functions, i.e rproc_load_fw() and rproc_release_fw().  The
> > only thing those would do is call rproc->ops->load_fw() and
> > rproc->ops->release_fw(), if they are present.  When a TEE interface is
> > available, ->load_fw() and ->release_fw() become rproc_tee_load_fw() and
> > rproc_tee_release_fw().
>
>
> I'm wondering if it should be ->preload_fw() instead of ->load_fw() ops, as the
> ->load() op already exists.
>

I agree that ->load() and ->load_fw() will lead to confusion.  I would
support ->preload_fw() but there is no obvious antonyme.

Since we already have rproc_ops::prepare() and rproc_prepare_device()
I suggest rproc_ops::prepare_fw() and rproc_prepare_fw().  The
corollary would be rproc_ops::unprepare_fw() and rproc_unprepare_fm().
That said, I'm open to other ideas should you be interested in finding
other alternatives.

> >
> > 2) Call rproc_load_fw() in rproc_boot(), just before rproc_fw_boot().  If the
> > call to rproc_fw_boot() fails, call rproc_release_fw().
> >
> > 3) The same logic applies to rproc_boot_recovery(), i.e call rproc_load_fw()
> > before rproc_start() and call rproc_release_fw() if rproc_start() fails.
>
>
> I implemented this and I'm currently testing it.
> Thise second part requires a few adjustments to work. The ->load() ops needs to
> becomes optional to not be called if the "->preload_fw()" is used.
>
> For that, I propose to return 0 in rproc_load_segments if rproc->ops->load is
> NULL and compensate by checking that at least "->preload_fw()" or ->load() is
> non-null in rproc_alloc_ops.
>

I agree.

> Thanks,
> Arnaud
>
>
> >
> > 4) Take rproc_tee_load_fw() out of rproc_tee_parse_fw().  It will now be called
> > in rproc_load_fw().
> >
> > 5) As stated above function rproc_release_fw() now calls rproc_tee_release_fw().
> > The former is already called in rproc_shutdown() so we are good in that front.
> >
> > With the above the cached_table management within the core remains the same and
> > we can get rid of patch 3.7.
>
> >
> > Thanks,
> > Mathieu
> >
> >>
> >>      return ret;
> >> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> >> index 2e0ddcb2d792..08e0187a84d9 100644
> >> --- a/include/linux/remoteproc.h
> >> +++ b/include/linux/remoteproc.h
> >> @@ -381,6 +381,8 @@ enum rsc_handling_status {
> >>   * @panic:  optional callback to react to system panic, core will delay
> >>   *          panic at least the returned number of milliseconds
> >>   * @coredump:         collect firmware dump after the subsystem is shutdown
> >> + * @release_fw:     optional function to release the firmware image from ROM memories.
> >> + *          This function is called after stopping the remote processor or in case of an error
> >>   */
> >>  struct rproc_ops {
> >>      int (*prepare)(struct rproc *rproc);
> >> @@ -403,6 +405,7 @@ struct rproc_ops {
> >>      u64 (*get_boot_addr)(struct rproc *rproc, const struct firmware *fw);
> >>      unsigned long (*panic)(struct rproc *rproc);
> >>      void (*coredump)(struct rproc *rproc);
> >> +    void (*release_fw)(struct rproc *rproc);
> >>  };
> >>
> >>  /**
> >> --
> >> 2.25.1
> >>

