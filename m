Return-Path: <devicetree+bounces-159479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DACBA6B0F2
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 23:33:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A76251893C2F
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 22:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80F9822B5A3;
	Thu, 20 Mar 2025 22:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DOVyL94X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9848422B59C
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 22:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742509895; cv=none; b=m0OTNJDhxSCBKuwtumB06EKks1V+qieAKmmIo3jhm4El56RQsKElBZtmk9XFz5GfkGAJGvErCPWC7QXZQr8TuYHatThHbWQzYvJH4qznK6q+8BrwxN66XpbyfsUZJ6lXk5VrefnvrKlU9dju7jHD3mTDr+Xu1GNVXUH7+O74yds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742509895; c=relaxed/simple;
	bh=Sri02rWay4yWnrWOUnvaBo7qNS64gKGp0Y21t7cRIxw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XqmF60XVOxHm8ZqHiDe7/gv5xDyVfRGAvjQWZ9xZO4GIjESEbs/19NDoYxRG0H8w97bdjDT+L+ji1/RaWbjM8zlKhhX4YuacvSlOMsvfVA9TtTempHt8d4J9WZjZBG7jkN6DqO93hZy+ygHYSFwRjdoqqwQgqxHobvSOLZDtW/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DOVyL94X; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52KEYtI1022777
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 22:31:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a25CfM+uY8eLtxCuzHlyZWmCc3tXtmlCI+TwfBFX8U0=; b=DOVyL94XIDO3MmPy
	2Q+lPsgY0i0fwIL3f6G2JTbYwdq07Gbkl01YFJg71VMow0NZ9vP9Mb3lMNfvBB+P
	fJUGC0vyhO9IqmPGxIrT26kWDHElP2ltxDLGQIF6CXqiUSRid8epNst/1UYFElER
	BGb+mhpkxTNdurfrm+zNt84/I6C2G5d0W4Mk/512isZMT0udnkcOi6ygJrGU/Xu2
	4jPe9fpUM+eopxl5dQ41/PUelyaz7zG2ymWAOMuhhukzp7sy673fY+qYe+iKq034
	4r6la4gCP9Em777B91RlgrBQNaf02YH5Y75hhUtJXe1OcCYFTC+N2BpnwSgWOHT1
	TpemHw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45fdmwywgf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 22:31:32 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5ad42d6bcso35028685a.2
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 15:31:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742509891; x=1743114691;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a25CfM+uY8eLtxCuzHlyZWmCc3tXtmlCI+TwfBFX8U0=;
        b=r2xvPCv0aneDl4LiYA2tXJwTTA9tNTKmnR01ecAiiDfJb9V+NRT06W4wdi1dhm3Txh
         xy0cnvmz8HslNLidedN08AQ5F/TQBI46J8F97/zzrW++kG+XxYv+H7k1ycuCl54tmFay
         j+Qi+7IKRYBZT3jZ5y1hXfUOXjJTdhsDkOFk9LvmrZbKBmrBJIX9kyHhb10+V6HeNd4r
         DOdQ+ZE5ZWfEFpcdgyqRz1OxFP1zf3aNccMTKZVSTaV+YEvkpGJxtgpol9W+ZY14ShPU
         U5ohgJvMPpHAkDLP3NS9toRr4lEueRVIx3PbGFJQxuUMzlonGazNQaTO15oUHOTbN+0A
         EIPw==
X-Forwarded-Encrypted: i=1; AJvYcCUBWiIJUB+BDVOYEEaIWNe5zIEeoDwXO6j/k7M7EKDivHKDSvIKr5h2n4P6KJgBav8mXoFLcKKYWS3H@vger.kernel.org
X-Gm-Message-State: AOJu0YwsysZTpLycE7bOJYIhujXkdpFtoOclf6q1yl/vCO6znssJtqra
	Jo5k5D0qQ110P6YRCUKQ3BsPBqKUtQwtpkQ7b5NwWUJhQVPCpM6LhC3C3NfXllhQZAVjKflIWo1
	4Iw5NMAXv7hu9husM/SVewoGicK6uIGuX6sk+We+0YTeYFRpK8fH0NIeO824H
X-Gm-Gg: ASbGncvTkLSXE3EI47Oe605dCgs3SArpS+9XeLFg54seBmBTuqFw3GzzIg5iO6pVntI
	0YmAOiULBLrhdiVU3nUNoLiv97mzze0Cp7EWBUSXHkYCvSKYEGN9tW85B3f8hF5Lam1SrtT1h+U
	G+dLpf7uQnFLUv8I/UsdplbM3knOENH7jf0GSqxtv4bxWPU4xckq8St3JzPCvGKSYZcbjIvmvNw
	WY0M7yBITHtIpEmxlFlhyWILcx9qVQCwV1gKxvKXkEcUPyNpz6niR0xUrGuJNaFuUpsmIyb61KZ
	M/vA6yjDFuhAxgL/JQEd6fLunOfSwM3QOaXQyZG85FShiJHh2qZZdJYk8jQDz5Y72aeARw==
X-Received: by 2002:a05:620a:c50:b0:7c3:c340:70bf with SMTP id af79cd13be357-7c5bb18ef62mr18888985a.14.1742509891475;
        Thu, 20 Mar 2025 15:31:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEjzMvQb9cedBVQrK1BfeEBN6u4FDFVS4wW2Tu8HCGvYiFw2UGkUEDhYmlUC2VQVs6+5CNutw==
X-Received: by 2002:a05:620a:c50:b0:7c3:c340:70bf with SMTP id af79cd13be357-7c5bb18ef62mr18886985a.14.1742509891026;
        Thu, 20 Mar 2025 15:31:31 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3efd24f6esm40486266b.154.2025.03.20.15.31.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 15:31:30 -0700 (PDT)
Message-ID: <07984029-7d6e-41dc-b0c7-e4843664cd39@oss.qualcomm.com>
Date: Thu, 20 Mar 2025 23:31:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100-hp-omnibook-x14: Enable
 SMB2360 0 and 1
To: Juerg Haefliger <juerg.haefliger@canonical.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, jens.glathe@oldschoolsolutions.biz
References: <20250319160509.1812805-1-juerg.haefliger@canonical.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250319160509.1812805-1-juerg.haefliger@canonical.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: KRjNd_1fMzGekkd51de8zhNbb2GEZjnl
X-Authority-Analysis: v=2.4 cv=ReKQC0tv c=1 sm=1 tr=0 ts=67dc9744 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=DfNHnWVPAAAA:8 a=EUspDBNiAAAA:8 a=RJAiKtZsp2GhsKZY2HMA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=rjTVMONInIDnV1a_A2c_:22
X-Proofpoint-GUID: KRjNd_1fMzGekkd51de8zhNbb2GEZjnl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-20_08,2025-03-20_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 phishscore=0 suspectscore=0 impostorscore=0 clxscore=1015 mlxscore=0
 malwarescore=0 mlxlogscore=592 priorityscore=1501 adultscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503200146

On 3/19/25 5:05 PM, Juerg Haefliger wrote:
> Commit d37e2646c8a5 ("arm64: dts: qcom: x1e80100-pmics: Enable all SMB2360
> separately") disables all SMB2360s and let the board DTS explicitly enable
> them. The HP OmniBook DTS is from before this change and is missing the
> explicit enabling. Add that to get all USB root ports.
> 
> Fixes: 6f18b8d4142c ("arm64: dts: qcom: x1e80100-hp-x14: dt for HP Omnibook X Laptop 14")
> Cc: stable@vger.kernel.org      # 6.14
> Signed-off-by: Juerg Haefliger <juerg.haefliger@canonical.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

