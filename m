Return-Path: <devicetree+bounces-212919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A250CB4409B
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 17:29:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AD021C86D61
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 944F8258ECD;
	Thu,  4 Sep 2025 15:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JykgU5gr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E85501CEAB2
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 15:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756999762; cv=none; b=XN4g1LSWhTFHRZwUvAjQvGZtkmK2ZIzyNFdbeucqhj6HugP7/cQcntA1tE6KoA1mjIIWfrhbftNgVlEbfoj+XSwVPE1Q7Qig6JwE1UuHVYuB+4X08dHIZmMFEAMw0vVjtMqzMMsMsi0jrWyEP/D0w1geZV6ZT7sYZRoJv+uIYpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756999762; c=relaxed/simple;
	bh=EUUOJm8+pqfJE0C02BV4F6cE3SBmlMX62RiOmXxnlyg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lWz7iMmFoZsuxE4V/g7PBHY81N9ruAIv/6ODBNXe20sGLPD/ZK3gYtp4RnZMaCOMUUnUqE8R5k7uUp/oQhWquuDY99Z/QnRDLBZqnALnL6LEdqz9GD+kS1brGtUxxqtTAe7nZrt2H9qiBzRzAGOh9AMQj3LCpG1n4tbrkGvs1XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JykgU5gr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849XAEc008141
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 15:29:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aCKrmPJEFXGT0WYbXHZg3VTYOIhYkJFe7iTrbDkI7Yg=; b=JykgU5grP0LzChRS
	jo5fMTmzga1W8yeVxF9tViRBvkFXCJtHR7aVYgmLnoqxhr9ttxNTxlGbZsS4LdRN
	kpsDb53P3r3X5KkbWDFxac815aVm1cUa1fLkD+NMSL3FOGhM9YAkXrkyeUJ6g3r3
	go9383tqDVDZUo6MbK/JJTuRcmNg1ikvHWaGxgVpgdiWVZtxFlqnPTviuC+i6zOb
	orDfQhNzgKA3FudfFzcbgNh+zFlz7oubp3DMwkUV0jJ773Z7HdaX0J8xPyo1ow8k
	K3nxAlgQPa+EMv+QseXkgHtUGVQYJJTg5oHDfA744/Dzy+cff7TLAMoZHK2yoRJS
	uYvHtQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjqwbh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 15:29:18 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-329ee88fb47so1773791a91.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 08:29:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756999757; x=1757604557;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aCKrmPJEFXGT0WYbXHZg3VTYOIhYkJFe7iTrbDkI7Yg=;
        b=Y3PZZXXT18mC0OvXyd1xcXHhasONJIqA+Lt1hc2QuAYiVDTABnBWkd+L/dt2JZTr9r
         ZbPE5rnjhpZnHB2sMCt8e61/rms88XIK9oJ0g6jACTMnK3s9rBoFDMDfHR5+t1R5oStr
         QeZ7qHcPKEPOSkXZeTTXGzyY524R7GrMTDE01tSrlFBiDxFtYrMVVHpkKS7aKn7FdQSq
         BzWqzu7OrpQMoHQ8rBppQknNlRu953IXUUs93EEVY701PQ5aefVdQcN6Qxhijor66/B5
         MvPYmrOy7r3F2h55MKjH7R0DbooQZ3D+LTWZTizIyqKnISZVSSxv4MMFIJQb0VP2OZm8
         oqxA==
X-Forwarded-Encrypted: i=1; AJvYcCVn4Iq5Tk4Mg7gdxKIdXpau6qQ95bSH03Xe7R6b1t4lG6rcO2wO/j/LOwiECKsuF2bTtg3hhxrSNXV8@vger.kernel.org
X-Gm-Message-State: AOJu0YzS+zUvio/X8camFNzgv0x6v1Bm6eTqcPum8ol2saIJqWgBGHOs
	04aovwrJ7tzM3nOTOFWV/0DcqD/GUTl/1staQmfcqgaxO3qyu73dtTnLv3fWc7+wopRcxWJYpAP
	IKa5LSxN4XX6bbHx7VV+yiwb1ePzsAvvIpQLcgS5ut/66OEdPSntY0F0mbsABoc9m
