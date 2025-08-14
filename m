Return-Path: <devicetree+bounces-204612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1D9B260B1
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 11:23:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 16BE87A0476
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 09:22:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43D612BE7D7;
	Thu, 14 Aug 2025 09:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="i3rnlNuF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F24125DD0C
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755163409; cv=none; b=g2VHwOXTs+i06ay/5yrae1rQUDwnWwghwmGJfxlQnrGSK1IZ94XxnvhOsssA7bT5DuSuGd/9Gzgf/bKO5TakOqbgknr3T2US/yhv9QR2YhgSAGmt6Rw0A7YudONX53GDBggE120qe036hG24mOqAhpdpTtUNGrQdFo1sZV7l0ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755163409; c=relaxed/simple;
	bh=1p31ORQ0LGAdIkX4tlRR4sW7uMHgmXUc2XnTrS78Yfs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RSebDKAfxYxOQEfedZO8Sncn96bk0YICYnk6Ymue5qxQ2iWtrv37q1vu6uKSFUU7XHEIb62JmLdw0okkwvpyUeeTb5Q+XsnVBKk9lFwRp63KpnjUkrI/Dqsu3/XV2vXTfYGXl5xRpiY0SLNIzxMli/CSYtYmQhd/GCagjQxUdqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=i3rnlNuF; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-55ce5268cb8so664010e87.2
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 02:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1755163406; x=1755768206; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jpEu3YjSYoh7r4VO0s5m1PdSv0aUP+n6hdz3pBdusjA=;
        b=i3rnlNuFoF5iWgIiZYlsHJPEzg+eLsWgp5Q4XZ4Ahw2EuaIca1VwE44t5Pg86lzDq6
         C2w40v/WB5sQfExBCHYih1xeuRR3Q1eLtCCwMzHkggAJsLiGzwfkAFwzJ7ln96WBIOj4
         CCEZoq8QdJlzbbPq8xnoocC01cyVrlLZ60jJI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755163406; x=1755768206;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jpEu3YjSYoh7r4VO0s5m1PdSv0aUP+n6hdz3pBdusjA=;
        b=Nej6PQ/4YvChDDcXgAEc2rFfrYt14Zgs8VNDbIBJc5c4NbV5/N8U+CHJwZYtb31NHM
         4Y6Zu5f7cHqDawvhyWgGmZU5J+8ij+bfSsG5R/9AMTJRCG1CaZXVYKDGwHCCb5sMjTny
         2VYaVMRVOIP4jduXQuOK3njCmRFilJWW5U/DI5JPLYTBnnuq8OUf5H8qSCOOFI8CExGo
         yPZUr0q13tEd96DR0Mcs0SfkQMBmJAFAhFxra5GSa2zj9aFV9ItvgA61bhQzChM3Du8S
         o4zxj3eD2dtzAfDOScq5alIsj+Lms+S+ht74OORW0tecylyc17bkn7R84k50+cDI52IC
         gmtA==
X-Forwarded-Encrypted: i=1; AJvYcCXBgzK6qNp+TJVQx/I1cflwEKAbbs8iTBdVSLoMb0QsOH097qQsrmhsuvkgMh6OTkllWjyr9UhWPUBP@vger.kernel.org
X-Gm-Message-State: AOJu0YyAqfvsGN/RkWsU81wEUoKArP8/GdD0QwFkjZdmwgDGiFFDsUxu
	uEKRw0/sX44IIoYqCDgXZYYeDDv4cDiV6iNuSD5BjxnlliWoUzg2XM0z4pR+GWVA5BpdTTGV5kR
	lwAuPxZr2j4E0kVOqTEYT9rtA4lncqekg57i3Xt/zy03OhWZiR5A=
X-Gm-Gg: ASbGncvnHfSA+F8EnQboBxYZQIHA1SafNMBbXUtVvW3pDjj2f2ukJgPRxH+JDbhAEGr
	aMpN+iktQ4TjU3nddH7gd+L0+UvpGafJgNUt4rgAUSII9/4CwXPb6lbmZbZ6TQxzAKq9YP3Ew80
	q96BKkizO81dTRlMhOxtTNIgAxA/aF4fqni+HRwY6hsd03PZjC9VbymFw4DuuCeEyME889S/XSW
	LoBds2Mg6GfWgP3clmzl13OCi3J++nS3fs=
X-Google-Smtp-Source: AGHT+IGpKciwODEZc1IhhzYqeOLMaszqjmQ++VhTEo22Iom9UGzpsRrcz90fbohkGI5byeGYbxmvyFlt9Y3WLL1B2b0=
X-Received: by 2002:a05:6512:6d3:b0:55b:8f02:c9e1 with SMTP id
 2adb3069b0e04-55ce50739efmr676632e87.27.1755163405566; Thu, 14 Aug 2025
 02:23:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250812085902.3309160-1-wenst@chromium.org> <CAC=S1nhG_ExACJRpJoqmO7nn+P24uiaha21SFEyR3aoKL-Pjgw@mail.gmail.com>
In-Reply-To: <CAC=S1nhG_ExACJRpJoqmO7nn+P24uiaha21SFEyR3aoKL-Pjgw@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 14 Aug 2025 17:23:14 +0800
X-Gm-Features: Ac12FXxQGyeanDOqLQ_pP2in2SjWgkqtc8UcLGeK7yro90D1xizR-yjtyHCuvWc
Message-ID: <CAGXv+5FF5ZfOVP1qQh7s0sw9z4SXY6Rh8kS+8HcTxNY1gQ_kJg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8188-geralt: Enable first SCP core
To: Fei Shao <fshao@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 13, 2025 at 6:03=E2=80=AFPM Fei Shao <fshao@chromium.org> wrote=
:
>
> On Tue, Aug 12, 2025 at 8:39=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org>=
 wrote:
> >
> > The first SCP core is used to drive the video decoder and encoders.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> >  arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi b/arch/arm=
64/boot/dts/mediatek/mt8188-geralt.dtsi
> > index c5254ae0bb99..10764786bc21 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
> > @@ -164,6 +164,12 @@ reserved_memory: reserved-memory {
> >                 #size-cells =3D <2>;
> >                 ranges;
> >
> > +               scp_mem_reserved: memory@50000000 {
> > +                       compatible =3D "shared-dma-pool";
> > +                       reg =3D <0 0x50000000 0 0x800000>;
> > +                       no-map;
> > +               };
> > +
> >                 apu_mem: memory@55000000 {
> >                         compatible =3D "shared-dma-pool";
> >                         reg =3D <0 0x55000000 0 0x1400000>;
> > @@ -1146,6 +1152,16 @@ &postmask0_out {
> >         remote-endpoint =3D <&dither0_in>;
> >  };
> >
> > +&scp_cluster {
> > +       status =3D "okay";
> > +};
> > +
> > +&scp_c0 {
> > +       firmware-name =3D "mediatek/mt8188/scp.img";
> > +       memory-region =3D <&scp_mem_reserved>;
>
> It looks like a pinctrl for SCP_VREQ_VAO (GPIO 98) is missing?
> Datasheet says it's for "SCP to PMIC normal voltage request", and
> MT8195 and MT8192 also have that configured.

You are right. Will send v2.

> Regards,
> Fei
>
> > +       status =3D "okay";
> > +};
> > +
> >  &sound {
> >         pinctrl-names =3D "aud_etdm_hp_on", "aud_etdm_hp_off",
> >                         "aud_etdm_spk_on", "aud_etdm_spk_off",
> > --
> > 2.51.0.rc0.215.g125493bb4a-goog
> >
> >

