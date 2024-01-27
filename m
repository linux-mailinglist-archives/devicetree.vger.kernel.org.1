Return-Path: <devicetree+bounces-35748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A937783EA14
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 03:50:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCD191C20D1B
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 02:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88F8EB673;
	Sat, 27 Jan 2024 02:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uLb1TTMX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E602F30
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 02:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706323803; cv=none; b=W3+tKYrqI0GAO5DN/U9EUsqfNs0eQ7A5e1bZNS1E7e4JtazoariYfBwyEs2us4KmE7DMoq7XFBiqDbzOQy200L2HX9fzKkMxVSJ+wcjL7385WJlCBTJ13uJphpqCV3BoS9Z2W68JC8JdFBvDRBZSAR8XubUWl8cXxnfxEtboPbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706323803; c=relaxed/simple;
	bh=bfJSVwHte4UTdGhIk4v4dfRTZVVyLLu1r5UlKBx2mCA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sX4cA9FNWCbBd/7a7Yf0tlTyuw5lYvQDhNSzQ1k/xskEkjqbYXATZU5cVm7rqTAC2eOFTWkKLNPgXTpBIfjxoVGhjbrHPKAo3W1cXHHdVEFz4KlSntufLWPBoSWAiPuLLF5noQDCStN8GgHX0b2FpV7MXUWvuS+5BwmeQT8jelI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uLb1TTMX; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-783ced0216aso53737285a.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 18:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706323801; x=1706928601; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hJe5re98/AihHEnk4Y0zzQwwwowoIEdI91R+RmtjIKw=;
        b=uLb1TTMXsrUJK/G13BHR4UbyAR6OzqW7P1qjgNJio70OsJDdqNapMz+riqStka46u7
         dw0yaP+0F/OT6sJL5BtbpToml+4VcEuDjig1pHs7V9lU4ByqkdUPG6XNFOVc0Xw7i/QJ
         bc40uFrGtzSDtnQ46gsGdSO9rCOEm8TwRnKLzqQhTWyRppSFS1nAVfun/nf3Nz7Rg0RC
         8wvh5llyHMwPVRD1JkSZGP4CS0br5/lkXGiwXv/uUexkGAjJSe4EMC2mu8WkfSy5Kt1m
         dtp5z6gk8P/MA5LiHAgIzlaOKOKQEFITe6G5cI3TYKoRLSzDkq9UV4ASvnUF5ChdvlU7
         0WKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706323801; x=1706928601;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hJe5re98/AihHEnk4Y0zzQwwwowoIEdI91R+RmtjIKw=;
        b=YjXQpmDlWI17BcRu42+Nj9czIFb2tjEMWf4TSE6GX33RX8M7gtsJEYvcsnkGOP3h8p
         pQ4j5teewVEwlXa5lnRj5YJzVqgVmPDXqJEsa6dHN4ySNd8gTN/yPSlgKK+KsGcaNvHJ
         yIEsBXGCgguL2naiXHsXgL9kjRwLYU/TBsHdaSWNcojRXVaEuyQJT9Y/SVzde2teIpfD
         s0tDpLUlw4kaiYmhY7O5NcGyUar7Cs8cnUSUkJynEXZXw22XLcv/rqpywJYTDxgyRot0
         nOGReXG6Y4DCzVe5Ap7YWBtODE1nvlZYct+Yf7AAVx8dG8kN4544fArNazCiQ0Ct3Zl7
         bU2w==
X-Gm-Message-State: AOJu0YxdgEjZGOtue511bnmKbhFINqyjoEccqJUCeCCidc1D0qT0wAfV
	o3Ja6tqtUF2pKyPyDpTUCe04/ijIlwN0xWsNsJu7/rMMNjeERKNg4O5S+DGF+sN6UlNROHgOPEY
	6ZjqHU6b8JiPxw2F7H3PjwdhO6jfUtlaqWOdv6g==
X-Google-Smtp-Source: AGHT+IFZzARt/BEXNQxIveqjbbuZIIgga9v6+OSddPBGZhr2mlw0fKb+F+BW5OWhuM2tJiZuX2gKQMesUBQtNzPtS+w=
X-Received: by 2002:a05:620a:565a:b0:783:9ce6:a7aa with SMTP id
 vw26-20020a05620a565a00b007839ce6a7aamr890241qkn.150.1706323800842; Fri, 26
 Jan 2024 18:50:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127001926.495769-1-andre.draszik@linaro.org> <20240127001926.495769-5-andre.draszik@linaro.org>
In-Reply-To: <20240127001926.495769-5-andre.draszik@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 26 Jan 2024 20:49:49 -0600
Message-ID: <CAPLW+4=og+1kFtDEv4-p-BE1WoAWLZtjqzNeN_QcXW95NeYYYA@mail.gmail.com>
Subject: Re: [PATCH 4/9] arm64: dts: exynos: gs101: enable cmu-peric1 clock controller
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, willmcvicker@google.com, alim.akhtar@samsung.com, 
	s.nawrocki@samsung.com, tomasz.figa@gmail.com, cw00.choi@samsung.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 26, 2024 at 6:19=E2=80=AFPM Andr=C3=A9 Draszik <andre.draszik@l=
inaro.org> wrote:
>
> Enable the cmu-peric1 clock controller. It feeds additional USI, I3C
> and PWM interfaces / busses.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/bo=
ot/dts/exynos/google/gs101.dtsi
> index aaac04df5e65..5088c81fd6aa 100644
> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> @@ -429,6 +429,16 @@ serial_0: serial@10a00000 {
>                         };
>                 };
>
> +               cmu_peric1: clock-controller@10c00000 {
> +                       compatible =3D "google,gs101-cmu-peric1";
> +                       reg =3D <0x10c00000 0x4000>;
> +                       #clock-cells =3D <1>;
> +                       clocks =3D <&ext_24_5m>,
> +                                <&cmu_top CLK_DOUT_CMU_PERIC1_BUS>,
> +                                <&cmu_top CLK_DOUT_CMU_PERIC1_IP>;
> +                       clock-names =3D "oscclk", "bus", "ip";
> +               };
> +
>                 sysreg_peric1: syscon@10c20000 {
>                         compatible =3D "google,gs101-peric1-sysreg", "sys=
con";
>                         reg =3D <0x10c20000 0x10000>;
> --
> 2.43.0.429.g432eaa2c6b-goog
>

