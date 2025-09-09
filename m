Return-Path: <devicetree+bounces-214788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2046FB4A620
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 10:56:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BAE273BC40F
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 08:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D74C92750FE;
	Tue,  9 Sep 2025 08:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fu32bpPb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5183A274650
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 08:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757408172; cv=none; b=nIJ4MiQ0hF1A73+7TvZakxttHdbXhip3xWz7dtsDyfQpzT18Cmgo35XXJyixRxBo+6n5cDI4/TGTfw1BUrBWVz4mFTYQ+kNlOXm5/ORgvj0BeukhCftEbQk+/y0s63hc3rvPgFqHCAT1ukMwGbzP6n//VzPzZle7WXvjC+BBIvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757408172; c=relaxed/simple;
	bh=HEr1BW2CyFXSjAp5IHF1LeICiVM9EMNs83h9onsJJ40=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CIm9BdHnKaloojyyEO4LPFv81dNXvttJQt+1rSP1PzLb1jvMls4J244Sqkrf/b3vR4HCsE3GU4vhuW4mkCZGczOVbPRTL/ndZLAzb+PddXDI6GF7TPEwCwWglGKKyeD70GD/0SUUfpMyyyH8VHYr/UdiM6uXaVz3NBbQ7vDMRIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fu32bpPb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5896T1Wb023627
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 08:56:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FCzw1uK2cApp7VoxRq8nIM7edWjezcrHv5GLBEAENTI=; b=Fu32bpPb1qDD0kt5
	7KNTHaBpEDpvqtdQSdELmxstGrZAtUyZNJxX3hkfEWNyIEIWzIH/juJl5u3USICt
	ExqQRugwoY5MVbHLHvtTjU7IcDEaaLUO3/UirbkK4WmYCN1xnSde/ZJpwHYe0fQu
	bUnkPNFHOcrAkpVC7/B3PFXoJlLsMK1RzYDg44iw3mwD66xj2NFNQBnrErwtybYk
	pNzUeswF1no8kEZ7j8LMikCCW/Nd8sOyg3kMN5PtWnWvxK72QsulfyV3QJcYkZAL
	ykkGOw3tZ0yHqzeTjIRUSXVF69qucFr7CwI34MN4tljVfEhjIxhLxaLet93jlUCL
	lw0a1w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8fm8k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 08:56:10 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70dca587837so8309806d6.3
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 01:56:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757408169; x=1758012969;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FCzw1uK2cApp7VoxRq8nIM7edWjezcrHv5GLBEAENTI=;
        b=RImBcyr5OgiW0NCRLejydpdcpTnE9cZUe/GbZAsTKrrpTu9IVAu84A4WcS82kUzkW6
         +4ijG/SFFTeuy1iYRXbsiZ5EsVMJjtLh6VLALX3DvVzu25A+8k0+wGPWOdTBXHMCUzVk
         lRr0EYw13rqQwV8xFibpP2hIpytaCWGheMX+DYRKJJ4fp/ZKC29u154lRsKJJ7Xtskf/
         z660hvGCHsRvpqcn8qOhDifFjayR8bFpJ5ZDOSWgV/K7FaDD5q4tFk+96VWDlY0Uz9Zm
         HdBRjioVx/mN/sqHvL/bgF4FAcfkf5qqkr3ArK5wWOvxYtLJoDOpePEQx+GPnsztTKNY
         +jew==
X-Forwarded-Encrypted: i=1; AJvYcCV/n2yBAFWQjOLQYj1Rj7N40Ue4Y07qwU2/1gzx+0WhSz71O3R+kOaPW/toSMC2cNzeBiONCcNsVToT@vger.kernel.org
X-Gm-Message-State: AOJu0YzXyODG4JSEJK1oHGXNql+ShmJRfu96ncc08XwIOSyyav0GuXyU
	KkoL+TxipOdrAlAWcjkAS7G65iKY+dvwCvV0bv/TsXyD59zVad19cBID4EWqnzy68crT+wDiJrA
	NGWhOVXjABIoejfECLJ0aqtONAw+yC9fLp2sX0PGj8DSrOn89pod32hGj6sX7xHsO
X-Gm-Gg: ASbGncvdmwvUc0I6rYU4t5y/Y+9Q6GP55+Jkp62x/6ouZdWGfpwOgX7kp2L9LGuBwa0
	gLebgMIC928PaiSEjq8x60Tlqw49v/dA6OvLFf7UBEHWue/cTLAALKSJ9omaSWDBCrSdai0NNus
	TNGV3Qclaj/zGpXgnAZdncloaM9liYmTNO+QfPG1G6ZBUlJGvOVu9rlfptZVeUPq/2CSvP4RbZJ
	5RbBezg6Ml4BIcvT0VZK9LL7DxxLKfNoLJT4VvLG0ko7vY5Wp0VYd+Q1tlZTCYnsqa0YszYTQA3
	1fgI8hmUEcD5ooJcr4/EabMtdil/jRq46eMQMufmKNl/TDxfR62D7zs8QydIawl9HSUFMdzwGu/
	rxiMFnjVvi7xvWHvzLX1fPQ==
