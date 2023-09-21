Return-Path: <devicetree+bounces-2032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 130E87A986E
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:44:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A4F91B20C2B
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 17:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D9CA15AFC;
	Thu, 21 Sep 2023 17:22:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A1E715AEA
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:22:19 +0000 (UTC)
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D069A46E62
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:14:07 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-522bd411679so1467543a12.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695316446; x=1695921246; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KpzQyHHzEyWIms3Xvm/C3MN/zZk6cMQQr8BMD0wmneQ=;
        b=1OR9SmhU33aHxqLdZDJfZWhpUZxQKIG0bHL61SPMX50EtO5ivtQJbMdAP3GQ06siT4
         i9cAM5bySB80CxRLa4MzHPPSZp1nrC8kChcYHUpGAUj4JOsyf3c38hOBmTxPVSbmNrT7
         pcHBR+PbVvCHKGepXHPQ+ZNV690v8JKLjUUIa/b6CA8x8Rm4ZIaV5UgdKmd/cu8DyePb
         h5Rr5geqWQdmdrDFZVsEP1DfMTZOUS+NWxzwGUTa5WH+q6irtr97wAiW/7g84gqxwMbx
         k8TMLIqB3Sxi8KAfDX3/i3+ir77TrPnvYL1O2Bc4t5kOnpxexLPML5TWhL4X3sENIG9I
         V0aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695316446; x=1695921246;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KpzQyHHzEyWIms3Xvm/C3MN/zZk6cMQQr8BMD0wmneQ=;
        b=Fi5ZCZJNH7/9AD61xcNkmwp/cF6msh5db8mwBnTXVhbRIC6Qash+ny95hr2kim6W/u
         CAXF9WFYfelotOfp4nSmoAS2LgOdQyUGtp63+uR36vKH6N/22BDSKCFwNX0jtdZJjion
         3h+8+RfEJQcf7HmfvX3PSTyK/e02frhpTgYqiFB8UUqRSo3+VM9wcHn9UzLQE5qNpEvM
         pxxULYYL5LOtuHlpfUUz59lJ3RjQZAapHiK1yTL0tv1PUgLCdvjWitFoIZcTkn9fHxLa
         4BSk8uTXr2qH5zUrBu72fYABpuMxRJxqf3/VlLpf5vT+JOAVaNiHKvdb5lOiWOjtt6YQ
         EVqw==
X-Gm-Message-State: AOJu0YyQjrxh4DkYBvaNlA8X3ZsDM/UiUejzYChYORSVknRR8N/khuUq
	+cSteJ5XjEBwKj611Anq4w1tSsgah88Xd90bICoOOteCO9FKKgjW13SvehJc
X-Google-Smtp-Source: AGHT+IFpyIuxAeI+zJtqVgso5gl/oZPdQPJ8OzyoLwfbQ+BnxcwAYhxcZ6tg7lLrRy8p1y2N9Tuf2kP/Jg+Cn/6HtPI=
X-Received: by 2002:a17:906:30c6:b0:9ad:e43b:1ef2 with SMTP id
 b6-20020a17090630c600b009ade43b1ef2mr4584204ejb.16.1695289242308; Thu, 21 Sep
 2023 02:40:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230920170253.203395-1-dlechner@baylibre.com>
 <20230920170253.203395-2-dlechner@baylibre.com> <20230921-b304d3fd05b37a8588e101a2@fedora>
In-Reply-To: <20230921-b304d3fd05b37a8588e101a2@fedora>
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 21 Sep 2023 11:40:31 +0200
Message-ID: <CAMknhBFfxWy4mWDVYkmaEBx3KkJnRvo1CsNSuab2Rj0TdtozQA@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: iio: resolver: add devicetree bindings
 for ad2s1210
To: Conor Dooley <conor@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Axel Haslam <ahaslam@baylibre.com>, Philip Molloy <pmolloy@baylibre.com>, 
	Apelete Seketeli <aseketeli@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DATE_IN_PAST_06_12,
	DKIM_SIGNED,DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 21, 2023 at 11:06=E2=80=AFAM Conor Dooley <conor@kernel.org> wr=
ote:
>
> > Signed-off-by: Apelete Seketeli <aseketeli@baylibre.com>
> > Signed-off-by: David Lechner <dlechner@baylibre.com>
>
> Missing a From: or co-developed-by?

Missing Co-developed-by:. Will fix.

> > +maintainers:
> > +  - Michael Hennerich <michael.hennerich@analog.com>
>
> Why's this a chap from analog, rather than the authors?

This was written by my codeveloper so not sure about the why. Michael is
on the CC so he can clarify if this is not correct.

> > +  sample-gpios:
> > +    description: |
>
> What do you need the pipe for here? Don't see some formatting requiring
> preservation. Ditto below.
>

It is just a habit to always do this for multi-line text. Will remove.

> > +
> > +  assigned-resolution-bits:
>
> I figure the lack of a vendor prefix here is "inspired" by the same
> property for stm32?
>

Correct.

