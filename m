Return-Path: <devicetree+bounces-235753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0473DC3C6E6
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 17:31:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7BF7D3523F1
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 16:31:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6607351FC3;
	Thu,  6 Nov 2025 16:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ydg14ijM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ejb1xGIR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD44034D4C6
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 16:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762446434; cv=none; b=GmdFcckGWJi50ngsT4a53ARDeX7ASbqAXAaLddxVdIIR3jC8SMfRytFCjKXC8zb75BeUQIxQ47qetdU+hiyrn5/ArXlF/a9yevpRi4SGFwqYY40JosbI+UPjHkmAv+6qqBCXkSt0bc3y1Jt+WfhLvqtYnF496iKzgo5binEiJG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762446434; c=relaxed/simple;
	bh=hUjqN3UmpFYq00xIpLfCIerEemZqaq/567W5oV6EEVo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rdX8IUt8sptRQluQCjUFTXpoYrDquHZbjta+Ml0HqSMSAKwKbnIJlcU3TUH2OPFscfhNyfvEn1lAMr0VRuIoUV15RS+aLH9Zrp31zzsy8OIqMyKvfG+oEjSJyZv/xWrj8ZLhs0zE9JJMGkzvxzdc3++BqQC39/W9YFOznBihpRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ydg14ijM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ejb1xGIR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A68jc4H3383349
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 16:27:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1VaDp85O3a0ogLuE5Bn7wN2ygZpImA+jz5Nmrdl9jCU=; b=Ydg14ijMuPUiIsko
	KC0mTT/xNVdWJ/OhNSO6upps3QnhpE17KxJKkJPyLNFL6/ytVAi7nhO4r9gHGIFo
	KvqwWFLvmZejvzdzRN/9Xpbc0hSMMm6ew0JXQ8xSedWzN8ivlhyHTT0PSZmRSQf3
	5Rdzm2k1yRcMkF9iTBIzVOOsYAg3Ibmr8pO0yTW4fGAfnFXmlU+ABaY7iGcyawB/
	MnFHAcnSAuoa+oIZJCWMhQ+umGjHLkdPraT7dggXQpI7Gb4s3ndAIML7QKd5m2A3
	qXR1QsDoIxKSGKyAZ1t0kZ9SejzNTMVQTOwQdYmp0C5pLsh/ox8VKwpmQUnZiiMW
	VCguMA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8reusbnq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 16:27:11 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed5ff5e770so3286271cf.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 08:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762446431; x=1763051231; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1VaDp85O3a0ogLuE5Bn7wN2ygZpImA+jz5Nmrdl9jCU=;
        b=Ejb1xGIRw9EUqjDct6EqiD5aAyP5DSBylSdhVnXiILZzRRJjZnV0buXoljxeUF+5Ln
         +8cwndAdd/7PUlPqfArWaycPb2eDyrSpSTqhHBL/5S6cqPDfR3gDBRTCWkOQB0vj0epO
         xLBVNgM9wa3FteIUgv9abSu0zMvUES/n9h279a19n83gXtmMQ7J4NRK4/2eZwqaKQQjo
         6DoWyosGjMcR0/tln13WpWNzjOoeuMZHvavsnWjrbbYY9vsEb7MuYnu8obnkZE3uO9jL
         U4RQSTH1w1wYrDf/aKdhUpsxGlG1UEi1wlu+hc0PBep0FnL+0TpspwLu353PHKw2CvJA
         nPRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762446431; x=1763051231;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1VaDp85O3a0ogLuE5Bn7wN2ygZpImA+jz5Nmrdl9jCU=;
        b=kRxqOF62Gztc8thSDlAdzH+MgKc/GNmVaEGgkYVGAZkcH5RyASmpq/X3jJkyZ5xtAe
         sbn/jBQ63JMj9fw3JM067af8FYWWKOT2siSkQg7RP5BljNJotBynj0LbcvQLoKU9mLWP
         GzYhw356XLbwQB5QHJ2oNPuRn+dR+yWHvyjcHAyb2n+bhF+XhCMbjaCexA6aiWMcXlf1
         buUjIGD+bDmoTV8T2tcFRBviHqM0Tl8ycbeOg63cPebX9+odkob08gcQJCRMYQhI9mA+
         xdTLCNjWxumY7HgkG9Uxn8T2LwFvfuyucXyNAlILHOeseRSvBMcFERJAAzX15yxhi+fP
         hpKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfTjNEWQgwbmZ4dRGEjqdZOzCDwDaZVvj9vVOEyE6B5cRuilg519f0AmwveM7b1F6ojuqPPtRTQdG5@vger.kernel.org
