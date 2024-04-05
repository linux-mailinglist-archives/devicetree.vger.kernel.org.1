Return-Path: <devicetree+bounces-56544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 672778999F5
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 11:55:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A1E51C2160D
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 09:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A19816C85E;
	Fri,  5 Apr 2024 09:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="067XdQO4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8EBF161336
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 09:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712310768; cv=none; b=no8sohOH9WyN2OXY2kK4jjRyBUh3dcCauvZhQTsBQnPljkIYz9VnStjM9wWjs2R8je6CX++ZwQvUgmFdAmYNR8XzKwSlRxMEOURImu+35MnAME9bA0RY0QG1BBhQvH7eFfjRUdwnnOQEBZdcJD6NHRjrgSVfvelXas1fi7+EeiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712310768; c=relaxed/simple;
	bh=Xao3XwnnM8VJVYj/1S47nAYhy7EFIIHCmB1TEMBpw1M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZU0KaM9rL3HaU/MQLWDWogYhBo0UIFtW25q6FqDXNZ7rXFdlt0c3aSn4AKVxOGn7Ds1Dj9+1pvnSAA7p4mgiX6nAu6kq76ZFS+dzz7MNweUwwNBABSeDyPxR3K+hQf4IYkKEo9Acpu41uiPHnChM7cLeHJiNqZRi1aeuIHkGqaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=067XdQO4; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d68c6a4630so23147821fa.3
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 02:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1712310764; x=1712915564; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PFQ1aSQ/yPIndJu3aWFACdTAkwcoKeyAYdYv4GNLQA8=;
        b=067XdQO4gHy787IaZVrU8QShIADjal3eIQAV1yIyz3d2M0JyTqEeCwT3//IhbBXZ8x
         rgjEviEgwF/s3BizSqRls0C4Nd18WqWoerjO1cJFM1m8saO0kL8fd7ig2b91ZU77KEep
         rC8cSXdPPjLJaWBJDZFvmcYW6aKBRZ5IAm0Nc0PFKLGwV2r2vW+eKpzS3tXNfVLo+IlG
         UAg1syHt4qpuv/xnsRfWCat3aHYibZ9VHbB/jdgSdRiEA8jwOb7FUCQNOzC5D2xWvl1L
         Mb0AxneDB0LYVM8AyRDcCIuE2Dgift4Mijs7lAYUrJpOm3QZAfa/UpdY01KBF1B5ltFo
         lKmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712310764; x=1712915564;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PFQ1aSQ/yPIndJu3aWFACdTAkwcoKeyAYdYv4GNLQA8=;
        b=S47eUDovZpLraxLBphCV+MB/VyjJ5wW2WgxHZWxp672I9hqtHfkh7X3mmtMNKpni1e
         2GEtwuWzFJ+vaTHmIOHfzkvyXooGZG8hKHh1VVzB4WUhKKx2YJxZQ6yW618ULOMGF9Ou
         oCGYsO5+EdoXDfOuAWKsKCTYCK8l+cBYiZ7eFeroOOK2OqzPuVZ0hP8wFJK7vTs/dFg3
         Q/pDQgygJAWZ7MfCbIR+Zz29gXvoiteaNFW1WKoIqSbPDTqRvqoMVn8roIgUzSaqb+2c
         LxPjgdRqczRBCHuX5cthRL80mSx27F7lL2+f1eyVdXcea47lEIqU21qBCo5JORahYbER
         23Jw==
X-Forwarded-Encrypted: i=1; AJvYcCWMISmtL0bLtBtBtD4Yj9mzAWUcjCV4w9Jp0pe+b51kaQI5UlTUXmlgE6hxJ+2ePdIy5SUYNTgAnZJkcXeUvLKJUJY+0YO5I/ep1A==
X-Gm-Message-State: AOJu0Yyw0ciPErmeel9pIJ5GXWuyv9WNvsUxqIBTQO6NEFw3F2NNpm9/
	5c3af2gu2uyJXTrXaoIjNxprVwvNDxtgCK8+IOnadFLq3zmbPvi99R3krok+FjTtoydcZU44t5Z
	tjGw3afBFIhTaZwq72oG7x5aYtT3XHQyr2n+tXA==
X-Google-Smtp-Source: AGHT+IHFTvgH2ZminO6meSynk+MyIvOEGXYwM8talY5AqWje/YbfLVqUjdVH/aXaf1x5eKBDfACdQBDX+FEmTYh5vE4=
X-Received: by 2002:a2e:7d17:0:b0:2d8:3e07:5651 with SMTP id
 y23-20020a2e7d17000000b002d83e075651mr1024297ljc.34.1712310763809; Fri, 05
 Apr 2024 02:52:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240325131624.26023-1-brgl@bgdev.pl> <20240325131624.26023-6-brgl@bgdev.pl>
 <87msqm8l6q.fsf@kernel.org> <CAMRc=MeCjNn7QdDrcQMuj32JFYoemQ6A8WOYcwKJo1YhDTfY+Q@mail.gmail.com>
 <87cyr440hr.fsf@kernel.org>
In-Reply-To: <87cyr440hr.fsf@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 5 Apr 2024 11:52:32 +0200
Message-ID: <CAMRc=MdzhGxLNcNLWvRfqr0S9pey-iw964=AcYx_yDXgyDDjMA@mail.gmail.com>
Subject: Re: [PATCH v6 05/16] dt-bindings: net: wireless: describe the ath12k
 PCI module
To: Kalle Valo <kvalo@kernel.org>
Cc: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
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

On Fri, Apr 5, 2024 at 11:34=E2=80=AFAM Kalle Valo <kvalo@kernel.org> wrote=
:
>
> Bartosz Golaszewski <brgl@bgdev.pl> writes:
>
> > On Mon, Mar 25, 2024 at 3:01=E2=80=AFPM Kalle Valo <kvalo@kernel.org> w=
rote:
> >>
> >> Bartosz Golaszewski <brgl@bgdev.pl> writes:
> >>
> >> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >> >
> >> > +
> >> > +maintainers:
> >> > +  - Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >>
> >> IMHO it would be better to have just driver maintainers listed here.
> >>
> >
> > Why? What's wrong with having the author of the bindings in the Cc list=
?
>
> If you want follow the ath12k development and review patches then you
> can join the ath12k list. I'm not fond of having too many maintainers,
> it's not really helping anything and just extra work to periodically
> cleanup the silent maintainers.
>
> I would ask the opposite question: why add you as the maintainer?
> There's not even a single ath12k patch from you, nor I haven't seen you
> doing any patch review or otherwise helping others related to ath12k.
> Don't get me wrong, I value the work you do with this important powerseq
> feature and hopefully we get it into the tree soon. But I don't see
> adding you as a maintainer at this point.
>

In addition to what Krzysztof already said about you seamingly
confusing the maintenance of the driver vs maintenance of the
device-tree bindings (IOW: structured hardware description) and in
response to your question: I don't see any functional change to any
dt-bindings neither from you nor from Jeff. Are you convinced you can
maintain and properly review any changes?

If so, I don't really care, I can drop myself and have less work.

Bartosz

> --
> https://patchwork.kernel.org/project/linux-wireless/list/
>
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpa=
tches

