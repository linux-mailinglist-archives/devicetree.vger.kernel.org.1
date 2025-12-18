Return-Path: <devicetree+bounces-247767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBEBCCB4D3
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 11:06:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E91183009562
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 10:06:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7831332EA3;
	Thu, 18 Dec 2025 10:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vh8DhXGI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BE52F361F
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 10:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766052385; cv=none; b=Q7/4rxaW0X9juLj5tt8X/SHOr0L5oDqmiwS1e1Ekqg6wH5qDUYBn6GSmhCgkzeimP5QQbaJYGHRvUyuIdOzEzNpV/5nYzZkqnYhXtcl4mfueNsTiZsflOoH5jrVF53cyzQXDtxiIVh0bjH80QZiDr+ynGMfqyoFRO3HgeZyjG0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766052385; c=relaxed/simple;
	bh=00v3kzAV4duY2v2/dB54DflNOIbH5D4CPWqrg3MyJZA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pfL8zLss+P/7NAHhc47pqNmGTy9RuG3GTSSpzCWusU+/77C4pN/VVehsK9IhoCi/u5xF6cpQBHdRQJCE9TTEUwYVXSF/PZdgI08HhoTkw4hghMTjY/rF+VMSGIKNThb6cxYnB3pwmVar20F1nxtUNlUvE7NAWYvCP9GFzgoU3+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vh8DhXGI; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-6418b55f86dso546054a12.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 02:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766052382; x=1766657182; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eMH8wF/DkKC3kkFwo7pbjYWtxpqsSiixfrTZUtPLmDs=;
        b=vh8DhXGIpbMLGAmpNGkUa7l6mHdGkn8ZsVxvEd36/X86Y2beLx949ux1oGWOJe8GXU
         URjI2s/ClwZbTIfZlPP/vFWf7SpVch8hP6d1XLItq+kTOfW/bbhSY4gFGCR+g6szQP4Q
         rTtQ+fXe09cEn5ilYaQcoLcMogJ2TsXSupfCVktcH/LuhkognN+ClT0vtMA9TgTfEQ3S
         TIkBH1rliLYIDUS394VepaJOkx2y/l8H0zWAoMWIvzdQqO0z4nJ2JeoYduieWlsDjwbL
         3norY9qTI8w43dcP0XUz6r6XV34Ll/mhPsCnnEE0fZkyz5qlIGKx6pFLoVF1/jWu7Rl5
         juyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766052382; x=1766657182;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eMH8wF/DkKC3kkFwo7pbjYWtxpqsSiixfrTZUtPLmDs=;
        b=IIKDI+lddZ7z25AHxBxkWjVZZ1NwnSnp1yt3Oiel0Gp2oE8en4aDW2pTNw69aohmHQ
         bCOE9WiNh0VJSYXm5wWae1UUmHDvFnz68VUviYVPrEOumUvWCT8JyOiBrZ3ydl3RPecC
         ztebZb8fe4ONY/U3VyMR7OXHpi5gdHXgdabSiAGXUYxSWP4fNNy9EsP5mXkaFLwyrZF1
         Pn/ktzZkBFo6L4kHpFZUUlDs9yDHI80aUZp2hg5agyZzxYO7N8mnl2cyH3RCHKsfry6N
         xcecqwVR82YOPzOg6YSZue2vZpwiSFKtiH6kQ3vYIFHUvMPz+TsXa+TDIt3o3c3WAM8v
         HSKA==
X-Forwarded-Encrypted: i=1; AJvYcCVB4ENK71fjs3NiD6HnQVq0EHRwvBOtwYlPBSXik38FLXP0rlWeYMjMudPwoNgU85fxIFte1ZY6Cwea@vger.kernel.org
X-Gm-Message-State: AOJu0YxnK9oLnpUeDP7PVuWnUdFab/nLUc3uMoh2GjgEYCZWcSD2q7Xr
	dr8I3JQ5zjsyCSfk/bkI3HUUgLe+l/T4GELvuGV4AQZ4Jm6+WH4GSGUDeeVLG+1sQ68=
