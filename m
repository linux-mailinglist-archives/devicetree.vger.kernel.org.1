Return-Path: <devicetree+bounces-246910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5836CC1531
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 08:38:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 767FD30274C7
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 07:36:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACAE82FA0DB;
	Tue, 16 Dec 2025 07:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MKcJHQ7d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6A12F12D4
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 07:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765870562; cv=none; b=UZ0Gt/0ViUbfpCGolx1OdxLpJVXdwWT/a6WcXXLEP3hEdJu/jpDmnNI5kj0xHJwsuSy0AhXQFqhc2+3qWL00VTJTifSfdP7g8P3+oKc/sA930st/Euo54UWEjwP34GOXDGk2FrT+jgTPAhY3WuK5pYtTTf/UYBx8TxlGzdQceJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765870562; c=relaxed/simple;
	bh=TSTZH3ha7P3zf07UuAzzCe0DuOTPhq7Iu4ok3zeXQDI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p0W2EDlYZoZ+sQGxdDNc5q2Y/pAiLyIh6vuXkb30huf4HyxU0BJCPdQ3KZfOIJFJA60lxdY3Zc+8ROoHzTgVzn+S00X7yvS3vSIzhMLMOQccHqrzauTJshLtKlky+Ikpnw4a3GkT4BHySV5TNdVVfK45p5aafuXRawur24n4NJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MKcJHQ7d; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-37baf2d159bso9443211fa.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 23:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765870558; x=1766475358; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n16XrMflW8K8mCPPIig2n79GG39zI0dw0k9fySATJAk=;
        b=MKcJHQ7dLs5AtE6b7YT3ZDf5h3PkL5su1lXUpP+J9VClf9fUGrUYX/MCeT25FVhJ59
         ix5+KNe4tgJt9cMfVy97/AGeAN4oWklYOkb1haEjrQw7GQ2AirIl0auSmTAiOJdfs5qs
         EyTj9dpJL8XCkVyenr9nT9+wqYB8b5rSc5Wo8eHRXeeVG1bMCCRZpy8ya+H/egpEVxOo
         wVBusbwblb89K4aQbImL0/m08ndrZJetUbbzoYawmltU8hCUaKg5YMzjoBWW5tI8okVX
         h+pqLqKB9CKBQsOhBwDbK7tWFpWkGNah57K/MMfGDFXmsAP7QOORbzl07LHEavKzUJhd
         QjIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765870558; x=1766475358;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n16XrMflW8K8mCPPIig2n79GG39zI0dw0k9fySATJAk=;
        b=O8QjA81BBYA1NxOkT3dc9ZpdygG34rqd0dZ94r/6sGxonJr7s4m/jYwsV9afKLjXPK
         kuFR3C9rdzYHexzwYSfuRgKKrLRIONn9XcZryPG7WaPz3lUjjdh5MRFhHONFAQJLQ4zr
         rm48gwBgohuAtebAM9HlQVpOyb/FpXL+nfmwFuuGxGQTGKe+z35LSXhSWgcJ9QCQL4Jq
         G1QGQmvErNEUE2kY+V3udxmOzZNuQoRR8a1zVucH82feN27qbgkJX3fsrSAk0tR0yqM3
         NezQsEwKwueJGW0peI5cEitGPue/754eogq5R6CQRSYl5gOluDBM31I1homa9EvF2jnf
         cuLA==
X-Forwarded-Encrypted: i=1; AJvYcCWgWprnQm42n7Sel5NMZfet/GSKfaK5BALD5Mb0oin/g1TjVELgcQY8wsBCT12py1VIh1yM/4jNOAaw@vger.kernel.org
X-Gm-Message-State: AOJu0YxC7uDQQ/qU3U8xyeau7Jk5a4A2fX7K+pedNGV9fgvY+FCw6a9r
	qM1RZCmq0SGNf0SvStSPNvOPjZ0Z2ImC6bCqPw5HWx/4ca0yQDoGga+/oLE63BB3WiUTeb/sBUz
	CRxEu
X-Gm-Gg: AY/fxX6mqihisHxbGpv0IiY4dkabszgFCZsvI4JD0aa9Ir9hRrIS7SWSYp+c29pD9ZU
	/pUjv+vHq5LWQdUKoOoA2PXtKQB8yS7SPewcpJGJWoDsgFvQPzAs2ey4BzwkeVS5AXBcCT/dQtn
	xDO3QGFU0YZcdmUVB6KKB+1fDW8uhU9rh3jvv51QgqeWXbGs3951ti4JX7whvT98Lz3afKZv9m6
	MsDL5RRmWU8u56s6VL3gHXQpQshVXh/LqfvBZSqffRcxwzrfYQJ7hVapbgSBPLemLfeFr/qp5DP
	G7n6sGPUTC57ZqxBCB2eB8tzOjO/KC2eHC9OTRTDZPF++Ybz9/RiSpfunF1i4DoiGL6KLWwobuf
	Bpv3OrFe9sqQHuNykBjRJgHHau6uPnNZXnClFi1cZHDyb4P0a5892dRf14cMx1PkE5zFVwwuzX0
	SUTP3wwm7YrSkv/TiCH09b+Z+S1bcjmEzci1+Aepv5PBjEvSfE10G5AQCccQbEo//olQ==
