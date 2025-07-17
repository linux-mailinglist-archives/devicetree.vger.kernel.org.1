Return-Path: <devicetree+bounces-197469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A2799B09644
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 23:06:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C73D07A8876
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 21:05:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4099622D79F;
	Thu, 17 Jul 2025 21:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fIMVvM1b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01CB21C177
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 21:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752786406; cv=none; b=lmmkU8+SZqZhlSijli07Y/BFHSl7WPAHp+wkoLpPv7860cEIN6rEJ5f+sAi/cP0+6zHkgLmdYQYFabR1aGWiVNOm8u8sQIaejOOwcEHKlRfb+peHgLzsmMHYH4V28lb7nMR1Nrwb0tnudkG3oCqdYlaFuxYUc6nSlXwMksVw+60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752786406; c=relaxed/simple;
	bh=uhfsvd6ujR5IiuRkGHiGSpUgRbJAikw6tYn5QgEz+VY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XZPnVutYRFUUSYdY464zKSfX0MaahEpzWuGBUpsulYcACima/UDlKd4sx9w4A+mUaDlW1hcnk5C7LHJ5LsGJEkx9OrpPpzTaKmFKi6cSQq77I1swAxxq/7e8T2B7y1ZgcChumDgGhVMl2MgZ9YdADoLFsJFnnLovZJPl0QvNHGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fIMVvM1b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HCC509022405
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 21:06:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gjye/euzJtJqLLETvGURwJ94G0Q37cEw/XWFQryemcE=; b=fIMVvM1bN1hE4eUK
	WGzlKQawrUeXo7QK+Ku6DfRkL9mijak+Krr7T78veaG/n+2cu3v93hVr3JsQ5ME3
	cXLeCvcFfBgaodGi5fGCWH6LSu6KmvUVMrvzmNI3+sn0hvy/6RF4XsxtvDzY51m+
	kjvLDcteG81VEZOwVTB5gkcp26i7buKXYdP3h4qqW9pDz67Wb1JaThOwzNAhVruR
	SWd7LGbo5HkjnpTs0FRDOSyuVu1fSs1L4OaHU6uz1gm1ABKhY0RyXq6ZTeKy/6Kz
	G3cl1nZNOWZ230vSSGE22EyN2fimf8eiLR1KADQOvSBbrwiZgqE/qaD2L5kdgJ5y
	04lUug==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wqsy94md-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 21:06:44 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e33e133f42so30803685a.3
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:06:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752786403; x=1753391203;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gjye/euzJtJqLLETvGURwJ94G0Q37cEw/XWFQryemcE=;
        b=gOfvhnU63XrAnnMLJiIRPcDwUzc2xeHrMWjxESqXSVPK1hdZQRFsy8NiVv/hHrs8E1
         /UEpuxlb6+NWFxhEOjpWIUbyuHtZvKJEZnBH6A6bg/m7fSkXP4eU6NqILBtxdwsO/vkR
         Pkx0GgZXbeKw1gJ6Io5AKsiGLRuANjqxTqI29vYP1u77UtiNEX9zfFizsooLxbLTN38p
         MFwNz3PwJCxzNmY2RSb0OdKOYFjwX1KuV6qLfAIIB4A2vGu+7TQolDJ0nS4R3u7Mbb0Z
         1Lc8YoeOql7W7x29Ll2He/4J5k4tlWraJ9b8lkxjXiQ/BowkMbAc2kvLi84oHyN1Knb2
         XYGg==
X-Forwarded-Encrypted: i=1; AJvYcCUIYaIpN4g29bUvff1egaSVkt9FL35fqoYwEyVJP1a/6erhn9pAv45Y1pElKE+U3jalA9qWsUVuB7ie@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd+f6TXFnMJNsH7kIGSn3yQymu+UQOb++eQkxoBnnWJ/7+Y7JG
	B/jqJq1YBYXNM/Og4rcR4TC8pBS08iMFHQAKNXVfAan9Y5vwEQcxgHhhSpisEjZqSbT3C/N1meN
	D/tt4RlLgGtmmrhVxTFEzJnxx47/6qWA1p1Q3UmTl5hP1HqDldF2iIsV8XN+0/yQV
