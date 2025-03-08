Return-Path: <devicetree+bounces-155686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C0DA57C83
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 18:49:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BE31A188FD75
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 17:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 190191E521E;
	Sat,  8 Mar 2025 17:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W5W+1Vqx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27021A8403
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 17:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741456136; cv=none; b=awGCw4/iYZivbPvuCH6gkUns4yYCIX8/kJUHT5cEdhd5tNyLRSnVcDzsIDYT1+Pi8igLyE0ARPZWWjdW5yuHh6+veHgrpCN8o2lgXCS1Jw52k57T07LgQ7cMw97tFuIl596d8SYKccXtJIyVPidGL2m2gsoac+GJctEAOt1yuW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741456136; c=relaxed/simple;
	bh=ONK1kMMZ2tlq7ImNd6unr943MlZoZ4E9hWT3KTW2Fj4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aAKmf97UjxmsIxYvcCAWMnIaQWVRpIhNZsYULNnN7J1EymRsHXFY/nKSfE9DSv/H1k8DrE66gdqc0DT0VoyGchaYKjyFUjPIZllkzBMgts04CdQ4tEBhygS63DxmRFEwgAbKB1g1Qohfg8aYnudYW6OelG62+qD/lIYO+kOIHPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W5W+1Vqx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 528DXN1Z030421
	for <devicetree@vger.kernel.org>; Sat, 8 Mar 2025 17:48:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9zgESm2DJBeKwNRa2kpBfLUx05b1iadnUUGYGKJsXFI=; b=W5W+1VqxoIboIAao
	o7OHvznBlV72U24+pAB4JcWtW0piW2pworPz3K7fFgr9bC95WRRx541EaagvEUfF
	YRXCLxHBcFTlDcjZZnQKIOCzXCJiFzjVbD2K/WB5wF2x6TrpezQ/L8G3lvpnt9SC
	2+nseKwfoB6Imo67972mEObK7Z8UjXKwtzK9ryxvQK76q8OBtBqMEgef3MSOjhTD
	hjd7rm23WufRhZ3KtSQ/LGf1ey16XdxxMzrDyuCD1jCNkNmXMk+OhkaBE+yZN8kI
	61jYb7fC3fqnxs8LTP0BrnKl/r9WPOQbE7x99u4h9Q0K0Pw+0+1/14Rh0pL+uFLX
	9Uzmzg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f2m8wc9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 17:48:53 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-476695e930bso964131cf.2
        for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 09:48:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741456132; x=1742060932;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9zgESm2DJBeKwNRa2kpBfLUx05b1iadnUUGYGKJsXFI=;
        b=IQZd9pKKsu2KYh/vTz7SYNOYQCj7XIZRfm+iI+8HEJ3mDBrg6vhkLsAq1m4Kt6DdYI
         Gc62FSHcBbJdtIaAVurDs3fvs0GpiFgNFNiFDOdnyRaFPXooy8PcLc2ZfWuSi3ZWc4+/
         cDCvEWKEq/ooa9IU7Nm20VdqQ1iIiLbG+pWBBmdO7L85IOvGNvBmxvwmN5/hIkYgKg5K
         03llZpUUb3w79V7aD9HydhLlgV+CkhRC/x3BDFqhOAGmFk/GGYqKx71z8Bf0/c8etEbW
         yqq+nwepGjUxVUEB8YJdYH1Q9WXlmmzO7g1bHAObThhcsV+EI/FRd4wsHYWHg5z5kBiF
         pXsA==
X-Forwarded-Encrypted: i=1; AJvYcCWBALC5KaisRcNNcbE3m8wr+TE9+/W03GSPElLngAFMu8DgBcMLX5AtPCJCtaPf2Jivj25KpUJCbidJ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj31wqOUt6XafJMYUtU6KhQyKWV1B1POYicgliOWrYEEqOvopx
	5HTxoihTehqPo6rc7ObOCPoMEB/kwfQhsNkJGOdt2yF/+ZGQdToa8Zc3hD0HTS0hRRS5G94y5Ut
	OeLV5Ooo4Db21W89HrWa6JeihrXush1pyf/O/5SIlnPBeyAFf2jO3ONnsZvkE
X-Gm-Gg: ASbGncvf0BaabPkdIx0YJ2PPJqWSBEK7Era01Nn/3zHk92j6baRJAdAKKt173l4gDQB
	TycdBfji25jsFHwhCf2KrX9qlj7cjRVEbJp+AVjqiaR+A4gAr779r+t2UzeWmQYyTI0WKGy2MfO
	eElscgnrl+bzg/5jnalhJzcfKcbo/mi1WhWMOdkOv6ARGc9DAlnmtzZc9AfYZW3Kd2jkAUzHUjd
	6Exp7ARSr0BBhobIOgRwOfnquO7UC4niTAM4BIDZxDyeIoArJ1hpT5RdP5TYLzPXETiBAnz7PFD
	FI1RUIV4C+O4in2h5NSzkN7TeQHnx0P0ki1mjzE8nqU9bwBDQn2wNCfzpk9eplsKRpkFHQ==
X-Received: by 2002:a05:620a:1a8a:b0:7c0:a1ca:93b8 with SMTP id af79cd13be357-7c53e03dbffmr174468285a.2.1741456132471;
        Sat, 08 Mar 2025 09:48:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFjAXC2YaGFJRA94KJeJmLjjJ5NKBnfQcZY0wcOSqqMLcDRcER+6YBErzya43C+IrezGavqtQ==
X-Received: by 2002:a05:620a:1a8a:b0:7c0:a1ca:93b8 with SMTP id af79cd13be357-7c53e03dbffmr174466685a.2.1741456132091;
        Sat, 08 Mar 2025 09:48:52 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac23988c542sm466544866b.134.2025.03.08.09.48.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 09:48:51 -0800 (PST)
Message-ID: <3795a811-e202-4f7d-94f6-7afdb5046e84@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 18:48:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] ARM: dts: qcom: msm8960: Add thermal sensor
 (tsens)
To: Rudraksha Gupta <guptarud@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, wctrl@proton.me,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20250227-expressatt-tsens-v4-0-d70afa5a1fd0@gmail.com>
 <20250227-expressatt-tsens-v4-2-d70afa5a1fd0@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250227-expressatt-tsens-v4-2-d70afa5a1fd0@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: HM0YcInh4yVriYtiMrFWQvsxh1zrhEXF
X-Proofpoint-ORIG-GUID: HM0YcInh4yVriYtiMrFWQvsxh1zrhEXF
X-Authority-Analysis: v=2.4 cv=ab+bnQot c=1 sm=1 tr=0 ts=67cc8305 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=Idcbk8-iRzM_5biadzEA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_07,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=935 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 mlxscore=0 impostorscore=0 phishscore=0 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080137

On 28.02.2025 2:16 AM, Rudraksha Gupta wrote:
> Add support for the thermal sensor (tsens) on the MSM8960 by copying and
> modifying the relevant nodes from the APQ8064 dtsi. These changes enable
> thermal management.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

