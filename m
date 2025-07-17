Return-Path: <devicetree+bounces-197456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 93494B0958F
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 22:15:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EBE8F1C42212
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 20:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20067224AF2;
	Thu, 17 Jul 2025 20:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UyAPQtYq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1985B2248BA
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752783300; cv=none; b=u3aq/n/r7yjv4PHqhRmctUO8UinuGXvGcd837odIgL5m9fdNv+gzavggD/zxCw9HbYo4N7+OcIE0e+jVAWlnRTsOHPjSmZQqRD2bpLOAiGAVdP1ees2a7UViQJ/x15NHkCyZpeQoNuuB253HnTTRZSsvep9wBD9Cq5RU90seumM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752783300; c=relaxed/simple;
	bh=EZ7R4fXfaFdjoYQZtZgAZc+o879chScvSGulDHql0zU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vtc/5sI0w+wj76TsCUMScH/99HOylRbwFvoS06ze2OxKAw43TV3n3bIr4RFd4pQBYdWbt6GUWMADYprt26yXosAozqgFxiexnVH3iIGNPZU/1INjXt9kxxQr6OXCbmUVsYQDy9ZDRriZASKpPeyoCkdtbmJYef1747Vwl9H8ep4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UyAPQtYq; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-451d7b50815so10193415e9.2
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752783296; x=1753388096; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GQcFq4q/rgMi8StIxps2pQbAEzlQ/dOXwDCfS0g08qI=;
        b=UyAPQtYqpQyufenz3raH4JVwu0fiejqLCUwB3Ml/Uui3EYEAsodOG30tESLAVQ4cns
         Ln6jXE5tyPnDZDyB/p16HWOAtVF4Esh26u/YA3mR78vILac2wAYu22igpT7AqEpeokKA
         FLpqH68VoglCj0FwW/gVwnqpkh0FtZe1g6Umagf3pMpo1hRUiYJykp6S+o+EUGkrpS+o
         VAzARsM1kg7ACCuPshUk1eQaKQc3I0WGLC8kt7rNXf2wQ5DZKHoNBSiHsA0ZYiGlHvKm
         tVHLlvFK1AxEg5dOJ1fi5OtIFskY09uCZbpC9R73t30K6sS9mckxA6ljnqm8LffMKCq8
         feZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752783296; x=1753388096;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GQcFq4q/rgMi8StIxps2pQbAEzlQ/dOXwDCfS0g08qI=;
        b=majL40AVXLxMZZUep0AEHuqrgke1ZveRYWVtILx2Z6KGF3tBvvbwltpHOPGwA4+Tob
         1oOB7noUXjUjnEP43fuPly06tlALrmnOAL7/1XiX+xKLFVmg8NMV1yepgih7uyzJynjc
         nnwEuzPJN0d+624J8X5MPiCp/KPt6MNl5AsNHAGNA/WfLcDnlq39KosZ6DaaPQzjX0Ij
         NmUUn9jc+eCh8KeGImkWq9CZzu1zOh4cU1m8tiQgJ0bip0DOSeimzeCoT/FaWczer2qD
         Ng97CWFsvPa7PmW1r1XdNy231YMKsxFr9IyZC5MZTDcOVm7JWa6Z32k76XZR0iPdyYNv
         V6mw==
X-Forwarded-Encrypted: i=1; AJvYcCVbNuWXy7Oo6YwNvdlPXdJuopvRuRsoiAdLRivI1n0vUhBbndSOEJKlOc4Yc8qAfmRarQx6rkD7Nm97@vger.kernel.org
X-Gm-Message-State: AOJu0YxDtHi+fGXEmzDbhCYJ+ncINN++oCgcltUV4/J+K9I/3ock4tyZ
	n4MOrumbmlM6zy+dER0rCwL0p2IHkE3GnG8FSbDxcdUmihK/svJvhUKX8UvKzr/oJHI=
X-Gm-Gg: ASbGncv/UyNzdzlvFbiOob0kSqk0qkIBDLbkQYEvI9YwO0Y+QlkO0neF+bDFuojjdaA
	oZ0+X9rxMv+LcOcCpF12pEo3JBdREEWJoD2BfeaDkdgOQoPkz6bmvBtyqWJ1/VHLacsIxbnHYH6
	R9jTDL7K9FkPA9DFHeDN+NWsbcwRRo5uMG+0KMvbQ7KVbQNOULMVn7/FUXa3Qm3i9yq9ySQ+o6K
	coXF8NjkgUB6N/U9xIv5GUXf071GMcxfrreUN2L52d8EAgwPq5Q+muKWjpTXs1r5VLDqtuuvy6j
	cBQb3SysTEKIfKhl9RFyPmtaFYhnBKi96iTBaoZ7vVaxi9gCaXzSeAFxm49+hXxnoMxvM9nRbOo
	nHBjhrOLALJig3LkkeDViApcV7IFbI6LeyA==
