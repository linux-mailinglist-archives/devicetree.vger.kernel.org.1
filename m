Return-Path: <devicetree+bounces-10206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 205EE7D014D
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 20:23:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1D6128212E
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 18:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A90F138DD5;
	Thu, 19 Oct 2023 18:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EF8Lv/M2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2347832C6B
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 18:22:56 +0000 (UTC)
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70FF311D;
	Thu, 19 Oct 2023 11:22:54 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-533d31a8523so13938764a12.1;
        Thu, 19 Oct 2023 11:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697739773; x=1698344573; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VjcaQ2SsohbH6V1ewmIrwtpHM+xAbZ0UEUlXxqdKqQA=;
        b=EF8Lv/M2gcM0WmQSITAxy3fWv2cKghGl1/VZ/Vbsi1/zyokBHwcxbRZUNKVNU7UcoI
         OOYc225gvn5W0dZO1OyNwo1wZwte7dtcMj5eBhVWUrl9seOSRjz/cpRxbNoawTKoWUg5
         udfa79oZQc99D3O7BElY6/AB4CVXHIDaOSyXQU6vE+QwdjGq6U5sD2it+FkVcuDOqgb+
         5dAbuWe6nVuiv5yR5f70hY19rk0bThvNkGbTRhugWNG4QJkmO6z/REfvmnPVvRdopvy7
         SYgiBy5Hko2sO3u+Qp50tO/SgWIqyGRkr/nF9pHZeGICrViyDiauHJKYNhoi2Z7fPx0g
         hmHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697739773; x=1698344573;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VjcaQ2SsohbH6V1ewmIrwtpHM+xAbZ0UEUlXxqdKqQA=;
        b=QynUSNwqQnDheiWhpnlRw6/46a3ff6rhg7xoTerqQCegeD3nEBSUglLGRQ1WXHGCFm
         5yUERNnKSWkLplGvCZOcVua3HquDCFWq8rW8Z853d7doQTxS28ymYBuNo35E16x4EWr+
         cf3LvsecvGEml8ZJFlzkO4adzAw7aC1MBz2Wegy6b0drW3X3Erq6YQRxT/dvX9tD7crp
         cyFVfLbyaxLm511ApXldkSqk0qpZeCzii66sutBF1T+Umvkq0cw8jSKTZE0RAwIu/yOs
         8P1TErJJ6lrzSPYWdq+VkJW+Wg32sl9pBVulrWVfezumyKfaUncCoGU3zD3erCiKgIPI
         t7Zw==
X-Gm-Message-State: AOJu0YyqCPNPJlRFWZxr5GbDloy3BkibDrLbemqe8MSLkFs32w3SBYM4
	QGsWU5/DBbDFC5e6KULoNmnZmuHb52/x3h5BYLM=
X-Google-Smtp-Source: AGHT+IHqwHhLyjNZC5loIIeF2K2AmHXAH26/6ZSfSJlnR7rkooZocPBQIQn6wo6Xz9BGC42AR48uO4R1Lgk2BoNj1Ik=
X-Received: by 2002:a50:d494:0:b0:53f:ba1a:800d with SMTP id
 s20-20020a50d494000000b0053fba1a800dmr513561edi.14.1697739772781; Thu, 19 Oct
 2023 11:22:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231013034808.8948-1-jagathjog1996@gmail.com>
 <20231013034808.8948-3-jagathjog1996@gmail.com> <20231014174626.3c203096@jic23-huawei>
 <CAM+2EuJnrJn5QLm+yqJ_4_3NiZDXS6p9P5AhwZBjFUYm+2PMGQ@mail.gmail.com> <20231018201309.2cf36489@jic23-huawei>
In-Reply-To: <20231018201309.2cf36489@jic23-huawei>
From: Jagath Jog J <jagathjog1996@gmail.com>
Date: Thu, 19 Oct 2023 23:52:40 +0530
Message-ID: <CAM+2EuJLiHfqP3sY_c79ziJCkNvBhcKZ4B4=V6coUhJc5W6U3w@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] iio: imu: Add driver for BMI323 IMU
To: Jonathan Cameron <jic23@kernel.org>
Cc: andriy.shevchenko@linux.intel.com, u.kleine-koenig@pengutronix.de, 
	lars@metafoo.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linus.walleij@linaro.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonathan, Andy and Krzysztof

On Thu, Oct 19, 2023 at 12:42=E2=80=AFAM Jonathan Cameron <jic23@kernel.org=
> wrote:
>
> On Sun, 15 Oct 2023 16:00:34 +0530
> Jagath Jog J <jagathjog1996@gmail.com> wrote:
>
> > On Sat, Oct 14, 2023 at 10:16=E2=80=AFPM Jonathan Cameron <jic23@kernel=
.org> wrote:
> > >
> > > On Fri, 13 Oct 2023 09:18:08 +0530
> > > Jagath Jog J <jagathjog1996@gmail.com> wrote:
> > >
> > > > The Bosch BMI323 is a 6-axis low-power IMU that provide measurement=
s for
> > > > acceleration, angular rate, and temperature. This sensor includes
> > > > motion-triggered interrupt features, such as a step counter, tap de=
tection,
> > > > and activity/inactivity interrupt capabilities.
> > > >
...
> Given they were so minor I've fixed them up whilst applying.
> I doubt this will make 6.7, but you never know if things happen to align.
> If not it can have a bit more build test exposure which will do no harm.
>
> Applied to the togreg branch of iio.git and pushed out initially as
> testing for all the normal reasons.
>

I greatly appreciate all the reviews and suggestions.
Thank you for accepting the series.

Regards

Jagath

