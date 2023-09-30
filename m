Return-Path: <devicetree+bounces-4907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8827B43EB
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 23:23:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8466D2827CC
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 21:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF67F1944E;
	Sat, 30 Sep 2023 21:23:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C47319449
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 21:23:35 +0000 (UTC)
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08F46DA
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 14:23:33 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-533c4d20b33so4116873a12.0
        for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 14:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696109011; x=1696713811; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ig8A07CWjYmG/EAk3sHFUJZdpg9ocf6hfO0M1rWBntA=;
        b=D/decWcNZ1UnYdGMjAXtidU14qzDJ6j2QvA1CU/rwn7kcDQkRireLNJHL2N/qwZSQZ
         7Bbr6JrfAA4D5O9ZxMsm7CCAslkh5xqUCp/Ak5qX+4/ClwNXYTGjiBHCLScsPbiy5gnN
         jQcBLOFUazZ3pF/2p6O6RjNFNh5ygmu5GoO7fhFRwESYWHZP0xf/WSQpOwiiJIa2uLnz
         v6bKdtnVgefWYYYxLjxw5X4UMhZGicdJFM1pNjfIsyKihF/6rK7YwhbZ4VvBGDJY9C1L
         vp1DWb+sh2zXP8zjexMQAujVvAMQlhYfffc6XT6EJ9hIyQ3Aus8I6KPe94uXV/VRco23
         fR5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696109011; x=1696713811;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ig8A07CWjYmG/EAk3sHFUJZdpg9ocf6hfO0M1rWBntA=;
        b=Qo/rn/yo8RY3Y0ULL0GIMoKzcokJWrxcUelgBo8y36YFdMvSs6TJDgRclfUBk2kbjC
         JVGLPdjzWvheK0Od5RTDEgqq3OXeEW61ECeEx3OqEtRPGlMO2V0W4knS+BEUSsvVo0SS
         ulpkb3KxcW09WKcSGfOUYRAkhCJmLYKzP/I4qqPxasIvwcE3BZ6HnYKhQahTXW5Dd9+v
         BTqsxWwv1saXBATylOeOVRxNG7+UyAg4juWs75A3xlHU6Zw5Ltnxl6Wj3pnCsYXg6eav
         U1GGNt8prLATcOyiG3ZEGpnSlr6Ivrc4rT32NvHs6myntpxbrMXy+jLyxB0gUiiGnps2
         Bdqw==
X-Gm-Message-State: AOJu0YwQNnlla71KL+yAdngdrCv8wT5D2D9wjG7nnTSTKfj5B+xkF6A2
	5fQtFQ45id5XxfZzmncAJsM3YhFPBcnRKdr3bk80pg==
X-Google-Smtp-Source: AGHT+IEMgv5dtBgdlt910cOgip0Q3cABT/dTosRxWbh0cEThvcDhjE5KB0u9YKD1XnkQINK0tF8fkvezrCfMtjw8uxA=
X-Received: by 2002:a05:6402:40cf:b0:531:14c4:ae30 with SMTP id
 z15-20020a05640240cf00b0053114c4ae30mr6781828edb.0.1696109010653; Sat, 30 Sep
 2023 14:23:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
 <20230929-ad2s1210-mainline-v3-14-fa4364281745@baylibre.com>
 <CAMknhBGFBwQQouhsPMgCuMn6+eQfDCcSzJvF-DwJAnoEPvMLAA@mail.gmail.com> <20230930160047.0c5a5388@jic23-huawei>
In-Reply-To: <20230930160047.0c5a5388@jic23-huawei>
From: David Lechner <dlechner@baylibre.com>
Date: Sat, 30 Sep 2023 16:23:19 -0500
Message-ID: <CAMknhBHdcLNxX8mzTyjSBeoDdXjyT_8LebtzCthBPHeFwYyjsA@mail.gmail.com>
Subject: Re: [PATCH v3 14/27] staging: iio: resolver: ad2s1210: implement
 hysteresis as channel attr
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-staging@lists.linux.dev, David Lechner <david@lechnology.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Axel Haslam <ahaslam@baylibre.com>, Philip Molloy <pmolloy@baylibre.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sat, Sep 30, 2023 at 10:00=E2=80=AFAM Jonathan Cameron <jic23@kernel.org=
> wrote:
>
> On Fri, 29 Sep 2023 12:53:00 -0500
> David Lechner <dlechner@baylibre.com> wrote:
>
> > On Fri, Sep 29, 2023 at 12:25=E2=80=AFPM David Lechner <dlechner@baylib=
re.com> wrote:
> > >
> > > The AD2S1210 resolver has a hysteresis feature that can be used to
> > > prevent flicker in the LSB of the position register. This can be eith=
er
> > > enabled or disabled. Disabling hysteresis is useful for increasing
> > > precision by oversampling.
> > >
> > > Signed-off-by: David Lechner <dlechner@baylibre.com>
> > > ---
> >
> > ...
> >
> > > +static int ad2s1210_read_avail(struct iio_dev *indio_dev,
> > > +                              struct iio_chan_spec const *chan,
> > > +                              const int **vals, int *type,
> > > +                              int *length, long mask)
> > > +{
> > > +       static const int hysteresis_available[] =3D { 0, 1 };
> >
> > This is basically an enable/disable. Should the 1 value be changed to t=
he
> > appropriate radians value since this is hysteresis on the position
> > (angle) channel?
>
> Good point. However it should be in the _raw units. The text is
> slightly more explicit on this for
> the variant of hysteresis applied to threshold events as it's
> added or substracted from a threshold (and thresholds are in
> _raw readings unless only _processed is available).
>
> Does that make 0, 1 correct as we are talking about LSB only?
>

It is currently only correct (as a raw value) if the selected
resolution is 16-bit. So I will need to fix this so the value is `1 <<
(16 - resolution)`.

