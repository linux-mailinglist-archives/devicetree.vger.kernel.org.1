Return-Path: <devicetree+bounces-34240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8720583925F
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 16:15:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3E2931F24728
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 15:15:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55C085FDCD;
	Tue, 23 Jan 2024 15:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="NzlJcIWX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8555FBA4
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 15:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706022908; cv=none; b=jJ4cQkZC1rm7Nz2OIEZpfoiN1aC1ynBB+3xNrcLoNhZqJjB5cZ6/OYrDv/2RE77/emXW533C1EuKipwgkJoLsW14zCBOdjfU98H9xqgLBqVv2KBdHMqZ80iUyrignR3KsPpxGfjDH1NcAQ40X4e3xSXpgbE9zznfEW2d4WctFno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706022908; c=relaxed/simple;
	bh=21LN+N2u6KwgSCGz5xda7xdM9UVxZyeOpxSHkNhYW5I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pyDX2xSxJdE7ZF/0hBrGxlgNBbU84YF70ZUd6t0M5auyu/A72sB13xdKWzlcR0PZo+sgCGvN01XJ5aZjMfIY3+0spkvo7gDCN4Uzsg27tqH9k+4uWbF5fOwxMx5w9g6Jpe9wCHrNjoTdeKHiQv4ysM5P1zVU/uAQVhs7F5SknUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=NzlJcIWX; arc=none smtp.client-ip=209.85.217.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-46af2a60d70so388764137.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 07:15:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1706022905; x=1706627705; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=21LN+N2u6KwgSCGz5xda7xdM9UVxZyeOpxSHkNhYW5I=;
        b=NzlJcIWXFzEbJEnvSeMg0tjZgBZbVOq8rl4a6RAcEasejN/fuUWCev8zWxylBJiT9Z
         2iiImD8bM1gbWbP1NMeWV4K9atiYfb2ICfHzEzyjyAyOhUfmOnmMCx/gy6xM2WKg/xc0
         QGAh03JD5HqD4AAISjcm56t3PAB2K62/a3OuaV51y4mCmUVz7rWriq1QcBCKqn6PygZV
         49VdSRrDxS4SqcWACFIOETEb2yd7P1lSQXJfPu2m8vlYBtYJisM9dpM5plwQI5pwbsam
         fJ2O/0VVkdqLtHm4aCvPmlAqqNnNj0VW8yD7HVPea0CgfiCCgy+bDN2tldZG5ZCymNgx
         vW8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706022905; x=1706627705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=21LN+N2u6KwgSCGz5xda7xdM9UVxZyeOpxSHkNhYW5I=;
        b=LVp8AkKLi7RXEA/WeuFdVemKQDA5BRgNh4xdXafMQnlsK9XfnXIhYvmhSfc9dS7CBt
         5e8c2HbZg5/YGg0Gi7dMB/JvVu80nl5sWRhlNr1D118RfmiYV1ML61gF5oGkebf/JkZ6
         8rdu58956pcLEritbfEDFXPHaCDd43uRiht/UdVaVywQ7vMpaXXwIpQZzjOMgOn6/4ev
         kCPUQtpiDH1OsVkr8EfOHhLUvH3an0kTjHtL+2kbd4lyLjbHQEuK8XNCGmm22piISWTw
         tCEWIeqJqs3IyVWXXne1O2oncJblkAK14/xL1VrnTRl+jxqD2sM3HGjzq0s1GDSf6ZMJ
         O/HA==
X-Gm-Message-State: AOJu0YwAXJgH1MVDrEqlGcZ/Hi3y+QNI9PnsQFbw6MM2Ic0/5behB22x
	PnGWbr6QH0XIAyoCMUTh5eK+1uj+61zhKAYAZxwZSQWYdHoG4xOwJSGreMPVKzVWsCozNGDCO8i
	xEdFcHVIlgRGBmLA+M2cJ8qegcndXiuu8EQ/isg==
X-Google-Smtp-Source: AGHT+IEg2EldcpmZFoE+SBYd3xS6BPJMRKB34is6XcO6kElvYRrfZ4jjst2C6VcGlJosNfUyVM/DsnbXPVkecNf2psM=
X-Received: by 2002:a67:ebcf:0:b0:468:1350:4084 with SMTP id
 y15-20020a67ebcf000000b0046813504084mr3604802vso.25.1706022904969; Tue, 23
 Jan 2024 07:15:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240122182158.69183-1-brgl@bgdev.pl> <98925264-badb-4954-b542-9287a0c7d184@linaro.org>
 <CAMRc=Mc+GNoi57eTQg71DXkQKjdaoAmCpB=h2ndEpGnmdhVV-Q@mail.gmail.com> <08903b30-b321-4f13-b8a7-ddd31a94ca5e@linaro.org>
In-Reply-To: <08903b30-b321-4f13-b8a7-ddd31a94ca5e@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 23 Jan 2024 16:14:53 +0100
Message-ID: <CAMRc=Me_8o=tNsZ7JzcK=pJDNb0nYPLLGufnM2ochqc6XKc7Tg@mail.gmail.com>
Subject: Re: [RFC] arm64: dts: qcom: qrb5165-rb5: model the PMU of the QCA6391
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Alex Elder <elder@linaro.org>, Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 23, 2024 at 4:09=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 23/01/2024 11:04, Bartosz Golaszewski wrote:
> > On Tue, Jan 23, 2024 at 9:30=E2=80=AFAM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 22/01/2024 19:21, Bartosz Golaszewski wrote:
> >>> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >>>
> >>> I'm limiting the audience of this compared to the PCI power sequencin=
g
> >>> series as I wanted to run the DT part by the maintainers before I com=
mit
> >>> to a doomed effort.
> >>>
> >>> Here is the DT representation of the QCA6390's PMU with its inputs an=
d
> >>> outputs. If I were to implement the pwrseq framework that would be ab=
le
> >>> to assign the relevant pwrseq data to the consumer based on the actua=
l
> >>> regulators and not abstract bt-pwrseq or wlan-pwrseq properties - wou=
ld
> >>> that fly with you?
> >>>
> >>> We'd need to deprecate the existing BT bindings but unfortunately the=
y
> >>> are already described as consuming the host PMIC regulators in bindin=
gs.
> >>>
> >>> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >>
> >> Please provide lore link to the binding.
> >>
> >> Best regards,
> >> Krzysztof
> >>
> >
> > This is the one:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
>
> This does not describe your PMU node. Maybe lack of the binding was
> intentional? In such case I missed it from commit msg...
>

Ah, I thought you were asking about the existing bluetooth binding.
Yes, I intentionally didn't include any new bindings as my question
is: does this device-tree source change make sense? If so, then I'll
include it in my series and build the bindings and C code around it.

Bartosz

