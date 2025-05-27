Return-Path: <devicetree+bounces-180787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C5327AC4D3F
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:26:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A98B17D9C5
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 11:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8A7C259CA7;
	Tue, 27 May 2025 11:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EtKlxpad"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC511D90DF
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748345120; cv=none; b=BGbTqA4nePgzXCGuP3vxNDJVPVYp9BS87pP1vfPPYKGeOAU375csMXSx6qXf37J0OIM0PH4O4FRd+qyOg+zqjnWS96cKLeerBytfbhB46fowvGp9VXIWLQlO7O1FaZXaCUFvSBmKKK2cN/oR0Du5gVwdFVVZx2LvmTBi/IZJgM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748345120; c=relaxed/simple;
	bh=IjYCkaz0vdLZNHpHQfeQHn8VelyKTW2bL453QEqv/S4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CoTxV3VgWQ1ZzoO1P+pT3GuhkEHiLuyW3REVHu6Kwm1sObz5nCGvybFx/7JG/TX8r3CzfG5bjwpu4M5b/DHQPk7kXPwrr9fgOtQOzPeTokO6p7b8GCqN38JLDd5R0tsWNaGj0Vz/uyYI5LB2gN8TKR1WCj09atNLuCQQvuv/C/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EtKlxpad; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R43nMF016367
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:25:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+EtwIED2VJ1CyFpdm5+4R02rvjaaRQ1G+TwJkZUU998=; b=EtKlxpadYqWlNZGo
	bVbKqu+LpRGPMJLr9sVh7i1zk+bwgcBtlzXXfkT7fXAyGsX54XX+ZHj1YgQEQ+vu
	SmiZkJrzAnn98IZradGQYtOx4FTzYvezqyrwgkFH8G0RWwjPl6Q3b0h9YmmMn1YT
	5OSWkBbAQk6eMgKFaPzO3FxHXlpGWoKLZR4xn+Hq6ng/bF0jMONZJP7C7YDB0Ils
	12ErRd6R36hYlUZWOhWzVF8YhrsfShqAAfCpWTKcFoKfVaNtu2djsVJsJ1JOdo+h
	1MesTbGzvp1RcIaCwSHZmgof8CE7ZV2QbovBOriNVcQ06H+tdr2ALvNnbovtVuMb
	uUm8uQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u549en82-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:25:17 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4775bdbcdc3so8570561cf.2
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 04:25:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748345117; x=1748949917;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+EtwIED2VJ1CyFpdm5+4R02rvjaaRQ1G+TwJkZUU998=;
        b=cfjrJjor2k2N4iaYCG7YPreMtnrepcRqlecS90kqBV/6nUAfza1wpTqWh9sqZVQlNL
         +VTrRmQ13/USvcMi62T/JbOPRUkKkM00TGq/wiRfYh7hv9n7AeHohZvvkYMDd2HbMrAm
         aS5ALP9H3tuO/y7hVss+QwphN+cUm/4/gK5ncOXY7ud/1X9L5s3dcLqJ3ammRPOPMevJ
         mjTLbTozvfOGWJzJaxb9d45NqpnSTuw9pIosKIcmHjLY/Bw8EBSQhTIEEECYl3mA9mOY
         0tKYtXbIoIb17PJPSzar0tyCmgf1MiAVYEN4SfY0TRiqWJoZ8svsu1fbqq029Au5Mj1+
         TphQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkYymlNe4TiNT7E2KOIiF0exxSjHg7dY54sowz3CrvcMZ1yeoy7/TrDyU0NzFwTXlxJPXq5eyGlVQq@vger.kernel.org
X-Gm-Message-State: AOJu0YwK9Z7X7c5j28zq39YznwLyAcYmq4a4AZPP6gYy2HY4/XI/VNWP
	xGEZpspWnpeD1TmnCq1HT0r4n9zCWbdpZfwhf+Au/+YAtIljmkTc1KdUyYso5knVuD7/64C6syl
	wbB4eGjwoYoSukwVlJM5kwjl29nms1j1Juji0Etmu8khUzR8YHTeOnsjwfhimvgjn
