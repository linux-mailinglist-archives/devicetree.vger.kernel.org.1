Return-Path: <devicetree+bounces-22908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0272680968D
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 00:26:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5B530B20D28
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 23:26:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A003656B7B;
	Thu,  7 Dec 2023 23:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="cudezqhw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 385551713
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 15:26:15 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2ca0d14976aso17601211fa.2
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 15:26:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701991573; x=1702596373; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nwQ0NM/8b9kkd3Bk2hYzgxQ1Wlbw7cAH3liwE9dLCgU=;
        b=cudezqhwAaw9mRV65lCKubhPelcyYHSOSZhkDd3/INxDiZgrfSWJYS5nqq5bf5mAWU
         ztaDULGa5RXr5YMWJ7Uj1WFSq61r3EuJ8FgR1J67h2lMwibfEeo8uxt4UJwvKWf4h/R7
         PHGgm1X/rAaOjRyc20ZiN8uDxblj52/Ka5MqDYd/ug0F1pvcGYEFi51NYUcATEjOd9vf
         zU9k8jJJ+7bSnCJ0xnYAZ/ydgpwVTW9zDjpznNg5zPt5AeyKKvWf3ilHuDwTfhSW5Z/a
         w3Ci20peVuGMUbb/1+27lI3AdJRwOdnVROCKffcZ52ELXlp8+6ZMSThf+T+dZ57DCTlg
         sx5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701991573; x=1702596373;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nwQ0NM/8b9kkd3Bk2hYzgxQ1Wlbw7cAH3liwE9dLCgU=;
        b=tqUKyffvXKdPpTtpka0WgGvotlsZg245/GGKlrHx6DwPuF+0cW1YaGSyNAxN9GKdVe
         ZmnKMV8K73jcpiKncckfmB9+7l10kvG//16SKBMxpAJIovjIiXeAqCCXKtGbrEMd1zU6
         0Ib/Ed7lPkdLQsK5aY7bqGEFA6wHNoSfxrh8hZ5FCM1UBi0Isa/GTb5lBesWx+fbdmnj
         Amg5eJgZfoj4bY/6cZ/YOACOG40zg4hHdvqt5SRb/FLAyBYC/QWIoKUfzfMXAbU0BKRt
         aWaiQvPxkUlGZ8KhpaZu990YHBbcNuAqbdSBoswLUHusUdWwaax2sU4tFMJXJ68gMBIg
         vCvA==
X-Gm-Message-State: AOJu0YzaXFRYhNy6PWoQmO6ZowvP50gi3DXAaj6vyNg0Ii8//+shGf8n
	RuZIh+L2zIgYRxcKSkpmdIZ7WaF3ywSX5EaNq90vLw==
X-Google-Smtp-Source: AGHT+IEFdZAslQ5LtlnAbTt0f7XmaVLIb+pGfPxpWSUEneYQWjfHfi8+cEwP2Tpca3To6SrzZaKmkCj5UdYgFvf3ay8=
X-Received: by 2002:a2e:860a:0:b0:2c9:ff66:b40b with SMTP id
 a10-20020a2e860a000000b002c9ff66b40bmr2306141lji.4.1701991573484; Thu, 07 Dec
 2023 15:26:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1701971344.git.marcelo.schmitt1@gmail.com>
In-Reply-To: <cover.1701971344.git.marcelo.schmitt1@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 7 Dec 2023 17:26:02 -0600
Message-ID: <CAMknhBFPbAqp4-AQdmbp+VRW-Ksk1PxaLCG+3n=Zk4gyStqhgw@mail.gmail.com>
Subject: Re: [PATCH v3 00/13] Add support for AD7091R-2/-4/-8
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

On Thu, Dec 7, 2023 at 12:36=E2=80=AFPM Marcelo Schmitt
<marcelo.schmitt@analog.com> wrote:
>
> From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
>
> ----------------- Updates -----------------
>
> Applied all changes suggested to the previous series.
>
> I tried to better explain the changes but, since there is a fair amount o=
f
> rework in ad7091-base and ad7091r5, it may be hard to get the reasoning f=
or the
> early patches before looking at the patch for ad7091r8.
>
> Change log v2 -> v3:
> - Split alert fix patch into 2 fix patches and one alignment cleanup patc=
h
> - Corrected Fixes tag format
> - Moved MAINTAINERS update to the end of the series
> - Reworded some commit messages to provide context and make their goal cl=
earer
> - Removed erroneous gmail sign off
> - Created container struct to store chip_info, regmap_config, and callbac=
ks
>   specific to each ADC design
> - Created callbacks for chip specific tasks such as setting device operat=
ion mode
> - Dropped the chip type enum struct
> - Applied suggestions related to device tree documentation
> - Added __aligned to list the of checkpatch attribute notes
> - Other code style tidy ups.
>
> I see regmap's interface for reading device registers under /sys/kernel/d=
ebug/regmap/.
> I can read all registers but can't write to any of them unless I force de=
fine
> REGMAP_ALLOW_WRITE_DEBUGFS.
>
> When testing events for this driver I often write to device registers
> to set different rising/falling thresholds. I do something like this:
> # echo 0x17 0x100 > /sys/kernel/debug/iio/iio:device0/direct_reg_access
>
> I tried read/writing to files under iio:device events directory but alway=
s
> get segmentation fault. I must be forgetting to implement something.
> What am I missing?
>

It looks like event callbacks (.read_event_value and friends) are
missing from `static const struct iio_info ad7091r_info =3D { ... }`.
These callbacks aren't checked for NULL, e.g. in iio_ev_value_show(),
so that is likely where the segfault is happening.

