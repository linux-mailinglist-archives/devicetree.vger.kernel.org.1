Return-Path: <devicetree+bounces-159009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1E6A69213
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 16:01:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2A943B9920
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 14:54:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 861241DD0E7;
	Wed, 19 Mar 2025 14:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YtUkGX/T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758F71C82F4
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 14:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742395582; cv=none; b=Uo9thWE7Z2G4JwmoG+2Eo91qZdpU+hobyJQEP9tmYWFQ6V6bv2VnRLPqxXFEMGJmuIX3iYjOel/fEftthXxWxmVCPYOLObNAjnNvOfwxD40R4OcJzO7DxbstFAr0lweXF7HwyZmERfsdyeHwJwBWUabH3kqWnfVcmvG3q3X5O6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742395582; c=relaxed/simple;
	bh=hBrOklqwgjHinnnfZuEdnIsi5aMBvh5YuwuDFUV6gtI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gdgbZ4oNGQsKvhLnlt5Gb5fqMsl34c9y/ksN+2XGI5K1P4mCSpWlToPn7X9lHzpwnSObgHOSKrICurnT+RultCdEqMRwdp7rJKQrSXWleUGKu4pQ4FK9OvB9DQKNSbUC2fR3pG0qdmM4gVEUXabmkohEZOcdTrCXYC0OTGVRPlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YtUkGX/T; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3914a5def6bso3884749f8f.1
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 07:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742395578; x=1743000378; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uY75c27hvYxi7T7rPerH8pZpgrDSKhbOeIOLlJdu6ao=;
        b=YtUkGX/TNoOVyZ+kX/yjkYiGTadATC8SMc8ZEJb3LX8kTfJRmxFUwoPPENWO+6XErW
         INWZ0CBUbTEHc/hM4KFT1iyDb/g0LxR+vJUmcjEDhkQrci+Ty6uVmMWdO7rPSv/OFAEh
         gUiNPWSifGU91nmNH6TNJw4hJsS/X+HyrK+JzrWL2jw+mHIzQYmEWN0ELAutXJmLIzf3
         qVxVS9f1eAiW8L/kNYH6GGQf4Hrvdb49cEdXDX5uGEi8RSH+IyuYU2vDnLbnvNPxVF+U
         QEeNyyL0k1xHe9kQqQ1SfgtOUuFA0H/e1MueKqwrIBFY5f9MIjE2jseevmb8HsethGEx
         rFLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742395578; x=1743000378;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uY75c27hvYxi7T7rPerH8pZpgrDSKhbOeIOLlJdu6ao=;
        b=JUrKSm2EOQdY1Y/FgGZ1jUmhp5SbRlpl1Iv+3zmhWpDER+A79Nxd2q4DozteuJGQYJ
         dwY6XxrvFlQ8HkEy2saFwuE4lX3kRw81u27ISoewerj2Z/baEMxxNhCLREi7MsRZXVFW
         dxFrSNEoI9EHyt3kzL8FT3KKy51BbaKKDpoKe7y1GUWnEEwHuFftG343bygunWCyGzh8
         rhx+oZ9JcbUZy8+pLqVmdmqgxTNNruM4OlomfeVuhTVd8xys9fuGyJOzjxrPmQAncXrS
         3VQkSU2k0IOUty+QPG0WmX7mN2rkmtB8Cj8ngGQIf5aUFnheoDMVh+G7m5SH/WCZYwBw
         sPYg==
X-Forwarded-Encrypted: i=1; AJvYcCUeyLGpsUHuM6oF2Rgayoi+DzJWPbjY2Un/zYd4WNaMaZ9s4rZ76zdiLUcS6qzebms3pzWqU7Z3tgz/@vger.kernel.org
X-Gm-Message-State: AOJu0Yycu5QDljmfcRZNqoROpln5cRg23sydBsPkdYfTrztABnlsNug9
	MapHopGTOpB7mILy4JEGBK87RddyqS7pQAy8L6rD0kRPRlDSUs4UdDgpsqqjXq8dMr6sALdhbTk
	gzr3rEAlE94skwNGR83eGv/9uCufkalMtKsOHww==
X-Gm-Gg: ASbGncvL2VHssWCs0QYXDoN2KtvmPJQlA3/qDict3rHSyKM+AZux/+108ouFsejaR2F
	CVhZ7/WwSvg+Oni4pT/zSvyrZ51FD8+e0w23mZmzzBJA2stUv/gZmb9ztUZuNTf0ZZq7S6Qa0Rw
	lzXmT97A5LCE7AGBXmH+2kZ7O48BO/7pHSxXJl9Jj5OMKOjMm7AgD5gfbydGQ=
X-Google-Smtp-Source: AGHT+IH178JoZDnD1r/uZZTNtV44AHbXZSumbbPNh9ifglxv/RA9z44nfkfPlRV0a7wOqBb2k/i+fxeD0JSTTZ2gt7U=
X-Received: by 2002:a05:6000:1fa4:b0:38d:dd52:1b5d with SMTP id
 ffacd0b85a97d-399739b672cmr2622102f8f.4.1742395577593; Wed, 19 Mar 2025
 07:46:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250319143613.11177-1-srinivas.kandagatla@linaro.org>
