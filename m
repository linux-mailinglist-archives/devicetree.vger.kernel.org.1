Return-Path: <devicetree+bounces-256660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B80D39E4D
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 07:21:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC2943020497
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 06:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 934C62550D5;
	Mon, 19 Jan 2026 06:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nhoO+hzm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WNP6XT1/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2907CF4FA
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768803677; cv=none; b=YGy/AXz/PmhaJIHUSAJqGf5hGvhmyxMREVa8q7DmMn2QYOnTxYF3oT9UAV0e7C/TrGg3eTmLgXFMh1WRlqS5MsP0//PtZwo1pnWS2GfWUDnm/gdAUeWRnz5tXx2ZdMuLPq3kksbEuAlQjvALDlNAf3/LaytOI5cWaj7zUyowEO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768803677; c=relaxed/simple;
	bh=/dnHKMHi2pKYejbOFbkGuA1dyQ2vsvnDilvmOlWLB5k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r6lumCQFqf8YQSn9hdY9nNkBFPrnHml1hFeVS/0uxjBbyeWKAUfDseRt0XL9UUnqszjXano+/arMste5sP5jkHOefbVFb+IeG6+5v4raUZSBtmlbjNl0Qxl5K9wO4/mVD0Hhijq2l/jYHbvmgoApzAHmRWbLJD9iPnGvVcvSE1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nhoO+hzm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WNP6XT1/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60INCjJ81602680
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:21:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TkmEiJ9suWsc2GMV2C8RFrPOlvh/yE5pZ751z2HxpX4=; b=nhoO+hzm4dbHicdH
	2QtJOelOmznx8G6g6OVbrdJRAOcqkJ96nU+smcBPdVcXV9v/6qtUJBvAgmud+yjW
	Hm9CXnUlmF2/RT6RB8Cw42e7lTjvhapeFaBqQEnKubRgz6kkNOpZMAgO5Dk3SJuz
	5B1D6P/+EY6yQwJmZUEuIpcKYFV5HbpYt7rxwPe7cF2VEhYXSgUeDsP/5deUk44N
	TQFH0qx72y7FEkGhqV34GvKeSyv4l5U9oDlJB+vcBosvl77SLBWyoy9MxE/OLIoF
	qjWcGvoRd/yxj2ZORcGEPqoaHrUFGA6GD6k4H0mChccY8sObpk9fZ+hwhxwTdoNz
	PmzXkQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br3kh3q5y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:21:15 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2ae25c02e7bso2017659eec.0
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 22:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768803674; x=1769408474; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TkmEiJ9suWsc2GMV2C8RFrPOlvh/yE5pZ751z2HxpX4=;
        b=WNP6XT1/oUeQr6kmdUd6DQ4YqrKbPLRLKQc1giksVmLLkRjPXDa91XO8hBnXwT29Os
         PCi9pSyz2iiI+Gq/quku2NdUMnzfWXEOFsLGWJ1D445kJwp3qaTlXnnvNQesEyiiTmLn
         S5on/rzPHq7M4Y6xrTqGn0mpYIjJEyu+HKDC629k8+QE8im6zl4So+lhAQIqxpMM5HKS
         EOxahP6vaoJKbI71+Sx6GVt4sDg/Fg006QHvhcYize/mZHijAROCxaS0TuQOopfkT+cF
         Ih28UHP/R4VRObQ4TNLKfIs5N9tgyZwUDk8SOU6ex5y5qJDhIv+S91+JRpXeIdlUosag
         MCdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768803674; x=1769408474;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TkmEiJ9suWsc2GMV2C8RFrPOlvh/yE5pZ751z2HxpX4=;
        b=l6ukW4d7mKqFmhEdkBTPl0+m6yMDjwE7ABZ9IptcIV5BNpydERpXlIv5OeNO1Ho5sI
         hk8K8WuTecVIrpE9Je/79ip0AxZbZ/ZgoxEWdwbQNpYbhiiiMM7jM3QzEOdQ5kldmqrU
         5SSSt5vBqn8rC7RTn7PUvRzKDsAQ+Y6lhqzNvKcVio3edmdTfqC2TKw2cvhHj8sCYxKr
         Qe35e8oERiN2XaCGQgXCQcOCXrUPVs9Qle8syx7JPgxrTTptqXoNrpjh0rznoFvss0ba
         9e1bEH3EXm7rY3UUmQnUyDJw9u3LosRDO4ORaWVtGh76mSJW91K67VjyJnRi6Ys5jZyd
         iVxA==
