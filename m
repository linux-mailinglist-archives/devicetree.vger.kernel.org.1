Return-Path: <devicetree+bounces-187456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B998ADFF4B
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 10:00:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6DFEB7AD005
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 07:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08AC525D528;
	Thu, 19 Jun 2025 08:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="niyOCXat"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5696B2472A4
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 08:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750320024; cv=none; b=fghL2N2TCcFKoztDNtfSt8+qPUkAMYimkdVbHO9NpctJB005Eg/WWqr1+mb/T+z6Ybq5YZtySOaU26F/Nbduss6BnfoSX7u3JZKPDdI4nw9OedTnzl8cDyK/5J63GqE00rHNpYxh1z9W9fby10+rp9VcE49JdB/PfFICJPVpXMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750320024; c=relaxed/simple;
	bh=wMaMYUd6M4iPUB+6W02x9RPOUf1vRDMFQbyKwn8OqgM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O43bCaTUO8EcV9jLkNHp2ElQiH1fqmIKP2DOQjEclM8Q+cf5MzqZQuKyQzCGJ4n9D9Q5shDpzdNkLCllG8dWaJSVSFzwJp9Bkk+fvf7mzVsRPldMwTSebzR1TM0ty1qS7GH4zbzbOYuXa8Jx3fvw4KlQ3btj+WJd28j63EB6Na8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=niyOCXat; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55J2F2u4007377
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 08:00:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zBolN5oacxC0P41K6szANjJ24uE94hXebudQ19uN7Vc=; b=niyOCXatXE3NVwd+
	Rkwixu4yq9sq8U/+eSIBixS3OwlbFzGe4GgFFfmFHCs6i/wlpOBmUZ6RX5IAAuTm
	DakOpqraIU4clXJSyAl3RygvI8raZpmB0kCqxjAPvj9RHPZbp2b6yuxikIQ5EQY5
	dBUt9PRwY7lSQGzo2lHQa+2K2xTTpIW+gj9vlZYiYdHmcpWDUEgxIKaU63FEsLTK
	pkOBtkAFLW08p5YWRm3pABxJ56o+hF+poh9cCLA0Mu4Dk+F27WP7ZcvmodhxwTM5
	+rrw+7t4eDDkeZLQj9YPVCPsKzlObIHll42SgrcTSZxFk+/Yf7Rq1DV/YEL0xfYv
	PvZbbw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47c9krrwpm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 08:00:21 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-74880a02689so508736b3a.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 01:00:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750320020; x=1750924820;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zBolN5oacxC0P41K6szANjJ24uE94hXebudQ19uN7Vc=;
        b=pBcXx41RT2PVaO+45D/xKdzfPWffsAh+4GwxMRBfo8ByIh6uE2A2xiUlby+F88qXN/
         GY2rydHU6/z/1G5iSEbGVdV9VdVsHr8VO9HwAACNVDcF70zSF4fOF5B8B0pqDsqpGK8G
         gzSiVlshCDnLLzqLlfULeZBdXSpGJGHaJ17dmcOCWlaY1KFZBMfWtwedzwRH3XTK19v8
         tLJbGOkfLGEYflHHltXzdRJf0f4WbrTi4sju61ArhLvJMmqrKUzroTehadHnZfvauljp
         huntqOhHnUI9FQlEfcMKaPxuC7adZ+HFBztxsl/M7VR5ecaW6cvIl4Pn+IUnz5Hl1hK+
         lpIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbzZ6U01GRnUdORy0I0U6tTV5JblxSKJSUWxmrW5DBFGgfLTn3hNpO7TK9aBmAMsBy5VEKBXb4Cp1U@vger.kernel.org
X-Gm-Message-State: AOJu0YzUDqUm1b0D0kGnAfGRc5xkJuz3saRhI6MYhFAle9Bl25Ld25yo
	IBp5guRGnt5HzVN+gG+fqs2fFGP5tT4Tw2dpR7WijhaqHclPLyIJYPQ5AU1TCTikMfSRusu48WT
	7gEQw4iwLglKBlcudv2i5vHDMObpCTEGgV3qsr5ir/FhCoQIwRSmzKOHtvGdl0FSD
X-Gm-Gg: ASbGncuFddaYW1coyEHCguTdIRz3dfhpIlZrbR8P+3NkXIQ2jT8GcKBI/pmJDuPrHmk
	vXk3Hzd1EZkbmCHMqCN5kDcfu1GvXPxv9toqo+ovwKdElR6xbOVEl1PDzNcKQJVf5JwstPF82G6
	IKBqCdLlXlFIe1b7rPRHum7fnW8ZY9jXEEeqamxFXpqEO5ZXJbOkCkbpYx3nuXZcuFIR3N/W2cb
	tQvgR03RBXCL+2p6zoQzuDH4HuqnCRdGjPOTlZchtcT4eive1PbfvTepvBHKu3zhUXl+EPc7AVB
	673KJNz0d2RI9Mta0FuG1zmc/HDB00LtY5I4gMMuaJpaZerElAzjeT6UirLSxliZpzz+bg==
X-Received: by 2002:a05:6a00:228b:b0:748:fb7c:bbe0 with SMTP id d2e1a72fcca58-748fb7cc2d2mr2896543b3a.24.1750320020215;
        Thu, 19 Jun 2025 01:00:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGeXph0uurb6f9i+olydyrvX72jabH9v+6bXULYDipT8b9iY6AU8w1map6IEpxVIXRkai4iyQ==
