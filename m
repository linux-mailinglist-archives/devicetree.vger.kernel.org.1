Return-Path: <devicetree+bounces-59682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCF58A6A01
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 13:57:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EDEC71F21660
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 11:57:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8E72129E70;
	Tue, 16 Apr 2024 11:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lUiVh0v6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBDE128361
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 11:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713268624; cv=none; b=nU/6Kix6OxARZ3LaIvukUn3ksuW4iM6X9k1fJ3Bka3q3GHm1INu3PHAOEyQ2c7/5gtZvvQv5lbsIxR+WkerS2OPKjhFEkV6flIx8/V7xseZHP4WKT2wtt0NWvH7I59+zkpNDQdZnTCnWtoK3cG9EGJg7DTNMXYXS37HMM5eX9fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713268624; c=relaxed/simple;
	bh=vIl3v//FVA36XrKiforyh9hY0/yXzSMuW90U1Lzldf4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J9wbjG8lz+e4LMemjsbyPaeqH7wJCSObh5bd6fcJ51yXtyzdepBAWwQVGN332RICSY9xYGCR7MEp8kk7ry8tZEnehX2JH7R/uoy5KBLEUPc7h36ePrvP2ey6LbtNu06OkUg1Axy5FJO/eRR0Bz6ZXOuy9pmDKNLK11KUa82KHnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lUiVh0v6; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5aa1e9527d1so3060238eaf.1
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 04:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713268622; x=1713873422; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ophtYrF9IpPwZurMvgYV2hp9I3BGj1tkL8j63ZRtc2I=;
        b=lUiVh0v6VXLizYUcK0M96Bctmm2xWa0laYIWV6HrsIrGktNGwYh70q/FZCP2ZBHvzG
         9ln/Av54beFwnCve/6yPbPgpQ/5BCSbQ0pPMIN2aU3S5QFzEcQyYxTzoVCB37bJsvb1r
         N8gEtd31m+Ax7EZu3csc7Sr12XzcGFWGQs0Q6Au9GWI9rEdzjGB2HVYxw7Y1Fr2Z/L0Y
         9PzKIYAGdFC6gg8acLr0EieHFMB0GTkiw6MPD9JuYvFhZpIKGYeL3iAsS2FG5KyhBGED
         qy9d7wRlOA5qj7centymS1MUENzdxEmldiwPoFu+k91P4dzV8GlKBSbk5Kfms4btnU2V
         ykFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713268622; x=1713873422;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ophtYrF9IpPwZurMvgYV2hp9I3BGj1tkL8j63ZRtc2I=;
        b=E2FL5d3djJIvQaGLYsuWe4pw4SxDuTsPso9AYexSW89yfNsN3diWsKMVX5ALSHgDxF
         LBVUztCYtTfBCxN9D0j6JXiXeYRC08DR6MCF4y+ayD4hcxEOneHIj62MsenJ7Y6LwBuE
         e0KmxjWGK/cpj+vNmMcmrzTkHewcw4zrXQ6dgEQrJvjxMqctQmjy7IxNffiKNdqBCJsW
         F8hB1jBQpRCz7faUip0/maB8ce/tLxxpXJwesYDksXmTcmk5D/n1yV9hrFpwmyTQ6s2l
         8xeQ4uKfQAyq6l/xDHR8jHZevvHTrLIluvKCoNLJJiqtucUrOJhpaJijedJ8a9md3JD3
         UlwA==
X-Forwarded-Encrypted: i=1; AJvYcCUjKqzfvUx28brBOafDs5lME6eQapQS+s3DEG/enJOYsDlzGBnglcFnE8Fw8Pr6uHohB8jLtigZTYj2X7pIFOzVPDr6XqrwW3bWMA==
X-Gm-Message-State: AOJu0YyJ/Sv0QpM8a0U7GWBVzDB5nS01wnB2M8PgxCDXCcRCARgoac2E
	9phScXjHbZaDlaXrqLIaK/vCWtosyWwK/QAlVH/E13apf3fXunVGI86SKxaeIdec7pH1Rnl+LZ8
	/vms6jfPERajTjk2QgA23n/5L8C7k4uY59E9n2w==
X-Google-Smtp-Source: AGHT+IGdAJXHt7mAsVZuzt9JgE7vdWoLagtGQT3T15A+kBPHpQZl6zuXKVT8ycszrHB5VvpVeZdYSex6pwkAq/Bp7sg=
X-Received: by 2002:a4a:aecb:0:b0:5ac:9efc:3b02 with SMTP id
 v11-20020a4aaecb000000b005ac9efc3b02mr5501112oon.8.1713268621486; Tue, 16 Apr
 2024 04:57:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-6-peter.griffin@linaro.org> <391a874522a4141b4bc7f0314a9e50d27142123a.camel@linaro.org>
In-Reply-To: <391a874522a4141b4bc7f0314a9e50d27142123a.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 16 Apr 2024 12:56:50 +0100
Message-ID: <CADrjBPqwLt6gzwMpkZvxp5sC-owdDYUN91F0-nV2NvEzek_v9g@mail.gmail.com>
Subject: Re: [PATCH 05/17] arm64: dts: exynos: gs101: enable cmu-hsi2 clock controller
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, chanho61.park@samsung.com, ebiggers@kernel.org, 
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

Thanks for the review.

On Fri, 5 Apr 2024 at 08:38, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> On Thu, 2024-04-04 at 13:25 +0100, Peter Griffin wrote:
> > Enable the cmu_hsi2 clock management unit. It feeds some of
> > the high speed interfaces such as PCIe and UFS.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/=
boot/dts/exynos/google/gs101.dtsi
> > index eddb6b326fde..38ac4fb1397e 100644
> > --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> > +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> > @@ -1253,6 +1253,18 @@ pinctrl_hsi1: pinctrl@11840000 {
> >                       interrupts =3D <GIC_SPI 471 IRQ_TYPE_LEVEL_HIGH 0=
>;
> >               };
> >
> > +             cmu_hsi2: clock-controller@14400000 {
> > +                     compatible =3D "google,gs101-cmu-hsi2";
> > +                     reg =3D <0x14400000 0x4000>;
> > +                     #clock-cells =3D <1>;
> > +                     clocks =3D <&ext_24_5m>,
> > +                              <&cmu_top CLK_DOUT_CMU_HSI2_BUS>,
> > +                              <&cmu_top CLK_DOUT_CMU_HSI2_PCIE>,
> > +                              <&cmu_top CLK_DOUT_CMU_HSI2_UFS_EMBD>,
> > +                              <&cmu_top CLK_DOUT_CMU_HSI2_MMC_CARD>;
> > +                     clock-names =3D "oscclk", "bus", "pcie", "ufs_emb=
d", "mmc_card";
> > +             };
>
> This doesn't build because you didn't add the clock ids in the binding pa=
tch.

These clock IDs are for cmu_top, not cmu_hsi2. They were added as part
of the initial gs101/Oriole upstream support series in the following
commit

commit 0a910f1606384a5886a045e36b1fc80a7fa6706b
Author: Peter Griffin <peter.griffin@linaro.org>
Date:   Sat Dec 9 23:30:48 2023 +0000

    dt-bindings: clock: Add Google gs101 clock management unit bindings

    Provide dt-schema documentation for Google gs101 SoC clock controller.
    Currently this adds support for cmu_top, cmu_misc and cmu_apm.

    Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
    Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
    Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
    Link: https://lore.kernel.org/r/20231209233106.147416-3-peter.griffin@l=
inaro.org
    Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

regards,

Peter

