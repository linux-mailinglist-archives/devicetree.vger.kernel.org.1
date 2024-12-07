Return-Path: <devicetree+bounces-128197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC819E7FBF
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2024 12:59:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40F2816700F
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2024 11:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78297146A60;
	Sat,  7 Dec 2024 11:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lsjcO5Jg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94E0D1442F6
	for <devicetree@vger.kernel.org>; Sat,  7 Dec 2024 11:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733572760; cv=none; b=cPAiJrNYf2claYK5SKwom6yZnSABlX4dnf7o45Obm5JbmuyMF4wyGMC6gZUv+dseuzQpwNirou1vUaVahjOqCSkZyJ9INxmt34FQax9cAY3iPB4coWzWWJSdkiCK3XHiqaRlQTifVgL0Tj7oQ/JOcY9FsIJON+zZPWxpmN9hpzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733572760; c=relaxed/simple;
	bh=mGZn0CG4Ny68vFgd1+6X3q26cRYW734PaY3Qehg7YCE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZNFupuFHhuUNeGdlLNAoMHpVwGfDb0Y4ghjfLItrcxIenJ/nn/C+0/W0DnBfSQazgVs2s2XSQA66HddB6zXDU1VfIdv2V4tui9K0rtqu4P9px3cyzsqvWxmnelFvVrwVhqvi8rZjNv7t+MhU+nX0bw9i/T1c0/1V0bOYJ993XYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lsjcO5Jg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B7BP126016389
	for <devicetree@vger.kernel.org>; Sat, 7 Dec 2024 11:59:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VGXhR18Fq97qh7TbUSa0kKhL/ZByCAhy9VcD/gJL5ME=; b=lsjcO5JgY9n/l930
	dD5YoEleoZmmaNmxtMyiIQbAl6lMueD0jtsqgwWixSfoa7rqEOUgV6NhrYKz3d9J
	S4Ok3T/JQn+JFXBxw9HXCxHmIZ5Kl38SMgUD+7dMiTAWaqBwLJnzUnoZLQAAHKGg
	Hjv71GKm9lThlvPa5cKpfW3B7RJgzG76JRXrLLrWxRT9j614zUS6GJyMU3kenEgi
	oKCUKxxD1ZTwd2iyoOl5YD74POtXmVq2hMb0eE2N6h0KcnqugC4LKaCgpHCnKVcv
	MFr5Fg6BTP7catpxvb2GjGyYP9f26lQmf7RFEEp21wzO3Sye+1X00AfU9rYVOs7D
	s18E2A==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43cf4e0hc8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 07 Dec 2024 11:59:11 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d887d2f283so7069406d6.0
        for <devicetree@vger.kernel.org>; Sat, 07 Dec 2024 03:59:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733572750; x=1734177550;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VGXhR18Fq97qh7TbUSa0kKhL/ZByCAhy9VcD/gJL5ME=;
        b=M6MiGJ7sVVZaC3p01bbO2eGPmf+aD937rqUcwze1b3Kimz6u/nWsEv3hgmSnrW7IxS
         KWqmSr+dNPHz3/JOYNEOoZoDr5iLhjyj7WzNk8wFdxPsa1VxK24/aCadlrwsRa4X9ZpH
         LgBlZpjio5GK9GFwvwacZc6oVIDXMPbnQDbHFBZwCyg0yxrjKhSEez7FQ+XvhRzdCKAN
         bmCN5UZxU91hR/pOJlkT4nK1Wz3Oc+Ko8vao1JFi6zV6mxbrywSaLLi+w5ymzL+Xmpjo
         22CJkQLxm5vO7iMwfqWpEzPdNJtRuQUe7W6A5w4+p2/6MPkZg+yDURyP9zG3/9VSw73A
         4Wmw==
X-Forwarded-Encrypted: i=1; AJvYcCUAPF3ylqyycgMobwW+GyorhrY7Bpqz3g/XiQBkyGqRxublt0R5RH4nctifvNoxgWOoAfgbwZ+56r25@vger.kernel.org
X-Gm-Message-State: AOJu0YzlJ4ovUJvRQqrWmx3mudj6BctR9O2A3XF3IR0WVHTiLXE9lGih
	2737RIOp1gBDQDB9vvkB8rTVCsW+m4R7q5vwpJ78Fy+U+3PDZy+eBLN+wYwV085NMMp2erxCO2m
	wwVqM8kIcClxg0aQM97Hafpm8h6FbbiBO+JplfQ4gIpvWPmbO9fx9PjSEOYtb
