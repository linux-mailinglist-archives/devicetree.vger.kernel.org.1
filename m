Return-Path: <devicetree+bounces-100440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F4596D9E8
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 15:13:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9195B285197
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 13:13:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4F1E19CCE7;
	Thu,  5 Sep 2024 13:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ksjVNwCk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D5819CC02
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 13:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725541985; cv=none; b=gOdU5+q6bUHtrsvcciKLiGXpOYLjUnL5Zx1KKFwIp3GWRGxs/qZ2KyVBO1KOOtn5BLJooE0VhtbZQV8PRj886t+f7VT3Emrq4/IjJVAm8TDs0gdDQkE6r24OE8jucTMqK0yHsHWJeAgRBU4ScifqKqAFCgub2qIHo3YqFOwwGcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725541985; c=relaxed/simple;
	bh=h+8Hj5/BortzLMQ+9TV7xX2K37XjQFK+vsFCQRMXKNs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p20TM9eH7sZUAau1gscYyMSTWed3eTbmQ62A7COKomUzAYZQsv8fBhAmbN381H5Dy+Mhasp4Qe+eCTbfIi83Z08CLBpiFI1hpXaO4ZWT5wtwy5AtKG6g0uCWsbpKGTRfhREiCznmtonPx+4THYvZE4HGulXQD9HwbXWu9yT9vBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ksjVNwCk; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5353cd18c20so895318e87.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 06:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725541982; x=1726146782; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h+8Hj5/BortzLMQ+9TV7xX2K37XjQFK+vsFCQRMXKNs=;
        b=ksjVNwCk72mVLyt1ZTygVJeKccjH5swn1QfdYxteyu+Gl0o5sCm055vvcVgV+YWNs7
         l/TG9T9QD5m+jsrjM1wLKz6dXIWXSwArGDTqnjIourTv4QDnUw9l1Mgp54XNTRoHNbJw
         AfbdlX4E6pTd6jrjva6Gx9iC5zMI4lWfeQ7M+f+xSYgB9MTzU1FjPNZ6TCpnR2ZpfNM6
         gn0Unh+GL/ELlhzwVNkIbJOGPDUlLUELgAaGL2sp8EuWLtNe68xz45iPATJ16AsBAfEg
         LZ2HzEqY+7w2BsR/0FB9ZSe6gz2mVmKWy/5fTfU659P5C1DVk6yruk1UKKD8oaSt2VhS
         nnjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725541982; x=1726146782;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h+8Hj5/BortzLMQ+9TV7xX2K37XjQFK+vsFCQRMXKNs=;
        b=iT0xn4JFsuy6cmt9n81xcclCPdYwzX93PlXkkLlfH2CbtgZa1qOZX/9rmS6HI+NRTT
         uvQe0GtBkQz/zQCKHTd+snaMn7gL/hyuc55DTYXQ2SqwCdUTpQ2rcz1ojbmuj3t8345T
         YU7xO8oDmYfhJcDR2YzKs5jSLIy4RZ9p5QItJcUOswP78tXAdR/T28HqmT2fg1MmnkBa
         xZb7eRScOkCz88riEb/tApjHfGyKP04PNHz0e1wU1LHI6jZ22j49CroSfM6E1sMdY3qP
         tQeATGszaroK7ZNAPBA6G1h04YGrQag0FZlRRo6lHWXeVarm6mPJG20JVCMA8IR4YPj2
         bNpQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTWad8JEVmHbsfb/qAavjoJTr0yqOOvsuLcdjuFCcjrR+sDRYIkFz5EEp9veukFSl2S0Gu1eojiIGc@vger.kernel.org
X-Gm-Message-State: AOJu0YxfNZCj/bQVagNl7gGpwRNitnnJmu5PO/stEvyJ6gV1fek7GJ8L
	Gl00mZXZflAnL5hUgJMCmkL00fvAlOqdbow8N/rf/9QbJ0mUTwQ1qQYMgj3+SPAfE8ZKqiu/agj
	lcgC5OE3WIM2LUmeXjNwG8KIPR1uTquiAaCtSYQ==
X-Google-Smtp-Source: AGHT+IF8UjyRnNwMIQwUFBStNL5Otb4CgHfjl+otbh8Bbxjlkxb2dHENFDG1TqcbNMU59Ppougnux5HlFis6uf8hRh4=
X-Received: by 2002:a05:6512:3055:b0:530:e323:b1ca with SMTP id
 2adb3069b0e04-53565f20df3mr4744502e87.25.1725541981889; Thu, 05 Sep 2024
 06:13:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240902-th1520-pinctrl-v1-0-639bf83ef50a@tenstorrent.com> <20240902-th1520-pinctrl-v1-2-639bf83ef50a@tenstorrent.com>
In-Reply-To: <20240902-th1520-pinctrl-v1-2-639bf83ef50a@tenstorrent.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 5 Sep 2024 15:12:50 +0200
Message-ID: <CACRpkdbZtMcfv8anZZywC_5LoF-8X2dPW9ft489smrw9=hpcSQ@mail.gmail.com>
Subject: Re: [PATCH 2/8] pinctrl: Add driver for the T-Head TH1520 SoC
To: Drew Fustini <dfustini@tenstorrent.com>
Cc: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Drew,

thanks for your patch!

On Tue, Sep 3, 2024 at 6:08=E2=80=AFAM Drew Fustini <dfustini@tenstorrent.c=
om> wrote:

> From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
>
> Add pinctrl driver for the T-Head TH1520 RISC-V SoC.
>
> Tested-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> [dfustini: check unit address to identify the pin controller instance]
> Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>

Overall the patch is in merge quality state, I just want the DT
people to tell how we are to handle the groups. I personally
would prefer a custom property over the unit name but let's
see what they say.

Yours,
Linus Walleij

