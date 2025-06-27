Return-Path: <devicetree+bounces-190494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 97900AEBEC2
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 19:58:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E77C566E27
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 17:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C7412EBDC5;
	Fri, 27 Jun 2025 17:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b="TcGQxK0L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82C62EAD0F
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 17:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751047020; cv=none; b=C9PrwMibJQLuC+4nRYGZv8cUnwzsLMAWRIVy13MVczYXg501HuKF6suvMN5UoC+ci2PevWSO9s67J/oAAFy2CDR3QfB/gSRPCDITWpqwt0P5dmdE2AoPR0CFHLJTSOGxmJNFfKaQS/Mdn8D+ntu+i7K+HHg1eHJetPwnpKmc32A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751047020; c=relaxed/simple;
	bh=czkJe6P8edZl5EJS+azo4RH37Yqc0TlWj4Ti1g4vPok=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y9VtGRo0i8QSr3/g87vkoB7fDOfwsfcHQYJ941hUWX4yvtx7O6AWe3NGIa/wNIId0WcAGYpPUFOfpmya3Weu/8mQo5Tm8xwYt7TPE5lLNcSFUbVqS+4gJx+ZDT8Nzv/ry7K1j/cWKT8FvnoAF8u6+ei9/Z6LEP0NrdcIumXUXlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com; spf=pass smtp.mailfrom=gateworks.com; dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b=TcGQxK0L; arc=none smtp.client-ip=209.85.161.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gateworks.com
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-6065251725bso98179eaf.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 10:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks.com; s=google; t=1751047018; x=1751651818; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rbuYeB/znMRVmNnp22re7GbKA0GoKXipcQWP3fhXkwI=;
        b=TcGQxK0LL1xmK+4WgMNJK2tg+QT96agnb/e7l3rrHyLhmsr3ZhC+vx3yHCJNIchnFB
         PBR93wKQLUhXU92rIy0fSJlqdawjEz+7UIeTjD6S2Xb1N8AKkOZBqEht6KTzDiadTeoI
         WIj4GVmOyDGr1T1xMBJAKIks1Rlo/XS6HhZf6f/yQOwHlhEV9id1iPq7CO4Fr43Unpu+
         iUO58ayVWqHdw7pvIlNWvTsVbK9ja/vmYtdnNEJYQd0vdJn/eE0SA0YsS2alXIFT06Ly
         lto4TTlYLpMXGoKJlxXXx1YUvevfPav/OhxqF1E47b00rkf03PxneRwvGTercQSAKuxI
         51mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751047018; x=1751651818;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rbuYeB/znMRVmNnp22re7GbKA0GoKXipcQWP3fhXkwI=;
        b=IOP6OYK0fjM9r4OwXsSNgwuLz1G4CpS1xiFwrHVfhNHPCF3NEVFd5A1935Z5KCfmor
         jqQLqSPIrbBLLB3Zr4XQ1i/1RloTmnri5oqxpXJvr3CPsMlA+xDykBazyfYefliNsFIz
         Teqzu2PAYMU7p74MZzZP0jfgWO9lBFBQr3SYUt1Xgk3uHB4IsotEeCdu0xnBk7qS45Ll
         BYrA9HT8nALHLMF4GzWAxvftry+eO3me6VfM98Ic2zzr2xIrHuN1mVBNSCFcOvg4RD0u
         pgdvmG2n97Ths1Yi8qd739Zr4myfkARJSZOu0OuKjS8NWfvhLJmVxbS0T9VzkgdX8RL4
         TGHg==
X-Forwarded-Encrypted: i=1; AJvYcCWq25UozkJ+UrPpTuXT5AskE6KE0FpRZszF8tkwuJ59dA1tlJ3Q5JPcqGQ80JALmxKSurM7SnDCgQI+@vger.kernel.org
X-Gm-Message-State: AOJu0YzHmhl7UErr3bQ9MrNTsiU8VTTXylR9ya1p/rSOTyHQw6HxGHe9
	gMXuCLrMN1GicZaWt+yJzyMsLUj6+y6R0OTPFG3PgtCxLlcRayf/nnLrB/aWI+7BE8n0IIuSKJF
	r5mB+2YJTZSibQVWM2LCCx30/A7N36skVf7uG4WjIoYDTEGra6olzB48Mbw==
X-Gm-Gg: ASbGncvMgh7mW4u+H2L/nHhfdk3XceoVfUkeu2jLlFykDiVbcJSy5aXJ1RkorNxuGY2
	qJ43+sdAtQT2HJmk9tyAbZJsLHoubE+bod4CeoranvQ7JKBm3joFkBmQ+LFPnZle2vGIECLnud7
	If+QjutxIaVofRh3GN9xKTGZQW/mvug8CZiQntTXIVMBaf6BAJIFR7Uw==
X-Google-Smtp-Source: AGHT+IHn/O+yw4sdAQD7guPzO4j4/3MQOR3FH8Nb/hBYMQX3XW0mdG4bsbuqDOKcybzRbPj3Ume9tDS47O4jmJlhfy8=
X-Received: by 2002:a05:6820:994:b0:611:b561:258e with SMTP id
 006d021491bc7-611b90965aemr2849488eaf.3.1751047017799; Fri, 27 Jun 2025
 10:56:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250620213447.56392-1-aford173@gmail.com>
In-Reply-To: <20250620213447.56392-1-aford173@gmail.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Fri, 27 Jun 2025 10:56:46 -0700
X-Gm-Features: Ac12FXwaCCVUyBeRU0CpBhDP3QxyDWYKIvfZAtJZ7SnZG3kcRW-1EnKbWFLlM-8
Message-ID: <CAJ+vNU0caeeC6in5dO_jkkbYNAnTL7drBZcmNBsstbrPWqUkHw@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm-beacon: Fix HS400 USDHC clock speed
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, aford@beaconembedded.com, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 20, 2025 at 2:52=E2=80=AFPM Adam Ford <aford173@gmail.com> wrot=
e:
>
> The reference manual for the i.MX8MM states the clock rate in
> MMC mode is 1/2 of the input clock, therefore to properly run
> at HS400 rates, the input clock must be 400MHz to operate at
> 200MHz.  Currently the clock is set to 200MHz which is half the
> rate it should be, so the throughput is half of what it should be
> for HS400 operation.
>
> Fixes: 593816fa2f35 ("arm64: dts: imx: Add Beacon i.MX8m-Mini development=
 kit")
> Signed-off-by: Adam Ford <aford173@gmail.com>
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi b/arch/=
arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
> index 21bcd82fd092..8287a7f66ed3 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
> @@ -294,6 +294,8 @@ &usdhc3 {
>         pinctrl-0 =3D <&pinctrl_usdhc3>;
>         pinctrl-1 =3D <&pinctrl_usdhc3_100mhz>;
>         pinctrl-2 =3D <&pinctrl_usdhc3_200mhz>;
> +       assigned-clocks =3D <&clk IMX8MM_CLK_USDHC3>;
> +       assigned-clock-rates =3D <400000000>;
>         bus-width =3D <8>;
>         non-removable;
>         status =3D "okay";
> --
> 2.48.1
>
>

Hi Adam,

This caught my interest. Where in the IMX8MMRM do you see this and
would it also apply to the IMX8MP? (You've patched your IMX8MM and
IMX8MN boards).

Have you encountered any issues when running eMMC at HS400 due to this
or is it just something you noticed in the RM more recently like with
my recent patch that lowers SPI clock due to an obscure RM note [1]

Best Regards,

Tim
[1] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=3D96=
5976&archive=3Dboth