X-Gm-Gg: ASbGncvuhCJB6zn7QYIYkOPY1VUzUUVJZdW+HBC8Pik1D4Lz9ZUKPZHUTDu7FT6MACz
	2guBLffEz+99trbNhENXZ69eezJhCrQVt7fDPj756Rrn0YPfrcybtbxAhfEBLpJCBJH3ZeI+pVk
	8P5EjGnkGDMikUoBgE+bCRhtnt5QsS2jxm457SAxFcc+IUv1gFjrHpUTVRy2StojQBqvBxT67SD
	SC4+tpyUyTnh1jXDTfL8wHWC0XzFvmMVO2YoU6gVFuSPdPJIV7JjvuVkJX2vJYIjv0317R/ZKSD
	y93ignyk+D0fHonVd0GNALj9ZUl3Z8g=
X-Received: by 2002:ac8:578d:0:b0:463:5391:de49 with SMTP id d75a77b69052e-46734fa37b7mr39903431cf.11.1733572749816;
        Sat, 07 Dec 2024 03:59:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGPlffbEBpmwwLn07e4NjXlSpPb++V4AbkGPE+RE6e5rhThB9Z+v/f84NfUnlbSCUlfPWRp0Q==
X-Received: by 2002:ac8:578d:0:b0:463:5391:de49 with SMTP id d75a77b69052e-46734fa37b7mr39903151cf.11.1733572749290;
        Sat, 07 Dec 2024 03:59:09 -0800 (PST)
Received: from [192.168.212.163] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e96aabsm381402266b.63.2024.12.07.03.59.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Dec 2024 03:59:08 -0800 (PST)
Message-ID: <b5400627-6359-4dfc-abb2-2c142217a28b@oss.qualcomm.com>
Date: Sat, 7 Dec 2024 12:59:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: x1e80100: Add CCI definitions
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-clk@vger.kernel.org
References: <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-0-54075d75f654@linaro.org>
 <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-5-54075d75f654@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-5-54075d75f654@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: _wSGToMh4FgluwebDnpio8P0OVeHcmMp
X-Proofpoint-ORIG-GUID: _wSGToMh4FgluwebDnpio8P0OVeHcmMp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 mlxlogscore=999 clxscore=1015 impostorscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 adultscore=0 phishscore=0
 bulkscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412070100

On 19.11.2024 2:10 PM, Bryan O'Donoghue wrote:
> Add in 2 CCI busses. One bus has two CCI bus master pinouts:
> cci_i2c_scl0 = gpio101
> cci_i2c_sda0 = gpio102
> cci_i2c_scl1 = gpio103
> cci_i2c_sda1 = gpio104
> 
> A second bus has a single CCI bus master pinout:
> cci_i2c_scl2 = gpio105
> cci_i2c_sda2 = gpio106
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 162 +++++++++++++++++++++++++++++++++
>  1 file changed, 162 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 5119cf64b461eb517e9306869ad0ec1b2cae629e..c19754fdc7e0fa4f674ce19f813db77fe2615cf3 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -4648,6 +4648,88 @@ usb_1_ss1_dwc3_ss: endpoint {
>  			};
>  		};
>  
> +		cci0: cci@ac15000 {

[...]

> +			cci0_default: cci0-default-state {
> +				cci0_i2c0_default: cci0-i2c0-default-pins {
> +					/* cci_i2c_sda0, cci_i2c_scl0 */
> +					pins = "gpio101", "gpio102";
> +					function = "cci_i2c";
> +
> +					bias-pull-up;
> +					drive-strength = <2>; /* 2 mA */
> +				};

Please match the style of other nodes (flip drive-strength and bias, remove
the newline and remove the mA comment)

Otherwise looks good and I can attest to this working, as the sensor on the
SL7 happily talks back

Konrad

