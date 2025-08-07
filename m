Return-Path: <devicetree+bounces-202405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B5175B1D5DD
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 12:33:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 473A23BC1E8
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 10:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2C45225413;
	Thu,  7 Aug 2025 10:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ddF2XvkY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81EB618FC97
	for <devicetree@vger.kernel.org>; Thu,  7 Aug 2025 10:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754562823; cv=none; b=WEpoCyEYvEfk37DUzeXZNJ2FoniNCGlA05q6FiAlSBoCF38kV9DkcByf3aGI1E0YuSwsyOEnf3VIIzyJj9eua1ZvDnDfsYyc81r236Sz2yuHzze0+hejowQ+uMUNpO35Qx8kEEQsCN/n7hVkNgnyX4f7Gcn/w7IEqTRivJdEHuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754562823; c=relaxed/simple;
	bh=aRfkNpM//pBU+oYZRnw2Z6WAeGX51uxS/BOb0CAPA6M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UAXoBKEO6mNXuuf4HUkOqenJZwckC8LjTHw2VThyLsAUre14yqRF4V6J83DSGHxLBjUfTGPr3xHkKD+TEifegQkDAMaRDmQFBRF5R3Wux+zXv1igKcAqgjDSFh+Ps3Dyy0V4d1Mz4ocfXDd6A840HrTy3PGvgeHaFXC3m0RlEmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ddF2XvkY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5779Cupw022439
	for <devicetree@vger.kernel.org>; Thu, 7 Aug 2025 10:33:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Yj4wYlTbCwxe2PSZY7rFcU9tQhw7WtnXz4t6GtIJ6mA=; b=ddF2XvkYouSbD/jW
	I9Gfw8ecfrNOno3xqLGPTcI7vIADoEwAIucXcHMemYaKY3xtPVNzO9gXQwWSOCjP
	Fu04Ld7vQUm3h1Bv5fcB9qBTKCaUsKsuhaa96r2Urc6tvQLfbEXE9GVUcupG9rG7
	QcyaPmDB3kyQV2GlLrARQUd9ygcjirEmq4yGzm9CSdWEaf+g5Ps2SVRU3Upj9KH+
	oiLMs9H3jaJQE0OvkTaW1eu1vwpnbAKXN7W+o8sQYtY9hUNeuVlyAfNsJjR2A59A
	WiOydk0b35h3AlEC4VBV1ab1HCfD/O1hmD/hBJ/NLeaKrFK452wNLq3QRg0ZSqgH
	x2y1iw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48cs5n882q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 10:33:41 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-76be6f0bbfdso57920b3a.2
        for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 03:33:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754562821; x=1755167621;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yj4wYlTbCwxe2PSZY7rFcU9tQhw7WtnXz4t6GtIJ6mA=;
        b=ggzIrPuQfWQcxaTM7N++C55QRESKV+jc1jswkMnW68sWoEPG7KsPTLYHfODPG+n5c6
         OpKHtcklx9/j1fZEfo1Np1SAcF8pabLtlXs/MaHVKyuVEa3VNpj4Fe74vnLurXF/CLFh
         j/EnrixCx+o35ObO/Jy9C4ntCj53RaQmOcSgJefrbgxh8VHg0mgAU6j/Cm/KMjwQg3De
         uLeTiuGzzzutj2y056bhP2IxRJt9h97+2H0lWa+bKlGEIUcKZQb2WP5x1BsvlNNaA5N5
         FsuyAH+8kwfB10xCAiSqXcC6ZFTbjPv1Qy9YCnphJwWdnhIFQE1kKhcR6sXYTvyENm/T
         bJIg==
X-Forwarded-Encrypted: i=1; AJvYcCUC+hNFsE4+Gs48dZNUX2QZGAXnBJYQdRDq0i+Iqaa82tF2IGpx+sBTVvl7SiyDwksEtkP1ibAcecp+@vger.kernel.org
X-Gm-Message-State: AOJu0YxUWf5pQLA0V5By2/gxFgRF1geGz/3nCKRTKcQ/K/HCo6LG8vBg
	oa957T6B+6Gp8Co0WZ4zVujCZFQdad2lzgSNfMy7CGxptVqMaL7+uQzaxAt9rtBiAOw69lnZXla
	pNpB3tPsID44eY9tXWbI6qLrzOMQaN/qFQmTXqQ9oy7cEscsfwTTEe3u1geLXuyMA
X-Gm-Gg: ASbGncvtOyepQ7s987OzBJrNcEChpntIvfFDZxaNnsMTwv0W5/TbvcrhzodjpKWvime
	AqQcWuwOkY6euEgbsf2nIHumSYK7lFgA+G8S9wejyK76KmB2FdJn37pzz0+9rzMp6LhK9Dgt58d
	1F99HYuEioO/u/nnfd1cty4sZXh8rQvyp1W7i/MEaMGPgNBroWXhbUBVDo/4KkuONAh6q35I+CI
	lX9ssU+XkW/+y8P9b0OedWJkDElbJS+iWThz20/Xm022reVsqBbqryurh6K9y4C0k6PD15Ohmv3
	YltIyHw6c1Mtawcp9h+FCaGDa5QQ4hh2KOsygYSYOKrun4JHSAapE7iBTBhZnL+yMQGWaA5dZm3
	f9pSqdB5w
