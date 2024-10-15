Return-Path: <devicetree+bounces-111451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C8F99EE15
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 15:44:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 26F271F2592B
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 13:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 988171D5179;
	Tue, 15 Oct 2024 13:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xv5nA63r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CDFD1C4A10
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 13:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728999680; cv=none; b=WP2kF3dr0xbLSQewlOS0N+f63snUEkg03IHY3kUbQLSDowdSY0wi5wzsV4HxLdoABvDu5YyM/Vt6IZN5YROqLSJgHiY+/uQ/ySxD61VxxhnPLWoCtnMKObVMm3qUuyxFBfxfe59G8i+F20DQMYNX4gxpKcCmlYqFGVyjxJngcCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728999680; c=relaxed/simple;
	bh=NcWYEKZ0mNbpLq6dyDer/LWrifpnpWB7Y3966XDJ/wA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=omJkZ7UFClDLKeZsMinRP1tBT6TcfkAgyFauKAq5ETvRhin7Fa+kfj8Ik6A8m0tekKhshVaz/DOFFmliCq4lN73KRkIXDEvJj6UKZdZN7QX8avYMWGZkS6XPsEvJAbHAP33XiRcPvgFLk7J9dM4KHmWchG8u3POpipScpzHH8yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xv5nA63r; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-37d4b0943c7so3573011f8f.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 06:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728999677; x=1729604477; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XsSrcJxX6OwEegY1JXHPc/11aCkjoF3zf5gDAHVfmdQ=;
        b=xv5nA63rnmeLDUOoxn14HgMugSLsVRq/BiUK53IFB1nubsWtE2mkFY4l5V/FaVtGMK
         bQA1BW1wsfgvbqzkiLLtrpeU2X+as4BkgjnRMptxYnu/5FKNeITCX8tW8lHf+XWcKrW2
         CSJ2UTXBVOBlljI/TWqgWvmICXRBjuBFsxunCmeUC8Cg4B7TheQ4I3fJ7puB9Kg1pwew
         K6C7kZLGTMREUcZLt4J0B6y6kn0/AC+c10Sxl+9v46ly1lfjYAQZqDxDF8X5fNxMpSxx
         EI0ScXr8mPEy2CwArbnuQXfjuKP4trBdYU6687NvjaFumTE4dXIR1Pv78z8CHb5X60DH
         kZEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728999677; x=1729604477;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XsSrcJxX6OwEegY1JXHPc/11aCkjoF3zf5gDAHVfmdQ=;
        b=g6UlX6+11khidiElYlP5+BlYxSihPM34zfyMLMb7rEZhIiJEqCOubc3GTvTn3nrRtO
         Th3/gTE11ml75yKJ7KInIdy442dHhBZnoaFvcnwNvuh7dV0HBWdLJoELpIs5/ONdNzT+
         YQGzJx2qAmhSG6N6YWb9l4/hHtQ6i7Axs9f6b3nh4fnNyS62dhqw5AHvnb9ZfxVsro2m
         ugdVoEtQnafe1iLYtJpcOMOS2oKNFOIfsFpkcA3TaQ1GUE+0NBJGf1Npyz41xwjllPx5
         /ltdGxkXMHh3bDtxRt2nd4AnEnydi/VCF3M0s7djc20t0Z+/izFqXqyyJYDje5FoLA3H
         j2ew==
X-Forwarded-Encrypted: i=1; AJvYcCU5lbI4EzYsRpR7Ewo4rTGNUqxk3t4S3K4RISUTcL2TvozVx2o2I5ZjMLdSrIv4EWoLG6zac7KO8Uuc@vger.kernel.org
X-Gm-Message-State: AOJu0YwuMrA1M9xHfwoE1DlXGKOAnmqe41Yf+hDK0cULFC11bUbD7X1z
	lNaMFp8/NxB/PpF1qOnmlTl2IdRLNBhdWUGQanh76ahbsbMjLS8NRF7oi3dvBec=
X-Google-Smtp-Source: AGHT+IEklO/X1U+HmvWaJ8Xk28XQymJwmFZZmTsBBA5zGOg7yYQr1mqR7XujPRO2k5vROX8xzAbGiQ==
X-Received: by 2002:a5d:634b:0:b0:37d:47ee:10d9 with SMTP id ffacd0b85a97d-37d86c09fa8mr263727f8f.34.1728999676942;
        Tue, 15 Oct 2024 06:41:16 -0700 (PDT)
Received: from linaro.org ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fa8b15dsm1616831f8f.47.2024.10.15.06.41.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 06:41:15 -0700 (PDT)
Date: Tue, 15 Oct 2024 16:41:13 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: x1e80100-crd: describe HID supplies
Message-ID: <Zw5w+eCBMQu3CSuz@linaro.org>
References: <20241015122427.15995-1-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241015122427.15995-1-johan+linaro@kernel.org>

On 24-10-15 14:24:27, Johan Hovold wrote:
> Add the missing HID supplies to avoid relying on other consumers to keep
> them on.
> 
> This also avoids the following warnings on boot:
> 
> 	i2c_hid_of 0-0010: supply vdd not found, using dummy regulator
> 	i2c_hid_of 0-0010: supply vddl not found, using dummy regulator
> 	i2c_hid_of 1-0015: supply vdd not found, using dummy regulator
> 	i2c_hid_of 1-0015: supply vddl not found, using dummy regulator
> 	i2c_hid_of 1-003a: supply vdd not found, using dummy regulator
> 	i2c_hid_of 1-003a: supply vddl not found, using dummy regulator
> 
> Note that VREG_MISC_3P3 is also used for things like the fingerprint
> reader which are not yet fully described so mark the regulator as always
> on for now.
> 
> Fixes: d7e03cce0400 ("arm64: dts: qcom: x1e80100-crd: Enable more support")
> Cc: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 34 +++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> index 10b28d870f08..4ab7078f76e0 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> @@ -288,6 +288,23 @@ vreg_edp_3p3: regulator-edp-3p3 {
>  		regulator-boot-on;
>  	};
>  

[...]

>  
> +&pm8550ve_8_gpios {
> +	misc_3p3_reg_en: misc-3p3-reg-en-state {
> +		pins = "gpio6";
> +		function = "normal";
> +		bias-disable;

Maybe output-enable and input-disable are needed. Can you please check?

Otherwise, LGTM:

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> +	};
> +};
> +
>  &pmc8380_3_gpios {
>  	edp_bl_en: edp-bl-en-state {
>  		pins = "gpio4";
> -- 
> 2.45.2
> 

