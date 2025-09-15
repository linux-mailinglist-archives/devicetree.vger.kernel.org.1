Return-Path: <devicetree+bounces-217285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B26BB573A6
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:54:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D49283BF21C
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 08:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F7F12F3C25;
	Mon, 15 Sep 2025 08:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J1Fvc3C6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D902F3C14
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 08:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757926368; cv=none; b=hRFUc0wInmAD4O/2ZOmzH3yTb2g9RrFEbt9l3k0xQ7vCqd9IQWUuxeK6g5BbvUcPtWsIckwfGWP2iIE2dyl75YwF66pAoJn7jCjRwILd60kkBSlKjuqxDTkCM+s7ll7wERkgyADnRBpI94sLIluTJ5F/FasRNC8d6I4ETahbHio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757926368; c=relaxed/simple;
	bh=m/pZ6y54K3kx+mHExY4bRLVvKw6fj4rniWw50UqeCxo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bZ/NAm+W4ywgp2rU2IixrSYui8e+c+0gAW1Iebcv1G0fv9r8L9+mtEwWR3+nHU6SIDkCV15nssGX2mX4CnaRmJuJF+ZJCYgq2QSdWCC+iBa1FWm9qAjNI2V/bA5TvbF1dk4qmiht5nbTZnBWxoMthSywe6r3xEgBZglErrBoyKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J1Fvc3C6; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-45f29e5e89bso15413115e9.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757926363; x=1758531163; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N6kxZ21z2ge9LAXdq4SO1toYg+8pc4aXj9MUKAvpBaA=;
        b=J1Fvc3C6hXgnsns+UnVqBAD+6a1Fr2DGrSjtIDwkHiG/ZnUmLAh7ot3JK2sC8iyhbt
         cFhcTtYyd5K6+HY8OWAIjb+B4WjnoRnRdRaKIYZApf6VW/MeAZvbumQzJ0Xmi/S3w8Do
         XrChzRMCMA1eT773rJBiCTpU+Zab9mkdOqEXjgF4scA9vChYG9E1NFIm9VmrMfiKOJa4
         kXHDzat9WbMmipRgMwW7G9H8Nzv/m2fa34B6FH3/MhU7c33VigEIb2zB190kSy0DNw+N
         KYNVl/En9eW6M6Wd3GYbD+XBa8kFZgxt89dch3ql+9he8LVCatcNUDd6N215Y4VVBy89
         tqiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757926363; x=1758531163;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N6kxZ21z2ge9LAXdq4SO1toYg+8pc4aXj9MUKAvpBaA=;
        b=F79JY/e47bwg7G72kywmvfKm+5NQ5/PV2gV8lDgGixvKBeUqDXy3md/JpDOIg4hi8Z
         /6u582onTEPo/6Nab2aMfbaijLtTY9qFUlf41ZckuIroxwgeOr6uhD++AyGmglzfYZix
         KMBI5m7sJZnlvtKBngwz9SXZT05MwBMJ6PTZ6gYywAuCBR8H3EEe8JofqnBExIrMjACT
         BQxNoGP10bnfw/T9f+UlXVSSk5LFhiRB1nQo+BKWybNA3C1gzZxxZSl0zGqoj+154SAG
         xRf3V66KHmvwSo9HD3omZdMYc1A5BVWliwBqv/jR9FKr/X+NxNTdekQO+rk1QO8OBdoz
         AtWg==
X-Forwarded-Encrypted: i=1; AJvYcCWFG1mYsyXhhTstQf6nalA3LSydXxVgiPJfYrGFN61oNOBzcfof/9Eu1yxi3Llbsi8+IkCtaEOKcgi5@vger.kernel.org
X-Gm-Message-State: AOJu0YxcOwON9IziO3hpDOTNuOBQ7U0xeY4CKwYscDpchfc3YVENXh6u
	t/Vc280Qc9D51jipxZpph3LKr2Yvgx246CrzNF60B3LHUV86AvgHT7vhJumI2XChVHQ=