X-Google-Smtp-Source: AGHT+IEA3Aizumvo2C29apLGRfL5f4cmKkJaCe7dpJMQ1br+YvsIHx4NhcZQQJWEH/cY0jbWIL6pIw==
X-Received: by 2002:a05:6512:3e27:b0:598:e3ed:b43e with SMTP id 2adb3069b0e04-598faa98e36mr2872191e87.6.1765870557425;
        Mon, 15 Dec 2025 23:35:57 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5990da5040bsm639372e87.65.2025.12.15.23.35.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 23:35:56 -0800 (PST)
Message-ID: <5bd29b5f-6fcf-428d-b451-698d92f0883e@linaro.org>
Date: Tue, 16 Dec 2025 09:35:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 5/5] arm64: dts: qcom: monaco-evk-camera: Add DT
 overlay
To: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>,
 bryan.odonoghue@linaro.org, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ravi Shankar <quic_rshankar@quicinc.com>,
 Vishal Verma <quic_vishverm@quicinc.com>
References: <20251216062223.2474216-1-quic_nihalkum@quicinc.com>
 <20251216062223.2474216-6-quic_nihalkum@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251216062223.2474216-6-quic_nihalkum@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/16/25 08:22, Nihal Kumar Gupta wrote:
> Monaco EVK board does not include a camera sensor in its default hardware
> configuration. Introducing a device tree overlay to support optional
> integration of the IMX577 sensor via CSIPHY1.
> 
> Camera reset is handled through an I2C expander, and power is enabled
> via TLMM GPIO74.
> 
> An example media-ctl pipeline for the imx577 is:
> 
> media-ctl --reset
> media-ctl -V '"imx577 3-001a":0[fmt:SRGGB10/4056x3040 field:none]'
> media-ctl -V '"msm_csiphy1":0[fmt:SRGGB10/4056x3040]'
> media-ctl -V '"msm_csid0":0[fmt:SRGGB10/4056x3040]'
> media-ctl -V '"msm_vfe0_rdi0":0[fmt:SRGGB10/4056x3040]'
> media-ctl -l '"msm_csiphy1":1->"msm_csid0":0[1]'
> media-ctl -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
> yavta -B capture-mplane -c -I -n 5 -f SRGGB10P -s 4056x3040 -F /dev/video1
> 
> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> Co-developed-by: Ravi Shankar <quic_rshankar@quicinc.com>
> Signed-off-by: Ravi Shankar <quic_rshankar@quicinc.com>
> Co-developed-by: Vishal Verma <quic_vishverm@quicinc.com>
> Signed-off-by: Vishal Verma <quic_vishverm@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/Makefile             |  4 ++
>   .../dts/qcom/monaco-evk-camera-imx577.dtso    | 67 +++++++++++++++++++
>   2 files changed, 71 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-camera-imx577.dtso
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 6f34d5ed331c..b1ba182a0d8d 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -38,6 +38,10 @@ lemans-evk-camera-dtbs	:= lemans-evk.dtb lemans-evk-camera.dtbo
>   dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-camera-csi1-imx577.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-camera.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk.dtb
> +
> +monaco-evk-camera-imx577-dtbs	:= monaco-evk.dtb monaco-evk-camera-imx577.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk-camera-imx577.dtb
> +
>   dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-acer-a1-724.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-alcatel-idol347.dtb
> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk-camera-imx577.dtso b/arch/arm64/boot/dts/qcom/monaco-evk-camera-imx577.dtso
> new file mode 100644
> index 000000000000..351eb5ee70ba
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/monaco-evk-camera-imx577.dtso
> @@ -0,0 +1,67 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.

Year is missing.

> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/clock/qcom,sa8775p-camcc.h>
> +#include <dt-bindings/gpio/gpio.h>
> +
> +&camss {
> +	vdda-phy-supply = <&vreg_l4a>;
> +	vdda-pll-supply = <&vreg_l5a>;
> +
> +	status = "okay";
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		port@1 {
> +			reg = <1>;
> +
> +			csiphy1_ep: endpoint {
> +				clock-lanes = <7>;

Please remove 'clock-lanes' property here.

> +				data-lanes = <0 1 2 3>;
> +				remote-endpoint = <&imx577_ep1>;
> +			};
> +		};
> +	};
> +};
> +
> +&cci1 {
> +	pinctrl-0 = <&cci1_0_default>;
> +	pinctrl-1 = <&cci1_0_sleep>;
> +
> +	status = "okay";
> +};
> +
> +&cci1_i2c0 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	camera@1a {
> +		compatible = "sony,imx577";
> +		reg = <0x1a>;
> +
> +		reset-gpios = <&expander2 1 GPIO_ACTIVE_LOW>;
> +		pinctrl-0 = <&cam1_default>;
> +		pinctrl-names = "default";
> +
> +		clocks = <&camcc CAM_CC_MCLK1_CLK>;
> +		assigned-clocks = <&camcc CAM_CC_MCLK1_CLK>;
> +		assigned-clock-rates = <24000000>;
> +
> +		avdd-supply = <&vreg_cam1_2p8>;
> +
> +		port {
> +			imx577_ep1: endpoint {
> +				link-frequencies = /bits/ 64 <600000000>;
> +				data-lanes = <0 1 2 3>;

data-lanes property value should be '1 2 3 4>', 0 is for the clock lane.

On CAMSS side this cannot be changed, unfortunately it's a lingering issue.

> +				remote-endpoint = <&csiphy1_ep>;
> +			};
> +		};
> +	};
> +};

If only one of 3 defined from 4/5 regulators is used, do you really wish
to describle all 3 in advance? You may consider to remove 2 currently unused
GPIO controlled regulator descriptions, and squash this change with 4/5.

-- 
Best wishes,
Vladimir

