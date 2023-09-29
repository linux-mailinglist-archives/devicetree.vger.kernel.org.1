Return-Path: <devicetree+bounces-4747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA01F7B3933
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:53:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6B5B628403F
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA66366673;
	Fri, 29 Sep 2023 17:53:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454CC66663
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:53:15 +0000 (UTC)
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C024195
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:53:13 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-5345a3dfe3bso10223428a12.3
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696009992; x=1696614792; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MalbAsDSrxzjZfhI3UpJdjmgfxP084DXecPXrcCn5EI=;
        b=ytkW1ZftXsCVOwhQHwA/yU4GSpeEqQIA4OpmVS3z84cstv6t5+zl+OPYhaOmwID/6i
         B1TFzLZAUQsxWU91Gg2rfQQRQsn1JtZIjnwyvwOIEkmQCbD6d5BsQru5oU+gYVM/nP6N
         AAheuLIhrxaFnEfgZ+coBwTy3Y/fgoSd5ZWnr5FBx5/+CeK0cJBsesByqSi0M34m+bce
         NoNRvkze28I/2uC/mf+XrJvdOnzGbpmQCnf1jzDk2iJgiitFw8XDNnT90EJLJUAKCyVY
         awU4Dv+VPlN6z0hUW+IEGQ3nXbJndR74ZmgiudDSxRQWR0E3hRQfdg2a1iwQBMSDiemh
         x6NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696009992; x=1696614792;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MalbAsDSrxzjZfhI3UpJdjmgfxP084DXecPXrcCn5EI=;
        b=IcTqD2CT9R41MLzB/3HK/l/WYgKr6+50/ZmfIV+9IFSeZ+SdHC61w/mNAawOl+P6cE
         tYCX3+Zbme/yvneBaHkfo1jodYTgI+xSbX//UNtQWBsrdIecSdPCW3nIjU5xgMJ6A9p8
         VGlx2kI2YyS51jCu/rROuPnAq8n3xT/GCkzVL2bpK84BASQBBX4vej/pN7u4hFzrxgq+
         gGm8T5EtJtoDX/hNZvyScaR0PyKeloZ9NrVhM5K0apBYNTN8w1djQA4MsbGqz3rkE/Wi
         Gn1aqaxL31DAaijmuw43mdkU2hFS3SHIZ+pXnot21OWDcsszq8F1Sn9Gt18KNJXwFrnS
         mpqA==
X-Gm-Message-State: AOJu0YwVGlVJO/tT4z7AYXb1wvx7BpriBZ1VKOiidX+TjKWgyg7LWxBd
	JX3yqJmZsSeVPFOgCDoxmJxRaOkR7BVXRzvhURbWmw==
X-Google-Smtp-Source: AGHT+IEwVthYBKcUdzG5goS3Tz+AFoCkOi/JKiHPwq7Emnrwxe4IPK/TuAsuGn3/e6k3o6iloUXzLX5MXhaxLm3Wfko=
X-Received: by 2002:aa7:d607:0:b0:531:28fd:ad10 with SMTP id
 c7-20020aa7d607000000b0053128fdad10mr4564655edr.38.1696009991734; Fri, 29 Sep
 2023 10:53:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com> <20230929-ad2s1210-mainline-v3-14-fa4364281745@baylibre.com>
In-Reply-To: <20230929-ad2s1210-mainline-v3-14-fa4364281745@baylibre.com>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 29 Sep 2023 12:53:00 -0500
Message-ID: <CAMknhBGFBwQQouhsPMgCuMn6+eQfDCcSzJvF-DwJAnoEPvMLAA@mail.gmail.com>
Subject: Re: [PATCH v3 14/27] staging: iio: resolver: ad2s1210: implement
 hysteresis as channel attr
To: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-staging@lists.linux.dev
Cc: David Lechner <david@lechnology.com>, Jonathan Cameron <jic23@kernel.org>, 
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

On Fri, Sep 29, 2023 at 12:25=E2=80=AFPM David Lechner <dlechner@baylibre.c=
om> wrote:
>
> The AD2S1210 resolver has a hysteresis feature that can be used to
> prevent flicker in the LSB of the position register. This can be either
> enabled or disabled. Disabling hysteresis is useful for increasing
> precision by oversampling.
>
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---

...

> +static int ad2s1210_read_avail(struct iio_dev *indio_dev,
> +                              struct iio_chan_spec const *chan,
> +                              const int **vals, int *type,
> +                              int *length, long mask)
> +{
> +       static const int hysteresis_available[] =3D { 0, 1 };

This is basically an enable/disable. Should the 1 value be changed to the
appropriate radians value since this is hysteresis on the position
(angle) channel?

> +
> +       switch (mask) {
> +       case IIO_CHAN_INFO_HYSTERESIS:
> +               switch (chan->type) {
> +               case IIO_ANGL:
> +                       *vals =3D hysteresis_available;
> +                       *type =3D IIO_VAL_INT;
> +                       *length =3D ARRAY_SIZE(hysteresis_available);
> +                       return IIO_AVAIL_LIST;
> +               default:
> +                       return -EINVAL;
> +               }
> +       default:
> +               return -EINVAL;
> +       }
> +}
>

