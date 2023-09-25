Return-Path: <devicetree+bounces-3247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9C07ADDF9
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 19:48:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 7B5621F24EE3
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 17:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C56D21113;
	Mon, 25 Sep 2023 17:48:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D547F1CA9E
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 17:48:04 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0FF911D
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 10:48:02 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9ae75ece209so675443666b.3
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 10:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695664081; x=1696268881; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1/UN+h0syPysLtxsvFcqWbygnTfY7kE0+mV4pd8zbOE=;
        b=RYEr9cYaG57l52hf6D92FVsynybyMfC04x1z06kXcMPBIFTgkV3pwcPmmyEh6CHsmZ
         k9CFkgieBKsHcaSx4R3liGCSX28LEbeboiK6HiPvLpc3mbsX5BoMREGE+yark4ZU3Se3
         VJxat/ofNc+oYjiaENTdqRdcvyCkWWctYItLGqsHgn0EUopDDxjbN6Mym/OnxCnTFgci
         d58HDyP4YLN3C8hXPz7utdfofyPoHVPy9lWxenzQJSsJQ0YLBxQ2aZ/fwf4G4dQoJ1UQ
         5nXUnkFKlAgaAglDfKOysQpm/JFwVkhIaP4uidAO8XxBrxUfw7/wjSsqM/Sx4fqXv9q5
         QFHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695664081; x=1696268881;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1/UN+h0syPysLtxsvFcqWbygnTfY7kE0+mV4pd8zbOE=;
        b=FnXDo8u/3Pe4J7wU7ywTOdbqIjFvVpFW6mh5QXzWo8HtZukfrPZAW1thDuzHaTA4+c
         Hb13c9akch3lMo0LIBHjYXHFiaRjlGcYxgpcrwHQly6uqlJiEmS+vJg/Wz1nafWme+Db
         4qUmF6EkYslhscDGr9KkIowdERx3NB/4F/lgClxm3LwW77nyfaYUI4P9khEGu1NOGrTl
         P2VkBbDxEbvRuToNhasA6w1nrw9WVBAV55GQloCIA7DChebCjXj3Ke8tg5AyxrITrVIk
         B2TsLKcTsuBO6MGkvNnmrnmf8uk7n8kuC5B/Lc86nydWTttOFbu4jyXbCELxyyWeLLUo
         eZdg==
X-Gm-Message-State: AOJu0Yy4F26qXFf/5zSWPeH/Eyyo4AI+4pu49L4FE2wmIi+YJffvYj+5
	WRzGyErQSuVTRZtDfNEYgGuaY3OSlmxu7lyQgqG7UQ==
X-Google-Smtp-Source: AGHT+IFopHnRoAlyF6POHIUhcvwlhiL61OgNYhhH4qY+wuY7Lc/f7rCYUm4UIz9VvEggFLjrRogYHi+m9F2UFzb7uQQ=
X-Received: by 2002:a17:906:2189:b0:9a1:e941:6f49 with SMTP id
 9-20020a170906218900b009a1e9416f49mr6620490eju.44.1695664081274; Mon, 25 Sep
 2023 10:48:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921144400.62380-1-dlechner@baylibre.com> <20230921144400.62380-2-dlechner@baylibre.com>
 <20230924175720.3be2540b@jic23-huawei>
In-Reply-To: <20230924175720.3be2540b@jic23-huawei>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 25 Sep 2023 12:47:50 -0500
Message-ID: <CAMknhBF56CWKNZ-xvsiaC3c+av8Dvyh+i-op1YxvXv2g8BPYWg@mail.gmail.com>
Subject: Re: [PATCH v2 01/19] dt-bindings: iio: resolver: add devicetree
 bindings for ad2s1210
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Axel Haslam <ahaslam@baylibre.com>, Philip Molloy <pmolloy@baylibre.com>, 
	Apelete Seketeli <aseketeli@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, Sep 24, 2023 at 11:57=E2=80=AFAM Jonathan Cameron <jic23@kernel.org=
> wrote:
>
> On Thu, 21 Sep 2023 09:43:42 -0500
> David Lechner <dlechner@baylibre.com> wrote:
>
...
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - spi-cpha
> > +  - clocks
> > +  - sample-gpios
> > +  - assigned-resolution-bits
> > +
> > +oneOf:
> > +  - required:
> > +      - mode-gpios
> > +  - required:
> > +      - adi,fixed-mode
> I think this allows for both.  It's fiddlier to exclude that but would be=
 a nice
> to have perhaps rather than relying on text above that says 'don't do it'=
.
>

example-schema.yaml says that oneOf is XOR (anyOf is OR and would
allow both).

