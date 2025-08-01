Return-Path: <devicetree+bounces-201420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8490B18898
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 23:16:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 082AE166B35
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 21:16:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F51A2701D1;
	Fri,  1 Aug 2025 21:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vtEreAKC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F299D13A3ED
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 21:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754083002; cv=none; b=rXuwmt/GrtBQT/SUaN/Ax3XHIQum+NE1tjcYUL2rH2kADuEgxBs093OTsiJP4SK6Waj81oTwL5XITYyPePwLP8Tyb/DbblPiH7ZB+vYNuX50hm/g/BoBNKJ1SNNEdYC46t9pS4ucoq7Hh4Wf2+ShAly7ddg3Irp0PnAFq4JFhog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754083002; c=relaxed/simple;
	bh=myFVlq87fklKUPiuIQ7mZxuvGWj2qxghqoRQXzRge6o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mOzWmLxwOx4PfRgXEvKp9OzmDZw8U/6U5+g3nKvcy2GZXt62XG3KKEKntxM4uG7WJX9G32VvBi03oMKWxooGNTu9NfWHlwHD7A033yIqoM/a6pTLGOIWkLsvtd5stBIRSWTpXJTJj7KBx011bFi/cGBY3+Cx6qsHQPUjtCdF03U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vtEreAKC; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e8fd38cb37bso1604287276.1
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 14:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754082999; x=1754687799; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZqytGXi5W+0oM2gaVZGROmPugYrBG6LtgSr2NAWPIkU=;
        b=vtEreAKCkmqiBVsog63qJEcPFnJmdpOJNXstxwo+sQhC5AxhgUIBX9Y2uAwrkPeZGP
         edmTOLvWIotvvZR2ErncX1zXjK/Wj8H6gg/AM7l0H7SlRchJNGpTAEYehKW+WmfGamqJ
         EDkdz6uXQm2p9aWFNqARGinltoLSKaIkcG4bI/rC2wZYu3hoGZ/WO42zWqHPkDr0WGwY
         7gE6CXMLgXsKX+68xhzuMY6TQCcYLM7FMDyeqT2FeK/8/sL+Xtp5F3NCqyb7oGFx1jrm
         wdUTxMRUqlYNelR9zu1ANkamRMtgwj9YsPL9jtrj2NPAXv10lNrhKb2GZFmzM9gcpBpM
         XtHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754082999; x=1754687799;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZqytGXi5W+0oM2gaVZGROmPugYrBG6LtgSr2NAWPIkU=;
        b=BjC7YOezWaz3hnrr77FTVmKtCb8jKfT/TjwUtXElFk5Dhg0HlLHlNYkCGloP0xXR2n
         ZmhDYohAKLnVNOzev+/ElwyyZUogoqgCO7U2StHUrUNp+bli8Pye48gXeGkfuwm4tIl+
         ANmmmarZJEIsWLc9C7JjqwTLmtLpp4J22RJxAP/MwUJwhDauIoZNojmC4goqw1+iu1TA
         mc8bwVs9eGSxIVREmDmqjq2uqHGdHMikXYwyQkQihAvQ/TJeDaIA3tN+rj4ynZePpTJV
         lwyU3o3wKkMz+tTW1+oWG51my13QiM+9nqsXssOwskFnReg63Sp1S3zxOAq+faNYF26m
         LpxA==
X-Forwarded-Encrypted: i=1; AJvYcCUdqbOqWeq/B94A9YJzuZJzBe/zd+HQbE3Tiza3zXkVXs2lXpqlmR0Ou+SWOAzG7FtSWGHd0zYGI2sn@vger.kernel.org
X-Gm-Message-State: AOJu0YxHWYJoK3KsrbEBNtpvfcBc5swTmCUCdCz63BoeysAYC7Zs8g4K
	q2zWEw1ekEmwmcPShJARoO7HR/Asz2/L88r4wOqZ4wcH54uapZXbWlOCIKce05zRsFYdLDfCIU6
	A56I1rDCc//zqBmw9dYk10vAivHFzB4xn94t4rjeFwQ==
