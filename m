Return-Path: <devicetree+bounces-212349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C58B426E8
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 18:28:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B8BA3582FF0
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 16:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 835F82F0699;
	Wed,  3 Sep 2025 16:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BrtsH0fi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A559C2E54D3
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 16:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756916924; cv=none; b=KOeQt0W4NZAh6kwNOCvP1K5IY5kDtoYeQ4UQh0/C6w2PBoi0/jSYAWljJQ+EWNBF21XQ7Jy1rmyYZn1M2dFUlDHz7UpHCzujWX4JprPNS7swrCLIU3FjcPf5kD85ZLvEKW7eZ7N4vB9/6oME06fMt+CXK59FwNOMZdBRrXjJrgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756916924; c=relaxed/simple;
	bh=h4uzpxwbZv5GjsKYDvvfHvKOFpa5oECNqTN6Yy9bj4g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j9QQmHrc6h12CiVK6Xb9aAVaDn4RRN4nS1YwLGV8YnTXCo+bpG4WgGLiKxUDHYVq0xzRyN2dvBUFQwRDhVEFVWjHaZnTz6vpAc3qIg3d8cl/Vmv2FVDjs1NCQvBrCj67RVg6gI32ASJA2HhWs1siy4mi1QXqLy2xZkhM201y0q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BrtsH0fi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583DxAaK004051
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 16:28:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3W8v279knRH3OWhUMa8czqjX5zZ7UZx/tVNRcDruII4=; b=BrtsH0fiD+ApJV97
	Y0r9qpTkipdek14wqYg/qYx6vUcKC5WywT42WJk+qpFhicqfMW0Y953Ef1q8HRtR
	3XUl31g0QSVQDhyUNDwOg5IEN4A5+JfyL6cqV8MYQQCsbWtXYEeqtWCbo+GbldCq
	FMpRJ5ISzRilwhIo6oBI1IyaWHYhqd+7YxC0pzCm+w37ldRAbgEK0ej6Bxw9d2lv
	1eW/FOyx7Lr6LamPW/hK3uH1vcUBcFWk0pT3HtSVBnoKqELJPgLJihXSsopen1cg
	lLsOzVMyEvFI+vf5kZe0dN/cbkmP2fBxMkmK+EJqj0jdQ9krQW7iqAqtHqw3OvOL
	2sKAfg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8vbb1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 16:28:41 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7725b77b795so83031b3a.2
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 09:28:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756916920; x=1757521720;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3W8v279knRH3OWhUMa8czqjX5zZ7UZx/tVNRcDruII4=;
        b=DuVa6sHEfpAC3I5YBqv2DzAliMBEZ98dq7pIVIWGuQ5B50CEQ7tSIx7oDOSGSV1Dwu
         MlKOT4ui/pecmHpXBKTi3U9ybrKes960jCNDXhbfpgH50YsORj1DGKut5DfXSPIucIPO
         bFryWYVoFo/8znkWdVsrPkAT0yhQQwG3EhL33DjhlhFe3oHhkCVxMBypl9g+B3EQBPEU
         eJwW1cxQMklTCVtHE9V/QJw/h/tcxpc1RWZHxA6UvCQAc4kDdeDTFm/0nLs0goTmediv
         1/Fba4oEhLcme3rrPTDr7fSFT/Sj6ryHaajzxb91v/Jn0rK7ywwqGBDSpXhLlUh87E3e
         0Mfg==
X-Forwarded-Encrypted: i=1; AJvYcCXNy6GV+oex2IASY8xJNpcwH2TvR6FKXPetIOgNPG4JtYO6jU9qkuBS1zKwRwk7XBfQcR9+yPYZDyOj@vger.kernel.org
X-Gm-Message-State: AOJu0YxP3WHad94utjAVI3jsQBMssYdq69NLLD9hXKIIgcR3lNBWVvW4
	MlLE6QMXXbph7uUnOAWa+UVLnEBSo3K9IAYg9hY8+CZESku/EjAu1U70D9kBwqhQPlvoOQscRWQ
	SoxoeZju5O+7ALwgXUGXsWRKmam5DqW56LWXssyyeE5f524Wu2n/TSWSnd3Y2a/Os
X-Gm-Gg: ASbGncuv7isZxl711PY74jowy+7As6AMMFvvm76/qvO8iWumhWGG+fHA/ao5T6YKqEQ
	Tt/VUHvT6g5xinmFhCIAtcEPsG3AmspNL0V6iVV+SOH9WSZZUIChbBf7B/VFS4v1TdVRjy43Zox
	uYBeXeE2ye5u49ITrCv+YcfF8E7u6hpkK4GjVZhgq2SsXYfQoO7BslsE6Y3eKuyG2qbfxHk8uto
	wZ65bRk7VHwxhERjvBeRzEAMsggb/CR05lAhp+IBBVVyxVHYI6FTvUYnv9fk0As0ZLt3U/+yRXP
	uhBrAeyElg0R9cUflE27BhAPPeNwDT6eH8WotmN60M9TO7N35ICC4PGgUkOR0OdwsuVF