X-Gm-Gg: ASbGncuFG42De9khZnJNfjOKLkSDt+vAo03SHPeTotrT+k/eFNtpiDNc4GX5S3J8kSc
	LR0Bn/mi5Vm5pymJ2aL1jXYwM/U2vgK15J056RS0aYV2AAxak5OC4H8eOHmtN2+pUSuZIF9/JZs
	BLfwp8eSoA4uvJgguamq1cIasiQImmThcIYFrxOCNPGEYDKnBuGdTuG1Yba6I+qgzAsgYaIlWrS
	Df1Ux0aXCfohPTjZmPdICQ+YI5/Io1UpPRspEsgN/l8SKY/FtZ8r2ge3ncp1bBcIuIIWU+h+EFB
	yTboHmX0OCkmSPoOo+ZkSCDpPkC1uKZNRgSJPuQcpeZCCgpjc3Z2dc8cMuLJLkgN5g==
X-Received: by 2002:ac8:7f4c:0:b0:494:b722:141a with SMTP id d75a77b69052e-49f47cf0bd0mr71401461cf.13.1748345116962;
        Tue, 27 May 2025 04:25:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2ruzyLpYqP3ZgSZCU5zmljRjhSOppccrtHdLEaHwolv/pBEbpZ1ykF4CBKUG18Jhw4r79wA==
X-Received: by 2002:ac8:7f4c:0:b0:494:b722:141a with SMTP id d75a77b69052e-49f47cf0bd0mr71401291cf.13.1748345116568;
        Tue, 27 May 2025 04:25:16 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60461463b01sm3971225a12.27.2025.05.27.04.25.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 04:25:16 -0700 (PDT)
Message-ID: <673898ed-bc6b-46cc-bc60-aece7c6bde59@oss.qualcomm.com>
Date: Tue, 27 May 2025 13:25:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: qcom: Add support for X1E80100 Dell
 Latitude 7455
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250525095341.12462-2-val@packett.cool>
 <20250525095341.12462-4-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250525095341.12462-4-val@packett.cool>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: qAA5tRdLqtrpXO_Xe3ANvGHlWpf5H5jx
X-Authority-Analysis: v=2.4 cv=E9nNpbdl c=1 sm=1 tr=0 ts=6835a11d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=vswN9AVew7ZQbwbRgEAA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA5MiBTYWx0ZWRfX6QDX5Wu6Dp89
 mnVsJlN6dI191cmF/Kjp7DKdzVOaoSCJvaNzEGG2vUp9uOavhCmaPv5IooPF/xUPEZTe/AvZn5g
 V9/nC5aJ9AYF9cr7QSHTlnT7wl9XDu+4l/zchPwKqLJsA/om2nWWzQe0wGqhr4H8ZOQhtyFk1+R
 8yHgu+mNIkKb/8YvlwKWJ7HHsQzAknunL4oOdZ+jp5JNtsQqRAE2KwIJHZBu66420/o5VU0tQvU
 4ZoClW6bl6HwgkZ1immojUr7Wav+6uJOyYN2xfkyF7aHEeT5x7fGF257eSkCaPp/42mjYrcfmOf
 xk7xFU3eeWS8SN2gT+f74R+fsRE5bFV7D/2haj9IHtKmDnrWD1cLQkDICyDhuf7wHlt9j+DHahc
 u/LdaZxRkUx5OdV9U6wNw89ZB7LaACBbekhncm5TNbg3m2OSGSNMxfMZ4kdnKwKSi04szcUW
X-Proofpoint-ORIG-GUID: qAA5tRdLqtrpXO_Xe3ANvGHlWpf5H5jx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=954 spamscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270092

On 5/25/25 11:53 AM, Val Packett wrote:
> Add a device tree for the Dell Latitude 7455 (X Elite) laptop.
> 
> Working:
> - Wi-Fi (WCN7850 hw2.0)
> - Bluetooth
> - USB Type-C x2 (with DP alt mode)
> - USB Type-A
> - USB Fingerprint reader
> - eDP Display (with brightness)
> - NVMe
> - SDHC (microSD slot)
> - Keyboard
> - Touchpad
> - Touchscreen
> - Battery
> 
> Not included:
> - Audio
> - Camera
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---

[...]

> +&i2c3 {
> +	clock-frequency = <400000>;
> +
> +	status = "okay";
> +
> +	typec-mux@8 {
> +		compatible = "parade,ps8830";

I'd assume these are ps8833 instead, IIRC there's a pair of ID registers

[...]

> +&sdhc_2 {
> +	cd-gpios = <&tlmm 71 GPIO_ACTIVE_LOW>;
> +	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
> +	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
> +	pinctrl-names = "default", "sleep";
> +	vmmc-supply = <&vreg_l9b_2p9>;
> +	vqmmc-supply = <&vreg_l6b_1p8>;
> +	bus-width = <4>;
> +	no-sdio;
> +	no-mmc;
> +	status = "okay";

A consistent \n before 'status' would be appreciated

Konrad

