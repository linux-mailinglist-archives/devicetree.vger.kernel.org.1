Return-Path: <devicetree+bounces-221339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 817B3B9E985
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:16:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B7DA163DD8
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:16:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3438C270EBF;
	Thu, 25 Sep 2025 10:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I8wPf8Ld"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7823614EC73
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758795395; cv=none; b=mlSej2sadCsuEZbz8OER2mPVqeNMueNyQvxtQPEU5Um/1Jqr72FiX62mhA6sGJvmkPXM28jfdaEbfYUSMA7ExCj4MF16JXw2an7KXc8H153Xe4cKePgl43tkEzUIoaJzisHffvW408QA4K7WqmA6LBtN9ZHFhNQTUnYDqcUhqSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758795395; c=relaxed/simple;
	bh=cnn9q+ZNxb1vh4X93U+qnl1z7nRJBqd+eW3oqS4POSg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SbhoSJ0XoYy/jmZWfFAgio9+MhLt8wFpaXZV+0NZt5uqS5dZLxMDawKt1CTDogfAaqxWKED3A/+Tmf8AaCZWttkUqTjtvxV3LlTwsBTCkar7JIYIX4z+oCw26Ox6/NU3Bk3XPAcH8OM4iupMTwngV3lRIE4brFWVpFQGKttgyjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I8wPf8Ld; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9Rcff024042
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:16:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QR933LWNJjgWeV7dMuTp3Litc5ZgQRud23Dp4IEYYhk=; b=I8wPf8LdDryNGvMi
	Qqhexk6IBIILJmX3o+8U95J9cq0Zi1Fs8olQNYl4jZBxPAZQ9mA8or191pWMytyl
	9/OxvI/NMAbzyxf1jQsxIqTc3BPeoX015Fr1v2pCk1MtpNZKOTGJXWZGUeS+BIj7
	2wpzal0xjcRjXH0woU/jGFgmfMLKegVK5VeWilMPrgtAS4R0//XYWZXE9qQkKl4+
	a3wqUoWFAJCepDACtZHX7LGicAHBk6GFI6WJLhrnBDZ+rydJYjh6LOGDTw57uY+r
	GVLjMzYq+raZV9saG29Vb4jCGoOSmS0sFNwY1QS3340dv24i/8rrXnax9GexZuTP
	oLEkBg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0er0k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:16:32 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-798447d6dd6so2334846d6.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:16:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758795391; x=1759400191;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QR933LWNJjgWeV7dMuTp3Litc5ZgQRud23Dp4IEYYhk=;
        b=c6LiAfejI+AkyCqhuebMHNhs8bacnie4y77kjMTnP6Kc0i85nqpVvzVkkIsjA5rE5i
         gPf3Z1DqxYKWsx42R+MraUvK3uenHpJ8nBwKVwM/oHT++hUn/Zhv7e9npGZkTlviacFj
         YuX8c2KPuexqb/juD2jssziN2hI32A04Mh2ExkeAuon1IzUnEe5L2xv8OgN6hrhcwBVv
         7xpix24FJd+aI3Y+83iEGgCzZ8T8DSTgrdAnotmT6uP3K4VQ7ppk42YnlaYopIUc/6sE
         fEz3xWuFQq4Monzyx2M1fC5h6JLpcZ+j8DAAPmHBQ7j+xwuvIWLqQk1XNfvfZtDsKHsM
         cjEA==
X-Forwarded-Encrypted: i=1; AJvYcCVbIrUcydiwSVjnt7bx9mZmInh4r17Xscbw4Y8Sltn38pCAMhofGSX/QuUxs8e4rJaSm53cLZkjhXad@vger.kernel.org
X-Gm-Message-State: AOJu0YyVsR40C2Yn/PI0lcUHKcveBN6XmANGZ7ZK0g2ERcSgZTgPRFix
	4qgZ4xrv8Im0UHmLOZNE54S85g22r6TKhrp8wvneIYhDbVwGGzbCqeiTxHU00143XcEPxqCFKOk
	nRgssUej8ZOhaQrHUw+e2pJXjgiY0XDKEwwMIsGmFGaVp5YThSeNWYvlKp6ntUP2+
X-Gm-Gg: ASbGncvzQM7yUpxe1A7JzY/y3evgM6cD1UjS8rqYnciDtnl0EjjnFACQyOJvkL2fVVH
	EZ/AG/rX9i/2rRCiZ8lHbZZA8VI1BXoEUNK+5oCT4r76V5wAQGMWgx6NAQrUxvwg7n24HcTq41r
	VHeBD2wacS5qQ7n1qQ1C0JS9/XIq8kKqeTBHJ3Q/rKNNdWoSywlXFFmFZVVh/5mU2DsjTvpjr5h
	Z7KU/weuo+7uZ8AwGIZUSgEhYj75RT4tTql3Z5q8E+5v5oGEDb0NNATYQAGlzOUCDOKHr4CRFOo
	FKyCaA87a91hDjBlv99d0DzMC4jzKZZ1d2Hpey56YlU0YUTz2/eZM3Sxe/YabIvxCClmXgob9/v
	3WLYcQua7tKt5s5sk+OykuA==
