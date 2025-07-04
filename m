Return-Path: <devicetree+bounces-193065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BF7AF91DA
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 13:51:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 019781CA0FB5
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 11:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03FB12D46B6;
	Fri,  4 Jul 2025 11:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CX5GUFg9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA3F2C3265
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 11:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751629873; cv=none; b=tb5eDkRkAqRdsp64LHEeMVyGqNrSrookiL5Cm2/OfazJPNpAZxt8791t50ablGRM3UaaKP8Q7KmKgS/d/8y+Sb8eL/qG7oOExyT8LwDk6bJC2GK6VBl88LO9i1FkwHKDRubpVb7mDt0xAiwvhQ5oILXUPK39DESAx0bPWktrc/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751629873; c=relaxed/simple;
	bh=5fikI+87o75mbLixisWkcdUIi9r+QELtxuF3rHOb/ag=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N0kvVfm17Z7W3t7cYqF2/VTMhaa2aBZOi+QBn7o4laiNq/Nbks6z41pXpcsBnhl7xQeTlyxK1QS0ehZaqYfuEiliKx91XlLUorHYcBNkTxjeyAaDcr/jULI+u4SWQ5zJz5LcNDLjhAbPzrXiLIe2HVb95KPPJEf4+gmtue4oHwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CX5GUFg9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56475Lbv002484
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 11:51:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N2vo/P6bZVJ6DuTuBUMGx/1yOw2ZUrq+gW27lFrqtTA=; b=CX5GUFg9ojZ7zVI/
	u8kyfZ3pDEbufbdqhhRaPwZy1UQ17VmPigWj3Dhvh2t7FHOD1NcY7bdxxQPzFE5k
	NuIK77LHyIxafexQlk9CqpVuoMGGByD+Vh7/uFS9XL6JLEHS4pVrQaYL4T4awV2S
	W/Ml3Eolu8Bo2oaJY2Udl9ShJLZ3jRsEeHJG3DsWxtcPu2N8l2K6Tab+snZsV8Ra
	Nx1dZBjyC78bqQdufztShPP3n+0MJiX2l1/hVJDX2L5RTWwDdOusQyhzLm+srWIF
	AmrbKHkV9Z8BYakmfO67QYGg7IhWHnewE/R4CMEQ9w1Eam8mhh2P85G52EOHLfJW
	EnVn9w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j63km5cu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 11:51:11 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f539358795so2533016d6.3
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 04:51:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751629870; x=1752234670;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N2vo/P6bZVJ6DuTuBUMGx/1yOw2ZUrq+gW27lFrqtTA=;
        b=FnT9dB/pwRFFKJNLGXODs5FEu5J1y4qTh0JyTESiM0RZxc8k4c6daKChyk1q5twb/K
         w3xW4V+j5SdiKU0ECEWvYL0hNBHIa1nKXQKIaUHXpx84o/2ypciEpaCNMSKsrrMlRXrj
         50ToQ4hiTZrD9//w4520hHIfUz9I+V9hKRDReQMh28HBpNWfD84jeG/z1c/Wu6GJGTEr
         LRm5pOiJwhRhmXoBaU6e+WfJ21pzEC3SJ7uvQd9weXYptA2Fs4O1uMQTYOlZBtCc+7gE
         xFUckiDykeslVsa9uHGJOZIxx0udQXOT+2MK88WEwDWdv6fv+Cmh1+CiX+sxQnq11pBp
         BTwA==
X-Forwarded-Encrypted: i=1; AJvYcCVsRL56YC2D/JeJCc1GT+gbtCJGxo4Ka+yaRak1jhHlnMOgAbdxUZY89n7j4ELCEYLzjtqWV/++T30V@vger.kernel.org
X-Gm-Message-State: AOJu0Ywcohe0BsRWY3JMsZalF6k9GMHGcLoCSaabdWe5I6LX2bYOS6aC
	GBG5O9cCh23HtUnoxGEawkvkJrTtZVSSXkSuUxxeJmQpQiiVvejx55t8W+BOsjVl3qaGaHwhbp4
	xMbQoYt+eYUDUn9Bjw2mFwFd91EB0OXOq3mQVoYLPUt+GMTiPB6ssX3AcYFqhN/Lm
