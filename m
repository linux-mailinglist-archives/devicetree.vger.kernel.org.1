Return-Path: <devicetree+bounces-31979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D2882D67F
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 10:57:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 66B031F23541
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 09:57:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9FFAE573;
	Mon, 15 Jan 2024 09:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XdbYZ2jS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01A2E563
	for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 09:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dbed4b03b48so6675163276.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 01:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705312619; x=1705917419; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rrrlkPtyKBLLzzLdo3SLBCvzSHQvmOg5k9ZimxR5XrY=;
        b=XdbYZ2jS7wUchI7ga4llvvR4F7e02kZM9y/Ky7OAO0BRyVYDexbTVeAedUKDQVtlZ9
         EXeUTCK6EN1Xpcr1qvTps/nYBG9+VtvPvXkCugIX9O2moatKprs8pKjd4kNSxRft8Ur5
         I4mFNxOKjwDEM+h+XkJF+ZNmC5ecnvDmzMRlyYIZ7Zs1XidMxM8j8lnf9FgW6abEoNwd
         g5Tlv1bUeaXjm1Oxzz9aaAvm0+nmTqeNE96ZI5RMmu36jhW3bfgN8qpqGzJGlZFZr4T4
         eIxMIRV77dTxXMWLqid3Vw6RF5364RPHsgYnIM5B+U98S5ZrCNC4E6NZ/wUnjyXAL5bJ
         BRGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705312619; x=1705917419;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rrrlkPtyKBLLzzLdo3SLBCvzSHQvmOg5k9ZimxR5XrY=;
        b=e0a5tRzCq8KVRc0aPPXI/d+uP9c7fi++Ecngyx+2zwSudnQ8mwggvkPfRDnM8/NgfF
         9AzWfVGKHmH8ojll2qQL6bd7U2fH10ecnik188hShUr9FyulKyd9QGJzCxFUdos1uKTI
         bPIu0S32DXyTWobRcobx7cIDIF0EjwG1mNpuyKHX7hNUbQ21UGV11Yy7DDWEssGSRdnz
         BfyGRYdC7rAMTQSao7iby1bl+qfh6zNtyCaMqMSeSd6DHH9RFi1/1jdYggfg0yjVxexA
         x5FGac9smkNwPqazbnVzm27ASMZwo27ACHmQIrM57voM9nuioXxSC2Xv+Gk5yJL1fABe
         WN6g==
X-Gm-Message-State: AOJu0YymHbocwMCsDSZGUWqOSMzMi1EjoE0cPGslC9/nloC/kvg9/fVC
	SnP3BiwohSY+VlI2QgeZ+8cCTeHIoTanF4zMMsnqp6FQK/igD6BF1jD7h5fF0LXb5A==
X-Google-Smtp-Source: AGHT+IFTJFjdk2yrTlvkv0fZ5sqyWxv0E7gAar6ZfZWtG3EmDzCQok4Opf2dczmnghCrt2NSx2oMzJdaHCOFTBdezBM=
X-Received: by 2002:a25:b44:0:b0:dbe:346b:b9f with SMTP id 65-20020a250b44000000b00dbe346b0b9fmr2128932ybl.51.1705312618912;
 Mon, 15 Jan 2024 01:56:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240115-lpg-v5-1-3c56f77f9cec@quicinc.com>
In-Reply-To: <20240115-lpg-v5-1-3c56f77f9cec@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 15 Jan 2024 11:56:48 +0200
Message-ID: <CAA8EJpoemnXTmshWrArVOCm0GRSkWZ5tH557nbAjRL1Tgg-Dig@mail.gmail.com>
Subject: Re: [PATCH v5] arm64: dts: qcom: qcm6490-idp: Add definition for
 three LEDs
To: quic_huliu@quicinc.com
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Jan 2024 at 11:48, Hui Liu via B4 Relay
<devnull+quic_huliu.quicinc.com@kernel.org> wrote:
>
> From: Hui Liu <quic_huliu@quicinc.com>
>
> Add definition for three LEDs to make sure they can
> be enabled base on QCOM LPG LED driver.

The "function" property is still placed incorrectly. Posting the next
iteration before concluding the discussion on the previous one is not
the best idea.

>
> Signed-off-by: Hui Liu <quic_huliu@quicinc.com>
> ---
> Changes in v5:
> - Rephrased commit text, replaced qcs6490-idp to qcm6490-idp.
> - Removed the unnecessary full.
> - Link to v4: https://lore.kernel.org/r/20240112-lpg-v4-1-c4004026686b@quicinc.com
>
> Changes in v4:
> - Removed "label" definition and added "function" definition.
> - Link to v3: https://lore.kernel.org/r/20231215-lpg-v3-1-4e2db0c6df5f@quicinc.com
>
> Changes in v3:
> - Rephrased commit text and updated the nodes to qcm6490-idp board file.
> - Link to v2: https://lore.kernel.org/all/20231110-qcom_leds-v2-1-3cad1fbbc65a@quicinc.com/
>
> Changes in v2:
> - Rephrased commit text and updated the nodes to board file.
> - Link to v1: https://lore.kernel.org/r/20231108-qcom_leds-v1-1-c3e1c8572cb0@quicinc.com
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> index 37c91fdf3ab9..8268fad505e7 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> @@ -5,6 +5,7 @@
>
>  /dts-v1/;
>
> +#include <dt-bindings/leds/common.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  #include "sc7280.dtsi"
>  #include "pm7325.dtsi"
> @@ -414,6 +415,28 @@ vreg_bob_3p296: bob {
>         };
>  };
>
> +&pm8350c_pwm {
> +       function = LED_FUNCTION_STATUS;
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +       status = "okay";
> +
> +       led@1 {
> +               reg = <1>;
> +               color = <LED_COLOR_ID_RED>;
> +       };
> +
> +       led@2 {
> +               reg = <2>;
> +               color = <LED_COLOR_ID_GREEN>;
> +       };
> +
> +       led@3 {
> +               reg = <3>;
> +               color = <LED_COLOR_ID_BLUE>;
> +       };
> +};
> +
>  &qupv3_id_0 {
>         status = "okay";
>  };
>
> ---
> base-commit: 17cb8a20bde66a520a2ca7aad1063e1ce7382240
> change-id: 20231215-lpg-4aadd374811a
>
> Best regards,
> --
> Hui Liu <quic_huliu@quicinc.com>
>
>


-- 
With best wishes
Dmitry

