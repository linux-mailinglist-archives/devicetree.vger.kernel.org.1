Return-Path: <devicetree+bounces-257284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BD2D3C5CE
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:44:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DC4A2722183
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79BF73EDAC1;
	Tue, 20 Jan 2026 10:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XqbplcGm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JZCY3Qcv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEEC93EDAC6
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768904940; cv=none; b=VAVnRBUWaiLixd+DIfCN0DztgMAO17ejFdQyiS8kQsgyFTZd+pjOk5GWO0p/qr+Oi3xja6wMIRXW/W/VW4Fu0X3sa38hwylqFnsOd9k/zWIhs9GlaaqixZqWqQy/y7YIZdE1FLTOu6YvWTQhMGZ2f/XTu513LA55Ukb6D6Vsl80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768904940; c=relaxed/simple;
	bh=L1TmdJo1ckZ9gBLPk7jpli633KbtqW/BImSVBp/dTKY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q9ElL8BN3POG7Ue0NxXa18yMbO1wT2OBsDTLsz9l1JsK7DwL/6AGZ4r4VfahFWibvzuLz1bmOdxL6D8naJcYTVZ8CVelc1sD3NV34na0qaHKDd45+Ix9COkKymv0cHa7ddrFfGEo9xj6v/ZsSytAxdXlyHFUe/OVhAW9n4WA9o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XqbplcGm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JZCY3Qcv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K9l1is1347160
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:28:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EyrwdFF/bnoi6wfXW/LmdcxN2ggK+WPvoYGL0cYbldY=; b=XqbplcGmdBqo3E2v
	c2o1vLqq8S/0+oU3rNrRFGKhqUK5nEVtyydmz4I5t8qnFFwfs8x8pwgIZHaLjMZ4
	4m32uTSbvJ+W7lgPf9PX8NeFYbe1JTGQ/zjENKIs43Kbs2gcdoQj6fw/R7S6jFa+
	VbMV11oLGTuvQEBGbfsh3CWSPUgM+KxTWXquYA83qEXXSdbZnEBVHjCrw6LbH5ba
	8nOBONyLTg72knw9CmqQIIk7tN5Wi/5o6kgatKZ3+QVWJcwhVhrlAXhvh4oVfgFl
	WLyJeLybPk5E9LzX9TvDvpX7CSvemuRz2mkIixuoYnHTNgshDE/s8Yx32SzYChmK
	ZLGccw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsnpdjvu5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:28:57 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52de12a65so134689785a.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:28:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768904937; x=1769509737; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EyrwdFF/bnoi6wfXW/LmdcxN2ggK+WPvoYGL0cYbldY=;
        b=JZCY3QcvOGPn5h/IbAElB7AqnLYLd7O9xno0iULLn6gazOIzLwjX6H0IecesqNqN3R
         qCiPU+4dOJ/rBblfYvV8veQEl7fcUXHIPihv1jwCg1glPFCggcAa7SaQwkAiRkgNB/xj
         4aWUd2o16Rc7HrvVGU0I+KEG7Ti697POe/Y1vOFT/i4HVs7gZswb7TgGQ1ZDG5cl9Mng
         I305nFIjHeboGPsePmzJsBZGDHW8XDS3Xu63YFXWo8DDq2Z5Lv5UChtgHm+BViPecME+
         DpVW1a7bFKf3r8JOSEhd9wlZ8uwHOdfvrvSaMhskZGGwx5ZCij2xD/mqn27QFFnQFJuu
         mCFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768904937; x=1769509737;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EyrwdFF/bnoi6wfXW/LmdcxN2ggK+WPvoYGL0cYbldY=;
        b=Z9YonFOxPY+Y8+jnWE0UI2TzxqHZfkcQVXeEe/wsLnCQ3WdRBZA9FZwqumbN+gDY8r
         DI5j6Dg415ITk2amyaPWd9dV+tFLxXOoy0xz99UjKJw4WcE5AufY8Xp7IPgbvxF7AolK
         XpFZ55JjepSBwbBEkd8j0cxfHBCg7HytIMaSYzG2Fcf34KivprMQzBgk2h2sB8tGXmlO
         v30dEUQSwX7OcCYRPgXk5+q6X8DKq5D/rRMv2XxdIkdu6d8o0YFoUxqgjOsMXyJVvxPa
         147THVsody9muakcp4ae2wgqWi2tzWnLFDKzMOigU/5wqNpvUJKL4uOoP42PeMnwsX1D
         S7Xw==