X-Received: by 2002:a05:6300:218f:b0:240:160b:81bf with SMTP id adf61e73a8af0-240330504demr8438055637.19.1754562820810;
        Thu, 07 Aug 2025 03:33:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhYvbZOVRKIjkflKJ6i4gZ1vDxK7SFCJ8tqdD4ynpxPyraozOCdxExCiCicXthuRRWP2JZtA==
X-Received: by 2002:a05:6300:218f:b0:240:160b:81bf with SMTP id adf61e73a8af0-240330504demr8438021637.19.1754562820406;
        Thu, 07 Aug 2025 03:33:40 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bdd2725c9sm15502209b3a.6.2025.08.07.03.33.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Aug 2025 03:33:39 -0700 (PDT)
Message-ID: <8b262389-3c1c-4618-9670-8de86751c83e@oss.qualcomm.com>
Date: Thu, 7 Aug 2025 16:03:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq5424: Add reserved memory for TF-A
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vignesh Viswanathan <quic_viswanat@quicinc.com>
References: <20250624-atf-reserved-mem-v1-1-43b1940e2853@oss.qualcomm.com>
 <0826de9f-0125-44d9-84cd-1c52ba199a4a@oss.qualcomm.com>
 <7d641576-7ec7-46f2-ad53-e0b8b36351d1@oss.qualcomm.com>
 <64febbd6-abca-4ab2-abe9-93812bc115cb@oss.qualcomm.com>
 <95959a89-655b-4ac9-86ba-d8d943809b6b@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <95959a89-655b-4ac9-86ba-d8d943809b6b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Q+XS452a c=1 sm=1 tr=0 ts=68948105 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=OAahIlVLQCIYRdnnqX8A:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 1Kon7htOAFlp47KEyxP1lJnYQjhSiwze
X-Proofpoint-ORIG-GUID: 1Kon7htOAFlp47KEyxP1lJnYQjhSiwze
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA3MDA2OSBTYWx0ZWRfX17t/U3Mptil3
 +dKiGwZD3IbGEQD2kqqLlF+0k0KTuZIqggopFkFUgN+pQ4dhSw9aHTfLBg42R3VMslU0S9UK/5V
 9ya8u5ka5R4R/0QzofNRz9Uhbj243zjAIvE6a720X0fUzP+m4ci2xQLZgl4FEYV2n2DPtM0ZoLE
 ogMXXFi9MgLDHTRVuLpfQilm5mVt+WIuqxHFBCF9aSyXPUEt2G0Ohs/cpsROIKxXuAkWcJZLMmr
 BmAY3Nslc6+QL8dNbCzmwB10yJb/Wn9kQvIqzp1AyA/JjtGopSUHkQyBWqVAzb6Y8wWdk9ZQMxg
 uxCfgh9nOX61qJTbpTqCySiO5EJ20jOMsB22bQjXgFti5lIHSDe63LeYr6ZbMSFk3kXxl6FdZjk
 SmWNUrmZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-07_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 malwarescore=0 spamscore=0
 impostorscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508070069


On 8/5/2025 6:52 PM, Konrad Dybcio wrote:
> On 7/23/25 9:04 AM, Kathiravan Thirumoorthy wrote:
>> On 6/25/2025 10:20 AM, Kathiravan Thirumoorthy wrote:
>>> On 6/24/2025 6:57 PM, Konrad Dybcio wrote:
>>>> On 6/24/25 12:36 PM, Kathiravan Thirumoorthy wrote:
>>>>> From: Vignesh Viswanathan <quic_viswanat@quicinc.com>
>>>>>
>>>>> IPQ5424 supports both TZ and TF-A as secure software options and various
>>>>> DDR sizes. In most cases, TF-A or TZ is loaded at the same memory
>>>>> location, but in the 256MB DDR configuration TF-A is loaded at a different
>>>>> region.
>>>>>
>>>>> So, add the reserved memory node for TF-A and keep it disabled by default.
>>>>> During bootup, U-Boot will detect which secure software is running and
>>>>> enable or disable the node accordingly.
>>>>>
>>>>> Signed-off-by: Vignesh Viswanathan <quic_viswanat@quicinc.com>
>>>>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>>>>> ---
>>>> Can the said u-boot simply dynamically add the reservation then?
>>> Yeah it could have been done in U-Boot itself but it wasn't. 256MB DDR configuration solution is already shipped out and the stock U-Boot enable this node to avoid the random issues.
>>
>> Konrad, Do you have any further comments on this?
> I really don't like it, but fine, I won't be blocking this either..
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Please make sure that the next time around the bootloader reserves
> its own memory and doesn't depend on what the OS decides to do


Thanks Konrad, yeah we have a plan to mitigate this one for the upcoming 
projects.


>
> Konrad

