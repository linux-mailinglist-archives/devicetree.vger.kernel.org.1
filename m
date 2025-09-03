Return-Path: <devicetree+bounces-212377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A52B428FD
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 20:48:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD7341BA042F
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 18:49:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 800C32D63FC;
	Wed,  3 Sep 2025 18:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="u8NVAyIs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0E117A2F6
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 18:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756925334; cv=none; b=U10Cw3w3mJ55NWgNI7mis+J8zyw1naPSXsPJd6S9Pm/iVmsDfZrMUylCDtjQi3NLhORIhSxlwXbhmF+ZCJzZlKdL/QQ0jIYiWPrfYNtl6gfQtJnXQTdhTaCFe2Xqq+5ZTW7QqslhIE5fMfTrQ0OpcOznMfTqsWikRbnSabdSGPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756925334; c=relaxed/simple;
	bh=SpKd2275sVbG0K2FZVdjWp6/Z18/FkDT3HL6WWRqaEg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=boqYSoSqPncqitfVZ8vE+AhYyqBZJTiZVqsoQYKFpWxoUy1qe2QFhYaxcLDx4V0OjqVne037M0+TuyVqgxAEPo832XA4GSd/NCoPdAXdcE+fu+8g/y0SmWGfEKrgsP77t1SSunEbbjW84FOGyXDy0irBW9Tk4ztify3BbSwC6A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=u8NVAyIs; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-55f69cf4b77so159977e87.2
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 11:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1756925331; x=1757530131; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SpKd2275sVbG0K2FZVdjWp6/Z18/FkDT3HL6WWRqaEg=;
        b=u8NVAyIssw3t9zRxrhEdCcCnI4vtKVD3XlZ8yldVYCetM4tNhB0ojB5yEjQxdYcZuL
         uFxVqeYQDEjhtuNrfOywtvaNsI6gXtpWnZlzB2hXk5AIEddfdLGLuZDRF+gCiJEMUkAf
         JqlhATiGlk7Lnq6JWFSlXJXDmCRfEua9X0gLEPfKI8WKslnejCzheeHVmE+Od2m/uoIc
         6vN/cRkO50PPj4x7WrupBb8vXri+i+HdeU5j11AudTTqqjvVXWwXsh/fV5qdOIVIDSRb
         /A8OVPt/C90ULjKekIvYcWxNBN/kncF+w5tANejOL88gaVainBq4Ay7i8dXHSwQnp+PQ
         TqlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756925331; x=1757530131;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SpKd2275sVbG0K2FZVdjWp6/Z18/FkDT3HL6WWRqaEg=;
        b=L5Gy/EPFfuI2bm9Z9D6RiPKCvVNiYvDx6KrnkSED8SVw5d0lmAJ4a4w/7ncOhRuSI5
         5YX1I7cs+3owtGhO40zZswIdo3OXElGxyuYv895X0ybvuRI2bXiCzh81cxqk6BxOEgRa
         1G71lafeWyfiHDd7GitGAaaJ5FWfLkCGGKwC7+uyaBhzFk2E5wLd6SKyS9rmz9vtP6Ky
         4hDCJbuUenE05H+DI8lYsLZw9EgXVcM5aP1pTFO0I1TD9jPbS1dkW11SE6A6MFhsWPj6
         jsh1PFSzXj2cq8Z4hGiQyOx6aW1RVk9+KGCV3F+xsW+gZ6vNt7S0ZecfMNWxD+NPt6AF
         XK/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUw+q6lXskEWPctshW+/TbKXO0dsTRw9BRQfsM3NSjM1eW3sKdryc8dAW8EUUk+/TCPP1FdCoeu6+gC@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1LhTccLEWqTrUumVlhMoS8xO0l0eVpsx+mpfIPYCVm1tkOXvy
	siCRYh/3fr3iNaJit+OcsRzSvSMYxfUVgkHWz4sjJR/Zk+oWV53nkbqmfNEbneJM4O2qsf2Wc53
	fSPMEQRDVZWqoTFfT11KNhQMi+cZOjriIvvfJF/E5KUP9ntCcGsi8
