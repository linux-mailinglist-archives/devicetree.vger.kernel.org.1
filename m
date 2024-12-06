Return-Path: <devicetree+bounces-127861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E17F9E683F
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 08:51:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 096771883E55
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 07:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E889E1DE2A5;
	Fri,  6 Dec 2024 07:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="4JguhqYS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8F781DD88F
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 07:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733471503; cv=none; b=Xu4R94+/jPUYlndzaGYE9g/Ecf4obHpJUbyaCO7vGxMCuq1MLPWpFeMoL0iJw9zwE6GKyKjFaia2JUrhpbV+D0jEaGvZIml/69DA8+9Ya9CGQsPUTIUnxvL9RoNK7a26QgEReOPqAS8DUDjddb7n9exn9/5X95OkM6eiBS5ijnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733471503; c=relaxed/simple;
	bh=Ty82KE60SAZ3gymaV3JcXb00EkSGfszXGV7H4I9PWOM=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=gal8XbDsqoxcuMOuWbgbGcHqh2HOIzlc6WMx8gWkJFxHu07lrySGrMRe15Go7HwPdlAGl+bpCKQvb2YSTNTMBwfcC0snPf8KUqdGAIbE15NesNu7RV+zQY43nrMJ1XRqc+55gYTnLZn/Hof0S8cNZIhwNrcMG0NYp7ay0Cwcuw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=4JguhqYS; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aa642e45241so16250866b.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 23:51:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1733471500; x=1734076300; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UMSODDuTWYMCqnQmcsCAgVDwoQ/gvjhGxVvo+2PJpAU=;
        b=4JguhqYSbPjiQBW/I7zKSRacz9VrYyJ15SycPzBLBIf1NI1y7wux7o0vwvdf0iKKav
         g6HjTXG5lTO4RRIjrmeh5AneQT4BlaGGWQfy3lWIuvi5dWWWKCwtW/PJ8SVHWEL+TF/E
         h5R1J9wpEucva1aaMjU1Hjs4tIgll5bbxcFyIHhHgbyDJsXJr0nmWHhl1qhO8CQ2Sthv
         zztbtrb6O42n6A/Mifwq6aitGcDtD1JpLpfGc38f1x1C3lQBBCNdpPA704F2Ph35mYXz
         FwN80E0Gt7Ik/6x5uHnrrpqP3LSYIhftz/MnTZ6jLsp3r9zjn+4YqNbQlLOuJPbjo8Gd
         Mm0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733471500; x=1734076300;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UMSODDuTWYMCqnQmcsCAgVDwoQ/gvjhGxVvo+2PJpAU=;
        b=jW1fIbd0Ua6nTL6qS0JxlOHDlB5XxXo/cXf6J9GXx2+obXZuEZNZBveltQiFjXs/eg
         RVkAiEjlXagIlphm+oMUh5B4pHeJDPkIKcBbagh8xFM8D17zFUmN2l7LWW0EV1TtuHHs
         PKmqO/qJ5tTxDvYGjJ+TR22WAZKOxjf4GUVmiXJtxeoSEOjcvlH3wXZllx2WOr1a/kg7
         WxDFfXOCMAW7p7d8mpNkjslELcOnMNMhjUjGWj99gzRCo46WR9zoWwVOOnoT/2v3q6g9
         FxWYofQUYA3FvASp8a/AzwNSMtF7ZvLD6BI30iNvqy5rwM9ZkL5Hl1aq+lp1x34BzLZ1
         ybJA==
X-Forwarded-Encrypted: i=1; AJvYcCXVCWBaNAt4nRV4crN/RlBebsOKbpPq8Ltlgj7yJU83Ho80+YYRkw1HKsehWVUC8M9PKoRcUOSEdT1n@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe0RtfMwHP4MfCzcfPkxqm7sg65LqUiiNZUBdRr0xlmqWWyMfL
	vzpP9SJZqb6GhLsDoh2xm0A/5tTiH2c6O03pUODUnfCj0FNcpuS2Si2rT9NXIGQ=
X-Gm-Gg: ASbGncvkA6j0V11V8e8a+QnVIRPiln2gxpDCO9KjRzO0dFULhCriZhznRS/NvynwDm2
	jyqgle7T+8H9wlX20geWVuRSJD9sayeaSRdwpmuy87Rd3UntpiLO6kiRF6Cbux1xkOUVII2QgEz
	eNlvZ0vdR52OkplkKJg0F+L/nkm8/KcdD2bqA9eH3o6Cx9sLT3fDxinf93xKx82aQqV01Nfqb0y
	0mAWdeF0Syhhew/e86dTHaRzG7AFnZ4S0Klklb+/fK4WkDfkw==
