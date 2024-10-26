Return-Path: <devicetree+bounces-115933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F9B9B16F9
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 12:21:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E32651F2244B
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 10:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04ACD1C3301;
	Sat, 26 Oct 2024 10:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JylniRDk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548611632F1
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 10:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729938090; cv=none; b=TVqKoqixV1Dg9SO+EDEBe9uqlGOnAWcfyWvrOF2eRwOXnITpFggH2glnKBqzASlDZcXoN+2uHJ6s5rFn0NtOS6OkEg8sxPrelk2s0awct9MwE9SMh2KKBMf8rIlVg8/iyNqSStil1ViIRMQrLeJkA/FJX9Ez7fX6j5kjbunW9FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729938090; c=relaxed/simple;
	bh=Yfv740UWa7gKMwYxENKZmjKVAKKyKevu6Hk6c3n5T1s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JuCDLWkiyR3t/NOy3Kdizw0ViC7naZkNWyLCDo5WWion8NqPhMc2tTN3ZD+lNK/s4tmIKDNYEohcGe5LNdi+LtipCX5jhk7JYmAQOT1ldj4H558PkmfY7LoVxrZ55AyiaJNQaeoAj0qodYnTAnUWscGfo84oHDYaqZRAeR2h77k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JylniRDk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49Q4sEmL013244
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 10:21:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tomHv3cJoWMXpia9so1GTrTz4n+3J9UrFVaAhauD8SU=; b=JylniRDkHWDJ79cq
	HF3Ifs6T5/VJmacRlfQlOVTRlZ+Y2yREt+aWjXe3PphhYjUFys0wV3TgEIrdfIqp
	CtPk+zK3chJUZ7dHmdcNLmb7GPHqG80sKrD/VVqrxlNO151SZ1FQUmBNWJzOeS9i
	loHio2djJqb66Ad2yO8WIVoG2uUVwI0whzDbSajIVv2J9DFuDMAoEHteXmL/gO2L
	sK//6mMiids8Jph5Jgu4+ksE+dR2yuE9QqKe90Am+g5F6yCJRcGxDC8jJPhD68GE
	26LpPTPicrAueS/0pyYAA7fUvAPfPG/AFcFH3q2EtXI7NxCEqTTMkUcy9dyqAe3B
	HPQ+5w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42gskjrn1b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 10:21:28 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6cbf2a4afcfso4983266d6.2
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 03:21:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729938087; x=1730542887;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tomHv3cJoWMXpia9so1GTrTz4n+3J9UrFVaAhauD8SU=;
        b=B6QlmSW3iFSfdGU2Y+vw0+z7OLPqUJ5sOiO7m8y3t1nwKvZs/i+6PjvfkcBaBmqZXg
         VsxkxZV5KMbXTZFbUncqMRxdtn1kwuKRxUMHbH/jkevehCL6Pa4riS3pi0d1hyT7n061
         Ul8IVg02H6AkwCvDe280CVchQpLf8w5VRxoWhNyO3Oj3YM7KbiR71LxbmDyh69toAeJ1
         +aGrhShstfcYso3tA4Jfhz03kZR6iLqsY+kXuBxjGHI2PzdJgWqLBN74HeqQfASzzKUY
         zP/7mF7nbr54DsWdx0B0F4iL32CbhtaGGmycYGomwAKxTP5ED43nOv5WpjV1w4t3wuIX
         ZmqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBj5IT+aDeS6sm0QRXXAAtMTX1I+xWNvS8e3V/AODUaMzLsZ7K6gezjADVa6UAQTD3uvxLtegV+gGB@vger.kernel.org
X-Gm-Message-State: AOJu0YxZpXVyMb6+9x5fb86J5tcrXYDnemzcCZrIk9rbkGOXh/3lLp+g
	Ghpgt2rYAWAxlWd38cMdzDmR7Grnu2J2jsbUsxDM6AeN90NInsK1gmdFYp4I8QQwIT++IanwqtX
	6yCUBWVShJB7ohc5OzqmDSZQOVmXJrc42sT+wmsWXPqCgkPtZZ1Dnfihxws+R
X-Received: by 2002:a05:6214:1d22:b0:6cb:4fad:5215 with SMTP id 6a1803df08f44-6d1856b77f1mr16856156d6.2.1729938087185;
        Sat, 26 Oct 2024 03:21:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG65NdIbQ/VjPecB5n7Ai20nBIwQ+01iCan0idA4LU5MQ0AXhGikPTHqFdB6SgkeKSGEIPQxw==
X-Received: by 2002:a05:6214:1d22:b0:6cb:4fad:5215 with SMTP id 6a1803df08f44-6d1856b77f1mr16855996d6.2.1729938086783;
        Sat, 26 Oct 2024 03:21:26 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1dec8180sm159285066b.22.2024.10.26.03.21.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2024 03:21:26 -0700 (PDT)
Message-ID: <f3378e6c-732b-4be7-98e1-3ecb80e6f45a@oss.qualcomm.com>
Date: Sat, 26 Oct 2024 12:21:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 05/12] arm64: dts: qcom: sdm845-starqltechn: remove
 excess reserved gpios
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241008-starqltechn_integration_upstream-v6-0-5445365d3052@gmail.com>
 <20241008-starqltechn_integration_upstream-v6-5-5445365d3052@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241008-starqltechn_integration_upstream-v6-5-5445365d3052@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: fNjt3rTnf-sL62ssbB99HAe6DZNH3ZSX
X-Proofpoint-ORIG-GUID: fNjt3rTnf-sL62ssbB99HAe6DZNH3ZSX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 impostorscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 mlxlogscore=780 bulkscore=0 mlxscore=0 malwarescore=0 lowpriorityscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410260086

On 8.10.2024 6:51 PM, Dzmitry Sankouski wrote:
> Starqltechn has 2 reserved gpio ranges <27 4>, <85 4>.
> <27 4> is spi for eSE(embedded Secure Element).
> <85 4> is spi for fingerprint.
> 
> Remove excess reserved gpio regions.
> 
> Fixes: d711b22eee55 ("arm64: dts: qcom: starqltechn: add initial device tree for starqltechn")
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> 

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