X-Gm-Message-State: AOJu0YwjclLiL5VM0rbUdprgyjKOnUaij1RmS6L2CQCXK0B/H6X+KmTD
	qW2TuCZ1h4gmgaA/f0VAvyANwGf5VJ6gc8/X0Cb4Hw9N5HuQY1hXd5qgGgILs5GgE4TtyqvfxMP
	/qFY6SIs6e/wf+py44jE2yUx1j5RRlYLM3UkrsFvXdoM4HRwggkQd+vyKjdZglxQ/
X-Gm-Gg: ASbGnctCBEN5iHB68yBQaGkuRfe71bbsRe9RWbPYwNlLK0e31hYG1JuKtecdgIxrYqG
	JR9y5AgpJJcA4Wv+rsIEpj0oGlHrixwQp/IXo4PtedRCI1/vXq8UQH3NXVvRjl62Uil68A/bOVI
	jcQKsLrrNy4fn8foH6JCiYTiNd/gVUef389YGDMXBdu4l6LpCskncxOEnU5ljVnWiurhl/yOvXk
	HWFImJ63juTeiMCnwfdMr9TORKLsHP3xGTAbilofcf4Z7b9SIpoxGqvcK1mki/42ZBdx80m8EwQ
	2OPmv4o5/IMbPz2QoSXh2x5ss9IaD5DYW1vh9FjwUvOvKSFFsa0YOEHv7/V0ApPcGOQpM8rh4Qd
	q5NFi79XW0HqhKXweztLHdYcSkZORgTC4FmEZlzNjnEyDkqFpbkz09I1i
X-Received: by 2002:ac8:5751:0:b0:4ec:ed46:ab6d with SMTP id d75a77b69052e-4ed81554e98mr31936901cf.9.1762446431040;
        Thu, 06 Nov 2025 08:27:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGch4/nmENfqzYvd9p/t3ol3PAJQJYH7BPeMAhJloDyKCtlTa4jeKX7kLqaIJ92wnHC029zUw==
X-Received: by 2002:ac8:5751:0:b0:4ec:ed46:ab6d with SMTP id d75a77b69052e-4ed81554e98mr31936541cf.9.1762446430436;
        Thu, 06 Nov 2025 08:27:10 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f8575eesm2131956a12.22.2025.11.06.08.27.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 08:27:09 -0800 (PST)
Message-ID: <17ba4580-bd78-4bdb-8e19-b326aadd3010@oss.qualcomm.com>
Date: Thu, 6 Nov 2025 17:27:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: qcm2290: add uart2 node
To: Riccardo Mereu <r.mereu.kernel@arduino.cc>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, broonie@kernel.org
Cc: linux@roeck-us.net, Jonathan.Cameron@huawei.com, wenswang@yeah.net,
        naresh.solanki@9elements.com, michal.simek@amd.com, nuno.sa@analog.com,
        chou.cosmo@gmail.com, grantpeltier93@gmail.com, eajames@linux.ibm.com,
        farouk.bouabid@cherry.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, mm.facchin@arduino.cc,
        Riccardo Mereu <r.mereu@arduino.cc>
References: <20251106153119.266840-1-r.mereu@arduino.cc>
 <20251106153119.266840-5-r.mereu@arduino.cc>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251106153119.266840-5-r.mereu@arduino.cc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDEzMSBTYWx0ZWRfX7AWeuHEP/i1L
 PY1aPruVpLFSY2sB4oMrxEB5DXSHBZ+6N39aeT/dxSSgZS6oXcTwN1KsWK4HALzDhlxHosa7zgp
 IaxPMwRZWdg7uu+yFlxtJyUD4YTHDQmco4eD7El+eqk6BFmCG2P0u8j2hhh0PLEkLk5RNivEi4y
 Y8tcq/95faTE0MzLxjSz3cQUd9NPxrEWWY47Jl6e8TYos+xLgmmqsRz4y9QcS+NwDNfNSs5mGj6
 0o3B7gXVWwRBilcpepQ5dKa3Qo2RrA3akfv7tZe4NO5uEJU17YWzD/wwR0oIVLPuqcBL1BJTyso
 q9jjcwksfLRgs2GZfRusv2TbWz8LMOvH6bKrr7YSi+nWeZTkLAGxzyfy9SHj0yQgLaIHHy4qS41
 1rCQnNHNmqzy9itSNqNGTU0ScwKvEg==
X-Proofpoint-ORIG-GUID: pPNAZa-dTdUEFnzEPqrHk4yw-ZhaaWi6
X-Authority-Analysis: v=2.4 cv=RrDI7SmK c=1 sm=1 tr=0 ts=690ccc5f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=D7qGd7DG7pF3fn8uCYwA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: pPNAZa-dTdUEFnzEPqrHk4yw-ZhaaWi6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511060131

On 11/6/25 4:31 PM, Riccardo Mereu wrote:
> uart2 is used in Arduino UnoQ as an interface between microprocessor and
> microcontroller.
> 
> Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

