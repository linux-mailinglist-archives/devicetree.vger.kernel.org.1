Return-Path: <devicetree+bounces-238034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFD1C56952
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:28:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B7BB234A7CB
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 09:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37EEE29E101;
	Thu, 13 Nov 2025 09:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i5QEFRD1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="X92KHcee"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABB4D27B359
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763025771; cv=none; b=q0mRZL07F3o9vpDeUtab19+BeHghrmWWYa2j4Fxyy+roWQvbkivYljbOJ4OgV4zOj7oKpdx30oq8r9q+PbCsrmdcNcwtKcZX4cGYLuBliVHFosuMGh11drfbD8J2NDJVLOCkGZ6Q7t1KbKUpWc+LA7c7HXjukn0AmpuqP0XkUtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763025771; c=relaxed/simple;
	bh=W2BfkHtgH+1v9VUb0JpsQJoWkwy7PUVQrLyLNngOu60=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SfEVQpafFg4DBSQGxaXNy8y457ToD3wEKmWslf9WJOJ7AdPPQC3rM8MRxZ23YfdeQPGBX8rfZrrkhEeLCxUECxnGPU7MhLRLs3h/RafjsYIJepUHgFMZBsAmU2M8/AN2P9ydcBp00jI1rLwPMW4CI3ayuKFHsOct5qkwveZtcTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i5QEFRD1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=X92KHcee; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD4xYhk3338272
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:22:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MDrtrR8Qqt+4GRaR7Lz/ou1frFaZigGu4hEdUoSZ4U8=; b=i5QEFRD1mKAd4wFk
	zbFAk+IzuBboErGBOlwl9YBTXPt8VN0f5YBG8NGbz+/f37VHOANJZWd8zAaKal3F
	17onAaS4O7MlRVRaZppTv2jo+p86JatKEt6GfoVcL4HoSCsrKa4c1x0k8dja4aAz
	LxXkO/OcAYHxDJYq34K6L8ppyN00LOrFjw+SKSJMhXXQSSLGZoRKaQH6pvN6nNzq
	HmJZZlkSTBBWVjkc343Nj/Ba9an8QS9sA/3VBkqvD87RTNdUyDHSUtkBb3hrWg5h
	BkttYorOBbbMUvGNHJpqNIW1djzWzMErSVy91AH0TYJrdYeL+tle6oW894RuKdeQ
	aDHyhQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ad8sa0t5a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:22:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8906754b823so20801085a.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763025768; x=1763630568; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MDrtrR8Qqt+4GRaR7Lz/ou1frFaZigGu4hEdUoSZ4U8=;
        b=X92KHceelQ1jW+VCMNtcdxfyINwFrJG3ERwoovoI185wzTitflH/suBAKtDfoHpLYF
         b7v7lKNvLzYRsgoopfLjr+KtBkgJiuJSLvtEa3fmIIacwfRfZOwTgPb2qihrChy6HliY
         n0Kwz6EYLVrFp8ujyrh4UY6+LR2VMyEk9ja1j800E+EvgyjnWwHtifzOOEQrbvo1lgWL
         NSfafh7Ou9dGNgl3UuBWESBUi6v58xa9T53uJQbkf0TvYhAm6yY2sOtT0AA0h5/ZyaSS
         sR7ceygz6PmbdE0hlg97QBPEJZl1VtiXDLWL4C/ht8TYF0UsQbIK3xsXFwn8CpU9e5jg
         1o7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763025768; x=1763630568;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MDrtrR8Qqt+4GRaR7Lz/ou1frFaZigGu4hEdUoSZ4U8=;
        b=GVl4S9J6DB/+/Yt17e5To/lRgGVzltx+E0c7VYaEJG+XXlvhOZ4V6rn3vZh39NJ2sg
         lUF96LaprW8SbXXv6epZajra1rKW5gKT69W5KTGnH5T0P8M9fmx3CBCOun0HixNS/O5t
         zkoTIiU4QfgzjFR2XXkRXlaYj8rDjNyT/bOLLaArmayvwBve+dDfU4YJntMBEa5kV7Bx
         n02kuFHuFPD/FewgYdzHBJ36yvw+uUKuZ8tjPDPLJvZPpF49/qmAywVaIc3b18dO/bJO
         v33aJKD2po5Z5f6YTZojNwVkBEBvhe2HzbtwfelD3GjCCTGd4s21LP0Sb0P5c61MY+/V
         Y99g==
