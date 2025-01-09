Return-Path: <devicetree+bounces-137143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45285A07960
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 15:37:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B1B71683FF
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DB9B21B910;
	Thu,  9 Jan 2025 14:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CSnoYSZD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F72B21B19F
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 14:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736433445; cv=none; b=NiWRgjvh411a1jx7M+T16OQJxARy3iA7MdwP8YXnwUk+7ry+psKjC8WIeRVhOEKFouqernxoxAwoB/9WF6P/MUDNhwB3wpxtFmS+WUmCVPAh1RVF7PTprtzyx50YgpBSeTMO1qGJxpE/jWCnnr1LrXcApNry8msNLrfZd7wttAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736433445; c=relaxed/simple;
	bh=O0WMCuKaeCo18+EWld3efByDAsM1DMJMAJMmSP+RRC0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r/xrEMDiRwh7LR6bxU5JSPW2jvdTfHH2wqJbkAfA/9hIyhdDpn7H08u/sDjAEOEX82Zrs/gNIiUs2IT9w6UHNQmhfZG7v+tYHi/QcHkFPZ9TZrLingl7p/wn/H6Xfef2rBQhEIiV0CwuvIse+9wzgCFazbogtau/llYInZZAbhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CSnoYSZD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 509E7ZNm006671
	for <devicetree@vger.kernel.org>; Thu, 9 Jan 2025 14:37:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OXTAvWWJZJ1SEqZQJIZWExX9jqYfwbakZA0U9QC2/mw=; b=CSnoYSZDSEOZCWd5
	II3gvxjbwNvbwYGvByxrZUhbA6eBuHETBhl/vB6Ft60IdcFsNZYHe19FSjJed1/D
	3ma1vfohE/eQ5leh49dFVIKvhwoMswTqrwvS12o2RLd1RGqFzSQW6YPJATVzaHgp
	WV/F3W5S5YNWgja51JAiUFsr3LNLwY1bKfLFUN5CK1VIPPoe9hyTHOyn+tHNFgo4
	vAoCCU3ubNvQCB684udiUmJ+Oh+4sotX6Kt9mNs9zuTtpe/mjU5GtD5dst1owZU6
	CUtDX0ga6M6kTysLP8pXUqGN1ZX21RIVy+xBB+jQUYJYtsStyOI+mP8l8c+S1fn+
	QWIAOw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442fxs029k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 14:37:22 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467922cf961so814091cf.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 06:37:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736433441; x=1737038241;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OXTAvWWJZJ1SEqZQJIZWExX9jqYfwbakZA0U9QC2/mw=;
        b=kFuC7spETF02TcEXC7cPHLHU0QGMX5xK+WJg18JhjHfX7/z7Czff8bqM3CaY8IUVog
         ETbIlM/SP0nATv0Y0ssuv5hgDJac0vg7Joz55kBVyQMkNxZXsRYI998sbIrxJ7ODymga
         IB5ymQ9LFPJY1pkV3CnjH0dnC2HtAbTaqVNSuBae+mTuJocom6bgG6mK4tbLmdND3n6z
         Ht8Sbk04f+FXhybnNKvrznAJ8zlGOxDAS5gE5n3w8jjUNGPb6N99EVYrMB7WjoIJwD41
         cxu/1nYf66+e7I0FBvQGzbLmFnNGj1SS8Uy6DPYq2Hbikhb+uBU6CrdboB5DH1eZGvxC
         whRA==
X-Gm-Message-State: AOJu0Yxu+nJSm0cpf4x1tmOrSxUmUvHfCN3jlbS3dlZ5HKMBGRxR5WYZ
	g1mRof4eO/4akb+BNRmQ3KNMxcMgfoVOcjxvXKF3xO/kmF+j09YTrkJMc4DHv6cp2Ino6VlyA+O
	/qboyruj3OQTyZfzRi3CVNstlrB/0TV+5EvBFsmgi/6KK4bsLqhH1GNkEe8zY
X-Gm-Gg: ASbGncsa68DD6qmtq9BnCckLsCXpkqHjZ0YNSmsAcACaFR6X1qTUKskIDKKa4Nf9th4
	E98NgDgJDqzi5XhYRlorOqnL7JtLt/LhUKy+OUvo/3c1t9e4j42XBaH+fKOHRsccJC4rYUtO5uy
	Amq6TD/ZlVBH+dTzxsYkPc4gkdYM9UOSH/JcB//BLgZXnwRVIazzNGv+ywPYcx78IOk9RRctUNG
	651AA15CdvBo6Q+8OuoWA9PSrXuFKKhBaFb2y0gDaiiFf85ZA9ioB6xgJVwI//RCzZd0MDFAAVZ
	MBFWFIlqlC6WqMzwkjCUuW1BwCyWgjdbzHY=
X-Received: by 2002:a05:622a:1210:b0:467:5eaf:7d22 with SMTP id d75a77b69052e-46c7107d773mr40847451cf.10.1736433441584;
        Thu, 09 Jan 2025 06:37:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGUZYQUve7zJIeK0jKX/0nSErkVBt1y7Exysoxyuwprb0L/l48rtjRcFnYYdZ7KVHC5YjlsVg==
X-Received: by 2002:a05:622a:1210:b0:467:5eaf:7d22 with SMTP id d75a77b69052e-46c7107d773mr40847221cf.10.1736433441218;
        Thu, 09 Jan 2025 06:37:21 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d9903c3333sm688478a12.47.2025.01.09.06.37.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 06:37:20 -0800 (PST)
Message-ID: <e003376b-0560-4d9b-8909-937d70ca9f22@oss.qualcomm.com>
Date: Thu, 9 Jan 2025 15:37:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: gaokun3: Add Embedded Controller
 node
To: Pengyu Luo <mitltlatltl@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-hwmon@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20250105174159.227831-1-mitltlatltl@gmail.com>
 <20250105174159.227831-6-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250105174159.227831-6-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: SDz0APiW9j2jxhm9C2F7pfa2jDuI5eue
X-Proofpoint-ORIG-GUID: SDz0APiW9j2jxhm9C2F7pfa2jDuI5eue
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 mlxlogscore=999 malwarescore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 phishscore=0 mlxscore=0 impostorscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501090117

On 5.01.2025 6:41 PM, Pengyu Luo wrote:
> The Embedded Controller in the Huawei Matebook E Go is accessible on &i2c15
> and provides battery and adapter status, port orientation status, as well
> as HPD event notifications for two USB Type-C port, etc.
> 
> Add the EC to the device tree and describe the relationship among
> the type-c ports, orientation switches and the QMP combo PHY.
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  .../boot/dts/qcom/sc8280xp-huawei-gaokun3.dts | 139 ++++++++++++++++++
>  1 file changed, 139 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dts b/arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dts
> index 09b95f89e..ff5db8f63 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dts
> @@ -28,6 +28,7 @@ / {
>  
>  	aliases {
>  		i2c4 = &i2c4;
> +		i2c15 = &i2c15;
>  		serial1 = &uart2;
>  	};
>  
> @@ -216,6 +217,40 @@ map1 {
>  		};
>  	};
>  
> +	usb0-sbu-mux {
> +			compatible = "pericom,pi3usb102", "gpio-sbu-mux";

Sorry, there's still one too many tabs here and under /usb1-sbu-mux

The rest looks okay though!

Konrad



