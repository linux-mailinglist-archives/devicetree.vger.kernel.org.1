Return-Path: <devicetree+bounces-29481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D20508233EE
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 18:55:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4E73CB20912
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 17:54:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96A821C2AF;
	Wed,  3 Jan 2024 17:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WRuUs5Eg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204DD1CA85
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 17:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6d9af1f52bcso2938251b3a.3
        for <devicetree@vger.kernel.org>; Wed, 03 Jan 2024 09:54:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704304469; x=1704909269; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GqC8WuRh/8p1x9/33Rb+DGy4l29zRBxg2wDvMoE4m+M=;
        b=WRuUs5Eg0+4cAurndDPkP/Y72dqOC6QEsAEHa068CKWO2qKTdWy82GwzIQsmzoVmGc
         s4lPHi3EEpR/lR1XY6ZQPQEMR+5+/WTyVdUX4NZWX0Fp6eMoS0sffKM+wRLi8tnpobIN
         t0saeZAugZpqjZY1MFQTr8sYb3Wtw0qDx3DUECRxjH67WkzbHkJ2NyBZd2ZLIJ1DJrW/
         pg4tLbFQbCRkHiHuKaQS3t/AsmxiD0hFt+mllOxJjSrmWaXR/QWlbSxxxNTsJ5FQlb6U
         KU6QPCTAGpV/6pDEfAdwu/Pc2jH8TtVx4FRlxe9WgPst443wzbxXrIpE/woFOE8Y060E
         waww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704304469; x=1704909269;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GqC8WuRh/8p1x9/33Rb+DGy4l29zRBxg2wDvMoE4m+M=;
        b=AUxDdWXO+ZRgus62oRzqDcaITV3zyQ0uOpC0tA6MSSPR37VrCLPKif82yMF6H9Se5i
         H83AWtyHpooED/CF/ekknQPuuLIHiKpU92pUqVWAPIXh828tmGOZW6J8Rp5JdquiAAHT
         WrZcmndYVKJq8nVdUc2ZhCaEjAtZyhCNW3OmYOZP2rGiqeHeHl3TANHDASWeAiNbqUr1
         Xcr3NrEBDwAU7jRg19tyKQy+kY2wc5T4YIbu+W9Fs5IM3f0ZuDqUTBlAxlqulmRJoRis
         LoqZSDNJtyLDNJkggCdop2T0QWjC1XLUYexHGeWNjXP+bkuuujtubTg0WiP87uge1SUw
         F2OQ==
X-Gm-Message-State: AOJu0YzkwnAYRZqI7Vp9sbSejbsKaBcINhxx31QDk5KgZBRk2KscV0fT
	U4zCyQOBlO2xFUV7qd6lsw5jjFJBISZPsA==
X-Google-Smtp-Source: AGHT+IHr0h0GmUrkqdrwa1J68hGjAFFzQbB98LeOaC+uSILGCr+6mQIPScc+eSEUTo8cV/pV4GCuBw==
X-Received: by 2002:aa7:8098:0:b0:6d9:cc4e:4946 with SMTP id v24-20020aa78098000000b006d9cc4e4946mr6877009pff.32.1704304469418;
        Wed, 03 Jan 2024 09:54:29 -0800 (PST)
Received: from p14s ([2604:3d09:148c:c800:d745:ffcc:b786:a182])
        by smtp.gmail.com with ESMTPSA id c5-20020a62f845000000b006da2b1e4fabsm10452802pfm.163.2024.01.03.09.54.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 09:54:29 -0800 (PST)
Date: Wed, 3 Jan 2024 10:54:26 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Tanmay Shah <tanmay.shah@amd.com>
Cc: andersson@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	michal.simek@amd.com, ben.levinsky@amd.com,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 2/3] dts: zynqmp: add properties for TCM in remoteproc
Message-ID: <ZZWfUkrQc58+GATN@p14s>
References: <20231215235725.1247350-1-tanmay.shah@amd.com>
 <20231215235725.1247350-3-tanmay.shah@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231215235725.1247350-3-tanmay.shah@amd.com>

