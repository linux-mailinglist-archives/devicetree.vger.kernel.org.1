Return-Path: <devicetree+bounces-5143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F737B56F6
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:55:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 90EA11C20490
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 15:55:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCE911D540;
	Mon,  2 Oct 2023 15:55:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428A21CFAA
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 15:55:21 +0000 (UTC)
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EFA4A4
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 08:55:20 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1c5cd27b1acso148390595ad.2
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 08:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696262119; x=1696866919; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/TliF0IcnDDut/Hmb+cIXBD25FLUVIAU119XJHwJn24=;
        b=aSk+truUmK9dCaJzjsvYyPA2p1ASVSTCsDEfVAJHr8cdyzmO56NRyGBVPcjJ8lMcx7
         Tb4x9zhQaz90Zw9OKBXT/WG8PxEKBcglB2xas/b0ICNvb8pcTWx1YI1HI6ctV306ORzi
         LzxAy8XMwSc5M+YCo+zsvW8X9yK0MOaEQVGhquH64LGSwV+bPiLWjYui8s6QqQcb/W6m
         9eFxuUWuoYoMGklDigaIJGI6paQaOrMKRGqcVVzNM0HMsxuqQTHFCJN9van7jwLaJOM3
         zNJEYiluxg4v5/MMQ6F8Ia5lyBnImCutEPgCyjZ9hgk0etCc9SsyWGCoG75ppIx2ZsDv
         skRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696262119; x=1696866919;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/TliF0IcnDDut/Hmb+cIXBD25FLUVIAU119XJHwJn24=;
        b=QxS0vO5wZhUFY9dM72bWcr7gyN2tPc1M38th12RoYIGvBPgehVawiNWR5d4Pyym1x+
         FAB3kgKITbXYUO2fvshTYow9Ak4ln50FL60LJ7dy8GUJSqb7axVzMWPUayavJVc4kje5
         vxsWmSLhUy5WLcnEeHckGJMheSPI0OY1vmNycDhRnni6QnM8GtIolI2m75tM0bNg2F80
         tKbEoA8wRJXG+uZHIPwv2BhMwhmDWqvIogwAldZpSMQ93NZRbX7aXW7nQkp43a+Wxj/b
         J2EyIxa9zsWl/JIN3Fs407wOcLPHFOgbZbbrys2E/zfkd+txikY6KRnJQzW+MZfw8lLN
         jesQ==
X-Gm-Message-State: AOJu0YyHs/MpHKfO1ktQHCyM+mYr5Epe/mgFXqiy5XER9lVq8FeZcFoP
	dBlpSpGXSYt3RuFIugzOkUmiRQ==
X-Google-Smtp-Source: AGHT+IGokh6jvr3Bmxk6tUGV+zrXHR9d1b+yagVVS76bh5D/AqXdhn98ZRv039FQnPEyA/a7vnzfdg==
X-Received: by 2002:a17:90a:e409:b0:268:ca76:64a with SMTP id hv9-20020a17090ae40900b00268ca76064amr5335954pjb.49.1696262119332;
        Mon, 02 Oct 2023 08:55:19 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:fa62:edba:ab23:c762])
        by smtp.gmail.com with ESMTPSA id ch23-20020a17090af41700b002790423f66fsm6465259pjb.26.2023.10.02.08.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 08:55:18 -0700 (PDT)
Date: Mon, 2 Oct 2023 09:55:16 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Tanmay Shah <tanmay.shah@amd.com>
Cc: andersson@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, michal.simek@amd.com,
	radhey.shyam.pandey@amd.com, ben.levinsky@amd.com,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 2/4] dts: zynqmp: add properties for TCM in remoteproc
Message-ID: <ZRrn5Gj1qvKMBNmx@p14s>
References: <20230928155900.3987103-1-tanmay.shah@amd.com>
 <20230928155900.3987103-3-tanmay.shah@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928155900.3987103-3-tanmay.shah@amd.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 28, 2023 at 08:58:58AM -0700, Tanmay Shah wrote:
> Add properties as per new bindings in zynqmp remoteproc node
> to represent TCM address and size. This patch configures
> RPU in split mode and adds TCM information accordingly.
>

Why is this changed from lockstep to split mode?  What about all the people out
there that are expecting a lockstep mode?

> Signed-off-by: Tanmay Shah <tanmay.shah@amd.com>
> ---
>  arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 28 ++++++++++++++++++++------
>  1 file changed, 22 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> index b61fc99cd911..01e12894c88e 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> @@ -247,19 +247,35 @@ fpga_full: fpga-full {
>  		ranges;
>  	};
>  
> -	remoteproc {
> +	remoteproc@ffe00000 {
>  		compatible = "xlnx,zynqmp-r5fss";
> -		xlnx,cluster-mode = <1>;
> +		xlnx,cluster-mode = <0>;
>  
> -		r5f-0 {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +
> +		ranges = <0x0 0x0 0x0 0xffe00000 0x0 0x10000>,
> +			 <0x0 0x20000 0x0 0xffe20000 0x0 0x10000>,
> +			 <0x1 0x0 0x0 0xffe90000 0x0 0x10000>,
> +			 <0x1 0x20000 0x0 0xffeb0000 0x0 0x10000>;
> +
> +		r5f@0 {
>  			compatible = "xlnx,zynqmp-r5f";
> -			power-domains = <&zynqmp_firmware PD_RPU_0>;
> +			reg = <0x0 0x0 0x0 0x10000>, <0x0 0x20000 0x0 0x10000>;
> +			reg-names = "atcm", "btcm";
> +			power-domains = <&zynqmp_firmware PD_RPU_0>,
> +					<&zynqmp_firmware PD_R5_0_ATCM>,
> +					<&zynqmp_firmware PD_R5_0_BTCM>;
>  			memory-region = <&rproc_0_fw_image>;
>  		};
>  
> -		r5f-1 {
> +		r5f@1 {
>  			compatible = "xlnx,zynqmp-r5f";
> -			power-domains = <&zynqmp_firmware PD_RPU_1>;
> +			reg = <0x1 0x0 0x0 0x10000>, <0x1 0x20000 0x0 0x10000>;
> +			reg-names = "atcm", "btcm";
> +			power-domains = <&zynqmp_firmware PD_RPU_1>,
> +					<&zynqmp_firmware PD_R5_1_ATCM>,
> +					<&zynqmp_firmware PD_R5_1_BTCM>;
>  			memory-region = <&rproc_1_fw_image>;
>  		};
>  	};
> -- 
> 2.25.1
> 