X-Google-Smtp-Source: AGHT+IGQilkklE42NQVVUMSQg0/6rx4ntL9WzEJ6KKvvTMvU3maPMt1KBsu/PrQAyHQBlcdljD0c6Q==
X-Received: by 2002:a05:600c:190e:b0:456:173c:8a53 with SMTP id 5b1f17b1804b1-4562e330eb7mr98060425e9.2.1752783296213;
        Thu, 17 Jul 2025 13:14:56 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:3ca4:32ec:fe95:8c72])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4563b5b8941sm1556205e9.11.2025.07.17.13.14.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 13:14:55 -0700 (PDT)
Date: Thu, 17 Jul 2025 22:14:51 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Yijie Yang <yijie.yang@oss.qualcomm.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
Message-ID: <aHlZu51tYDSsyFTh@linaro.org>
References: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
 <20250716-hamoa_initial-v1-3-f6f5d0f9a163@oss.qualcomm.com>
 <aHkhcUVBnrwadKfa@linaro.org>
 <3a381014-cfe4-4b3c-a3c7-df688c1e87cc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3a381014-cfe4-4b3c-a3c7-df688c1e87cc@oss.qualcomm.com>

On Thu, Jul 17, 2025 at 10:10:05PM +0200, Konrad Dybcio wrote:
> On 7/17/25 6:14 PM, Stephan Gerhold wrote:
> > On Wed, Jul 16, 2025 at 05:08:41PM +0800, Yijie Yang wrote:
> >> The HAMOA-IOT-SOM is a compact computing module that integrates a System
> >> on Chip (SoC) — specifically the x1e80100 — along with essential
> >> components optimized for IoT applications. It is designed to be mounted on
> >> carrier boards, enabling the development of complete embedded systems.
> >>
> >> This change enables and overlays the following components:
> >> - Regulators on the SOM
> >> - Reserved memory regions
> >> - PCIe6a and its PHY
> >> - PCIe4 and its PHY
> >> - USB0 through USB6 and their PHYs
> >> - ADSP, CDSP
> >> - WLAN, Bluetooth (M.2 interface)
> 
> [...]
> 
> >> +&usb_mp_hsphy0 {
> >> +	vdd-supply = <&vreg_l2e_0p8>;
> >> +	vdda12-supply = <&vreg_l3e_1p2>;
> >> +
> >> +	status = "okay";
> >> +};
> >> +
> >> +&usb_mp_hsphy1 {
> >> +	vdd-supply = <&vreg_l2e_0p8>;
> >> +	vdda12-supply = <&vreg_l3e_1p2>;
> >> +
> >> +	status = "okay";
> >> +};
> >> +
> >> +&usb_mp_qmpphy0 {
> >> +	vdda-phy-supply = <&vreg_l3e_1p2>;
> >> +	vdda-pll-supply = <&vreg_l3c_0p8>;
> >> +
> >> +	status = "okay";
> >> +};
> >> +
> >> +&usb_mp_qmpphy1 {
> >> +	vdda-phy-supply = <&vreg_l3e_1p2>;
> >> +	vdda-pll-supply = <&vreg_l3c_0p8>;
> >> +
> >> +	status = "okay";
> >> +};
> >>
> > 
> > Assuming the USB ports are located on the carrier board and not the
> > SoM(?):
> > 
> > Are carrier boards required to make use of all these USB
> > ports/interfaces? In my experience it's not unusual that embedded
> > carrier boards use only the functionality that they need. Maybe this
> > should just set the common properties and enabling individual ports for
> > PCIe and USB should be up to the carrier boards.
> 
> The PHYs are on the SoC and if the kernel is told they're "disabled",
> they may possibly be left dangling from the bootloader
> 

How is this different from any of the laptops we have upstream? If we're
worried about firmware keeping unused PHYs on, then we should probably
enable all the PHY nodes by default in the SoC .dtsi?

Thanks,
Stephan

