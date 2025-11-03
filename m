Return-Path: <devicetree+bounces-234466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A49EC2D572
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 18:04:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 215C71887D77
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 17:02:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58EDB31C59B;
	Mon,  3 Nov 2025 17:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D69JAPRU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80BF631BCB3
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 17:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762189228; cv=none; b=ZOb4iZTcN5aAEmfYGIoMUnUCwstQn9oPmPxtyVDlPryLNpKXrfMf5KH5fQ87nH32Bg/y1ndrTVvqCEfxLqF85YVHxXRF4en3mNuxRvHTn0bIxHAu1BKH9VvogIivWO3kMhX/AmrSzvjyEjBJ2IDlB1Pz6RDJb58zI4YxwilBzxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762189228; c=relaxed/simple;
	bh=eDMngs17dgbpDGMncsMV59kp9bJ9LsOsJv1AKcqo4oA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cz6ToVTG6YwNT00bd4siQh5VkQpjG+PD3vyN8qFF8pohGGK1CTrpECYObvGRiRJxS5lbLAsU6z7ARf6OQEMXroj/cQNwVAVH41R35+IHnbnaEGfoFsENvve7+jR/I912AI+6AW/xkb9tgkt8aorHIFV8b1N2s6iMepaDZu7mxmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D69JAPRU; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47721293fd3so25388305e9.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 09:00:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762189224; x=1762794024; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=e8+SCTcWg0iEZ5Ozc/rYo37su+YkvO2pg3K/UcQo9S0=;
        b=D69JAPRUGqGkhFpL8pK3uQO+DkrZWS2Rje2RL3faVoO4Kpd8TtqxkzEK/5H3QHFAj/
         o7RX9BcN8MxAo70Su7ezh8IcwAj2PzC0R9jzEKiYTiMA5l7FHozKiSODdGzHH/iO26Dl
         m3iT0Ytvli49we0woJKNRZ+mD2Yk/fsQaUTo+jkdFwtOl3GAwXUlzuOk0BkJWoQNbZqr
         86f52n9c+/L0FRhD3x7xLyLKSzGmZJrQar8WZnJTAGX/wlmQMrtNlh3HqEmkGOhbnIy8
         IrLVz7uRZXKA+1CD3Oj9HDeHX6SrTGWIXG/NVgSI+NIhgfBe+yckQG0PtbDu71u5cVFu
         giAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762189224; x=1762794024;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e8+SCTcWg0iEZ5Ozc/rYo37su+YkvO2pg3K/UcQo9S0=;
        b=TUiiN1Rdp9xpeb1cF4gVmRVNS4aMtwyMLnLRc2beS5Fpi23t4XcWnVUD+O6jiNBUqG
         nOFzMPuDsOXnn6hvKuA6jFU1AFQLbmofb8UhG3c5pB3rljfl1D0xVp9Qkds5rvL3/aha
         bQ841/80n6OJUbcUa7E7CW/UgOofgFPFb/WbFOSaol7KQmJxyzhzZ2w6bqzb2UxMcJT6
         zEJ1XK4xCxe+/dC7eVPweCcWTs/Dz6ega60k6xmgNb84QYbce7Z9ZxKLlRDbKDZjjc1Q
         fVFu/3IAOPUafRcvHi3gYkeywcZLN0Dq39j+u/W6XrYvUozvUuJaFKE9YJWXyTOUxXNQ
         iQSw==
X-Forwarded-Encrypted: i=1; AJvYcCXSyNmEheExnsQTSA3SnGy+zuWyjn2jrPI42R0DA2PaAjVQKhN5T6vc8tBqocyAq3dTaQQOJWtxqTp/@vger.kernel.org
X-Gm-Message-State: AOJu0YxbQVcZmdmV1yPJ04pwrXTpwPHWEdoNSdRNTNlA6nQuv0nFOWd9
	ta3EF0Cr+N7KiTegxDfZ+7VUXO7VmSq9rZOG28LvLPgL9uboTtfGZxRV3aIwZ2DjPF0=
