Return-Path: <devicetree+bounces-11026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD9E7D3D71
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:24:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AE479B20D31
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 558EE200BF;
	Mon, 23 Oct 2023 17:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q2QOiMQJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A660533C8
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:24:33 +0000 (UTC)
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B93E94
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:24:32 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-578b4981526so1929823a12.0
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698081871; x=1698686671; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BbbHD0YVJk9RufSxoYcq0y3n5cPhLMIwtkNHWUlAfWQ=;
        b=Q2QOiMQJ6i46Sr5Hq87RjwhPKXlsVMVGOYK6LL33kMfD+d/WEWAm75icO/d0Ikhalj
         k8eiRo0YdCTEvFgXytBaK4sZMiEGBKzJ2B9FjSym648tDEL0+2BrhmYaRJAKigd/rW0Q
         0eeHaQoArBcgvXyS97/+jUxUkJEkwRDlawYWlkQInyekwgKLjrU4U9LEJu3AmC4EfXVt
         ooJ32lh/tqdCTCDVzpxjBzUkcjziw8VvqO7NMZaU6jAZtAQfRnh8ecINQgr6BtQit82b
         MzkGq7Nr2hqIrotctwYLAy4In1EXFby5iD8DIXCGQf3wao9sm/nPnmLI0xQRxUY0TXSE
         P/PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698081871; x=1698686671;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BbbHD0YVJk9RufSxoYcq0y3n5cPhLMIwtkNHWUlAfWQ=;
        b=j1XHDVnb6rbL5lHwoPuHHTDahkUbqiX+U4kFHGFSQKp/V0F3aLjWqFuJmca3rogCL9
         tg2JXojEPBXIWwIUJGWwghLxbaZFic2nONReqQ7FdP7ywUEzp2s1zV/9i6AIGUIfpImL
         718vuIbB2O5EdzNJiC6UyqmfxW020ZYE+qRGqwurTkVHtmdnmPcK92IsbyhG44Ov95NJ
         1xZMP4QR5WHmtQ2s0xKftve8uoASgGEIngpcteqBrqACqy5eLYr72orvFc2ysKml5sh5
         7jgUJ4FplBoO12EMB6S/JR0fp5/L7AUS1C4TbXtJxtgiWadVlQ9uI1wN9YcGtJj738I/
         4iXA==
X-Gm-Message-State: AOJu0YzQ9i5mrQq50yal6cF3SRFaR1yrWKPcue0p7oRl+RqfAloq8nVu
	086La5qfkWo5kVcw61GC0Yie0g==
X-Google-Smtp-Source: AGHT+IH5zn+p2FocGpHxAFS8gSDBMs+R8rkPa0KF41+FQfuasRuzkg4dmkOhZbI85fDx40K/Hlwn2w==
X-Received: by 2002:a05:6a21:498b:b0:17b:d39c:1d6 with SMTP id ax11-20020a056a21498b00b0017bd39c01d6mr239194pzc.30.1698081871694;
        Mon, 23 Oct 2023 10:24:31 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:85b7:8283:12b2:30f8])
        by smtp.gmail.com with ESMTPSA id cx3-20020a17090afd8300b0027d1366d113sm7419661pjb.43.2023.10.23.10.24.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 10:24:31 -0700 (PDT)
Date: Mon, 23 Oct 2023 11:24:28 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: "Iuliana Prodan (OSS)" <iuliana.prodan@oss.nxp.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, Shawn Guo <shawnguo@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	alexander.stein@ew.tq-group.com,
	"S.J. Wang" <shengjiu.wang@nxp.com>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Mpuaudiosw <Mpuaudiosw@nxp.com>,
	Iuliana Prodan <iuliana.prodan@nxp.com>,
	linux-imx <linux-imx@nxp.com>, linux-remoteproc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	LnxRevLi <LnxRevLi@nxp.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: imx8mp: add reserve-memory nodes for
 DSP
Message-ID: <ZTasTEvw4//SEMlW@p14s>
References: <20231013152731.23471-1-iuliana.prodan@oss.nxp.com>
 <20231013152731.23471-3-iuliana.prodan@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013152731.23471-3-iuliana.prodan@oss.nxp.com>

Hey guys,

On Fri, Oct 13, 2023 at 06:27:31PM +0300, Iuliana Prodan (OSS) wrote:
> From: Iuliana Prodan <iuliana.prodan@nxp.com>
> 
> Add the reserve-memory nodes used by DSP when the rpmsg
> feature is enabled.
> 
> Signed-off-by: Iuliana Prodan <iuliana.prodan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp-evk.dts | 22 ++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> index fa37ce89f8d3..b677ad8ef042 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> @@ -125,6 +125,28 @@
>  		};
>  
>  	};
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		dsp_vdev0vring0: vdev0vring0@942f0000 {
> +			reg = <0 0x942f0000 0 0x8000>;
> +			no-map;
> +		};
> +
> +		dsp_vdev0vring1: vdev0vring1@942f8000 {
> +			reg = <0 0x942f8000 0 0x8000>;
> +			no-map;
> +		};
> +
> +		dsp_vdev0buffer: vdev0buffer@94300000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0 0x94300000 0 0x100000>;
> +			no-map;
> +		};
> +	};

Alexander: Are you good with the refactoring?

Rob and Krzysztof: I'm not sure if you want to ack this patch but giving you the
benefit of the doubt.

Shawn and Sascha: Did you plan on picking up this patch or shoud I?

Thanks,
Mathieu

>  };
>  
>  &flexspi {
> -- 
> 2.17.1
> 

