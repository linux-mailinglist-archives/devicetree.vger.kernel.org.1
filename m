Return-Path: <devicetree+bounces-7833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E75DA7C5B40
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 20:25:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C5F5282359
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:25:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE21D22323;
	Wed, 11 Oct 2023 18:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CsOF3gz0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C511B29C
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 18:25:52 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97F1793
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:25:45 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5041335fb9cso242927e87.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697048744; x=1697653544; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/LSPSXBCe9GeJxSOIECJ3E4iExh9+akiVQgkBJ/++LA=;
        b=CsOF3gz0qczg7jxt+Ikoan8QFZWFiB5EiQC8AwbbN8MgP+nlvewWZ7Ki82nK8ty42D
         rl6i4DTLScXSWaVfUU1oWGTCkJtmzP5gu67L+Tifjg+1P1mwzdWVSwYtJIYX0N28BM/e
         NWdgHwrkteFccwNTQomjucxSkah9aKkdir1soeRaTKBxNyonTVCFwksntGnbQnxEXxgP
         He2q2ZUK9fE5y1hE0LzR0MKp+P7ypqRMbyyx7qVugQORn/j05dLTi8Q1fZIXQG6RA3A7
         hxzKKN6pHOloHz+peCR7PwQ66A+w3Yua2ml9n4Z/fVOr2MQ8PzOORAxI6+ZUKOjh3R2A
         Vktw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697048744; x=1697653544;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/LSPSXBCe9GeJxSOIECJ3E4iExh9+akiVQgkBJ/++LA=;
        b=BYgJK6VMnFgAN3eZDyOsjemW6ewvHrkoGFeFaup2wJMY53eJlDDShWtPzNFyk64aCe
         lT9hT3ZYo3TDlkH+fLMr5bUSDVrHJ1TmPrvl5S1wIm95uXLBKP1TkgHZMCeDu6nYo4G7
         aXfH1j1wFzWB8qBfiBsj/K/U/wyGu9kHDTr/k2XACXGLCxjzEZ2e8rts1xFWZ20tzLAA
         rurPygfGOVsPUuw0Q//tKMBeM7ct5PDqq1a+Yh5pKhw4yZDNsjf0SemSw/BDSk16jF76
         lp1DRl9R7vblorAQIo+zRlR6hM8W9j216QgeMEV2RNE67IbGwje8oQ40bmSlLAvfJcG0
         mxOA==
X-Gm-Message-State: AOJu0YwcbOhm8QwZd+aZyc1eE1RdXxvdsV8LoZ+4TVgRSmuU71EvYHc4
	GWa8KNvv3oUHw/r3OQjtAyG1rQ==
X-Google-Smtp-Source: AGHT+IFSeTsD3VFDAmToxngS0ZdZuSS/JGuu/58PMZ0mcdK8rhadsxy5+joYJYirCx61VlZJFXSMPw==
X-Received: by 2002:a05:6512:3b28:b0:500:7de4:300e with SMTP id f40-20020a0565123b2800b005007de4300emr24744334lfv.58.1697048743602;
        Wed, 11 Oct 2023 11:25:43 -0700 (PDT)
Received: from [172.30.204.35] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id z10-20020ac24f8a000000b004fe2de20d88sm2372674lfs.232.2023.10.11.11.25.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 11:25:43 -0700 (PDT)
Message-ID: <5c992232-38f2-48e4-83b7-19212c328592@linaro.org>
Date: Wed, 11 Oct 2023 20:25:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] ARM: dts: qcom: Add support for HTC One Mini 2
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20231011-htc-memul-v1-0-76e57873190c@z3ntu.xyz>
 <20231011-htc-memul-v1-3-76e57873190c@z3ntu.xyz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231011-htc-memul-v1-3-76e57873190c@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/11/23 19:02, Luca Weiss wrote:
> Add support for this smartphone based on the MSM8926 SoC, codenamed
> "memul".
> 
> Supported functionality:
> * Power & volume buttons
> * ADSP
> * Magnetometer
> * Accelerometer
> * Touchscreen
> * Vibrator
> * Internal storage
> * SD card
> * Charger
> * USB
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>   arch/arm/boot/dts/qcom/Makefile                   |   1 +
>   arch/arm/boot/dts/qcom/qcom-msm8926-htc-memul.dts | 337 ++++++++++++++++++++++
>   2 files changed, 338 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/Makefile b/arch/arm/boot/dts/qcom/Makefile
> index a3d293e40820..0cb272f4fa45 100644
> --- a/arch/arm/boot/dts/qcom/Makefile
> +++ b/arch/arm/boot/dts/qcom/Makefile
> @@ -32,6 +32,7 @@ dtb-$(CONFIG_ARCH_QCOM) += \
>   	qcom-msm8916-samsung-e7.dtb \
>   	qcom-msm8916-samsung-grandmax.dtb \
>   	qcom-msm8916-samsung-serranove.dtb \
> +	qcom-msm8926-htc-memul.dtb \
>   	qcom-msm8926-microsoft-superman-lte.dtb \
>   	qcom-msm8926-microsoft-tesla.dtb \
>   	qcom-msm8960-cdp.dtb \
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8926-htc-memul.dts b/arch/arm/boot/dts/qcom/qcom-msm8926-htc-memul.dts
> new file mode 100644
> index 000000000000..b848f0cce3b4
> --- /dev/null
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8926-htc-memul.dts
> @@ -0,0 +1,337 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2023, Luca Weiss <luca@z3ntu.xyz>
> + */
> +
> +/dts-v1/;
> +
> +#include "qcom-msm8226.dtsi"
> +#include "qcom-pm8226.dtsi"
> +
> +/delete-node/ &adsp_region;
> +/delete-node/ &smem_region;
> +
> +/ {
> +	model = "HTC One Mini 2";
> +	compatible = "htc,memul", "qcom,msm8926", "qcom,msm8226";
> +	chassis-type = "handset";
> +
> +	aliases {
> +		mmc0 = &sdhc_1; /* SDC1 eMMC slot */
> +		mmc1 = &sdhc_2; /* SDC2 SD card slot */
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		key-power {
> +			label = "Power";
> +			gpios = <&tlmm 106 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_POWER>;
> +			debounce-interval = <15>;
> +		};
> +
> +		key-volume-down {
> +			label = "Volume Down";
> +			gpios = <&tlmm 107 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_VOLUMEDOWN>;
> +			debounce-interval = <15>;
> +		};
> +
> +		key-volume-up {
> +			label = "Volume Up";
> +			gpios = <&tlmm 108 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_VOLUMEUP>;
> +			debounce-interval = <15>;
> +		};
> +	};
> +
> +	reserved-memory {
> +		unknown@5b00000 {
> +			reg = <0x05b00000 0x200000>;
> +			no-map;
> +		};
> +
> +		unknown@7a00000 {
> +			reg = <0x07a00000 0x100000>;
> +			no-map;
> +		};
> +
> +		mpss_region: mpss@8000000 {
> +			reg = <0x08000000 0x4f00000>;
> +			no-map;
> +		};
> +
> +		unknown@cf00000 {
> +			reg = <0x0cf00000 0x200000>;
> +			no-map;
> +		};
> +
> +		mba_region: mba@d100000 {
> +			reg = <0x0d100000 0x3a000>;
> +			no-map;
> +		};
> +
> +		wcnss_region: wcnss@d200000 {
> +			reg = <0x0d200000 0x650000>;
> +			no-map;
> +		};
> +
> +		adsp_region: adsp@dc00000 {
> +			reg = <0x0dc00000 0x1400000>;
> +			no-map;
> +		};
> +
> +		venus_region: venus@f500000 {
> +			reg = <0x0f500000 0x500000>;
> +			no-map;
> +		};
> +
> +		smem_region: smem@fa00000 {
> +			reg = <0x0fa00000 0x100000>;
> +			no-map;
> +		};
> +
> +		unknown@fc00000 {
> +			reg = <0x0fc00000 0xa00000>;
> +			no-map;
> +		};
> +	};
> +};
> +
> +&adsp {
> +	status = "okay";
firmware-path?
[...]

> +		pm8226_s3: s3 {
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1350000>;
> +		};
Newline between subnodes, please

[...]

> +&smbb {
> +	qcom,fast-charge-safe-current = <1750000>;
> +	qcom,fast-charge-current-limit = <1750000>;
> +	qcom,fast-charge-safe-voltage = <4360000>;
> +	qcom,fast-charge-high-threshold-voltage = <4350000>;
> +	qcom,auto-recharge-threshold-voltage = <4300000>;
> +	qcom,minimum-input-voltage = <4300000>;
we had quickcharge in 2013? nice

Konrad

