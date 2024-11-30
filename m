Return-Path: <devicetree+bounces-125735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 371839DF143
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 15:48:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0B4F2812A1
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 14:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EE1819C578;
	Sat, 30 Nov 2024 14:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pN7e0+h1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20905199EAF
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732978085; cv=none; b=FmIr0iMslN7fYQRhcKbIaRWrq3U/0a3xI0VhfPyGe/vO3UWC8XAHxg+Kufmti9Hc2exri0cFdXWtFsqIdfDoH9DdsClrYE6Kd5rhJJeBEOhvsBzSAU64bP6hNI/OWyZ6wuZAJ5qNrcQOp35PlbPnU+ugGIZwLRORZnOfp4pWU60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732978085; c=relaxed/simple;
	bh=FqLIPOS0DcEiChgS8/fcJB1Pahfr56iFw7RdNXVNpEI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U1N7Yy2Zmfl1MLs0vFhYeIQu0YVrLbkHVo/b2EN6Dtc0I3xezz02VqbdCqMpCP6I4HzK8djvlhhifwgtGYE2q9M2CqjbW4U5c8OpoEKzB9mWC7RckAx1vmJS51Bg3AdRfCdcTtuR80FbcyqoqVNxcSsUSEHQTcehJL0KuTtyt94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pN7e0+h1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AUCOwwh003697
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:48:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2LGIgUfcPXgSEFQvuyQnuyomuR/er3YomAlw3LhHJmU=; b=pN7e0+h1s/axT31M
	j3HwFTve7YrGQrp4MxP9hJR37hEoo5/aSG4350xWBo91JfjKD+1NwjMS/7c18OCG
	k5DzE+RMFidmIN+RgZ9BZHs/YJhMJeFTKCiMI4v0aZVp8HQW8rAOuX1ojvz5GlK4
	VbYUnZY2i9tS0Vu0jcP97KuXl0n9/cHjK1jPu22Sd4g4ZgdkntkQftVh+2R2V5Dt
	zNPv4tCKeshfgwu9JR+fgun1g/t1cRWg4AZE2RpUC7G39Fob4MKkOIx2cmVwP5qr
	+ruUV2Qq5oKScisM2aglJ09C0DeYXWp+eDmmy6uYmRabAY+D0l9roUwVk9D+X5zH
	teefYA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437snqryks-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:48:03 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d887d2f283so3135926d6.0
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 06:48:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732978082; x=1733582882;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2LGIgUfcPXgSEFQvuyQnuyomuR/er3YomAlw3LhHJmU=;
        b=JBWKfcJ6qKI9jBtveyR5lHAMBKR4wFFN9eGPg+aPi3+DB0iZeEJGvubzOaVU2DocmK
         duqUt+PyAjl0VPO86yOFN66iSdd0+FhJgA+lxCJkzifismckG3qELR7Mn3w02JGgvwE3
         Tpdde1EISLRa1YafcDkVNH/6611xTyI48zPVuJrh2/DxPp6zhathyQphlF366SSEYqZq
         yXRPjejD5iyuhpr10nB9VUl0Zzmbu5jUE39B2D1iPTAWTnsYB5+vzEyiVldqXHn2US3/
         VlwcIDHW2XS+DZ70tL9xEbqDC8ih83SCHrxa29B93FurVFZuGmUwVPZSZkSKH469asFx
         sxBw==
X-Forwarded-Encrypted: i=1; AJvYcCX1A+0c3DsQcWBCC+8envIx8H2Ycghl7ugpwIk4HjFFZmh0RNnD+rDXfwIqiljwFNG8M2W4GuXFUbGA@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5luuTpe6EQvej6p4kLFxr2Z8zltN4cyKcMUnm6V3eR0JYl40W
	ACBi/jfj5ymt6ECwefN8s6Kzl8TCHSZiLINBPxym7iV9p7TnTZ4IfeSipkhTpwT5j/rV7OpeVNM
	+bc9KZiqg4caQ4Az6SE/io+9wyXJ4dVQaQdKggODFRwevX/AEt/YvYExOCGci
X-Gm-Gg: ASbGncsFm4suFWU0OWbvbralLWgg046GhmlvZ8UBr/NJ6FBm2elGUHjiptDSy0KnBbF
	dJmC2+VE3EokOSc067PwgMIRRBRJQbRo1syERj5qq4pzFSYUQ0kVIvPPtyn3JPQQ+42lzV6oFGf
	3Rw3QeGQO6WRPp/bhl2yI8d9S4zIS8zxDacZMaNz0IGUHEKptJnQWC+YqPlX4QEUbeqkrU4pS/c
	26KHuA3eKsERNmtwxWQttYF34xf5zLz7yjvxU+KCbChmMdV3+ezp6DXdDgrVIP9N5SQrCg9PO+v
	iVMqcUDiEUvB9hqU7ggksxqHQ33UMRQ=
X-Received: by 2002:a05:620a:1aa3:b0:7a9:aa70:1cea with SMTP id af79cd13be357-7b67c29e328mr856155485a.5.1732978082023;
        Sat, 30 Nov 2024 06:48:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwxbiYf/h0mqwD5noF/TiDeFQ4snqAIq/kz1ryhd0nGFpzFUJyvmVK90Wh5zTHPJSe7sVhRg==
X-Received: by 2002:a05:620a:1aa3:b0:7a9:aa70:1cea with SMTP id af79cd13be357-7b67c29e328mr856153285a.5.1732978081565;
        Sat, 30 Nov 2024 06:48:01 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a83dsm285885666b.156.2024.11.30.06.47.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 06:48:00 -0800 (PST)
Message-ID: <9957783a-3066-4dba-ae9e-d52618fef964@oss.qualcomm.com>
Date: Sat, 30 Nov 2024 15:47:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/4] arm64: dts: qcom: ipq6018: add 1.2GHz CPU
 Frequency
To: Chukun Pan <amadeus@jmu.edu.cn>, Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>
References: <20241110140019.3426181-1-amadeus@jmu.edu.cn>
 <20241110140019.3426181-2-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241110140019.3426181-2-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Krm81uVP8HtRK9PDZqJhUI9RqJadu89W
X-Proofpoint-GUID: Krm81uVP8HtRK9PDZqJhUI9RqJadu89W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=724 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2411300122

On 10.11.2024 3:00 PM, Chukun Pan wrote:
> The final version of IPQ6000 (SoC id: IPQ6000, SBL version:
> BOOT.XF.0.3-00086-IPQ60xxLZB-1) has a max design frequency
> of 1.2GHz, so add this CPU frequency.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---

I can't find anything to support that.

Maybe Sricharan can help out here.

Konrad

