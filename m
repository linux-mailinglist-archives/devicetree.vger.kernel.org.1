Return-Path: <devicetree+bounces-41022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 128AF851F72
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 22:20:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE624284C81
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 21:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B52C4CB2B;
	Mon, 12 Feb 2024 21:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Oo+NH91d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD534C627
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707772795; cv=none; b=oHaQG/bRpriJ2ngTWeBAXXLQ0g4ncJoWmkgBFiRUA2Xzf1je7GKtWRXHbocBDvrR+ViAosXtbQ+LKnv/fAsbnVvnK7pobutMfnSCKiUnxLLyglByPCEwF4q/PMHuTqePQE5uu13xjT7G45BGxop2NPormKVBdJsk25TTtqhu8V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707772795; c=relaxed/simple;
	bh=rYsfzNffWLW01EY7MGQrWhKqam8qwQaEofXUk3u4V5Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eYkBm7V2vTV/U0cqb8+ReW6J91cPSDlZNIB+8TnTrOBr1QmIyPfFBvT1puCtIbxMoKOxa34mWmC7eSco8raymSmkYnJlohsbRtxivkrIV262FfAFNdThVJzEeTX8j8jgS6cxc3coog1Zf1funJFG+qrdMY8qMiQ4tK4iV+EYXS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Oo+NH91d; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dc74897bf61so3716679276.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 13:19:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707772793; x=1708377593; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=s+yo91KC9lZLq+Z5GCcZqguGz6BSCI7TGH/G2qxr2oA=;
        b=Oo+NH91d2EVv5zcXZAC8XrKOA9K4XAn/CHIuANe+A5tY08y+ttpBLx96ckYQMv2F63
         q9cWWCeJUo6DyQaQJrz1YAH5AHKHXlStGY1+jQaEPsRySP4XHfamsyO7R0jDRfZcZ21W
         +Bwz0fq8+IWlaz/v4qMb1r0NVM9hVjKeV5O1QmRbzdf6xZKEWEtRlEkkczKOGcGMyvcD
         ZfuQBEUleY9bKzs5OtTlva3++j9knSq33jgoYS+VbCaWPkseozOtYDx0tKaR2A+7bJdg
         GJILSpdws9O46EssOsC5HX6qt+X7obZblNGNkFKV9qhzl4ClgMVqhYejuXF1++iOyo4m
         tHXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707772793; x=1708377593;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s+yo91KC9lZLq+Z5GCcZqguGz6BSCI7TGH/G2qxr2oA=;
        b=hL2S+0PidtfB1B1kF2a7F0a+S1qP9MxPZs0/fiRtyyRsVA39b8DKjs0gKRc8eZAkD8
         VOAN2+YekepUTwoiNV7N0B6h67IKSUY8iVze4gsIs02T+l2ihgHQWjjeTSL4bld7RcEy
         XPgkqmCD36YFO1AihezVcrx8TRegkOzW16O5Hy7ON8Fgim9TVvm4CEB7hL/PsPMA2C6t
         H9RdeTYFxGwPvEUH5NNG1Qf93pnXctczUJ2aK2OHopzRgUbc65CuhwE0Paq5LKZSau0m
         Zpz+EgrkJywqWmEHWY2puAf2hwlg20nG5+wM5LssKoUpYZf8nuCgOXVN7+PG1+6xXVys
         B/fw==
X-Forwarded-Encrypted: i=1; AJvYcCXORmkyBr7XBsr/EpbjjRz9n7onMA985xKs8f0ZINiURAdVBtQoyHHR6Fls7QScTUzipLZ6pmlrFY249w0R7khfsTHCnCZVXkom0w==
X-Gm-Message-State: AOJu0YyDA7iY0twTSpvazUjPMg4wRQ1mIDrMBsTm+5pT4mjEi8LqAepl
	h3Ntd7s5NF+RC7j3SMbl3PEelL2bGoWzqh9D2i8eVKyIXwb1yZaO2yaJMn226mr8/OItfcJJWoG
	o7Kwm/bV9us1tU6JDNnxRPEUQnjLq+NUhVs/ILA==
X-Google-Smtp-Source: AGHT+IGwm8pe4MDgVQAlL+pAAjsmuB8Vmf6/8xdDR9vTdvZ1WSoansH5OsLECcjcw7mpfMBcfPn6TQuPKeq7UPMEiT0=
X-Received: by 2002:a25:adc7:0:b0:dcb:fe58:a08b with SMTP id
 d7-20020a25adc7000000b00dcbfe58a08bmr1251061ybe.15.1707772792830; Mon, 12 Feb
 2024 13:19:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240212-topic-j606f_periphs-v1-1-5dcacd483e28@linaro.org>
