Return-Path: <devicetree+bounces-250553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 43ABDCE9F02
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 15:31:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2DE5D301DBBE
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:30:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B809825E469;
	Tue, 30 Dec 2025 14:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DS1QKy7P";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JySDxYUr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B241F4611
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767105045; cv=none; b=boGbhITRDJDG2/qys8bru+S3aMo/JStz3p3MJzP0LNVp+78ZEhp3ZGAU+c1D4JZPsxkpl4Hm0OPaNIpTeZsGFR3NhmII8MnDdzWvXtvcjDAB1yzakm+JknrlGrvsvaLHsuSjWQCQmn+87wD6XNthTT4jMY5aujADUjz0T5uAC2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767105045; c=relaxed/simple;
	bh=QP26hpgxF+lAD8Z9cGWJFhCymcgjif5Fg8NHCOBcVLM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VMNxMWL8m4Mt72ZrfT3CrEBKHnBEbETVMMyZInJe6n1aoFGQle033mZ+8O4SSTrFVl3HbAZ0qW/0MDRBDOvGrGiMhiovRQcxc+cQ7CTSj13R28DeJXgtbi8C6EDH1FqBsxDganDhK8o/qYEdzOe/QAGBtVsjSZK95zcnVL9ayxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DS1QKy7P; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JySDxYUr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUD5l782548684
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:30:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/PZp3x2OV0c+hwCgSx1p/1wkfRgjK/4GzIE/SLBWfSM=; b=DS1QKy7PcO3ICAte
	S6ADdJn6kKwhvtdKzki8P2g1Z4/FsAZ8IljuSjOda6a1u1huvAnEl+b51jtcmy4S
	1ipfEJA3xSJlRSrsAfZrn6MgJuzX+nf1GYVYb/eB2l2jhWcJz7quZkDCEFyHzQfd
	Qom7Ug/yg+sUS2/KjC1Ppv8Ue/wCiT68qm7RQ+t0CJMraXEWtginjUSuk7AXCYRY
	ZqtdjyCuPxTlkgtk5cSgc7vIwZw8rQ4shuG5bwNYUUJHI519lsQOcMPd25Plo82Y
	MmNCqOq4Sjw3zcIjF1tgV/SvqkfOd+hJyOuk+UybTDQf6mWyJluExI4Wegbf+eQl
	YBVqbQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc7399d4q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:30:43 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee409f1880so27305141cf.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 06:30:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767105042; x=1767709842; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/PZp3x2OV0c+hwCgSx1p/1wkfRgjK/4GzIE/SLBWfSM=;
        b=JySDxYUr2afnVwcDVf1SRJnPnrkq0+LXb0GENVOgZraO4PqKLNfwCrs0dGCv9Xh8uF
         N4R3xtE8L+1C6VVzHIr7NmyOgUApYlqS/Jx/MOb0UN60YuKaWmykOiumB2re/OkAh1H8
         aScUgr1e95qwyFGUY7lBOi48RPeus6OnGSdMkX0Ad8DPNlQIM2+HI94LdMnETElJ8kvM
         kqyhAU/PvzopQdkr376QClqEltnU4+B2B+lH7m2VDn8BWv8D1FdWHGHdpuhgs2+Tzwsb
         tvfE/rkLffNGKR3CZx+UqCSMjrqIeE16TRC6w7BnBtYkey0oV3/BPVGEft7kC53Xcuh5
         KAwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767105042; x=1767709842;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/PZp3x2OV0c+hwCgSx1p/1wkfRgjK/4GzIE/SLBWfSM=;
        b=ufZORVZ9CqeMn0eFUAMyOBResl06x0/a1ZBgXPXfkwGWS/gZcjBSH85jd9y/1l4RWV
         iM6OqQs4ubxMieXEhgasDUNZN+rEdAr6r4QRUnHNu4xK2vDhi05MTTEOpzG6NuaUfJfQ
         jcVI7oNWjB37o12mR6l5le6DGODGmVn7zVUYeeIjbmHto48mKAc8nTLnJKezVfWW2PZL
         3RT2Tkw5YXfDren23QJHj5KUR10EmOmWotV6Wc1gidQfMn31dFGW7BSLCwwuRIWVuM0B
         iCRbHZ6sqAbWIsp0gIsSGCPcaOaVFdrOjq/yBxxrHtTtZ9RSQV2uQM7XL9yJc/XMSMvt
         /DkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzZlJiv4dwjZS4MxQMktCEWfbd36N8Lca2HvoxIqZ4T/U0c6Vjq0Z2O/vdGZ0jCR+TokcNLuuCUtAG@vger.kernel.org