X-Gm-Gg: ASbGnctQ5rW/hbC2/le+vk+tR0yxpCfW3dLw7aYfuQE9aYqs/j2T3d6+Juh/lpo5byR
	GMgVr4MO7Qk8YrFDTVBLZNTCCM9qFoCBX+M+PPLbrZ/klbg8tQtyC87aeLv0lKPSKkD4WAAmNIm
	kyloGptXsJjPUuiQllLgocAhSKdmnzow0+96JvWZpmzU2pk7co72KuY6e+8rJ33+8i6i5dohGn4
	bmZG4W59IuARk497/aoStc35q0EQhoNNtWmkJJkyvXiPlemE79zsEZmXXvZQ/lYhcgZ0eu9Ii67
	piNsQ82BgioOYu3xG6Hh5ughPb2KvXPL+rImm0vDD3JdYcBicQQ+4ceq84RDuyEOQXMNHv4IUxP
	1O6DFjg==
X-Received: by 2002:a05:622a:11c3:b0:4a9:8e6a:92c3 with SMTP id d75a77b69052e-4a9978746c2mr10688261cf.11.1751629870290;
        Fri, 04 Jul 2025 04:51:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWrN2NEryvPdcQsXVW0TeWgc3Ic5ZNhY0zdAQ1OKX4lqZG0xsfkEzP8WPFD5XVFAgSx6Nu+g==
X-Received: by 2002:a05:622a:11c3:b0:4a9:8e6a:92c3 with SMTP id d75a77b69052e-4a9978746c2mr10688001cf.11.1751629869683;
        Fri, 04 Jul 2025 04:51:09 -0700 (PDT)
Received: from [192.168.1.106] (83.9.29.45.neoplus.adsl.tpnet.pl. [83.9.29.45])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b02c6dsm158640266b.127.2025.07.04.04.51.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jul 2025 04:51:09 -0700 (PDT)
Message-ID: <76546615-e24b-4380-b1c4-8c381743d31c@oss.qualcomm.com>
Date: Fri, 4 Jul 2025 13:51:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/11] clk: qcom: Add Global Clock controller (GCC)
 driver for Milos
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250704-sm7635-clocks-v2-0-9e47a7c0d47f@fairphone.com>
 <20250704-sm7635-clocks-v2-3-9e47a7c0d47f@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250704-sm7635-clocks-v2-3-9e47a7c0d47f@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZKfXmW7b c=1 sm=1 tr=0 ts=6867c02f cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=qmfFy4ndMtQ753Zl/n/b/A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=fvyRFVoqYMEcb97R5LQA:9 a=QEXdDO2ut3YA:10 a=AYr37p2UDEkA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDA5MCBTYWx0ZWRfX8AXle8yEXsWd
 QLQTmPtovhs9/5a0NVtIXHCuPd/k4kLKZ2hIdwU31OFZDfFswhsZw80yZvBo4qBTvY3cyXh/Wab
 zC9jwihA5wqQ3AJ7skFKkpCzI9RD3AK4JelCeeugeeiqcbxswsg+/BFYC+WcDI+OpQ9/POandiy
 418yWnfpmsPkdbT6WFkhibQ3kZ6NBUMc0ZDiBUmQzmDB2cKKoAT1QPY+LKdFIvmdc4frp6lm3MW
 XPhcAi476vmFUkhLycBFRWcnZrfFS7eJTfz4CT0UV+negYCsXdf+7lZmZsKuCnWnIZe5SWSMoMY
 7FEZlW8ZolSxr0xwFel75s3+bvZWWkS1eg0T9RmiQrLjQBlajy5pM9b2kwTgbFF++3ihjilGelp
 9euy/TV37U8B6DrrLOOPxH1PSOKclfSzpd196OVmC6i+IOBj176qAOhGbbMfIgcU/d7MVCho
X-Proofpoint-ORIG-GUID: 2itNdpGgL1KE8TPMOEUp-iTACfizOWof
X-Proofpoint-GUID: 2itNdpGgL1KE8TPMOEUp-iTACfizOWof
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_04,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 mlxlogscore=893 spamscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507040090



On 04-Jul-25 09:16, Luca Weiss wrote:
> Add support for the global clock controller found on Milos (e.g. SM7635)
> based devices.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

