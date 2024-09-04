Return-Path: <devicetree+bounces-100171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8D196CAA4
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 00:57:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 172571F25AD3
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 22:57:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5961A16B385;
	Wed,  4 Sep 2024 22:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jWN/hhin"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9758C383A3
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 22:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725490657; cv=none; b=GOwbk7uOadpYVwoLmdHo3n9XXjNHlhQSaJnv4Zu4/NBUl8bsSuBMSfVnOEvS5TOV/xSGtC79v27RWuxyGux04DQweiyLf3H2NiT4e8DG28E+6K2mQ5sxtU/4kNVTXYMsOs7DPny7qJ4ycfYehQdwuezyzJxAcOG5lHuh6+ohhNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725490657; c=relaxed/simple;
	bh=9+gChnP5+JN/xcDHFnljOqSBOGQpXqxh0GSV4CRi4i4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=POnfVKLmRL/K5AUWaEeJBGHiirLmolH5tE5JP7PG4YV37esrBFFQBIm6URXyD5XSuoxBYo76Qxte7TpaKWHlx1+NxckWaKiBFE2Un3pibmuDCwzAUgnM/CdlsBABJoGf8PpbYqF0pvd9eFDwRCnSCn/71woqVOzZixGOlowVG8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jWN/hhin; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-7a8160a710aso9015185a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 15:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725490654; x=1726095454; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k696Bg6R54WASMTi+pz+LZlGCRBSQtRYcr6+VwRcm/8=;
        b=jWN/hhin8qnjArJ1iM4i/6447mytQiGcJ2xTUsB0w7wz2G21PvsItA+0dxaPwzTS3D
         elMCtPTQbFL1eJk9XCCwaQbSoBBx6xFdQzBa+jzbHfdjBMnUPapP1MBONV8HrL7b2wdk
         mxfaQzpKkldTiXHyPdUvvKLix8DlXbuhUwHU8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725490654; x=1726095454;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k696Bg6R54WASMTi+pz+LZlGCRBSQtRYcr6+VwRcm/8=;
        b=P97VOLs55pO7qiI/HXICO5O5IIysRlAieGgUaCx6yM/Lhd9myhhJ4MsZrmSiPY9SkU
         jyahAivMUht6+5H1ygAX3jHdVQT2UBnrE1oNSQYgE8LYsA3aJ0ifLQ/heEbEa6c8Rh1W
         5VwSPTAI1b+Y3tZB3uSZNfSFcB94lIx+iqplOCDbMzPYhc68Tx7dkx1rWSOzzLNqr2Mi
         2xzSrnjQp2yLI9Sk4NyKSllCx+X+VM/ff/MKSUIiKzG4HOQno6Ba/cvuNTt/0pI2N9Ww
         Fw5NvrNxk68zuBlAqt8/UFtRpMMQ7KdssftfnU0MSwV6is9kEcAYZJcLUKl8W3G18Sx8
         Xw7w==
X-Forwarded-Encrypted: i=1; AJvYcCXU0jOzu8kvvglpKAFETNVfRP/yGOKPXX7P7CIkL4GbIg0+mtq9HRz7Epr+KUTE9l1HDyK5E8R5fu6d@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3QooTu5KqKIAARFsbOY7FTn/PuKcMBXIpWjQinLOdKvqtezPC
	u/eP7OfKVVVaGDbJQ/P37pNuGtWUOKZoiILp+UG6V/PMFosuA05djw11puSWNNF2/Q7pKXVrgP8
	=
X-Google-Smtp-Source: AGHT+IGIacv4fkNhuDQucwjfsZH57HQalzCcUb9tVIb51l29soBh99Wfgc2QZw6WAS3uW2qtAd9ypg==
X-Received: by 2002:a05:620a:1914:b0:79f:66f:9daf with SMTP id af79cd13be357-7a8ac3ba814mr1975713185a.47.1725490654397;
        Wed, 04 Sep 2024 15:57:34 -0700 (PDT)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com. [209.85.160.182])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a98f00e60dsm26288585a.105.2024.09.04.15.57.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2024 15:57:34 -0700 (PDT)
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-456954d0396so843631cf.3
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 15:57:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWOFT+6O2nD9GO06JZR7kj0RSS6u5Aunlyml6CO4Y6AWsCGu51GiGLIavT0fEuZ5pi/h5IUPtChPN5a@vger.kernel.org
X-Received: by 2002:a05:6214:3da0:b0:6b7:b277:dd12 with SMTP id
 6a1803df08f44-6c3558475afmr184722756d6.49.1725490653502; Wed, 04 Sep 2024
 15:57:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240904090016.2841572-1-wenst@chromium.org> <20240904090016.2841572-10-wenst@chromium.org>
