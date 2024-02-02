Return-Path: <devicetree+bounces-38007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D2099847242
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 15:54:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4DEB4B273A6
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 14:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B95A147774;
	Fri,  2 Feb 2024 14:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gy6CI3ba"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB40B144627
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 14:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706885641; cv=none; b=Svp1jtZZmgxBfpl6zq6E7QaHcmWqoRDW4o1nd/4qAATkR5xiyrfvRMKoULvOw+tU70+GGOeUg0CcQ4FYoX5KtK1/XbUB12LSsiFhEUUU8pffbdk9bqHkvYRiFcIf0+90tAL6mCoNl8BezFAikPCkv75zAvbHA5CRhdY7dVuBrY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706885641; c=relaxed/simple;
	bh=stQxsvkV5cdC8fjrrEyx+K8ZARUrypTTRJCL41lbX0M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jAV2JWcw59VG0IW6JpWg2O3iVUCTmqKz2TyiQiMvDM0DplHzljBf5S1ALRX1KcKxpJLqef1pfUdLklH5DXCirUXUnGm3PL9l+QHVcQXOTWgbKenFed6ZSfA0JpgLovR9Ko7y3AjeHvNVIENsCSdnOo8uik26qb58E2d23JUumYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gy6CI3ba; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-604059403e9so22000867b3.3
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 06:53:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706885638; x=1707490438; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=02x6Zmjh1nlIs3J2kQ9IE2Yk4MS8HfXjLqkeUrush18=;
        b=Gy6CI3baGn00dSSshEYIU6S2y3gnUq/dSVu6gtz7HyfxEU2nCpHU8yBOT5dXR90KKT
         9mzcRfYTKwfH8cJaGpY5/h49CM94NHvOrGgzVA5S4AVXJxpL9QeNaHn/2wmdBL1/+lyn
         XjwsbvWH857X6o0MPVwLwvxpyntFTuy+AZ9YF04wpe58eBN0EVxMfQph9w/HkGlHurx/
         gFyjhlpNlfdWr25SKAT/zJ43dqO+IyM8HQ2qe310/JTwMtw96jSK5dHTwBji5WhAxZn2
         fK/QmoBAvOGdTI95GNPjTjSk4zu02d3PTqvA94Q3IZb/w928scoZfP0inXH5pGsg71uG
         9Dfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706885638; x=1707490438;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=02x6Zmjh1nlIs3J2kQ9IE2Yk4MS8HfXjLqkeUrush18=;
        b=dl4hnKRPlCmURcXiREOfo+0/mmN4Lz4VY1FWleicO/kR7wJTZVKfXJR7B7a55YUXY8
         k37WZf+H+k60/YZblnGE1xlg1dlqmvaEJdGa8za4J9Rx+pIZRjPkx7nbTe9AlD4loAsB
         NyR4fKBETjNeerf36TUqcslyZtjH/MDOl5JJo+2wOPhdmpT/WzgycegR6domRF4uRaxi
         CaL/fmIhaJRy+gCHLjaVG4ndM8CiGVZbOupwqnMk72bsq/+e/9YyZvbrE5i0+riwkAUk
         dOTs3N63GLwFlvc2Q6w0pG2nCJZ/84crCJn+/vkxFTYAGQcmC78zGZTKzz1Cb+Kuqmy7
         DU4Q==
X-Gm-Message-State: AOJu0YwvJ3Uevi1fEqANqkevgmZYTAs64n2JIQIr8iIJM9Qhb5woTGU8
	Ojxngu7WBlKDvqjU9QLCnHzqdd2RM7teCOzMd2Jkl69zBJB31MQhPINgWmYveNQVU5sBONTS6Nm
	gMpQHURyH/RtuAoDAHd8Xp02YbvNfc4D2zTN32A==
X-Google-Smtp-Source: AGHT+IE6sjNAcOWYdKgjOqY9KuIeOrTwHrwvcIYvXpvBgU/sTIX2miEI6w9v/ViAevMcV+0TKzYEUQk9EKQbpQmXFPg=
X-Received: by 2002:a81:6d8f:0:b0:5ff:4959:1da8 with SMTP id
 i137-20020a816d8f000000b005ff49591da8mr4828166ywc.50.1706885637942; Fri, 02
 Feb 2024 06:53:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240202133638.4720-1-quic_wasimn@quicinc.com> <20240202133638.4720-4-quic_wasimn@quicinc.com>
