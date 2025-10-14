Return-Path: <devicetree+bounces-226444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC90BD8B15
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:14:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B60004F9A1F
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:14:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA8CB2F9DAE;
	Tue, 14 Oct 2025 10:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gr7KgG+R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CAEE2D2485
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760436888; cv=none; b=Og45EpAS/s2tnw3mZZ0frLwGRmV+QK10jZw7xqPuku4f8OdnLeZ3TCg9bBXCgROzi809kyDxrMyDVJVXGvVXr+DoWk0rp5wQ2efqueruuxFi7ieNKb8rzr+FQ2SJKCPOcqTzAuktw8ogvtATpQ0GDhVHz27gMsMiHyKICtArwXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760436888; c=relaxed/simple;
	bh=FNhAC+DjR1cbFtU/1yTjFgJ+Qyfumds9d7hhs+zZNe0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V83E6ANuJVKqfhNx60fpqGuvQkBcqmKFJoEGSraBl5i47G86xEASvCwZAh+4fCVqj0AR+bRD8cYX+IEihza11nEqlUf8gLk/BhW7GnmfDTXFmDQSctti38zNlpO59V/VK6UYWZ2nRzFOrvJwxa8LltCAceM0asTjQSgqlqWHXW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gr7KgG+R; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87IND001480
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:14:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l9rKwlPsUJdeJAHEExRqTPGByiEiREOtbI0+U/FL4xU=; b=Gr7KgG+R4ls7QgRu
	MkStyMk6EH6BRUMXRLrNj3WVyb8Hv3voLkg/1gAABsLctGUpngdYHX48RfX0p1Lk
	rBHso2QgbVS24u5W9azCRVbe4f2akovVOJPJh3/rgpnIylXww3pZMXmesMEOl2uO
	SAz4dzdB4iHbG4bTFGS0xH9YTrRBvqQbDAfqKuxl4jBnEHChmYGmjbq+vrSaJY4O
	HjxZQTX2BjEmabWWnmJw3eg7ioT4/uPP7fHvCj8oSGBAMDYqPsT5t6ahcDX554LR
	70/EOHMUFrg6Dg386+ECsGq90mQ3mwKP085Japa1nUoRvhwLLHD3fTfiKSJPu1oO
	wOVkXw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfa882v6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:14:46 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-860fe46b4easo290689685a.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 03:14:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760436885; x=1761041685;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l9rKwlPsUJdeJAHEExRqTPGByiEiREOtbI0+U/FL4xU=;
        b=ej3/ocixgO0ox+pB8TR0D1MScwCLR3vWVbXtAj78lAJ2UfX6KGPjJrinThFWQTytQN
         GWTbLcW15dUMXveErSS5f4RgQtH+7CSwTG89k53nfEA+tqc6lfxoIQ8SnMoNxGni1jpQ
         qgeVxwFXnhqW5Z0SirbdTPu2BsDk05wQoKGxKRt+2kSxSPPYaI5G9MmhjzkZFIdWvlFV
         uZJgvD7cf1Zj1F5uAw4G7q24x0ndX/sSvvqR4A81NhvU4cpM4BqGF250zu9SvCWAiVh8
         D0xir2jIxBxssUgbGca0vxjuEkY3lSjNUvVKMw8jiQTiIiGwdbQf6QDdoY0hTPxh0a0p
         /8Rg==
X-Forwarded-Encrypted: i=1; AJvYcCWfyBhn+NnkdUE7YdEWYNMTb6Mk/zU5Ke/D1L/2/mNEo2o8keotmsG9u0F31nLKP8YvgQ2LzCK3/JU/@vger.kernel.org
X-Gm-Message-State: AOJu0Yxljc5tG7gV2bZd3UbWbZk1sEqGi8+rYurXG7qK+tSj5P+e4X0s
	iAHUVWv8dFdrIeXeHBAqJkVnVQFRqVdDOAf9RKHH69PkfkDYWuDkJIGK2bUwCy1LfPVIsFyDaqc
	TKP3v/4tf+PftyQ/jXOleB3bnzhMIQO/kWuCP0W6FasETqjOIEHhRUvyQ+Ly5QI1pQb2TgSDV