In-Reply-To: <20240904090016.2841572-10-wenst@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 4 Sep 2024 15:57:18 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UGOz3Xzg7reJKP=tA1LqTxszv5w-CL9krmoXQtXdJLaQ@mail.gmail.com>
Message-ID: <CAD=FV=UGOz3Xzg7reJKP=tA1LqTxszv5w-CL9krmoXQtXdJLaQ@mail.gmail.com>
Subject: Re: [PATCH v6 09/12] i2c: of-prober: Add regulator support
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 4, 2024 at 2:01=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> wr=
ote:
>
> This adds regulator management to the I2C OF component prober.
> Components that the prober intends to probe likely require their
> regulator supplies be enabled, and GPIOs be toggled to enable them or
> bring them out of reset before they will respond to probe attempts.
> GPIOs will be handled in the next patch.
>
> Without specific knowledge of each component's resource names or
> power sequencing requirements, the prober can only enable the
> regulator supplies all at once, and toggle the GPIOs all at once.
> Luckily, reset pins tend to be active low, while enable pins tend to
> be active high, so setting the raw status of all GPIO pins to high
> should work. The wait time before and after resources are enabled
> are collected from existing drivers and device trees.
>
> The prober collects resources from all possible components and enables
> them together, instead of enabling resources and probing each component
> one by one. The latter approach does not provide any boot time benefits
> over simply enabling each component and letting each driver probe
> sequentially.
>
> The prober will also deduplicate the resources, since on a component
> swap out or co-layout design, the resources are always the same.
> While duplicate regulator supplies won't cause much issue, shared
> GPIOs don't work reliably, especially with other drivers. For the
> same reason, the prober will release the GPIOs before the successfully
> probed component is actually enabled.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
> Changes since v5:
> - Split of_regulator_bulk_get_all() return value check and explain
>   "ret =3D=3D 0" case
> - Switched to of_get_next_child_with_prefix_scoped() where applicable
> - Used krealloc_array() instead of directly calculating size
> - copy whole regulator array in one memcpy() call
> - Drop "0" from struct zeroing initializer
> - Split out regulator helper from i2c_of_probe_enable_res() to keep
>   code cleaner when combined with the next patch
> - Added options for customizing power sequencing delay
> - Rename i2c_of_probe_get_regulator() to i2c_of_probe_get_regulators()
> - Add i2c_of_probe_free_regulator() helper
>
> Changes since v4:
> - Split out GPIO handling to separate patch
> - Rewrote using of_regulator_bulk_get_all()
> - Replaced "regulators" with "regulator supplies" in debug messages
>
> Changes since v3:
> - New patch
>
> This change is kept as a separate patch for now since the changes are
> quite numerous.
> ---
>  drivers/i2c/i2c-core-of-prober.c | 154 +++++++++++++++++++++++++++++--
>  include/linux/i2c.h              |  10 +-
>  2 files changed, 155 insertions(+), 9 deletions(-)

I never jumped back into looking at this since you started sending new
versions last month (sorry), but I finally did...

At a high level, I have to say I'm not really a fan of the "reach into
all of the devices, jam their regulators on, force their GPIOs high,
and hope for the best" approach. It just feels like it's going to
break at the first bit of slightly different hardware and cause power
sequence violations left and right. If nothing else, regulators often
need delays between when one regulator is enabled and the next. There
may also be complex relationships between regulators and GPIOs, GPIOs,
GPIOs that need to be low, or even GPIO "toggle sequences" (power on
rail 1, wait 1 ms, assert reset, wait 10 ms, deassert reset, power on
rail 2).

IMO the only way to make this reliable is to have this stuff be much
less automatic and much more driven by the board.

I think that, in general, before the board prober checks i2c address
then the prober should be in charge of setting up pinctrl and turning
on regulators / GPIOs. Given that the same regulator(s) and GPIO(s)
may be specified by different children, the prober will just have to
pick one child to find those resources. It should have enough
board-specific knowledge to make this choice. Then the prober should
turn them on via a board-specific power-on sequence that's known to
work for all the children. Then it should start probing.

I think there can still be plenty of common helper functions that the
board-specific prober can leverage, but overall I'd expect the actual
power-on and power-off code to be board-specific.

If many boards have in common that we need to turn on exactly one
regulator + one GPIO, or just one regulator, or whatever then having a
helper function that handles these cases is fine. ...but it should be
one of many choices that a board proper could use and not the only
one.

-Doug

