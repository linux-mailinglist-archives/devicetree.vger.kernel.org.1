Return-Path: <devicetree+bounces-132873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 904FA9F8612
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:40:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C578316CA30
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 046571BEF6F;
	Thu, 19 Dec 2024 20:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jMTAk0Ev"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DDB019F13B
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734640814; cv=none; b=rynBXqJkKlByr/i9WIcMPSR6SfOlVk+hQ+bC0Lmn7mnB8N8Ge1kcUh8Qz4ulSNYJdCOl4fSG5T7RMTnT2A7IH5iLkXgdWOwZKCHtUCrgNLx8nLElg2o+u2qtjUvp+A/C7l7I4X4TiK1ZERHLkl9ynOAAisNRxjzWKfVOBsn8Vwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734640814; c=relaxed/simple;
	bh=oXoKgxgpqOwW1DspA9ni539p070dODkQb2hZMPHMNGM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e5kSBV0fC/+ITJqyXn2aVMaiClpmkTU542Poi280DSnxZbkrvJH6dFhceDzyw6M+7Wmco8o9AsTAqEN/BjHUCPB/W/65VLy93Z/H2wINKtm1PTxUxklDpcbRXfQRSw9mjtZM6/X1HfqkoO5MxlOK4jw4hwErgW98VkiBZj7ousg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jMTAk0Ev; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJIxRpg000422
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:40:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p5NWRIQfeR5uRYlt7SIJyR/Ac7CiT7vLsI21kdeQ2RI=; b=jMTAk0Evpjj7SyEp
	/C87zx1VbQaWog4Nj0O0+VQnHDC+mmIE2l0gsvs8vNxy2ClYTr7QeK5IiU6IVvU4
	9YPxlXfSW6ZHi7k2rjvxfiHHPcrEKb7CUbYUgGP/B+LHHbhi+11er5AwBGWyS6Wc
	5Gy0y3quv8jhxcrR/iivQ0df4qUNmRa1/0yrn2K+7+ZqVMgsYfGgxMKO7jDcACB/
	AikZ7UGW04bHfUwi/2SvTurfieFRgdsQZEvt/LpzaeJiI6dqNLHqQAhiv/OQUNDg
	X+0Ah9BZhwwV2EejH1UqUMEF/tWW8GYtgjzVW+G9Rj1vc0YtPZ9tB4oDiCfReTFF
	SHd11g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mg98stap-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:40:12 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d88fe63f21so2785996d6.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 12:40:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734640811; x=1735245611;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p5NWRIQfeR5uRYlt7SIJyR/Ac7CiT7vLsI21kdeQ2RI=;
        b=FFxHTUrUJwhT7Lb1qrsnmHvWVrhd3F2ZrhplPTVRrEhnLv+msvmxIz1yp8FLS3rzSD
         WJSWMGO7T843S4X5uJ0g3b5IIH1KINsIgrswLt/IE2XDsUcnp8/UoHNsf0i9LqEpAPPK
         q/IUXUDA/1b4lchW87ltdQABnROlMtxI9ioxRJ9pHE0FZ0IfemPH6ZRsqtOIb7pSvYxl
         byUANBb7W2jSiZhYs1ztOUHW9FqOkJGK/AHO+MqYnw8Q0PGmFl6wvM+50EZUyaDAHeTV
         mZZRp7PYVScsIWhy7Xj0n6+oXiOZ4pmZyEbtrWRgdXSC7N+5t/UIG5WDqYSSLe10BANz
         B+SQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4CAe/kKr0R1TE4RcIMRTzt0iQa8iYY6+Vsy7/d3hoS4vC8RJJiMPgkCmZG5f5xXg5Fq9FfmnIsAqA@vger.kernel.org
X-Gm-Message-State: AOJu0YzrZxeEehSDEqONk3/+/qmEPymRCZT6u+eZDnervpBNwezYRHI/
	4aglUZ3a7WmsYcRs8kUQatDWXBz4bAIOhpQGzOfGMYJ16slkCZAfffCv1ZhZVn6EEj0kwg7u5ua
	VU+JFm7ZqVtS9qRMqDdBbDn/YqD+I8f1zuTZ9yjb+a+6vDQ/GfdOKjdXuLUVV
X-Gm-Gg: ASbGncu5IdvbpsFMRt3wQWidrPnHCbYac5J8Eagcum5e75lXyyQgIBfb3GTMzKXajb6
	yESOYQfsKQfOuAKhb5OJJ+RxHUmKrU51YEz6c8K8EljjrDb4Uy6j2WH161E6MoySSQ/tdVrKYUU
	PGsREtTcTn5AWQ+oyRu1cg9V2W6orggzQDu2oqKq/APOq+CU/tto1g7bJ3Yc7v+yHwuaEiC/I/M
	0goO9kH6IlG5r7MGMrCIrgwyib7bvMDgYQMsxoArPnMQI+hjxOyV43SOR8sHVsJ0fgbddxy7NTW
	xdb9XETP0XHrzxDVxJYPX+/fOnJ55h+XmEk=
X-Received: by 2002:a05:620a:2454:b0:7b6:c8a4:ba09 with SMTP id af79cd13be357-7b9ba7be496mr16115085a.9.1734640811336;
        Thu, 19 Dec 2024 12:40:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IECbXaSdAF5+fSjgcoJAnwOWsONIWCmKaulWyJL9LxVnAm0NaXEpeGr3VOpWbCwFT0KYhm+Xg==
X-Received: by 2002:a05:620a:2454:b0:7b6:c8a4:ba09 with SMTP id af79cd13be357-7b9ba7be496mr16111285a.9.1734640810912;
        Thu, 19 Dec 2024 12:40:10 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e894d8csm101230966b.53.2024.12.19.12.40.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 12:40:10 -0800 (PST)
Message-ID: <d3428aa0-c662-4e16-9675-18f53a7fbd73@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 21:40:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: x1e80100-hp-x14: dt for HP
 Omnibook X Laptop 14
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Kalle Valo <kvalo@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241202-hp-omnibook-x14-v3-0-0fcd96483723@oldschoolsolutions.biz>
 <20241202-hp-omnibook-x14-v3-3-0fcd96483723@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241202-hp-omnibook-x14-v3-3-0fcd96483723@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: D400dCfNyyYT1iQQlp3p7HmEuboe4Tn8
X-Proofpoint-GUID: D400dCfNyyYT1iQQlp3p7HmEuboe4Tn8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 mlxlogscore=746
 clxscore=1015 adultscore=0 spamscore=0 phishscore=0 priorityscore=1501
 mlxscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412190163

On 2.12.2024 8:41 PM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> Introduce device tree for the HP Omnibook X Laptop 14-fe0750ng
> (hp-omnibook-x14). It is a Laptop based on the Qualcomm Snapdragon
> X Elite SoC. There seem to be other SKUs, some with Wifi-7 (WCN7850)
> instead of Wifi-6E (WCN6855). This dt explicitly supports WCN6855,
> I haven't found a good way yet to describe both.
> 
> PDF link: https://www8.hp.com/h20195/V2/GetPDF.aspx/c08989140
> 
> Supported features:
> 
> - Keyboard (no function keys though)
> - Display
> - PWM brightness control (works via brightnessctl)
> - Touchpad
> - Touchscreen
> - PCIe ports (pcie4, pcie6a)
> - USB type-c, type-a
> - WCN6855 Wifi-6E
> - WCN6855 Bluetooth
> - ADSP and CDSP
> - X1 GPU
> - GPIO Keys (Lid switch)
> - Audio definition (works via USB)
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

