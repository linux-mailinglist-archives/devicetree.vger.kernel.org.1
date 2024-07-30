Return-Path: <devicetree+bounces-89371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65662940E85
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 12:00:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D6B41C2320D
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 10:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 344FB198827;
	Tue, 30 Jul 2024 10:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SQrgTGaQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65498195F28
	for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 10:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722333622; cv=none; b=snZEDeD7jfLd6+vAq8w8+3y0O4dHasWFhnLx1v4OjjS5HhB/pa99b4EXTuQBc+KJahODH1+5DfP9h0JTbHlCGnRJ7EeK0hTXEQbWl7IDnGBgeWNicaHfLj5ezEr+z5Jc/Yu/gwjqPXjP+lxBnkaoxlqmRK9+X4Z5P6wcX6DX/U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722333622; c=relaxed/simple;
	bh=ui59s49kbSzOwwvEFQmgYxVMb+8J5SZQRA0nX9jtzyI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z8q0t9nVtmKNDkHaO1FSdAZTDUom3eBmJnhhXhqkmdyBid38z6n5fWUzrjiYQcBmqWngohyiTB10UcDhbzsLm74gqm8dHcDQT8EsoOZGO8hgdBUID7ys7b2wUf/QZVLiLuQK84TO5jGa1QsJUIWGpK088ygLKYOz9lkg3H0uI6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SQrgTGaQ; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2eeb1ba0468so68983091fa.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 03:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722333617; x=1722938417; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1NIt1Etrxc7iUD+v3tWQ2w7Bs1xfSMNhKNXoOLhNK3Y=;
        b=SQrgTGaQY80LD6vD6/o/UwRqy+/VsIotyKINhORmvLUr7fdqfJc37anjCVu9XYPzh4
         vS8jv8gUjkC7RTZy3q4uLmSzLZX9+PmerGqlW70H9V01jKmCHQHOiDmAVVmJh7KQOHrV
         NIbEiJz8jk4KeDgI/m+9Dn66dvKJTW0T6cpuRanwV2u/kDS40nH0wF3o8atyQjuDh21j
         nGvZ1VP94chdb+r0Sa5O+FgPbXmu28/oeHWRvWWC2CsMOwhP1Nc7cn2dN/vzpfw6qaIW
         GGXvwzOT02VvKAD6R8PrtWHxRy73nWhYQf+GlsBtm8FXx9oTlzqwbbjMtN/5lokbnbGy
         yIhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722333617; x=1722938417;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1NIt1Etrxc7iUD+v3tWQ2w7Bs1xfSMNhKNXoOLhNK3Y=;
        b=BYGEQcm9ZTy1gHypmIv5HBDEguqJ4NR0RyLrB/DiamluVH230XmDnJz0nhTyySBWmI
         PIF0JDrNSXpRw0lw094tHbXEiS+vPk6Uf7ae9aH4D7o3QlrCi1i4jdeH2KEUQebYEZC+
         2QMFQmt6K3THYSOj4bVn9rM3HuQVpMaEPQGor+x25narv2txSlD+hykBD+f5+RSLn2vd
         a3bNJH5GrosftS62/X9UT9qX/nQw0dnaBmvpZ1YLgnIqXSSzyJhoM+I9kXpJCT9xJ66h
         V2GtuHVMEQDp8fhqOATPzcb01H5BhLINJP5Xx8N0Mt2ASQuGnOM8TjwTyubQbZrFV4vn
         Ansg==
X-Forwarded-Encrypted: i=1; AJvYcCXYvrQO+G0bc3k5nP8sZTVhh4jiSXRnNzm+EzfCGiMcc9qbIhcat7yr39I8k5TFmvb8ThG3IeOvLddUYayKGiM+1fErk5E5jKhxaQ==
X-Gm-Message-State: AOJu0Yzey7MWMNnYZFzr46I9PqvoS9rFw3KvVvqkTTQSliwhkYXb6bKm
	pjWbzvQx3at4thIuOyr1AcN5/R9mgZhmX03oxr1+Zt5wrm3xlVXcb3KUd06rgis=
X-Google-Smtp-Source: AGHT+IHY67PLRpoblhniT8LZ0mIR8njEuCwBotLAp/dSjdAekUYvjbCG2ekFkxI23FvMBZxtJ+naXA==
X-Received: by 2002:a2e:2201:0:b0:2ef:2b05:2ab3 with SMTP id 38308e7fff4ca-2f12edef6f0mr69578091fa.10.1722333617551;
        Tue, 30 Jul 2024 03:00:17 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff1f:b280:8303:a4e9:79c5:e939])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ac6339bcb3sm6939494a12.5.2024.07.30.03.00.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 03:00:17 -0700 (PDT)
Date: Tue, 30 Jul 2024 12:00:13 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Rob Clark <robdclark@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Clark <robdclark@chromium.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: x1e80100-yoga: Update panel
 bindings
Message-ID: <Zqi5rUQqWa9wZCva@linaro.org>
References: <20240729205726.7923-1-robdclark@gmail.com>
 <20240729205726.7923-2-robdclark@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240729205726.7923-2-robdclark@gmail.com>

On Mon, Jul 29, 2024 at 01:57:25PM -0700, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
> 
> Use the correct panel compatible, and wire up enable-gpio.  It is wired
> up in the same way as the x1e80100-crd.
> 
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> Note that the power-source differs from the CRD.  Figured that out by
> diffing $debugfs/gpio.
> 
>  .../dts/qcom/x1e80100-lenovo-yoga-slim7x.dts    | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> index 70977e9fa266..6f8d52c368a4 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> [...]
> @@ -669,6 +672,16 @@ &pcie6a_phy {
>  	status = "okay";
>  };
>  
> +&pmc8380_3_gpios {
> +	edp_bl_en: edp-bl-en-state {
> +		pins = "gpio4";
> +		function = "normal";
> +		power-source = <0>; /* 1.8V */

Hm, are you sure the firmware sets it like this?

power-source = <0> is typically VPH, i.e. the main battery supply
voltage or similar. This will definitely be higher than 1.8V. It seems a
bit odd to use a variable voltage source for a GPIO...

Thanks,
Stephan

