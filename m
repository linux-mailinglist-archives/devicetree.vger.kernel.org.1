Return-Path: <devicetree+bounces-160137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F4BA6D93B
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:36:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52D7C167B3D
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 11:36:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3150025DD13;
	Mon, 24 Mar 2025 11:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OvVbeUHf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B11225E454
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 11:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742816194; cv=none; b=dRM45LyHwtzV5jL5160Cy7etwhLsMOPPxEQaGpm22a36nDvWLUBRszaSzW3GiT++lLe7iZSIFBPyCdwmyGxzSen6e1G/M8RSZ2RZTI2m+3CRKUwRP7dAyLwxJBg11YKHn16wrWCd7xAOO4LMM7IL52JtG+YEeXHufCq6VdPoZmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742816194; c=relaxed/simple;
	bh=EWSRmhbbw6LLM1coOGP4lGuUikaA2MC6Tf23MQjFju4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h4DqoV/X/qpDORFlIDd4E+B+fVgHcLe7sWh8f0CmrCL5p5eodTs2cTK4qA7oVahF8+c2yio1yYFROzNM4N2wCEFERhDb+7Rg0zIwmOQ9c2osk8WZgh+zpKEshoB8FR9wQ1gIzJjO7UHw9ZGXENDnIANYo42xgtzC3waCibldnnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OvVbeUHf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52O9PNNK002605
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 11:36:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/28KcOMGat0kJ0A+I2PAVvPM
	UPGHSZSohwpSTh/nIWc=; b=OvVbeUHfaGN30I9z50iLXqFoxgxGpB1rppEadoDM
	w63AU3lzC84r3w0yoVYyxWCcRGA8DDkazzfqLGLefiXCJYwSmU9qZ8FdXkKS87XW
	pUtjNECBR2y+QdRsrFz8PekpkWkqmVx0ShzM6xDTY4YIGszTeV+k5sWKcEMgto7x
	af2FVIX26jMFcG94mrl2mPh/0pUw6Yg1D630OGx0WfBylNZNX7gZ6LnRh4OD+IXW
	uHbYtgmJ6DGEE+W0YJoR1JRGe7aAqwMSIoiOfEHKF2l0SwlDY3lvVfZoD6Q5eBdY
	/7nw3HOI93Z4aASjNbXzIEo9+Y9AJN2QsP44M0yjId/xsg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45hmhk47yy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 11:36:30 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c0c1025adbso988184985a.1
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 04:36:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742816190; x=1743420990;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/28KcOMGat0kJ0A+I2PAVvPMUPGHSZSohwpSTh/nIWc=;
        b=FGvtrf5h2BUdLIlrCH9KXCAEBTrIMT+V1Kl0q+l9f1GJW4k8vj6jtPFHrrbyxNLbS2
         Td1MCscy0d/4bA3ktVv0ilDO//eNjS1dyXJNs4PAt8r8JbBhYhi8N83xTXrCgQFabYFi
         FHgwmFKaSrnLAmEuPgwHh2UQ3sk2UE3ybP1iPVJ7h1xFKFlN1u6QkXYxoVbPgO7CjOYe
         iUI770uCX0Oqqx4/+TE5wlHZ9afB3JJZ+vTS7cGqOH+X6VG6I4mFTW3k+s1AVE4DiHLt
         YMLiQ+q2wjRE0tQnh7YI8Ejhgo/8zl+rLsv8sTZwQMwtMqDYRZ/EXcl7QYz5sIxkt+7W
         7y7A==
X-Forwarded-Encrypted: i=1; AJvYcCWyN/t+FmCaX+o8Mjk1CiqZzjlC8/Bd+BiGIugWPO90yJcxxg/Gql6V/EVEq+kmlW1EtzUoyiUWDn46@vger.kernel.org
X-Gm-Message-State: AOJu0Yzy2yoroEVZHzJ8/5BjCr8k4/c+ag1yE6umtJ3XhT1S7mTKDO2a
	DXcrvEY0rCsnZmfusMmxC0yM0J+ViAJXLgCMK5Upa9VD/LKqDWiyz6yEmewN26CgX5LgmJK0K20
	i34N3LvyAkUwaVBKcY/bDZfu4fWJrJhEqL24LS0dml3Nr9smcAG2AJjysTL0f