Hi Tanmay,

On Fri, Dec 15, 2023 at 03:57:24PM -0800, Tanmay Shah wrote:
> Add properties as per new bindings in zynqmp remoteproc node
> to represent TCM address and size.
> 
> This patch also adds alternative remoteproc node to represent
> remoteproc cluster in split mode. By default lockstep mode is
> enabled and users should disable it before using split mode
> dts. Both device-tree nodes can't be used simultaneously one
> of them must be disabled. For zcu102-1.0 and zcu102-1.1 board
> remoteproc split mode dts node is enabled and lockstep mode
> dts is disabled.
> 
> Signed-off-by: Tanmay Shah <tanmay.shah@amd.com>
> ---
>  .../boot/dts/xilinx/zynqmp-zcu102-rev1.0.dts  |  8 +++
>  arch/arm64/boot/dts/xilinx/zynqmp.dtsi        | 60 +++++++++++++++++--
>  2 files changed, 63 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev1.0.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev1.0.dts
> index c8f71a1aec89..495ca94b45db 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev1.0.dts
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev1.0.dts
> @@ -14,6 +14,14 @@ / {
>  	compatible = "xlnx,zynqmp-zcu102-rev1.0", "xlnx,zynqmp-zcu102", "xlnx,zynqmp";
>  };
>  
> +&rproc_split {
> +	status = "okay";
> +};
> +
> +&rproc_lockstep {
> +	status = "disabled";
> +};
> +
>  &eeprom {
>  	#address-cells = <1>;
>  	#size-cells = <1>;
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> index b61fc99cd911..602e6aba7ac5 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> @@ -247,19 +247,69 @@ fpga_full: fpga-full {
>  		ranges;
>  	};
>  
> -	remoteproc {
> +	rproc_lockstep: remoteproc@ffe00000 {
>  		compatible = "xlnx,zynqmp-r5fss";
>  		xlnx,cluster-mode = <1>;
>  
> -		r5f-0 {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +
> +		ranges = <0x0 0x0 0x0 0xffe00000 0x0 0x20000>,
> +			 <0x0 0x20000 0x0 0xffe20000 0x0 0x20000>,
> +			 <0x1 0x0 0x0 0xffe90000 0x0 0x10000>,
> +			 <0x1 0x20000 0x0 0xffeb0000 0x0 0x10000>;

As far as I can tell, in lockstep mode the last two entries are not needed.
This is also contrasting with that is in the bindings, which is quite confusing.

> +
> +		r5f@0 {
> +			compatible = "xlnx,zynqmp-r5f";
> +			reg = <0x0 0x0 0x0 0x20000>, <0x0 0x20000 0x0 0x20000>;
> +			reg-names = "atcm", "btcm";
> +			power-domains = <&zynqmp_firmware PD_RPU_0>,
> +					<&zynqmp_firmware PD_R5_0_ATCM>,
> +					<&zynqmp_firmware PD_R5_0_BTCM>;
> +			memory-region = <&rproc_0_fw_image>;
> +		};
> +
> +		r5f@1 {
> +			compatible = "xlnx,zynqmp-r5f";
> +			reg = <0x1 0x0 0x0 0x10000>, <0x1 0x20000 0x0 0x10000>;
> +			reg-names = "atcm", "btcm";
> +			power-domains = <&zynqmp_firmware PD_RPU_1>,
> +					<&zynqmp_firmware PD_R5_1_ATCM>,
> +					<&zynqmp_firmware PD_R5_1_BTCM>;
> +			memory-region = <&rproc_1_fw_image>;
> +		};
> +	};
> +
> +	rproc_split: remoteproc-split@ffe00000 {
> +		status = "disabled";
> +		compatible = "xlnx,zynqmp-r5fss";
> +		xlnx,cluster-mode = <0>;
> +
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