In-Reply-To: <20240212-topic-j606f_periphs-v1-1-5dcacd483e28@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 12 Feb 2024 23:19:40 +0200
Message-ID: <CAA8EJppHv9g4HnEFaEaCH=FnvJdnFfnr+rt=Onyqh-er8UA6TQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sm6115p-j606f: Add some peripherals
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 12 Feb 2024 at 15:44, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> This tablet features quite a bunch of I2C-connected devices, such as
> a Richtek RT1715 USB-C controller, a MM8013 fuel gauge, FSA4480 Type-C
> audio mux, TPS65132 regulator and some more.
>
> Add the aforementioned ones and document others.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm6115.dtsi              |   7 ++
>  arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts | 103 +++++++++++++++++++++-
>  2 files changed, 109 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index ee65ab073ba6..7df7b2045b71 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -1676,6 +1676,13 @@ usb_dwc3_ss: endpoint {
>                                                         remote-endpoint = <&usb_qmpphy_usb_ss_in>;
>                                                 };
>                                         };
> +
> +                                       port@2 {
> +                                               reg = <2>;
> +
> +                                               usb_dwc3_sbu: endpoint {
> +                                               };

The SBU lines are not connected to the DWC3 port

> +                                       };
>                                 };
>                         };
>                 };
> diff --git a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> index 54da053a8042..eb65c2806345 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> @@ -73,6 +73,81 @@ zap-shader {
>         };
>  };
>
> +&gpi_dma0 {
> +       status = "okay";
> +};
> +
> +&i2c0 {
> +       clock-frequency = <400000>;
> +       status = "okay";
> +
> +       /* Some devices use FUSB302(@22) instead of the RT1715. */
> +
> +       rt1715: typec-portc@4e {
> +               compatible = "richtek,rt1715";
> +               reg = <0x4e>;
> +               interrupts-extended = <&tlmm 97 IRQ_TYPE_LEVEL_LOW>;
> +               pinctrl-0 = <&typec_int>;
> +               pinctrl-names = "default";
> +
> +               usb_con: connector {
> +                       compatible = "usb-c-connector";
> +                       label = "USB-C";
> +                       data-role = "dual";
> +
> +                       /* TODO: Add a proper PD setup */
> +                       typec-power-opmode = "default";
> +                       try-power-role = "sink";
> +                       power-role = "dual";
> +                       pd-disable;
> +
> +                       port {
> +                               rt1715_hs_ep: endpoint {
> +                                       remote-endpoint = <&usb_dwc3_hs>;

Most likely this port should have the SBU endpoint connected to
fsa4480. Also, if SS lines are connected, there should be a link
between this connector and the QMP PHY.

> +                               };
> +                       };
> +               };
> +       };
> +
> +       fuel-gauge@55 {
> +               compatible = "mitsumi,mm8013";
> +               reg = <0x55>;
> +       };
> +
> +       /* AW882xx speaker amp @ 34, 35, 36, 37 (CHIP_ID = 0x1852) */
> +       /* HID-over-I2C for the touchpad on keyboard folio @ 60 */
> +};
> +
> +&i2c1 {
> +       clock-frequency = <400000>;
> +       status = "okay";
> +
> +       tps65132@3e {
> +               compatible = "ti,tps65132";
> +               reg = <0x3e>;
> +       };
> +
> +       fsa4480: typec-mux@42 {
> +               compatible = "fcs,fsa4480";
> +               reg = <0x42>;
> +               interrupts-extended = <&tlmm 89 IRQ_TYPE_LEVEL_LOW>;
> +               orientation-switch;
> +               mode-switch;
> +
> +               port {
> +                       fsa4480_sbu_mux: endpoint {
> +                               remote-endpoint = <&usb_dwc3_sbu>;
> +                       };
> +               };
> +       };
> +
> +       /* PM8008 @ 8, 9 */
> +       /* SMB1355 @ c */
> +       /* SGM37604A WLED driver @ 36 */
> +       /* ES7210 audio ADC @ 40 */
> +       /* HID-over-I2C for the keyboard on keyboard folio @ 61 */
> +};
> +
>  &mdss {
>         status = "okay";
>  };
> @@ -129,6 +204,10 @@ &pon_resin {
>         status = "okay";
>  };
>
> +&qupv3_id_0 {
> +       status = "okay";
> +};
> +
>  &remoteproc_adsp {
>         firmware-name = "qcom/sm6115/LENOVO/J606F/adsp.mbn";
>         status = "okay";
> @@ -309,6 +388,12 @@ &sleep_clk {
>         clock-frequency = <32764>;
>  };
>
> +&spi2 {
> +       status = "okay";
> +
> +       /* HIMAX83102P or NT36523W touchscreen */
> +};
> +
>  &tlmm {
>         gpio-reserved-ranges = <14 4>;
>
> @@ -337,6 +422,14 @@ mdss_dsi_active: dsi-active-state {
>                 drive-strength = <8>;
>                 bias-disable;
>         };
> +
> +       typec_int: typec-int-state {
> +               pins = "gpio97";
> +               function = "gpio";
> +               drive-strength = <2>;
> +               bias-pull-up;
> +               input-enable;
> +       };
>  };
>
>  &ufs_mem_hc {
> @@ -360,12 +453,20 @@ &usb {
>
>  &usb_dwc3 {
>         maximum-speed = "high-speed";
> -       dr_mode = "peripheral";
> +       dr_mode = "otg";
>
>         phys = <&usb_hsphy>;
>         phy-names = "usb2-phy";
>  };
>
> +&usb_dwc3_hs {
> +       remote-endpoint = <&rt1715_hs_ep>;
> +};
> +
> +&usb_dwc3_sbu {
> +       remote-endpoint = <&fsa4480_sbu_mux>;
> +};
> +
>  &usb_hsphy {
>         vdd-supply = <&pm6125_l4>;
>         vdda-pll-supply = <&pm6125_l12>;
>
> ---
> base-commit: ae00c445390b349e070a64dc62f08aa878db7248
> change-id: 20240212-topic-j606f_periphs-87dd893e105c
>
> Best regards,
> --
> Konrad Dybcio <konrad.dybcio@linaro.org>
>
>


-- 
With best wishes
Dmitry