X-Forwarded-Encrypted: i=1; AJvYcCUQROAQqlDbjZA2nj8uyYw2BCs7vZZvHZ3znyphrZrHCp6g9ZX0Xi5uYQcWUzN2O6joUrgPgxSpZiHJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz64dAVbiiSSRqcpoOsbUvr8mGsEuHiz775jzzoHThWYAU+EwZt
	PvGxQXSJ572XxPPnaQ3FzAgOibHpzGl1fDo4cwcnlp7c03as1z6bjQvS24NHbhDM+cFh6qNdNze
	IqaYR7ereKWVyItEe9OK0Dduuj6+5zSGC4fUZADBRUvD9TPbbnshB7ILIrA83TNXj
X-Gm-Gg: AY/fxX5hz9GJ1ZTQ+IY9k+sKwTTGlKWY4jcD058N9xh/TntNISloJOzWLFdgraPOb1u
	4ghgHIHjPxmshM7av9M+OgC96XWidTMBZtQVw0HAuJMcKLgC0yTc7LEth+wEgWSMo7X0kRde66Q
	P3BpWsvv4YNkw3jyF2KEHkffZW+r9r8TwCy5ajhj1JlQNoVHWj+pS+7LA2wouu2pTZ7xXPlRpOh
	93og4DxufJgsZtsVaSwUmRJHDvBCizDy7K/FzRC4czO32hpeQ23Iv+IFPl3iUzslq13hYUC+09P
	HjCtu2MWSZTiKGAJTdHLlPmCPNEbmSxDgEa7Y+NOaRjWcGbCLWabLXrPEA6SQDNZPAa0A/8EaN+
	Srj++qsDJhTQrPp1IXNs97LXZyF8AG/ZpKMEvFEp1NQQvAfOnN1xJOwsIva6MPkF47Ks=
X-Received: by 2002:a05:620a:468d:b0:8c6:ab77:f95e with SMTP id af79cd13be357-8c6ca45e8afmr210731785a.11.1768904937086;
        Tue, 20 Jan 2026 02:28:57 -0800 (PST)
X-Received: by 2002:a05:620a:468d:b0:8c6:ab77:f95e with SMTP id af79cd13be357-8c6ca45e8afmr210729785a.11.1768904936529;
        Tue, 20 Jan 2026 02:28:56 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795a2f1aesm1388258066b.61.2026.01.20.02.28.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 02:28:56 -0800 (PST)
Message-ID: <9d9f3712-75c5-48a4-9db6-095d3297473c@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 11:28:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sm6125-xiaomi-ginkgo: Enable debug
 UART
To: nathbappai@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260119-xiaomi-ginkgo-features-v1-0-3c8fae984bda@gmail.com>
 <20260119-xiaomi-ginkgo-features-v1-5-3c8fae984bda@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260119-xiaomi-ginkgo-features-v1-5-3c8fae984bda@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NtncssdJ c=1 sm=1 tr=0 ts=696f58e9 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=xHxH5GpVV14gQb3VaR8A:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: GKLNCU1oZFOtzOe5BTJsY2psFM5NLF9w
X-Proofpoint-ORIG-GUID: GKLNCU1oZFOtzOe5BTJsY2psFM5NLF9w
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA4NiBTYWx0ZWRfXybJDxxiGljHv
 PgsH+ApMXnBR4KYpfbZxOC8Jc+v5yZ9InyBrAeq3Nm3hm3HrSdY1dDNlkEytylRQPmLRQJL8YYV
 lqTq7gpK89Dw4ufJh+JcDlryOJz/g09Mz4wtbN8yA1/4udI42UllCqRpneAVisS5RH6Citvt69u
 6OLdexp2tFoajK1RGIsYQSy/at2ZNGkvROXsH81Iy5Id0p7Dju0zn4IX/FE/ZcZ/xSwNfa9R3QB
 3X4R9mGdNDoqOyVwj+vWS13qt0O6s0sghbYnfE0bwSj2ArKiA9JpDTMC/4vEi3JI1ymfP5Bdq6U
 7NdJXfgdZ4xtF0HZOzob8EhW/doXp/te4cNBKjZ2KgmD9m46Njw+nnHzusW1kbLOUmKxhd93zHQ
 lcO8VsIUDh70cuOuUYpij/TItnWOflojPEhD5W5mNaEHtgPF9S3OCxduCKY/aA/jrnRXbFBtXIs
 ASOEL1uDCrI6Fr7k81A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_02,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200086

On 1/19/26 4:13 PM, Biswapriyo Nath via B4 Relay wrote:
> From: Biswapriyo Nath <nathbappai@gmail.com>
> 
> Enable the debug uart node in xiaomi ginkgo exposed as test points.
> 
> Signed-off-by: Biswapriyo Nath <nathbappai@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


