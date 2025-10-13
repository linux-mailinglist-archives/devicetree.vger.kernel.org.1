Return-Path: <devicetree+bounces-225808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 004DCBD119D
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 03:35:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6EE563474C1
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 01:35:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32C6B2609C5;
	Mon, 13 Oct 2025 01:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oeZsKP7a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7BD9223DE9
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760319320; cv=none; b=ReaGIskOhLQnVOh1/y4eOOuS4hMPBiZNj/SvUPt6JQUjgfcW9UbYO5sTW/RSdDUQTPYt+JB49BhtwslZTPtfSxlZhsJzCc1qS5NRSxMb+77L+S6pBfNHOxnkD3JkhPrDNSDf6UoNpu3GxYoCVNzh0Nj6xHkakuqT8+83Sbjzt78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760319320; c=relaxed/simple;
	bh=TLIifmYXZsoUZDQIMzAr9TVJTrPPzSLPCVver0Z+1XQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lt1R1DWG/h/23brFKnRfkHMPjyOBXqryTJBQiEKV/yANW46CdErlbEOy2mXNzwGuwCVgo59yXFLf7gUGdflmWaYgykxMhIa8u8n0cBtXupbTqLOl+uAeRovuXYSp+oWUmNQmKs0XZqgByR7lY+6wVrnG70Nv/3iLEff/BdRc0ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oeZsKP7a; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59CLUrVw003816
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:35:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pvRZtGa1EAqu/s2cU1tyWSgB4EnX39XSZObMDz+e5Ig=; b=oeZsKP7aV7qBxP6N
	7BXiJMdcvYgsw5degXI71w8R1X2FFb/0EDYMkCjMXjUNwxhgQH0/Q8tcxBmjJc2n
	BDyiXpmtHZucJpK+ysWtMN9q1PRWseYCuwyYBj9ZfXWpmz9a8vb5B4OwQpqw6JrV
	YbLYQAE/UNvfw/9h5S5s9rimPRBaJMO3p51X6hXmYyFEeiL3xw1IHwpQ1Cv0TxSQ
	RRdlKaIRA1AIcz5lzvZHXZY63YmaLZnpan0NG7QNjC6Skuuwjq6lNMFTrEnFeZ18
	RfXvAaQEuj8u9T23Qtew2FaKEAyfksNmviKFjqrCyYbh26qJX8gatk+YlnU1aNMp
	jM9fBQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd8tvq8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:35:17 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77b73bddbdcso5946673b3a.1
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 18:35:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760319315; x=1760924115;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pvRZtGa1EAqu/s2cU1tyWSgB4EnX39XSZObMDz+e5Ig=;
        b=FhpmTgY1P6RLVzRcKU0AyNmVgNFOQUi+15Ec9v+WD4UVyVhzUg+MN9Z9trxY/dQhiJ
         jhrwfAHfbyyF/bbC/zI/9I++SunavSxDAJZOr8SdnKPMk0FPNj5bwxtNpx16fyU76qgT
         0lP0gB+NM98hvnjL0pomenlyKjkndYxHNQeBrqqQdDRvSfLSLS8J9Zz2gi0kA9Gkmuj7
         USrV0js1hrcaTlltjDWsMFdH7ySwA1X9XyIUUlmg0Yhs089WlpEvbRQERdd8RiEYF3if
         B/GCdSFETs8DOgNLwbRI2bXmwyHd1EAisewDnqTy3zjfCKtpd6ysBx1oC8g3j33mYyMK
         LtUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWH2X9xKwXhS5Iq+sqsBVGkJ1Tpi9RD9ZwGf+1WaXqc8wZ0K1pPwowd1J+RiDNLIY+goHBmVTTbQCKF@vger.kernel.org
X-Gm-Message-State: AOJu0YwgvNrQQLKie+01LyM/yRajlJ/Pun3Tss68SYteUVlSY8KsXLoq
	bmh4at3c84YJ20syVpGU71fWa5Zk015mPNUx+UR7QRxE8O4p9hSOzB/55TgaHEN8Bq4CKqZlOIu
	FV9smwijMm750ajEXS6CFUO4pdKpnGB9CBS+Lb58hY/+3bz76Ronh+xymYQ3+IVqd
