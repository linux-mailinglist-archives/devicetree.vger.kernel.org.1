Return-Path: <devicetree+bounces-24254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F56080E7F6
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 10:42:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C42261F21928
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 09:42:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D09F858AB1;
	Tue, 12 Dec 2023 09:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sXlhNgXo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01AABDB
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 01:42:36 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-54ba86ae133so5166688a12.2
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 01:42:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702374154; x=1702978954; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ab1u+8M+Dm9uo1aZ0FRCSc/hdRD8QsyXXMToKdHn3YM=;
        b=sXlhNgXoixdSf7bmuoCfidYEGBfDbhddNEIgG6d9J+0eu+C2m0wOvPbJNutDjFLqk6
         L5hHrsaSItsCKoP9qN6qSXxsYpzwPOLpCzXYfO/MFBnmAWgOYoWV5V86wmvyOce0aNIC
         C1cj4TVVyHEGOp1Z2Wf8yfmc63Cll6C5SmiSGxn7QAP0zoitZeKSoG5juXVCXojvEe23
         ktSMr9alBCDsGJPCH54GpSWs3DpkW9pS0hBnbfWBeU9zjCzPaSshe7INCTsG3/HY6Eef
         wiIR8XJoVLjTvuJK6IsDULF5f0/+3d1NJK8VemiqIhTkpUHPp037HE03iMmj6vmGiw7Q
         uc5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702374154; x=1702978954;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ab1u+8M+Dm9uo1aZ0FRCSc/hdRD8QsyXXMToKdHn3YM=;
        b=I/f1o7Yhr6FaS5vZMLEoXWXqTa3TYm6Xdfx/9v68FTpMq9XnvpIgaAnRHExXdxxHHF
         K1oGJtQc5Z1D9+IiOaST0pXmczcuj04LNGPAm8RarGy6YiR4AWHFFXMKdDX4foQJHckB
         NO+i9PKAKuLBWayFDFmun1UzWPcodoGfCu29dUi9EGm2myQIrecV5bndTYMYjxOjckof
         gQ2Enx6j8MTAeUdV19ELRRMwd8ZqXmJ+WwLyC5EVM5LuztKgtQ54N884sm527n6ncDrS
         o1qDAeA2+DAz6aO3+ayP1QKe5/nloJCXN720TNnmXq5tbeWTYT9CeodSXBAy/zFipTB+
         Y4TA==
X-Gm-Message-State: AOJu0YwQXUcYeLI3eNr8JUcfl5hnk3O9TpkjLQUAJb0U2gDrJ3XqGieO
	ZEHA05SK8LYtsxemvnidaSI6GA==
X-Google-Smtp-Source: AGHT+IGjSOz4SSTqu+GJBYnhLwGCVarT1qCJVfjUEnwNzA+f3tfpoT0jrkRQZSZGaQUqCStgg5FLNQ==
X-Received: by 2002:a17:906:7392:b0:a00:773c:3f09 with SMTP id f18-20020a170906739200b00a00773c3f09mr3444594ejl.17.1702374154403;
        Tue, 12 Dec 2023 01:42:34 -0800 (PST)
Received: from linaro.org ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id vc12-20020a170907d08c00b00a1d4a920dffsm5933659ejc.88.2023.12.12.01.42.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 01:42:34 -0800 (PST)
Date: Tue, 12 Dec 2023 11:42:32 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: Add SMB2360 pmic dtsi
Message-ID: <ZXgrCHNkz20Weqjq@linaro.org>
References: <20231212-x1e80100-dts-smb2360-v1-1-c28bb4d7105e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231212-x1e80100-dts-smb2360-v1-1-c28bb4d7105e@linaro.org>

On 23-12-12 11:39:52, Abel Vesa wrote:
> Add nodes for SMB2360 in separate dtsi file.
> Also add the eUSB2 repeater nodes.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

On a second thought, please ignore this one.

This depends on the SPMI multi master work.

Will send proper version later on.

>  arch/arm64/boot/dts/qcom/smb2360.dtsi | 51 +++++++++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/smb2360.dtsi b/arch/arm64/boot/dts/qcom/smb2360.dtsi
> new file mode 100644
> index 000000000000..782746a20403
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/smb2360.dtsi
> @@ -0,0 +1,51 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2023, Linaro Limited
> + */
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/spmi/spmi.h>
> +
> +/ {
> +};
> +
> +&spmi1_bus {
> +	smb2360h: pmic@7 {
> +		compatible = "qcom,sm2360", "qcom,spmi-pmic";
> +		reg = <0x7 SPMI_USID>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		smb2360_1_eusb2_repeater: phy@fd00 {
> +			compatible = "qcom,smb2360-eusb2-repeater";
> +			reg = <0xfd00>;
> +			#phy-cells = <0>;
> +		};
> +	};
> +
> +	smb2360k: pmic@a {
> +		compatible = "qcom,sm2360", "qcom,spmi-pmic";
> +		reg = <0xa SPMI_USID>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		smb2360_2_eusb2_repeater: phy@fd00 {
> +			compatible = "qcom,smb2360-eusb2-repeater";
> +			reg = <0xfd00>;
> +			#phy-cells = <0>;
> +		};
> +	};
> +
> +	smb2360l: pmic@b {
> +		compatible = "qcom,sm2360", "qcom,spmi-pmic";
> +		reg = <0xb SPMI_USID>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		smb2360_3_eusb2_repeater: phy@fd00 {
> +			compatible = "qcom,smb2360-eusb2-repeater";
> +			reg = <0xfd00>;
> +			#phy-cells = <0>;
> +		};
> +	};
> +};
> 
> ---
> base-commit: bbd220ce4e29ed55ab079007cff0b550895258eb
> change-id: 20231201-x1e80100-dts-smb2360-0c7c25f2e0a7
> 
> Best regards,
> -- 
> Abel Vesa <abel.vesa@linaro.org>
> 