X-Received: by 2002:ac8:5d92:0:b0:4b7:a9cf:91f with SMTP id d75a77b69052e-4da4b0490f1mr22401411cf.8.1758795391381;
        Thu, 25 Sep 2025 03:16:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHjj/ZfVdzvXfp9gg2UszZ5VwMxNEejpTeP4g5NzZPK6LH2TSxAGBDvZNIGOmOLXvDGg2Yp/g==
X-Received: by 2002:ac8:5d92:0:b0:4b7:a9cf:91f with SMTP id d75a77b69052e-4da4b0490f1mr22401161cf.8.1758795390724;
        Thu, 25 Sep 2025 03:16:30 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3b05bafsm975284a12.53.2025.09.25.03.16.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 03:16:30 -0700 (PDT)
Message-ID: <2960a6fc-106b-4280-b4d4-9c1a3a449454@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:16:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/24] arm64: dts: qcom: Introduce Glymur base dtsi and
 CRD dts
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-3-24b601bbecc0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-3-24b601bbecc0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d51680 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=h9bIO8qCkgbVbkUqMQIA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: nGnIdCxdlwVEUdyTUp6xbcpMzQ2kSXBq
X-Proofpoint-ORIG-GUID: nGnIdCxdlwVEUdyTUp6xbcpMzQ2kSXBq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfXyURziJ1uGAsC
 TwiwGzFAffplroBtG3tVDbGkAwNJDGMEysBJHuuAahhLg1tz5V391EKOM8BihHgFwNT1Ozw9iwl
 zlrWtWWC8cTl5s23QaC7FpI8MVu5Qm7LiNZTUHqgC8S1DHCK2vj1HK2pL81NEjIP9QlElL56lY6
 fiGwVjKfvNwYbG/jsnutw1OGBnjMTBUmrvDpIV1ULD1GEkgjcpapOf3XoH1tRMJY1d/0iqYz45w
 W96X2ktc2xVyXmQsEm4oaw74eM9CAcKHRPU+0b5/xLYhPyNguEIZ2OSkhsCY+Ib9BojEoXocS8r
 cfDHBVzfvlbH3IArSMYG+GtavS2jLmoVQMu9nPSY6ory+xzePL5cdPos/TePKwqfHeE6gVp4IAK
 nbbaP5EO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

On 9/25/25 8:32 AM, Pankaj Patil wrote:
> Introduce initial device tree support for Glymur - Qualcomm's
> next-generation compute SoC and it's associated Compute Reference
> Device (CRD) platform.
> 
> The dt describes CPUs, CPU map, GCC and RPMHCC clock controllers,
> geni UART, interrupt controller, TLMM, reserved memory,
> interconnects, SMMU, firmware scm, watchdog, apps rsc, RPMHPD,
> SRAM, PSCI and pmu nodes.
> 
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---

[...]

> +#include "glymur.dtsi"
> +
> +/ {
> +	model = "Qualcomm Technologies, Inc. Glymur CRD";
> +	compatible = "qcom,glymur-crd", "qcom,glymur";
> +
> +	aliases {
> +		serial0 = &uart21;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +};
> +
> +&tlmm {
> +	gpio-reserved-ranges = <4 4>, <10 2>, <44 4>; /*Security SPI (TPM)*/

Please add a space between the comment begin/end markers and the content

> +};
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> new file mode 100644
> index 0000000000000000000000000000000000000000..f1c5a0cb483670e9f8044e250950693b4a015479
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -0,0 +1,1320 @@
> +// SPDX-License-Identifier: GPL-2.0-only

This is different..

[...]

> +		cpu0: cpu0@0 {

"cpu@"

> +			device_type = "cpu";
> +			compatible = "qcom,oryon";

We've beaten this horse to death, over and over again.

This compatible is meaningless, incorrect and shall not be merged

[...]

> +	cpu-map {
> +		cluster0 {
> +			core0 {
> +				cpu = <&cpu0>;
> +			};
> +			core1 {

Please ensure a \n between subsequent subnodes

[...]


> +	soc: soc@0 {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		compatible = "simple-bus";

compatible goes first

[...]

> +		tcsrcc: clock-controller@1fd5044 {
> +			compatible = "qcom,glymur-tcsr";
> +			reg = <0x0 0x1fd5044 0x0 0x48>;

We can map 0x1fd5000 - 0x1fd5094 inclusive, as that seems like a
logical subblock (this would require adjusting the driver)

There's also a laaaarge pool of various TCSR_ registers between
the previous node and this one.. but we can leave that in case we
need to describe it in a specific way some day
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +		};
> +
> +		tcsr: syscon@1fd6000 {
> +			compatible = "syscon";

"syscon" alone was not allowed by the dt checker at one point.. 

> +			reg = <0x0 0x1fd6000 0x0 0x20000>;
> +		};

[...]

> +			frame@17811000 {
> +				reg =	<0x0 0x17811000 0x0 0x1000>,
> +					<0x0 0x17812000 0x0 0x1000>;

Odd spacing (more than 1 space after '=')

Konrad