X-Gm-Gg: ASbGncvH/NF+A4hHIgwiDYvioJ4LhIM5Ahja0KcW82p2wWFJThQqcUL4CBvisgSrO9+
	F7KyOAcB8/b8O8RT0+nlzt5t26WIWGpITGPmC5fq0bOctTsrWqb4GWOTXGsLgy49xfOOhZLfp/M
	4S/GQ69IVzW7C6J+z14F0oXDPdFbtolYY9hc8g8JO3qxKYIASSIyyS/zDmwDWfaOjEVMrkSWQAb
	52IWNYyu4ITszLOlvfVRLpUwYLNCt9EZ5MFnX4taRj40tjvbXr53B5fnYFZt6uRpSPyOXbhYSqQ
	QbcyICVKMnyZtOByLjXpM92CRyUTTlE5ORpxNW49oKCJRWPpe1lDv9FlvzeH+1G2fJfdIr8s4hF
	35uc=
X-Received: by 2002:a05:620a:4406:b0:7c5:47c6:b888 with SMTP id af79cd13be357-7c5ba1deda8mr1530174285a.40.1742816190113;
        Mon, 24 Mar 2025 04:36:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1k3d4Gu7ZnJzBcOT4jbISqnGdwUgHdCGngrW5u1gHZ0r9dvw/9o90y5OiLlqIrOTsIOi56w==
X-Received: by 2002:a05:620a:4406:b0:7c5:47c6:b888 with SMTP id af79cd13be357-7c5ba1deda8mr1530167985a.40.1742816189474;
        Mon, 24 Mar 2025 04:36:29 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad6512127sm1144441e87.229.2025.03.24.04.36.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 04:36:27 -0700 (PDT)
Date: Mon, 24 Mar 2025 13:36:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        20250317100029.881286-2-quic_varada@quicinc.com,
        Sricharan R <quic_srichara@quicinc.com>