In-Reply-To: <20250319143613.11177-1-srinivas.kandagatla@linaro.org>
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Wed, 19 Mar 2025 14:46:06 +0000
X-Gm-Features: AQ5f1Jo5Hyz1aVgEcpD9y-ij-3B4c4dSQqYaAguffMS6ILu1gyAfkCK2nZF0K4Y
Message-ID: <CACr-zFArEKi89Lj9iDR_Y3BKKLa=5FEnLMO36Z0MMAUSRAW7NA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100-tuxedo-14: add sound support
To: srinivas.kandagatla@linaro.org
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	ggo@tuxedocomputers.com, ettore.chimenti@linaro.org
Content-Type: text/plain; charset="UTF-8"

Hi Srini,

On Wed, 19 Mar 2025 at 14:43, <srinivas.kandagatla@linaro.org> wrote:
>
> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>
> This patch adds sound support for this platform,
> support includes
>         - 2x Speakers.
>         - 2x dmic
>         - Headset
>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>
> This patch depends on
> "arm64: dts: qcom: Add device tree for TUXEDO Elite 14 Gen1" patch
>  https://lkml.org/lkml/2025/3/6/867
>
> ucm changes:
> https://github.com/Srinivas-Kandagatla/alsa-ucm-conf/tree/x1e80100-tuxedo
>
> tplg changes:
> https://github.com/Srinivas-Kandagatla/audioreach-topology/tree/tuxedo-elite-14

I think it'd be nice to create merge requests for these and include
those links in the cover letter, what do you think?

>
>  .../qcom/x1e80100-tuxedo-elite-14-gen1.dts    | 190 ++++++++++++++++++
>  1 file changed, 190 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts b/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
> index 86bdec4a2dd8..465221b8a3fa 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
> @@ -20,6 +20,34 @@ aliases {
>                 serial0 = &uart21;
>         };
>
> +

There's an additional new line here ?

