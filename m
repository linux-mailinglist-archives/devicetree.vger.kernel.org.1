Return-Path: <devicetree+bounces-155649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D369DA57B32
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 15:47:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 56C4A189502B
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 14:47:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 051AF1DE3AB;
	Sat,  8 Mar 2025 14:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TkV8Zhyd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 880A01B0430
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 14:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741445239; cv=none; b=s4MzL8JYUOcS3lUh3i00hLIq5JxIklY3bE0krSVTiovb+aU9SIziR89Jx2WIdOJiCwX4F9OoRDoW8TgWlaggyNPV1jL+8zZvvQaRBOgw+QtncXogWmTW02GEdi/eOsoD0oXDc+FB5XHWAX6uk1ridSb423bunJXx6ZEbBBEfS9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741445239; c=relaxed/simple;
	bh=gsN/xsqpsRkBhcOfZ/prflDYdB4FOnDB1TF1bw9c3H4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QtAT4EuwUc7C4fwu0nJDFMiF+YhGkJ1BrcGJ6AHVBR7j82xoVaKAFbjH3kCVRtQJAh7Wznz70mmFfQW73CQ1+7FBxbWXUrI9eLDli9dBG9Oi10iANBihsxqn/n3PARPkZYBpDC5mds6ZAVnL15w4BQdZhvNlr4+zUhZDaEWo/Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TkV8Zhyd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 528DiecQ016648
	for <devicetree@vger.kernel.org>; Sat, 8 Mar 2025 14:47:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+BjdVXwyw/fx70+++HEMnV+f86rTMIrdIRjlKOij6gc=; b=TkV8ZhydYX/0vKp6
	2i13ngNHI/RqR3PJXemn+VGAks872GbzKvLDZGqthPVU17MNjxWkQ1c9gFzxuhjw
	52Wop2wH9I8H3fakluV4B/dlX+VH208lCgvtRqWxFFJ9iUegJuWFu8+yFUHfs4s7
	xTod/CWH6VGRTHmFKCcgb5AEjXtLerSSX9d59aRroCzwgr6emM4URcXoTdhraEaM
	m5HVR5Ykn1yiN5OdGQyI/4XyUaw4a/aEQAwgr8aZKpGZYX7te6sfBRxRe5uuEz+Y
	CQH8t37yIx8I9tpsYDVpE45cWxS0lHUpm5I10UHvy1Rc+iRggesmsI7UNN4Y7NSv
	7gSNzg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f2m8pnv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 14:47:16 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8fec7ab4dso5688686d6.3
        for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 06:47:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741445235; x=1742050035;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+BjdVXwyw/fx70+++HEMnV+f86rTMIrdIRjlKOij6gc=;
        b=E4gURvMgjl/ShaR5wrIgZpS53wtEyn1l6gFP0ZvV7huclGwRY95lMqZvizv/yR6bOR
         82bhxrmIjgTOGUYEAlwoQNPY9u2+IF/gFwiVkhBsMjw7hWHCi6p/thVBIInN9cDU0osg
         DWyjPlk2pbeb65454rbrBKyLuPUjbHPZYhsGp1i1oBDTEPbtAIwm7Mkvr3CVglQCOk3V
         FhYHyarP930JD2swHcgx/o7etImL9kODfyPTzp20PLSMoQhOw5j8GLZtIcSrlbcSKWIn
         Kj+MYt0cEbgd2b7kLvHeQ9mFqTfh8oQRHF6JbEeknMsgbpEMVKCseU2S1Mh5AyTOztje
         vQ8g==
X-Forwarded-Encrypted: i=1; AJvYcCXaecGGjj6AMhya31PY6/JPNDyLW6MiHIatpG2Nvd3DwmOVufJhYnYYGmcM6RosJI+qTz9xR9M7kMJn@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9cWlC4BLKxIW69y7ajueX31FK4nznS/Pv7wtfynG1zBrk8zUG
	WlpWXHARfMN3VAVx8bZQdSBf2s10sEk9JdaZOP138BaXvTjfMfQeqFXB60AHdvv+sq0AUTxk/g1
	oU4hlfWfCQ9QJN5DQyf/9rXxOUnnwegyUyW3LO21EhzpqkhjXV7YCpy7jMmhb
X-Gm-Gg: ASbGncuqgUpMzcy3EdUcYYiIFCNQEY26jRwR0uYmsXlS5b0d61KOg44KNQfAK+4Mpge
	QRPY4GOIrXsa8ypRJMSz8D5iX4+FQRdRiX0hPX9KdhGgCi2ANgs6IqejjxideUAnTQzwIjhgnQh
	cu2LRyZGfhd2bSkiq2uECm/kUFQEJpSTfIywn5xzkvDhNSWxHe3Cvx3+VolSJ1VeNZguhE0nQb1
	l4uqwDjlAIGNXWQIaDwHuOzqL1UxoN/yLKXTsqWyEUCF+ZqSlZzqRoqhntxw0H81lENfOOU1yFG
	OnsA8oD1F+xhb8KeSVV0jrQOFwQ4I9Tnf2JgdqVG7O1UGFbxij42iTczhaEwzrKLMjZe5A==
X-Received: by 2002:a05:6214:f02:b0:6e8:9f7e:8116 with SMTP id 6a1803df08f44-6e908cccf88mr16721206d6.5.1741445235257;
        Sat, 08 Mar 2025 06:47:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEZfKBeScoYu9shl6LicoB1RqH+nVX7JCyGGylHAdSlW54oABC5nDoOkt3k5yZn9WprsBe79A==
X-Received: by 2002:a05:6214:f02:b0:6e8:9f7e:8116 with SMTP id 6a1803df08f44-6e908cccf88mr16721106d6.5.1741445234947;
        Sat, 08 Mar 2025 06:47:14 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac25ab328b6sm269547966b.124.2025.03.08.06.47.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 06:47:14 -0800 (PST)
Message-ID: <7ffa630c-bc1f-4979-9320-5cda611203e4@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 15:47:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/23] arm64: dts: qcom: msm8996: Add missing MSI SPI
 interrupts
To: manivannan.sadhasivam@linaro.org,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250227-pcie-global-irq-v1-0-2b70a7819d1e@linaro.org>
 <20250227-pcie-global-irq-v1-13-2b70a7819d1e@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250227-pcie-global-irq-v1-13-2b70a7819d1e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: B8VYzR7-j9Pu6lNYds7j6mSznVgmwNQO
X-Proofpoint-ORIG-GUID: B8VYzR7-j9Pu6lNYds7j6mSznVgmwNQO
X-Authority-Analysis: v=2.4 cv=ab+bnQot c=1 sm=1 tr=0 ts=67cc5874 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=x0-Ntm4DP0gVEan9CnAA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_05,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=694 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 mlxscore=0 impostorscore=0 phishscore=0 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080111

On 27.02.2025 2:40 PM, Manivannan Sadhasivam via B4 Relay wrote:
> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> MSM8996 has 8 MSI SPI interrupts per controller instance.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

