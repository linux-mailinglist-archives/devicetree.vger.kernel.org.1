Return-Path: <devicetree+bounces-244044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 145BDC9F4B6
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 15:30:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id B18B0300009D
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 14:30:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D6092FCC06;
	Wed,  3 Dec 2025 14:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UrhJH2CX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C1719C566
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764772237; cv=none; b=khoRALEEfDqdl2GPy17f6FJmzbpJPu2Ku77nSpnqsTnRYY6sqIN9ezy8zb8KE4d1LooUIzXLhtjaERGl9kbmTTaA8hdsqJ5+NJovalC96CCI+bS+jc0lRChND4DQTX62pGjcegstP+W6OMqEm1UhciajHz51tiSic9xXf4NUb5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764772237; c=relaxed/simple;
	bh=RMChCRFFEZ65dmSjyz2PAZW0ExUoxw2HKVT2lrK37xM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UNgfHfIXAfCPmP8mA8IflEdHSw5UzFNfAr1DHSO/ikoyNLEnwR5zECDCeSLNQCq1uEg2bF7pc2je7bMHmuoAvGtAyFi0uJhH0U0KvfTrgcLAyEGTowg2NS6d/XbhcVEOOAWhG2MCLdg19mxPiQnpFoBYWsdDZ7mgu1jLNoo6KVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UrhJH2CX; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-8b29ff9d18cso615807885a.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 06:30:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764772233; x=1765377033; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=13jA8V8frcQh+Kv0METbSRDdSF+gbSTvzPzmiYwzA0c=;
        b=UrhJH2CXRSclZwuRXaat2zhftrQS34JvO6HkxZ0hwtB0joAGBB9SH3NUIIjlCPeBSJ
         j38LtqatDrriLhS0eD/FtoQj3BIf7dR+wgrdLNP4u1zP4BnUb+u19jzRd2Z0m4XNmsfX
         /41r1DUFG0EwsJ0V4R0Cs3XArX7TClAMIdUNu6OtCq++7vz/6VZxXs1iI+Te6drUiGHS
         udP5xpeTtidtGMi0OMwisSQhvYW+SKebNXlvqPKEdQf4WEgUzTatnyFX1VkM0rt29sC+
         SfEdflW+WuFMew9WWI8rOV2GFAUpWL4IqgAIX6S6Jf4du1YsqK56HZLppIHBnRICUozX
         BDvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764772233; x=1765377033;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=13jA8V8frcQh+Kv0METbSRDdSF+gbSTvzPzmiYwzA0c=;
        b=kU6AmGATM1mZ/8ZcQhUPhPxZ2xtTVFzQJbnB7ON4nhQkWXIV7Oog5m9bBgVB0aHOqJ
         o+WkCtap3NYq+/Lej7w8/gFlCkf3+p+/r6ThHVOUL8VwMg/GqAoyjyku45kqWKf3k/z8
         NjbgLmoqPdI04l0SalHrLkxEP3lpqsFk+2pvGabMAQj2mPlMWyg2pkKJViTrjSrOSIb4
         iz/NRorxMbbli9PLetfml+CORUbk3M5XC46EBnLNQhtuA0jClgrDN/ZL4C39WdSsiKUa
         OQJoiYHDp8OWmj3jym+ONXKSud936fvlY+hf+iXRRn8YPo/zEBiZYvU/5ElrK9guYv86
         Ateg==
X-Forwarded-Encrypted: i=1; AJvYcCXwmPoDPsVr0CEsFDRjFVEppYHHJjKlRqFhLwUu488IhTgNhPV/oZwlwNK6oGibpQ9A8cJbJkA/EkAb@vger.kernel.org
X-Gm-Message-State: AOJu0YwUGai58sLgeOYRxTiqACvpU5ysXjRUkjNCfNaBZuQUeCFPvSxc
	GaEFD2/t36OwGNz7+KJL2TWODXgJF84g4SVxbxGOLgJtfXgvpUjMArP808m7QS6vbXPkKhM1vav
	ndSnahCPRrDK2T8d8zpz+PfzeTgB69bn/2mK9Uz7nOw==