X-Gm-Gg: ASbGncsg4BDMlgMaz0ergc2khJJMHLuYAhHqht3OdXFkQOO7xeEo5T/KQ3UQqFf2mMP
	CStKxucPpOBKuh3tenoTwpoI7qcAoDb7vIFSQK/nf3YFUZzsqWOjfk8t+iFPAcaOBfjGZM03s/k
	NUG39ebrP3CdgMYsQGKQRKzEbDD8RyjeW5daFF2xrvkZ6fltQIzgeKHnbmvRkaFHL6ptHZuQC5F
	ClKYxEvkMASTEN6OHIYb9Gcde0Y1yUwlHAuB+iux/RzKvO7eskGvXRuApFsQ3poUTc/czy+AxEm
	R8ch1sPlfY2/o4Dz3pHYncDnC3ZHDCiYTlLPxL6YB1viLuzGjNK9X9piLtt8EsQPyxq1tRa8SqZ
	ffM3HWg//G8ANGZ9I7Mio+jgSmMLWtGlU
X-Google-Smtp-Source: AGHT+IFzSjYN5GyjYoEpwSlYOMCz/spbxZZSVT6DCL0Ah2R68rwc3IWvf7dvYMLqkqc3FdlOFRSbIg==
X-Received: by 2002:a05:600c:314c:b0:45f:28ba:e17f with SMTP id 5b1f17b1804b1-45f28bae1a5mr60704615e9.31.1757926363306;
        Mon, 15 Sep 2025 01:52:43 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:30:ab20:75dc:ab3e:bbb9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45f27f44093sm96526395e9.24.2025.09.15.01.52.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 01:52:42 -0700 (PDT)
Date: Mon, 15 Sep 2025 10:52:39 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v11 3/4] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
Message-ID: <aMfT1_uyZETUEBYk@linaro.org>
References: <20250910-hamoa_initial-v11-0-38ed7f2015f7@oss.qualcomm.com>
 <20250910-hamoa_initial-v11-3-38ed7f2015f7@oss.qualcomm.com>
 <aMPee9wEOrrW-KMU@linaro.org>
 <90dcca12-1a68-4049-bcbe-c333aed07a07@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <90dcca12-1a68-4049-bcbe-c333aed07a07@oss.qualcomm.com>

On Mon, Sep 15, 2025 at 10:12:15AM +0800, Yijie Yang wrote:
> 
> 
> On 2025-09-12 16:48, Stephan Gerhold wrote:
> > On Wed, Sep 10, 2025 at 05:02:11PM +0800, Yijie Yang wrote:
> > > The HAMOA-IOT-SOM is a compact computing module that integrates a System
> > > on Chip (SoC) — specifically the x1e80100 — along with essential
> > > components optimized for IoT applications. It is designed to be mounted on
> > > carrier boards, enabling the development of complete embedded systems.
> > > 
> > > Make the following peripherals on the SOM enabled:
> > > - Regulators on the SOM
> > > - Reserved memory regions
> > > - PCIe6a and its PHY
> > > - PCIe4 and its PHY
> > > - USB0 through USB6 and their PHYs
> > > - ADSP, CDSP
> > > - Graphic
> > > - Video
> > > 
> > > Written in collaboration with Yingying Tang (PCIe4)
> > > <quic_yintang@quicinc.com> and Wangao Wang (Video)
> > > <quic_wangaow@quicinc.com>.
> > 
> > This looks like you should have Co-developed-by: tags together with
> > their Signed-off-by: tags.
> 
> We’ve agreed on this as the preferred method for marking collaboration, as
> discussed earlier in this thread.
> 

I can't say I agree with Bjorn there, but ok, he's the maintainer. :-)

> > 
> > > 
> > > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 621 ++++++++++++++++++++++++++++
> > >   1 file changed, 621 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> > > new file mode 100644
> > > index 000000000000..c7c3a167eb6a
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> > > @@ -0,0 +1,621 @@
> > > +// SPDX-License-Identifier: BSD-3-Clause
> > > +/*
> > > + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> > > + */
> > > +
> > > +#include "x1e80100.dtsi"
> > > +#include "x1e80100-pmics.dtsi"
> > > +#include <dt-bindings/gpio/gpio.h>
> > > +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> > > +
> > > +/ {
> > > +	compatible = "hamoa-iot-som", "qcom,x1e80100";
> > 
> > Undocumented compatible (without "qcom," prefix). I think you can just
> > drop this?
> 
> This compatible string was also discussed previously and is the preferred
> choice. I’ll add the missing 'qcom,' prefix.
> 

Even compatible = "qcom,hamoa-iot-som", "qcom,x1e80100"; is not
documented. And it doesn't make much sense to document it either, each
of the boards using the SoM should have a more specific compatible and
therefore needs to override this property. I think you can really just
drop this line.

Thanks,
Stephan


