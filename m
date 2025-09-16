Return-Path: <devicetree+bounces-217694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C698AB58F3C
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:33:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9867525C64
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 07:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 196C42E613B;
	Tue, 16 Sep 2025 07:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IJ3cEDld"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5437B2E091D
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 07:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758008006; cv=none; b=Jis26lvl4U45Z6/YoL6GBJ/Zp45NFJM4S2MmlnnYyXolB9oSPyKI3/9y7IvSHp6nJiBoC0GgqPB5XaSnesII6DdoLmS6HOpAh30XVkynCpFUxEiN6Lak+bUK87dBvzSPP/qse4PEQhxOnPNF3t7hzjHT91U/FAjz5cFgFtBXC2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758008006; c=relaxed/simple;
	bh=xCeRAMSeik3Ij+GYUSuPeX8oLZZe8/JHQM9MhsrFjbE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pYiIWAepTml7BQPoAgkKG1MLkG1l0jy0xGf1OAG9pyEzrg/IWWV7zgq5QwzqE0DFiy5nJxzyOzctJti3beb5POw0FXsxu5Y05XyomhS/yc83A5nJorFuc90dnM5/nb64Ogx0xrc2c2i8Aab2iYxjPYTtYvcEURoJvXp2n8VdLNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IJ3cEDld; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-3515a0bca13so39544931fa.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 00:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758008002; x=1758612802; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KRaB0QRQ+CwkntAtDL6wAD1iaM0SOq9+/31jrQixXeE=;
        b=IJ3cEDldfEGaKcTaMUddrPQbdPf9nJwHdM5eIWA6xe9d+ifNGskeFHIzZk8v5OH2yM
         xMNmbjEv/g1qksXD487rOluL+6LDSXf3BMu8OnUGCdLqx0gs4bTaSD2Pr+iIwp6ilhpb
         Lzw8lcH9ab33xpshZANrz4lklvLM1YAz8BGyKXRxu/3/snVu1iBgHmCJRjk7SKhEDcJp
         fR9JMw2c/tpMEb2tg5RaoMGpHG3joAMHO3s2Y18wRWLc/hMdEW4Wq9EZYX+vQxYudpjT
         7EbEHm4IZXUkCDsE4GcTdqHtvVZKTff1w/o15ogr00tbck41HSpzZoDsOxT5f9w/98m3
         CFxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758008002; x=1758612802;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KRaB0QRQ+CwkntAtDL6wAD1iaM0SOq9+/31jrQixXeE=;
        b=Di5KIqPOiVs9SbG9zxd9b2wHlcu1wmBelsX+U9GWgfBkc/iGUPs9jn4MkRYdneNIiZ
         0Qi5L53+sZ9kBybBxQQ6Fit0Mh1oYlBICyG+TCNK9Byrh5JH/+91sezmOnO1nM3jR1TW
         e/SYOUvp17F565qsNh1CUBPINF/atynl+G1oexPG0bjs+xLk7OmMtkBXdoXXjcSDMfS9
         q6Xd3jfK1mXX05hYl7jNP0jhVTkMbQmQSNBRXfGH51/8ajPisL1Iony2i6V9Pr6ENy+k
         4R2dPcIAH1FYXZC+fz/G6ENZvjomMC1pO8VLQsP8tHsxq067cnEt94tXxY1RYWnmocGN
         XkFw==
X-Forwarded-Encrypted: i=1; AJvYcCXbBLCiERmQTJVen8gsOdI070o1/bBM60nZ7oDNk9wEcj17khyozhjXSjfhYOGp7c3bkBJd+YV2W80j@vger.kernel.org
X-Gm-Message-State: AOJu0YytxY6J/3GE4hF1Pef22h/QcteYJ9QDsKi2ePwJ1Fl5mtogA2as
	532Hp3tykzPSw5eAetqr/69DTtyFSIirxAdb1iAS4Zu0sI3Ju0bkKgMCx205+Gsj2SBSBLYCKi/
	W8LDn6i5Uwg22zU96dChNPivf2yx4BWM=
X-Gm-Gg: ASbGncvEBK8cFjLQY0Q/jekOzB9ypKCXC/FdCdsRC9sHOhupQbrnvmtcWf0tvzUhNE6
	igAn14mM/NV9F+sHSKe3pxMl10qXlOPd6c1XqvsQ1+1hSPrv/Jbuby+KprAn0ifnkcCUpBvGXVS
	ps42259VmNoL3I1hSjhy8dX4WoFAO4l6cOBXwdo4+2aW3Nfz9pek2j4PumxynVLgI5HJKiHOczX
	RAVDMU=
X-Google-Smtp-Source: AGHT+IG7pjCLsgXwD5N0VxlPDgIAlAe43EQY6konXmywpkCawCRcZViVf5KqJj0G3f36rR6VMBI3m9oWeXKQcQHVTPw=
X-Received: by 2002:a05:651c:b1e:b0:333:f25b:2900 with SMTP id
 38308e7fff4ca-35cc02b7981mr4653811fa.5.1758008002137; Tue, 16 Sep 2025
 00:33:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250915-bd79112-v5-0-a74e011a0560@gmail.com> <20250915-bd79112-v5-2-a74e011a0560@gmail.com>
 <aMge0jYwYCiY72Yb@smile.fi.intel.com> <20250915211321.47865d3d@jic23-huawei>
In-Reply-To: <20250915211321.47865d3d@jic23-huawei>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 16 Sep 2025 10:32:45 +0300
X-Gm-Features: AS18NWCO2CWCadsZfD4Zx3x2Kk_cH8eq1ZHLhEBNLfL8EtEvcHNkIFb9wcymKKQ
Message-ID: <CAHp75VdJ8MH=S4GbEbuky0-gFFxhKbBHsNiiajh-+jxCSPMDXw@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] iio: adc: Support ROHM BD79112 ADC/GPIO
To: Jonathan Cameron <jic23@kernel.org>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, Matti Vaittinen <mazziesaccount@gmail.com>, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 15, 2025 at 11:13=E2=80=AFPM Jonathan Cameron <jic23@kernel.org=
> wrote:
> On Mon, 15 Sep 2025 17:12:34 +0300
> Andy Shevchenko <andriy.shevchenko@intel.com> wrote:
> > On Mon, Sep 15, 2025 at 10:12:43AM +0300, Matti Vaittinen wrote:

...

> > > +   data->vref_mv =3D ret / 1000;
> >
> > I still think moving to _mV is the right thing to do.
> > There is no 'mv' in the physics for Volts.
>
> I'm not disagreeing with this review but I'm also not going to hold a
> driver back for that given timing is pretty much such that I merge it
> today or it sits a cycle and this one is very near...

Sure, nothing in my last reply is anyhow a serious obstacle.

> I'll get fussier on this once we have written up some guidance and may
> well send a patch to modify existing recent cases like this one!

--=20
With Best Regards,
Andy Shevchenko