X-Gm-Gg: ASbGncuv/avgvuwnupPdVPP0xkWU7eXokcAsmaSMVz86GX/gbZ10c5AUJa2VeOmz32W
	Q/Kov8yK+i8rynTtBXqeZIEd/7x/9OVlbQRBET2eehDPTEF/LWfhGVWl6r/eZVWonC/2dGBMpHv
	x/yqubWWMaUyW0yXE7dJeJyDj/El1lF3W66GIsf8dRjuVgGSfCyrwCuo4WOqRdc3vZVz4+k+RHW
	KgeH3309KQJVi8WMD/eKjKqPg6ijLew7mrYtzEnj5c/9tgxRgd/B+Dc1H3ZXC0nFAF3CkjULyPV
	JLIBighvJht+ubs9gUETwHWp9aXE
X-Google-Smtp-Source: AGHT+IG+dtM/tA0+7V4eO7aEdSCo29eBvV6UxX/J0OEYRSm8uig5vICwrUHf4L3vwGq/i2bZdmVG47rgb3kSBNUvnZQ=
X-Received: by 2002:a05:620a:2584:b0:8b1:c1d3:8e91 with SMTP id
 af79cd13be357-8b5e5b15b5bmr314414185a.39.1764772232991; Wed, 03 Dec 2025
 06:30:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250908-enable-byte-cntr-for-tmc-v6-0-1db9e621441a@oss.qualcomm.com>
 <20250908-enable-byte-cntr-for-tmc-v6-6-1db9e621441a@oss.qualcomm.com>
In-Reply-To: <20250908-enable-byte-cntr-for-tmc-v6-6-1db9e621441a@oss.qualcomm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 3 Dec 2025 14:30:22 +0000
X-Gm-Features: AWmQ_bnPEN-1MzILBf1Rpw3Tgp2yMP9ShncM3uAGstu8OXc6GMqh6xi_bqmbgKo
Message-ID: <CAJ9a7VitqEix7dumLq2ND=6+PU_eCkm8=YkHB0n7iHdJ8iKeVA@mail.gmail.com>
Subject: Re: [PATCH v6 6/9] dt-bindings: arm: add an interrupt property for
 Coresight CTCU
To: Jie Gan <jie.gan@oss.qualcomm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@linaro.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>, Jinlong Mao <jinlong.mao@oss.qualcomm.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, 8 Sept 2025 at 03:02, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>
> Add an interrupt property to CTCU device. The interrupt will be triggered
> when the data size in the ETR buffer exceeds the threshold of the
> BYTECNTRVAL register. Programming a threshold in the BYTECNTRVAL register
> of CTCU device will enable the interrupt.
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/arm/qcom,coresight-ctcu.yaml    | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> index 843b52eaf872..ea05ad8f3dd3 100644
> --- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> @@ -39,6 +39,16 @@ properties:
>      items:
>        - const: apb
>
> +  interrupts:
> +    items:
> +      - description: Byte cntr interrupt for etr0
> +      - description: Byte cntr interrupt for etr1
> +
> +  interrupt-names:
> +    items:
> +      - const: etr0
> +      - const: etr1
> +
>    in-ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>
> @@ -56,6 +66,8 @@ additionalProperties: false
>
>  examples:
>    - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
>      ctcu@1001000 {
>          compatible = "qcom,sa8775p-ctcu";
>          reg = <0x1001000 0x1000>;
> @@ -63,6 +75,11 @@ examples:
>          clocks = <&aoss_qmp>;
>          clock-names = "apb";
>
> +        interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
> +                     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
> +        interrupt-names = "etr0",
> +                          "etr1";
> +
>          in-ports {
>              #address-cells = <1>;
>              #size-cells = <0>;
>
> --
> 2.34.1
>
Not sure if you need me to review this purely DT hardware description
update but...

Reviewed-by: Mike Leach <mike.leach@linaro.org>

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

