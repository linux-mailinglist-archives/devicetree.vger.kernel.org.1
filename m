Return-Path: <devicetree+bounces-220397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DDDB95942
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 13:10:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9AEA62A2906
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 11:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69C0031D733;
	Tue, 23 Sep 2025 11:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GmrbaONM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A688F30DD00
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 11:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758625847; cv=none; b=cPLb7HgSh5BjYkDFQ6cjnV2duCWBlhCiiMKXtU8cJr2LSPrWsZQBAhqpL6IiWDxl4Z88IemlcqtOKiULgyU7t1qaRkgA1J2Fb8/FRqcOCDTFA6BcfgQ/OHm5WLsUFrx8CY5kQGRjPSbnaiJNAtsGoMo+9BNCTjQYZ/7kdBvLNCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758625847; c=relaxed/simple;
	bh=L8If8mhhgNYtNxzT0sBTVnoIcsxkhNehSrPzVwevgF0=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qYbxRayZROLMKpJDMyOvhx19lfD7i/gt0+to87kSiJJcsPQv1nyV/g4nixcYf+dqe+oq2ge8rDgxBC80xNVr6EiU52gJhaePIcvlaziVcSxG4Df7+gn1Dyzog0i8mNphSRfgmgC3ib9C6TZ8jY9bIOo2IELEUdNAppREIUeQQyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GmrbaONM; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45a1b0ce15fso9216545e9.3
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 04:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758625844; x=1759230644; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/M4chbTCwJie6GL25HuGRFhPc1V63zKjOJLKGItv6qU=;
        b=GmrbaONMY567lYbR6vFpTH7gDvClnvBS96L6i7cxNJQyNpbldeX/PEB3xls2N49FEK
         BMNuOctp1084ZTlxDwzeIsmyFRnvmWEj1fYBJ2UspJaYUxvrwMoZXRxfT0r1SFKeUr0r
         ZiFWvMeUS/UCGkzIKbs24gOwhL681sh/wvvZY4qUZt7Q+AxzA6iPRCOof4pB2i5XAKNK
         WAj9Y2AE5TvbsXVm4iZt+JzxERe9qLmvbZazZZo7+rYCy+DChCD8WctOTbtYD3ucCzng
         4X2BR/6uqBd9Hq5VAZgRfr9oR90y2HqAIwJlLG4J1aq95N6oT0G6vZ++KJvqsUsFW0Nj
         0+DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758625844; x=1759230644;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/M4chbTCwJie6GL25HuGRFhPc1V63zKjOJLKGItv6qU=;
        b=W+hsI8Qd9BJI8Hz9lM6FGJNmGX6lFJGYVj3KLGhtBbosB4jASaV/Au7ZI5EPe8Wfl9
         BDjIYK9SFhHL8Mk9yjhlV/3ulVD0y1i8OYVX5bA2ZF/CGqHlAq+lhTTIS2u/QlWCxzYw
         fx76xo1HqAgvLPMxBCaDNnxa33yAA/BqnackiYUbV+W0M7T4Ex6Lv5n5t/B83ZD9Uhlt
         XsyRV6bmnvcrKtp+L5z9Q8GkI2cY3JQKPL5jyBQBRB8/EAADcsmWfzi1D2mFMInjhl92
         DkJnlDVxKVfjjpQKpmQLtiWJdDhzlW0qPYfRHkRpmw8dJqGU4QIbYHGt90oYbJ0oYh5O
         aQug==
X-Forwarded-Encrypted: i=1; AJvYcCVN2sF8kQ5XJq2DbXF/7dNsI/KGXS0HEaA4sCb5vkSehQ6ZrIpqXlnGtJ5ShiJXzEZu32wF62OZ/JMT@vger.kernel.org
X-Gm-Message-State: AOJu0YwOb25gjEDNTLRk/+q0oUFcCR8+7llGVoUJ+m5+U/CTGjBe+Qsu
	EwIjrTJdcwqa0Y3BSXJQRojgXekguiY8Pw8N+rcgsmUYGDY5Z59N4k0X
