Return-Path: <devicetree+bounces-57796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EC589ED95
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 10:28:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB34D1F22D43
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 08:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE50313D8A6;
	Wed, 10 Apr 2024 08:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CQd2jjGP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3AF813D88D
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 08:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712737714; cv=none; b=rjdZyblifvldjzsJXxUKnh2BSWUFHvYM4yYaZMZW+s/c1TWB+p0FzLUU3efDXc2yMHPExp09Nnet7p2WnrwME6gSKswmdYRpiH062zBe1oBdiZLFP1vAOkmSfdlhdRVdK3fjE8zf0bBn7mkxfEM1XFq0/oxTv1aDK5ZJdPMp6iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712737714; c=relaxed/simple;
	bh=RdoPGfTRxg4TF3BNotLs/J4hn1wlJbrn+0z/i3iKM08=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T23RDVuXN7NeJfmy0ylmAZ21S9E0hULEHMWB0Y1NQtjVAqTX7WFmIW1ZifRR2won2PD/wyMVwWtNjeE+zHpVtRRnxib8F28aJKlic/1pCNmraiJ4RZZ2oEa6FNL+WpEjDDaL/VflVeo64jLpXycQlj9ho7x8n0UrpLkClSbNwi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CQd2jjGP; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-55a179f5fa1so7294546a12.0
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 01:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1712737711; x=1713342511; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gW38Gh9I29r84lVoZWwktFq4DHYBoJff/etd3Fj/TJA=;
        b=CQd2jjGPQ+mNjGzTALoRhUoqs0P5Ca+BCxoyF0zfUWDYR/cBKSQjj4MGX+oqjX96VS
         l+fsgKV88VBrrXp907hDNQwJ1WHXgm1ktZKwXWNLUrrLmO5lGVZxUHRNzcNSvEujWL3A
         4I1hxAg6zMAVQPYd6XtiCg7ntOrtrmYqvNXD8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712737711; x=1713342511;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gW38Gh9I29r84lVoZWwktFq4DHYBoJff/etd3Fj/TJA=;
        b=oAb2DghBkhLR0rXU0NWc3Q82UgO3AqW9d8DphAOqbvqonjM9+YaFSViHjVGPjN6HRk
         XtZL5ix5i1cmkQOiexbc12l/1UZLWRKkU8TpWuLLjaRSgxUuz0O3ShfhEoZWYtIVQz7r
         zY49Gii9pb7jFmXDx9f7V1uW91TdF12ZiGKhuD01NyrJxkmR4EffVWCTs/gn5zHn4lJk
         gc9VtPGdrd9Ot19KKF0fzeoUvdg1cGJ4YHpYJ4RXvhwKapHDAXKLf9TXFHv4dzVMQtx5
         g9nXNiNgqT0iI4ao4sDTdhMsVbOv3Pnck69o8vciDPguAICnHsnxt/yibcZ57WG3rR6p
         RM4A==
X-Forwarded-Encrypted: i=1; AJvYcCXr+Gnz1cQoA137iu+5A+LBBIiL3/YohYCPZSU2ADzl7fhvWjOnjK3k6mTWS2eRAGjRLrrSg/YEq4jkRTNOVK1KJu6UXexxnyQMMg==
X-Gm-Message-State: AOJu0Ywo/Epcl3gqrdREhP3495tJLpLyB4phl1DPl0Y427lafyvcK+Cy
	KcEyhriZ8yf9kRM0u+glEnpnY9EEQ+x3cwD6MX4F6/7SU5ZWyAV+ihsqE4bH0907ye1WT/T/Uzv
	Acg==
