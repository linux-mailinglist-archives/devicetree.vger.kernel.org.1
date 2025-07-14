Return-Path: <devicetree+bounces-196037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF70AB03FF0
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 15:30:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A83C16D3A2
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 13:29:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93391247287;
	Mon, 14 Jul 2025 13:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KraOIjuM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D867924A04A
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 13:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752499711; cv=none; b=g4ttqZDw8UlciwLWR+MlgGq6Xe9QoF35vlT2NxVRenisWcmF8DhEfS/bMyngSvs6QjsVmNQ86hEuT9FNoZOnMP6DFnR/Sr14jj0+3qQ3FN2pWzDa8LQmmPJnM218K+Yo80fy99UtdXi9/8eRc+qskK+pOvwkSpSygzsTSp2zCHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752499711; c=relaxed/simple;
	bh=oHEQKwBatWKUIOpL/sm9kI7CU4MvbWDSdi+bybgSb3Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CqE9nadmmGRkurJpjPtDytmpNgggGb0eC4ceGjBY7NA0+rA99277XWqnhC8FsXZCQ7odo0f3zniK9B551HLDKn4cw3z7YcMbNBfLm14WaSKJpOD5tCQk4wS5109V8d+7FSvwXgX8TkGaToatFiYwJEMhiqEIoIvxt330nblOZ3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KraOIjuM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56E9aDUs011767
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 13:28:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ob9U6sQ6B7CRRePb9koAuef4V+KwLq5wrBJm+EnY7mw=; b=KraOIjuMYxXVQhaX
	kIZthTVA1UDkARf529A33L3Ay1OXUTbakbPknENdM/vzBHHWr5cqBo/IfPw1Sjha
	acRjGHbUtpZ7Y8ks9h8O0OtODmuuAtzk3beBDqBQBMTJbo//x2ylTASYwks2rvmr
	dYsQlszRZsS2qdfZ88J0cMxzxvGQ96fEiDVWGaf8Q8O1qFY/SdtYaVkCMXWkCSqx
	VRP1ZUSShkQxeKLuKjnzA+K+3oeGZch/Y0WVSHbZqqOBnoztqLmFfh1DPt4VzZ4t
	SW6Eh8+f1yQdfjkfzXvQTnWeSeoUPu6WcZ/EJ+SSayPySP17m9jo9dBMkl+l53MY
	oTI3Ng==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufut4qp6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 13:28:23 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6facbe71504so16751636d6.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:28:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752499702; x=1753104502;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ob9U6sQ6B7CRRePb9koAuef4V+KwLq5wrBJm+EnY7mw=;
        b=F3AqA2TAcY72VtGjHGEq9KkGDtam4vnavJdCRDRob5KQAI0UIgDdTW3paceX4shJjq
         h8Fu9ZWiJC2+6Qqv8NmAJyIn4+Ko3bcV+Deyh0pPIXDzLvEMEFecU6e4lCHu0HM07652
         y1KwPWmvvq0BpQLZlPKIhYDGlNVn6wdNtfsr/a6fMpf4qMdKvv/YCMK+STOe8of/WGX1
         13SXEgzeLm/GmUnw43ATioB7IggVhxGVbtiB4cm/diTMEykhyNj7RUwnZew4hwlGb8iT
         S9V0/u4SE+AviTJ9FqfC74uuu5dlvT9KlyzWpFVe6ucEeu0gEudij8/mgUPVv5lh86kL
         BSNA==
X-Forwarded-Encrypted: i=1; AJvYcCXCPmnxayem6i/zjpOkiSpJ71c2lFdiGMkQMRsKk2jWOmdAMewRK6l++3kAHcFA0ch5uVt4nFSejj+D@vger.kernel.org
X-Gm-Message-State: AOJu0YwqQbaZQhkt7V1Dzi5rdH2x800QS5msXw5JFu9cuP22NxlisyCZ
	cxZIHokEdFYxE27y70m51OqP+8csPn5oY1LVRSdg9ptVeLkl9h8vb/gHO8HBJXqYVLSo/CIqjWC
	DqQh1f+jF6Sc/omlBJ/dNg0TmqerWY32jIP6oMXnfuV3pzChVLUWBcE9PVcSBzhgt
