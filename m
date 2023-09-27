Return-Path: <devicetree+bounces-3873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F937B04E0
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:03:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E6DD1281DF9
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 13:03:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D20F128E0A;
	Wed, 27 Sep 2023 13:03:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B2AC8E2
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 13:03:37 +0000 (UTC)
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CCBFF5;
	Wed, 27 Sep 2023 06:03:36 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6c0a42a469dso6704955a34.2;
        Wed, 27 Sep 2023 06:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695819815; x=1696424615; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Fpft+7FBdM1m9ee7BDEtS5cHOizfIyHuc5HqY5mYFU=;
        b=V74wnztkoEK4Va58pyyybtdaSpTCrJ8aFvJduEw1QwiqD1hqtSHI4TVUm9nCy6JmYT
         XiytNWC5DERLmHhegUHj5uuRxHlYMbHavPooeouALtpW99kxjCZg32sZaIxqRs3FcvST
         niviYYDaiqntuscvD/twdFKLs8bnPr+Aa8Vmb3PUrK2lmvMd2f9rdJC+Up0hNJARXnhA
         /kfCffB/xJmG/0d16nU1jsJ37keVOsXEQP4IKGb6ddEWvODmhZNtPDfyKcroEjs/9mvO
         Uvy427sHWaStbFPfU730nQwuPxounJtWvGRUn+vYr/naXWuSfLT7S6+BUEx68uWPVJis
         hR8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695819815; x=1696424615;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Fpft+7FBdM1m9ee7BDEtS5cHOizfIyHuc5HqY5mYFU=;
        b=GCscGmgxSJ6yoPf/3Y5z8gFNxZGzyHiS7GZ1R07xecakSTtPxGZaPtofTZsHDROcgx
         w6EJVDNe9Nas2q2vQ9zrPl/ls3po3bGPMThow13Jy7wno1KQIaBCK/0VejDEeJfOiYbH
         Jr2IhdMD6I8yfPH0hx4YPGGvvilSa0ozgcWadpuanSRi1yo5pnNBPffTTUDgr8hLdlXm
         3ivpjmjemdZ/m3qGCOFScxEWGtxz1PDikqTFcJ8GgU/5XZ8Ex1Jpq6P4agukykXnH+V3
         ZqQx1LEBJuVAzmvxeN5TIpr1GIYHXowy4iF34LpkZuyc5V6LDoV9EsJR2qn+rJzuZjMg
         3Qhg==
X-Gm-Message-State: AOJu0YztjqAi5fGeX3dpAOfqtyKv71PlFZyWt1wicHMRLVv61o/kUDvZ
	IH7+/mrYFpVo6kaI/TNHfLcQrlkhOOv8Zfy3tT4Mc0Of5XI=
X-Google-Smtp-Source: AGHT+IGiOn5xsl2j8AsXAHR7BfPhRCPfq8l/DFHg/u1vcOKe8MsoBRv/0tSgPZ37BMvuLgt5vDKNF+uuyaodKzo9Z/8=
X-Received: by 2002:a9d:7ace:0:b0:6bd:67c:ba9c with SMTP id
 m14-20020a9d7ace000000b006bd067cba9cmr1746902otn.35.1695819815569; Wed, 27
 Sep 2023 06:03:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230926203739.2119963-1-andreas@kemnade.info> <20230926203739.2119963-3-andreas@kemnade.info>
In-Reply-To: <20230926203739.2119963-3-andreas@kemnade.info>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 27 Sep 2023 16:02:59 +0300
Message-ID: <CAHp75VfkZwYimkT6ki6+jPEZ7gNcWbg7c8ZJ8mXbEYxpmSqmTA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] iio: imu: mpu6050: add level shifter flag
To: Andreas Kemnade <andreas@kemnade.info>
Cc: jic23@kernel.org, lars@metafoo.de, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, bcousson@baylibre.com, 
	tony@atomide.com, jean-baptiste.maneyrol@tdk.com, chenhuiz@axis.com, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 26, 2023 at 11:38=E2=80=AFPM Andreas Kemnade <andreas@kemnade.i=
nfo> wrote:
>
> Some boards fail in magnetometer probe if level shifter flag is not set,
> definition was found in a 3.0 vendor kernel.

I would rather use the more standard (IIUC the versioning here)
"...in the vendor Linux kernel v3.0." (also note article change).

Same for all cases below.

I believe Jonathan can update this when applying, otherwise the code looks =
fine,
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

--=20
With Best Regards,
Andy Shevchenko