> +       wcd938x: audio-codec {
> +               compatible = "qcom,wcd9385-codec";
> +
> +               pinctrl-0 = <&wcd_default>;
> +               pinctrl-names = "default";
> +
> +               qcom,micbias1-microvolt = <1800000>;
> +               qcom,micbias2-microvolt = <1800000>;
> +               qcom,micbias3-microvolt = <1800000>;
> +               qcom,micbias4-microvolt = <1800000>;
> +               qcom,mbhc-buttons-vthreshold-microvolt = <75000 150000 237000 500000 500000 500000 500000 500000>;
> +               qcom,mbhc-headset-vthreshold-microvolt = <1700000>;
> +               qcom,mbhc-headphone-vthreshold-microvolt = <50000>;
> +               qcom,rx-device = <&wcd_rx>;
> +               qcom,tx-device = <&wcd_tx>;
> +
> +               reset-gpios = <&tlmm 191 GPIO_ACTIVE_LOW>;
> +
> +               vdd-buck-supply = <&vreg_l15b_1p8>;
> +               vdd-rxtx-supply = <&vreg_l15b_1p8>;
> +               vdd-io-supply = <&vreg_l15b_1p8>;
> +               vdd-mic-bias-supply = <&vreg_bob1>;
> +
> +
> +               #sound-dai-cells = <1>;
> +       };
> +
>         chosen {
>                 stdout-path = "serial0:115200n8";
>         };
> @@ -129,6 +157,85 @@ vph_pwr: regulator-vph-pwr {
>                 regulator-always-on;
>                 regulator-boot-on;
>         };
> +
> +       sound {
> +               compatible = "qcom,x1e80100-sndcard";
> +               model = "X1E80100-TUXEDO-Elite-14";
> +               audio-routing = "SpkrLeft IN", "WSA WSA_SPK1 OUT",
> +                               "SpkrRight IN", "WSA WSA_SPK2 OUT",
> +                               "IN1_HPHL", "HPHL_OUT",
> +                               "IN2_HPHR", "HPHR_OUT",
> +                               "AMIC2", "MIC BIAS2",
> +                               "VA DMIC0", "MIC BIAS1",
> +                               "VA DMIC1", "MIC BIAS1",
> +                               "VA DMIC0", "VA MIC BIAS1",
> +                               "VA DMIC1", "VA MIC BIAS1",
> +                               "TX SWR_INPUT1", "ADC2_OUTPUT";
> +
> +               wcd-playback-dai-link {
> +                       link-name = "WCD Playback";
> +
> +                       cpu {
> +                               sound-dai = <&q6apmbedai RX_CODEC_DMA_RX_0>;
> +                       };
> +
> +                       codec {
> +                               sound-dai = <&wcd938x 0>, <&swr1 0>, <&lpass_rxmacro 0>;
> +                       };
> +
> +                       platform {
> +                               sound-dai = <&q6apm>;
> +                       };
> +               };
> +
> +               wcd-capture-dai-link {
> +                       link-name = "WCD Capture";
> +
> +                       cpu {
> +                               sound-dai = <&q6apmbedai TX_CODEC_DMA_TX_3>;
> +                       };
> +
> +                       codec {
> +                               sound-dai = <&wcd938x 1>, <&swr2 1>, <&lpass_txmacro 0>;
> +                       };
> +
> +                       platform {
> +                               sound-dai = <&q6apm>;
> +                       };
> +               };
> +
> +               wsa-dai-link {
> +                       link-name = "WSA Playback";
> +
> +                       cpu {
> +                               sound-dai = <&q6apmbedai WSA_CODEC_DMA_RX_0>;
> +                       };
> +
> +                       codec {
> +                               sound-dai = <&left_spkr>, <&right_spkr>, <&swr0 0>, <&lpass_wsamacro 0>;
> +                       };
> +
> +                       platform {
> +                               sound-dai = <&q6apm>;
> +                       };
> +               };
> +
> +               va-dai-link {
> +                       link-name = "VA Capture";
> +
> +                       cpu {
> +                               sound-dai = <&q6apmbedai VA_CODEC_DMA_TX_0>;
> +                       };
> +
> +                       codec {
> +                               sound-dai = <&lpass_vamacro 0>;
> +                       };
> +
> +                       platform {
> +                               sound-dai = <&q6apm>;
> +                       };
> +               };
> +       };
>  };
>
>  &apps_rsc {
> @@ -160,6 +267,13 @@ vreg_bob2: bob2 {
>                         regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>                 };
>
> +               vreg_l1b_1p8: ldo1 {
> +                       regulator-name = "vreg_l1b_1p8";
> +                       regulator-min-microvolt = <1800000>;
> +                       regulator-max-microvolt = <1800000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
>                 vreg_l2b_3p0: ldo2 {
>                         regulator-name = "vreg_l2b_3p0";
>                         regulator-min-microvolt = <3072000>;
> @@ -534,6 +648,24 @@ eusb6_repeater: redriver@4f {
>
>  };
>
> +&lpass_tlmm {
> +       spkr_01_sd_n_active: spkr-01-sd-n-active-state {
> +               pins = "gpio12";
> +               function = "gpio";
> +               drive-strength = <16>;
> +               bias-disable;
> +               output-low;
> +       };
> +};
> +
> +&lpass_vamacro {
> +       pinctrl-0 = <&dmic01_default>;
> +       pinctrl-names = "default";
> +
> +       vdd-micb-supply = <&vreg_l1b_1p8>;
> +       qcom,dmic-sample-rate = <4800000>;
> +};
> +
>  &mdss {
>         status = "okay";
>  };
> @@ -648,6 +780,64 @@ &smb2360_1 {
>         status = "okay";
>  };
>
> +&smb2360_1_eusb2_repeater {
> +       vdd18-supply = <&vreg_l3d_1p8>;
> +       vdd3-supply = <&vreg_l14b_3p0>;
> +};
> +
> +&swr0 {
> +       status = "okay";
> +
> +       pinctrl-0 = <&wsa_swr_active>, <&spkr_01_sd_n_active>;
> +       pinctrl-names = "default";
> +
> +       /* WSA8845, Left Speaker */
> +       left_spkr: speaker@0,0 {
> +               compatible = "sdw20217020400";
> +               reg = <0 0>;
> +               reset-gpios = <&lpass_tlmm 12 GPIO_ACTIVE_LOW>;
> +               #sound-dai-cells = <0>;
> +               sound-name-prefix = "SpkrLeft";
> +               vdd-1p8-supply = <&vreg_l15b_1p8>;
> +               vdd-io-supply = <&vreg_l12b_1p2>;
> +               qcom,port-mapping = <1 2 3 7 10 13>;
> +       };
> +
> +       /* WSA8845, Right Speaker */
> +       right_spkr: speaker@0,1 {
> +               compatible = "sdw20217020400";
> +               reg = <0 1>;
> +               reset-gpios = <&lpass_tlmm 12 GPIO_ACTIVE_LOW>;
> +               #sound-dai-cells = <0>;
> +               sound-name-prefix = "SpkrRight";
> +               vdd-1p8-supply = <&vreg_l15b_1p8>;
> +               vdd-io-supply = <&vreg_l12b_1p2>;
> +               qcom,port-mapping = <4 5 6 7 11 13>;
> +       };
> +};
> +
> +&swr1 {
> +       status = "okay";
> +
> +       /* WCD9385 RX */
> +       wcd_rx: codec@0,4 {
> +               compatible = "sdw20217010d00";
> +               reg = <0 4>;
> +               qcom,rx-port-mapping = <1 2 3 4 5>;
> +       };
> +};
> +
> +&swr2 {
> +       status = "okay";
> +
> +       /* WCD9385 TX */
> +       wcd_tx: codec@0,3 {
> +               compatible = "sdw20217010d00";
> +               reg = <0 3>;
> +               qcom,tx-port-mapping = <2 2 3 4>;
> +       };
> +};
> +
>  &tlmm {
>         gpio-reserved-ranges = <28 4>, /* Unused */
>                                <44 4>, /* SPI (TPM) */
> --
> 2.39.5
>
>

