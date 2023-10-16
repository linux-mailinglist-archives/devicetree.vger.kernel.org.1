Return-Path: <devicetree+bounces-8912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F927CA8C6
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 15:02:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ED6ACB20C8A
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 13:02:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A43F827716;
	Mon, 16 Oct 2023 13:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vzR1CFMR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94A4A273F0
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 13:02:22 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90D27E6
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 06:02:20 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-307d20548adso4016414f8f.0
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 06:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697461339; x=1698066139; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/EH2dEgsJLwAH6x6TB5tIwbL+xd8YAQY92MOeRXRDMw=;
        b=vzR1CFMRpsJ5H8bfyIkpSYB+sM3aWc5aeQnxj5Fx7z0YOxBuiCIH57OJqUBtba3+JH
         nto4z8ArWPyq9Lvx+fzvx8ozZQk4zgvtWyxcPrkhZH+rbCyfFgcRbtg9InDm6Zi68WQk
         G+m9Jdv423afoCf63AUmQ+DaNUmweN1EF+fmlmK1ZIiZNL+bn0udkJKjgn3HUC5wiekJ
         yBB6PFcbPvuNm67vrFuui199ysuJkATRuhi1goaPaypj7O2fgnnrEZZ818OZT5j+KZhn
         9BFQ2KfKfDSTu5K2hFSTwy9LEjNgOyIPvhaA+42eTtcsZWMhIqRcDW7uya487WDUWHPF
         MuwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697461339; x=1698066139;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/EH2dEgsJLwAH6x6TB5tIwbL+xd8YAQY92MOeRXRDMw=;
        b=qSP7ywHcyK3U3zJnQM67FUg2imUnIAmvSejVQL1EO4sQqKLH8bbekGS3Hjone0SfHP
         6vAqdHIeWuECg85J0d8LGCyAsk3W48fhL+iPE0/2XylkeIkWv9+UuiHIqSrA9sAZCQDn
         YXCGQZWzjFh3crE47QVICAvBpSQdm4EoY6xhngQQssNBBrOakj3QehzADF2JrlAS/iVK
         wDd+0tYTN5HE/rwLpGH3eyVbCJ4hFVDfzNqbHQgSDjjbsDkOaHjCAdje6LQI+auyYReE
         2yt8a+RTeQKcHeSZ/QqO6ZdyyBGVECDMNyt6n6Rw3uJroV0H8KL3wG9aNSQQtPKyFBX9
         jGSg==
X-Gm-Message-State: AOJu0YwCVSKcZL9ClVnSbpvWRxJgITDEbuASL5AgjVdv+CeBnP+0ULWw
	c7coe7SCbjLEOqFJyf+4b3xMaA==
X-Google-Smtp-Source: AGHT+IHdCOnma6YN+P7JmmGKWE0LEaeU3oh5C33pnHwvUfv9ASDBQWU/M1I+wa4WhVudTagK+D4D7g==
X-Received: by 2002:adf:9c8d:0:b0:32d:88dd:4142 with SMTP id d13-20020adf9c8d000000b0032d88dd4142mr11506607wre.16.1697461338882;
        Mon, 16 Oct 2023 06:02:18 -0700 (PDT)
