Return-Path: <devicetree+bounces-100216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EC196CD7F
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 05:52:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1482DB20E3F
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 03:52:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F94914601F;
	Thu,  5 Sep 2024 03:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RFQew6v2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4AC3131E38
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 03:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725508367; cv=none; b=NJ5cDSHIVvdruEL8VeLT3VBZGPcbAoxugLiM2uOTDW5qLHlGb2jndFOBsvWYN9wUQ7n6osN1zZM3d6aWvRPQ1u77bANM28w4A0zM1v/iq49qRrM6uGyRkdqD3oNhxTb1i469MaILIs2uDlOJ+OfhrgLNZ208vv3COrOhm7Q0k50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725508367; c=relaxed/simple;
	bh=su/8gj6ks5K85/I3PIYZHz4bzmuYkE7mRyHvpRMnZhg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PUwS3+/7h3MoYpcb+eb83i0p5jgqDWGeFZn+41eu713j3CXmM1ByJyJZnsdKFUdKc3U4CyBh81h0W13VmE4kYmwqaGi9nSzgV3KVZbpm1zO8EG4r2ZrwiCvtZ+HorVN8co71G8kesHXvHFzxiX/yRwYW33iTsw03UzFwAjx6TMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RFQew6v2; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5353cd2fa28so236808e87.3
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 20:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725508364; x=1726113164; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QRIIgJ7S3hsBk6289/S+wOJS+zjzXBK17nuyOQXg1gQ=;
        b=RFQew6v2H2RSVsC5zXcTD6NPoVUP8rC4ngRO26FnEtEXE33zWqplCFXsAojoxCDk9w
         3jKXMjTvIWiDfBjZwGOtERjZmGe79jhk4jXmbQ1YGWP3zUHPs8ABv0uqZSY67QOYzk/B
         GUUu82pqiF1qtQbMBvsiHC9N7CNp/owZhwEqY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725508364; x=1726113164;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QRIIgJ7S3hsBk6289/S+wOJS+zjzXBK17nuyOQXg1gQ=;
        b=ZZimQ/T9ak22DKHGjXTvefUS78JsnazqRcSO5Utb+tFVuSyaVKovSDpQVPJmadLs6l
         QDYAINPXzdT4gLcaM36bMfkdaV2hAM/vJTskFd3TJ3XWn7aQvZaKbe6atpUpSXHRxx0k
         TabkrClSKh8/oOrrg7FRnOkVNmmydI+7VKPDeun1UTOFqa4c4ltVXoWI/LA2T6w5SP8n
         AhFEIUQftIUTOjwxH0JtXKAsntGoUAWxK+Ega3jpUt4p7o/EfodlvTOU1whREdqQCYmS
         p7E/L9XkDrwkTZIebOUnedP8v2WDpNkw5XrwKGfiCbfotA/jCQOwG6lViJalFk4aOnnn
         jnVA==
X-Forwarded-Encrypted: i=1; AJvYcCUfT9HfJa0tmqq3IXcIlXyIV04FUw6F1TPhpHuh3Y+TDGa8eOQU4Zt0/BpomuW4dhezru8J+4PaIGIa@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6Mlf1FWoR79c8+TA9PHcIyvQxteY1Hw97MPHj6Xcu53qURrAz
	ZdKO6193+pKVTImQsA/8hMIk/dmE5Z45oPqtigWWqAIYKtrNWFfz/4sB3oYz7RVHJVmvsyLLEtm
	7Fscon5wAJmw8OZZx1DZBZjpOCqBFbw1FMhhb
X-Google-Smtp-Source: AGHT+IFf4LunjDbLMZ4JbahUyowVfro0pxQijuaHaPzJX7btNK9HgFjL//PjfHIonl230ee/BtNVKcZVy4RESHnFt3A=
X-Received: by 2002:a05:6512:350e:b0:535:66ff:c681 with SMTP id
 2adb3069b0e04-53566ffc733mr2025998e87.48.1725508363601; Wed, 04 Sep 2024
 20:52:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240904090016.2841572-1-wenst@chromium.org> <20240904090016.2841572-12-wenst@chromium.org>
 <Ztgxlmhnkn7NVC81@google.com>
In-Reply-To: <Ztgxlmhnkn7NVC81@google.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 5 Sep 2024 11:52:32 +0800
Message-ID: <CAGXv+5GpKu-b4_dbRcuSG4NxQi_FKh9p7iMh6DfgavkLFdLLdQ@mail.gmail.com>
Subject: Re: [PATCH v6 11/12] platform/chrome: Introduce device tree hardware prober
To: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, chrome-platform@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Douglas Anderson <dianders@chromium.org>, Johan Hovold <johan@kernel.org>, Jiri Kosina <jikos@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 4, 2024 at 6:08=E2=80=AFPM Tzung-Bi Shih <tzungbi@kernel.org> w=
rote:
>
> On Wed, Sep 04, 2024 at 05:00:13PM +0800, Chen-Yu Tsai wrote:
> > diff --git a/drivers/platform/chrome/chromeos_of_hw_prober.c b/drivers/=
platform/chrome/chromeos_of_hw_prober.c
> [...]
> > +static int chromeos_of_hw_prober_probe(struct platform_device *pdev)
> > +{
> > +     for (size_t i =3D 0; i < ARRAY_SIZE(hw_prober_platforms); i++) {
> > +             int ret;
> > +
> > +             if (!of_machine_is_compatible(hw_prober_platforms[i].comp=
atible))
> > +                     continue;
> > +
> > +             ret =3D hw_prober_platforms[i].prober(&pdev->dev, hw_prob=
er_platforms[i].data);
> > +             /* Ignore unrecoverable errors and keep going through oth=
er probers */
> > +             if (ret =3D=3D -EPROBE_DEFER)
> > +                     return ret;
>
> Is it harmless if some of the components get probed multiple times?  E.g.=
:
> comp1 probed -> comp2 probed -> comp3 returned -EPROBE_DEFER -> some time
> later, chromeos_of_hw_prober_probe() gets called again.

Yes it is harmless. Components already enabled will not get disabled
in the error path. And the prober that enabled that component will see
that a component was enabled, and skip doing the whole process again.

So something like:

    comp1 probed -> comp2 probed -> comp3 -EPROBE_DEFER ->
        comp1 skip -> comp2 skip -> comp3 probed


ChenYu

