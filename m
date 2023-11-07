Return-Path: <devicetree+bounces-14437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB8C7E485E
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 19:38:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 002151C20A92
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 18:38:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 506AC2E639;
	Tue,  7 Nov 2023 18:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Zz0gZ6Gr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0ECD328BC
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 18:38:12 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2635CB9
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 10:38:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1699382291;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=InIrBHm4KFm9lYj657uNMT2gFwfHIWbZC6mGLJVc7tk=;
	b=Zz0gZ6GrZcUp8N0qHUzjt4pGDDfoSpNlMKERgIUbvkhTrdN6dVaHohqs9imA6e6vnOkcMW
	PM8f8TsrUY+/MesPOwA0kO9pGJyXwcilVATncDXbrwj9AEOpJuYhXpOa5y+N+S/vJ7+F5+
	lj5ukG/jG7MLn956lvSdgLaUklv5coM=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-647-Vh6j7G73OBOEfYcZO0opqg-1; Tue, 07 Nov 2023 13:38:02 -0500
X-MC-Unique: Vh6j7G73OBOEfYcZO0opqg-1
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-779e001ffa5so647642885a.3
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 10:38:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699382282; x=1699987082;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=InIrBHm4KFm9lYj657uNMT2gFwfHIWbZC6mGLJVc7tk=;
        b=pCOlom5tqEdaw+wGRWRwk3XnI537YSKBqbjhK5Ewcgn/+NCW6cZmPigalGz5VbSbAI
         2JjkZo/31aDoKUChy917EjS1QWcBnfJOS2/nmkt6SGujMxQcBXmnftfE/GqWZGtXxdOO
         HA42VLuaPp3I36v8lOXB47jyd6IgEVs+dTXS7ZzF47HZDbBbFtaX41bPvlH4lZi8RZYN
         Ion49ymYut1o16b2kFa9DXgd9WaEVnVzJ8OrfjMMjcNlInWBokiadcxMkmAJb3aEYaqS
         ie346h9AbJlPRm/u9dvkcxsBtzIhp7kVKVzn9LW3QoLtnbzdBCfwbv6zewMLuEZ2kEH8
         P4Ow==
X-Gm-Message-State: AOJu0Yy1mRcTlhkfyCExbfZ6z98gD8+jJ4vopaj/hqehlhxnEvG/5Q+S
	Bcbkux5D7IImC3OYNcFu/a0zQx6Gju9k8lMV++QS2qNMF2RDGYnUk5ij05HgH8HtstKOYliOT8A
	vCABxSjf9ZTYUNAGJJ5fd5A==
X-Received: by 2002:a05:620a:1373:b0:778:912b:6014 with SMTP id d19-20020a05620a137300b00778912b6014mr29659788qkl.37.1699382282153;
        Tue, 07 Nov 2023 10:38:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFFLmjKNv/RxgHklKcgSXkz+1uBlm0nE2/KM8eT7xeJCPC73MWGdrxaRj8lE8j078oEsKC3SQ==
X-Received: by 2002:a05:620a:1373:b0:778:912b:6014 with SMTP id d19-20020a05620a137300b00778912b6014mr29659755qkl.37.1699382281862;
        Tue, 07 Nov 2023 10:38:01 -0800 (PST)
Received: from fedora ([2600:1700:1ff0:d0e0::37])
        by smtp.gmail.com with ESMTPSA id g12-20020a05620a218c00b00767da10efb6sm153350qka.97.2023.11.07.10.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 10:38:01 -0800 (PST)
Date: Tue, 7 Nov 2023 12:37:58 -0600
From: Andrew Halaney <ahalaney@redhat.com>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org, 
	robh+dt@kernel.org, quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, 
	quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com, dmitry.baryshkov@linaro.org, 
	robh@kernel.org, quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, 
	quic_parass@quicinc.com, quic_schintav@quicinc.com, quic_shijjose@quicinc.com, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: sa8775p: Add ep pcie1
 controller node
Message-ID: <i3yum3wbko33jwn7tfbcflpcxe5k5j5ituhyxtucx6gk2bs3gz@7ncewfmepnai>
References: <1699362294-15558-1-git-send-email-quic_msarkar@quicinc.com>
 <1699362294-15558-3-git-send-email-quic_msarkar@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1699362294-15558-3-git-send-email-quic_msarkar@quicinc.com>

On Tue, Nov 07, 2023 at 06:34:53PM +0530, Mrinmay Sarkar wrote:
> Add ep pcie dtsi node for pcie1 controller found on sa8775p platform.
> It supports gen4 and x4 link width. Limiting the speed to Gen3 due to
> stability issues.

I wouldn't mind a bit more information on what "stability" issues
entails! I'm a sucker for details in a commit message.

> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 48 +++++++++++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 7eab458..acd7bd8 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -3732,6 +3732,54 @@
>  		status = "disabled";
>  	};
>  
> +	pcie1_ep: pcie-ep@1c10000 {
> +		compatible = "qcom,sa8775p-pcie-ep";
> +		reg = <0x0 0x01c10000 0x0 0x3000>,
> +		      <0x0 0x60000000 0x0 0xf20>,
> +		      <0x0 0x60000f20 0x0 0xa8>,
> +		      <0x0 0x60001000 0x0 0x4000>,
> +		      <0x0 0x60200000 0x0 0x100000>,
> +		      <0x0 0x01c13000 0x0 0x1000>,
> +			  <0x0 0x60005000 0x0 0x2000>;
> +		reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
> +			    "mmio", "dma";
> +
> +		clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
> +			 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> +			 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
> +			 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
> +			 <&gcc GCC_PCIE_1_SLV_Q2A_AXI_CLK>;
> +
> +		clock-names = "aux",
> +			      "cfg",
> +			      "bus_master",
> +			      "bus_slave",
> +			      "slave_q2a";
> +
> +		interrupts = <GIC_SPI 518 IRQ_TYPE_LEVEL_HIGH>,
> +					 <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
> +					 <GIC_SPI 474 IRQ_TYPE_LEVEL_HIGH>;
> +
> +		interrupt-names = "global", "doorbell", "dma";
> +
> +		interconnects = <&pcie_anoc MASTER_PCIE_1 0 &mc_virt SLAVE_EBI1 0>,
> +				<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_PCIE_1 0>;

I keep seeing Konrad requesting that we use the #define instead of a raw
number 0, i.e. something like QCOM_ICC_TAG_ALWAYS (although if I'm
reading that correctly QCOM_ICC_TAG_ALWAYS doesn't evaluate to 0, so
make sure you pick the appropriate one).

> +		interconnect-names = "pcie-mem", "cpu-pcie";

This is nitpicky, but unless someone told you to do the whitespace
between some of these properties I'd get more consistent. i.e. reg and
reg-names has no newline between them, but clocks and clock-names does,
and then interconnects/interconnect-names does not.

> +
> +		dma-coherent;
> +
> +		iommus = <&pcie_smmu 0x80 0x7f>;
> +		resets = <&gcc GCC_PCIE_1_BCR>;
> +		reset-names = "core";
> +		power-domains = <&gcc PCIE_1_GDSC>;
> +		phys = <&pcie1_phy>;
> +		phy-names = "pciephy";
> +		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
> +		num-lanes = <4>;
> +
> +		status = "disabled";
> +	};
> +
>  	pcie1_phy: phy@1c14000 {
>  		compatible = "qcom,sa8775p-qmp-gen4x4-pcie-phy";
>  		reg = <0x0 0x1c14000 0x0 0x4000>;
> -- 
> 2.7.4
> 
> 


