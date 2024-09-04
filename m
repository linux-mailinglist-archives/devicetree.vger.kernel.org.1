Return-Path: <devicetree+bounces-100156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 972BD96C784
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 21:28:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5439C28806F
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 19:28:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB1981E6DE7;
	Wed,  4 Sep 2024 19:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ZJ7Kblpv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494541E6DE5
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 19:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725477967; cv=none; b=g82JNti3dunad5sCkBHFd9gxR7kSKoiXEdD/B8CgQjB9WKXQeyLlGT2cyi7p3d+tTR82AbdJfT308hMYxAvwb8cmrBXouV+ZKeKlpZBNfOaEM8GXOTTDogiXXVgLYXhWJbWlA77W8AsOvAgIbpI9WHtKSvrdoQqea8Bf/b7YgNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725477967; c=relaxed/simple;
	bh=JbQEdJAfSaefhmwrzdBsb6aNoET+uqf7VVTcNlnZrFA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hYjBTpUT5Sudoysle5fdFwRb7AARgkua+VZGFaye/JxQZRVNwF33kvU7+BjcnQhY3iiTiuQLGvNwewUp7gmgbRT3UmukGNqOwwhrg3B4oZOSLLZxxNmeCVe+UC6J4OLPd61GSGu0ITSB09MK3N5JDoCG7J+mTn4acM0GoGSNN00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ZJ7Kblpv; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2055a3f80a4so29356025ad.2
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 12:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1725477965; x=1726082765; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QzgXI30XIm8oNOmE6GpllOlVvkUGWlkzjWvspomrRUU=;
        b=ZJ7Kblpv13AIQgpQQCupsawJpvWS1CLUU6WOzeMMMEFedVvG8ISwF30qg+ba5NnC32
         dzKlGp9uGF5EjQW2zZ0CJ7J4q49m6fopaS7T8grrxqxQ+VcvXoQqpJvJYZMqNotGe/5G
         mlum5+nnnFgJd+8jH75Kc/1jsMcNp4qv/Z/Kdp6OQvC9jTuORXPA0D9pRqti5AkfRBAm
         wk6POoaIQm2HNj+0uFcDsiVFLHwWLyZGpKaOsiI0mvjRghhei1D9GcPTZCfVgT3kMM0s
         HOUB9qFugRBwEAT7RS0fWUN0otsw0sFXPZYBdut0kZB8bMmA0ukFrLTPvGxP3k40ZkNL
         AwIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725477965; x=1726082765;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QzgXI30XIm8oNOmE6GpllOlVvkUGWlkzjWvspomrRUU=;
        b=iG8UfkCPxlbF3Rmjla0rifNO6pG1/mos8MC6BOrsVgZCwabNzjdfSkRNQxjKJ7FPJJ
         1+/DydUoiIMcTzdYRvpq2ZN9WYi82VARf4liGC6yTAOXs8tmPcSFj/k+0LtKt+SY8f0J
         V8oJ/ifLt8Tzb1PM/YsUuiLyCwCwWy3hFkj9QKtlRNoZx9PcyTbnLerLjuanu5BVJOSn
         1uhMhgr3V1uYWxdpHg2b4+NWDlOF+UBjCowPx7hkrzpHNwTK2BGNd46hv1X6IPyIr9vZ
         nekgyCxAXmCYymHHfCQgr3xkWQsWX8yKCVSWHnJfS6VQvrURshDUaraRNQaIpOxjqaiM
         ZszA==
X-Forwarded-Encrypted: i=1; AJvYcCWa+yaTZetuAxM0tyxhJ+t08gmwFVH5Zxw9TpnhuVwAO1jxFqkZHQmbzIZJCebpTH5QnzrtFGSCMz9p@vger.kernel.org
X-Gm-Message-State: AOJu0YyiQg/nJDdsOfVTmDy3cBmom2k8IWLw3r1bG89qsWgs83/4oJQi
	VV0SpPhp/Vmh14zHFGoLAzfl2mrLboGnn6ck3pnvTpREtlqIzk37u/VmLyCSDrMTmEno4D5NEed
	RYZrhJfohuYjgXJQEZOCMbHC1nB1g/Tr4iPJ6
X-Google-Smtp-Source: AGHT+IFA5vuSQfHjZv43KDRTRUBUxTC4QgFsJOO7wbJ9AKy9YCTUxhNxS/R4q49PuebEPHSlqF9tAuQmPi0RJOXj1AI=
X-Received: by 2002:a17:902:f682:b0:206:b7b8:1f0e with SMTP id
 d9443c01a7336-206b7b82ed2mr27612835ad.1.1725477965110; Wed, 04 Sep 2024
 12:26:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87cylj7ul2.wl-kuninori.morimoto.gx@renesas.com> <20240904150720.GA2578755-robh@kernel.org>
In-Reply-To: <20240904150720.GA2578755-robh@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 4 Sep 2024 12:25:28 -0700
Message-ID: <CAGETcx8SuPjzukN6WwuGJAFNoe57avNU=qtw9SCkydH0snr6ew@mail.gmail.com>
Subject: Re: [PATCH] ASoC: dt-bindings: renesas,rsnd: add post-init-providers property
To: Rob Herring <robh@kernel.org>
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Linux-ALSA <alsa-devel@alsa-project.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 4, 2024 at 8:07=E2=80=AFAM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Sep 04, 2024 at 07:21:14AM +0000, Kuninori Morimoto wrote:
> > sometimes, fwnode dependency cycles can be broken, and in such case,
> > rsnd driver will never be probed. To avoid such case, we would like to
> > use post-init-providers to avoid it.
> > Enable post-init-providers property on rsnd.

fwnode or fw_devlink cycles isn't broken. It's detecting the cycle
correctly. But it doesn't know one of the dependencies isn't an
initialization dependency. So you are providing additional information
to break the cycle. Please say something along those lines.

Here's a suggestion:

fw_devlink doesn't have enough information to break the cycle between
<list the device names>. Add post-init-providers property to <insert
the right device name> to indicate which link in the cycle to break.

-Saravana

> >
> > Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> > ---
> >  Documentation/devicetree/bindings/sound/renesas,rsnd.yaml | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml =
b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> > index 07ec6247d9def..cb44478d9e420 100644
> > --- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> > +++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> > @@ -112,6 +112,10 @@ properties:
> >      description: List of necessary clock names.
> >      # details are defined below
> >
> > +  post-init-providers:
> > +    description: ignore fw_devlink dependency cycles and avoid driver =
probe dead-lock
>
> Drop. Don't need to describe (again) what a common property is. If you
> want to say what your dependency cycle is, that would be good.
>
> > +    $ref: /schemas/types.yaml#/definitions/phandle-array
>
> Already has a type, don't define one again.
>
> What you need, if you know, is how many entries (maxItems).
>
> Rob

