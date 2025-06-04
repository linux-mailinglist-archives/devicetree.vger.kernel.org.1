Return-Path: <devicetree+bounces-182741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 247A3ACDE0C
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 14:34:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2AE13A34E7
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 12:33:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3583E28F929;
	Wed,  4 Jun 2025 12:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="o1cdBzAc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF6928FA85
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 12:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749040397; cv=none; b=c/uD2jFvCz5r4nCnrgWn4usXE4bu7XIL0EX/2eJAnzSenPauw80olxoIRNTl1zvxJWxSbHfZ13O6aBikUG3a/OVe+daFq36Fd61ALlskGCQm1pMVJqqXTuoQjooT998hpx99QKTNoNFZ32L3jp55ZzN9iFIVilF/e21t2GBLE58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749040397; c=relaxed/simple;
	bh=Iet6vLa5JxyIOQRwCEwcG2MBQCOuUEBjVBgpY9LE5gM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QRzBh3gm+yhwKDpcseOkcEJTlefwAOWQ8AeJsZNfxHBOUqZBItVJJ9zr3t2a7gWTok3+vqwAmAsi72jq2iq7h4ObZ+yK3QlN1Rwg+cfSQY5gUsqUv/19uDMEaOlr1qBWL9W6PryE4o2pqutaQ5KMLwZqk4Q6rb4jirwP3UNu6vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=o1cdBzAc; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-553245cad29so6537398e87.1
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 05:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1749040392; x=1749645192; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=40H+9TTXhZnTaMd2EZ6HBT4RNOeVTmMt2oQhHbe4EDQ=;
        b=o1cdBzAchTp1XJUOFxY3DjPTJ9A3yyk3qLnu/I+xFsRwze3jOsM9Y2EiJzikQg2YzC
         mQqeDPmGi+hZQaMNQLnZo6iNooqaJxeEKY/oewV4UNcw+nkxxY7TkCQuT8yC6iUyUj7J
         k+R/aDxjoMVRRtZ8+9WoeNZaZb2oaEnfD0UNOxqj2xau7yU1Ba9rm+Dq3Ns2sphCVvuN
         hxhFk3x1mT6iW39GdqjIWgSUZkkvNbF0wbw1GUhs/KKFLLOO146tvmJDFY26zo3vnCQk
         myCyjxbsHd9kOl8fKuNLvursOzdK/2RiC7yHTskhea91johqzszR66CYQAo+AJtT/tdF
         El1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749040392; x=1749645192;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=40H+9TTXhZnTaMd2EZ6HBT4RNOeVTmMt2oQhHbe4EDQ=;
        b=pJ9G0/NuOg3iQ6L0H0x9ntTOy3Vd5lMgHlXmesdmf7js00rxDgsp/9lku5q4djmMS1
         6LQohz33QbjnNCjNE3ulUBl0Vyb1ys80V8Q5UuPn3K6HvlLYYz3qhBHJ4DxCHjd3wtog
         hqJke2aKoczGhgcLZkwM2l5AWV1Dbo1Uu2d/UO0zyNO20fVIaCRU4lb0zMVXY8Cv+C5r
         KX56zb94OTSz33rQMuhMyPxcU7n5rGH87AoykXsUwAZ0dlbTNvILDJ9Utewh6oFwEhbe
         I+fahIFC/zSprL0a3IUR6lCmeeVc5aUFarYv5GlkWfmzTIgrNECzzeZu6On8EhiVV2aZ
         dH/g==
X-Forwarded-Encrypted: i=1; AJvYcCXAbI4xAEsNPvXw5orPxVXvfHnP8w060NmQTvvyUuqkyCdRCXwHs6XdpaF9A40KsAsV/SdZrXJifLNh@vger.kernel.org
X-Gm-Message-State: AOJu0YzBCG9v32Kbknc4SY7+LXGZBa3cvu4Wnmu01IQlu2RKYS7v2OHz
	WTUlFzidNKHXPCY6KkToh3esD1RAh4+rtJveF4Isf89hN1h7UI7ZGFibpvDiLpOhhCzArDixOna
	8EjEnB7Yutga3aZLt3uHEiyDFreJcsVmX166C2Fjp8Q==
X-Gm-Gg: ASbGncu7jWIEXzLELUxLvYLEkS/vZoyRg+fh94TR6kQEOI4FvG9FaIKm63k9QeXxC79
	t62Ti+QARyJPY/u0ckoGDv9SUNqDOJaqGGCb7BEG/UKs5gGd+A8+Qis3qw9ErELPL3ZG45W4Cel
	NfZtgHf5G+YE29uB0zhi0fQFiFAr1pQyqbYTmsUEqWbd0/ioE6T2wHNKFM1sbRNiFD