X-Gm-Gg: ASbGncvIya60HWOws1hhOnaiSLo6vaK85sGg0HexDkPgingGbXg++jukGXnDCqnnm60
	65+lRct7yoGTyN9nVLgztagy0PdTMfdn7BNqTVGz33X3e3gAlfaC/lf/Wo/X4yc/xGa9Uu+rFWn
	7Gp66OOAEuIr4P5WG8RREfvmJwxBavFTdEBSzzgv9FteEtVaM7wyjSDJmTxBN9XAknlgD35eHKH
	KDUufFT0vO2qvY/qGMww2gtBNSb5XQlQhJOu9hndAQ=
X-Google-Smtp-Source: AGHT+IF5G/J215zB6F+3YqHgBGUMzaMxIb8FdX2l9xOBS14z2EjkTnAnD4URRw2r/tfzfVxdowvkPYNpzRoqDhW7JLg=
X-Received: by 2002:a05:6512:660a:b0:55f:595f:9a31 with SMTP id
 2adb3069b0e04-55f709747b3mr4044420e87.51.1756925330683; Wed, 03 Sep 2025
 11:48:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
 <20250902154630.4032984-5-thierry.reding@gmail.com> <CANDhNCoM4RFX-QccF7xT=+-tduGj9OZ_8SgrTVyRucMwyVc73Q@mail.gmail.com>
 <e6twhwxi55eesb7xirei7wezzb77qjiji2mccgqlziisjzl3q5@3ny5e6lbgebz>
In-Reply-To: <e6twhwxi55eesb7xirei7wezzb77qjiji2mccgqlziisjzl3q5@3ny5e6lbgebz>
From: John Stultz <jstultz@google.com>
Date: Wed, 3 Sep 2025 11:48:38 -0700
X-Gm-Features: Ac12FXyfpojM7sYEH_SV5iPkXzxCBmlghsM38HwpGdBEBMQS7yemN51cEMcgCs0
Message-ID: <CANDhNCrO21O_URa1iHuroOoG-g61DL7uvECTwVxiuitCTi=i4g@mail.gmail.com>
Subject: Re: [PATCH 4/9] dma-buf: heaps: Add debugfs support
To: Thierry Reding <thierry.reding@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	"T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 3, 2025 at 8:38=E2=80=AFAM Thierry Reding <thierry.reding@gmail=
.com> wrote:
>
> On Tue, Sep 02, 2025 at 03:37:45PM -0700, John Stultz wrote:
> > On Tue, Sep 2, 2025 at 8:46=E2=80=AFAM Thierry Reding <thierry.reding@g=
mail.com> wrote:
> > >
> > > From: Thierry Reding <treding@nvidia.com>
> > >
> > > Add a callback to struct dma_heap_ops that heap providers can impleme=
nt
> > > to show information about the state of the heap in debugfs. A top-lev=
el
> > > directory named "dma_heap" is created in debugfs and individual files
> > > will be named after the heaps.
> > >
> >
> > I know its debugfs, but this feels a little loosey-goosey as an uAPI.
>
> Well, the whole point of debugfs is that it's not really an ABI. Nothing
> should ever rely on the presence of these files.
>
> > Is there any expected format for the show function?
> >
> > What would other dmabuf heaps ideally export via this interface?
>
> I've thought about this a bit and I'm not sure it makes sense to
> standardize on this. I think on one hand having a list of buffers
> exported by the dma-buf heap is probably the lowest common denominator,
> but then there might be a bunch of other things that are very heap-
> specific that some heap might want to export.
>
> > Is there some consistent dma_heap-ish concept for it to justify it
> > being under a dma_heap directory, and not just an independent debugfs
> > file for the driver implementing the dmabuf heap?
>
> Well, I think just the fact that it's a dma-heap would qualify its
> corresponding debugfs to be in a well-known location. We could of course
> pick some arbitrary location, but that's just a recipe for chaos because
> then everybody puts these whereever they want. There's really no
> standard place for driver-specific debugfs files to go, so putting it
> into some "subsystem"-specific directory seems like the better option.

Ok, I guess I was thinking if the files are organizationally cohesive
to be under the dma-heap directory, they ought to have some
consistency between them.

But I can see your perspective here that organizing the driver
specific debug files in a directory helps with folks finding and
identifying it.

Thanks for clarifying!
-john

