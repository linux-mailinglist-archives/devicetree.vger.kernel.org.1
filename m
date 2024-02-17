Return-Path: <devicetree+bounces-43064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC53F8591BD
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 19:32:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73F74283357
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 18:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA6837E0FC;
	Sat, 17 Feb 2024 18:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Z+fPtnzm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D4B7C0A1
	for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 18:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708194749; cv=none; b=DBCX5uztT8/swajvpARfiWR3cY6U0dRnGPz+pGCxF+Iugd1otXTSP/9tv+glERkF7IUAkPy5W+akqb6ZafxlRmzTcft4Cva3drkaM2058p1jStl48WwX+NUBJhk7ECDBIPuNAKHR5OhDmLQA+FQHuQZyR+iHoig39AiSHlW0R7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708194749; c=relaxed/simple;
	bh=L2GmIXaDMjW+EsDusq1kZEY2dBNutsr8EonFQw0X7ws=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=St7ZJ7IrvEV5vRwl5JztC6kfADQtG9zEi9u/gcpeO86W4FQRVAwFwwUwmpclYKd8VweyltOMaCc7kUXGEmDtUcH6XB/5gkwnORD2F7qNMpmlr9v4UOZoiqfJkHlhlwsvhnl3aRJ/hS64jnt5ttc6r03JhGyJYavdpIy2eHpeJnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Z+fPtnzm; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-7d5bddb0f4cso1178222241.2
        for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 10:32:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1708194747; x=1708799547; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L2GmIXaDMjW+EsDusq1kZEY2dBNutsr8EonFQw0X7ws=;
        b=Z+fPtnzm85GoxFE32FQBUME5ZUSR/B4P1OWO4L1t7E3sqVZetWZ/72KdOfwtipiWk5
         L7IL5WriHIXVFjpLzRkqwRnr40KE9nz1pDYPt1iMp/DMN6tnPBuDAqv4ErOeszP2Haae
         vrQg61iaJjQt0OjTt7jUde5bvzeLZy8aQI3AbLDJEj+vYEGq7F06elox3Fa38mDRPCDP
         nogoVaSVwWsZcHH72Yh39cJKO4z4MXz3KyKH9pS4ssR/wQHwuSrcDfMDzWqbUALgJmf7
         UoQ4FCIDcP1Ox0OViAJzl+ZEQZT8MyVEUJGyPSz1CkYipW/7FOPhmsrcHz6yq9IH7F/i
         OZaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708194747; x=1708799547;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L2GmIXaDMjW+EsDusq1kZEY2dBNutsr8EonFQw0X7ws=;
        b=PS5QSeuV9iOMIja4W9A+QczSpvDaP0tYtNKhVYlHGM3Tpe5iFad/sFDEI4T7C4yq7G
         GpqF7YN5yrTT5dK/RhriU9VfmzBWVvBJgnkWtXLRJnIWBaH7mTw/hplx/2nFPhWhl563
         fZzRIIg4EsemIrV7LnDa5UJpxOjPKccY3gniRnAcD74gVVN5ShpCg0SHKEj6aYfbdVtX
         RjJ77Ld6GKXorVCi2ahBy1/CvQgE4NBDhNeDh0AS2oHwY/XvMX0R8Qh7mCN8MQjabMIw
         EMSlCbZE8aY0lWnPNgntL317u77JmoGOuVsZKy+a5m6aOUuBCoJpiYDYnOZrsS2VTfq3
         slyg==
X-Forwarded-Encrypted: i=1; AJvYcCWdc9YbXorUNxiqimOTEn7mDmwp83JvvFz4EQWIvsayfZ1fk51wb1P3ohyFctlNPUFRYmWA+2cgP9DZ2RflQ17U9YQOFkBfx1OKWg==
X-Gm-Message-State: AOJu0YyMbH31D+xkpK4z2mbiGGEC2lKaC5TiYs1LCkX/oFWNZaiukXYL
	IjQYd+Tswx3t6AqA/GORIQTF3f4+pU3X5pto1vO2Uh9+XcVRmy/sdU8oV76ggrbtnO2krIycmjh
	m7vUR3PQLm/mOfb3KKSF5TV/7ea1bhbg24wLnAw==
X-Google-Smtp-Source: AGHT+IFEjgGW7fKzH9O8aPqylmVeeWs1rMw3O59IYiYOUkypD1mxg7ZgMbhhHM34XumhsF+9CITrBlLVb+C2zYLhdF0=
X-Received: by 2002:a67:fdc9:0:b0:470:419f:d42e with SMTP id
 l9-20020a67fdc9000000b00470419fd42emr1433176vsq.10.1708194747045; Sat, 17 Feb
 2024 10:32:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240216203215.40870-1-brgl@bgdev.pl> <20240216203215.40870-4-brgl@bgdev.pl>
 <ZdDVNbjv60G9YUNy@finisterre.sirena.org.uk>
In-Reply-To: <ZdDVNbjv60G9YUNy@finisterre.sirena.org.uk>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sat, 17 Feb 2024 19:32:16 +0100
Message-ID: <CAMRc=Mf9Sro4kM_Jn8_v=cyO5PxCp6AnBdeS9XspqVDGKdA_Dg@mail.gmail.com>
Subject: Re: [PATCH v5 03/18] dt-bindings: regulator: describe the PMU module
 of the QCA6390 package
To: Mark Brown <broonie@kernel.org>
Cc: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kalle Valo <kvalo@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Saravana Kannan <saravanak@google.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Alex Elder <elder@linaro.org>, Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Lukas Wunner <lukas@wunner.de>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-bluetooth@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-pci@vger.kernel.org, linux-pm@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 17, 2024 at 4:48=E2=80=AFPM Mark Brown <broonie@kernel.org> wro=
te:
>
> On Fri, Feb 16, 2024 at 09:32:00PM +0100, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > The QCA6390 package contains discreet modules for WLAN and Bluetooth. T=
hey
> > are powered by the Power Management Unit (PMU) that takes inputs from t=
he
> > host and provides LDO outputs. This document describes this module.
>
> Please submit patches using subject lines reflecting the style for the
> subsystem, this makes it easier for people to identify relevant patches.
> Look at what existing commits in the area you're changing are doing and
> make sure your subject lines visually resemble what they're doing.
> There's no need to resubmit to fix this alone.

Mark,

This is quite vague, could you elaborate? I have no idea what is wrong
with this patch.

Bartosz

