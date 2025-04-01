Return-Path: <devicetree+bounces-162327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D52A77E8F
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 17:07:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5769B3A6DC5
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 15:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4AB7206F15;
	Tue,  1 Apr 2025 15:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IdqFhjyx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8766206F10
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 15:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743520015; cv=none; b=OCG/PLxTc1rl8AKEhsKPjsChhMKmmguuL7Cbsvh6UjG4HoImCIbj55Oof3ddjsWo0tYkTNOd2ehJ/WYclLpphDBE6JkVkiY4fwipwYGXja0tpJIEY/8yVZRrUBN+1D2XLbZQ4nYL61Eigv6TfxAG4R/U1nva1jtLvzMflra2RJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743520015; c=relaxed/simple;
	bh=XWZpITGhdYWR6looe59OiP8nzIwFT10XRIqyP7h37Jg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BS8MhazE++Lo3nfA7W5Vz4t1a3H21o5tKrPMmb/jfjETufmEpwvHG5sJFg/hAdKBC5J80wD/iiJqvHGxSlLwpzgrcTPdWLxKD9fEQj9L3rs4ZqkfbqcFN08e2tfOhLUAFiMo82aOGr631CAgJBRYVgroW1UPlk4YvNsITKlsB8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IdqFhjyx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 531EgtFO019640
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 15:06:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mBzQhhw7AwypkzcbLw3+6ZQqF1oYgVeh+QeBkcqytNY=; b=IdqFhjyxWFSv9Xkk
	cNYIM1zOpRxT0pJobm/9z92acTYmoWHH18wzDIw6Txj9q0ASrG2OZ29mtd6hIaZf
	VaC35Ouv5zUdifn6nQqLiQ12HqaofpvM143lKhuym0CWpoDD0itpzxtmZ25UcLTh
	Vmeg18nTmXfrXFlLvGZgSQkslUI0IXwFtpsPlQON8rMQQT2y0RmdpXMH1wkfBVXc
	yR60qWk7HInuw42zWEsT8g5rFTSNXOKFNMJOnWETTBI7ge+fI29IHjRNi+A6NOJB
	bjuurb4PmO0RSLCYhQ72LtKVH/glJJ2K/Fv/uIG+TIqtv9TncZfn+PGrC5JrAiEk
	+z7ypg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45r1vnaw2a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 15:06:52 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8f3c21043so14286336d6.1
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 08:06:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743520012; x=1744124812;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mBzQhhw7AwypkzcbLw3+6ZQqF1oYgVeh+QeBkcqytNY=;
        b=kBeVGXDtHyajUQt/tmdMKyOkv+QTkwVorq8Bl5NFMUoYwp+njYIIn9kclZqTBN7Hg9
         1hBZV4GG17BGsoKyvpYEXYyA0r61lvt1+Z5JOu97jjrbBYQzAgqnGeIzRZoj9Uh1ucIz
         YauruAgWsfUOOs2YRQu5QSU40Rp4zg7REZ/sJwi+oAYbQGeGbvZ5/7qoQ2b+qGwl0wkG
         OaoRy0i4QxFPvSM04P2eInCO+KDw64X2E3gn1YTzm3/nE4nAJzvNdaHCohuCf0kKH5va
         x48XMFRdYME7WjANStCm7LkwQvTOvJ6u6p5s9GP6mgDsQiPOuUn/B27pXltbgN25J1Hr
         NpYw==
X-Forwarded-Encrypted: i=1; AJvYcCXfYDT3b61NO33oLdnrDQsd13hgIDRRlZfaZH+B3MfjP0Fxq33hzt6JYfTUkcUOycTX9si7+ilKiiGA@vger.kernel.org
X-Gm-Message-State: AOJu0YwbEKH4+f/OTYme4h0QlZrSR1eMcZ7ZEYXiKNNXLP5olKyuA3Eh
	eC+9VL0CQYUrGaAgaYtlQExgBxeVmB4WrbR+wc6ZU89u7ZDOXR90Qqgov+wqIYx/MG5t6tnVQU+
	gA+edvDo/4WhkQdPM2O6RFwe9gFjVNpeBNtFVy67cMfsnnUb7tpdOVJNkAkP8
