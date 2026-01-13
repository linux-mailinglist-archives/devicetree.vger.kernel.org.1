Return-Path: <devicetree+bounces-254409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BB9D17FF6
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:27:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EC65130056CB
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E2D7346E54;
	Tue, 13 Jan 2026 10:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I2b8IKVO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95F9A2C3268
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768299711; cv=none; b=C6Cefo43zpN4lm1C9iaHihApcgVxyJufvdgU7l8cBB6fBLTdh23JbtvKcx1kOjwZHZUZ51opsdMmGeKLK2S2jz1OEK2pOjZVzBaQslglRirpO1QMBV2KsUOYhktdSPuJQV+GN21wteOCY4PZF2V0eVG9HjVcJNsnpwqB7loDnAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768299711; c=relaxed/simple;
	bh=YXBUMz5vGaUA/FkR8v+yvZwyJDwVOrdh30LVLAsVIPU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iK67iKahT2+MWrHjyhqLfurIJ8QlRrJHfDkX9crUmv1QbwGOqj+5lfi0e3ULaTLzLoauEiuJIzSckJVpaKcQu1E2UzHeLlz/73Z4dGirXxUB2zQMuBkglb7SCCvca1L0jE1d2viFfygkyRMbffRAsu1vjDlOISHZz8WBy2YrQR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I2b8IKVO; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6536e4d25e1so395747a12.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:21:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768299708; x=1768904508; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ujA74UFzyY1R7k8wF+Fji5Xa7ziOl0VUUEmZ6sQVnWc=;
        b=I2b8IKVOYRQZ6sZsYnL9CVhzf9B2GVErlZ9xyQgARb84PiUam9vu0VJhQp5VtzEQS4
         VbxVApz64LBGmRMcRWyZ+nrNdPhEwhK2A5ZL7XDJ4WhfAP7vhFwFSVihCifktbgQ+FvT
         6AAdVW7Ejj+gRl5Zc++jc1PNrBgGsCUz0aQlzkR3ElkuJjzomINHqdWYO76n2uK75R8e
         Dq8nR0/gxXRtqUSt/SmeKvi0NVBeCGgzGDtEywaeINH7hHQwajv3B53L9p77r3q81sUm
         pjVUjaZSL3pcYWZnx38tpUj9a0V0kK7A9mLfT+UbNBnJMij6I85v37YNBvXYKU9TVmGk
         WFEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768299708; x=1768904508;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ujA74UFzyY1R7k8wF+Fji5Xa7ziOl0VUUEmZ6sQVnWc=;
        b=C+BF8VAA4dI7M87wcF2JVylZOAOvh4ZmXUsMuyzaE+EszNZnrUMb+cU1x+I+48LdQc
         H9Qo8KyVeWa8Y7XKhxPB4Nlberyo22bUSNZrS7IDtOiMYS93r1vQEzi9prCd/BvTF4Um
         hJraJQfJUkIQHDrBrV51WT4nYV0BV3mnZ+IpddKfB2Sg0w4aMq9USTo+ttOOrtlMpkhM
         R4cOlqUPKoQI32daT+kx4czz8KT1LL0jdeeEv2qMeJMIEaQqaa9hJBT0vQxFF7E1C6PB
         nEeSOk5jZTsput4ic5804EkbNHjPWsH8kpwu+sHbNsM8pLgm/vdrTd43j4Fyhk/36ZbG
         IbIQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/SHVhOkEPTM59ZufbcXiSuZCHKsTRTxIPbSu/xN4CFHbDiCeOJm9F0bCZhA4MpXzkuROpdKu40fRe@vger.kernel.org
X-Gm-Message-State: AOJu0YyAX1siXDlB39evMktrL6Fm5oWR26l21zv1NvwPexr++v7mjXUf
	QExrzRfC0jtgalof6VE/mabuMAIks3lcdpV98KiUaiBqBWnATklhxxeGj2Oh2GCMnWAlNyzLehH
	8GJY1Pmzhkv2Q0Ae3z17JIqLYDsiAoeHOe5bRKMVpjA==
