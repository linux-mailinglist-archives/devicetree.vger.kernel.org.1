Return-Path: <devicetree+bounces-223226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A950CBB2526
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 04:01:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 644E6325866
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 02:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7028114A62B;
	Thu,  2 Oct 2025 02:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h/iOd7EQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 966715733E
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 02:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759370487; cv=none; b=qEvWl71EVqgZ8VxMmQdnN+FsqpFVTaFkRPKMG/x37GdNwp70qrjmqBlYgkp0BgGYmvLwmSCQ83ej1In5A5C4+p3taKjX4YOvqa4LTxLE80yscWdWzQIiEVjdsN0aOGysTC+PfV8rpGBC06lxYS05fYGYLmjEOTW2Gi6z8LB3Qtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759370487; c=relaxed/simple;
	bh=PPUI2geMS9zlzoaHXsJ0CztmeGxA29GYz5yY5qTmqeA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ragy7FuQnLN7oPFh19oCIjuWddV9ntQNEdZC7dUub1XuXOqKcNFMXFclnDzGJFfvAJ8bHS6cWafda8mpPUE9nR4DfCiXFK9Cx7QlSC5HnCvf6/ByadXLxCjcnQZtdQ5T8toUv2M2u/OQAJgql7V76xj5k/SYNxEYKom01ul3dHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h/iOd7EQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591Ibtkq023327
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 02:01:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8NbEfizQUWTtDuaEiGJY++Pou4KpkObXybJBlqEsClc=; b=h/iOd7EQuMAXWcW+
	lt/DfTy7srrrVXQlpy4eHttGCQZKu+LO2EkpkiX8uW2e3SRca+ofZzGIXmgz/0JY
	YS1mTVxfh7pyzgKTdyr0Hot0NrERkRkKJS1acgTb6YtiyQNd9cxUw2dGRLUfkNAD
	+Kvicuip4oflpXRVdN4vWZdOkknvng3w7sV6kuGypfDizC0MJPdzC8q5/vHY4huL
	prPaDiz3PGnINX8xiBPPYShLRcEXoqUGhQB7lNsnI2F/tfv10xK+5ACLVr12nldp
	EqBbxwXbDnLnp0AIKv0uKIJHm28ZmG+2s5NOeVfgsUWRJTiTsJiQ0+iXaksIql48
	URsDvA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8a66e7f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 02:01:24 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b60968d52a1so956431a12.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 19:01:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759370482; x=1759975282;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8NbEfizQUWTtDuaEiGJY++Pou4KpkObXybJBlqEsClc=;
        b=AxjqtmXvWbd84lbSFzNgkuctYVGmumVVE6ADth+wMNYh3JLKwht1avssXbonNXQ4af
         BUGpFkscE4dTRCI8yk+FdTthhcxjDJQU1JoZmj0cWg9NBgiWlHDVvn/Jw6RylaHa8Hdd
         SqKBbofQcnJ03Iy5+WL6qw4x/GL5pBgOaOwO8gp/2w8Fgyfhj4KjPRTHNVwG3ZuQbhQv
         izkoG0SMk01XlNBQn8hxygQ6T9+atSU3A7dCVui9ET1ChKUD1AU7f/OERo6RNnNZ85lE
         mMNEy4JYsYx3f2Ma+DQmxb4CemZafw9tVb/E+/vVO8B47Swbh5TUO3XlMhaIv6WcSUQv
         p4+A==
X-Forwarded-Encrypted: i=1; AJvYcCXCRpw2/Bw4fa1QDU6GCcQQwPfftGNkApmhMvFrEmloAkEWUnfnWSb0iTbRkv62Q5XzmINQmgIHrxYW@vger.kernel.org
X-Gm-Message-State: AOJu0YxnYc8Fe7z9Pt2fltQRtzH0G4Fv10D0H4wp+IA0prhwfm1/cluO
	8VgE82X1GL60++w61ugj4peM3eNmmn72rSfocaWM6QSgHl19SP4Hgw1S+dsHOueD09MYc39LgXV
	ZwGUdVYvZQL61CFEw5m3Hc1yLh06k8dSyqTFLL+cn/DgkOa4haUIsv+ZEX24aXZT2
