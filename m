Return-Path: <devicetree+bounces-70516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2954C8D397E
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 16:39:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD2DE1F223C5
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 14:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20934159901;
	Wed, 29 May 2024 14:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="BaIT6r0n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73EFC159571
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 14:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716993583; cv=none; b=P4iWde6zSsI/Qnxjr6tz5VN7O5JHFbLzfyNZeEZ34CimGa9aJd72sncHX9ytkAhdLVZsiC8IKINsVyHaX26PtatfEyu0B6JDnxjVdYiGJFyIvItFxffrmyNHKB5J3h0QvCRgC22X3a5FUq7XIIq6/1b0pHghf41NQnjmTh6JAUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716993583; c=relaxed/simple;
	bh=CYWIPjtAFfyJHn7MNTSA22LWGuuvpTO1d03GME6cg9o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RjNWCbvdmvxs9iV5x/xDsTlv+tWM7Duu/M2xArnX0X7uQQ7ME9g9y0qTsZpo56okFkt0ru3HlHjrDOIU1G5hE7g8aeJqPXqaxHgYaJ9m/EJRshu4YaTHNIYj4+0RbkfSsy/UBt8hW2C0IQP/lUuty0zMFTw1N40q2EO68B0mdN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=BaIT6r0n; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2e72224c395so20096951fa.3
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 07:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1716993579; x=1717598379; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wUUeqx06PD9RnDkd7RHtSPB5pC0CFZUjyvWsXQJbRlo=;
        b=BaIT6r0nyxRajfpn612La/kkuWYgdNN5ZzORraJmZNTIO8OD8eOBMokq1BJkpBNRM0
         cY1ezjaWI8qoqw+z7VMumumGIbJvPU+0rNAFRbkxKtH1PXij0VC53L698++1aoLgchcL
         nYnGxkB73MegrKt3XO5dqAVUfBD8vfVGAmy4AkpjvbebkOO1l5gj+b+hyy3t//iQEaB+
         TOVT8+oIWV0CcV2xi1CKOAgFlrB+mI9pj8kQAUT2G01xdRHv0sKPyV9FTr6TUKxBjD1I
         TpNOj1eFWtBlUh+k0TO671pocn7MnMcIqoVU9TfNzEJbS5KP5VSyvfRhnIXWzz5dhI7Z
         PZew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716993579; x=1717598379;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wUUeqx06PD9RnDkd7RHtSPB5pC0CFZUjyvWsXQJbRlo=;
        b=wbc+z7p/DgBYFGdg3NNHqg6qmBh12td1mjz06atzOLjPuUsxI/qgP5wSi4N+5N4ZwM
         lMJADbFWwZds5EeeU9+4KfsY1J6DrsQywyAedJkNuft2s17l20qLfQpppMr8qEx4wSHe
         xxo1InENeHz+pYm46v74KLuRpBrveIjlrRrl/SWllTPhZQMwqFsasBifOvpmEprb3Ckm
         MkL6ho+qTY61vWInPq/PKMrgk7dhQVfhy961AA2jb4iFwUQn21IJCh+SkXC7ifyNXGtC
         0HlvxgH7HYBwW8sfpjQ1EUqC2n5fJZK6d9JBofShZ0gg5Cwji7uEgAx48YcFsO8GgZfL
         23nA==
X-Forwarded-Encrypted: i=1; AJvYcCWpd+6k/uz+1eSp/9FG+RV541LPl7QoBBFLWVrfTa5zSqdSIO7B1SwI0wWWl2gkRJG1KKp90+/0vgvUQNv0Xjjm3JmXeGSGFBo9Wg==
X-Gm-Message-State: AOJu0Yyz0bWNopbNs0kh6Ler1X0rDk/UVDDaNophKHwA0wW0YsR+OMJU
	x3TwwwVRNlTt2Vwj3BDkAe47W7Q4GYecfFddHVNOuY/tTaYYmHBbMabZNItDKveJpMpqsQQnIXU
	EEtsrr6rnIQAhcvMWCsYF3z6AkdC1uqeevho84A==
X-Google-Smtp-Source: AGHT+IEjlZVDnQ24lkUWp0Sdko93n3669vjAybgG59+MWyamnsin29/ulOH8X8tip6Fh2q5pwCTpEwMYKKFP17ZfiIA=
X-Received: by 2002:a2e:9599:0:b0:2e9:5e2d:2e8c with SMTP id
 38308e7fff4ca-2e95e2d33acmr91830111fa.41.1716993579444; Wed, 29 May 2024
 07:39:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240527-shm-bridge-v10-0-ce7afaa58d3a@linaro.org>
 <20240527-shm-bridge-v10-15-ce7afaa58d3a@linaro.org> <8f3f1e88-426d-4254-a31c-afcb88fc08f3@linaro.org>
In-Reply-To: <8f3f1e88-426d-4254-a31c-afcb88fc08f3@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 29 May 2024 16:39:28 +0200
Message-ID: <CAMRc=MdxP5MWPhbq6u8WHRpm04F0iijeTpG0q3D9q52e7xfcsw@mail.gmail.com>
Subject: Re: [PATCH v10 15/15] arm64: dts: qcom: sa8775p: add a dedicated
 memory carveout for TZ
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Robert Marko <robimarko@gmail.com>, Das Srinagesh <quic_gurus@quicinc.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Maximilian Luz <luzmaximilian@gmail.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
	Elliot Berman <quic_eberman@quicinc.com>, Alex Elder <elder@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 29, 2024 at 4:26=E2=80=AFPM Konrad Dybcio <konrad.dybcio@linaro=
.org> wrote:
>
> On 27.05.2024 2:55 PM, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Add a 20MB reserved memory region for use by SCM calls.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dt=
s/qcom/sa8775p.dtsi
> > index 31de73594839..c183527452d7 100644
> > --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> > @@ -208,6 +208,7 @@ core3 {
> >       firmware {
> >               scm {
> >                       compatible =3D "qcom,scm-sa8775p", "qcom,scm";
> > +                     memory-region =3D <&tz_ffi_mem>;
> >               };
> >       };
> >
> > @@ -418,6 +419,12 @@ cdt_data_backup_mem: cdt-data-backup@91ba0000 {
> >                       no-map;
> >               };
> >
> > +             tz_ffi_mem: tz-ffi@91c00000 {
> > +                     compatible =3D "shared-dma-pool";
> > +                     reg =3D <0x0 0x91c00000 0x0 0x1400000>;
>
> How does that size relate to
>
> +       pool_config.max_size =3D SZ_256K;
>
> in patch 3?
>
> Konrad

Short answer: it doesn't.

Slightly less short answer: this is the limit of *this* specific TZMem
pool which in turn gets its memory from the shared DMA pool. We can
have multiple TZMem pools and they all share this DMA pool.

Bartosz