X-Gm-Gg: AY/fxX7wFzRnBr343QQfRxgorbPZxRGnAexoLF5YKpgWuSIkjY4c00t4wXJZ48VSBGS
	iyVeI8rDVkZF/ZbpePFe/v9vZjZD9g1tTrUtmVLwuJLSGn0VLsIvwleA0mCcPUsgLwoTaGrXzLi
	UW6KIFGnqEzz0JAbgy5LT9plSn0aqZ68LZXmJQs2nSeNkojA1tnPNHGHb0L4eUDkD3eGN19P4Z8
	g84670exf9hC46JUeTTcZQVERBbNuDowSlxmq4gdF8RuNyJBY96/kxIlcC3d1+OzCfsMXI1nEcS
	NiyK1eKsjaRMiXFJ8zbHk7CcwQndSXyRv2gxNBOpuKBNkDMYvLTGVkd/DHHF/ffBzBDkpBIwO+Q
	7FJ+dvPrleeeqA1b5dDwozvKhtVP3tj8IlJhG4Zw9JGpMKp7CmLbmHjcD1p4KV05++8PFB/BXu1
	hAuwAjjf1RjJddqX2ygCrUsKQ=
X-Google-Smtp-Source: AGHT+IFA6SS4YOPlrBDtk9PjM8zZe1pqVrSvNV8OpH8V3h+3nAk0ughsiQ0KfmvcLkZxgEp6dOM4bQ==
X-Received: by 2002:a17:907:7ea5:b0:b7c:e3ad:cd17 with SMTP id a640c23a62f3a-b7d237756edmr2384134066b.32.1766052382145;
        Thu, 18 Dec 2025 02:06:22 -0800 (PST)
Received: from linaro.org ([2a02:2454:ff23:4410:1c2c:7aff:fe45:362e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8022f93e8esm185717366b.11.2025.12.18.02.06.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 02:06:21 -0800 (PST)
Date: Thu, 18 Dec 2025 11:06:08 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1-el2: Add the APSS watchdog
Message-ID: <aUPSEM2AFPTmQLtv@linaro.org>
References: <20251214-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v1-0-94ee80b8cbe7@oss.qualcomm.com>
 <20251214-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v1-2-94ee80b8cbe7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251214-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v1-2-94ee80b8cbe7@oss.qualcomm.com>

On Sun, Dec 14, 2025 at 10:49:59PM +0200, Abel Vesa wrote:
> The watchdog support in EL1 is SBSA compliant, handled by Gunyah
> hypervisor, but in EL2. the watchdog is an instance of the APSS WDT HW
> block, same as older platforms. So describe the APSS WDT node in the EL2
> overlay.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1-el2.dtso | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1-el2.dtso b/arch/arm64/boot/dts/qcom/x1-el2.dtso
> index 2d1c9151cf1b..404174a15659 100644
> --- a/arch/arm64/boot/dts/qcom/x1-el2.dtso
> +++ b/arch/arm64/boot/dts/qcom/x1-el2.dtso
> @@ -7,6 +7,8 @@
>  /dts-v1/;
>  /plugin/;
>  
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
>  /* We can't and don't need to use zap shader in EL2 as linux can zap the gpu on it's own. */
>  &gpu_zap_shader {
>  	status = "disabled";
> @@ -55,3 +57,17 @@ &pcie_smmu {
>  &sbsa_watchdog {
>  	status = "disabled";
>  };
> +
> +&soc {
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	/* The APSS watchdog is only accessible in EL2 */
> +	watchdog@17410000 {
> +		compatible = "qcom,apss-wdt-x1e80100", "qcom,kpss-wdt";
> +		reg = <0x0 0x17410000 0x0 0x1000>;
> +		clocks = <&sleep_clk>;
> +		interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
> +		interrupt-parent = <&intc>;
> +	};

For consistency with &pcie_smmu, I think it would be cleaner to put this
into hamoa.dtsi, mark it as status = "reserved"; and then enable it here
in the overlay. That way, we have a full hardware description in
hamoa.dtsi.

You should also be able to drop the interrupt-parent if you move it
there.

Thanks,
Stephan