In-Reply-To: <20240202133638.4720-4-quic_wasimn@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 2 Feb 2024 16:53:46 +0200
Message-ID: <CAA8EJppnNZOWN5F0fOKhUGN-pk3T9L+kOd-AiNO0tcDNm8Bbxw@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Add initial support for rb5gen2 HDK board
To: Wasim Nazir <quic_wasimn@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 2 Feb 2024 at 15:37, Wasim Nazir <quic_wasimn@quicinc.com> wrote:
>
> RB5gen2 hardware development kit is based on QCS8550-Rb5gen2 SOM
> for IOT solutions.
> This initial version describes VPH_PWR, UART & USB3.1.
>
> On-board PMICs:
> - PMR735D
> - PM8010
>
> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
>
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 6fdde64d7540..8840b219d6d5 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -93,6 +93,7 @@ dtb-$(CONFIG_ARCH_QCOM)       += qcs404-evb-1000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qcs404-evb-4000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qcs6490-rb3gen2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qcs8550-aim300-aiot.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        += qcs8550-rb5gen2-hdk.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qdu1000-idp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qrb2210-rb1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qrb4210-rb2.dtb
> diff --git a/arch/arm64/boot/dts/qcom/qcs8550-rb5gen2-hdk.dts b/arch/arm64/boot/dts/qcom/qcs8550-rb5gen2-hdk.dts
> new file mode 100644
> index 000000000000..6f4c68402823
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcs8550-rb5gen2-hdk.dts
> @@ -0,0 +1,136 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +/dts-v1/;
> +
> +#include "qcs8550-rb5gen2.dtsi"
> +#include "pm8010.dtsi"
> +#include "pmr735d_a.dtsi"
> +#include "pmr735d_b.dtsi"
> +
> +/ {
> +       model = "Qualcomm Technologies, Inc. QCS8550 RB5Gen2 HDK";
> +       compatible = "qcom,qcs8550-rb5gen2-hdk", "qcom,qcs8550-rb5gen2",
> +                       "qcom,qcs8550", "qcom,qcm8550", "qcom,sm8550";
> +
> +       aliases {
> +               serial0 = &uart7;
> +       };
> +
> +       chosen {
> +               stdout-path = "serial0:115200n8";
> +       };
> +
> +       pmic-glink {
> +               compatible = "qcom,sm8550-pmic-glink", "qcom,pmic-glink";
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               connector@0 {
> +                       compatible = "usb-c-connector";
> +                       reg = <0>;
> +                       power-role = "dual";
> +                       data-role = "dual";
> +
> +                       ports {
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +
> +                               port@0 {
> +                                       reg = <0>;
> +
> +                                       pmic_glink_hs_in: endpoint {
> +                                               remote-endpoint = <&usb_1_dwc3_hs>;
> +                                       };

SS lines unconnected?
SBU is unconnected?

> +                               };
> +                       };
> +               };
> +       };
> +
> +       vph_pwr: vph-pwr-regulator {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vph_pwr";
> +               regulator-min-microvolt = <3700000>;
> +               regulator-max-microvolt = <3700000>;
> +
> +               regulator-always-on;
> +               regulator-boot-on;
> +       };
> +};
> +
> +&apps_rsc {
> +       regulators-0 {
> +               vdd-bob1-supply = <&vph_pwr>;
> +               vdd-bob2-supply = <&vph_pwr>;
> +       };
> +
> +       regulators-2 {
> +               vdd-s4-supply = <&vph_pwr>;
> +               vdd-s5-supply = <&vph_pwr>;
> +       };
> +
> +       regulators-3 {
> +               vdd-s1-supply = <&vph_pwr>;
> +               vdd-s3-supply = <&vph_pwr>;
> +               vdd-s4-supply = <&vph_pwr>;
> +               vdd-s5-supply = <&vph_pwr>;
> +               vdd-s6-supply = <&vph_pwr>;
> +       };
> +
> +       regulators-4 {
> +               vdd-s1-supply = <&vph_pwr>;
> +               vdd-s3-supply = <&vph_pwr>;
> +               vdd-s4-supply = <&vph_pwr>;
> +               vdd-s5-supply = <&vph_pwr>;
> +               vdd-s7-supply = <&vph_pwr>;
> +       };
> +
> +       regulators-5 {
> +               vdd-s1-supply = <&vph_pwr>;
> +               vdd-s2-supply = <&vph_pwr>;
> +               vdd-s3-supply = <&vph_pwr>;
> +               vdd-s4-supply = <&vph_pwr>;
> +               vdd-s5-supply = <&vph_pwr>;
> +               vdd-s6-supply = <&vph_pwr>;
> +       };
> +};
> +
> +&pm8550b_eusb2_repeater {
> +       vdd18-supply = <&vreg_l15b_1p8>;
> +       vdd3-supply = <&vreg_l5b_3p1>;
> +};
> +
> +&uart7 {
> +       status = "okay";
> +};
> +
> +&usb_1 {
> +       status = "okay";
> +};
> +
> +&usb_1_dwc3 {
> +       dr_mode = "otg";
> +       usb-role-switch;
> +};
> +
> +&usb_1_dwc3_hs {
> +       remote-endpoint = <&pmic_glink_hs_in>;
> +};
> +
> +&usb_1_hsphy {
> +       vdd-supply = <&vreg_l1e_0p88>;
> +       vdda12-supply = <&vreg_l3e_1p2>;
> +
> +       phys = <&pm8550b_eusb2_repeater>;
> +
> +       status = "okay";
> +};
> +
> +&usb_dp_qmpphy {
> +       vdda-phy-supply = <&vreg_l3e_1p2>;
> +       vdda-pll-supply = <&vreg_l3f_0p88>;
> +
> +       status = "okay";
> +};
> --
> 2.43.0
>
>


-- 
With best wishes
Dmitry

