Return-Path: <devicetree+bounces-22907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4687480967F
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 00:18:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E598C1F2116C
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 23:18:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D236F4F8B1;
	Thu,  7 Dec 2023 23:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MV1LYsc0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 519221717
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 15:18:22 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2cb20b965dbso2321421fa.1
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 15:18:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701991100; x=1702595900; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2qVgIXXI2cMw2ajdOYKgvt4GH6JzHiU0pdSvnaX1mW4=;
        b=MV1LYsc0sqYLrqubyZ9BgfYCovQ7NwnwTnHIfEkR7xBQXJNRRSsuyRNhOOpkF3dJLP
         yyujvvp/NHVZte/5SzZrq1TEIU4DQyh0W0aH6t+o+Bpeq41KrkTrOU0P6T0y+r7PfL5V
         5obuwdRjan4mYXCSji+IM6vlDnFtVOar44FXk0rfPmV3Wp9vaOwnHny9ttKqSd+pSrmn
         Q6ee6/2w8uQ/VcEwY0K/CpfjaLy2ubXnFsFHYJG1Pn5RSjlBzUwevT6q3EiMBkInwL+9
         LPWqx75VmSpWeCZZ+ReIVgXTXTIhr0l8CPoqLAaazvQOi0j4FkzqWQoglR8O1voUbZK0
         Aj1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701991100; x=1702595900;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2qVgIXXI2cMw2ajdOYKgvt4GH6JzHiU0pdSvnaX1mW4=;
        b=XBeI+2UE+Xy9dL/ry58fmiVPoayAgLQl8V/LZo4ivov11n/qOmPo7rEOAqLCrNEOhF
         maTES8fSMZXarT3TySyrW2kkNoFEgRwGgzNkTB03ZRKemLiFh21x5ePEfdGh4jxhto8T
         CRYTKrAik6aQPzy/O2OcpejpbBFocE++Mz1eXa1hcDJkEjLQ0ksLwT9Vrk5vbbo1yuQ6
         G7qPIHEF+PnHdk7YQ6oRmk16ZwSBO+thLwnIHfgICiOAyX8NyHayoH0XbiiOnz35UhCW
         4hX0tYmnovBohvh86svLzzZIMkUeJvbmgV7DwrNonJ65199AacPe+L+arTQMc1xzohAB
         RDNg==
X-Gm-Message-State: AOJu0YzESJ7DNwNp7XRTxXtRGFe5Bk+YG+d5TRxZjHD53/T+GUoesmzh
	Ix/bTmHgtU2SwCpjBXOEw+WEbEkzCRG3J1EIGha6ww==
X-Google-Smtp-Source: AGHT+IHQ1Cpr4EU0uoWT4gxeah7NnQJz57yCMLaVX91YLu7zNGMJ28UWG2gIa8fDxSMey7KqGONBMNrBP01R9tlIPsE=
X-Received: by 2002:a2e:3608:0:b0:2c9:f4e4:3206 with SMTP id
 d8-20020a2e3608000000b002c9f4e43206mr932197lja.38.1701991099990; Thu, 07 Dec
 2023 15:18:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1701971344.git.marcelo.schmitt1@gmail.com> <14973feb4c0f4ad01a0e5047407c93ce9b9e5463.1701971344.git.marcelo.schmitt1@gmail.com>
In-Reply-To: <14973feb4c0f4ad01a0e5047407c93ce9b9e5463.1701971344.git.marcelo.schmitt1@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 7 Dec 2023 17:18:09 -0600
Message-ID: <CAMknhBHCYicEL_xhumBQMUm=HBVb=7dLrYsK8Zj2o7RodvMarw@mail.gmail.com>
Subject: Re: [PATCH v3 02/13] iio: adc: ad7091r: Populate device driver data field
To: Marcelo Schmitt <marcelo.schmitt@analog.com>
Cc: apw@canonical.com, joe@perches.com, dwaipayanray1@gmail.com, 
	lukas.bulwahn@gmail.com, paul.cercueil@analog.com, 
	Michael.Hennerich@analog.com, lars@metafoo.de, jic23@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	dan.carpenter@linaro.org, marcelo.schmitt1@gmail.com, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 7, 2023 at 12:38=E2=80=AFPM Marcelo Schmitt
<marcelo.schmitt@analog.com> wrote:
>
> Set device driver data so it can be retrieved when handling alert
> events, avoiding null pointer dereference.
>
> Fixes: ca69300173b6 ("iio: adc: Add support for AD7091R5 ADC")
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
>  drivers/iio/adc/ad7091r-base.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/iio/adc/ad7091r-base.c b/drivers/iio/adc/ad7091r-bas=
e.c
> index 8e252cde735b..0f192fbecbd4 100644
> --- a/drivers/iio/adc/ad7091r-base.c
> +++ b/drivers/iio/adc/ad7091r-base.c
> @@ -232,6 +232,7 @@ int ad7091r_probe(struct device *dev, const char *nam=
e,
>         iio_dev->channels =3D chip_info->channels;
>
>         if (irq) {
> +               dev_set_drvdata(st->dev, iio_dev);
>                 ret =3D devm_request_threaded_irq(dev, irq, NULL,
>                                 ad7091r_event_handler,
>                                 IRQF_TRIGGER_FALLING | IRQF_ONESHOT, name=
, st);
> --
> 2.42.0
>
>

Instead of introducing a new relationship between iio_dev and st, why
not pass iio_dev to devm_request_threaded_irq() instead of st and then
use iio_priv() to get st in ad7091r_event_handler?

diff --git a/drivers/iio/adc/ad7091r-base.c b/drivers/iio/adc/ad7091r-base.=
c
index 8e252cde735b..0e5d3d2e9c98 100644
--- a/drivers/iio/adc/ad7091r-base.c
+++ b/drivers/iio/adc/ad7091r-base.c
@@ -174,8 +174,8 @@ static const struct iio_info ad7091r_info =3D {

 static irqreturn_t ad7091r_event_handler(int irq, void *private)
 {
-    struct ad7091r_state *st =3D (struct ad7091r_state *) private;
-    struct iio_dev *iio_dev =3D dev_get_drvdata(st->dev);
+    struct iio_dev *iio_dev =3D private;
+    struct ad7091r_state *st =3D iio_priv(iio_dev);
     unsigned int i, read_val;
     int ret;
     s64 timestamp =3D iio_get_time_ns(iio_dev);
@@ -234,7 +234,7 @@ int ad7091r_probe(struct device *dev, const char *name,
     if (irq) {
         ret =3D devm_request_threaded_irq(dev, irq, NULL,
                 ad7091r_event_handler,
-                IRQF_TRIGGER_FALLING | IRQF_ONESHOT, name, st);
+                IRQF_TRIGGER_FALLING | IRQF_ONESHOT, name, iio_dev);
         if (ret)
             return ret;
     }

