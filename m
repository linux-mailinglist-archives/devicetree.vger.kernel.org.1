Return-Path: <devicetree+bounces-66343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 516988C27FF
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 17:39:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04E2D287799
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 15:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72DBD171663;
	Fri, 10 May 2024 15:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="axsPjNSI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E867CA6B
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 15:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715355587; cv=none; b=Q1I6eBIdu24x9KKI3IrTaLbdXEvocp0gzNyrB9VPpzMB2PdmEe+reAtQqCJ7U7EMToIAJ3EjxbtI9kvXSCDWPdjYmCkmupFJ49ZiWLXPluTyM4BLYIfrvLf5iyVmhbhYHPzuXWykD5KfCKYhtnzSUyWGKzhjo1PEzN2wqRht7zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715355587; c=relaxed/simple;
	bh=HvWEHSRJd6IvYIb/63G1QS6o1Crb2nY1hmA2zf0cIX4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Tp3w74xGOSaF0Rh9UA8vETEoWq6tlg1+LNFscf63MypSR6Xng0jclC2IKeOaBbGbF8rxsYr4stZ1W1fT9N/lyxzEJxUCI+bZPeXYCfgbX+KHtaKFZUmBKpBgURADjgDLHhnZeUaFchp4nGyD1AF5tsWsvLPmvkG/5o7f1FzVi2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=axsPjNSI; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2dcc8d10d39so24836561fa.3
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 08:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715355583; x=1715960383; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x+69akUanwgyaCNLHvZQ4aJZ/iUQNzDFDBetcAZ8+1g=;
        b=axsPjNSI/b1f8QwE4NVvhVDymU5avjHQAZB4KlT7CYSosUK+Zxto7Ix10bRybrsbJn
         h8+spQuR+5ckqYR3kZZhA/WVaiuZ7riGLGF+w7Bj8OlfUrs8dL7k40R/ewjP8SstNQeE
         pE1WapnLVaaFuYngkASiY9zdQHn2VJS8uxP7ryi8KOKogA6N3mLRdvSu1+XzVSYQ7EX2
         giggcg5BXP3qxVLoUgFIepavuxnH/zjUylejOAZrn3Nhpcj2tOTY0iWI5IO3Ulf7E8xG
         uEY/V7yTd9w4kOLmEjwus/WWBCoA3y+jH07jZcFX+0azLAJTvdcELmfy9lOg8LcI16q8
         RVJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715355583; x=1715960383;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x+69akUanwgyaCNLHvZQ4aJZ/iUQNzDFDBetcAZ8+1g=;
        b=um3ET/Iw2jS2uIerU8jj5rUyXN9wZfFPINilpEyu4HNHV0cWG3U8O3KLRI72YdklKa
         3rmn33wVq0n89FabVVrT1eWzrjjXrtut50YxxN+8dx0W3cZScacLq6+0gz6Jkt9RwSbV
         G4M8g3XrG7C7dw2Pzup2LwWI1sdt7smLl2ku8JpF4UGabmzvde5P2zC3B9rc8FM39o8o
         XoWOvIT2vv01Zj0zcdXqCSPqI7DdyCRzwdbD4UuE1bELE0bpbktlPBfTyWJpE9kkQvw+
         IqRbR9pkH0z9e+lZo0Yrv2lDEUBX26u7tm33RxqXbLUSdIdCusKCpbm2yJ1hCu6u4xDV
         pYFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMHMmouh0vF9wGNot4cXe2tX7tm+moHCdxrExURtkIS6NeK0txyvsuF14kbn4W9HxC87VI5PY/6b+HdHGJizF1yxbA7Td3gGOr1A==
X-Gm-Message-State: AOJu0YzGj8s/JNwFS8U93E7HGUD70uvzUAAon/oEQu9sIF75Le8oElGE
	nfb6HDSlBLCEY1gAvMmJGEvYL9UTEAZZ/aNyccm8TM/iGxPS5ZnjFWbHnAoowOH/SvEYUvKh4Gy
	jrlXFKB60w5ZIvAtBngXjrxHRwnmkb1GO71MtKA==
X-Google-Smtp-Source: AGHT+IGvAUhvYlrtXZu2653xvaGDm6s2fzNFAgaftNCnvvM/30wdVu20vvVqDYxJw62jeNpNorB/ZBPheswDD4t/bgI=
X-Received: by 2002:a2e:9d82:0:b0:2e1:aafb:6a2 with SMTP id
 38308e7fff4ca-2e52038a43emr20484121fa.36.1715355583503; Fri, 10 May 2024
 08:39:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240510141836.1624009-1-adureghello@baylibre.org>
In-Reply-To: <20240510141836.1624009-1-adureghello@baylibre.org>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 10 May 2024 10:39:31 -0500
Message-ID: <CAMknhBFUUCvxbuHz0pPKd-KBcG3zfXNr8wu=AnrZx0C495RKOQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: iio: dac: add ad35xxr single output variants
To: Angelo Dureghello <adureghello@baylibre.com>
Cc: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	nuno.sa@analog.com, lars@metafoo.de, Michael.Hennerich@analog.com, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 10, 2024 at 9:19=E2=80=AFAM Angelo Dureghello
<adureghello@baylibre.com> wrote:
>
> From: Angelo Dureghello <adureghello@baylibre.com>
>
> Add support for ad3541r and ad3551r single output variants.
>
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---
>  .../devicetree/bindings/iio/dac/adi,ad3552r.yaml       | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml b=
/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
> index 8265d709094d..17442cdfbe27 100644
> --- a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml

It would be nice to also add the datasheet links in the description.

> @@ -19,7 +19,9 @@ description: |
>  properties:
>    compatible:
>      enum:
> +      - adi,ad3541r
>        - adi,ad3542r
> +      - adi,ad3551r
>        - adi,ad3552r
>
>    reg:
> @@ -128,7 +130,9 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: adi,ad3542r
> +            enum:
> +              - adi,ad3541r
> +              - adi,ad3542r
>      then:
>        patternProperties:
>          "^channel@([0-1])$":
> @@ -158,7 +162,9 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: adi,ad3552r
> +            enum:
> +              - adi,ad3551r
> +              - adi,ad3552r
>      then:
>        patternProperties:
>          "^channel@([0-1])$":
> --
> 2.45.0.rc1
>
>

Since these are single channel, it would not hurt to restrict the
`reg` property of of the `channel@` nodes to 1.

