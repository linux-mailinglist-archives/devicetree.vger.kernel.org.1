Return-Path: <devicetree+bounces-125738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD0B9DF14D
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 15:51:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AD298B210A2
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 14:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43BA719C575;
	Sat, 30 Nov 2024 14:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d5veZu+6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FEA146A68
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732978259; cv=none; b=kcbn5q+z/bSPsU/iEpU6VFs1l6pQs0sgzuTOwft6Wq3jUbr2OudU5Pdw9nXx1NDsL/woIF3SkZAWIihCcqNtgCcr9qP8QWo2lTQ2lK+OJ9yxm69OXNAuEC2RcX8fHCMW7K+U7Jj6DuxhH6UcIs3efb2xZMbyLhnbkW4dGiFv7KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732978259; c=relaxed/simple;
	bh=g/hrGFzEV/Dkzl6O8E46iJp4OFRWCk0AzJevr5dw2rI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zo6sNntmhFLESiWtLtSFDjtjRy1e9x89CK6qHdElPYN6SMrZ4ZVST6UXT20aCo+qhv/LXZujDq03H17j0prvYL7dnb+ibxwiQAKEqEyKlRF7/f283KVf6HY/6OL/QCed/pK6UhoUqDC4IWd5cYN7y/bGJrDHypx/Z0/Bwj8wG6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d5veZu+6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AUDPst5024109
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:50:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lbkawYJKZ0W65LLkx/SxJZ94dz9Mg7lmfego3SiyG2s=; b=d5veZu+6iqukvNmO
	sHlsXqz9dKZrgJ6tnfP4YuH71PuRtn/DdopNNXACateNM35QsCUq9T0Zx94svX/u
	egwCnYoGITUBLYi7ZY9hY5MHGBQ1aNwZzXT/HMJOTKu7/613KIJn5y1q+B51KZ72
	eV7jHnm5c//MiCvX9ZjMMUkyWkFMmhE/tG10he1LO5jjuOPemDPlvKpBG6pd4dwk
	/wKkptgsU4jjsGBtq3NptiAK4D3+l4gaX6QdSxtMZLrMn2pDKmWNS9b2We5LJdEI
	iFLhblWuHasln9U0Fwitczh4A0ac9zhOQ4KdOsIHgahiEsZN1jTqIFu9s/rZ58Yg
	qBEq4w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437r2ms3nk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:50:56 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-466d3ec228bso2403921cf.2
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 06:50:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732978256; x=1733583056;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lbkawYJKZ0W65LLkx/SxJZ94dz9Mg7lmfego3SiyG2s=;
        b=mVAVd0CRG0XFgFiL228HcqzpEucaUFsQr7akr/s2gdxqa/mGVi7R2n/5BsMiM9RYlH
         am2HQqIfDi+gJ/5MpiACo/aF5SgM9UlOx7YeVcbjRCsDop/395PjcrNPkFDjXf517c+E
         iFRTc+/JGynSGMurfFjkmHkJVZqAYNcIgCUANm9HVHIIu/anhxlcuZ+V6q6RwFxbrGVg
         +j3kXs+7hvJFM/zwsLYM+wKfClqHc0SGmiWITjKJ7fcomjdyza/PPw2J0+fOZwUDkDjp
         FTTOKK0UdJDdZbkhSnAMfgu8n1+zMaAMLKShpkJdhfeEhfAXA5bVn59yyxh3EFQLUvSk
         ZH7w==
X-Forwarded-Encrypted: i=1; AJvYcCV82Egl1LjeA1dSTDvU8mWSh1iVGkC2uR0bNH2gshHXU2/YPZTN2+oacVcCktMLckpPZsdes30bTrYo@vger.kernel.org
X-Gm-Message-State: AOJu0YxRoCm9z0vUKNZF3H4rp/ebBTNDMa5OP9KCT8hSh2J8yhgGmOx1
	Nh0SQOHkx62b88tHmlOjjx9YypU5cw7FA/qCRJmNwig1UruEYFnRCE744XPo2ZPYsyIjyhnCVXR
	ah8UK3k91RyaZjQ+USerKVGho+7ZL9BJvDkdB07VE2RWl/4wJlpYIv/f/EPaU
