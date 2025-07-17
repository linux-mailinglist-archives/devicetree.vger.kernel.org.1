Return-Path: <devicetree+bounces-197417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F7BB09181
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 18:14:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8727D16B2BB
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 16:14:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A465E2F94AF;
	Thu, 17 Jul 2025 16:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YFzuQ4w2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B826B13AF2
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 16:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752768890; cv=none; b=YYDvRmDffDiLb4CN6tLrIMZfFo6WBDDVxFchFNgI19U8CHWdb8O+PgIMXLzlWVcIQaUXfBW1yB7jyVHZB6XSoAPcq8ynvyEk0Jqp1o9m6HF3Pqk4moYiDdFf97pG6zPkK+45NuVPzp0uG5lU91mAP0kd6YnvZZHikJ3Z9f0Z6sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752768890; c=relaxed/simple;
	bh=vnrfW7MDEtPXiQ+PeefY1maBKqzCBMejc315uPOTQ/g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=akhaNErIOzj9l6vzFY4VRQlVGG96gSukpb7FtqCD3aEt3ciX+jFObym6003tKIOhVFbjPYxOLpf+HWv+VczJ+xlOjh3p9vFHitQGJtGR2z3cvUw68u6JF5PDMQgEHjvACHCo5MojtEgaxwAT/PcoMA2JEIGJruQgBugqjoyrhs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YFzuQ4w2; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45617887276so8482725e9.2
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 09:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752768887; x=1753373687; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XLAwLeBG8xp4dc08BrzRdbHpWuQPpe2nJ16RFlGB0IQ=;
        b=YFzuQ4w2OoglQFYkCU/YjBjgUrsfkIHHBeozkhDB0IoMkr9vvMauERIWtb5tJrPKNl
         Gri/Z4WkGbJf/CfVEwd+6JsFxL/+uOhqxuwcErzq2UqAP5RJMH+UB39rZ2RMLvF8xz+F
         1TZvEuH6FcpeHuIgqRN+AhtALm07OrvQ2NAnrUCZ6wzUeyfPztI7O5S0fgnqSvxWRPy9
         kgIW4qjPZ5mWCw9YQCkYtE2UF1yEySAX+fSNVJ6uH0fRjtoN8vobU2Qzi8kkl7SxrBOk
         UekQqdzYxjJM5wZd2YMDAX8fAsOXch49yGh7qzAUUtJAy6byaeLEl8xQxcpD3qtzFN/A
         YqOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752768887; x=1753373687;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XLAwLeBG8xp4dc08BrzRdbHpWuQPpe2nJ16RFlGB0IQ=;
        b=jc9lf/POm1lb0YCAcAMSs650PZ1w36JqsqBgsFT+5sF7zd8GVIz38Oyg3JMQLWynwY
         zb2HIp7i9uf903d+ezSYsudb+IO/+yhUoNnu9+A3S1FlZK4+lGKcr0d9Pqe5BiYZbr8v
         xsC/RRF9QUukTE0sYBC7wAPbnoAGll2B0umt6D6y9TPwJDQ8YjKk5PHNvmp2Xx6cFK8h
         3gI/Kuv4pmCK810+PfCSpmlNVoUqceL1nln3j6dO0IZGT8aY9JWqP1+zd9O3a/H8lGdk
         r5fAYW0ihCBEUM7XxBiM/AMADO8DBX7cCHWKXOwrkQc8Lt3NHPpiYmvr7Yuqod0hlaf+
         LWJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWn6BgtmZ/UifoUO1iclCWG3JJt17StApI2ZqoHefYc8pIa46LGS3MlA9K08r1c+NHPeUqYOZyzWFqt@vger.kernel.org
X-Gm-Message-State: AOJu0YxBb26jzFI3fFs84vN4gawqTSTpMzEx/E0YHtJQxVcxB91YZe1k
	Ml2lF7lPZmudiMatf5M77Q8ZSFWSJCHNniZYICNvqSMaU9C/1osqvK5qHGUifCiyLfA=
X-Gm-Gg: ASbGncuVuSAn05yDV9GShTla/j9N93zG6+ejYNiVgAtab5e22ZERCjzTbPTdxUsEXKi
	SLNoMqkpS04c46oJzrm2yBKnMK5EM9wZdsC/S0tvs2tS+ErMMsyX0++9Hz4zbaSAW+mjy1GdWDi
	4liSkAraP4QVq4w1dHURa2pwBJW72gTIdKFLAJ6ztqdYlbPzvZ5z6EyMq5mtx+8E/QJdQ5ELsSe
	pX4dSzKeO+hfHLWQ5j52ktP6ZTRt5lAqDi7EXytHZ2gwdzJhYnoCBf0iTJqdgI7rHb8WWS9MquD
	yw0VfbM8lhPPHzqHZvGKIXGrF4zKMrmA4QYLGPyrgF8+PdQ5kPx378vPAlgOl3m0TNFXHrAVIQX
	7E/J1ppNAXEVtiZg1IdoQci1kvj5dDaI0vg==
X-Google-Smtp-Source: AGHT+IG8X08yDtcJjXlqFt3MzTuc0Qxi/sS6hoizIgQ85eHNFJWG4UtueCANjketu6w7VGqk5gFBWw==
X-Received: by 2002:a05:600c:314f:b0:450:d3b9:4ba4 with SMTP id 5b1f17b1804b1-4562e34ad97mr80610545e9.2.1752768886828;
        Thu, 17 Jul 2025 09:14:46 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:79a0:386f:8c5a:9506])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45634f4c546sm27013375e9.7.2025.07.17.09.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 09:14:46 -0700 (PDT)
