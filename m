Return-Path: <devicetree+bounces-212355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DBFB4271F
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 18:41:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 312473A2AA4
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 16:41:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D07A2FD7CA;
	Wed,  3 Sep 2025 16:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="tfbkLwoS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15992FB61A
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 16:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756917693; cv=none; b=DwY12FKF6ov8iEvN2LIgoP290mYjtIuZ3etqfDStM8UNmc5Jk1gAeOv+7PFWTSQZHiRp8PbBQLPjY1jzRUWw9fk9adLwH99cnBhZu7Ua/RJ2I2hjJqW4gkA30SX6NCiVtt3TR9vK91lIldfsJEBDTqGf4GreuIj+zwyoflZ/6Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756917693; c=relaxed/simple;
	bh=jwW3BccgZxQplfQaY3NsfLjja4XT+g+e5LffJSuphv4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZHJ9eiuUcIBtvz2iBSuSEvusVpEMVDa/8yydMp6o2zqsKfe9w72JrglPW+JMN2yqNtDkfDiYVufnweUPdovxdwj7RtI3Zel9z/3iDzFCQZNGQtG3sHmogr2qgvI9rnuhFFtmSYT3Q32t71BFRiEuQcrlaE0Ayp3nglGv62u4tUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=tfbkLwoS; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-4b48fc1d998so362101cf.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 09:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1756917691; x=1757522491; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b/vJxcPRpGvESlgzYXyBU2wvc3GwYzu+Leq41l/JUsw=;
        b=tfbkLwoSptyIWLqWIUKmwxeAeoIOznVyfVoqrCpMSSsFxZxX9PHop/i/8Pbw1n7ajE
         5JjRwIF9d7zeGxKt0cd6KPuHhIaj/FC1T5E1m7Sb1KLtuFZWYxv9ARfT4MYDmCgVlMtK
         EDwSnmmuD8GvasISXvoikyGSyV3XTWoHK1oE8QB7uKJWJfQH8c9KIcCn3SErG2x9Lfk4
         VxWwleGPdaLzXuxZp++7/uxdZ31i3fS3zufZmSChdGcfhP4I97/Cn8zlbBpNJqvTYMny
         6x0CNhGxnSTO9wopx+wP85E9I/nAfYcbhU96tRunuqwSJk6BUe2n2XI4uem7LByQrL3F
         +Udg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756917691; x=1757522491;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b/vJxcPRpGvESlgzYXyBU2wvc3GwYzu+Leq41l/JUsw=;
        b=EHHmsKq7fNg1l7jYTH+A4iRsYFQyBtxKYWGIuUyGOGOpzke2ExxbIjSQhOTpoxzint
         Pi4OHZYCesAccUP5qwyYs4YgXgI0M7wSMR4t7gVI5G1HWziy+AJPUMie+Edaxx9la85e
         rW8Zwdqy8BJ7NSCBdVpZi0LUptX56zKCW1opfYIKoX5UFUdaIag/QEHFJQnuYi16N0rf
         2g1VXWOoAepUkhn0FgtZY/i3y9bKgG73HQQY2+eHVk29xbtiSu/L2SS/lAmE4zssnB9P
         eQRTv8TAKAntiOSBIjynfFrfM1scOOSV+4sQeLFrGDa+kmBQdw3CbM1p6z2+ZZfJ4/V9
         +Cvw==
X-Forwarded-Encrypted: i=1; AJvYcCVcNt+obcXmencb92Y5c10qC3z3WpoPOfLdMRPgio2Tvo0bO4Msytf5FDkUVGK5+FBRIR1XCFJdOaZG@vger.kernel.org
X-Gm-Message-State: AOJu0YyOu8nJSZ7EcVlQIqVLa/cciLodKxo2fAmpLrqNjnbqRdx0/p5P
	SESdVR8HNjUXF0unSMbpCtByeXwXpoOXcsVXcmtr1HRykKc5pZMHEw9g8uPSqthjy7h6TfJgZ7F
	8EwJo+yjwKJkgcIZc+9Yc7tJpCBGPgdDtrOiEhcw8
X-Gm-Gg: ASbGncuTAkSSz6mwAPjZsPsZrSTSt8KakUcrDlC/+Y+44XgM0eAvmsRQIDDzhBNCR3y
	CmNtDlmEVn+rMUxT1smSGq5ZGKASJ1oyDTEvE0AucBfAEnE0mmj8NqDSmcekLsQCpKVJtfLOTRb
	IVQdN9nfDTUREwWLMgjt47P2kyv9TlImKRFEykNYalPKYO4oBRHTEalbnyI4rTaCYE5psPazpRs
	h+eEPlWSm1/crZKTXWJWQ==
X-Google-Smtp-Source: AGHT+IFoHehzzAC3at7wJqvFXiruuFBM2qqp0XopgJmPwvY+aBFXS+0msH1KaCucKaOoLggA7VwXzewO9Mt5vZOrJ2o=
X-Received: by 2002:a05:622a:1a94:b0:4b3:7533:c1dd with SMTP id
 d75a77b69052e-4b37777a325mr9305051cf.1.1756917690086; Wed, 03 Sep 2025
 09:41:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
 <20250902154630.4032984-4-thierry.reding@gmail.com> <CAPTztWa7kcx8bBEJEKvnjcD4v1-eDLVxMd9C10XiBQi4CDLfHg@mail.gmail.com>
 <v7zrmrhvemyymq6qamz6wbgzr4cijfe4n76ivwyadmltadlot7@3csy442wfasf>
