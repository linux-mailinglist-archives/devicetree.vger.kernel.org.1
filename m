Return-Path: <devicetree+bounces-167511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EA8A8A97E
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 22:43:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37F98190279F
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 20:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 250A9255E37;
	Tue, 15 Apr 2025 20:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LZMjSpdw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70AEB25524A
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 20:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744749813; cv=none; b=SlDdXHQzsorcinfR1B/rcc4EdSGPv9Tm6hOgcH7pVX24pTD2ZUpDCcNc2WWE1f1Ynz+PIho39uZHqo14fQYyi3n/WRq6pjUwci9TR4EoPAmmzl344iA68tG7KjNfbDtEI3vBpvPF8/iEa39oaQ8AGyI9nZAmNINsr3qGYuy3lwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744749813; c=relaxed/simple;
	bh=DIs1XkOCqzlJlUyWOPVpcWbyCPMNGrSnyyYnEYKKMxE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p9xPE7sxnofkiRYROwA/+WPOg+Czh9Bedxdxzjo8UlEqcSiWpTd1X8cJIZa6fQN14x6Rn2aKm3CQlkFMgmJi4sDmnDzLnj+9sUQWz9bPGQ6M+GD2jl2F6JscWXR0kDgdQd4e5gWYUt2++31WFCrIYr3C36bFzB6j45LA4UtcJc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LZMjSpdw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53FJ3CTM031756
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 20:43:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aODywDDcIKzpvI+UU5+uNZ7iuR1ZYrqpVT6fl+5YQcA=; b=LZMjSpdwhUvtS/m/
	8MbTsRsk3wXOAkX3myQHh7dW7geAVv0gm11+dt4t9a3nazS95P7QfamBkg2vryPR
	fnb2/WPeW7d4hhL1iD9hnyX82+ihExrfcXUgtaRe7bxCgNRt9cCBN/EdpJvJc2yR
	Gd5pHFALyGR0PmSqo93f8SOdNSIkAx4Q9fPq4SOzXxF9Z6OdZbFR5x2AYeWRsh5+
	/Cf81HUJbmFqBXE0D5JDXGFGc/I64bmwjEA2NxZ6E3pMyoRtn4jH8opWPAJ28ZpO
	R28mHBUxYc+MpJIVUMa4ewOZW1egb08iPZFb7C/HZ/Qv+3A+B7vG45sabyuuuvj0
	FmD78g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfs19c4a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 20:43:30 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c545ac340aso47122785a.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 13:43:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744749809; x=1745354609;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aODywDDcIKzpvI+UU5+uNZ7iuR1ZYrqpVT6fl+5YQcA=;
        b=JSaS4uQ7AqNXqb4tQjupdu8rpuXLofgWBnlXIch0cUxj5mwKUnHhDGMS2apXGYj4hC
         jcaPoD6VqjDP3XGJR+tLW+04GPSZI31fQPUndDs6fLoSqr5VgStL0C17kQbZqOXckKcq
         tR+5xdzLFPKvyGwARIjF5A4Kq7/PopKgdrTYs5G6FbRDLD+w3ktrJuesCueIfPAn5bXK
         rLfTYQQKFrSGYHpMp6huq0DVisyqQNGDs9DZL4kmxrTI4OurIVlwRnFLlUokDFDI7ZMN
         BBdysQwlNTvLVK1AwQpSS9Mr8v9w2FKK//Ef6snX8tneCym4fip1WtMePJYWaTlDGi9Q
         mP2w==
X-Forwarded-Encrypted: i=1; AJvYcCWFHFLV7fbuhRetSyi37UkyOEh7HjzBdAUixjuZN4Pw9LJpaqbUt1D+kirAgCgggy0TEnXiSDZ6OWuw@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3J+Mec4Aons2w5+dXRJ9/AqK5SfSQhANSfwny/xio7QQP3FPE
	FXOH1mQGYIBC2vTsZYCnlIa3iLevy8roObT1CEmH7vISBSYcU1AQbQPQQiPKYVyjdYpPf44DoYF
	yQBxwLs77TXfbsiShUAUfZKOmGI9jguwfKR1dU9nJijr28cMxBn3zevUK7+RW
X-Gm-Gg: ASbGncvixR7CGsERQ55eWTsMORACSTVWxU9RMg5u9b9U3HmuVZnZTGq/3xptKEAjO5u
	CBixpeqeoAJXbc63A1udOy/BsXnoN4xgbIb06HA8xiNaqSF4xEu9SaypkhNhBZaPhfuiB8R5XrC
	UWVrpRe8SAJffcU+hncCcBIQAz6vK2OWz0hC2EDRw/hEms1n+HuWgMT3hb9cG5Bm0XlrXuCgFiy
	6KxprQUyPsUSpMP4rCFVcAjKpFqlpGBsrHmxjrl0/rCz4rJRL9tq73AHMlo1NcN7rDeheGWaLYn
	SSX1pivhWKj8/WhdhYllJD4mqvkTgqGy4oJaOz7crcvsTLpm0rdsckN6qIamssgj+po=
X-Received: by 2002:a05:620a:178e:b0:7c0:c42a:707d with SMTP id af79cd13be357-7c914496cffmr41175185a.15.1744749809374;
        Tue, 15 Apr 2025 13:43:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGEcVKkKGEyqZcoH06G4xwr4vh/uAdYKYZAqF5jvGP0a9Hm8vphz6vSlZ0OwEuZu3i5XW/zMA==
X-Received: by 2002:a05:620a:178e:b0:7c0:c42a:707d with SMTP id af79cd13be357-7c914496cffmr41173085a.15.1744749808998;
        Tue, 15 Apr 2025 13:43:28 -0700 (PDT)
Received: from [192.168.65.126] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d502618sm1561570e87.107.2025.04.15.13.43.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 13:43:28 -0700 (PDT)
Message-ID: <186c7c60-338f-45e4-98eb-ff1a87d0c83b@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 22:43:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] arm64: dts: qcom: msm8919/39: Use UART2 console
 pinctrl where appropriate
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sam Day <me@samcday.com>, Casey Connolly <caleb.connolly@linaro.org>
References: <20250415-msm8916-console-pinctrl-v1-0-a1d33ea994b9@linaro.org>
 <20250415-msm8916-console-pinctrl-v1-3-a1d33ea994b9@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-msm8916-console-pinctrl-v1-3-a1d33ea994b9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=P9I6hjAu c=1 sm=1 tr=0 ts=67fec4f2 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=bzQ5Osq_D6y9_I280vwA:9 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: iQPUePdAsaReq93dhgDgGG8uDe8oabwO
X-Proofpoint-ORIG-GUID: iQPUePdAsaReq93dhgDgGG8uDe8oabwO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_07,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 mlxlogscore=658 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150146

On 4/15/25 3:52 PM, Stephan Gerhold wrote:
> Convert the majority of MSM8916/39-based boards, which use UART2 with 2
> pins (TX, RX) for the debug UART console. This adds the needed bias-pull-up
> and bootph-all properties to avoid garbage input when UART is disconnected.
> 
> apq8016-schneider-hmibsc.dts does not use UART2 as a debug console, so it's
> left as-is in this commit.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