X-Gm-Gg: ASbGnctP5WBCvueIC1XuRZbxAdcMdTg7QPFWoNYblBKE1ayGvFqQPhOjp/+ynsr4hlf
	E4GRXlKOYiBxZWAJqq0xDLpLIkYg3n/6k0RkQQelufrzCHDf3m14gyNafl+k5YL6/LHx3Yxj9eV
	RVMCcByj4T27boVSpBNoUe1Hkbo9IFJNmif/y8fbvhp5cGpjoPAJi4ZyXRDz8rSC3Pcpp5FeYDG
	kvoMEt6a/J//1q1blTiWlshGHdq92mJ6ZhNlZ4tDELgPnif/lILUToHQibHcA3Jc15f/tUqPZO+
	+ZcU+7lYQYqmwMePnpXn1EnypcV+3PAwszAXAfZmSABxI6y4BpSyKYn6Db3DYr9fiIAEDM38Rjh
	iIyUm
X-Received: by 2002:a05:6a20:3946:b0:2e3:a914:aa93 with SMTP id adf61e73a8af0-321e477bf0dmr7670863637.30.1759370482210;
        Wed, 01 Oct 2025 19:01:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFjOOZ64bXPfAFXM3hKJDHB/mu2en9QreyGMP6Drwrt0qG8NWYPcUKAYjBPa3c+kv8YUlnAJg==
X-Received: by 2002:a05:6a20:3946:b0:2e3:a914:aa93 with SMTP id adf61e73a8af0-321e477bf0dmr7670805637.30.1759370481669;
        Wed, 01 Oct 2025 19:01:21 -0700 (PDT)
Received: from [192.168.29.113] ([49.43.226.92])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fcc45fsm999528b3a.39.2025.10.01.19.01.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 19:01:21 -0700 (PDT)
Message-ID: <08d64683-cea7-4e39-bde4-5b6cd213afee@oss.qualcomm.com>
Date: Thu, 2 Oct 2025 07:31:12 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sm8750: Add PCIe PHY and
 controller node
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
 <20250826-pakala-v3-2-721627bd5bb0@oss.qualcomm.com>
 <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=RZKdyltv c=1 sm=1 tr=0 ts=68dddcf4 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=jyboLUZ+MFoqbd6eZ184Eg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=AkHrb9cOowbY_nbVBZgA:9
 a=l78PwBI5Ku7GpRGV:21 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: kn5v0b0JLOZMgMiEq67xDNz9GVE4r03s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMyBTYWx0ZWRfXzWWGWMdJWyGo
 m/2P5oXvqpUqnKfESZqeNoav7W/rLLk96kG6M3SBxg7hJaTfuWzuis0LF6M9HaCkhPh+T7YteEo
 g/nAUIH9PdcuEzZpjlWtylF8ADI+7a59AT2Zlr4iQFxsEdUC10Jpcdlwc0BXTW+xDYVlDHyxWxh
 pHlSpB47l/Py0qXPn5AU8KcxQzcKG6F5ASTauyTzqHvq5RMr2GMg7i4PGPdAbJlf2q27Sgi6hFN
 G7t4Q6fMBF4uaKqb8+wz8IqCqhBkDqpL4+ySyQi24d41N5WkPl82PU+dLrBsCNpQi7n/t8kCCU0
 DTMQJn4pAU5h4IJ7wHgziLIkPehKkuusS4uBikWxtPn1OPstHncMyQjbC67FMAqlvoOSbpWpVNV
 Sx+gf++BMQ7lzozisqdUHQP5HxoYew==
X-Proofpoint-ORIG-GUID: kn5v0b0JLOZMgMiEq67xDNz9GVE4r03s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270033