X-Gm-Gg: ASbGncsrGbXp7+qOBOnMsqx9odnsP2EI3jbXoU55hY+jnQO6rMiyPw1fZOqKAwwHHHw
	HTV58I+b1FptvjllA8ctE6Jb6zUeK10adorvYdUZpsS4ZTtzhsAothldpeBAbb6w1pQytbrQW4H
	0RtEHIqXl3Mb2uY47lVt6dPb60koQzm+92QaDvEDtL2aLN/z1yBOpdygH+AHT/LYeyMfJDNGq8a
	cR2tSc/CGmq4qKZ1USvc/9n6JfAitAsZ/UqaMzKKtsVj7wvmo5eA3ZSaxJ6YH3YireekOJ6I9gA
	4y5SGArs89lEK+lXZQY27TdzGlwS6QiZxGuDVlWCd7Do2aQFSwG8y7GA5d2bDYeChaIM
X-Received: by 2002:a17:902:d4c1:b0:24c:92b5:2175 with SMTP id d9443c01a7336-24c92b5262fmr76676065ad.24.1756999757449;
        Thu, 04 Sep 2025 08:29:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4JhBNWdG2V+TxgIDesrLMeTY0t0q4ahoJ30jB1TKaWOy2/eOV1xvyNkelIVpDUVQxYmrVWg==
X-Received: by 2002:a17:902:d4c1:b0:24c:92b5:2175 with SMTP id d9443c01a7336-24c92b5262fmr76675745ad.24.1756999756970;
        Thu, 04 Sep 2025 08:29:16 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-327c5fc5055sm22049502a91.14.2025.09.04.08.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 08:29:16 -0700 (PDT)
Date: Thu, 4 Sep 2025 20:59:09 +0530
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>
Subject: Re: [PATCH 2/5] arm64: dts: qcom: lemans: Add SDHC controller and
 SDC pin configuration
Message-ID: <aLmwRSROlgXxw3bI@hu-wasimn-hyd.qualcomm.com>
References: <20250826-lemans-evk-bu-v1-0-08016e0d3ce5@oss.qualcomm.com>
 <20250826-lemans-evk-bu-v1-2-08016e0d3ce5@oss.qualcomm.com>
 <rxd4js6hb5ccejge2i2fp2syqlzdghqs75hb5ufqrhvpwubjyz@zwumzc7wphjx>
 <c82d44af-d107-4e84-b5ae-eeb624bc03af@oss.qualcomm.com>
 <aLhssUQa7tvUfu2j@hu-wasimn-hyd.qualcomm.com>
 <tqm4sxoya3hue7mof3uqo4nu2b77ionmxi65ewfxtjouvn5xlt@d6ala2j2msbn>
 <3b691f3a-633c-4a7f-bc38-a9c464d83fe1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3b691f3a-633c-4a7f-bc38-a9c464d83fe1@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b9b04e cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=7jlciowUQMUDIi_Z8n8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: qfhXlLPb3C8tWnDK3S5vdhvQvNUHIM4h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX0Z2nAtbMfIt9
 AhdHCIyDTOMl6eB0M1YLdqARbA9L7HDlBDIiIlg3p+h9WeqVOEm5Urro8fFUGntECYb7Ze9cf9I
 ZEWg/CXLCl8DRTxqYiv6dnYCVFHCo/W122jMRUhN0kpB4hx9R/EPOVLb79em949m0PfkQDYAlT4
 cxiZwAz891IB+cOv7WJf6i6pcvLlo4qiA8vTNLvi9eF1MQXNcuj7eZfBoHRpE0zpQHIh/tiyqQF
 QGVJfCw6GR7y8QVoW1KiD+F+cpqq4nITqSRvU49k+T8O6l+u+1JBTIrFI1LGgGD3QqV5LzIBHEA
 xXyGxrTkujoJQaW3tgb35cpst2jpFZes50sKkdLm8o3ShdZ6MapT007DbF9Lsw1NK2r8AlfBvS1
 2X75tR9Q