Date: Thu, 17 Jul 2025 18:14:41 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
Message-ID: <aHkhcUVBnrwadKfa@linaro.org>
References: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
 <20250716-hamoa_initial-v1-3-f6f5d0f9a163@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250716-hamoa_initial-v1-3-f6f5d0f9a163@oss.qualcomm.com>

On Wed, Jul 16, 2025 at 05:08:41PM +0800, Yijie Yang wrote:
> The HAMOA-IOT-SOM is a compact computing module that integrates a System
> on Chip (SoC) — specifically the x1e80100 — along with essential
> components optimized for IoT applications. It is designed to be mounted on
> carrier boards, enabling the development of complete embedded systems.
> 
> This change enables and overlays the following components:
> - Regulators on the SOM
> - Reserved memory regions
> - PCIe6a and its PHY
> - PCIe4 and its PHY
> - USB0 through USB6 and their PHYs
> - ADSP, CDSP
> - WLAN, Bluetooth (M.2 interface)

There is no WLAN in here, it's part of PATCH 4/4 as far as I can tell.
Move it to changelog of PATCH 4/4?

> 
> Written with contributions from Yingying Tang (added PCIe4 and its PHY to
> enable WLAN).
> 
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 607 ++++++++++++++++++++++++++++
>  1 file changed, 607 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> new file mode 100644
> index 0000000000000000000000000000000000000000..dad24a6a49ad370aee48a9fd8f4a46f64c2b6348
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> @@ -0,0 +1,607 @@
> [...]
> +&remoteproc_adsp {
> +	firmware-name = "qcom/hamoa-iot/adsp.mbn",
> +			"qcom/hamoa-iot/adsp_dtb.mbn";
> +
> +	status = "okay";
> +};
> +
> +&remoteproc_cdsp {
> +	firmware-name = "qcom/hamoa-iot/cdsp.mbn",
> +			"qcom/hamoa-iot/cdsp_dtb.mbn";

You say this SoM can be used to build "complete embedded systems", are
you sure they will all use the same firwmare signatures?

If not, this should be in the device-specific DT (i.e. the carrier board
in your case).

> [...]
> +&usb_1_ss0 {
> +	status = "okay";
> +};
> +
> +&usb_1_ss0_dwc3 {
> +	dr_mode = "otg";
> +	usb-role-switch;
> +};
> +
> +&usb_1_ss0_hsphy {
> +	vdd-supply = <&vreg_l3j_0p8>;
> +	vdda12-supply = <&vreg_l2j_1p2>;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_ss0_qmpphy {
> +	vdda-phy-supply = <&vreg_l2j_1p2>;
> +	vdda-pll-supply = <&vreg_l1j_0p8>;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_ss1 {
> +	status = "okay";
> +};
> +
> +&usb_1_ss1_dwc3 {
> +	dr_mode = "otg";
> +	usb-role-switch;
> +};
> +
> +&usb_1_ss1_hsphy {
> +	vdd-supply = <&vreg_l3j_0p8>;
> +	vdda12-supply = <&vreg_l2j_1p2>;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_ss1_qmpphy {
> +	vdda-phy-supply = <&vreg_l2j_1p2>;
> +	vdda-pll-supply = <&vreg_l2d_0p9>;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_ss2 {
> +	status = "okay";
> +};
> +
> +&usb_1_ss2_dwc3 {
> +	dr_mode = "otg";
> +	usb-role-switch;
> +};
> +
> +&usb_1_ss2_hsphy {
> +	vdd-supply = <&vreg_l3j_0p8>;
> +	vdda12-supply = <&vreg_l2j_1p2>;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_ss2_qmpphy {
> +	vdda-phy-supply = <&vreg_l2j_1p2>;
> +	vdda-pll-supply = <&vreg_l2d_0p9>;
> +
> +	status = "okay";
> +};
> +
> +&usb_2 {
> +	status = "okay";
> +};
> +
> +&usb_2_dwc3 {
> +	dr_mode = "host";
> +};
> +
> +&usb_2_hsphy {
> +	vdd-supply = <&vreg_l2e_0p8>;
> +	vdda12-supply = <&vreg_l3e_1p2>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp {
> +	status = "okay";
> +};
> +
> +&usb_mp_hsphy0 {
> +	vdd-supply = <&vreg_l2e_0p8>;
> +	vdda12-supply = <&vreg_l3e_1p2>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_hsphy1 {
> +	vdd-supply = <&vreg_l2e_0p8>;
> +	vdda12-supply = <&vreg_l3e_1p2>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_qmpphy0 {
> +	vdda-phy-supply = <&vreg_l3e_1p2>;
> +	vdda-pll-supply = <&vreg_l3c_0p8>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_qmpphy1 {
> +	vdda-phy-supply = <&vreg_l3e_1p2>;
> +	vdda-pll-supply = <&vreg_l3c_0p8>;
> +
> +	status = "okay";
> +};
> 

Assuming the USB ports are located on the carrier board and not the
SoM(?):

Are carrier boards required to make use of all these USB
ports/interfaces? In my experience it's not unusual that embedded
carrier boards use only the functionality that they need. Maybe this
should just set the common properties and enabling individual ports for
PCIe and USB should be up to the carrier boards.

Thanks,
Stephan

