Return-Path: <devicetree+bounces-62775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 327F28B269B
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 18:35:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E4B4D283E27
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 16:35:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ACD814A0BC;
	Thu, 25 Apr 2024 16:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U6T6Pr+P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0281B133991
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 16:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714062933; cv=none; b=c8rEdJ6v4RG/K2FF8q88ktax5100PtuuSG9D1T+awM9H/g0oyX8Njg+PPRQhkryPTCMnMno9dIlzlZLWILEqA2gTYB3tUrsgV7+oNUzoKns8xL4qNL11HhC2d6gxfBHs6OQkFlllxmKn5RsCdw8zQA0Qo/KKMi1kSIr9dSDgklo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714062933; c=relaxed/simple;
	bh=j9WGUFY71ps6OSCWciRhDzFj4uK9mlFz0tqR2rg0Q4o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r05qQoBTa4Y+j5O2s+NJlldLHyKGtS40RlWMRKKcQx9q4mmxZobkHxM0HJhCKnW4zrRmPpiBmvYQj8O5TmmDn8sjBhcnN3Byw30HhX/ODSOl22IcZHVrT+JWPHV26paBvOWzGjGjWiJGuM8aMDNoSJ2OaDMIqtmnT4wSvruw8gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U6T6Pr+P; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5af702072a9so184791eaf.1
        for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 09:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714062931; x=1714667731; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8D10nkcOa5R+uHy2/Q7XxV4zDHaJ6w0gsH2wqoomVXQ=;
        b=U6T6Pr+PFC5DKgi3aIKsKkSrPsanqBFS5/OHvEcc9EkNwJuboB4yPzS9B1cYFY2my5
         Ven3lsSYywpkatU72jcZ6HXqGPmPDFums3SmmZz9WHDBBfcyFduxF8kJXrXP0VAAsuae
         aulHTdAbGkZZe/HwAxOQfrNxkP4szowDdlzUUI1EkBumawc4TRa+BMGGDvofPZNOgmy5
         noJDkddsbc5cBqFkzbmMo5js/77K6f7l6404Kzr2RwZ1mKgefcwUSPesl3gJMyYDOh2B
         AcKn0Uw8jwoCo2v8n1poJ8Kd9XkisE29wrq0ylFPIeUplX9uYLh/R06Cl9QgDcxttnb1
         37XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714062931; x=1714667731;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8D10nkcOa5R+uHy2/Q7XxV4zDHaJ6w0gsH2wqoomVXQ=;
        b=nI30m+9npVPmJHP0DauSbh1ZPlnx3AisWnooGW08/3ZpiAEqY6ZCVWbQflHcza/b3C
         wipIf3uetFPY6Um8wXN0kki++M1WWxPV+++g7Rkn0eF641NW04CPC/O/RJibL9BZT8Qi
         LXCCBfQ5lLpSE3jWduLkkBiBKpFuU8BWWr4MlQ3CgqPOzOQJLm9LyXo3CaPpWsjzVzEd
         IWBnrGFZsqPmsm3I0K3xk7s06Mpz5pUdFh7vMz3/R/cc5dbJX8oFWSWJkeiTMc2TJQnC
         A+QEJq2lzY7X/oQ9iD1BOot0ia6e2RcVgbj3cQxMZwKeINT1xcR2xixiMzPRbafRx/rC
         fQPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFjd8eqVwWu5aJIdc+K4kTvbhXKAB+ElJn9maCVvwRMbpBQZqvKQe5oj/o3H2KinDq/lnK6E6dbUNYP1EC5BLMNkxedsdD5GaI2Q==
X-Gm-Message-State: AOJu0Yzqlk1XMmNcwuOhfGgDHzJ2f94FDlQm5k8rSQdg/EGPlWF0FDOf
	P/drB1b/FL65dvftu9bDRC30CuL4pu3Nqvl0kFJj4+jjZ8R4EhfXrwe7JPMNOyOADcGbtazFQFi
	qhufeJdFLSqaphntKaG92XODcDuiVB4st82BDLA==