X-Gm-Gg: ASbGncsZuGJv8dpUegbofmP4OgZxSgJAk0675nkoAl1QimAdcgoMtCu0FaUvFWFgZzp
	FiInum2PmL8ejr5M7xhgD8JBNlhLbzQdPeYxKDoG1WYwaXyX33rZ7n9sE8vsZ+z1AWFhBjU7I7B
	LLSSBaIRJIUCYXdG62QcXVHK+/YysRIcAuyDDzqBhCVff/+nqTdduAzsg9FzazKW0J9tLpHDesJ
	VCFwK9hHjE+fyNKpbnFlN+xdfwnArG5wJXgtBbG0V+yf+RWzA73bro0FqQMDODyiPNyrniG89aV
	CgcDRkMyiwCvgi0bRCaiqMlPbzuRxLZQyaBO5PbkFPeK0T+dKGBf+AO8X+LHkIEWQqzirw==
X-Received: by 2002:a05:620a:390c:b0:7c5:ba85:c66 with SMTP id af79cd13be357-7c75c8e672emr154145585a.2.1743520011470;
        Tue, 01 Apr 2025 08:06:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+KMPv3hD6XZnbdPueLRjBSSQpzTwuK5+yXel6txrdpq3uKO+0M/qKdybY5KK0izvh1hsCIA==
X-Received: by 2002:a05:620a:390c:b0:7c5:ba85:c66 with SMTP id af79cd13be357-7c75c8e672emr154143285a.2.1743520011014;
        Tue, 01 Apr 2025 08:06:51 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7196dc4adsm771748166b.157.2025.04.01.08.06.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 08:06:50 -0700 (PDT)
Message-ID: <741aed9e-83e6-472f-a26d-2ee9da999057@oss.qualcomm.com>
Date: Tue, 1 Apr 2025 17:06:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: qcm2290: Add CCI node
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <y> <20250401143619.2053739-1-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250401143619.2053739-1-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=UL3dHDfy c=1 sm=1 tr=0 ts=67ec010c cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=STQ2a8oQ04ts6E9hehUA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: Uua11nPOG610WcDuhs3Wzg24sxVgc9LU
X-Proofpoint-GUID: Uua11nPOG610WcDuhs3Wzg24sxVgc9LU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_06,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 malwarescore=0 mlxlogscore=999 phishscore=0 impostorscore=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 clxscore=1015 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504010094

On 4/1/25 4:36 PM, Loic Poulain wrote:
> Add Camera Control Interface (CCI), supporting two I2C masters.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 44 +++++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> index 7fb5de92bc4c..927dbfe61e4a 100644
> --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> @@ -646,6 +646,20 @@ data-pins {
>  					bias-pull-up;
>  				};
>  			};
> +
> +			cci0_default: cci0-default-state {
> +				pins = "gpio22", "gpio23";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cci1_default: cci1-default-state {
> +				pins = "gpio29", "gpio30";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};

Please put these above the sdc pins, so that we get a by-pin-index sorting

>  		};
>  
>  		gcc: clock-controller@1400000 {
> @@ -1603,6 +1617,36 @@ adreno_smmu: iommu@59a0000 {
>  			#iommu-cells = <2>;
>  		};
>  
> +		cci: cci@5c1b000 {
> +			compatible = "qcom,qcm2290-cci", "qcom,msm8996-cci";
> +			reg = <0x0 0x5c1b000 0x0 0x1000>;
> +			interrupts = <GIC_SPI 206 IRQ_TYPE_EDGE_RISING>;
> +			power-domains = <&gcc GCC_CAMSS_TOP_GDSC>;
> +			clocks = <&gcc GCC_CAMSS_TOP_AHB_CLK>, <&gcc GCC_CAMSS_CCI_0_CLK>;
> +			clock-names = "camss_top_ahb", "cci";
> +			assigned-clocks = <&gcc GCC_CAMSS_CCI_0_CLK>;
> +			assigned-clock-rates = <37500000>;
> +			pinctrl-0 = <&cci0_default &cci1_default>;
> +			pinctrl-names = "default";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
The change looks good, please update the property order / styling with
this submission for x1e:

https://lore.kernel.org/linux-arm-msm/20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-4-edcb2cfc3122@linaro.org/

Konrad

