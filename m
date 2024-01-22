Return-Path: <devicetree+bounces-33539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C66B835A2C
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 05:57:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 028A5B20BD6
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 04:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 734E94C80;
	Mon, 22 Jan 2024 04:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TLkXbU6N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39984A35
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 04:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705899458; cv=none; b=uartadL2BRN42BelHIOFI7Cb+losIxFvrwHVQnTseC/CvfLd/glIYB8SiTmRTl4pzVuak9Kj3mRIOxDiZ6j/5bbvwHwMettxmgWKeFRbCKTdYFdMqbBUvYaLjNwJCNL4cp5RNrbccluBw3bAqd1nY00+vKKx85XrHsX6fhQHX6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705899458; c=relaxed/simple;
	bh=5YeLdYqk8xDHGUclfUDC+uN84dr7BzMUwPtW37X3OG0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fZJ/yXg0smcdsWipdNKxStzKoyojPYhITjIsZeSWZFoa7/suzxBFlkYZa1889Y763NGdF3aIh2963xtTnrw/tulysMxNxKDjJxbIPNaDMDIySUNY+UkH9UJUr9WH8x53tx23cAAOteVi/vHAhW1G/jGia/RjQ67UCVv2yWjd6gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=TLkXbU6N; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a30799d6aa0so7173566b.3
        for <devicetree@vger.kernel.org>; Sun, 21 Jan 2024 20:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1705899454; x=1706504254; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5YeLdYqk8xDHGUclfUDC+uN84dr7BzMUwPtW37X3OG0=;
        b=TLkXbU6N4pDEu/c6OhurPJqcOd4Rc1ZaMimFP9b+AnzM3F0ma/xpztYhj0/cWfmQj8
         0ppQHVTiT2B6PXdrFHvbY9bPjnUQm6lC+DwVxxd5VMQhweRs7eAhhWfpJSOvIg821wLj
         fuGOMJj6mNKU+5AFOnUEMnivBAmqWqHlxXCq0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705899454; x=1706504254;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5YeLdYqk8xDHGUclfUDC+uN84dr7BzMUwPtW37X3OG0=;
        b=oMOSfNBEJ1+q6q7/thDmS4JPzA4AE7SJBPCOkQuTGymwTu8V7+o8IEEwjhI4c5oCvS
         6gRcyIdbVV2jBOybTHmuXZBa/HlWWGfwG2YCioxTkTeuGVdqNESEAHhx79W3w7HmOdk+
         bl5GxLElM+/bvpLHm0lZ97ngtJehxw/Y+8QXzWdcdvrav90P2RbCwDa947n2EUlAKnON
         sjAiFbXqhqgcmhIL9Pn8Dohwp9Df/A1oIhJhOkUGOQ2cXuMI5w8e3cS+QLOPwJk84FWf
         1Oh3qWNfLrHdmRh+/UyPt4YQba1xr6GteeGsXGUQFr+5EV3RasxCwq5hTBlRTMxi9orc
         yZ0w==
X-Gm-Message-State: AOJu0YyZ677NrITrsZsp1iuEqZ7KBbpwYRMJmKUDBQGMnIflslYFvvJe
	yA1ilAhuthbaevRU/T+RfrqQw4gd1mdq0J4Aa9hHvJSgozy+ZeqwQtDXgjQNTjARgd7Ra+yiyys
	Wag==
X-Google-Smtp-Source: AGHT+IHHkauFrvN773pjeVb3+erqeUZ39VcW1sfuApHdqJ7+3HT4UdT2iRKlQcP8UJ8u1yRoW4f+0Q==
X-Received: by 2002:a17:906:f914:b0:a30:393e:22b5 with SMTP id lc20-20020a170906f91400b00a30393e22b5mr640372ejb.120.1705899454398;
        Sun, 21 Jan 2024 20:57:34 -0800 (PST)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by smtp.gmail.com with ESMTPSA id w14-20020a170907270e00b00a2b2c1a1b45sm12973919ejk.162.2024.01.21.20.57.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Jan 2024 20:57:32 -0800 (PST)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3387ef9fc62so2629723f8f.2
        for <devicetree@vger.kernel.org>; Sun, 21 Jan 2024 20:57:32 -0800 (PST)
X-Received: by 2002:adf:b343:0:b0:337:ca7a:313d with SMTP id
 k3-20020adfb343000000b00337ca7a313dmr2180046wrd.10.1705899452326; Sun, 21 Jan
 2024 20:57:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017091900.801989-1-tylor_yang@himax.corp-partner.google.com> <6c7d9c92-7616-4fad-806e-44302c33b63c@linaro.org>
In-Reply-To: <6c7d9c92-7616-4fad-806e-44302c33b63c@linaro.org>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 22 Jan 2024 13:57:15 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AN-1FTHZcE1Eja0Jd4iqpDocZSz19F44RxqtvKs6ikeQ@mail.gmail.com>
Message-ID: <CAAFQd5AN-1FTHZcE1Eja0Jd4iqpDocZSz19F44RxqtvKs6ikeQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] HID: touchscreen: add himax hid-over-spi driver
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Tylor Yang <tylor_yang@himax.corp-partner.google.com>, 
	Doug Anderson <dianders@chromium.org>, jingyliang@chromium.org, 
	poyuan_chang@himax.corp-partner.google.com, hbarnor@chromium.org, 
	jikos@kernel.org, wuxy23@lenovo.com, conor+dt@kernel.org, luolm1@lenovo.com, 
	robh+dt@kernel.org, dmitry.torokhov@gmail.com, devicetree@vger.kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, poyu_hung@himax.corp-partner.google.com, 
	linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, 
	benjamin.tissoires@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

On Wed, Oct 18, 2023 at 2:08=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 17/10/2023 11:18, Tylor Yang wrote:
> > Hello,
> >
> > This patch series adds the driver for Himax HID-over-SPI touchscreen IC=
s.
> > This driver takes a position in [1], it intends to take advantage of SP=
I
> > transfer speed and HID interface.
> >
>
> Dear Google/Chromium folks,
>
> As a multi-billion company I am sure you can spare some small amount of
> time/effort/money for internal review before using community for this
> purpose. I mean reviewing trivial issues, like coding style, or just
> running checkpatch. You know, the obvious things.
>
> There is no need to use expensive time of community reviewers to review
> very simple mistakes, the ones which we fixed in Linux kernel years ago
> (also with automated tools). You can and you should do it, before
> submitting drivers for community review.
>
> Thanks in advance.

First of all, I can understand your sentiment towards some of the
patches being in a very rough shape. As a community we have large
volumes of patches to review and it would be really helpful if new
contributors followed some basic simple steps, as described in our
"Submitting patches" page...

That said, it's not a fair assumption that there are no steps taken to
offload the upstream reviewers community by the corporate
contributors. We usually do have basic internal pre-reviews for
patches coming from partners and even a pre-review bot (CoP) that can
automate some of the checks such as checkpatch or bisectability. But
as others said in this thread, we don't control our partners and they
are free to send the patches just directly to the mailing lists if
they want to do so. In a similar way, not everyone in ChromeOS is
super experienced with upstream submissions, so sometimes they may not
be aware of the best practices, etc.

I haven't seen the patch in question, but I'd assume it's more like an
exception rather than a usual pattern, so I'd appreciate it if we
could avoid aggressive responses like that and try to solve the
problems in a more productive way. Just a simple response with a link
to https://www.kernel.org/doc/html/latest/process/submitting-patches.html
wouldn't really cost you much, or actually even less than the entire
litany in this email.

Let's be nice to each other. Thanks.

Best regards,
Tomasz