X-Google-Smtp-Source: AGHT+IHjcgDl2gtVr/nZRGKGuh2NquqDXaKs02m0Ke3hafEhPZVueDe1BLxI7k0uWnYn7WyPx11zD8Zk9f2sSWyLcbo=
X-Received: by 2002:a4a:d46:0:b0:5ac:9e7d:576e with SMTP id
 67-20020a4a0d46000000b005ac9e7d576emr185709oob.1.1714062931017; Thu, 25 Apr
 2024 09:35:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
 <20240423205006.1785138-7-peter.griffin@linaro.org> <52403f522a4f7513c5ee5dae48856988f7141825.camel@linaro.org>
In-Reply-To: <52403f522a4f7513c5ee5dae48856988f7141825.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 25 Apr 2024 17:35:19 +0100
Message-ID: <CADrjBPrpsTFns8o+H=SvqdgmKFrkuGEJ2QphL7BpRfy9kifxJQ@mail.gmail.com>
Subject: Re: [PATCH v2 06/14] arm64: dts: exynos: gs101: Add ufs, ufs-phy and
 ufs regulator dt nodes
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, James.Bottomley@hansenpartnership.com, 
	ebiggers@kernel.org, linux-scsi@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	tudor.ambarus@linaro.org, saravanak@google.com, willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Thu, 25 Apr 2024 at 13:02, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> On Tue, 2024-04-23 at 21:49 +0100, Peter Griffin wrote:
> > Enable the ufs controller, ufs phy and ufs regulator in device tree.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  .../boot/dts/exynos/google/gs101-oriole.dts   | 18 ++++++++++
> >  arch/arm64/boot/dts/exynos/google/gs101.dtsi  | 36 +++++++++++++++++++
> >  2 files changed, 54 insertions(+)
> >
>
> [...]
>
> > +
> > +             ufs_0: ufs@14700000 {
> > +                     compatible =3D "google,gs101-ufs";
> > +                     reg =3D <0x14700000 0x200>,
> > +                           <0x14701100 0x200>,
> > +                           <0x14780000 0xa000>,
> > +                           <0x14600000 0x100>;
> > +                     reg-names =3D "hci", "vs_hci", "unipro", "ufsp";
> > +                     interrupts =3D <GIC_SPI 532 IRQ_TYPE_LEVEL_HIGH 0=
>;
> > +                     clocks =3D <&cmu_hsi2 CLK_GOUT_HSI2_UFS_EMBD_I_AC=
LK>,
> > +                              <&cmu_hsi2 CLK_GOUT_HSI2_UFS_EMBD_I_CLK_=
UNIPRO>,
> > +                              <&cmu_hsi2 CLK_GOUT_HSI2_UFS_EMBD_I_FMP_=
CLK>,
> > +                              <&cmu_hsi2 CLK_GOUT_HSI2_QE_UFS_EMBD_HSI=
2_ACLK>,
> > +                              <&cmu_hsi2 CLK_GOUT_HSI2_QE_UFS_EMBD_HSI=
2_PCLK>,
> > +                              <&cmu_hsi2 CLK_GOUT_HSI2_SYSREG_HSI2_PCL=
K>;
> > +                     clock-names =3D "core_clk", "sclk_unipro_main", "=
fmp",
> > +                                   "ufs_aclk", "ufs_pclk", "sysreg";
> > +                     freq-table-hz =3D <0 0>, <0 0>, <0 0>, <0 0>, <0 =
0>, <0 0>;
> > +                     pinctrl-names =3D "default";
> > +                     pinctrl-0 =3D <&ufs_rst_n &ufs_refclk_out>;
>
> The preferred order is pinctrl-0 before pinctrl-names (similar to clock-n=
ames and reg-names).

Will fix
>
> Other than that,
>
> Acked-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

thanks,

Peter