X-Gm-Message-State: AOJu0Yywlko82hm/8daxHqDX/ypKgAeUKnpqCsoxj8od8c4/6fK/MLir
	YZh1urMwH0aSstY26vsubDIZEEEKYAILmA5VGy98l9GQbyCwsIqWuEgzCxN+44zYuq0rikKi56i
	Q1U1cB+SW30HUQNb3UNw3lTcwj4BAMcuGCIiXlRaktUXCo4cb6oO1GRBBCnqK4EqmDPN+fmf0
X-Gm-Gg: AY/fxX5I1egK5ZRCWTUZSmc9PSBBXp9BxzIsmFi4I4JDkXs7R8c67XpIhAml+nCShGj
	P1rXf8JqZABAWpFh3xSp8s3JBgivhPF6xAaeed6Uv45icNc7vRKqrSMP5StQ7lfn6you1Y5Z4Aa
	ckAIfDru+PSfOeZWJz0kreLnblTs8JDM7KKt9L+V0XNOP78MKCTqUA7/oGsATJmlhQAqh2k/1GY
	FmRcYT8K3OlG1mB6OnOH8qEIc3TRuzPLDU2M6aWFHGgZC0WSiBSVCrmXOeT9nqewGtOI8qn06xl
	RhkfBURjlA+vQrhP5O3zHeP/L0MhinboKm9gi80O9OdTv2g/XbzIoj3u59EaT8wDZF2eThRTfmW
	VvMUj9lJI1rjYG3Qd/c85AadR1SLCL3N+ECdH0k00z2W2bVYSw8CwonUzEJBztR9NWg==
X-Received: by 2002:a05:622a:1983:b0:4ee:1924:c6fc with SMTP id d75a77b69052e-4f4abcb50acmr385349351cf.1.1767105042142;
        Tue, 30 Dec 2025 06:30:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE5pOt+wPqz8LsodsxGbIxAzrDfZ+9egM1Xc+qC7esh4eB5dGKkht5V5r7Vd5boEDylrxpaSQ==
X-Received: by 2002:a05:622a:1983:b0:4ee:1924:c6fc with SMTP id d75a77b69052e-4f4abcb50acmr385348931cf.1.1767105041564;
        Tue, 30 Dec 2025 06:30:41 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8044f4acdbsm3534554166b.22.2025.12.30.06.30.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 06:30:40 -0800 (PST)
Message-ID: <f5cd5639-00d6-4d6b-866e-7b3503a59d9e@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 15:30:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: Introduce Glymur base dtsi
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, rajendra.nayak@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
References: <20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com>
 <20251219-upstream_v3_glymur_introduction-v3-3-32271f1f685d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251219-upstream_v3_glymur_introduction-v3-3-32271f1f685d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: RiWxg1LirIRKPjkTaHdL5WUEuyeF_nzj
X-Authority-Analysis: v=2.4 cv=HrV72kTS c=1 sm=1 tr=0 ts=6953e213 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=w7Tv4zNA8aCE7STyPtkA:9 a=G0Cx74KbSqDmYbrs:21
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDEzMSBTYWx0ZWRfX39NE27NB5Pgc
 bm8Oz7o7qLOYP3mqNwLnAepNzxwhrxfCVR3VBW+w0joAIzkFffEKQKUrSjr0LtEwnXeVlWTLHnY
 qmtgZLUc6f0gCPVhV0xFDgP84/2Ih30TJCmXm7p7vM8nfY4a+FMCdl/JX6F872sOUmYq3UGqzTJ
 o+YP814xFkSs0s8syuw5RWYKkz5DgYisAvKGmuWii3nCxmD34MWOWc6s4oYQW3dlbBPV+e/DBpg
 7CxeasxuAFwe34JPkPqzNzgqy0IYzQe3hmzTbz74CJH2G97ibCUvj0R+/1BbDhTV/ojOK6gbGJh
 tPldPhQ3BZD/8daTya9/u54ro1vG5UkMecQ94J0SO2L6DR4+W0p/mn/EEBzdf+0eVMhSmlhATe1
 hJiMxPLCkX6bNaef6+OlqmpkALky4JDq5U2AksmAqKaEJ826kMz+rX6wmp5ZJvtvS/atb9DREDN
 IniDzYUtdL/PvaR8+xw==
