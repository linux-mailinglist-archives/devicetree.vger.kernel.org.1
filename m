Return-Path: <devicetree+bounces-3227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 938FD7ADC66
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 17:54:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4544D281797
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 15:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1137219E6;
	Mon, 25 Sep 2023 15:54:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B05611C91
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 15:54:30 +0000 (UTC)
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 794E5EE
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 08:54:28 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9b1ebc80d0aso548039266b.0
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 08:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695657267; x=1696262067; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dHJtu6podpfARapK3BPhPtM/BxasDmazGp1qQa6N3I4=;
        b=1/1Jqhrz79d1vePwPDjNw+Wj1HsF5CZhNRIS+Ijd0lNrammrScep8HT6+qDGGajRgD
         N/K0CWEe2QCV+oe9szrarYaewMqhaktnRmkUMwtwg5q0kH7rf5KOaq93Lb5vsQH2QGKF
         PTUCPWDZQJeJ7vf6Lmg65p+QMeRF1YLNf3lEYooU4fMhQHTCdX0kjKWBcVRfNRMkHxOq
         oZk9GhwyLldIpPhU2/JZImKw6gzURaBpYbPiWuEkeRvZzZ5kSaAhY/oo33K/8u+qhoEc
         dLnqn8JC9WYKivveilVmNcQvm9v0HJq0XhbtogaffI68jLuASbNsyicHRD/8gfeY/g3I
         8t1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695657267; x=1696262067;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dHJtu6podpfARapK3BPhPtM/BxasDmazGp1qQa6N3I4=;
        b=v6iM/93yaOuixY10GNZQFioTvoI4292VNL0gfi+5dPZ69AuLT/SfJnXewhkpSj4z4X
         q3O53/x0uUDRBwpd/eJKJH7pN7hLUnzKIMfuqnAZw4SPiIgfQWF9A/KLL4pOsp2I2Kbl
         A7bktUL5pcpbzoEsooEkXZUE4V8ie2ZVrmrqZgP05G5w7VHdxvdB5S8h92fyKrIwuFJq
         P/Xqs708xYHTgMGcqpAM6BvjnFNiLzPxCmP8VfE62kM+5nsQVlHZxUBQuPQSqfB4cAwj
         TLbfnfZL1Fo4mMbtGtFvmqs8x2prTS6IXotRg+hPsWMWB5EEGJMUhA45/HrJEoKkHDz/
         qQHQ==
X-Gm-Message-State: AOJu0YzyRIocNkxnseSnsdyPPmp09NMLwc9lhjHN7GldklI3gGtfM9aL
	29rvZiucmmn8LkyXakbbsxFrf8BSs7q8yCoq0IHNOg==
X-Google-Smtp-Source: AGHT+IFK6F50zQGV+rPZvvFCcUISHHonlUWkooK9m2LrV9WmWEzFMFKZSZUY4LT7DPrua2UQFWGYkh/M8Iiqyyf0n58=
X-Received: by 2002:a17:906:74c5:b0:9b2:7148:dd59 with SMTP id
 z5-20020a17090674c500b009b27148dd59mr5590808ejl.37.1695657267020; Mon, 25 Sep
 2023 08:54:27 -0700 (PDT)
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
Date: Mon, 25 Sep 2023 10:54:15 -0500
Message-ID: <CAMknhBFRe-M9VxHSBA9A7Royneg4zshrf42_2HtYZWRKQ4CCYw@mail.gmail.com>
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
> > +  fault-gpios:
> > +    description:
> > +      GPIO lines connected to the LOT and DOS pins. These pins combine=
d indicate
> > +      the type of fault present, if any. As these pins a pulled low to=
 indicate
> > +      a fault condition, they should be configured as GPIO_ACTIVE_LOW.
>
> What if someone is being odd and connected only 1 of them?
> It's annoying how often people run out of pins and do things like this.
>
> > +    minItems: 2
> > +    maxItems: 2
> > +
In this case the two lines are not independent. If both lines are
asserted, it does
not mean that both LOT and DOS faults exists but rather it means that a LOS
fault exists. So it would seem problematic to allow one without the other h=
ere.

