Return-Path: <devicetree+bounces-33253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8368B832B07
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 15:11:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A57531C235AA
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 14:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A87154645;
	Fri, 19 Jan 2024 14:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="vZcfMALE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B4253E17
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 14:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705673490; cv=none; b=a4BAQ2phYvUqEYCv8me3zYbY84JwKmp/IWp4dyor+c8qRYEx5p+1RMfVtU4Gzmh1AhrcZLadRRTneKN1vBMX3T1hIS9W/U4YKTYLMLcrza72QnjIGxgUVURtwN1BN4lu1WvFl6n9i4lBe2Luw4cyEY30vd0KEykOOueahWZ+vOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705673490; c=relaxed/simple;
	bh=TqPHp6thk907FTTvm3tboLNknd3v+aqQVcopEpXBIu8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uZLreJBVk3fRXoooleNgNG3xvoKld8JeWH9YNgfyjaxwWCh3oivIwUVbPG1f0AOA9M5FsNYaf5naeKrgcvZV3TpB6HSIV3ZKrxO76HyDp6n3cl6Fly+6P8wpH368XTl/vMWBoSNBBCan1WE0QtrYIrwtQm4hfbIdtvBVrTfiFic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=vZcfMALE; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6dddf7ea893so396460a34.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 06:11:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1705673488; x=1706278288; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yve1j093zhPAT03KqE6u8/WuOBcMWVIgTCIkj2nZNFY=;
        b=vZcfMALEiskUtPprj7p5P4EcBDWlLP3gVBs2HaeH1PzrhMuVWYf0jccfRpjlgrxzfJ
         edC+w5lLW/B9yohTi5nklamyrZ5Auhq6RmboTNN+hi3COglPggs0JsdM7TqaX0ngZ821
         VAm2Ue41HJB7YeEWJUGJxRF+rv2pKIMA2ffrPJeMDoGkB1qLPMrEgNRzeZ0Nh6cCKH41
         UWpH/yMzHRlforjcjL2NFunLWFKap6JoIe8EouBGNdBw7Am8wdKmDudp74wCOiGyzw/Q
         m03Pp7nM3sUTchSfg6zqlRcSHxwMg4DgyUvVX2YxW2qUklqjXTC9fJzaeXeXk4Sbn6L7
         Xc7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705673488; x=1706278288;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yve1j093zhPAT03KqE6u8/WuOBcMWVIgTCIkj2nZNFY=;
        b=TSxA6PrdW9jj/FjLz8qDMeb+V320eMe5zCpyCbrHO87ECtXPAoQvZA18LdDvd8xvrS
         TXZ4azRVUtzm5FJmzwGuwy9zV1K+G3DkPrgYPrAHYDDl0gTKL9sz7WiHRmMPSeVoNLas
         mkhwGuULrAqebmmMg5yl2w3HtILqnm2gMazcv69Df6GNZEwfG5PISxbkvDOD4F1IyY1C
         M3oqQVCM0KGIaOBRmuFGE7+YBTJUn//zOymaFkRaHQsrqD2CL1Dx1WZXJc6OtN8S9nKQ
         3TDmJ6dEsWGx0XACgjlmBEsonzGF9jICXq70rkI0fXRpYivtbAbUYxk4i6FzeI1uX1r+
         xLsg==
X-Gm-Message-State: AOJu0YxyJtbTML/wi3K96x8GAkUNaOrmItQP4f7Aeoax7j4qYnlHstT6
	qLhEdVqBHgWJpQgvhYyqqNVauyOkHxFbSaggJ+tC49OZrqut+plQfV0SUx/1JaQEsQfOUvDvLNY
	6xfuPHz2Bl4q39CHgjWCDzqLQLhN11Sn60e7i+A==
X-Google-Smtp-Source: AGHT+IEzKXt1iaQ6NmzAsJq/01qfzT3pF8iI8eJNn96nqR6Ib5KEm8Td2wQBXRzywiLI+5x36vj8wMIivUvhBtXqPv4=
X-Received: by 2002:a05:6870:548c:b0:20e:364b:eba9 with SMTP id
 f12-20020a056870548c00b0020e364beba9mr2008699oan.9.1705673488006; Fri, 19 Jan
 2024 06:11:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240117160748.37682-1-brgl@bgdev.pl> <CAA8EJpoQfPqoMVyTmUjPs4c1Uc-p4n7zNcG+USNjXX0Svp362w@mail.gmail.com>
 <CAA8EJpqyK=pkjEofWV595tp29vjkCeWKYr-KOJh_hBiBbkVBew@mail.gmail.com>
 <CAMRc=McUZh0jhjMW7H6aVKbw29WMCQ3wdkVAz=yOZVK5wc45OA@mail.gmail.com>
 <CAA8EJprFV6SS_dGF8tOHcBG+y8j74vO0B40Y=e7Kj1-ZThNqPA@mail.gmail.com>
 <CAMRc=MdOALzkDtpnbqF16suShvP5apGYy4LTQ4dTc3r9Rbb1kg@mail.gmail.com> <CAA8EJpr=PMdOWzp8fahL9e9QC-qgS=hSaTqT1XdUs8Dvvsxqgg@mail.gmail.com>
In-Reply-To: <CAA8EJpr=PMdOWzp8fahL9e9QC-qgS=hSaTqT1XdUs8Dvvsxqgg@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 19 Jan 2024 15:11:16 +0100
Message-ID: <CAMRc=McdXC8zP4_+a3hBijVLXmLFakfjdXjzPOwaNsPCwPT36w@mail.gmail.com>
Subject: Re: [PATCH 0/9] PCI: introduce the concept of power sequencing of
 PCIe devices
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Kalle Valo <kvalo@kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Chris Morgan <macromorgan@hotmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Arnd Bergmann <arnd@arndb.de>, Neil Armstrong <neil.armstrong@linaro.org>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Peng Fan <peng.fan@nxp.com>, 
	Robert Richter <rrichter@amd.com>, Dan Williams <dan.j.williams@intel.com>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, Terry Bowman <terry.bowman@amd.com>, 
	Lukas Wunner <lukas@wunner.de>, Huacai Chen <chenhuacai@kernel.org>, Alex Elder <elder@linaro.org>, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Abel Vesa <abel.vesa@linaro.org>, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-pci@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 19, 2024 at 3:07=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>

[snip]

> > >
> >
> > Alright, so let's imagine we do model the PMU on the device tree. It wo=
uld
> > look something like this:
> >
> > qca6390_pmu: pmic@0 {
> >         compatible =3D "qcom,qca6390-pmu";
> >
> >         bt-gpios =3D <...>;
> >         wlan-gpios =3D <...>;
> >
> >         vdd-supply =3D <&vreg...>;
> >         ...
> >
> >         regulators-0 {
> >                 vreg_x: foo {
> >                         ...
> >                 };
> >
> >                 ...
> >         };
> > };
> >
> > Then the WLAN and BT consume the regulators from &qca6390_pmu. Obviousl=
y we
> > cannot go:
> >
> > wlan {
> >         pwrseq =3D &qca6390_pmu;
> > };
> >
> > But it's enough to:
> >
> > wlan {
> >         vdd-supply =3D <&vreg_x>;
> > };
>
> I'm not sure this will fly. This means expecting that regulator
> framework is reentrant, which I think is not the case.
>

Oh maybe I didn't make myself clear. That's the DT representation of
HW. With pwrseq, the BT or ATH11K drivers wouldn't use the regulator
framework. They would use the pwrseq framework and it could use the
phandle of the regulator to get into the correct pwrseq device without
making Rob and Krzysztof angry.

Bart

[snip]

