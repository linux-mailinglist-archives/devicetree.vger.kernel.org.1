Return-Path: <devicetree+bounces-216328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 79296B545E0
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:49:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C47771C2813D
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B76F427056F;
	Fri, 12 Sep 2025 08:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mp9CRmyS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B1A25F7A9
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757666946; cv=none; b=J2HBvWZT6QmFLSawuRmbsEhdSRoKxxqKIXuhS+A399IoO6zOJTh+NkbtzbKj7T43wZVN/OEbP/t3Si2XsAALs0tAN0sg7J0F9/0006jcvXB7prsF0pNe0zs4K+W5JuceCTxvOos4RHPErcQPR8XxXWCaIDyqi8NXwRUMtmSk8rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757666946; c=relaxed/simple;
	bh=VXPyr1y1eVb3aoiXmD/7gslbuD5LlgKzM3CMrgMbH1c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KXCTAosJ/KCdZKyyJlwsWC9mmyWNF2Pzpn/e/ee5QsGmgBu7dIULoHb6LaCdcAEbQde3tcTKckCRNLukHkzzOH3QAKuuoV5hZgUdO4YpCc3d/ZdDVV8tSPn/7Zpr8ZttpXFdjgfZmQZlzdSmx+pRb56wZXsf6UT+Iuuu2S5z60k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Mp9CRmyS; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-aff0775410eso464677766b.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757666942; x=1758271742; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZZvuOQturzsBblI9ZHMQg2RAl3gTfRHzsPsS+SgnjjQ=;
        b=Mp9CRmySAVvQXCThqurI4OlhnfaG8HiOZGOZpLbp5Jv8MAUpk0OL12UnbgFDnuu7HN
         X0/r3ksAD+BGu6KUEPEiuQQ2e3BMwPD7IAdUmTcbWdE2CpBATelSXM0tu27B50t/FqMc
         JoRSmlothzWaYATjhemgdhLF1LysUTZUQom/KZT1BH2IvhGxylihwNu/FIobVHAW90sS
         /pfP+tqq8pcBfR45BWcHfi6WLTAnUENNmQ2QkFqb+4AjCz5RX198mCD0TG0dJeud6P5t
         2mhyXsG+al4hNcAY1imssxHBUlChKNP2IqtO9gHEAWt+G7T1R+H9/Ap2GtvVu8+yNyOj
         px3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757666942; x=1758271742;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZZvuOQturzsBblI9ZHMQg2RAl3gTfRHzsPsS+SgnjjQ=;
        b=NAuQDLky1FRXJNCpU07O2NVmv+0ySZKJBnfuYaVu2tEASUSctkTclheLnFbLSbgOP3
         UO97XWRRP9veqf0hXKGAsSI2qYerCZtCABUuHdk9pdE0kXjMW2EHQ7MFwZv8I2PBtKAo
         4T4pET8z+rcjrnVYxZ31J6dM0bDNmMkwhW3EhCyILczx7tx9cjBKDBgYOmtsXP21Fhd5
         E5XaL9Q+t354cYahz63KT6dQ2QsgYze7fyfjSmXVWZmIwz6z0r0XUVfA8J8LzplSVg+j
         64auV2USLG+3kAVHlBlL6u073CQhU/HW+qWJeK3FQxKF7nhD4eVWmmYCfbNqB2uG+zaD
         VJaQ==
X-Forwarded-Encrypted: i=1; AJvYcCUalrLJnuxyX3sGYdlgRN0u8OfhfXwISNShKXESdV/E6BWJvcznhwGt7+waq/k1xBYFg/Qak7qin6mm@vger.kernel.org
X-Gm-Message-State: AOJu0YwiumxrSxKTtKGhwWnP+s7AiDNTXlsEAfYlFHo05twb6cq+1hH9
	ytOet1KSd3GFE4y1LRl99JR+oiu+0kQQqZG2HMNOxEgduJs+aJuE7pzTLtHjz/D1z5U=
X-Gm-Gg: ASbGncsPlYsBgG8riKqgl5gDQyVDG73AMMdvVdLG27QGIfhiMKT7gOzuujRqWuSeC0H
	8SYPXrcOKP36WBg8vhK9AH7zAa1HL6UoMuQT10RXGk7XlNj/RDHolcSlq213rReIAI1wojxAHcx
	Z/tC4qc9FmA0dZPhtklnARiWIiq6H/ad9ndlxMusSnJoo6XNpupLo2J4MwhyxEg5YWeoVuwDO2Y
	ryjIa2KEqGcVPGc4tmncqm+efcYpeW44KsiTtxz27xZ5oU/UG3qWmJ88OgAgKwqnTUNEJaIfZBF
	e2IDDsbKRMyvCnhPCpP9j4uzbu83sP2fPOajMy8vnZ98rEoAZM1GjxAmFsEVgv1WxYeIyKL+W3D
	MHbrobl1151+l/LuBbBWw8dr78uv3raK3CfCNS7Yh0stppW+yqAJInA==
X-Google-Smtp-Source: AGHT+IGIKDkSMzSm94IREaUAgReqwpKS7jzXgP9plHNzao7p19K/88keRhVXdp1JRes2jLYeeNrSFA==
X-Received: by 2002:a17:907:3c95:b0:aff:1586:14c2 with SMTP id a640c23a62f3a-b07c22b205dmr282086066b.4.1757666941812;
        Fri, 12 Sep 2025 01:49:01 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:30:5fc2:ee41:2050:2d49])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b32f1e54sm324549266b.75.2025.09.12.01.49.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 01:49:01 -0700 (PDT)
Date: Fri, 12 Sep 2025 10:48:59 +0200
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
Message-ID: <aMPee9wEOrrW-KMU@linaro.org>
References: <20250910-hamoa_initial-v11-0-38ed7f2015f7@oss.qualcomm.com>
 <20250910-hamoa_initial-v11-3-38ed7f2015f7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250910-hamoa_initial-v11-3-38ed7f2015f7@oss.qualcomm.com>

On Wed, Sep 10, 2025 at 05:02:11PM +0800, Yijie Yang wrote:
> The HAMOA-IOT-SOM is a compact computing module that integrates a System
> on Chip (SoC) — specifically the x1e80100 — along with essential
> components optimized for IoT applications. It is designed to be mounted on
> carrier boards, enabling the development of complete embedded systems.
> 
> Make the following peripherals on the SOM enabled:
> - Regulators on the SOM
> - Reserved memory regions
> - PCIe6a and its PHY
> - PCIe4 and its PHY
> - USB0 through USB6 and their PHYs
> - ADSP, CDSP
> - Graphic
> - Video
> 
> Written in collaboration with Yingying Tang (PCIe4)
> <quic_yintang@quicinc.com> and Wangao Wang (Video)
> <quic_wangaow@quicinc.com>.

This looks like you should have Co-developed-by: tags together with
their Signed-off-by: tags.

> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 621 ++++++++++++++++++++++++++++
>  1 file changed, 621 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> new file mode 100644
> index 000000000000..c7c3a167eb6a
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> @@ -0,0 +1,621 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#include "x1e80100.dtsi"
> +#include "x1e80100-pmics.dtsi"
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +
> +/ {
> +	compatible = "hamoa-iot-som", "qcom,x1e80100";

Undocumented compatible (without "qcom," prefix). I think you can just
drop this?

Thanks,
Stephan

