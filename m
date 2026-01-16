Return-Path: <devicetree+bounces-255845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF1CD2AACA
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 04:22:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BBF453074A76
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 03:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9434E341AB0;
	Fri, 16 Jan 2026 03:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhJmV9qF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6003B32ED21
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768533708; cv=none; b=RpQof4IFccKhQ+IF6iCr1fPG8qI0RNu9m+YuxAzpeK2Soq519IrhXgJExcmudbI9NumiEbiQ08DGPQyLpq/mB2Tn1VycCNRWFT1/q28o66R8zkRvM5mExFIZzpM2KjtZfYLou8NrYlbD/rZHYvgpi7n5MrrSvlxf6OotC0OsNNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768533708; c=relaxed/simple;
	bh=q6Pftx5ygIg+A3STViDGOQndW9Ae1+sfpovBAOpYdhA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Q6c+5o/5l5SOZQ1IQjwUc6MZwXnB2seXlDucI/JEUOboVnWjt9CDhejjn6DKtI8mytdMykAFo8T9D9BYU3gzEiAitd6z2WBP7AZJmc2qYwXNaSLGeZw26PuMFSCbYiYdHD+hRyYJ+jWVJQYSQxOIeRNG0C7avOVqTrP8FTXCGOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhJmV9qF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C125C19421
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768533706;
	bh=q6Pftx5ygIg+A3STViDGOQndW9Ae1+sfpovBAOpYdhA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=EhJmV9qF2PIdvYYgK7VVcSN3IHyPC1Of2NVGU6pC7g8w9wjg5jkkYELoxHjTBUtwx
	 wsM83/6C5tHpBCtD+l6eRINvQg4amNcfUZDrq4/cOIGKlFySS3aRCmLS2my2P93nqk
	 p2XkmnejuTISTWTYfLNb0STtpITklpsLk4bSjyzZQobIIrXChn6bjw6fIf7CQizRub
	 7XJ6TDQuQigLNLxNXCBWEzkgpRFPwBHguE6oTgeyg+In5O0jTtgXnZygm34lB+2Jq0
	 e8F1dEFyU+s7iMi5zNJfKpKzcW/Jj4zs8HBweuqzHf+qv5comWKXEJvMT60DXDqGCG
	 /uazLuLaqED1Q==
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b8719aeebc8so288993566b.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 19:21:45 -0800 (PST)
X-Gm-Message-State: AOJu0YwvXIMP4pc5tLCqDfo+9heTzVa0igE3XohAPI/ANEYnFUpy+rwO
	nqs9eDot3JYHoTozdCpR8wUtCuC3xUZA1mhtj87mB2LkoqAkOfysSht2Mp8yds5AUlylHcFhuOx
	sRcdX3dbttY6ke1DD4OnXCLl/zI2tHw==
X-Received: by 2002:a17:907:70c:b0:b87:1ca0:4a12 with SMTP id
 a640c23a62f3a-b8793029236mr133540266b.64.1768533704629; Thu, 15 Jan 2026
 19:21:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115091839.8206-1-bartosz.golaszewski@oss.qualcomm.com> <176850847300.1117426.16555405652845405929.robh@kernel.org>
In-Reply-To: <176850847300.1117426.16555405652845405929.robh@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Thu, 15 Jan 2026 21:21:33 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLcRQiV=2g7VdudKheD_12+m_5VcGQX_s5r9_z=7+cBaA@mail.gmail.com>
X-Gm-Features: AZwV_QjR9l7rciyV6crbYnm0kIN1TaflIWRLX5Lc8EqKkwsMPpt8d2CxFR1mQGQ
Message-ID: <CAL_JsqLcRQiV=2g7VdudKheD_12+m_5VcGQX_s5r9_z=7+cBaA@mail.gmail.com>
Subject: Re: [PATCH] of: guard pointers to key OF nodes with an #ifdef
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Saravana Kannan <saravanak@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 15, 2026 at 2:21=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org>=
 wrote:
>
>
> On Thu, 15 Jan 2026 10:18:39 +0100, Bartosz Golaszewski wrote:
> > We declare the pointers to some key OF-nodes unconditionally in
> > linux/of.h but only export them with CONFIG_OF=3Dy. If anyone uses them=
 in
> > code built without devicetree support enabled, the problem will only co=
me
> > to light at link-time. Add an #ifdef guard to catch it at compile-time.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.co=
m>
> > ---
> >  include/linux/of.h | 2 ++
> >  1 file changed, 2 insertions(+)
> >
>
> Applied, thanks!

Err, and dropped.

BTW, my ideal fix for this is to eliminate any users of these variables.

Rob