Received: from [192.168.1.15] (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id e26-20020adfa45a000000b003143c9beeaesm15373107wra.44.2023.10.16.06.02.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Oct 2023 06:02:18 -0700 (PDT)
Message-ID: <5382aff2-30b0-4e6d-9fcd-ffd6dac0abff@linaro.org>
Date: Mon, 16 Oct 2023 14:02:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sm8350-lemonade(p): new devices
Content-Language: en-US
To: Nia Espera <nespera@igalia.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Jonathan Cameron
 <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kees Cook <keescook@chromium.org>,
 Tony Luck <tony.luck@intel.com>, "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, Rob <Me@orbit.sh>,
 Clayton Craft <clayton@igalia.com>, ~postmarketos/upstreaming@lists.sr.ht
References: <20231016-nia-sm8350-for-upstream-v1-0-bb557a0af2e9@igalia.com>
 <20231016-nia-sm8350-for-upstream-v1-5-bb557a0af2e9@igalia.com>
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20231016-nia-sm8350-for-upstream-v1-5-bb557a0af2e9@igalia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 16/10/2023 13:47, Nia Espera wrote:
> Device tree files for OnePlus 9 and 9 Pro. Details of supported features
> mentioned in the cover letter for this patch series, but for
> accessibility also repeated here:
> 
> - USB OTG
> - UFS
> - Framebuffer display
> - Touchscreen (for lemonade)
> - Power & volume down keys
> - Battery reading
> - Modem, IPA, and remoteproc bringup
> 
> Steps to get booting:
> 
> - Wipe dtbo partition
> - Flash vbmeta with disabled verity bit
> - Flash kernel and initfs to boot partition with CLI args pd_ignore_unused
> and clk_ignore_unused
> - Flash rootfs to some other partition (probably super or userdata)
> 
> Signed-off-by: Nia Espera <nespera@igalia.com>

Small comment below, for the next revision:

Reviewed-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/Makefile                  |    2 +
>  .../arm64/boot/dts/qcom/sm8350-oneplus-common.dtsi | 1247 ++++++++++++++++++++
>  .../boot/dts/qcom/sm8350-oneplus-lemonade.dts      |   82 ++
>  .../boot/dts/qcom/sm8350-oneplus-lemonadep.dts     |   37 +
>  4 files changed, 1368 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 2cca20563a1d..369ad4721b29 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -211,6 +211,8 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8250-xiaomi-elish-csot.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8350-hdk.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8350-microsoft-surface-duo2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8350-mtp.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= sm8350-oneplus-lemonade.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= sm8350-oneplus-lemonadep.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8350-sony-xperia-sagami-pdx214.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8350-sony-xperia-sagami-pdx215.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8450-hdk.dtb
> diff --git a/arch/arm64/boot/dts/qcom/sm8350-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/sm8350-oneplus-common.dtsi
> new file mode 100644
> index 000000000000..2f6768f35259
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sm8350-oneplus-common.dtsi
> @@ -0,0 +1,1247 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2023 Caleb Connolly <caleb.connolly@linaro.org>

This is loosely based on some initial work I did, but not to the degree
where this copyright is necessary, feel free to drop it on the next
revision.
> + *
> + * Copyright (c) 2023 Igalia S.L.
> + * Authors:
> + *	Nia Espera <nespera@igalia.com>
> + */
> +
> +#include <dt-bindings/iio/qcom,spmi-adc7-pm8350.h>
> +#include <dt-bindings/iio/qcom,spmi-adc7-pm8350b.h>
> +#define SMB139x_1_SID 0x0b
> +#define SMB139x_2_SID 0x0c
> +#include <dt-bindings/iio/qcom,spmi-adc7-smb139x.h>
> +#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +#include "sm8350.dtsi"
> +#include "pm8350.dtsi"
> +#include "pm8350b.dtsi"
> +#include "pm8350c.dtsi"
> +#include "pmk8350.dtsi"
> +#include "pmr735a.dtsi"
> +#include "pmr735b.dtsi"
> +
> +/ {
> +	/* As with the Sony devices, msm-id and board-id aren't needed here */
> +	chassis-type = "handset";
> +	interrupt-parent = <&intc>;
> +

[...]

> +
> +	/*
> +	 * Hack; OP9 bootloader specifically checks that the timer node has
> +	 * this label.
> +	 */
> +	arch_timer: timer {};

For this to work you also need to build the DTB with labels (the -@ flag
to dtc), otherwise this board won't boot. You can add the following to
the Makefile:

DTC_FLAGS_sm8350-oneplus-lemonade := -@
DTC_FLAGS_sm8350-oneplus-lemonadep := -@

See for reference:
https://lore.kernel.org/linux-arm-msm/20231009172717.2695854-1-dmitry.baryshkov@linaro.org/

Regards,

-- 
// Caleb (they/them)