X-Received: by 2002:a05:6a00:228b:b0:748:fb7c:bbe0 with SMTP id d2e1a72fcca58-748fb7cc2d2mr2896469b3a.24.1750320019594;
        Thu, 19 Jun 2025 01:00:19 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900ce7adsm13061762b3a.149.2025.06.19.01.00.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 01:00:19 -0700 (PDT)
Date: Thu, 19 Jun 2025 01:00:16 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, krishna.chundru@oss.qualcomm.com,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Qiang Yu <quic_qianyu@quicinc.com>,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 1/4] dt-bindings: PCI: qcom,pcie-sc8180x: Drop unrelated
 clocks from PCIe hosts
Message-ID: <aFPDkFUEE4BzdJh/@hu-qianyu-lv.qualcomm.com>
References: <20250521-topic-8150_pcie_drop_clocks-v1-0-3d42e84f6453@oss.qualcomm.com>
 <20250521-topic-8150_pcie_drop_clocks-v1-1-3d42e84f6453@oss.qualcomm.com>
 <qri7dxwqoltam2yanxicgejjq3xprd6cunvpgukasmtt7c5lmh@ikdl24royen6>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <qri7dxwqoltam2yanxicgejjq3xprd6cunvpgukasmtt7c5lmh@ikdl24royen6>
X-Proofpoint-GUID: cD2bcHeNCF0yz_2mWS1zd2qHmKoTH03A
X-Authority-Analysis: v=2.4 cv=UPTdHDfy c=1 sm=1 tr=0 ts=6853c395 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=3eHYEclfckd1VWwzELkA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE5MDA2NyBTYWx0ZWRfX/86LuOMv1Kv+
 j+D4r3UUNWY9NoNFaowvzzsRwMIrm31pkN4wEuY08DYqp4QlZgRT2wX4pWaruR++x8Xo/bvWRuo
 7OHv6tkanegDv5cTbdIRb+2e/QLcrK5fRwk5kv7/dioWWumsQ/LmbSRtDLaDgZEblZUVPfrXEbQ
 GwQc+KVrXaTqodrTvUH6ntJCZQhE388bVhG4Pz7B9SZbnadB9ztuLNTD+Y9tK8PuKzorOPdDJZ+
 WDmR/vVYjI1qQ59Gu/QWwZVaDU7wR1j/nXRJ5c/Yze6P/inBr3LhfLV0rv/zuk9wTGDmQmrnvQR
 6XspA0kCOqhU39t7tb6DU5ZMbyXKKRN/18NdzlYvhgVdrwT4WoBxt6FPfBJQ7oAOYbcRoDOpj3r
 4CgYH/b7ZUY8fi8a1Jg4rbQ8VjOXhGoi5SCkTq50ezElIPXINgNp4sVLdBv6Y/p7x4H7AJz8
X-Proofpoint-ORIG-GUID: cD2bcHeNCF0yz_2mWS1zd2qHmKoTH03A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-19_03,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 phishscore=0 mlxscore=0 mlxlogscore=999 priorityscore=1501 suspectscore=0
 adultscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506190067

On Fri, Jun 13, 2025 at 02:43:38PM +0530, Manivannan Sadhasivam wrote:
> + Krishna
> 
> On Wed, May 21, 2025 at 03:38:10PM +0200, Konrad Dybcio wrote:
> > From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > 
> > The TBU clock belongs to the Translation Buffer Unit, part of the SMMU.
> > The ref clock is already being driven upstream through some of the
> > branches.
> > 
> 
> Can you please cross check with the hardware programming guide (I don't have
> access to atm) that the 'ref' clock is no longer voted by the driver?
>

CLKREF is required for PHY. Since it has been voted in PCIe PHY driver,
omitting it here is reasonable.

- Qiang Yu

> - Mani
> 
> > Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > ---
> >  .../devicetree/bindings/pci/qcom,pcie-sc8180x.yaml         | 14 ++++----------
> >  1 file changed, 4 insertions(+), 10 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sc8180x.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sc8180x.yaml
> > index 331fc25d7a17d657d4db3863f0c538d0e44dc840..34a4d7b2c8459aeb615736f54c1971014adb205f 100644
> > --- a/Documentation/devicetree/bindings/pci/qcom,pcie-sc8180x.yaml
> > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sc8180x.yaml
> > @@ -33,8 +33,8 @@ properties:
> >        - const: mhi # MHI registers
> >  
> >    clocks:
> > -    minItems: 8
> > -    maxItems: 8
> > +    minItems: 6
> > +    maxItems: 6
> >  
> >    clock-names:
> >      items:
> > @@ -44,8 +44,6 @@ properties:
> >        - const: bus_master # Master AXI clock
> >        - const: bus_slave # Slave AXI clock
> >        - const: slave_q2a # Slave Q2A clock
> > -      - const: ref # REFERENCE clock
> > -      - const: tbu # PCIe TBU clock
> >  
> >    interrupts:
> >      minItems: 8
> > @@ -117,17 +115,13 @@ examples:
> >                       <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> >                       <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
> >                       <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
> > -                     <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
> > -                     <&gcc GCC_PCIE_0_CLKREF_CLK>,
> > -                     <&gcc GCC_AGGRE_NOC_PCIE_TBU_CLK>;
> > +                     <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>;
> >              clock-names = "pipe",
> >                            "aux",
> >                            "cfg",
> >                            "bus_master",
> >                            "bus_slave",
> > -                          "slave_q2a",
> > -                          "ref",
> > -                          "tbu";
> > +                          "slave_q2a";
> >  
> >              dma-coherent;
> >  
> > 
> > -- 
> > 2.49.0
> > 
> 
> -- 
> மணிவண்ணன் சதாசிவம்
> 