Subject: Re: [PATCH v6 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Message-ID: <ys56uezoe7uuhsvtejnptjuluvphpidg5tzx2d4x3bi6pan7aa@en3rx3llns5s>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-5-b7d659a76205@outlook.com>
 <a4n3w62bg6x2iux4z7enu3po56hr5pcavjfmvtzdcwv2w4ptrr@ssvfdrltfg5y>
 <6fa2bd30-762b-4a3a-b94f-8798c027764a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6fa2bd30-762b-4a3a-b94f-8798c027764a@quicinc.com>
X-Authority-Analysis: v=2.4 cv=C4PpyRP+ c=1 sm=1 tr=0 ts=67e143bf cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=UqCG9HQmAAAA:8 a=KKAkSRfTAAAA:8 a=7B58IFT2DTbkiS-wfnYA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: HRnHmqcPbrtXCC0ADb0aLkOamj9Bm5Ex
X-Proofpoint-ORIG-GUID: HRnHmqcPbrtXCC0ADb0aLkOamj9Bm5Ex
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-24_04,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 phishscore=0 mlxlogscore=999 priorityscore=1501 impostorscore=0
 bulkscore=0 clxscore=1015 spamscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503240084

On Mon, Mar 24, 2025 at 04:48:34PM +0530, Praveenkumar I wrote:
> 
> 
> On 3/24/2025 1:26 PM, Manivannan Sadhasivam wrote:
> > On Fri, Mar 21, 2025 at 04:14:43PM +0400, George Moussalem via B4 Relay wrote:
> > > From: Nitheesh Sekar<quic_nsekar@quicinc.com>
> > > 
> > > Add phy and controller nodes for a 2-lane Gen2 and
> > Controller is Gen 3 capable but you are limiting it to Gen 2.
> > 
> > > a 1-lane Gen2 PCIe bus. IPQ5018 has 8 MSI SPI interrupts and
> > > one global interrupt.
> > > 
> > > Signed-off-by: Nitheesh Sekar<quic_nsekar@quicinc.com>
> > > Signed-off-by: Sricharan R<quic_srichara@quicinc.com>
> > > Signed-off-by: George Moussalem<george.moussalem@outlook.com>
> > One comment below. With that addressed,
> > 
> > Reviewed-by: Manivannan Sadhasivam<manivannan.sadhasivam@linaro.org>
> > 
> > > ---
> > >   arch/arm64/boot/dts/qcom/ipq5018.dtsi | 234 +++++++++++++++++++++++++++++++++-
> > >   1 file changed, 232 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> > > index 8914f2ef0bc4..d08034b57e80 100644
> > > --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> > > @@ -147,6 +147,40 @@ usbphy0: phy@5b000 {
> > >   			status = "disabled";
> > >   		};
> > > +		pcie1_phy: phy@7e000{
> > > +			compatible = "qcom,ipq5018-uniphy-pcie-phy";
> > > +			reg = <0x0007e000 0x800>;
> > > +
> > > +			clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
> > > +
> > > +			resets = <&gcc GCC_PCIE1_PHY_BCR>,
> > > +				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
> > > +
> > > +			#clock-cells = <0>;
> > > +			#phy-cells = <0>;
> > > +
> > > +			num-lanes = <1>;
> > > +
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcie0_phy: phy@86000{
> > > +			compatible = "qcom,ipq5018-uniphy-pcie-phy";
> > > +			reg = <0x00086000 0x800>;
> > > +
> > > +			clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
> > > +
> > > +			resets = <&gcc GCC_PCIE0_PHY_BCR>,
> > > +				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
> > > +
> > > +			#clock-cells = <0>;
> > > +			#phy-cells = <0>;
> > > +
> > > +			num-lanes = <2>;
> > > +
> > > +			status = "disabled";
> > > +		};
> > > +
> > >   		tlmm: pinctrl@1000000 {
> > >   			compatible = "qcom,ipq5018-tlmm";
> > >   			reg = <0x01000000 0x300000>;
> > > @@ -170,8 +204,8 @@ gcc: clock-controller@1800000 {
> > >   			reg = <0x01800000 0x80000>;
> > >   			clocks = <&xo_board_clk>,
> > >   				 <&sleep_clk>,
> > > -				 <0>,
> > > -				 <0>,
> > > +				 <&pcie0_phy>,
> > > +				 <&pcie1_phy>,
> > >   				 <0>,
> > >   				 <0>,
> > >   				 <0>,
> > > @@ -387,6 +421,202 @@ frame@b128000 {
> > >   				status = "disabled";
> > >   			};
> > >   		};
> > > +
> > > +		pcie1: pcie@80000000 {
> > > +			compatible = "qcom,pcie-ipq5018";
> > > +			reg = <0x80000000 0xf1d>,
> > > +			      <0x80000f20 0xa8>,
> > > +			      <0x80001000 0x1000>,
> > > +			      <0x00078000 0x3000>,
> > > +			      <0x80100000 0x1000>,
> > > +			      <0x0007b000 0x1000>;
> > > +			reg-names = "dbi",
> > > +				    "elbi",
> > > +				    "atu",
> > > +				    "parf",
> > > +				    "config",
> > > +				    "mhi";
> > > +			device_type = "pci";
> > > +			linux,pci-domain = <0>;
> > > +			bus-range = <0x00 0xff>;
> > > +			num-lanes = <1>;
> > > +			max-link-speed = <2>;
> > This still needs some justification. If Qcom folks didn't reply, atleast move
> > this to board dts with a comment saying that the link is not coming up with
> > Gen3.
> > 
> > - Mani
> The IPQ5018 PCIe controller can support Gen3, but the PCIe phy is limited
> Gen2 and does not supported Gen3.
> Hence, it is restricted using the DTSI property.

Ideally this needs to be negotiated between the PCIe host and PHY
drivers.

-- 
With best wishes
Dmitry

