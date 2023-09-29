Return-Path: <devicetree+bounces-4496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4304F7B2D57
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 09:59:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D6D6A2829FC
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:59:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51B60C2D3;
	Fri, 29 Sep 2023 07:59:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB027C2C6
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:59:28 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 282701A5;
	Fri, 29 Sep 2023 00:59:27 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9b0168a9e05so1543741266b.3;
        Fri, 29 Sep 2023 00:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695974365; x=1696579165; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DSP8isM0GoS6W9oufJSrOdk6wkTwTTXRU6nx8T2M560=;
        b=TqOQFvWeqCAjPZBkApTlerDt/aj8vVF3LK3/PeHcyoCaNxsUJhpg64TVN6FGjjuTNL
         /WHoU/g5ZgG8kSDGGp/a10NpgqKjbSbhhdYLNwzWQ+l5pqZYgvDS1sIFmOHsDG12KRP3
         Aa2jVAOxb015RfYj9ecskgnasxEAQsMqmzK1Rl0Bhfi+DFlSjWtyyrrnCy8ypvNs5FT4
         +OTFjUzKf+LSWfwKwTAK7UzKSs2ddJYAOp1o2GqzFz9qjYLI+xY907h8/JAGPY/Wo0qf
         HL+/iwFQHqPUxWVlE5h+SKamv/WzgusCl875t3AaL35QFJTty2NjEzy/PxrR+ugW7r7v
         LHGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695974365; x=1696579165;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DSP8isM0GoS6W9oufJSrOdk6wkTwTTXRU6nx8T2M560=;
        b=mufamnFHjChmuk/jbS+uO9/ZWTxpzewWUjR8LJy2o3LpfibwDokrg8tl/855cMcLiN
         EF74NhfcOrMTbiquUEY0n/BEkg87oqeEspV42i5U7bkDWgCCflHhn6PFTejxrD/g8GJe
         vG65anprRDy/tgYysZMlhAmoBIHFDkpZOa9j4JepNMze/Ys2aJKQedfK6hu0sR9Y/eJC
         T4Tm+w8GEABzBZ0z7x1g5RmqJCzbqNAUplEtO4IrrInw71K5BcDJNOQRfGjkG6LwnCSk
         gpc2q+lcKqs2tQ0Rze6AalFR/VFoGYg68sGh9CRhiR5cZ2SYWVc2Hzwmqd/qzrU1XoDY
         SYyw==
X-Gm-Message-State: AOJu0YyAIkH8Qx+h5JesxLyXUehCZ7YynxDBLenf7CuhkSAKQTWnrasQ
	1us0YaaCmtVzilK11bidwya8qI56nBJKcI/6M0M=
X-Google-Smtp-Source: AGHT+IHMdijcNPZlVaRfqfbEcQinrnRSYE8PJ67FzIWMLqlKzBR9NB1mCvGz0VpAAcR6XKkMK+k1SwRtqZbkAyicIEc=
X-Received: by 2002:a17:906:530b:b0:9ae:6632:a8cc with SMTP id
 h11-20020a170906530b00b009ae6632a8ccmr3209343ejo.54.1695974365173; Fri, 29
 Sep 2023 00:59:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230918080314.11959-1-jagathjog1996@gmail.com>
 <20230918080314.11959-3-jagathjog1996@gmail.com> <20230924153055.0b3486f9@jic23-huawei>
 <CAM+2EuJBxj7P-ymu84u308g8LCemSEsYi_TSHYtaK9PyrhqrfA@mail.gmail.com> <5eb148b4-25eb-460d-9ec8-0a40bec1dc6f@gmail.com>
In-Reply-To: <5eb148b4-25eb-460d-9ec8-0a40bec1dc6f@gmail.com>
From: Jagath Jog J <jagathjog1996@gmail.com>
Date: Fri, 29 Sep 2023 13:29:13 +0530
Message-ID: <CAM+2EuJUGu4QUCdZ7d28RaLNipJRVuASP9wSzF14k=oBoC4e_Q@mail.gmail.com>
Subject: Re: [RFC 2/2] iio: imu: Add driver for BMI323 IMU
To: Denis Benato <benato.denis96@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, andriy.shevchenko@linux.intel.com, lars@metafoo.de, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Denis,

On Thu, Sep 28, 2023 at 2:55=E2=80=AFAM Denis Benato <benato.denis96@gmail.=
com> wrote:
>
> Hello,
>
> Some devices (as my asus rog ally) have an ACPI node describing a BOSC020=
0 sensor. The IC being used in those devices is a  bmi323 but as a result o=
f how the ACPI table reports that device, it is detected by the existing ke=
rnel module and we have no way of differentiating until after the chip ID p=
robe.
>
> The module loaded is bmc150-accel-i2c.c which currently doesn't support t=
he bmi323 and the loading of the module just fails at chip check.

bmc150 driver supports multiple accelerometer sensors such as
bma222, bma280, bmi055 and all of them are having similar
register map, but the bmi323 register map is completely different
from bmc150.


>
> I have solved the problem by expanding the current bmc150-accel-i2c.c and=
 bmc150-accel-core.c files to handle that IC in almost every part: gyroscop=
e, accelerometer and temperature sensor.
>
> What is the best way of organizing code to have this module mainlined? Is=
 it correct leaving files called bmc150-accel-* even if it is managing anot=
her IC and and not just the accelerometer part anymore?
>
> TIA for your time.
>
> Best regards,
> Denis Benato

Regards

Jagath