X-Gm-Gg: ASbGncsnK3OZU0MFONgCdF5rhwuc6OsELG2xTUNIOYkF0D1HT+WPBUK9uywx/ztllde
	exIgtrgttl/Iv6ROvQ5WPUI1iMT76BuPqCVElSWYJmGmvjp6B5pycdqkAsaKBpQPHiudHakVxxy
	cjGDIjCNySq0BE/Fowo8sDVUIytw0iOKI2quB1JfNmf0V41rjrdTb4/CWZd0jdgpippCXjUk/Rw
	mpp18MjCpMH8Y6Ajpm08Ew/Qxc93OEZ4G6UBCh/524Ss9JHFXf93eQqpAow213YxMCJUXIHhM5m
	4H6vjCXGASJ+/wzQh9DaxmnW9TYL/MsbmNsdu9fQGf7tBrEzSbAtUNmbHZzn9WBKaOtS1KTP8lY
	hVWKcXGgiVcI2r33SGbGz
X-Received: by 2002:a05:620a:394b:b0:7c0:b3cd:9be0 with SMTP id af79cd13be357-7ddeb8a4a8cmr654569285a.10.1752499702301;
        Mon, 14 Jul 2025 06:28:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8Im8XF0a7klJdUS69ADOk3tOusKi5hYyzJtkL4/kjokc0qUJhiJ6sJr4jnvb6Fh5hB1siVQ==
X-Received: by 2002:a05:620a:394b:b0:7c0:b3cd:9be0 with SMTP id af79cd13be357-7ddeb8a4a8cmr654567185a.10.1752499701899;
        Mon, 14 Jul 2025 06:28:21 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7e91a0bsm819346166b.7.2025.07.14.06.28.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 06:28:21 -0700 (PDT)
Message-ID: <fc21ee61-188e-42a3-b9f6-4b81a72d388f@oss.qualcomm.com>
Date: Mon, 14 Jul 2025 15:28:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 11/15] arm64: dts: qcom: x1e80100-crd: Add ov08x40 RGB
 sensor on CSIPHY4
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-0-0bc5da82f526@linaro.org>
 <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-11-0bc5da82f526@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-11-0bc5da82f526@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=e7gGSbp/ c=1 sm=1 tr=0 ts=687505f7 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=qEq-IjhxTDjyFSs2OvYA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: JeR3rt6GPity1iNrCzqWxnKVnl90TpeX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA3OSBTYWx0ZWRfXzl3JdXneW2uU
 4GB2oC1R52w0SolnwdMsKPaGRcP8nEa5/1q8dsEMA/fbsV4gDLr5yr/HuWAwrPBnajqBks9AVP8
 zWL4lzx26NvOSceyrxkq2yN1xChM20zeNMRHa1Z8z5LVokx4Iu7E6HwHCRBIKEJK++g9kbnFkI5
 pp+jxVWUcle17aLT9JXqjhaKby0PqRYhxY22srcxvwvsARajR4Q/kfE91WrRcARMHrRadnzirV0
 1VrAtHu4STmJO9APNDvNzWfExnhhvWKKWcrw2KgQYah677d2VpigakcExHVEv70dTXC2JqsS5sB
 8k33Dw2iOoh1vfLHbVAGntBIT89W5SW0VuX3OuKKAWm4n/8j3QKCzhExfT98T8CckDW1hEKKSOb
 ytk61cB/mIzjI3fdtA+1DRuUgGWzJwC1hKhlajDSizVb6AH7RBg+TjKQRof3C9NuvgR0GXOY
X-Proofpoint-ORIG-GUID: JeR3rt6GPity1iNrCzqWxnKVnl90TpeX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 spamscore=0 suspectscore=0
 phishscore=0 bulkscore=0 impostorscore=0 clxscore=1015 adultscore=0
 malwarescore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140079

On 7/11/25 2:58 PM, Bryan O'Donoghue wrote:
> Define ov08x40 on cci1_i2c1. The RGB sensor appears on the AON CCI pins
> connected to CSIPHY4 in four lane mode.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1-crd.dtsi | 78 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 78 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> index 08268f60c305cd69baf937fced6d37f2ea788b62..ace4ab2b9fc0faac8233a40220aafba200ff05d9 100644
> --- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> @@ -6,6 +6,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/gpio-keys.h>
>  #include <dt-bindings/input/input.h>
> +#include <dt-bindings/phy/phy.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  
> @@ -996,6 +997,67 @@ &gpu {
>  	status = "okay";
>  };
>  
> +&camss {
> +	status = "okay";
> +
> +	ports {
> +		/*
> +		 * port0 => csiphy0
> +		 * port1 => csiphy1
> +		 * port2 => csiphy2
> +		 * port3 => csiphy4

As I've mentioned in the past, this seems SoC-specific (and perhaps
the csiphyN naming is confusing, as it refers to a lane within the
phy, rather than the index of the instance of a phy..)

Konrad