X-Gm-Gg: ASbGncu57g1h7Y41t3TvSOU4Ponn58lOo6m5dpi2vJyHnClIs0AnLYKdjrj75HtoB5Q
	v2j9kicZXaXcVaHefGWkAx9+KUiTWPcCo+aSMyF8wOfr3Olsppipup2vk3c0Jlg/cz0WwH+MVer
	LgSpA63je8u/5rGcQuuRGxk8OwP9MzcaQn0iZdI0KlC5cigqPiURIVynOCqW+VK1LTLNBS0hpQz
	+hkk8C5uAmlqsumQmYExzL6hSF3a5E+EDHFADju3DS/rVK29xeqKgB/BrZnGjmEPhAxTzSq4Zp+
	wCdIpex1MdKZhToxGSM6TbibOzUNgPg=
X-Received: by 2002:a05:620a:4453:b0:7b1:4920:8006 with SMTP id af79cd13be357-7b67c443d8amr727911285a.11.1732978255812;
        Sat, 30 Nov 2024 06:50:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFiB4DUXKdpTA1uG8iXDBUJCIlpV7Th0TiVQZnAUloKHKxBxGs8xM7J9+ZZPoDXrlla79sa2Q==
X-Received: by 2002:a05:620a:4453:b0:7b1:4920:8006 with SMTP id af79cd13be357-7b67c443d8amr727909985a.11.1732978255388;
        Sat, 30 Nov 2024 06:50:55 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d097ebb778sm2986267a12.85.2024.11.30.06.50.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 06:50:54 -0800 (PST)
Message-ID: <8f7c8c5d-6637-43b1-b8ba-1616e4db949f@oss.qualcomm.com>
Date: Sat, 30 Nov 2024 15:50:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] arm64: dts: qcom: ipq6018: move mp5496 regulator
 out of soc dtsi
To: Chukun Pan <amadeus@jmu.edu.cn>, Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20241110140019.3426181-1-amadeus@jmu.edu.cn>
 <20241110140019.3426181-4-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241110140019.3426181-4-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: usfyQzLSag_TuQEzF6B6miu_U2Zfvbwd
X-Proofpoint-GUID: usfyQzLSag_TuQEzF6B6miu_U2Zfvbwd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=890 clxscore=1015 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411300122

On 10.11.2024 3:00 PM, Chukun Pan wrote:
> Some IPQ60xx SoCs don't come with the mp5496 pmic chip. The mp5496
> pmic was never part of the IPQ60xx SoC, it's optional, so we moved
> it out of the soc dtsi.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts |  2 +-
>  arch/arm64/boot/dts/qcom/ipq6018-mp5496.dtsi | 35 ++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/ipq6018.dtsi        | 14 --------
>  3 files changed, 36 insertions(+), 15 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/ipq6018-mp5496.dtsi
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts b/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
> index f5f4827c0e17..9c69d3027b43 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
> @@ -7,7 +7,7 @@
>  
>  /dts-v1/;
>  
> -#include "ipq6018.dtsi"
> +#include "ipq6018-mp5496.dtsi"
>  
>  / {
>  	model = "Qualcomm Technologies, Inc. IPQ6018/AP-CP01-C1";
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018-mp5496.dtsi b/arch/arm64/boot/dts/qcom/ipq6018-mp5496.dtsi
> new file mode 100644
> index 000000000000..fe2152df69f4
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/ipq6018-mp5496.dtsi
> @@ -0,0 +1,35 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * ipq6018-mp5496.dtsi describes common properties (e.g. regulators) that
> + * apply to most devices that make use of the IPQ6018 SoC and MP5496 PMIC.
> + */

It's good to retain the copyright notices if you extract data out a file

lgtm otherwise

Konrad

