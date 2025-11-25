Return-Path: <devicetree+bounces-241968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79218C84C2E
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 12:39:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FEBF3B14D8
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 11:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0346F2EBB84;
	Tue, 25 Nov 2025 11:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fx8z6ymJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EmVUKGSq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AB51487F6
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 11:39:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764070778; cv=none; b=EZhjCEh11c+uAYf7PUJ4Z+p+TAPKHFfic3H7KzjfkbrtndUy6sI+JpkH8DtzI9XiGQwV3wl8cMGNCep0XsEJ5pmIsr41K8Q3qBN/bkahBCKACqTgGD8XNaUSRvvUoHT76Ca6Db1vFFtLx8zXjd78gVXa/isrM6kTQRJM3Ah7MdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764070778; c=relaxed/simple;
	bh=TIvus4qLeYR6ur8gZQ8EVgijdl4O66+zNL0rBfW+NEA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r2y1Z9J8gDCrkTS+oqSpHvdzkVeg3wHOY19YkFNsYnGyOwqEY2wIbaYBTylCaIZKudzyLd2L3SyQb6GFDgjIk4sJQ1x2/Rqrx+FB58LKxvb18qtK1x85gSaR2kSPJWUFtSXgXJoNZHCgeGmIUlwruFyMqJ06/z76zQe0rtuWg2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fx8z6ymJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EmVUKGSq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5APAG4CW1979012
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 11:39:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H0mJEbRIZhEi+mIefD7nUyiiWYldDhethjcYK0qWNCk=; b=fx8z6ymJojlbLJYU
	+N7OcIz64FKlWRydKfMexzKLyGPTn8YyFm1qbQT3Nxh3yqbwPaLM/Iyw1Ol6Vekl
	8NA+LeAyo9pqatlhE7axTYT8rWqEo6fDAr4SHWq6FCD8lFKdOJdqozg5wQpKw4gp
	WoHFCml9ytXzk0eOjutZ35jU5LGXzvNOLoVQCl1OIAmHyl3JwW3ipqV8BtITcWsi
	YO2XkxsRzdbSm95u+nxlaMnET6Aj9A1lSBoz638XW5IC2qtxHj3M/bjDUgQaSV5y
	ksI0U2H6glwuKbkkmgCYsHu/c70i4zFXpZ6EYQmAe1VS9E37SkJ7VmDd1+46Yc79
	vYnvgg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amw9gtffv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 11:39:36 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8adc67e5340so80322585a.2
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 03:39:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764070776; x=1764675576; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H0mJEbRIZhEi+mIefD7nUyiiWYldDhethjcYK0qWNCk=;
        b=EmVUKGSq1rnbY+wqoWnCt3ictpmjIomkXtCEjFyOpf88YkvDifJyFRbJaa7q0tu7Af
         sbD/shbUbvvwPKcgmDsid0TpkGI20QDJaZ9OG8naskoTGVOGiQUmrMvg89E1+Hw6FyBL
         RqVa245i8/8WGWKsIkqnlNnykA/t/NH8GfcqzlGX4rEH2VOsuxM386BYhMigNQjn52H1
         KXqbtbRfOD3ndGnFY/sXug8wX1RKbtBqhBe64hIZewPtZyqCW3MtlupoyT6+s4+hy+KN
         pzsBLJTA+QPY7xJStHCJZI0Rv9qzUTEb9ySLw8xUHs3YPCaQEZRuw8WsIIDz7XLTPN94
         wOog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764070776; x=1764675576;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H0mJEbRIZhEi+mIefD7nUyiiWYldDhethjcYK0qWNCk=;
        b=pey3YjxYoX5YlSBpm3xqfOyJWf4z/Bhp6KRvOBaH/C19WPCXh3bjRhieDBPrFiolMd
         7JwW+75aZG8H2JgwZeVSut5e2kaaLJcl1iPT3XVMiywxyP7WTEJXaIM05Z9790Lu3OYS
         J3z6xsuRer+mUFRhGVw27WE5qtv73TLUXVpVHr3r12volpgoyHOQMqp0ZVTZnWWIEgQX
         FU2J+pwWZYHkmpTNY7ghQGUKkiuSPSfaFx+vl598Q5hxjANajhsku9/0e6/Rm7b8x9nw
         kk46pPc6meH0CtATvNeedNysWCK8zK4upOxS2I3Kp4v3qcUzjjUc/OK6B51V0GV+bGD2
         q94g==
X-Forwarded-Encrypted: i=1; AJvYcCU6hhJ1iE1Ui5fr3HliVma8j9CewCgYFMqPa7+Pr41kKXZH8C5Nokoi+rGtQFr+0UEZ6xnZE7ZQXnDI@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7NqDvTtbO1lrcphZB8xDJ01wMr1KFhaNPYYDGn/HGkThdSjK5
	zXp/YlKJ71Vsp+R1Gy4eTKdTA9I8tO/pkT4njP7I3U5F9mE2V+AeIXwRmVxX59xUfNaubvX6CxI
	2oNtaK9Q296uk0fPhIXQXJ8lbXwT1EzixApWTSZIliDGi9YLYdn/M9BV40bxH4dwl