X-Google-Smtp-Source: AGHT+IHPG4HL/xcaAsjwIJiRTopSWGVKBEZNVL2rSlhJcmcgX0B8g8bSNqvhlD4XHYA70WzOKg19YA==
X-Received: by 2002:a17:907:a07:b0:a51:fef6:b7d6 with SMTP id bb7-20020a1709070a0700b00a51fef6b7d6mr1605662ejc.19.1712737710930;
        Wed, 10 Apr 2024 01:28:30 -0700 (PDT)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com. [209.85.218.41])
        by smtp.gmail.com with ESMTPSA id sa10-20020a1709076d0a00b00a4e6582edf8sm6616083ejc.102.2024.04.10.01.28.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 01:28:30 -0700 (PDT)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a519ef3054bso607749466b.1
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 01:28:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVhd5y5j+teF9z17VEkKj+k98mfK4eFgfrLgtllmMWPWnAyI/l/YBAB4BOmZOwktaaQoPVppmyVeJLOSuSD9bFrzeimcYyPABo8UQ==
X-Received: by 2002:a17:907:a41:b0:a51:dd18:bd21 with SMTP id
 be1-20020a1709070a4100b00a51dd18bd21mr1452940ejc.16.1712737710124; Wed, 10
 Apr 2024 01:28:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240410-upstream-torvalds-master-v1-1-852e903f0cec@chromium.org> <c3d05b3e-f784-4606-9634-52dc6feee318@collabora.com>
In-Reply-To: <c3d05b3e-f784-4606-9634-52dc6feee318@collabora.com>
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Wed, 10 Apr 2024 16:27:53 +0800
X-Gmail-Original-Message-ID: <CAHc4DN+N7oLNiiVL-T+T0dEr2nipph5f2q5zu37NowPQC+=mkw@mail.gmail.com>
Message-ID: <CAHc4DN+N7oLNiiVL-T+T0dEr2nipph5f2q5zu37NowPQC+=mkw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8192: Add missing trip point in
 thermal zone
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Hsin-Te Yuan <yuanhsinte@chromium.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	=?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>, 
	=?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>, 
	Balsam CHIHI <bchihi@baylibre.com>, Alexandre Mergnat <amergnat@baylibre.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Angelo,