X-Gm-Gg: AY/fxX6KREEC8/TSosCce+maHQVY4rhtJR6v2PAZNpJKypwydAd3CXpI0Tl0jUCfEea
	J6CbMco48UMvH9/FGn29gNmrqDPeiP1P+ujZXr9PxLE3dbK/Jytxkf/JV0yC+vc+AXShG/0mJE+
	O1HJtgK+HRaJCoF2uMXjlGmuhguQ/MnPbSCg9j1fsMMBSwo7nYs19cJBIItf/237S5yXheZGdaL
	1cc7cW3Lk0k273O9aGOdJ2zQ/B9RKEOGYAELM3xZzIXMCwE393D4Hq8+3vz9v1r0yu6/GKP5pSV
	vL1MageDRPbDV9Z+KcJGOC4lAhyI
X-Google-Smtp-Source: AGHT+IE6Wy/aibh8AKdbvQrUZa3QES7svhGaiNX2I9LwEcDIqqUrH20FYSyHYt1NDfOmk/19+sQBut9iwFovaQ/hDUI=
X-Received: by 2002:a05:6402:5247:b0:64d:65d:2327 with SMTP id
 4fb4d7f45d1cf-65097e59b47mr21305946a12.17.1768299708020; Tue, 13 Jan 2026
 02:21:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260112-dpu-clocks-v2-0-bd00903fdeb9@linaro.org>
 <20260112-dpu-clocks-v2-4-bd00903fdeb9@linaro.org> <7097507636282e4613d324ff5acb74eb747d519b.camel@linaro.org>
In-Reply-To: <7097507636282e4613d324ff5acb74eb747d519b.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 13 Jan 2026 10:21:36 +0000
X-Gm-Features: AZwV_QjOP9Ch49Q2hgsiMLNrbriy5_cS7vekI0_2rDle6kIOrdJ55TM-KAAjG_A
Message-ID: <CADrjBPpphmaiQRWhncxFPur0x4M-wY1FbYi_k4iTAHB38fEd0A@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] clk: samsung: gs101: add support for Display
 Process Unit (DPU) clocks
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, kernel-team@android.com, 
	Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
	Doug Anderson <dianders@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Mon, 12 Jan 2026 at 15:06, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> On Mon, 2026-01-12 at 14:16 +0000, Peter Griffin wrote:
> > cmu_dpu is the clock management unit used for the Display Process Unit
> > block. It generates clocks for image scaler, compressor etc.
> >
> > Add support for the muxes, dividers and gates in cmu_dpu.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> > Changes in v2:
> >  - Update gout_dpu_dpu_pclk to gout_dpu_gpc_dpu_pclk (Peter)
> >  - Fix dout_dpu_busp parent (Peter)
> > ---
> >  drivers/clk/samsung/clk-gs101.c | 283 ++++++++++++++++++++++++++++++++=
++++++++
> >  1 file changed, 283 insertions(+)
> >
> > diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-=
gs101.c
> > index 8551289b46eb88ec61dd1914d0fe782ae6794000..b38c6c8749aae42319d2004=
ff5ffbc9a19320cac 100644
> > --- a/drivers/clk/samsung/clk-gs101.c
> > +++ b/drivers/clk/samsung/clk-gs101.c
> > @@ -25,6 +25,7 @@
> >  #define CLKS_NR_MISC (CLK_GOUT_MISC_XIU_D_MISC_ACLK + 1)
> >  #define CLKS_NR_PERIC0       (CLK_GOUT_PERIC0_SYSREG_PERIC0_PCLK + 1)
> >  #define CLKS_NR_PERIC1       (CLK_GOUT_PERIC1_SYSREG_PERIC1_PCLK + 1)
> > +#define CLKS_NR_DPU  (CLK_GOUT_DPU_SYSREG_DPU_PCLK + 1)
>
> Between APM and HSI0 to keep alphabetic ordering :-)

will fix

>
> >
> >  #define GS101_GATE_DBG_OFFSET 0x4000
> >  #define GS101_DRCG_EN_OFFSET  0x104
> > @@ -4426,6 +4427,285 @@ static const struct samsung_cmu_info peric1_cmu=
_info __initconst =3D {
> >       .drcg_offset            =3D GS101_DRCG_EN_OFFSET,
> >  };
> >
> > +/* ---- CMU_DPU ------------------------------------------------------=
------- */
>
> I'll do a full review later, but this new block should also be between
> existing CMU_APM and CMU_HSI0 blocks to keep alphabetic ordering.

Will fix.

Thanks,

Peter.