X-Proofpoint-ORIG-GUID: RiWxg1LirIRKPjkTaHdL5WUEuyeF_nzj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_01,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300131

On 12/19/25 3:46 PM, Pankaj Patil wrote:
> Introduce the base device tree support for Glymur – Qualcomm's
> next-generation compute SoC. The new glymur.dtsi describes the core SoC
> components, including:

[...]

> +		gpi_dma2: dma-controller@800000 {
> +			compatible = "qcom,glymur-gpi-dma", "qcom,sm6350-gpi-dma";
> +			reg = <0x0 0x00800000 0x0 0x60000>;
> +			interrupts = <GIC_SPI 588 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 589 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 590 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 593 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 596 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 599 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_ESPI 129 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_ESPI 130 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_ESPI 131 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_ESPI 132 IRQ_TYPE_LEVEL_HIGH>;
> +			dma-channels = <16>;
> +			dma-channel-mask = <0x3f>;
> +			#dma-cells = <3>;
> +			iommus = <&apps_smmu 0xd76 0x0>;
> +			status = "disabled";

Any reason for it to be disabled?

On some platforms the (common and default) TZ config is overzealous,
but that shouldn't generally be the case on compute.


> +		};
> +
> +		qupv3_2: geniqup@8c0000 {
> +			compatible = "qcom,geni-se-qup";
> +			reg = <0x0 0x008c0000 0x0 0x3000>;
> +			clocks = <&gcc GCC_QUPV3_WRAP_2_M_AHB_CLK>,
> +				 <&gcc GCC_QUPV3_WRAP_2_S_AHB_CLK>;
> +			clock-names = "m-ahb",
> +				      "s-ahb";
> +			iommus = <&apps_smmu 0xd63 0x0>;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +			status = "disabled";

Similarly here (individual QUPs should stay disabled because leaving
them all enabled would lead to multiple attempts at claiming the same
pins)

[...]

> +			reg-names = "parf",
> +				    "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "config",
> +				    "mhi";
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x78105000 0x0 0x100000>,
> +				<0x02000000 0x0 0x78205000 0x0 0x78205000 0x0 0x1dfb000>,
> +				<0x03000000 0x7 0x80000000 0x7 0x80000000 0x0 0x20000000>;

Please align the '<'s (in all pcie nodes)

> +		pcie4_phy: phy@1bf6000 {
> +			compatible = "qcom,glymur-qmp-gen4x2-pcie-phy";
> +			reg = <0x0 0x01bf6000 0x0 0x2000>;
> +
> +			clocks = <&gcc GCC_PCIE_PHY_4_AUX_CLK>,
> +				 <&gcc GCC_PCIE_4_CFG_AHB_CLK>,
> +				 <&tcsr TCSR_PCIE_2_CLKREF_EN>,
> +				 <&gcc GCC_PCIE_4_PHY_RCHNG_CLK>,
> +				 <&gcc GCC_PCIE_4_PIPE_CLK>,
> +				 <&gcc GCC_PCIE_4_PIPE_DIV2_CLK>;
> +			clock-names = "aux",
> +					"cfg_ahb",
> +					"ref",
> +					"rchng",
> +					"pipe",
> +					"pipediv2";

Please align the '""'s (in all pcie phy nodes)

[...]


> +			interconnects = <&pcie_east_anoc MASTER_PCIE_5 QCOM_ICC_TAG_ALWAYS
> +					&mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					&pcie_east_slv_noc SLAVE_PCIE_5 QCOM_ICC_TAG_ALWAYS>;

And the '&s'

[...]

> +		pcie6: pci@1c00000 {
> +			device_type = "pci";
> +			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
> +			reg = <0x0 0x01c00000 0x0 0x3000>,
> +			      <0x0 0x7e000000 0x0 0xf20>,
> +			      <0x0 0x7e000f40 0x0 0xa8>,
> +			      <0x0 0x7e001000 0x0 0x4000>,
> +			      <0x0 0x7e100000 0x0 0x100000>,
> +			      <0x0 0x01c03000 0x0 0x1000>;

I'm a little confused about the lack of ECAM enablement (through
a large config space), but I suppose we'll see that soon..

Konrad

