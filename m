Return-Path: <devicetree+bounces-41040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B02FF852246
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 00:06:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BEBD28529F
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 23:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3D1D4EB3D;
	Mon, 12 Feb 2024 23:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="L2YqIc6C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F484D5A2
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 23:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707779186; cv=none; b=OE6dgQMtdsjtKYLTwgg2NV14V0BrYSZwid6tmW1VQ5greS0rhRhhWEfe9gKJxoVWadHvQ7XoTfadEyx14PhP7wth2JPaWYvj39dgLitPVoP4ynMlw508mKCnGGjEW4oQ73cMw1K86GGj40Cla8r7QdQ8YQgPoSnwGe++Z+bIpqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707779186; c=relaxed/simple;
	bh=xyJS4yDPKZrA2HdoXcsXz6GNBDwVIVv4GWpRJK3vmJ8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k6g3+1z7gZlajbFsUliHIu0bIuEPJFo1hFJIuyOvHmy4yOmOUaM1bL8xjwG/9O8zb63U21bSkKpQNA18lgsnRlqOjDNwYnFVAmXR5up5YEB+1TdE1+C1Hf0p7a996Syu/xXu+XfnFXW2vUrUNl9cvjRKED+xuKR0PkOAO5FFFik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=L2YqIc6C; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-42a99dc9085so27181cf.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 15:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707779183; x=1708383983; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X8bSh9OQLoWAq/ajMiSXj5T+yruvi0AGogBnnOcqqrA=;
        b=L2YqIc6C/WIr3CLYw6RHdVTKxFWpAdgxNyvGqylmjugvhGeqv+z7T9HvcBNa7g+SMu
         2UQK4w7WDejjXhNYihqC4sX0RPCYPihkGS9NWTB2xomwZUYZkM5K04TOU9tKn0EofKcv
         qYo/hU9U6hZlElgiowc6hJTfajvWfQ0bVRR8FEN907frjuaL+b95mOg1KOy2Cz/Q/5ft
         f1CMKJ59Vf/MDOjypsUu4m9L7wO0+XopbAgTptKeS5S+2pTnOdnNqZggFIOJdyB+JUve
         PiLNzSR4CCYDT6lFJ67X9jZKbqFkx7CnX2vgeuLdBvbHqAUCguvyHTg04bLl26nj2PRU
         RaLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707779183; x=1708383983;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X8bSh9OQLoWAq/ajMiSXj5T+yruvi0AGogBnnOcqqrA=;
        b=H8+bDt8VwyEQPOAZKIC6hBBBMG8uE/elPlmQwaAwAK5JmTN8xkkWjXstKkVUgszvWe
         O+7xouaBMmUVQEySc92qQTiaqDeScLK6P9IL0OE6toB9XIOAyXVFbhs141OmSULRSFUT
         FrjRC7GKaUGW+NhZUrPySr4jCnsmvAfTtWbBy4/NMxctjcos+7hmXNqLv3y0VH7kBOtk
         LVJ52gt9TgBGQzbr0sIxRF0nvoXCWDb55OiIV6faMPDOhgWml5Jgl1bo+Tdip3MplPfC
         ppZT29w7O4FPk5k4byF4wn+jF3w/qZn9BdXnUaWXuJEYYHWvt8cfb1uIYVp/Dg+QQlJo
         Hq+g==
X-Gm-Message-State: AOJu0Yxke8eyiwNlKOWFFt14x2T9GLMw3+g8LOXog0tzlTnq9mRqy1Wr
	sC+ZAPTajJuuC40zlSuulyxaZVurgS04D5kCRuICCVKKpBMuLFJIEF8Pz8rID3YpGbmHd+M0HKi
	84860IzqqiLOEbnGzTHycERNfiDxe0sJ3skzc
X-Google-Smtp-Source: AGHT+IGLwPGjPlcidiwBmZE3kuLoR8uVLPyIRXUTeScX5Zmv0+siKRJVA8fBuiJgIKgOYS2Z5jzRoW/X6p9fOVKX7Zo=
X-Received: by 2002:ac8:1386:0:b0:42c:7de1:c96b with SMTP id
 h6-20020ac81386000000b0042c7de1c96bmr46715qtj.24.1707779182851; Mon, 12 Feb
 2024 15:06:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240210231513.111117-1-saravanak@google.com> <170777778090.2688977.14804637560473102697.robh@kernel.org>
In-Reply-To: <170777778090.2688977.14804637560473102697.robh@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Mon, 12 Feb 2024 15:05:45 -0800
Message-ID: <CAGETcx9Aw8-Phc0MpNkRz6rGmvCzwBSxJgBahNQCUg-BBdNHzQ@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: of: Add Saravana Kannan
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 12, 2024 at 2:43=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
>
> On Sat, 10 Feb 2024 15:15:12 -0800, Saravana Kannan wrote:
> > Adding myself as a second maintainer for Open Firmware and Device Tree
> > to help Rob out with reviews and other maintainer work.
> >
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > ---
> > Discussed this with Rob.
> >
> >  MAINTAINERS | 1 +
> >  1 file changed, 1 insertion(+)
> >
>
> Applied, thanks!

Thanks!

-Saravana