In-Reply-To: <v7zrmrhvemyymq6qamz6wbgzr4cijfe4n76ivwyadmltadlot7@3csy442wfasf>
From: Frank van der Linden <fvdl@google.com>
Date: Wed, 3 Sep 2025 09:41:18 -0700
X-Gm-Features: Ac12FXwYZoUQJMYKoMG2IfRlVgeA9SBEMubP3Ywv8OOtSs4p9NBUTv7ipqCvUr4
Message-ID: <CAPTztWZJqzbR7Y6jE6NM1qQOumYz-ckzSfGDfUcsgMVU7SBb0Q@mail.gmail.com>
Subject: Re: [PATCH 3/9] mm/cma: Allow dynamically creating CMA areas
To: Thierry Reding <thierry.reding@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, 
	Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 3, 2025 at 9:05=E2=80=AFAM Thierry Reding <thierry.reding@gmail=
.com> wrote:
>
> On Tue, Sep 02, 2025 at 10:27:01AM -0700, Frank van der Linden wrote:
> > On Tue, Sep 2, 2025 at 8:46=E2=80=AFAM Thierry Reding <thierry.reding@g=
mail.com> wrote:
> > >
> > > From: Thierry Reding <treding@nvidia.com>
> > >
> > > There is no technical reason why there should be a limited number of =
CMA
> > > regions, so extract some code into helpers and use them to create ext=
ra
> > > functions (cma_create() and cma_free()) that allow creating and freei=
ng,
> > > respectively, CMA regions dynamically at runtime.
> > >
> > > Note that these dynamically created CMA areas are treated specially a=
nd
> > > do not contribute to the number of total CMA pages so that this count
> > > still only applies to the fixed number of CMA areas.
> > >
> > > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > > ---
> > >  include/linux/cma.h | 16 ++++++++
> > >  mm/cma.c            | 89 ++++++++++++++++++++++++++++++++++---------=
--
> > >  2 files changed, 83 insertions(+), 22 deletions(-)
> [...]
> > I agree that supporting dynamic CMA areas would be good. However, by
> > doing it like this, these CMA areas are invisible to the rest of the
> > system. E.g. cma_for_each_area() does not know about them. It seems a
> > bit inconsistent that there will now be some areas that are globally
> > known, and some that are not.
>
> That was kind of the point of this experiment. When I started on this I
> ran into the case where I was running out of predefined CMA areas and as
> I went looking for ways on how to fix this, I realized that there's not
> much reason to keep a global list of these areas. And even less reason
> to limit the number of CMA areas to this predefined list. Very little
> code outside of the core CMA code even uses this.
>
> There's one instance of cma_for_each_area() that I don't grok. There's
> another early MMU fixup for CMA areas in 32-bit ARM that. Other than
> that there's a few places where the total CMA page count is shown for
> informational purposes and I don't know how useful that really is
> because totalcma_pages doesn't really track how many pages are used for
> CMA, but pages that could potentially be used for CMA.
>
> And that's about it.
>
> It seems like there are cases where we might really need to globally
> know about some of these areas, specifically ones that are allocated
> very early during boot and then used for very specific purposes.
>
> However, it seems to me like CMA is more universally useful than just
> for these cases and I don't see the usefulness of tracking these more
> generic uses.
>
> > I am being somewhat selfish here, as I have some WIP code that needs
> > the global list :-) But I think the inconsistency is a more general
> > point than just what I want (and the s390 code does use
> > cma_for_each_area()). Maybe you could keep maintaining a global
> > structure containing all areas?
>
> If it's really useful to be able to access all CMA areas, then we could
> easily just add them all to a global linked list upon activation (we may
> still want/need to keep the predefined list around for all those early
> allocation cases). That way we'd get the best of both worlds.
>
> > What do you think are the chances of running out of the global count
> > of areas?
>
> Well, I did run out of CMA areas during the early VPR testing because I
> was initially testing with 16 areas and a different allocation scheme
> that turned out to cause too many resizes in common cases.
>
> However, given that the default is 8 on normal systems (20 on NUMA) and
> is configurable, it means that even with restricting this to 4 for VPR
> doesn't always guarantee that all 4 are available. Again, yes, we could
> keep bumping that number, but why not turn this into something a bit
> more robust where nobody has to know or care about how many there are?
>
> > Also, you say that "these are treated specially and do not contribute
> > to the number of total CMA pages". But, if I'm reading this right, you
> > do call cma_activate_area(), which will do
> > init_cma_reserved_pageblock() for each pageblock in it. Which adjusts
> > the CMA counters for the zone they are in. But your change does not
> > adjust totalcma_pages for dynamically created areas. That seems
> > inconsistent, too.
>
> I was referring to just totalcma_pages that isn't impacted by these
> dynamically allocated regions. This is, again, because I don't see why
> that information would be useful. It's a fairly easy change to update
> that value, so if people prefer that, I can add that.
>
> I don't see an immediate connection between totalcma_pages and
> init_cma_reserved_pageblock(). I thought the latter was primarily useful
> for making sure that the CMA pages can be migrated, which is still
> critical for this use-case.

My comment was about statistics, they would be inconsistent after your
change. E.g. currently, totalcma_pages is equal to the sum of CMA
pages in each zone. But that would no longer be true, and applications
/ administrators looking at those statistics might see the
inconsistency (between meminfo and vmstat) and wonder what's going on.
It seems best to keep those numbers in sync.

In general, I think it's fine to support dynamic allocation, and I
agree with your arguments that it doesn't seem right to set the number
of CMA areas via a config option. I would just like there to be a
canonical way to find all CMA areas.

- Frank