X-Gm-Gg: ASbGncv0H0LpKJ6F5NR7E5HtgQUOdcpvaJ/S0Ab0MwJrs8lOIWnFS3N5WE8hUdLqgGh
	dRDlKgorPABpWgGhOkL166YoMiT3q0kzhJF3KYFW27xNqldb87wI6pON2+tzUvPUtrOXINmFIN0
	hnMRXnT8RinCdHCWIA6hvtDJvOQomlstF15UZc4Iq1k8k9/Z8XJXpsbce6WMdiHGVS1fdw8Tp5h
	X4bxA6QeIPMS0r+V36dVcUF7WoSMMhfu+nW2pQegEZVXZNcJ6P61pS4RyvMnnMle1rN8nLpkbQs
	1l0LyFb84dWvyOWK3sp/SIwvvTE2pNRTCI8LITuEc/YJA7f7vfVGcgpYSbooVgPzTyBrMqlvjYy
	NJxRtLYvnLwTBNeV7umHIyTQ=
X-Google-Smtp-Source: AGHT+IHhlp7t8Mif75guovtxrXuNcYEIzhCdfujdY3LaIWfy1jJmzn6mmtcb1ThUszzhbFiPUhqUdw==
X-Received: by 2002:a05:600c:4ed3:b0:45f:2919:5e8d with SMTP id 5b1f17b1804b1-46e1d98c40bmr12841095e9.1.1758625842783;
        Tue, 23 Sep 2025 04:10:42 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d005:3b00:2e0a:df05:253e:8b85])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e23adcce3sm3208595e9.11.2025.09.23.04.10.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 04:10:41 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
X-Google-Original-From: Vladimir Oltean <vladimir.oltean@nxp.com>
Date: Tue, 23 Sep 2025 14:10:38 +0300
To: Shawn Guo <shawnguo@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Olof Johansson <olof@lixom.net>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev
Subject: Re: [PATCH 3/3] arm64: dts: fsl-lx2160a: include rev2 chip's dts
Message-ID: <20250923111038.qluh2kjmc534ytig@skbuf>
References: <20240826-2160r2-v1-0-106340d538d6@nxp.com>
 <20240826-2160r2-v1-3-106340d538d6@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240826-2160r2-v1-3-106340d538d6@nxp.com>

Hi Shawn,

On Mon, Aug 26, 2024 at 05:38:34PM -0400, Frank Li wrote:
> The mass production lx2160 rev2 use designware PCIe Controller. Old Rev1
> which use mobivel PCIe controller was not supported. Although uboot
> fixup can change compatible string fsl,lx2160a-pcie to fsl,ls2088a-pcie
> since 2019, it is quite confused and should correctly reflect hardware
> status in dtb. Change freescale's board to use rev2's dtsi firstly.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts | 2 +-
>  arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts | 2 +-
>  arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
> index 4d721197d837e..71d0d6745e44a 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
> @@ -6,7 +6,7 @@
>  
>  /dts-v1/;
>  
> -#include "fsl-lx2160a.dtsi"
> +#include "fsl-lx2160a-rev2.dtsi"
>  
>  / {
>  	model = "NXP Layerscape LX2160AQDS";
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
> index 0c44b3cbef773..2373e1c371e8c 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
> @@ -6,7 +6,7 @@
>  
>  /dts-v1/;
>  
> -#include "fsl-lx2160a.dtsi"
> +#include "fsl-lx2160a-rev2.dtsi"
>  
>  / {
>  	model = "NXP Layerscape LX2160ARDB";
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts
> index 9f5ff1ffe7d5e..7a595fddc0273 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts
> @@ -6,7 +6,7 @@
>  
>  /dts-v1/;
>  
> -#include "fsl-lx2160a.dtsi"
> +#include "fsl-lx2160a-rev2.dtsi"
>  
>  / {
>  	model = "NXP Layerscape LX2162AQDS";
> 
> -- 
> 2.34.1
> 
> 

Sorry for digging up an old thread, but I'm curious why you applied
patch 2/3 but not this one? Currently,
arch/arm64/boot/dts/freescale/fsl-lx2160a-rev2.dtsi has no user.

Thread here.
https://lore.kernel.org/lkml/20240826-2160r2-v1-0-106340d538d6@nxp.com/

