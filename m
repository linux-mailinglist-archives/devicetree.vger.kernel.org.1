Return-Path: <devicetree+bounces-61974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 111448AF4C8
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 19:01:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4305A1C225A0
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 17:01:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD20913D8A3;
	Tue, 23 Apr 2024 17:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="2EjxUol1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B2513BC33
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 17:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713891667; cv=none; b=U5BUW7b/feFsRSqjI5CEsBqnfiSgnC5hkT3SlrwGcEqrGsGCxD4s4MUXPxOmo0Z1W8mWdpcVV2UnXNoLCrB7E/8w7AtZwCvKfSCUc01V3LoklOPMEk4jtewwXhzCqDovPXXWKt2203oDDJYfIWuVJM8Kztax7bg30IuRPb8jktM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713891667; c=relaxed/simple;
	bh=aswP9hdxKwb+09GNXGRaPB0IEecRqGKQdL5a6+WxhGM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bo3TTGWpKLmExlgyPuA+kaGZHlvgtZ0udIlv5CZE9itzFPXkHrlwN8QZdKoyOkdjsdZnSAKJGA7+yHqCLBbGWZPbydTXjkDwSKLbwPqjP1mlmlppZlMlUfENYDma1B7ufXFkBR1hep8zPoy0p5BtQOsvunPihQBzTzkLJJe+Hi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=2EjxUol1; arc=none smtp.client-ip=209.85.166.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-7da68b46b0dso171149639f.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 10:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1713891664; x=1714496464; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JLMRks9PdH+g104L81D287ju8A0NrozcbxbmvZl/Zoo=;
        b=2EjxUol1sf/a+UBLSAipJ30Dd/j+tsWIwtoBEMBjsNjmKVCCpZ/V59XqTWUOF1l2iF
         JcNE8xxtY46hamhC06kO168CU5bkn2RfehiPVmStYpAs1+mtWgFIXjtted0vcl3SHyo1
         /JxgdyVikMPwAnuBFqB8zFzM9yit0VnfSD4y8Vkyd3YAaZqsj26H4Y6cxAdAEkg/kYDP
         OdsqQP2dpeoegaOfs9hTWZ6BPXtSsfc/H689masPI3IuYufjp/3wvMyTXXat18cYkBe5
         xJ+74HmMMHXmmHYN/tnaSO+yIvw6CLmz82BWgkVtflJXg9Eo6Ca4BiiXkKgAA2P3nLm3
         n9Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713891664; x=1714496464;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JLMRks9PdH+g104L81D287ju8A0NrozcbxbmvZl/Zoo=;
        b=NGsBAOKxkWsHiQnR04yF5cf6rKja5jAHhoMb349B/ryHTygNG7v7w0zTWqhiQzDOo+
         wQyK1YVJdxBCWMP9MN+JVdchpe+466CiSkKbeNVW3vtQPg7ydQp7Anr58mcCaLGAUS7G
         hJdilalz+GEJ+7bpeRk9q4dcF6EDx5l1ZMx2qp9vKTDpN4iacrVvKOGKNoAQmoVCd63/
         HUr8yUaIi8BwSKJQCf3nD6/LPF9/LPlSAvg3KUROTI45UW4/bvxJkXVS8AZnqs/W2yVx
         xiuv2T52cxTjL9nRsfnNdXMXpSA7KwsgH85EkyyG4ympR7s5b2iv2Rji8UqfXhBj0qww
         FedA==
X-Forwarded-Encrypted: i=1; AJvYcCVwqsi1uRiNQJWP2m9o8S2jxVesZ4qlU3HY+V/wTM4z/yVkkk8js3qIj10St1UMO25bcqfj7E03S3wr6o+TeXh37vcMpfObPipfOA==
X-Gm-Message-State: AOJu0YyeLKzUJ1p7kvVWwExhHURBwjtvpvLxt5+Yg2r3ZoIQEHC3Vcs3
	nL9xEYbuOBvkNebOB/2cGraxZJdDxNfJXEfXswNvzouzfa1IzxD0ZSj55k3hUR+f1FvfjZQkacq
	sxGdDvjgV5PTtaYEU0xmha+Y3LjoAF7s3Rg5x
X-Google-Smtp-Source: AGHT+IGcw1mE7GQw0RFfG3rYNhp3N2M96TVgZiM44ui1PYuC2rOp0yhfUgHlgGhehZWYsoHgBqII2uXkVaAYJ4TGtYU=
X-Received: by 2002:a05:6602:6b12:b0:7d5:de78:1d8 with SMTP id
 ih18-20020a0566026b1200b007d5de7801d8mr21123669iob.18.1713891664253; Tue, 23
 Apr 2024 10:01:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221160215.484151-1-panikiel@google.com> <20240221160215.484151-8-panikiel@google.com>
 <09579b62-77fe-4ba4-b3a1-e3b17dff0188@linaro.org>
In-Reply-To: <09579b62-77fe-4ba4-b3a1-e3b17dff0188@linaro.org>
From: =?UTF-8?Q?Pawe=C5=82_Anikiel?= <panikiel@google.com>
Date: Tue, 23 Apr 2024 19:00:53 +0200
Message-ID: <CAM5zL5q7LJC8AmrtM7fH03zyvQug8k4WN4t2=Q-6jQBZAtYYEg@mail.gmail.com>
Subject: Re: [PATCH v2 7/9] media: dt-bindings: Add Chameleon v3 framebuffer
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: airlied@gmail.com, akpm@linux-foundation.org, conor+dt@kernel.org, 
	daniel@ffwll.ch, dinguyen@kernel.org, hverkuil-cisco@xs4all.nl, 
	krzysztof.kozlowski+dt@linaro.org, maarten.lankhorst@linux.intel.com, 
	mchehab@kernel.org, mripard@kernel.org, robh+dt@kernel.org, 
	tzimmermann@suse.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, chromeos-krk-upstreaming@google.com, 
	ribalda@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, sorry for the long delay

On Mon, Feb 26, 2024 at 10:10=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 21/02/2024 17:02, Pawe=C5=82 Anikiel wrote:
> > The Chameleon v3 uses the framebuffer IP core to take the video signal
> > from different sources and directly write frames into memory.
> >
> > Signed-off-by: Pawe=C5=82 Anikiel <panikiel@google.com>
>
> ...
>
> > +
> > +  reg:
> > +    items:
> > +      - description: core registers
> > +      - description: irq registers
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  google,legacy-format:
> > +    type: boolean
> > +    description: The incoming video stream is in 32-bit padded mode.
>
> Why is this a property of board DTS? Can't the input streams change
> depending on the usage? Who defines the incoming stream format?

The input streams are defined by this hardware module - there are
specific input lines for red, green, blue channels, h/v sync, etc.
However, there are two variants of this module which behave
differently - one has 60 input lines and outputs BGRX32, and the other
one has 192 input lines and outputs RGB24.

The "incoming 32-bit padded mode" referred to an internal bus inside
of the module, which I realize isn't very meaningful. Instead, I think
it would be better to have two compatibles, one for each variant of
the module.