X-Forwarded-Encrypted: i=1; AJvYcCW3k1VfKDZwARRAEXfrT59HcYoFUNYIiCfGMrTo8p/azBGKWR0HL1bB6dSMSLPU2ejViymsc7jvFAln@vger.kernel.org
X-Gm-Message-State: AOJu0YzSbs3+apOYDt/Sy+hUp8fZOxZ9dXYA5d9L6e90YLIY+YvvMIEJ
	uPU4l2l1nKdTLtMq/3AK9UuvkKlHniqvTphd6cyUuJzE4woGfk9X4FDglY2yt0b4OxgKgmrCVye
	oLvLXKvXZhg2e7iQ6b2MCnzY51eZgI9c6ysrjU+vr0bEDzZQ4XV4/Q2jOXLLpiiG2
X-Gm-Gg: ASbGncvGfUq7SZPKXkwz7amIcwDyVi8IVHIu+ey+h5ww6WPZZefVSOTWcakE2PxQTdZ
	qO9jn2hWLPfzbjqQ0GoXXglZRKU5JxEpHgdL9tSmx9XUNz3hdMNVq0Jz22GgL5fF+dC9ORgs+Vk
	g1KmCil9K8sRgpcJ3jZZ5nHNJ/NRr9/ZttQAACIuWsIyTV+exjEpzqFTt+gnF1kb3RsxoJioyjI
	RuNCcDzDQy05w6UVApLvKfU2PIsS5hVbzwTHMganCopMWR2NgCvXQcc3ZU0G9EjNwtgHkuW4Nlh
	R66Xa3lpOLG+3N4Mr2dJgbtCE/y8FRkBMXXSVtyS/HdwLcTvk5nLLQHWIhdHUyM6MSLoMIw0as9
	S/SErvkaVB/BFFdEEw7tj/Gd2wntQy2Ed3IZeuZy4LitHmb19hkyDUAT2
X-Received: by 2002:ac8:5dc7:0:b0:4eb:9cb1:c290 with SMTP id d75a77b69052e-4eddbc9b895mr52452801cf.4.1763025767929;
        Thu, 13 Nov 2025 01:22:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGHPU49ojKQmipJqKygsJf/LlELHlgbacm9oTO7EejCNBiPlgkZGK9XGeiz9+g2IXa5o95g6A==
X-Received: by 2002:ac8:5dc7:0:b0:4eb:9cb1:c290 with SMTP id d75a77b69052e-4eddbc9b895mr52452561cf.4.1763025767491;
        Thu, 13 Nov 2025 01:22:47 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fd809d2sm122683366b.42.2025.11.13.01.22.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 01:22:46 -0800 (PST)
Message-ID: <896b9ba6-c8eb-4bf9-b6f6-da5a05efc816@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 10:22:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] arm64: dts: qcom: sm8750: Add display (MDSS) with
 Display CC
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Jessica Zhang <jesszhan@quicinc.com>,
        Abhinav Kumar
 <abhinavk@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251112-sm8750-display-dts-v2-0-d1567c583821@linaro.org>
 <20251112-sm8750-display-dts-v2-1-d1567c583821@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251112-sm8750-display-dts-v2-1-d1567c583821@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: PDN3MvOtHgj3kGi1JWdws9ZlhsAFQMtw
X-Proofpoint-ORIG-GUID: PDN3MvOtHgj3kGi1JWdws9ZlhsAFQMtw
X-Authority-Analysis: v=2.4 cv=dcGNHHXe c=1 sm=1 tr=0 ts=6915a368 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=IPDGKf_5clKAjOb-YU4A:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDA2OCBTYWx0ZWRfX7oONJaFUFEW0
 QwDb5uHLEoDC/4AvHfFUF49R0sBwi8cFQn0aruCZJMeKsFt74BCzEzBqf2FHOnX+qcQD1lStcC6
 Y/BwX73TK2z+TvXwdf6knMdvyBzaeeAJ7ZEbn8eKwTsY1pn2O8SxJbATUpyS5kG3v8d9m+IZXkl
 0bwTNQJrKNK1hnbrzHW1ZCleKRVlzcJ1ponmwcogjNeuKjv4z/BfJJ9XV/+W9M+/ZQeIbanC5pk
 RJ94eOEt190jrefoz68vTbqHBalAxlD4i7TzM9AFWQMApKPnB/lOxtS6gp0ePD47Kjz6h7rANpP
 e7dOsNi8OYUvgFmR1+nir+rC8JdYjHnjOoi5M0EgKUGmCabQe1ADxl/H+rxKLMtkZL6NgRDPrg9
 dQXWWC81FjTiDVaQ4KPdk0a2glScMg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_01,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 suspectscore=0 clxscore=1015 impostorscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130068

On 11/12/25 4:02 PM, Krzysztof Kozlowski wrote:
> Add device nodes for entire display: MDSS, DPU, DSI, DSI PHYs,
> DisplayPort and Display Clock Controller.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