X-Gm-Gg: ASbGncuZ4wqJ8rZKV7Dl/GzfIWsHZElqByO0EaFXNOooGglByXs9OVVQFyNtBUqZig1
	WMTHeP2K6hIymyEwZwFuER6p651m4kk54VMFQN7PJx2MYZWzM9qiuqdIKJ+YoxoxZ6cktoBjgAD
	+CJpsbymq8w1Oc7nFgwNt64kLXGtFkROFQ9/Yho4WmSYMHSiCA3y4rq7aYtNdENJZoJ7Y8OXMUJ
	jODDUdSnl2Tubaz8Iv8AYifK8nDCTbq5/T2V3zIgq98ZQURSee+nK4qVNJkT76ABZEwdTSK7tKT
	aV1jsxBHBTY7ssfXqdF/5M8tjdTd76hTRzPuKjX5UxMKIZCqtoSDbRLw8XXpi4gpLjrTXTFp2e0
	PwkkLkI9SkdNjRqKd0RO/
X-Received: by 2002:a05:620a:192a:b0:7e2:ee89:205a with SMTP id af79cd13be357-7e342abd519mr451825985a.5.1752786402708;
        Thu, 17 Jul 2025 14:06:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHuPa/yRCQICTQrA+jm+Q73xxpZUEJk2US/0cdFi63bdkyvw+FC7AgcXaKulKKmsTwOdsW8rg==
X-Received: by 2002:a05:620a:192a:b0:7e2:ee89:205a with SMTP id af79cd13be357-7e342abd519mr451822985a.5.1752786402252;
        Thu, 17 Jul 2025 14:06:42 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e826461esm1427290566b.100.2025.07.17.14.06.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 14:06:41 -0700 (PDT)
Message-ID: <653da558-9dff-442d-acc7-65a1c0f84494@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 23:06:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: Add PM7550 PMIC
To: Luca Weiss <luca.weiss@fairphone.com>, Lee Jones <lee@kernel.org>,
        Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org
References: <20250709-sm7635-pmxr2230-v2-0-09777dab0a95@fairphone.com>
 <20250709-sm7635-pmxr2230-v2-5-09777dab0a95@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250709-sm7635-pmxr2230-v2-5-09777dab0a95@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDE4NiBTYWx0ZWRfXyfTN0cfjzbpd
 JK6ntyycSgLo8buOy1BayvFHK8bK6Gyveu2maeT9nRZt2Y7sMnziOtLfBCfUvg9n4iXbQ49PpnF
 caKZtRvUGGZ8iMWcKofVkTqxez/gYT4+YcpZK4rNapYBqu2HmN3ns7kpvYVCaopaZMXtLGDqEpX
 csRB2lkd2hI0EoxbWLl83mhbNi0T8HM9/uRQ3ANHk0WAeVLa8NjzRAUnv8DHSN/O3jF2K0aT6HG
 R2f35HIPiaDznFN5eKY7BCdSzo+eVDNhVikMY/1B55CO7CnTk1oP4UNfXS04BcnnEqL/n1bp4fR
 ELqpdHo1jV5E0O4dS5HfXF2eLYZmsnQjrSlgz/CJAGgDOTxau2vdW1r3ueQOf0a58rAixzlfvQ0
 8uB962Dh9rw4m2k5GQZQ+SWzktHGmPdfA2n2R2KfH/yODJYb4bSzY7Z/Thx6OdBBtFdJzS8q
X-Proofpoint-GUID: O1cHmbtnQcwO0w6cj7dQoEUFkQqCUgOh
X-Proofpoint-ORIG-GUID: O1cHmbtnQcwO0w6cj7dQoEUFkQqCUgOh
X-Authority-Analysis: v=2.4 cv=McZsu4/f c=1 sm=1 tr=0 ts=687965e4 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10 a=AYr37p2UDEkA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_04,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=858 impostorscore=0 mlxscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170186

On 7/9/25 1:46 PM, Luca Weiss wrote:
> Add a dts for the PMIC used e.g. with Milos SoC-based devices.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