X-Gm-Gg: ASbGncvT5MlgToJhP87ZXIwBEaSuERbjJfwPzB2FgowZZMqpDAwAxwQmo9TbhkD1Dma
	E0f7FApkBHg+kpil+5w7CuKtHFwzWxIzPp8MESiOTL2psNXwnfLj8mVMYbcDIsNCKUDRH/EDA+Z
	NpDYvs8uicR4NEs36WU9mLGNYddGPXoD11Dc6XAq9W28ceJMQXWpOX+Fb6Vf/8NatTMdT6aNst2
	Bn9Rx5T1o+6170ojd2x7dQTmHZvVi2ZcjMnzgGeo1kK/Ds4HG/KHA88lNzLg9+8dI2g/QqcGZ/F
	Xvi2E6ImnfjC47FhkHFOkBoqR/rr5BPqS/uaIs8YjUZ7vf09OHxjRslwaABA/CYFM/HdTJ2qbWs
	o
X-Received: by 2002:a05:6a00:3998:b0:770:4753:b984 with SMTP id d2e1a72fcca58-793998483b7mr24733195b3a.16.1760319315159;
        Sun, 12 Oct 2025 18:35:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGH9hfoH8Q4uLbRfuw74qI/5V0wKxXaXaZlksargHLpNt/wRLK8+zJYUZKvoOuGl9lpjVTwsA==
X-Received: by 2002:a05:6a00:3998:b0:770:4753:b984 with SMTP id d2e1a72fcca58-793998483b7mr24733171b3a.16.1760319314749;
        Sun, 12 Oct 2025 18:35:14 -0700 (PDT)
Received: from [192.168.1.3] ([122.164.228.230])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d9932edsm9522670b3a.73.2025.10.12.18.35.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Oct 2025 18:35:14 -0700 (PDT)
Message-ID: <f1b5caae-8544-4027-9669-7c92a33f7c61@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 07:05:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: usb: qcom,snps-dwc3: Fix bindings for
 X1E80100
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20251013011357.732151-1-krishna.kurapati@oss.qualcomm.com>
 <b9befe47-b0c8-4536-83c0-311dd16f2e83@kernel.org>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <b9befe47-b0c8-4536-83c0-311dd16f2e83@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: l2ADj5aawyk-ddnt8T258wUfQFGXOw7x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX7bobRbtDe+Mc
 IBqxXtn75yteCb6vZnDQoriBPN9byYtVxPfWYlnl4hNAoJ6PFwwWsonGONAHTgYnTg8NfmoJAPl
 gG2K8tjsx2t/O0l212cimyireGRPnh/rlweLB8GXpKm94+PuX8p1PeTx2Ak+eyEtE+a45+tNb/w
 F1RBPl6FJkmupgbpoRS8CsVpLsiubAfOb6jtGEQFkEJ0SNuDRNiLEP04zEI3KKZVbEZ7ZWxCo9K
 APt/rqmjVAWIu/Rgk798Ko8reK6WAR/nbdHDHtJmtx4JyXr+JVJ2eGrwCK7DLsDqDWwfWCM23/S
 3QeLcNb4rjfIgYGhqQa6N+yPMQfkj7dIgUfgGgG+HNDhbzjQhxpLrQqZh5mtjFhXZRxywl0sWsF
 Y5f6vkI4u/rwOxBrdLDSGCbjbO+I6g==
X-Proofpoint-GUID: l2ADj5aawyk-ddnt8T258wUfQFGXOw7x
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ec5755 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=8YinarrYfdS0Dhyguhy4yQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=snNKEbK5PTu-mnxKcGYA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018



On 10/13/2025 6:49 AM, Krzysztof Kozlowski wrote:
> On 13/10/2025 03:13, Krishna Kurapati wrote:
>> Add the missing multiport controller binding to target list.
>>
>> Fix minItems for interrupt-names to avoid the following error on High
>> Speed controller:
>>
>> usb@a200000: interrupt-names: ['dwc_usb3', 'pwr_event',
>> 'dp_hs_phy_irq', 'dm_hs_phy_irq'] is too short
> 
> Don't wrap error messages.
> 
>>
> 
> Missing Fixes tag.
> 
> 

Thanks for the review Krzysztof. Will update and send v2.

Regards,
Krishna,