On 10/2/2025 5:07 AM, Bjorn Andersson wrote:
> On Tue, Aug 26, 2025 at 04:32:54PM +0530, Krishna Chaitanya Chundru wrote:
>> Add PCIe controller and PHY nodes which supports data rates of 8GT/s
>> and x2 lane.
>>
> 
> I tried to boot the upstream kernel (next-20250925 defconfig) on my
> Pakala MTP with latest LA1.0 META and unless I disable &pcie0 the device
> is crashing during boot as PCIe is being probed.
> 
> Is this a known problem? Is there any workaround/changes in flight that
> I'm missing?
> 
The only required change for this is the driver change in this series
[3/3] PCI: qcom: Restrict port parsing only to pci child nodes

- Krishna Chaitanya.
> Regards,
> Bjorn
> 
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8750.dtsi | 180 ++++++++++++++++++++++++++++++++++-
>>   1 file changed, 179 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> index 4643705021c6ca095a16d8d7cc3adac920b21e82..b47668a64bcead3e48f58eeb2e41c04660493cb7 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> @@ -631,7 +631,7 @@ gcc: clock-controller@100000 {
>>   			clocks = <&bi_tcxo_div2>,
>>   				 <0>,
>>   				 <&sleep_clk>,
>> -				 <0>,
>> +				 <&pcie0_phy>,
>>   				 <0>,
>>   				 <0>,
>>   				 <0>,
>> @@ -3304,6 +3304,184 @@ gic_its: msi-controller@16040000 {
>>   			};
>>   		};
>>   
>> +		pcie0: pcie@1c00000 {
>> +			device_type = "pci";
>> +			compatible = "qcom,pcie-sm8750", "qcom,pcie-sm8550";
>> +			reg = <0x0 0x01c00000 0x0 0x3000>,
>> +			      <0x0 0x40000000 0x0 0xf1d>,
>> +			      <0x0 0x40000f20 0x0 0xa8>,
>> +			      <0x0 0x40001000 0x0 0x1000>,
>> +			      <0x0 0x40100000 0x0 0x100000>,
>> +			      <0x0 0x01C03000 0x0 0x1000>;
>> +			reg-names = "parf",
>> +				    "dbi",
>> +				    "elbi",
>> +				    "atu",
>> +				    "config",
>> +				    "mhi";
>> +
>> +			#address-cells = <3>;
>> +			#size-cells = <2>;
>> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
>> +				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x23d00000>,
>> +				 <0x03000000 0x4 0x00000000 0x4 0x00000000 0x3 0x00000000>;
>> +			bus-range = <0x00 0xff>;
>> +
>> +			dma-coherent;
>> +
>> +			linux,pci-domain = <0>;
>> +
>> +			msi-map = <0x0 &gic_its 0x1400 0x1>,
>> +				  <0x100 &gic_its 0x1401 0x1>;
>> +			msi-map-mask = <0xff00>;
>> +
>> +			num-lanes = <2>;
>> +
>> +			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "msi0",
>> +					  "msi1",
>> +					  "msi2",
>> +					  "msi3",
>> +					  "msi4",
>> +					  "msi5",
>> +					  "msi6",
>> +					  "msi7",
>> +					  "global";
>> +
>> +			#interrupt-cells = <1>;
>> +			interrupt-map-mask = <0 0 0 0x7>;
>> +			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
>> +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
>> +				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
>> +				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
>> +				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
>> +				 <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
>> +				 <&gcc GCC_AGGRE_NOC_PCIE_AXI_CLK>,
>> +				 <&gcc GCC_CNOC_PCIE_SF_AXI_CLK>;
>> +			clock-names = "aux",
>> +				      "cfg",
>> +				      "bus_master",
>> +				      "bus_slave",
>> +				      "slave_q2a",
>> +				      "ddrss_sf_tbu",
>> +				      "noc_aggr",
>> +				      "cnoc_sf_axi";
>> +
>> +			interconnects = <&pcie_noc MASTER_PCIE_0 QCOM_ICC_TAG_ALWAYS
>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
>> +					 &cnoc_main SLAVE_PCIE_0 QCOM_ICC_TAG_ALWAYS>;
>> +			interconnect-names = "pcie-mem",
>> +					     "cpu-pcie";
>> +
>> +			iommu-map = <0x0   &apps_smmu 0x1400 0x1>,
>> +				    <0x100 &apps_smmu 0x1401 0x1>;
>> +
>> +			resets = <&gcc GCC_PCIE_0_BCR>;
>> +			reset-names = "pci";
>> +
>> +			power-domains = <&gcc GCC_PCIE_0_GDSC>;
>> +
>> +			operating-points-v2 = <&pcie0_opp_table>;
>> +
>> +			status = "disabled";
>> +
>> +			pcie0_opp_table: opp-table {
>> +				compatible = "operating-points-v2";
>> +
>> +				/* GEN 1 x1 */
>> +				opp-2500000 {
>> +					opp-hz = /bits/ 64 <2500000>;
>> +					required-opps = <&rpmhpd_opp_low_svs>;
>> +					opp-peak-kBps = <250000 1>;
>> +				};
>> +
>> +				/* GEN 1 x2 and GEN 2 x1 */
>> +				opp-5000000 {
>> +					opp-hz = /bits/ 64 <5000000>;
>> +					required-opps = <&rpmhpd_opp_low_svs>;
>> +					opp-peak-kBps = <500000 1>;
>> +				};
>> +
>> +				/* GEN 2 x2 */
>> +				opp-10000000 {
>> +					opp-hz = /bits/ 64 <10000000>;
>> +					required-opps = <&rpmhpd_opp_low_svs>;
>> +					opp-peak-kBps = <1000000 1>;
>> +				};
>> +
>> +				/* GEN 3 x1 */
>> +				opp-8000000 {
>> +					opp-hz = /bits/ 64 <8000000>;
>> +					required-opps = <&rpmhpd_opp_nom>;
>> +					opp-peak-kBps = <984500 1>;
>> +				};
>> +
>> +				/* GEN 3 x2 */
>> +				opp-16000000 {
>> +					opp-hz = /bits/ 64 <16000000>;
>> +					required-opps = <&rpmhpd_opp_nom>;
>> +					opp-peak-kBps = <1969000 1>;
>> +				};
>> +
>> +			};
>> +
>> +			pcieport0: pcie@0 {
>> +				device_type = "pci";
>> +				reg = <0x0 0x0 0x0 0x0 0x0>;
>> +				bus-range = <0x01 0xff>;
>> +
>> +				#address-cells = <3>;
>> +				#size-cells = <2>;
>> +				ranges;
>> +				phys = <&pcie0_phy>;
>> +			};
>> +		};
>> +
>> +		pcie0_phy: phy@1c06000 {
>> +			compatible = "qcom,sm8750-qmp-gen3x2-pcie-phy";
>> +			reg = <0 0x01c06000 0 0x2000>;
>> +
>> +			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
>> +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
>> +				 <&tcsrcc TCSR_PCIE_0_CLKREF_EN>,
>> +				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
>> +				 <&gcc GCC_PCIE_0_PIPE_CLK>;
>> +			clock-names = "aux",
>> +				      "cfg_ahb",
>> +				      "ref",
>> +				      "rchng",
>> +				      "pipe";
>> +
>> +			assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
>> +			assigned-clock-rates = <100000000>;
>> +
>> +			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
>> +			reset-names = "phy";
>> +
>> +			power-domains = <&gcc GCC_PCIE_0_PHY_GDSC>;
>> +
>> +			#clock-cells = <0>;
>> +			clock-output-names = "pcie0_pipe_clk";
>> +
>> +			#phy-cells = <0>;
>> +
>> +			status = "disabled";
>> +		};
>> +
>>   		ufs_mem_phy: phy@1d80000 {
>>   			compatible = "qcom,sm8750-qmp-ufs-phy";
>>   			reg = <0x0 0x01d80000 0x0 0x2000>;
>>
>> -- 
>> 2.34.1
>>

