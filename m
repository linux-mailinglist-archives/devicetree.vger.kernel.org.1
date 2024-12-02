Return-Path: <devicetree+bounces-126121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E48C9E0560
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:45:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2DACFB3EAAB
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4245A204F98;
	Mon,  2 Dec 2024 14:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="myY+Y8Bf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B8320408E
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733149639; cv=none; b=ia0d/ZACS+A9NP7M25O4Vm6TzGY8IznnNVOKLbbfrCWQxlTuAv3f7eyGKIKKZOHdFM3cLkZ4yGTWd1LyPaKcz4xOHdfDYXteIkI9V+ke+jo5NPMmNqIC9bFcE/SQJwkluaLUchLSf8xpx0WEtXVsyxckK3SkINhoO9R4qe/0sos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733149639; c=relaxed/simple;
	bh=+0lEVZpYuOv7o3FMPc0Pv3lmHWLz3wqPArGyGpNBM20=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MVM9a1f70n2W0wsbd43aba21mB6gJB2T5nCNo5m9peSBgVVvoJvF0USM4OkJLdwLfr6u5+osffFyBsW0Vy/6uofza5mlc4Zn1PBeNwVxlFXTC0XoueSgfpUqcoAGRfIeUv3g9I3cPZECniXLIgsLc5P5iol6HJpH3ACqKaIhMwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=myY+Y8Bf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B28Yxsd013928
	for <devicetree@vger.kernel.org>; Mon, 2 Dec 2024 14:27:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YeWkuqOLf9DYYwHwIizxBSFI7lURFVcVl25PyvH6Ucs=; b=myY+Y8BfM83vi9/6
	KyvIhFydFf27ZZ0D8+FSH1xmDRyfOP5d2itdVgarA0LnYGow2Qa9vMVla2tyX3bk
	I6Npbco5QYdWo/rGV+EG39AjHz468w45/yvPx3fHa9k4vvEOZvAmbWRQyRCOwrk+
	28TZ4qKU8CDgeiOC4Pe8YP0UpDDxkCgSsLT2BSHIWbfyuLylBYPh2XoqPJPv9fKL
	OP7p9NA4MFBcgfIh4EljFLLJ/6NrjIjihjDhoUaZEjUOoYvbfav0FJ37p4RIBLP2
	iGWe5Id3ls7fPSeBGWCxyLJQJWKp0Y/Uru774w6y3wcSxUhhNosQlUxCDBB0AenQ
	M9YiXA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437tstd2qu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 14:27:15 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4668f2d0e50so6396361cf.0
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:27:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733149634; x=1733754434;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YeWkuqOLf9DYYwHwIizxBSFI7lURFVcVl25PyvH6Ucs=;
        b=JboNQn5pQ56mQ18BMNDbO4Q2jKoHIaGM6Z03TnQsdh1xRPvHjIQHFUdLhSRfhSkqM4
         1yeWcFztjEUqpAYN7SV60BbTI9uNDFEYRHTJK6XHKkCwqGJKjiXcKCEAaO90J9pkB4sU
         DTLmQJOrr6FV2nuA0YHHhG1dEbB45U9o+JoxpDG9B4XqzaIBFaXD5jrO7AESgtIzQnL/
         HMItOYkDQn5ajhthepMzGgKugo768kCnjtqhzvyxb+UcqqIg0MEgrfUo31mb/5oRAqa5
         wBJaw4f50wltHiIb72NGV/rYc3/ucull9SwCYX5lWBxC3wvB8zg+TMH00twuezS7JYD4
         q1Bw==
X-Forwarded-Encrypted: i=1; AJvYcCXEnUhNxLmmEZ4N+FpMv9zenQ9chMAg+LLkN+xjgcFPyMXDvBELhdpwMTibjkfQWVGgP924C2pTozpG@vger.kernel.org
X-Gm-Message-State: AOJu0YywaGYmUcmi2VTpK9x74LJxm+MWvqiSfj53Qiyt9Glg1AgpveED
	ExG8OSH3MCf0puf5IGyQVbmsPwW9NrXfaQUdqu5tOZZU+/MJjzaJMNgGBhNKhzewKhNmBEo4Jdw
	CuxwfqrkfAZMZgNDFhKAVoUx8VCzIuWcqxETdP/65fA8454lo1DO9/mu7rpYZ
X-Gm-Gg: ASbGnctEdt3vk7iWYOYd+Jkbk455VokPwujIdSnvxJxHOTX6MSiQCjdUsDpkjOhGjEY
	MB522WIWq5TVdcbso0zEe7FJxi2bdWK3Y1wadjlJ6A/hYLU+8dKAZ2l1Nz5FUx/jDB3c03JmAFN
	20Fyz5TJNi1Nd7PhBM31y8aJXr7YBY5x1/uMZc+mp5hHMAcz16PiUzhNQ/CRHejmYbBhscGpXwE
	zZ2Dd1APL48p55+LRHzlpPnjWwO61+DVlWxwh0uoVsOHBHpBYLZZKkA0ZR+kasC9khPn/2MfaPD
	4gbrVlAcuYpzQ8acIDqtoXtFDcCmrSE=
X-Received: by 2002:a05:622a:60e:b0:466:8c48:7232 with SMTP id d75a77b69052e-466b34b8be0mr143537461cf.1.1733149634258;
        Mon, 02 Dec 2024 06:27:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHbCAAkr1jr6A8ylVsfj4i+aRWKGXXG6vAOJ8y8M6v6CeAJ/2w+sO2qpxpRsd+Y8DVmjmRKuw==
X-Received: by 2002:a05:622a:60e:b0:466:8c48:7232 with SMTP id d75a77b69052e-466b34b8be0mr143537111cf.1.1733149633883;
        Mon, 02 Dec 2024 06:27:13 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa599953c51sm512391466b.179.2024.12.02.06.27.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 06:27:13 -0800 (PST)
Message-ID: <02dd5593-38ba-4344-aa64-0913eca45808@oss.qualcomm.com>
Date: Mon, 2 Dec 2024 15:27:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
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
 <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-4-54075d75f654@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-4-54075d75f654@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: OrnwfXGjCllJnR-BgePpnxX-15kdtKoo
X-Proofpoint-GUID: OrnwfXGjCllJnR-BgePpnxX-15kdtKoo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 impostorscore=0 mlxlogscore=999 mlxscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0 clxscore=1015
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412020124

On 19.11.2024 2:10 PM, Bryan O'Donoghue wrote:
> Add the CAMCC block for x1e80100. The x1e80100 CAMCC block is an iteration
> of previous CAMCC blocks with the exception of having two required
> power-domains not just one.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index c18b99765c25c901b3d0a3fbaddc320c0a8c1716..5119cf64b461eb517e9306869ad0ec1b2cae629e 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -3,6 +3,7 @@
>   * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>  
> +#include <dt-bindings/clock/qcom,x1e80100-camcc.h>
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
>  #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
> @@ -4647,6 +4648,22 @@ usb_1_ss1_dwc3_ss: endpoint {
>  			};
>  		};
>  
> +		camcc: clock-controller@ade0000 {
> +			compatible = "qcom,x1e80100-camcc";
> +			reg = <0 0x0ade0000 0 0x20000>;
> +			clocks = <&gcc GCC_CAMERA_AHB_CLK>,

This clock is not registered with the CCF

Konrad