X-Gm-Gg: ASbGncupadn5w+myHtF3XLV6HS1p1zTJsL+xl9Q5mxeSMztXCoXlNNmRigdaFlLgBaF
	EDmFcq6mSLahTMdhRCWbXV2nxKMXRDNrfE/png7n5fEsVkRAxIzBJ8YOhapRJE8HpWOotENH3CX
	XJzVwXogjB8Y0A4rskUM/rJ50ZbTNpRgok9KxQoBzd6m/3AKvFsekiVAWWLV9qrP1vrDo4QKQhz
	KW/1g==
X-Google-Smtp-Source: AGHT+IHHaG/CRQsgr7p3Tfo0TOmissc2XOtsczFCXIZQMTy/37MHX8ykJpsP195uACiVjXZcG5lM7NxM/YllXNG+MPA=
X-Received: by 2002:a05:690c:d92:b0:710:f46d:cec3 with SMTP id
 00721157ae682-71b7f5bc0cemr14721927b3.5.1754082998934; Fri, 01 Aug 2025
 14:16:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250730074253.1884111-1-ivo.ivanov.ivanov1@gmail.com> <20250730074253.1884111-3-ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <20250730074253.1884111-3-ivo.ivanov.ivanov1@gmail.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 1 Aug 2025 16:16:25 -0500