X-Proofpoint-ORIG-GUID: qfhXlLPb3C8tWnDK3S5vdhvQvNUHIM4h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_05,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

On Thu, Sep 04, 2025 at 04:34:05PM +0200, Konrad Dybcio wrote:
> On 9/4/25 3:35 PM, Dmitry Baryshkov wrote:
> > On Wed, Sep 03, 2025 at 09:58:33PM +0530, Wasim Nazir wrote:
> >> On Wed, Sep 03, 2025 at 06:12:59PM +0200, Konrad Dybcio wrote:
> >>> On 8/27/25 3:20 AM, Dmitry Baryshkov wrote:
> >>>> On Tue, Aug 26, 2025 at 11:51:01PM +0530, Wasim Nazir wrote:
> >>>>> From: Monish Chunara <quic_mchunara@quicinc.com>
> >>>>>
> >>>>> Introduce the SDHC v5 controller node for the Lemans platform.
> >>>>> This controller supports either eMMC or SD-card, but only one
> >>>>> can be active at a time. SD-card is the preferred configuration
> >>>>> on Lemans targets, so describe this controller.
> >>>>>
> >>>>> Define the SDC interface pins including clk, cmd, and data lines
> >>>>> to enable proper communication with the SDHC controller.
> >>>>>
> >>>>> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> >>>>> Co-developed-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> >>>>> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> >>>>> ---
> >>>>>  arch/arm64/boot/dts/qcom/lemans.dtsi | 70 ++++++++++++++++++++++++++++++++++++
> >>>>>  1 file changed, 70 insertions(+)
> >>>>>
> >>>>> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> >>>>> index 99a566b42ef2..a5a3cdba47f3 100644
> >>>>> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> >>>>> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> >>>>> @@ -3834,6 +3834,36 @@ apss_tpdm2_out: endpoint {
> >>>>>  			};
> >>>>>  		};
> >>>>>  
> >>>>> +		sdhc: mmc@87c4000 {
> >>>>> +			compatible = "qcom,sa8775p-sdhci", "qcom,sdhci-msm-v5";
> >>>>> +			reg = <0x0 0x087c4000 0x0 0x1000>;
> >>>>> +
> >>>>> +			interrupts = <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH>,
> >>>>> +				     <GIC_SPI 521 IRQ_TYPE_LEVEL_HIGH>;
> >>>>> +			interrupt-names = "hc_irq", "pwr_irq";
> >>>>> +
> >>>>> +			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
> >>>>> +				 <&gcc GCC_SDCC1_APPS_CLK>;
> >>>>> +			clock-names = "iface", "core";
> >>>>> +
> >>>>> +			interconnects = <&aggre1_noc MASTER_SDC 0 &mc_virt SLAVE_EBI1 0>,
> >>>>> +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_SDC1 0>;
> >>>>> +			interconnect-names = "sdhc-ddr", "cpu-sdhc";
> >>>>> +
> >>>>> +			iommus = <&apps_smmu 0x0 0x0>;
> >>>>> +			dma-coherent;
> >>>>> +
> >>>>> +			resets = <&gcc GCC_SDCC1_BCR>;
> >>>>> +
> >>>>> +			no-sdio;
> >>>>> +			no-mmc;
> >>>>> +			bus-width = <4>;
> >>>>
> >>>> This is the board configuration, it should be defined in the EVK DTS.
> >>>
> >>> Unless the controller is actually incapable of doing non-SDCards
> >>>
> >>> But from the limited information I can find, this one should be able
> >>> to do both
> >>>
> >>
> >> It’s doable, but the bus width differs when this controller is used for
> >> eMMC, which is supported on the Mezz board. So, it’s cleaner to define
> >> only what’s needed for each specific usecase on the board.
> > 
> > `git grep no-sdio arch/arm64/boot/dts/qcom/` shows that we have those
> > properties inside the board DT. I don't see a reason to deviate.
> 
> Just to make sure we're clear
> 
> I want the author to keep bus-width in SoC dt and move the other
> properties to the board dt
> 

I'll move the no-sdio and no-mmc properties to the board-specific device
tree file, and keep the bus-width configuration in the SoC-level file.


-- 
Regards,
Wasim

