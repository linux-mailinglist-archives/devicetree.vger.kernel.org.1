Return-Path: <devicetree+bounces-115818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A389B0BF9
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:42:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C46F4B21E75
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA41B41C69;
	Fri, 25 Oct 2024 17:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KSlBfm+O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1722033A
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729878111; cv=none; b=iWoUJCHocBjrYaE7NeHQsNB1b/OQEyHlR6AaCColNDrX0PxdhpOy8PVXdkq9FZz4Ib0CC8wHYPO3RGfDcDDPugTkwnrJdtSSsKN5n5RQe3de+rB+0J2NNw/SvJRyNKsPkFbD1sFKqep1PUCGQZI0vgqhfyRVN/VeW8/ZFcy5O34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729878111; c=relaxed/simple;
	bh=JFUudwqmv14JueSq6ucl5OfPdZQpWR7y3jLotykLqV8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KZZlGv/u2HwiKg8lmm8e21HFu+8YzXd+0sBNmc2EBQCmkb8FS3v1DxdxeB045p4WpxMwHKUN6dZVn/xZIiBBrVCcqkZiV6LpcQOTlubshAwcDHu1MAK1DrkPPdIoAdrMI9ZmJaoxLS+3I57UC8OAmfhrc5l2jBQqaL2TWa0Cqfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KSlBfm+O; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PB2Ad4001022
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:41:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FHu7Dsvv0DBV1i9mgCw48KlX1tl0tTx9s/NTZdtmkws=; b=KSlBfm+OEuHMMrMA
	aI6TnejfhH2w7Ou7w4JWf4YOVdp6MO7A0/f3ZNoVL+AracM2p1BocSBoQJ7FYiPX
	3Hpw3HHW4GemWzP4aqEl6J/EIqac9unHt5Lrs+CHXw0iyVYTWZb6iwZli9JHcWNu
	m9wygjLS4PlMS2SkEF4SAD4dtMO+tr6Rfi/5YzkeUaBKhLHyneokwpSz+9UUjm/o
	8zNh8nAsjHnrfhY5Z2rFyPF/yB+vbXP8yVgFQWx9T73f06Sv2rzXXrs7pS0OwAPM
	4/l3ymLe+mhfvAzETrpfmvFdse0DlBvp4gdan2j9V2Un53NKa5Y0ii0A9IllqgSr
	5bDhuw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42ga3s17p6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:41:48 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6cda6fd171bso5042076d6.3
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:41:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729878106; x=1730482906;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FHu7Dsvv0DBV1i9mgCw48KlX1tl0tTx9s/NTZdtmkws=;
        b=sjrb2Lh5wKPcGX7kF/zWCKzBg0gR/Kuyv2cAlhDrzN7e+mHHCLasvHF9EFQwEIdf4f
         R2RrdGfE1zNKiDNuOrsw+aXGhqyH0pcBZKf5H5ViUtiX4svEPGzOHHixH9Tuh3Djhjpe
         /bPA9OyOaMb4BDJDrwfXW4ABSEsUKD8GTQRRMQzdMPZsuZoQbndb5m7tc08JTGFdlUvy
         m1DpME4ctQtki3ejEjuu4U7WprNJkWscDFWH28V0iH45s8SXeL2Tm04A2OtYRyBjROJq
         qEGXUessTfOS2zqyVxcu30msLgxQ6NYUca7UE4dGUiiL9V0jsMANV0H4qT01a9TolxBv
         ASKA==
X-Forwarded-Encrypted: i=1; AJvYcCVy9bzUu4zvXW1EYXvRidtg27U27ZVYdFs0hctb1dpTVfuZKOaI+bmetDnu+b4fMaYBG4Ip/xJ0z1Ud@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4fX+7O04LRGe8ia99c3Bn0VCZ4yMUpIamg7TP22ADsQ0qWGA5
	AUdwUq9uy+6z5ED/3iMkWpd2H2Y63cFKbbRiQCUDNv8tYr0atH0ROLMPjOgtTP0IDbf0BXuLx6+
	TShjvYUnl/xBzK+KhevmeJ+s1B90SZ7DfyRj4ywkDU1BLyp8cmfdWfCzyilvq
X-Received: by 2002:ad4:5cc1:0:b0:6cb:4e9f:7370 with SMTP id 6a1803df08f44-6d185862964mr1286656d6.12.1729878106036;
        Fri, 25 Oct 2024 10:41:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhW4SFYE0P93aiXTyZ6Wv8eX/yrl4zliE5iVX82/C3QvC8L++dxHQwOPeBNcTiVrDp7AoBWA==
X-Received: by 2002:ad4:5cc1:0:b0:6cb:4e9f:7370 with SMTP id 6a1803df08f44-6d185862964mr1286446d6.12.1729878105708;
        Fri, 25 Oct 2024 10:41:45 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cbb6347f20sm816629a12.86.2024.10.25.10.41.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 10:41:45 -0700 (PDT)
Message-ID: <8e49de35-59dc-4308-b93a-19791e6b05e2@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 19:41:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] soc: qcom: llcc: Add LLCC configuration for the
 QCS8300 platform
To: Jingyi Wang <quic_jingyw@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: quic_tengfan@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com
References: <20241010-qcs8300_llcc-v2-0-d4123a241db2@quicinc.com>
 <20241010-qcs8300_llcc-v2-2-d4123a241db2@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241010-qcs8300_llcc-v2-2-d4123a241db2@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: q27uFpiYeTwnGbee6-F8GgrWeI952wM_
X-Proofpoint-GUID: q27uFpiYeTwnGbee6-F8GgrWeI952wM_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 mlxscore=0 priorityscore=1501 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410250135

On 10.10.2024 12:08 PM, Jingyi Wang wrote:
> Add LLCC configuration for the QCS8300 platform. There is an errata on
> LB_CNT information on QCS8300 platform, override the value to get the
> right number of banks.
> 
> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
> ---
>  drivers/soc/qcom/llcc-qcom.c | 72 ++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 
> diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
> index a470285f54a8..d867b1596725 100644
> --- a/drivers/soc/qcom/llcc-qcom.c
> +++ b/drivers/soc/qcom/llcc-qcom.c
> @@ -2225,6 +2225,56 @@ static const struct llcc_slice_config sm8650_data[] = {
>  	},
>  };
>  
> +static const struct llcc_slice_config qcs8300_data[] = {

This part looks good and in line with the data I have

[...]

>  
> +	/* LB_CNT information is wrong on QCS8300, override the value */
> +	if (of_device_is_compatible(dev->of_node, "qcom,qcs8300-llcc")) {
> +		num_banks = 4;
> +		drv_data->num_banks = 4;
> +	}

This, please rebase on <20241025-sar2130p-llcc-v2-0-7455dc40e952@linaro.org>
and reuse the thing added there

Konrad