X-Gm-Gg: ASbGncsi6XRrHKApI6rtwQ1IDW23ml0qNV5CnbnjspsvdwJQx2ZCWqf+dTbvRTiD0Gb
	wazVVn2SR4EIJg+xz2SL1cyKGF30kkB3OA55+BtIUONuMSKFMw1lENuYXezKIizAQwvWNrN6E4D
	HOkY1Smb/YnMjWFfsuRbff5i+1ZEuXsyE2Eqv+J+FSbWZZQCYtbCzLDNf4UVj0yxYU7E5ljJiAI
	btHO6JFLziLYqvquoWaOozcFWcdhXhP3pW1odXzDHtNwhh3TwxAscEpwG/muIvjp3VxoUQgyDoU
	KysRrpssfzaIkxUMO9MC6QFMnrzlyS6+sbbEaQMXN8Ku6F0d1oSpwtk+6b4VDPIOSVqyxcyiPzg
	CMw7AYMlrOx5IflBPMnRAvQ==
X-Received: by 2002:a05:620a:1a95:b0:842:88b9:7b79 with SMTP id af79cd13be357-88354304c1fmr1910731385a.11.1760436885009;
        Tue, 14 Oct 2025 03:14:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPjPBnmn6mJXqnG6YBQ6APNzkiGyolZ1otTclgS1/6WXpzY/rNUhMQ8GrRNEPU0tzu1IH8SA==
X-Received: by 2002:a05:620a:1a95:b0:842:88b9:7b79 with SMTP id af79cd13be357-88354304c1fmr1910729085a.11.1760436884532;
        Tue, 14 Oct 2025 03:14:44 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d900bf8csm1115262766b.59.2025.10.14.03.14.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 03:14:43 -0700 (PDT)
Message-ID: <7f86be1d-3ab1-4936-856a-3f4e87a0063a@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 12:14:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sm8550: Add description of MCLK
 pins
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251013235500.1883847-1-vladimir.zapolskiy@linaro.org>
 <20251013235500.1883847-2-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251013235500.1883847-2-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: SQ2a5WEwBvFctbIk6Wk24DSI2mgMLKkc
X-Proofpoint-ORIG-GUID: SQ2a5WEwBvFctbIk6Wk24DSI2mgMLKkc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNyBTYWx0ZWRfX5tcLqK8ucVQS
 Fc73891kGq9JQXzGIoy21WssjhqsJvnKKvco+yqouVeKktbjVbdQgCNTft8EnU4DOKoEuGlKMNK
 Q/u/lkKwdPUYA2KUt6lBgURLuJfyEpPGhPwfO50ASBYs/UpmbkIfbL7vK9javcfNeGAuzRV972E
 /q5hUTyls49GJVsXBDwTOwpAQBQfM7BhBnDsi+1QCaB+DwnmTgkhAX3htNS0+HcKAkUJSYs0xg7
 3uut/84It/owYStwSZOOUILVK8pBFgYq+Y0nGXO4P2brY2Q3FPHSeN/at+z7/cXVUqNcZGPi7Eq
 vHlMKx0aueM7rOHT6o1ZqmPxHs/jrQjuEkgnZF+LAh14SPvBzUeVLmGs99zH8ieuCH/thdmRbIp
 t4nwMYebfGiN5UGwfohCh9j2K8sE2g==
X-Authority-Analysis: v=2.4 cv=JLw2csKb c=1 sm=1 tr=0 ts=68ee2296 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=3SXaxz8BPcZ4IL0GYY8A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110017

On 10/14/25 1:54 AM, Vladimir Zapolskiy wrote:
> Add MCLK pin descriptions for all pins with such supported function
> on SM8550 SoC.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

That's a lot of cameras!

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