X-Received: by 2002:a05:6214:2601:b0:70d:fce4:1103 with SMTP id 6a1803df08f44-73923522d01mr76507186d6.2.1757408169004;
        Tue, 09 Sep 2025 01:56:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFomYED4Eza1A+e/BtNTXXoKFDMJfCxthpkjrk2o70p/W1ZuHNFlj0kbfmL3qCOaJ0P4xf/8Q==
X-Received: by 2002:a05:6214:2601:b0:70d:fce4:1103 with SMTP id 6a1803df08f44-73923522d01mr76506916d6.2.1757408168393;
        Tue, 09 Sep 2025 01:56:08 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62c0123f3ffsm809455a12.27.2025.09.09.01.56.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 01:56:07 -0700 (PDT)
Message-ID: <67de95ac-38d4-452f-8285-c2da89aa725b@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 10:56:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 8/8] arm64: dts: qcom: x1e80100-crd: Add charge limit
 nvmem
To: fenglin.wu@oss.qualcomm.com, Sebastian Reichel <sre@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        =?UTF-8?Q?Gy=C3=B6rgy_Kurucz?= <me@kuruczgy.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org
References: <20250826-qcom_battmgr_update-v3-0-74ea410ef146@oss.qualcomm.com>
 <20250826-qcom_battmgr_update-v3-8-74ea410ef146@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250826-qcom_battmgr_update-v3-8-74ea410ef146@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfX73fhNB6KKxcW
 LpKisWTmcjLBePr55Z7K27Fdp8egIjNdx1qoq4Vz9tgGiQqkBlcc8dRg06pVqqMi04HQYz5V8uK
 T4z94PPhQIubx/gZhPY/NxcN/enFyDZOchEBM/ODsj/CUiOV7EEioR/IlI2aV095/yVD7yQhNiN
 SqDX4VqO9yJWFvi6fGK24iZH8iV7/8149kZv6cQAHZx/MEZsjXFV+z9HXDbDhOwvqKjfX7XFFNw
 V3ueFyFWis5U90xKoDXVLduqzAv24n7hWTued+w0bOOa7dOUN97bLq9DvDXX/bkq/KgJWmghlMv
 j4A9G1B0UPNDdIhKyDWy7ns04gMQcg+oFn75luMvoTDx629V+LyjUVMYJC7jeiJQN2ETnPsz0r/
 jByFhlMX
X-Proofpoint-ORIG-GUID: biHl1wkM1jaeL8aB9h9J9dt21NDeZHq-
X-Proofpoint-GUID: biHl1wkM1jaeL8aB9h9J9dt21NDeZHq-
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68bfebaa cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=B-3kHGih9VurzyBn-70A:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

On 8/26/25 9:18 AM, Fenglin Wu via B4 Relay wrote:
> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> 
> Add nvmem cells for getting charge control thresholds if they have
> been set previously.
> 
> Signed-off-by: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1-crd.dtsi         |  2 ++
>  arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi | 20 ++++++++++++++++++++
>  2 files changed, 22 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> index c9f0d505267081af66b0973fe6c1e33832a2c86b..8c3d30dd936ef9b12867971f5f237dd12484072d 100644
> --- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> @@ -82,6 +82,8 @@ pmic-glink {
>  				    <&tlmm 123 GPIO_ACTIVE_HIGH>,
>  				    <&tlmm 125 GPIO_ACTIVE_HIGH>;
>  
> +		nvmem-cells = <&charge_limit_en>, <&charge_limit_end>, <&charge_limit_delta>;
> +		nvmem-cell-names = "charge_limit_en", "charge_limit_end", "charge_limit_delta";

1 a line would be preferred, and we try to keep a newline between
the last property and the following subnodes (i.e. before the
comment in this case), please adjust accordingly.


>  		/* Left-side rear port */
>  		connector@0 {
>  			compatible = "usb-c-connector";
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi b/arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi
> index c02fd4d15c9649c222caaafa5ed2c777a10fb4f5..abf7afe5127d7b8b572513234e00009ce837837d 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi
> @@ -239,6 +239,26 @@ reboot_reason: reboot-reason@48 {
>  			};
>  		};
>  
> +		pmk8550_sdam_15: nvram@7e00 {
> +			compatible = "qcom,spmi-sdam";
> +			reg = <0x7e00>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges = <0 0x7e00 0x100>;
> +
> +			charge_limit_en: charge-limit-en@73 {
> +				reg = <0x73 0x1>;
> +			};
> +
> +			charge_limit_end: charge-limit-end@75 {
> +				reg = <0x75 0x1>;
> +			};
> +
> +			charge_limit_delta: charge-limit-delta@75 {
> +				reg = <0x76 0x1>;
> +			};

These addresses look in line with the SDAM assignment document.

Konrad

