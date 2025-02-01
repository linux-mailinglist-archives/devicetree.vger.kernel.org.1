Return-Path: <devicetree+bounces-142253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F02BA24A0A
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 16:48:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 32E881884EB2
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 15:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBD291C4617;
	Sat,  1 Feb 2025 15:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bt428S+3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680A71BEF6D
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 15:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738424913; cv=none; b=tAarxdGj7jqftjEocf/l+OzlP04F9XCzNUY12JPefGbhjzrAPvTvARW6driVBenEnrASfZA43Jxx9ap4bk86Sa3uki3SQedbJSZmo1IkiMkkdpUI3wxFA2cYY4swpNE+UAWxIsWAwR/NbkXkXjEmAjdia1TD6uSNZd0kRORlV+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738424913; c=relaxed/simple;
	bh=uSGnFtAub3eoq47/irBf/Ues9kJZ2R7qUHvedd7kXcU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kr45Cp6titsF+UW9A7Vs7mzBh9iB3ul4Hr8Jm+DpRDjXAs5s8PjyZidNZ0eF2Ky8nsvFZaFs2mGninMyKk4RBP1YiZA7SvO2L/uAjUKGKiWXSDPhvI6zl7Vyqm7aDdbQ+pfraL8vGUfuCqFhD3AH9euqAYCKkx4Neq8ARW8J0Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bt428S+3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 511ESOqE030100
	for <devicetree@vger.kernel.org>; Sat, 1 Feb 2025 15:48:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8n2dQUsAQR8BGbcIRrC/eRUMfmfG1kg18Uqsc42/YA4=; b=Bt428S+3uxH+vEzk
	tnDluDLTVPQSs6ciBolYDkA7uHbbln9oqYOG57YImHkpp5ZMl0letkUDsP/aA7q1
	+4zexevqo/jQRGjiTXd/TwV2XHBkO6VQAYP66XLS+JbTc7QJEvjsHI/fqRuLT5ko
	5SoZO4pbhbCOpqjWnSZ6u7VcxE0jfnGnQbSwntG+h81k4saZ3Gzi1VYMbjw37+uC
	W9KapccKfQZ+KguK95pnyNCX2DgSq50Fa+z2a5yPt5QK4FvsfuL1S42I8YDKj3cp
	8ziqcu38WFZf5AZjyljX+qjL5ndVD6BqWaZF1SGTL41eVf6tAQSbl1NdarzHlQf3
	c3ri6w==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44hd8yh3sb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 15:48:30 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e19bfc2025so9232566d6.1
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 07:48:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738424909; x=1739029709;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8n2dQUsAQR8BGbcIRrC/eRUMfmfG1kg18Uqsc42/YA4=;
        b=WDLvifSEV0Xoup+2zb+hoj5k0FAiIyky5V2uIRyzwkL5NJ2IFZzNvnmKMuz8Di89Ts
         TIOuf/SiqgwGwvS1gWYm2WEKOVgBsRj8kX43pU23p7FcjTVbWv8I3D3HqNz+x0EHVJ98
         91uRUCF+x7iApKSADTzdVQao29J1jRknRmWT6sc1z72GFMhV2ZXipbHnm8PPZQ0hLfqf
         +e5KJAkuE0/lInxwQAflYiOnozEk9UZP5FBAEnQ/kQsraiO0ZfSWNkar7aJZWf7PmL6t
         UffT7wr8qbK5HQeBbuNI7qBFUvDXPcZpWoaycVkjBYKxFQz8SZDY1JbocES1Rqiry2Wc
         WAvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdmy9ET/NBPaYSC7C5hi9FX2gaS6bMb2RCoQHWtB3sgiS2pEAGQ0w+IYPlbuVMQAHYkdEjzzYawlXy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/UvG5vVg+C21D5m8w1wM3qc9w4fmtyjZgAgQ9Wrw/6hd5aPWG
	1LWEp3klDH5BtB8P2nrXQqI5SwBNkuBLREZzXjPCEGGuqamMA7JabpYq9MWmD9buUXUiOj8KSxt
	6HQ7EhQOpoE50OV83uDCUI3qb654tY/Dg8glnMAANivZz+L99x4qPEOhrYUuv
X-Gm-Gg: ASbGncthv+VjpTse11XMMpJffeFRmWh/lGTDD9UoFFUW8x2ETSLzxP2NiIb5U8twCYW
	3MykGNvZsau/FHWPKKWA5KWcq/ZeCe2xnB0ozpmKC2SVPZUXAFm1WNkpZcuXCPOMaz6+28ctwRP
	lj6QbU6iiIO4RXUVF7dwp+JK72kr4H1zFGF0t76CbY1cGxVP4zoUgizdztqAvC6QFr59+V5C9FR
	uPiylDFF/yJhx6a9z72p/P+zy9NqEwm8fIPjMCrvOMQUljCXF+jErnBADdT5sUf8FciVXM7m0aF
	g+pv55jf02iIgKUhx2DtQqRWvGE//qTPzu8P5H2lOTMEk3CSj1zQFFiQlC8=
X-Received: by 2002:a05:620a:44ce:b0:7be:5020:6df1 with SMTP id af79cd13be357-7c009b93599mr574151985a.15.1738424909325;
        Sat, 01 Feb 2025 07:48:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHxPpR9kTBzdbY+SmZntvSpbA0AmhKdf4LITbXaMdP95XvejXet1vO1PHrcj+dARpvQVLwZIw==
X-Received: by 2002:a05:620a:44ce:b0:7be:5020:6df1 with SMTP id af79cd13be357-7c009b93599mr574149185a.15.1738424908921;
        Sat, 01 Feb 2025 07:48:28 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e49ff269sm453716666b.118.2025.02.01.07.48.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Feb 2025 07:48:28 -0800 (PST)
Message-ID: <30a82d74-a199-4ccf-997b-b8a6971cf973@oss.qualcomm.com>
Date: Sat, 1 Feb 2025 16:48:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: qcs615: add ethernet node
To: Yijie Yang <quic_yijiyang@quicinc.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller"
 <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
References: <20250121-dts_qcs615-v3-0-fa4496950d8a@quicinc.com>
 <20250121-dts_qcs615-v3-3-fa4496950d8a@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250121-dts_qcs615-v3-3-fa4496950d8a@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: v8h-yHoC2-Hm-Joln1-eoJ_U95hUdyNi
X-Proofpoint-ORIG-GUID: v8h-yHoC2-Hm-Joln1-eoJ_U95hUdyNi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-01_07,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 suspectscore=0 adultscore=0 bulkscore=0 mlxlogscore=647
 clxscore=1015 lowpriorityscore=0 mlxscore=0 malwarescore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502010137

On 21.01.2025 8:54 AM, Yijie Yang wrote:
> Add an ethernet controller node for QCS615 SoC to enable ethernet
> functionality.
> 
> Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