X-Gm-Features: Ac12FXwMiWZ8AseZWaIlhH5Rvp_XOCb061jYqpt1d42-G4p8qP_4Vml5fYl6nvg
Message-ID: <CAPLW+4nONOm+86vfPNMbTVFUGT7mo5qnefs=S3kSn0R8EEqpRg@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] arm64: dts: exynos2200: use 32-bit address space
 for /soc
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 30, 2025 at 2:43=E2=80=AFAM Ivaylo Ivanov
<ivo.ivanov.ivanov1@gmail.com> wrote:
>
> All peripherals on this SoC are mapped under the 32-bit address space
> (0x0 -> 0x20000000), so enforce that.
>
> Suggested-by: Sam Protsenko <semen.protsenko@linaro.org>
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
>
> ---
> This was suggested at [1].
>
> [1] https://lore.kernel.org/all/CAPLW+4kPN65uX0tyG_F-4u5FQpPnwX9y6F1zrobq=
5UyVbks+-w@mail.gmail.com
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  arch/arm64/boot/dts/exynos/exynos2200.dtsi | 72 +++++++++++-----------
>  1 file changed, 36 insertions(+), 36 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/exynos/exynos2200.dtsi b/arch/arm64/boot=
/dts/exynos/exynos2200.dtsi
> index 6b5ac02d0..943e83851 100644
> --- a/arch/arm64/boot/dts/exynos/exynos2200.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynos2200.dtsi
> @@ -221,22 +221,22 @@ psci {
>                 method =3D "smc";
>         };
>
> -       soc {
> +       soc@0 {
>                 compatible =3D "simple-bus";
> -               ranges;
> +               ranges =3D <0x0 0x0 0x0 0x20000000>;
>
> -               #address-cells =3D <2>;
> -               #size-cells =3D <2>;
> +               #address-cells =3D <1>;
> +               #size-cells =3D <1>;
>
>                 chipid@10000000 {
>                         compatible =3D "samsung,exynos2200-chipid",
>                                      "samsung,exynos850-chipid";
> -                       reg =3D <0x0 0x10000000 0x0 0x24>;
> +                       reg =3D <0x10000000 0x24>;
>                 };
>
>                 cmu_peris: clock-controller@10020000 {
>                         compatible =3D "samsung,exynos2200-cmu-peris";
> -                       reg =3D <0x0 0x10020000 0x0 0x8000>;
> +                       reg =3D <0x10020000 0x8000>;
>                         #clock-cells =3D <1>;
>
>                         clocks =3D <&cmu_top CLK_DOUT_TCXO_DIV3>,
> @@ -250,7 +250,7 @@ cmu_peris: clock-controller@10020000 {
>                 mct_peris: timer@10040000 {
>                         compatible =3D "samsung,exynos2200-mct-peris",
>                                      "samsung,exynos4210-mct";
> -                       reg =3D <0x0 0x10040000 0x0 0x800>;
> +                       reg =3D <0x10040000 0x800>;
>                         clocks =3D <&cmu_top CLK_DOUT_TCXO_DIV3>, <&cmu_p=
eris CLK_MOUT_PERIS_GIC>;
>                         clock-names =3D "fin_pll", "mct";
>                         interrupts =3D <GIC_SPI 943 IRQ_TYPE_LEVEL_HIGH 0=
>,
> @@ -270,8 +270,8 @@ mct_peris: timer@10040000 {
>
>                 gic: interrupt-controller@10200000 {
>                         compatible =3D "arm,gic-v3";
> -                       reg =3D <0x0 0x10200000 0x0 0x10000>,     /* GICD=
 */
> -                             <0x0 0x10240000 0x0 0x200000>;    /* GICR *=
 8 */
> +                       reg =3D <0x10200000 0x10000>,     /* GICD */
> +                             <0x10240000 0x200000>;    /* GICR * 8 */
>
>                         #interrupt-cells =3D <4>;
>                         interrupt-controller;
> @@ -294,7 +294,7 @@ ppi_cluster2: interrupt-partition-2 {
>
>                 cmu_peric0: clock-controller@10400000 {
>                         compatible =3D "samsung,exynos2200-cmu-peric0";
> -                       reg =3D <0x0 0x10400000 0x0 0x8000>;
> +                       reg =3D <0x10400000 0x8000>;
>                         #clock-cells =3D <1>;
>
>                         clocks =3D <&xtcxo>,
> @@ -306,17 +306,17 @@ cmu_peric0: clock-controller@10400000 {
>
>                 syscon_peric0: syscon@10420000 {
>                         compatible =3D "samsung,exynos2200-peric0-sysreg"=
, "syscon";
> -                       reg =3D <0x0 0x10420000 0x0 0x2000>;
> +                       reg =3D <0x10420000 0x2000>;
>                 };
>
>                 pinctrl_peric0: pinctrl@10430000 {
>                         compatible =3D "samsung,exynos2200-pinctrl";
> -                       reg =3D <0x0 0x10430000 0x0 0x1000>;
> +                       reg =3D <0x10430000 0x1000>;
>                 };
>
>                 cmu_peric1: clock-controller@10700000 {
>                         compatible =3D "samsung,exynos2200-cmu-peric1";
> -                       reg =3D <0x0 0x10700000 0x0 0x8000>;
> +                       reg =3D <0x10700000 0x8000>;
>                         #clock-cells =3D <1>;
>
>                         clocks =3D <&xtcxo>,
> @@ -328,23 +328,23 @@ cmu_peric1: clock-controller@10700000 {
>
>                 syscon_peric1: syscon@10720000 {
>                         compatible =3D "samsung,exynos2200-peric1-sysreg"=
, "syscon";
> -                       reg =3D <0x0 0x10720000 0x0 0x2000>;
> +                       reg =3D <0x10720000 0x2000>;
>                 };
>
>                 pinctrl_peric1: pinctrl@10730000 {
>                         compatible =3D "samsung,exynos2200-pinctrl";
> -                       reg =3D <0x0 0x10730000 0x0 0x1000>;
> +                       reg =3D <0x10730000 0x1000>;
>                 };
>
>                 cmu_hsi0: clock-controller@10a00000 {
>                         compatible =3D "samsung,exynos2200-cmu-hsi0";
> -                       reg =3D <0x0 0x10a00000 0x0 0x8000>;
> +                       reg =3D <0x10a00000 0x8000>;
>                         #clock-cells =3D <1>;
>                 };
>
>                 usb32drd: phy@10aa0000 {
>                         compatible =3D "samsung,exynos2200-usb32drd-phy";
> -                       reg =3D <0x0 0x10aa0000 0x0 0x10000>;
> +                       reg =3D <0x10aa0000 0x10000>;
>
>                         clocks =3D <&cmu_hsi0 CLK_MOUT_HSI0_NOC>;
>                         clock-names =3D "phy";
> @@ -360,7 +360,7 @@ usb32drd: phy@10aa0000 {
>
>                 usb_hsphy: phy@10ab0000 {
>                         compatible =3D "samsung,exynos2200-eusb2-phy";
> -                       reg =3D <0x0 0x10ab0000 0x0 0x10000>;
> +                       reg =3D <0x10ab0000 0x10000>;
>
>                         clocks =3D <&cmu_hsi0 CLK_MOUT_HSI0_USB32DRD>,
>                                  <&cmu_hsi0 CLK_MOUT_HSI0_NOC>,
> @@ -374,7 +374,7 @@ usb_hsphy: phy@10ab0000 {
>
>                 usb: usb@10b00000 {
>                         compatible =3D "samsung,exynos2200-dwusb3";
> -                       ranges =3D <0x0 0x0 0x10b00000 0x10000>;
> +                       ranges =3D <0x0 0x10b00000 0x10000>;
>
>                         clocks =3D <&cmu_hsi0 CLK_MOUT_HSI0_NOC>;
>                         clock-names =3D "link_aclk";
> @@ -406,7 +406,7 @@ usb_dwc3: usb@0 {
>
>                 cmu_ufs: clock-controller@11000000 {
>                         compatible =3D "samsung,exynos2200-cmu-ufs";
> -                       reg =3D <0x0 0x11000000 0x0 0x8000>;
> +                       reg =3D <0x11000000 0x8000>;
>                         #clock-cells =3D <1>;
>
>                         clocks =3D <&xtcxo>,
> @@ -418,27 +418,27 @@ cmu_ufs: clock-controller@11000000 {
>
>                 syscon_ufs: syscon@11020000 {
>                         compatible =3D "samsung,exynos2200-ufs-sysreg", "=
syscon";
> -                       reg =3D <0x0 0x11020000 0x0 0x2000>;
> +                       reg =3D <0x11020000 0x2000>;
>                 };
>
>                 pinctrl_ufs: pinctrl@11040000 {
>                         compatible =3D "samsung,exynos2200-pinctrl";
> -                       reg =3D <0x0 0x11040000 0x0 0x1000>;
> +                       reg =3D <0x11040000 0x1000>;
>                 };
>
>                 pinctrl_hsi1ufs: pinctrl@11060000 {
>                         compatible =3D "samsung,exynos2200-pinctrl";
> -                       reg =3D <0x0 0x11060000 0x0 0x1000>;
> +                       reg =3D <0x11060000 0x1000>;
>                 };
>
>                 pinctrl_hsi1: pinctrl@11240000 {
>                         compatible =3D "samsung,exynos2200-pinctrl";
> -                       reg =3D <0x0 0x11240000 0x0 0x1000>;
> +                       reg =3D <0x11240000 0x1000>;
>                 };
>
>                 cmu_peric2: clock-controller@11c00000 {
>                         compatible =3D "samsung,exynos2200-cmu-peric2";
> -                       reg =3D <0x0 0x11c00000 0x0 0x8000>;
> +                       reg =3D <0x11c00000 0x8000>;
>                         #clock-cells =3D <1>;
>
>                         clocks =3D <&xtcxo>,
> @@ -450,17 +450,17 @@ cmu_peric2: clock-controller@11c00000 {
>
>                 syscon_peric2: syscon@11c20000 {
>                         compatible =3D "samsung,exynos2200-peric2-sysreg"=
, "syscon";
> -                       reg =3D <0x0 0x11c20000 0x0 0x4000>;
> +                       reg =3D <0x11c20000 0x4000>;
>                 };
>
>                 pinctrl_peric2: pinctrl@11c30000 {
>                         compatible =3D "samsung,exynos2200-pinctrl";
> -                       reg =3D <0x0 0x11c30000 0x0 0x1000>;
> +                       reg =3D <0x11c30000 0x1000>;
>                 };
>
>                 cmu_cmgp: clock-controller@14e00000 {
>                         compatible =3D "samsung,exynos2200-cmu-cmgp";
> -                       reg =3D <0x0 0x14e00000 0x0 0x8000>;
> +                       reg =3D <0x14e00000 0x8000>;
>                         #clock-cells =3D <1>;
>
>                         clocks =3D <&xtcxo>,
> @@ -471,12 +471,12 @@ cmu_cmgp: clock-controller@14e00000 {
>
>                 syscon_cmgp: syscon@14e20000 {
>                         compatible =3D "samsung,exynos2200-cmgp-sysreg", =
"syscon";
> -                       reg =3D <0x0 0x14e20000 0x0 0x2000>;
> +                       reg =3D <0x14e20000 0x2000>;
>                 };
>
>                 pinctrl_cmgp: pinctrl@14e30000 {
>                         compatible =3D "samsung,exynos2200-pinctrl";
> -                       reg =3D <0x0 0x14e30000 0x0 0x1000>;
> +                       reg =3D <0x14e30000 0x1000>;
>
>                         wakeup-interrupt-controller {
>                                 compatible =3D "samsung,exynos2200-wakeup=
-eint",
> @@ -487,7 +487,7 @@ wakeup-interrupt-controller {
>
>                 cmu_vts: clock-controller@15300000 {
>                         compatible =3D "samsung,exynos2200-cmu-vts";
> -                       reg =3D <0x0 0x15300000 0x0 0x8000>;
> +                       reg =3D <0x15300000 0x8000>;
>                         #clock-cells =3D <1>;
>
>                         clocks =3D <&xtcxo>,
> @@ -497,12 +497,12 @@ cmu_vts: clock-controller@15300000 {
>
>                 pinctrl_vts: pinctrl@15320000 {
>                         compatible =3D "samsung,exynos2200-pinctrl";
> -                       reg =3D <0x0 0x15320000 0x0 0x1000>;
> +                       reg =3D <0x15320000 0x1000>;
>                 };
>
>                 cmu_alive: clock-controller@15800000 {
>                         compatible =3D "samsung,exynos2200-cmu-alive";
> -                       reg =3D <0x0 0x15800000 0x0 0x8000>;
> +                       reg =3D <0x15800000 0x8000>;
>                         #clock-cells =3D <1>;
>
>                         clocks =3D <&xtcxo>,
> @@ -512,7 +512,7 @@ cmu_alive: clock-controller@15800000 {
>
>                 pinctrl_alive: pinctrl@15850000 {
>                         compatible =3D "samsung,exynos2200-pinctrl";
> -                       reg =3D <0x0 0x15850000 0x0 0x1000>;
> +                       reg =3D <0x15850000 0x1000>;
>
>                         wakeup-interrupt-controller {
>                                 compatible =3D "samsung,exynos2200-wakeup=
-eint",
> @@ -524,7 +524,7 @@ wakeup-interrupt-controller {
>                 pmu_system_controller: system-controller@15860000 {
>                         compatible =3D "samsung,exynos2200-pmu",
>                                      "samsung,exynos7-pmu", "syscon";
> -                       reg =3D <0x0 0x15860000 0x0 0x10000>;
> +                       reg =3D <0x15860000 0x10000>;
>
>                         reboot: syscon-reboot {
>                                 compatible =3D "syscon-reboot";
> @@ -536,7 +536,7 @@ reboot: syscon-reboot {
>
>                 cmu_top: clock-controller@1a320000 {
>                         compatible =3D "samsung,exynos2200-cmu-top";
> -                       reg =3D <0x0 0x1a320000 0x0 0x8000>;
> +                       reg =3D <0x1a320000 0x8000>;
>                         #clock-cells =3D <1>;
>
>                         clocks =3D <&xtcxo>;
> --
> 2.43.0
>
>