X-Received: by 2002:a05:6a00:2314:b0:772:bb4:a1c8 with SMTP id d2e1a72fcca58-7723e387c08mr16394821b3a.23.1756916920252;
        Wed, 03 Sep 2025 09:28:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxMR7hBz3AXIbxT3k+26DZmNA55+biuruOPc4EMsmI//RROhDkSqh0Pri4+DqMIllJh0FwlQ==
X-Received: by 2002:a05:6a00:2314:b0:772:bb4:a1c8 with SMTP id d2e1a72fcca58-7723e387c08mr16394797b3a.23.1756916919720;
        Wed, 03 Sep 2025 09:28:39 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7725ad1e086sm9459942b3a.20.2025.09.03.09.28.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 09:28:39 -0700 (PDT)
Date: Wed, 3 Sep 2025 21:58:33 +0530
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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
Message-ID: <aLhssUQa7tvUfu2j@hu-wasimn-hyd.qualcomm.com>
References: <20250826-lemans-evk-bu-v1-0-08016e0d3ce5@oss.qualcomm.com>
 <20250826-lemans-evk-bu-v1-2-08016e0d3ce5@oss.qualcomm.com>
 <rxd4js6hb5ccejge2i2fp2syqlzdghqs75hb5ufqrhvpwubjyz@zwumzc7wphjx>
 <c82d44af-d107-4e84-b5ae-eeb624bc03af@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c82d44af-d107-4e84-b5ae-eeb624bc03af@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Ue2vhhi2pxxUtd4UsVNm8_9s0PnzAYqP
X-Proofpoint-GUID: Ue2vhhi2pxxUtd4UsVNm8_9s0PnzAYqP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX852OBbQgFHvB
 lS3PhJ7GsI52i29dyLAuTqcwlmps1dl28DLN0E8Dr6D636hL+RoRjPzBAh77MHKfDZCh1t8BVXO
 eJmQACljp6Uv/qh7gD9+CJDJI3noLqzsn2x4GvOjrL9f0l4JkZoAK4JSTQR/OHLVo5m7C4GV87I
 Wfem2m3M2xs5G7mYWaNJi6Yblu2Y7clC3+vFep8E8erxCnwuTQIRdP7x1fZrwiA4uUiYoD36skQ
 URVVrcgXXLps5FXykRbMEP3H9z1Tqmi2VF6pZ+dVw0eYt6OTmweJCeO2ekoD1pAcAi8t+o+IPwB
 vWymL6/jyjuFyNI7N4fzbCX8bifQpAz2V8IzTdagqq+9206wFN9UuCfqdcoixsSPoEHn0ltjRUw
 EpIyMPA6
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b86cb9 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=Jh9KyP6SycQYY5kWdYcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

On Wed, Sep 03, 2025 at 06:12:59PM +0200, Konrad Dybcio wrote:
> On 8/27/25 3:20 AM, Dmitry Baryshkov wrote:
> > On Tue, Aug 26, 2025 at 11:51:01PM +0530, Wasim Nazir wrote:
> >> From: Monish Chunara <quic_mchunara@quicinc.com>
> >>
> >> Introduce the SDHC v5 controller node for the Lemans platform.
> >> This controller supports either eMMC or SD-card, but only one
> >> can be active at a time. SD-card is the preferred configuration
> >> on Lemans targets, so describe this controller.
> >>
> >> Define the SDC interface pins including clk, cmd, and data lines
> >> to enable proper communication with the SDHC controller.
> >>
> >> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> >> Co-developed-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> >> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/lemans.dtsi | 70 ++++++++++++++++++++++++++++++++++++
> >>  1 file changed, 70 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> >> index 99a566b42ef2..a5a3cdba47f3 100644
> >> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> >> @@ -3834,6 +3834,36 @@ apss_tpdm2_out: endpoint {
> >>  			};
> >>  		};
> >>  
> >> +		sdhc: mmc@87c4000 {
> >> +			compatible = "qcom,sa8775p-sdhci", "qcom,sdhci-msm-v5";
> >> +			reg = <0x0 0x087c4000 0x0 0x1000>;
> >> +
> >> +			interrupts = <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH>,
> >> +				     <GIC_SPI 521 IRQ_TYPE_LEVEL_HIGH>;
> >> +			interrupt-names = "hc_irq", "pwr_irq";
> >> +
> >> +			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
> >> +				 <&gcc GCC_SDCC1_APPS_CLK>;
> >> +			clock-names = "iface", "core";
> >> +
> >> +			interconnects = <&aggre1_noc MASTER_SDC 0 &mc_virt SLAVE_EBI1 0>,
> >> +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_SDC1 0>;
> >> +			interconnect-names = "sdhc-ddr", "cpu-sdhc";
> >> +
> >> +			iommus = <&apps_smmu 0x0 0x0>;
> >> +			dma-coherent;
> >> +
> >> +			resets = <&gcc GCC_SDCC1_BCR>;
> >> +
> >> +			no-sdio;
> >> +			no-mmc;
> >> +			bus-width = <4>;
> > 
> > This is the board configuration, it should be defined in the EVK DTS.
> 
> Unless the controller is actually incapable of doing non-SDCards
> 
> But from the limited information I can find, this one should be able
> to do both
> 

It’s doable, but the bus width differs when this controller is used for
eMMC, which is supported on the Mezz board. So, it’s cleaner to define
only what’s needed for each specific usecase on the board.

-- 
Regards,
Wasim