According to the document
(https://docs.kernel.org/driver-api/thermal/power_allocator.html),
there should be two passive trip points. It seems that the switch-on
temperature will be 0 if we only have one trip point, which hurts
performance. I'll send v2 to explain this more clearly.

Regards,
Hsin-Te


On Wed, Apr 10, 2024 at 3:43=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 10/04/24 08:20, Hsin-Te Yuan ha scritto:
> > Add the missing passive trip point which is expected by kernel.
> >
> > Fixes: c7a728051f4e ("arm64: dts: mediatek: mt8192: Add thermal nodes a=
nd thermal zones")
> > Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
>
> Sorry, I don't understand what you're trying to solve here.
>
> All of the thermal zones in mt8192.dtsi already do have a passive trip po=
int
> which is also used in cooling-maps.
>
> Can you please describe the issue?
>
> Thanks,
> Angelo
>
> > ---
> >   arch/arm64/boot/dts/mediatek/mt8192.dtsi | 40 +++++++++++++++++++++++=
+++++++++
> >   1 file changed, 40 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8192.dtsi b/arch/arm64/boot=
/dts/mediatek/mt8192.dtsi
> > index 05e401670bced..08d8bccc84669 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8192.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
> > @@ -1959,6 +1959,11 @@ cpu0-thermal {
> >                       thermal-sensors =3D <&lvts_mcu MT8192_MCU_LITTLE_=
CPU0>;
> >
> >                       trips {
> > +                             cpu0_thres: trip-point {
> > +                                     temperature =3D <68000>;
> > +                                     hysteresis =3D <2000>;
> > +                                     type =3D "passive";
> > +                             };
> >                               cpu0_alert: trip-alert {
> >                                       temperature =3D <85000>;
> >                                       hysteresis =3D <2000>;
> > @@ -1989,6 +1994,11 @@ cpu1-thermal {
> >                       thermal-sensors =3D <&lvts_mcu MT8192_MCU_LITTLE_=
CPU1>;
> >
> >                       trips {
> > +                             cpu1_thres: trip-point {
> > +                                     temperature =3D <68000>;
> > +                                     hysteresis =3D <2000>;
> > +                                     type =3D "passive";
> > +                             };
> >                               cpu1_alert: trip-alert {
> >                                       temperature =3D <85000>;
> >                                       hysteresis =3D <2000>;
> > @@ -2019,6 +2029,11 @@ cpu2-thermal {
> >                       thermal-sensors =3D <&lvts_mcu MT8192_MCU_LITTLE_=
CPU2>;
> >
> >                       trips {
> > +                             cpu2_thres: trip-point {
> > +                                     temperature =3D <68000>;
> > +                                     hysteresis =3D <2000>;
> > +                                     type =3D "passive";
> > +                             };
> >                               cpu2_alert: trip-alert {
> >                                       temperature =3D <85000>;
> >                                       hysteresis =3D <2000>;
> > @@ -2049,6 +2064,11 @@ cpu3-thermal {
> >                       thermal-sensors =3D <&lvts_mcu MT8192_MCU_LITTLE_=
CPU3>;
> >
> >                       trips {
> > +                             cpu3_thres: trip-point {
> > +                                     temperature =3D <68000>;
> > +                                     hysteresis =3D <2000>;
> > +                                     type =3D "passive";
> > +                             };
> >                               cpu3_alert: trip-alert {
> >                                       temperature =3D <85000>;
> >                                       hysteresis =3D <2000>;
> > @@ -2079,6 +2099,11 @@ cpu4-thermal {
> >                       thermal-sensors =3D <&lvts_mcu MT8192_MCU_BIG_CPU=
0>;
> >
> >                       trips {
> > +                             cpu4_thres: trip-point {
> > +                                     temperature =3D <68000>;
> > +                                     hysteresis =3D <2000>;
> > +                                     type =3D "passive";
> > +                             };
> >                               cpu4_alert: trip-alert {
> >                                       temperature =3D <85000>;
> >                                       hysteresis =3D <2000>;
> > @@ -2109,6 +2134,11 @@ cpu5-thermal {
> >                       thermal-sensors =3D <&lvts_mcu MT8192_MCU_BIG_CPU=
1>;
> >
> >                       trips {
> > +                             cpu5_thres: trip-point {
> > +                                     temperature =3D <68000>;
> > +                                     hysteresis =3D <2000>;
> > +                                     type =3D "passive";
> > +                             };
> >                               cpu5_alert: trip-alert {
> >                                       temperature =3D <85000>;
> >                                       hysteresis =3D <2000>;
> > @@ -2139,6 +2169,11 @@ cpu6-thermal {
> >                       thermal-sensors =3D <&lvts_mcu MT8192_MCU_BIG_CPU=
2>;
> >
> >                       trips {
> > +                             cpu6_thres: trip-point {
> > +                                     temperature =3D <68000>;
> > +                                     hysteresis =3D <2000>;
> > +                                     type =3D "passive";
> > +                             };
> >                               cpu6_alert: trip-alert {
> >                                       temperature =3D <85000>;
> >                                       hysteresis =3D <2000>;
> > @@ -2169,6 +2204,11 @@ cpu7-thermal {
> >                       thermal-sensors =3D <&lvts_mcu MT8192_MCU_BIG_CPU=
3>;
> >
> >                       trips {
> > +                             cpu7_thres: trip-point {
> > +                                     temperature =3D <68000>;
> > +                                     hysteresis =3D <2000>;
> > +                                     type =3D "passive";
> > +                             };
> >                               cpu7_alert: trip-alert {
> >                                       temperature =3D <85000>;
> >                                       hysteresis =3D <2000>;
> >
> > ---
> > base-commit: 20cb38a7af88dc40095da7c2c9094da3873fea23
> > change-id: 20240410-upstream-torvalds-master-40aeff5416c7
> >
> > Best regards,
>