X-Forwarded-Encrypted: i=1; AJvYcCVGZpPCAh4zFAf/omtDmYpqAvHXcj2khMLhQMwL5Pn85CaHrySA30J9cI+jr3bDh0sxp7faL7VehEfO@vger.kernel.org
X-Gm-Message-State: AOJu0YwT+8hYxpDMzvKd6Gtm1hF3TpUQ3LtBV906VUfssbBczwtn4ZNz
	dPMQ/3d93NhmYuYvRGwGmRP+yDCq6tVsXpOnE1+Z70kjRe0tXcvGP6nAW4oeRyp0RIvJ1u12DqT
	eWQcH/Z3SHeGTbOljts5YaroQCFnLP/GITwhRHixbhxT9xRpDMMCvdFMxcUlqDp2M
X-Gm-Gg: AZuq6aLRwE/1J+0OjA9t48JwCmQxRCwvDpkYd6tTN9e0C3V8y/e2oUdT4kSd/4o4THJ
	4js/H2uO3jTeFR5dvC5g5PXqN9g61mDxQkf7/vErnRUmZcQE38RDMc0rHIEn29I+odzOUQTGvY/
	fQPe9Q9hDAm/ITFZzWhnqAHCxL25SHlmeO2yxbLvqeOQD9mMRyzu1OXFQBDfuKOfySWwT9NCJCl
	4IacAqrdJZOCyYzOYzzYtpLQn3olTAlA7roQYhP7AiXH7ppeK/ahXS+4QOMuvIPHwDeownsIrxd
	xkaun4lj6UZSXvO54pfEBQIrfgxONfRrFpeZ1B5pJFGXOcdJ1WSWNqTBNp0h2MCIJM/la2+MVrK
	nuYBdw/SPacIdUnFYLqgepB8J6pqsz3svghKNaB+62xzxxH2CjkmgX6Tc
X-Received: by 2002:a05:7301:7c0b:b0:2b0:5bbd:eab9 with SMTP id 5a478bee46e88-2b6b50024b1mr8826757eec.24.1768803674495;
        Sun, 18 Jan 2026 22:21:14 -0800 (PST)
X-Received: by 2002:a05:7301:7c0b:b0:2b0:5bbd:eab9 with SMTP id 5a478bee46e88-2b6b50024b1mr8826728eec.24.1768803673843;
        Sun, 18 Jan 2026 22:21:13 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6beeb4b9csm12154353eec.30.2026.01.18.22.21.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 22:21:13 -0800 (PST)
Date: Sun, 18 Jan 2026 22:21:11 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH v4 3/4] arm64: dts: qcom: Introduce Glymur base dtsi
Message-ID: <aW3NV1niX7MqDW7V@hu-qianyu-lv.qualcomm.com>
References: <20260112-upstream_v3_glymur_introduction-v4-0-8a0366210e02@oss.qualcomm.com>
 <20260112-upstream_v3_glymur_introduction-v4-3-8a0366210e02@oss.qualcomm.com>
 <702ea825-dda1-495a-a72e-05b45491892a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <702ea825-dda1-495a-a72e-05b45491892a@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA1MSBTYWx0ZWRfX7aMCvkOsUlbl
 XnCduFIFEMqA9l9pBl9hCUVtVHGql8RapA7H5DnT9kRwCt6PHFZZOJdQ04qwP2SekQkenTsOuN5
 v+5UnE4cRD1ZfLJUqyNo6QOg3eB67WL61WD8/iKpNahgYlmpN5WeCJOlfM6Ibg2UYxufmXvc4h7
 /WcTqEWbN813IeXPPmmp9Xm5hwuUNtHQz28gvrMVPWqULpQvp465w11nwZaVtLdQxHgKupyWZYC
 DgwWvNGPzMMIzdXCpJjZCJ8A+1t4JAtgj3//3ixQ943v0XvcJTUjdOvb0cPdbhyWkE6wRyDqFQA
 J5JwTULRMk0E7NpZ9IwmwOGy++8LdPv9fJCq4QDGPOh9JSFVf2RdXKxtcxBxfKBr0fTCM56NJKD
 extQhkng6VvaXkyV9glltTQKe/Loc23K+6QvMmUmWDWA5V0tpnboOMWowv2AXZuNmT9cQs5fQhA
 wsPwR/yjcP6fo5lp0zQ==
X-Proofpoint-ORIG-GUID: iybKC4Iz9r2Eh6Oqi6_86zPhZAmJ--pD
X-Authority-Analysis: v=2.4 cv=JcyxbEKV c=1 sm=1 tr=0 ts=696dcd5b cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=F8aeg6T9Bo0OQpsv-A0A:9 a=JIkB4p8yamB5KkIz:21
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-GUID: iybKC4Iz9r2Eh6Oqi6_86zPhZAmJ--pD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_01,2026-01-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 adultscore=0 phishscore=0
 malwarescore=0 spamscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190051