X-Google-Smtp-Source: AGHT+IEXnhfYAgg+zFyFvcMBx4BeVI9aw8zLvzM3EY4sd3zAvVXVgM9zAr4iiUvpyKcAKsgto/JFfA==
X-Received: by 2002:a17:906:2929:b0:aa5:1ef5:261e with SMTP id a640c23a62f3a-aa639fec9dfmr145411266b.17.1733471500236;
        Thu, 05 Dec 2024 23:51:40 -0800 (PST)
Received: from localhost ([41.66.99.84])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e96c3esm203780066b.68.2024.12.05.23.51.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 23:51:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 06 Dec 2024 08:51:38 +0100
Message-Id: <D64GD0NCHTO3.2W6LZKBMNE8UU@fairphone.com>
Subject: Re: [PATCH v7 4/5] arm64: dts: qcom: sc7280: Add support for camss
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Vikram Sharma" <quic_vikramsa@quicinc.com>, <rfoss@kernel.org>,
 <todor.too@gmail.com>, <bryan.odonoghue@linaro.org>, <mchehab@kernel.org>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <akapatra@quicinc.com>, <hariramp@quicinc.com>, <andersson@kernel.org>,
 <konradybcio@kernel.org>, <hverkuil-cisco@xs4all.nl>,
 <cros-qcom-dts-watchers@chromium.org>, <catalin.marinas@arm.com>,
 <will@kernel.org>
Cc: <linux-arm-kernel@lists.infradead.org>, <linux-media@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <kernel@quicinc.com>
X-Mailer: aerc 0.18.2-0-ge037c095a049
References: <20241204100003.300123-1-quic_vikramsa@quicinc.com>
 <20241204100003.300123-5-quic_vikramsa@quicinc.com>
In-Reply-To: <20241204100003.300123-5-quic_vikramsa@quicinc.com>

On Wed Dec 4, 2024 at 11:00 AM CET, Vikram Sharma wrote:
> Add changes to support the camera subsystem on the SC7280.
>
> Signed-off-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Trishansh Bhardwaj <quic_tbhardwa@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>

Hi Vikram,

This is working on QCM6490 Fairphone 5 smartphone with WIP drivers for
IMX858 and S5KJN1, thanks!

Tested-by: Luca Weiss <luca.weiss@fairphone.com> # qcm6490-fairphone-fp5

Regards
Luca

> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 172 +++++++++++++++++++++++++++
>  1 file changed, 172 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/q=
com/sc7280.dtsi
> index 55db1c83ef55..e363996602d6 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -4426,6 +4426,178 @@ cci1_i2c1: i2c-bus@1 {
>  			};
>  		};
> =20
> +		camss: camss@acb3000 {
> +			compatible =3D "qcom,sc7280-camss";
> +
> +			reg =3D <0x0 0x0acb3000 0x0 0x1000>,
> +			      <0x0 0x0acba000 0x0 0x1000>,
> +			      <0x0 0x0acc1000 0x0 0x1000>,
> +			      <0x0 0x0acc8000 0x0 0x1000>,
> +			      <0x0 0x0accf000 0x0 0x1000>,
> +			      <0x0 0x0ace0000 0x0 0x2000>,
> +			      <0x0 0x0ace2000 0x0 0x2000>,
> +			      <0x0 0x0ace4000 0x0 0x2000>,
> +			      <0x0 0x0ace6000 0x0 0x2000>,
> +			      <0x0 0x0ace8000 0x0 0x2000>,
> +			      <0x0 0x0acaf000 0x0 0x4000>,
> +			      <0x0 0x0acb6000 0x0 0x4000>,
> +			      <0x0 0x0acbd000 0x0 0x4000>,
> +			      <0x0 0x0acc4000 0x0 0x4000>,
> +			      <0x0 0x0accb000 0x0 0x4000>;
> +			reg-names =3D "csid0",
> +				    "csid1",
> +				    "csid2",
> +				    "csid_lite0",
> +				    "csid_lite1",
> +				    "csiphy0",
> +				    "csiphy1",
> +				    "csiphy2",
> +				    "csiphy3",
> +				    "csiphy4",
> +				    "vfe0",
> +				    "vfe1",
> +				    "vfe2",
> +				    "vfe_lite0",
> +				    "vfe_lite1";
> +
> +			clocks =3D <&camcc CAM_CC_CAMNOC_AXI_CLK>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CSIPHY0_CLK>,
> +				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSIPHY1_CLK>,
> +				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSIPHY2_CLK>,
> +				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSIPHY3_CLK>,
> +				 <&camcc CAM_CC_CSI3PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSIPHY4_CLK>,
> +				 <&camcc CAM_CC_CSI4PHYTIMER_CLK>,
> +				 <&gcc GCC_CAMERA_AHB_CLK>,
> +				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
> +				 <&camcc CAM_CC_ICP_AHB_CLK>,
> +				 <&camcc CAM_CC_IFE_0_CLK>,
> +				 <&camcc CAM_CC_IFE_0_AXI_CLK>,
> +				 <&camcc CAM_CC_IFE_0_CPHY_RX_CLK>,
> +				 <&camcc CAM_CC_IFE_0_CSID_CLK>,
> +				 <&camcc CAM_CC_IFE_1_CLK>,
> +				 <&camcc CAM_CC_IFE_1_AXI_CLK>,
> +				 <&camcc CAM_CC_IFE_1_CPHY_RX_CLK>,
> +				 <&camcc CAM_CC_IFE_1_CSID_CLK>,
> +				 <&camcc CAM_CC_IFE_2_CLK>,
> +				 <&camcc CAM_CC_IFE_2_AXI_CLK>,
> +				 <&camcc CAM_CC_IFE_2_CPHY_RX_CLK>,
> +				 <&camcc CAM_CC_IFE_2_CSID_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_0_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_0_CPHY_RX_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_0_CSID_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_1_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_1_CPHY_RX_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_1_CSID_CLK>;
> +			clock-names =3D "camnoc_axi",
> +				      "cpas_ahb",
> +				      "csiphy0",
> +				      "csiphy0_timer",
> +				      "csiphy1",
> +				      "csiphy1_timer",
> +				      "csiphy2",
> +				      "csiphy2_timer",
> +				      "csiphy3",
> +				      "csiphy3_timer",
> +				      "csiphy4",
> +				      "csiphy4_timer",
> +				      "gcc_camera_ahb",
> +				      "gcc_cam_hf_axi",
> +				      "icp_ahb",
> +				      "vfe0",
> +				      "vfe0_axi",
> +				      "vfe0_cphy_rx",
> +				      "vfe0_csid",
> +				      "vfe1",
> +				      "vfe1_axi",
> +				      "vfe1_cphy_rx",
> +				      "vfe1_csid",
> +				      "vfe2",
> +				      "vfe2_axi",
> +				      "vfe2_cphy_rx",
> +				      "vfe2_csid",
> +				      "vfe_lite0",
> +				      "vfe_lite0_cphy_rx",
> +				      "vfe_lite0_csid",
> +				      "vfe_lite1",
> +				      "vfe_lite1_cphy_rx",
> +				      "vfe_lite1_csid";
> +
> +			interrupts =3D <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 640 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 359 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 122 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 641 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 360 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names =3D "csid0",
> +					  "csid1",
> +					  "csid2",
> +					  "csid_lite0",
> +					  "csid_lite1",
> +					  "csiphy0",
> +					  "csiphy1",
> +					  "csiphy2",
> +					  "csiphy3",
> +					  "csiphy4",
> +					  "vfe0",
> +					  "vfe1",
> +					  "vfe2",
> +					  "vfe_lite0",
> +					  "vfe_lite1";
> +
> +			interconnects =3D <&gem_noc  MASTER_APPSS_PROC 0 &cnoc2 SLAVE_CAMERA_=
CFG 0>,
> +					<&mmss_noc MASTER_CAMNOC_HF  0 &mc_virt SLAVE_EBI1     0>;
> +			interconnect-names =3D "ahb", "hf_0";
> +
> +			iommus =3D <&apps_smmu 0x800 0x4e0>;
> +
> +			power-domains =3D <&camcc CAM_CC_IFE_0_GDSC>,
> +					<&camcc CAM_CC_IFE_1_GDSC>,
> +					<&camcc CAM_CC_IFE_2_GDSC>,
> +					<&camcc CAM_CC_TITAN_TOP_GDSC>;
> +			power-domain-names =3D "ife0", "ife1", "ife2", "top";
> +
> +			status =3D "disabled";
> +
> +			ports {
> +				#address-cells =3D <1>;
> +				#size-cells =3D <0>;
> +
> +				port@0 {
> +					reg =3D <0>;
> +				};
> +
> +				port@1 {
> +					reg =3D <1>;
> +				};
> +
> +				port@2 {
> +					reg =3D <2>;
> +				};
> +
> +				port@3 {
> +					reg =3D <3>;
> +				};
> +
> +				port@4 {
> +					reg =3D <4>;
> +				};
> +			};
> +		};
> +
>  		camcc: clock-controller@ad00000 {
>  			compatible =3D "qcom,sc7280-camcc";
>  			reg =3D <0 0x0ad00000 0 0x10000>;