X-Google-Smtp-Source: AGHT+IFq6pmnr37tc/Op7F/Fey62yojVdrF7s5RRVTPIUfG0sHj3PJlgFBWhtvoFugeUVElYakwUgAd29fPyfsZ3DLg=
X-Received: by 2002:a05:6512:3e20:b0:553:252f:adf8 with SMTP id
 2adb3069b0e04-55356ae0e10mr766979e87.9.1749040391631; Wed, 04 Jun 2025
 05:33:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250530-apr_14_for_sending-v3-0-83d5744d997c@samsung.com>
 <CGME20250529222408eucas1p20f62cea4c9c64bb5dda6db1fd38fb333@eucas1p2.samsung.com>
 <20250530-apr_14_for_sending-v3-6-83d5744d997c@samsung.com>
 <20250603-gleaming-mammoth-of-kindness-538add@kuoka> <c49ae9f2-3c3c-4253-be85-8fe5bbb4b42e@samsung.com>
In-Reply-To: <c49ae9f2-3c3c-4253-be85-8fe5bbb4b42e@samsung.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 4 Jun 2025 14:33:00 +0200
X-Gm-Features: AX0GCFuJQtZdn8gggvUkoP6l-v_fzn9vXleutgIfablo4CyL1FqiXWHXgL-Yqpk
Message-ID: <CAMRc=Me75aGMic-GZuqCe+v=8MmmK8DCyfVZj=ELR4VuG-_qDQ@mail.gmail.com>
Subject: Re: [PATCH v3 6/8] riscv: dts: thead: Add GPU power sequencer node
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
	Fu Wei <wefu@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Frank Binns <frank.binns@imgtec.com>, 
	Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 3, 2025 at 8:45=E2=80=AFPM Michal Wilczynski
<m.wilczynski@samsung.com> wrote:
>
>
>
> On 6/3/25 15:22, Krzysztof Kozlowski wrote:
> > On Fri, May 30, 2025 at 12:23:53AM GMT, Michal Wilczynski wrote:
> >> Add the device tree node for the T-HEAD TH1520 GPU power sequencer
> >> (gpu_pwrseq) to the th1520.dtsi file.
> >>
> >> This node instantiates the thead,th1520-gpu-pwrseq driver, which
> >
> > Explain the hardware, not what drivers do.
> >
> >> is responsible for managing the GPU's power-on/off sequence. The node
> >> specifies the gpu-clkgen reset, which is one of the resources
> >> controlled by this sequencer.
> >>
> >> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> >> ---
> >>  arch/riscv/boot/dts/thead/th1520.dtsi | 6 ++++++
> >>  1 file changed, 6 insertions(+)
> >>
> >> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/d=
ts/thead/th1520.dtsi
> >> index bdbb1b985b0b76cf669a9bf40c6ec37258329056..6170eec79e919b606a2046=
ac8f52db07e47ef441 100644
> >> --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> >> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> >> @@ -238,6 +238,12 @@ aon: aon {
> >>              #power-domain-cells =3D <1>;
> >>      };
> >>
> >> +    gpu_pwrseq: pwrseq {
> >
> > Node names should be generic. See also an explanation and list of
> > examples (not exhaustive) in DT specification:
> > https://protect2.fireeye.com/v1/url?k=3Da53ea5d3-c4434f50-a53f2e9c-74fe=
48600158-c81092475ef416b3&q=3D1&e=3Dd333d06b-0b06-493e-a358-e29ca542dfe7&u=
=3Dhttps%3A%2F%2Fdevicetree-specification.readthedocs.io%2Fen%2Flatest%2Fch=
apter2-devicetree-basics.html%23generic-names-recommendation
> >
> >> +            compatible =3D "thead,th1520-gpu-pwrseq";
> >> +            resets =3D <&rst TH1520_RESET_ID_GPU_CLKGEN>;
> >> +            reset-names =3D "gpu-clkgen";
> >
> > What is the point of pwrseq if there is no consumer/user of it? Looks
> > like simple placeholder and anyway maybe the future consumer should jus=
t
> > use reset directly.
>
> Yeah I think you're right, I wanted to explore adding the pwrseq
> provider in separate node per discussion in v2 [1]. But for the v4 I
> think I'll revert to the v2 way of handling this reset [2].
>
> [1] - https://lore.kernel.org/all/CAPDyKFpi6_CD++a9sbGBvJCuBSQS6YcpNttkRQ=
hQMTWy1yyrRg@mail.gmail.com/
> [2] - https://lore.kernel.org/all/20250414-apr_14_for_sending-v2-2-70c5af=
2af96c@samsung.com/
>

I think you still need to connect the GPU node with its pwrseq
provider (which will be the aon node in this case). But you already
have this link - the aon power domain. You can parse it in the pwrseq
match callback to determine which GPU is powered by which AON module.

Bart