X-Gm-Gg: ASbGncvGYXVySsQG/7Ox2Sm9hxBdHTG9l6pw82XFxJWaoephjogSMRwPXCOdfNovdmP
	C6U5FBDR2BYm2UG6kOTHY48aPagZY52I0AZzqPPJTF2T6U5Zv+ZNplWwqjgMHNGkvBR7oyDWDul
	0Fcv08cHrzaewV0vyMm+azPXOMlaf13Mzsr2jRtgQF3wOlJYvdR8URqA+IArt7768+49trOjOW6
	JPzxN0bgE1GrWrBxQMiNINHcl/Pn+VKciVFPPrYczFXZZNZtJqmzsD2rWIgR15pAMLFSIQT3d3P
	5zo96pBTDZvEj2lbLXjPsa/nR5wD8A90Rih21Xd0BQNKTy4F0mMwo9cFB/UApPjSDAn/FU4kRvR
	w6uihdgAV+h7tthuC01H6wvicHp6ALoF4MMv+Zgu7GN7M+0qtPXDNEm3soiSo/pSqCDyMJdeR0D
	lLNE9/9kw=
X-Google-Smtp-Source: AGHT+IELaFHSzBiO9AXPyBzLS0c7LY682782xN/+qHy88yBVFrN1pt7Y6DspDHfXPEXO6vZLrDUSeg==
X-Received: by 2002:a05:600c:548f:b0:477:25c0:798c with SMTP id 5b1f17b1804b1-47754c46ac2mr951505e9.20.1762189224236;
        Mon, 03 Nov 2025 09:00:24 -0800 (PST)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429ce80df16sm10787228f8f.2.2025.11.03.09.00.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 09:00:23 -0800 (PST)
Date: Mon, 3 Nov 2025 19:00:21 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: Re: [PATCH 23/24] arm64: dts: qcom: glymur: Add USB support
Message-ID: <bfi6mobf77gevht5em4kzp4lylvcrxttfyptm77itqqhz6sskq@jq7w5jvjncou>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-23-24b601bbecc0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-v3_glymur_introduction-v1-23-24b601bbecc0@oss.qualcomm.com>

On 25-09-25 12:02:31, Pankaj Patil wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> The Glymur USB system contains 3 USB type C ports, and 1 USB multiport
> controller.  This encompasses 5 SS USB QMP PHYs (3 combo and 2 uni) and 5
> M31 eUSB2 PHYs.  The controllers are SNPS DWC3 based, and will use the
> flattened DWC3 QCOM design.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 243 ++++++++++++++
>  arch/arm64/boot/dts/qcom/glymur.dtsi    | 569 ++++++++++++++++++++++++++++++++
>  2 files changed, 812 insertions(+)
> 

[...]

> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index 8a563d55bdd4902222039946dd75eaf4d3a4895b..c48d3a70820e551822c5322761528159da127ca6 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi

[...]

> +
> +		usb_1_ss1_hsphy: phy@fdd000  {
> +			compatible = "qcom,glymur-m31-eusb2-phy",
> +				     "qcom,sm8750-m31-eusb2-phy";
> +
> +			reg = <0 0x00fdd000 0 0x29c>;
> +			#phy-cells = <0>;
> +
> +			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
> +
> +			status = "disabled";
> +		};
> +
> +		usb_1_ss1_qmpphy: phy@fde000 {
> +			compatible = "qcom,glymur-qmp-usb3-dp-phy";
> +			reg = <0 0x00fde000 0 0x8000>;
> +
> +			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>,
> +				 <&tcsrcc TCSR_USB4_1_CLKREF_EN>;

So I think this clock is actually needed, but I think it should
replace the RPMG_CXO_CLK above and then no need for "clkref" below.

The reason this works is because the bi_tcxo is already the parent of
this ref clock.

I did something similar on x1e just now:
https://lore.kernel.org/all/20251103-dts-qcom-x1e80100-fix-combo-ref-clks-v1-1-f395ec3cb7e8@linaro.org/

Still don't get why the SS0 doesn't have/need such a ref clock.
On both hamoa and glymur.