On Wed, Jan 14, 2026 at 02:45:14PM +0100, Konrad Dybcio wrote:
> On 1/12/26 1:22 PM, Pankaj Patil wrote:
> > Introduce the base device tree support for Glymur – Qualcomm's
> > next-generation compute SoC. The new glymur.dtsi describes the core SoC
> > components, including:
> > 
> > - CPUs and CPU topology
> > - Interrupt controller and TLMM
> > - GCC,DISPCC and RPMHCC clock controllers
> > - Reserved memory and interconnects
> > - APPS and PCIe SMMU and firmware SCM
> > - Watchdog, RPMHPD, APPS RSC and SRAM
> > - PSCI and PMU nodes
> > - QUPv3 serial engines
> > - CPU power domains and idle states, plus SCMI/ SRAM pieces for CPU DVFS
> > - PDP0 mailbox, IPCC and AOSS
> > - Display clock controller
> > - SPMI PMIC arbiter with SPMI0/1/2 buses
> > - SMP2P nodes
> > - TSENS and thermal zones (8 instances, 92 sensors)
> 
> [...]
> 
> > +			uart22: serial@898000 {
> > +				compatible = "qcom,geni-uart";
> > +				reg = <0x0 0x00898000 0x0 0x4000>;
> > +				interrupts = <GIC_SPI 461 IRQ_TYPE_LEVEL_HIGH>;
> > +				clocks = <&gcc GCC_QUPV3_WRAP2_S6_CLK>;
> > +				clock-names = "se";
> > +				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
> > +						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
> > +						<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> > +						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>;
> > +				interconnect-names = "qup-core",
> > +							"qup-config";
> 
> stray \t
> 
> [...]
> 
> > +			i2c8: i2c@a80000 {
> > +				compatible = "qcom,geni-i2c";
> > +				reg = <0x0 0x00a80000 0x0 0x4000>;
> > +				interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH>;
> > +				clocks = <&gcc GCC_QUPV3_WRAP1_S0_CLK>;
> > +				clock-names = "se";
> > +				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
> > +						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
> > +						<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> > +						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
> > +						<&aggre3_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
> > +						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> > +				interconnect-names = "qup-core",
> > +						     "qup-config",
> > +						     "qup-memory";
> > +				dmas = <&gpi_dma1 0 0 QCOM_GPI_I2C>,
> > +				       <&gpi_dma1 1 0 QCOM_GPI_I2C>;
> > +				dma-names = "tx",
> > +					    "rx";
> > +				pinctrl-0 = <&qup_i2c8_data_clk>;
> > +				pinctrl-names = "default";
> > +				#address-cells = <1>;
> > +				#size-cells = <0>;
> > +				status = "disabled";
> 
> nit: generally we try to put an \n before status
> 
> [...]
> 
> > +			pcie4_opp_table: opp-table {
> > +				compatible = "operating-points-v2";
> > +
> > +				/* GEN 1 x1 */
> > +				opp-2500000 {
> > +					opp-hz = /bits/ 64 <2500000>;
> > +					required-opps = <&rpmhpd_opp_low_svs>;
> > +					opp-peak-kBps = <250000 1>;
> > +				};
> > +
> > +				/* GEN 1 x2 and GEN 2 x1 */
> > +				opp-5000000 {
> > +					opp-hz = /bits/ 64 <5000000>;
> > +					required-opps = <&rpmhpd_opp_low_svs>;
> > +					opp-peak-kBps = <500000 1>;
> > +				};
> 
> I see that this DT doesn't define opp-level for PCIe OPP entries - could
> you please quickly check with some PCIe folks whether that's intentional
> (there are cases where it's not necessary because the controller doesn't
> need a different vote to operate an effectively-same-bw OPP with different
> link width and gen)

You are right. Thank you for pointing it out.  We need to add opp-level.

- Qiang
> 
> [...]
> 
> > +		system-cache-controller@20400000 {
> > +			compatible = "qcom,glymur-llcc";
> > +			reg = <0x0 0x21800000 0x0 0x100000>,
> > +			      <0x0 0x21a00000 0x0 0x100000>,
> > +			      <0x0 0x21c00000 0x0 0x100000>,
> > +			      <0x0 0x21e00000 0x0 0x100000>,
> > +			      <0x0 0x22800000 0x0 0x100000>,
> > +			      <0x0 0x22a00000 0x0 0x100000>,
> > +			      <0x0 0x22c00000 0x0 0x100000>,
> > +			      <0x0 0x22e00000 0x0 0x100000>,
> > +			      <0x0 0x23800000 0x0 0x100000>,
> > +			      <0x0 0x23a00000 0x0 0x100000>,
> > +			      <0x0 0x23c00000 0x0 0x100000>,
> > +			      <0x0 0x23e00000 0x0 0x100000>,
> > +			      <0x0 0x20400000 0x0 0x100000>,
> > +			      <0x0 0x20600000 0x0 0x100000>;
> > +
> > +			reg-names = "llcc0_base",
> 
> stray \n
> 
> Konrad