X-Gm-Gg: ASbGncsed5zSYTOKiINILCC4Z/zkE9OgVsqqbhr6EqosfzJqWbnGrDDjyB65+G6QhHk
	yOZuFkiAteWmgzk+E+sOmKGrYXgNC1yG3R2CPVJWaPxQlJfqz2VDAiXOynaRfgATpJjd9gA6dsE
	xTXx96h+kBq5UddIiAcKRXRxo06s2ah1Ca7w5wZsv3qX+m/AGAw+qdNuFeBwaA7YGmdv5+k9Zd7
	G7ZjMOOtXAmAoxYUQXPrJt+ZaRNQkYAHixBpkWrQPK91oZ/3vveRVGFY3tmOsETaBztf76BI4Pb
	xbP1hBl+NTkmTgQRQYSgkxPBzOi604XQGODX9+8aZMdSPlSnaghqPwXVFl414JPAU8zY+ei1iEX
	1huVUqFGMK2aexYdIMOqsWbYMORV0TLzjyw77HY8aEvZD7EnfRtNpTzsXR9izyl6WLxQ=
X-Received: by 2002:a05:620a:4007:b0:8b2:fea:21ad with SMTP id af79cd13be357-8b33d4a999fmr1417514785a.9.1764070775696;
        Tue, 25 Nov 2025 03:39:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFCzo0WCGR0CTugtyxGSUMJ1i6DuZWHwh9eoGFZ/bneruZmbXg2/dXdzuLYj2oAElRtWJsKlA==
X-Received: by 2002:a05:620a:4007:b0:8b2:fea:21ad with SMTP id af79cd13be357-8b33d4a999fmr1417511885a.9.1764070775136;
        Tue, 25 Nov 2025 03:39:35 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654fd4e6bsm1542414866b.34.2025.11.25.03.39.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 03:39:34 -0800 (PST)
Message-ID: <117f95a4-5f31-4372-a2e2-a0a969dc3d5e@oss.qualcomm.com>
Date: Tue, 25 Nov 2025 12:39:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5] arm64: dts: qcom: lemans-evk: Add OTG support for
 primary USB controller
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251125110420.2192971-1-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251125110420.2192971-1-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDA5NSBTYWx0ZWRfXxj+paksjAjtN
 Qml+5B2ggxyFybaspXqkooF5yzHUFUkpcNKaL2tx+hGOEo4G2sPKlnyKrJwB9LxKgMocmn+jwNf
 PY2IlpLJ1IXTMPLpwSLY6MhKTaTyAs1SSwXshjZQGwzWEEG7g3pS+r8RcbGDG5tExmMyD0EZzP9
 MVylObsQ6IyoYQNQoBqgRo5mU59+z+28YYw2WcylOtCSDxkuNxeeo0oZ0G0niXbTN3flRVpQB1V
 42rB9oDuaiJU5oHDmrXFl85nAYsch1w4Sol7ajecWK816LZcLzpzX06EyNzaBjvLUUkSCQJhQlE
 hGHLFiXkN+IXpeyGqR9zjyVu4w9vektRlfxieZPo7Zqc06tVy4OhNIH0EY7pHITAG7QwgWa5fed
 QGy2RgzFytGM0iffcsezfZ9e9axgiA==
X-Authority-Analysis: v=2.4 cv=H53WAuYi c=1 sm=1 tr=0 ts=69259578 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=O_RjRo1D4uTvDWjpvrcA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 1b-lJCW_ZThK6klXeOEQTTUQI52DLDsA
X-Proofpoint-GUID: 1b-lJCW_ZThK6klXeOEQTTUQI52DLDsA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511250095

On 11/25/25 12:04 PM, Krishna Kurapati wrote:
> Enable OTG support for primary USB controller on EVK Platform. Add
> HD3SS3220 Type-C port controller present between Type-C port and SoC
> that provides role switch notifications to controller.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

[...]

> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -4026,7 +4026,27 @@ usb_0: usb@a600000 {
>  			snps,dis-u1-entry-quirk;
>  			snps,dis-u2-entry-quirk;
>  
> +			usb-role-switch;
>  			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					usb3_0_hs_ep: endpoint {

The patch looks good, but I'm a little puzzled why the endpoints of 'usb_0' are
named 'usb3_0'.. This will make the DTs look like:

&usb_0 {
	// foo
};

&usb_1 {
	// foo
};

// usb_0 children
&usb3_0_hs_ep {
	// foo
};


&usb3_0_ss_ep {
	// foo
};

// usb_1 children
&usb3_1_hs_ep {
	// foo
};

&usb3_1_ss_ep {
	// foo
};

Konrad

