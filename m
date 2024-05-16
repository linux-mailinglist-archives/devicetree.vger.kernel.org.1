Return-Path: <devicetree+bounces-67360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D438C7AD5
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 19:09:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D75C2844E1
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 17:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6D4114F9D6;
	Thu, 16 May 2024 17:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="KBoMMkAl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1070E145340
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 17:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715879368; cv=none; b=iW4/mxN039LRzY3Q9BkGjPGHjx0Em6RbIWq1HBxlXctPIUm+Xix7VvK9omPU0IgbYZ9y74SNoJxiEmMd4nSQcb+joG4K9jJvBFaSJjdFoFsCbwcJu+C/lNskfHA9osjIhSqJq572EBCUTdCL9p/QmJS118rQnv52LOxwIVH4oHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715879368; c=relaxed/simple;
	bh=55h9b3IC20GecaCz/OvRLDtJH28fiugxeARLWfB0kFo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JhQkejdM91v2xhDRrDBZIwWWf6uiUPnG0Cs87ETwpV0ykHMe9CEuDDBrHqEubNtJqTx+vIxQf+t6OMhsF3v4oZTv0eCVl92lclssb+InAALSY4iMCO19WJWs7vIsItK+xEJwVCZ5G53+3gzGqkU+lExcbdcgfatfF+XMIHU3JJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=KBoMMkAl; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-420107286ecso5185e9.0
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 10:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1715879365; x=1716484165; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qQzIVlQ1gpgjynAxQQJO0srkRwgd45+RmoC324lNlhs=;
        b=KBoMMkAlysRfd/b+F0Yd31eBhqq0gaX46rIxNgoYmxHH0M4SUTj5Q5jHd0arZ66wOC
         GFCk6SM76/5KX7fuBbgnF1SUZnpXDD4DkyA0kAkenXlJcA6zoO2EeKwqQ7Dd8ZOQ5feV
         G9p44HXoxrYQwgzQNoi4HQeS87jBtiVRcuwVjRAMO2x7cT3cYygoAPMmcRv7SBJtFNO7
         M6FNi6jahlM3GcCNgsVKSONW9LHDWPVGenPbHk8oDQGl+3/lmzwbYFlfHTd+LrwLprf+
         bnL5EbXApfV3my1NpDxkj+9ZM4h4vM/LaPTctiA3ZzLP5UeYcff3moWU7Snjt8UDjZc0
         nbDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715879365; x=1716484165;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qQzIVlQ1gpgjynAxQQJO0srkRwgd45+RmoC324lNlhs=;
        b=rY3TtCW1A2t8kfnbL9jnfRehfuUHNRCkBB/r2TI2ZEulCkhWiW0TNlxbgRS/iGxZ+a
         dFdElyb6LfDEnWUI8bAwiYrYvXatQptv0CswjnJ5xX2yLB3I42fzq60LRY9Y7eeb7LPL
         LrKA5T3SmD2L7p+JmcR0IYiPJUvwmbrEdP72KuadlfInCRlb/T2HLWijEuc+5jY3H6WW
         p8+OyIalrIdwuCw87F2OKuZo/qYpXgJ3EcAFtpm1BEE+XxUAreGmojvrz/6aXkY76Ixm
         i4EZp6YXbLnnzgA4a9zf6pF1o+1MtDX4HhvSHTCNB3qJSHECsZqA96r5TUJ4ljXxqvRM
         MSsA==
X-Forwarded-Encrypted: i=1; AJvYcCV0SvIYh19xLbTKlswocbdTnJPhTrJwSh6g0/r8EzlO45C/Xzh6eHeqmWzQpsbAGFMkuwSgjgmtw7+NrqVBlB6IykyZWl05unCfCg==
X-Gm-Message-State: AOJu0YxbraDlTVRU46SYs4QsQni76mzQ46XDSNXfDEp/K6LY7WU3vgGG
	Xg64vBZbCmqQXpRVY2dD50OttktPY7rjR186sIoSpaumlXHcLuMwiNyYL4vYxsk5EKcmpBmeFTB
	bdY84xAAcPbAItV2YrYnTShy31fIyvrbXJ1s=
X-Google-Smtp-Source: AGHT+IEbIHaPpQUwsM2bGOORaLwAAJk/9w7y7+ELgEsY9rlNpgazkzZDH+eXj4VRQX5ZsmyvpnueMFsMKYjhmj/eslA=
X-Received: by 2002:a05:600c:5024:b0:41b:4c6a:de7a with SMTP id
 5b1f17b1804b1-4200f8bbe7bmr11807905e9.3.1715879365312; Thu, 16 May 2024
 10:09:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
 <CANDhNCoOKwtpstFE2VDcUvzdXUWkZ-Zx+fz6xrdPWTyciVXMXQ@mail.gmail.com> <20240516-truthful-fair-kudu-adb6df@penduick>
In-Reply-To: <20240516-truthful-fair-kudu-adb6df@penduick>
From: John Stultz <jstultz@google.com>
Date: Thu, 16 May 2024 10:09:13 -0700
Message-ID: <CANDhNCqyh2ZKsOyb9rLBpUZZ+VTU8M70XBQC3aC2=G_v8LqciA@mail.gmail.com>
Subject: Re: [PATCH 0/8] dma-buf: heaps: Support carved-out heaps and ECC related-flags
To: Maxime Ripard <mripard@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Sumit Semwal <sumit.semwal@linaro.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	"T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 16, 2024 at 5:22=E2=80=AFAM Maxime Ripard <mripard@kernel.org> =
wrote:
> On Wed, May 15, 2024 at 11:42:58AM -0700, John Stultz wrote:
> > I apologize as my worry is mostly born out of seeing vendors really
> > push opaque feature flags in their old ion heaps, so in providing a
> > flags argument, it was mostly intended as an escape hatch for
> > obviously common attributes. So having the first be something that
> > seems reasonable, but isn't actually that common makes me fret some.
> >
> > So again, not an objection, just something for folks to stew on to
> > make sure this is really the right approach.
>
> I understand your hesitation and concern :) Is there anything we could
> provide that would help moving the discussion forward?
>

Mostly I just want to make sure it's discussed, which is why I raise
it as a concern.

Getting APIs right is hard, and I know I've made my share of mistakes
(for instance, a situation that very much echoes this current
question: the *_ALARM clockids probably should have used a flag). So
I've found highlighting the trade-offs and getting other folk's
perspectives useful to avoid such issues.  But I also don't intend to
needlessly delay things.

> > Another thing to discuss, that I didn't see in your mail: Do we have
> > an open-source user of this new flag?
>
> Not at the moment. I guess it would be one of the things that would
> reduce your concerns, but is it a requirement?

So I'd defer to Sima on this. There have been a number of heap
releated changes that have had to be held out of tree on this
requirement, but I'm hoping recent efforts on upstream device support
will eventually unblock those.

thanks
-john

