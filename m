Return-Path: <devicetree+bounces-3242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0357ADD6C
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 18:51:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 349341C20490
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AF891D68C;
	Mon, 25 Sep 2023 16:50:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58B514A83
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 16:50:57 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D7D6BE
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 09:50:55 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9adca291f99so841545966b.2
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 09:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695660654; x=1696265454; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZK0Wa94mxZD4Pin962qT1kXm8aCjboYY+1emX2oQt8o=;
        b=sTX3oWz7/sQOFw4grHxlbdyTDvsZMHWij1UGf48nQAVRPhQsdHP8nQ4edf9NWjEHoR
         uu0TORJ6fRzVRtZJPdm7CTUYkHrTYERWHrAc1C3zp/fIta3JYzKoV9sywMF0bdGPnZZ6
         2dqtFY8vmDUckTWAY6pW9yc4SDIXFkC0ESQ3vfWEJd0xSpo0wJ6QTVIoODxlv+2dyfOG
         YZm86B900PjKKIk0tCs5PJNBnDsnP2/Mb5DLbvkli2/xLUY/44iP7UexiRN1328RahIx
         DhHJCJc9Aw7prSAKGGZa/KLKBoTvIDMuMFrZlq4Z+AkMi7YWJpO0XLa/8TB1R/tItVjf
         bIow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695660654; x=1696265454;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZK0Wa94mxZD4Pin962qT1kXm8aCjboYY+1emX2oQt8o=;
        b=u/oUE4T2ofRM7/0wsMtjfe/9RJrLxDooVDzGuyw3LUK+hjqLwfvfXhjHAdHsM1I6jp
         HzksqURmKqh/Yyu6IYMPQBN1RpQObYQIKMY6mXS/lwWzTuhP+BKrGDXfsuqdCDdMWZ4S
         J1sMr9/3EIY/bK5NsPiFdttvQmkrUlTRgyQj/FXmQOqU8rDsMFVCEhBN1VugNNnsNOFY
         CTYeDinivq+WKzN0wTqCVP8E5BMvMAri11J6NXyfcX1Hmn4Q9uJPoYdukft7stlCBt3S
         JRKb23b1xXmQDSyMWO12yKXw0QiyhG/yN49LDZ77BqOq3fXjBoB4emS+M4lTxGRe4jdR
         G72Q==
X-Gm-Message-State: AOJu0YzjvMuoyTJ7XCHQw0pXqVAzWDt4QgeV8j+YJCE3Yz3f/NSrMlki
	EEUFrgvGcTQrwcBa/GwcE8SyAOybHZkM+/dNlOATPQ==
X-Google-Smtp-Source: AGHT+IGsoV4g2+LteE9K/8LeYzh2EooZgBJOexrqD04mHD3rKyBP8T2APAtV0W+DIdvP1cPsq3xQo6gHIvL+/9I2E1o=
X-Received: by 2002:a17:906:51c9:b0:9ae:82b4:e309 with SMTP id
 v9-20020a17090651c900b009ae82b4e309mr6645063ejk.0.1695660653836; Mon, 25 Sep
 2023 09:50:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921144400.62380-1-dlechner@baylibre.com> <20230921144400.62380-20-dlechner@baylibre.com>
 <20230924191711.244ec842@jic23-huawei>
In-Reply-To: <20230924191711.244ec842@jic23-huawei>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 25 Sep 2023 11:50:42 -0500
Message-ID: <CAMknhBFE49iGkZyP4rdqAmJwY5KnJ0X9UAPC54=BdQFfNuA+kg@mail.gmail.com>
Subject: Re: [PATCH v2 19/19] staging: iio: resolver: ad2s1210: add triggered
 buffer support
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Axel Haslam <ahaslam@baylibre.com>, Philip Molloy <pmolloy@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, Sep 24, 2023 at 1:17=E2=80=AFPM Jonathan Cameron <jic23@kernel.org>=
 wrote:
>
> On Thu, 21 Sep 2023 09:44:00 -0500
> David Lechner <dlechner@baylibre.com> wrote:
>
...
> > +             /* REVIST: we can read 3 bytes here and also get fault fl=
ags */
>
> Given we have fault detection outputs, does it make sense to do so?
> Or should we just rely on those triggering an interrupt?
>
> > +             ret =3D spi_read(st->sdev, st->rx, 2);
>

I'm thinking the former would be better, but I have a pending inquiry with =
ADI
to get more info on this since the fault pins and/or fault registers
don't seem to
be working quite like the datasheet says they should (I am seeing fault bit=
s set
in the register without the fault pins being asserted).

