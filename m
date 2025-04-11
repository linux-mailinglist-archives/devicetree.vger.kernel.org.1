Return-Path: <devicetree+bounces-165853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 550A1A85B83
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 13:24:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D78E3A32AF
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 11:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E93F20E33F;
	Fri, 11 Apr 2025 11:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PzCpobK6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797F320CCD9
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 11:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744370566; cv=none; b=o+Af/rBy3Sp28765RAGDiAfnbZLZ9lqEDbr6EfHo9oYfQ3edpLDhwd199jrB8AdTSk0f78ND9jg+s74hw0SYxKQQ48/KeN5+3jPSLDn6A7EN2HsoJat72xoM81M1lfyMU4ZSVeofDWFTGKj0vVSkunPp+x5rGNeGwhK7m+M30jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744370566; c=relaxed/simple;
	bh=xWEYAXYN75uPFbnF9tMBMayDM0TPtCpSrhXZ3dzsbXI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FWlBSDpIM9Q8IzwfBkF5f0N+RzJqlhKxNQ9418mlXscmnZTFYSG5HZzike5KaDSMCXqqZPH4YbU1S4lXTocu0DtCWbqLqIMZB1lNhchyOPO3o/DQ7kipGJIAbZeai+XT7JcIV4TB3pUsldvnpGSyhhHHdOb1yUieR1wjwDAQ2Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PzCpobK6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53B5KsEf013871
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 11:22:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o7ldlKd5A1c1kzPQv6PSKZi5mNPAQ4xGSwtKcBaJjAA=; b=PzCpobK6k49gH9pw
	6B2mE8QRIPd3ybIuROrbFKS0vSG3bh5q755fu9xmdB9xYloq4sopQ2x3U5UfGMcF
	EbQ8/pTUU4qQYl2lqutTbixe0nOyqrxHz+X0bmw9xLP+MY9Lic51Hj6hqVy8PyJt
	memccoaKhxy1pg1bpp3Q3M9OQ/gXQuRALWFa2PTcgCAWbGvexrq+rMeEDKLsorWs
	NqhxZ+kAQ2mLWfdfHqf5TwSPGguMXQBp/AyVxJ3LKYfUfVOGoiD4dT8rAMII3fMp
	9x7lkBPfma+M0WY85tZ70Y8NSB88m4sLWVDpMM3M3puV7JgKrm/ggTfyTWmFcOiW
	lgdKgA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbej8np-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 11:22:44 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-47708fd6446so2952061cf.3
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 04:22:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744370563; x=1744975363;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o7ldlKd5A1c1kzPQv6PSKZi5mNPAQ4xGSwtKcBaJjAA=;
        b=HcnV0t1Aw7r7bamcGR32GH9L0BjODZSWbnUrJROEW1PU30swUyzRPExseSGpgcOUHl
         BejWsl21qoDeQDjY3JFo3D2OP09cvigLMkPNykRvNrtK9AIg3T5ltGJAQzjSjhd464yA
         QJ496eE5u+K7fQAXKNP/jat8fSgobdIoeAxVPYtD/8wTBSvOm52ASPJnwxPl5K7xfL/q
         GSOsyxsKjL2uGn8ntBHx/pQex+foIl4SXEmRuX06kb4862RmGxtqtyLeZH8g1a29Y4dT
         zsmRgt5caS5+Ga88NOEkOa1YVXe/cfdKQK1xV3T8EMMjjdg2s+B4BSp/N4uYguXEQwq7
         WDug==
X-Forwarded-Encrypted: i=1; AJvYcCVyyygBIdpUjwu6CFjEo1JK7fj0D0jKrzUChz6IgBBR7C7oP0obQi+ApW9w3WDku0CUa9nOPTEnrmzg@vger.kernel.org
X-Gm-Message-State: AOJu0Ywwmdvz+kbVftaeJ5v5YKsrr7iqSHSpFeRysZfRTt0Tky/bK0r8
	+gKXyPi4Fm/vdr5lomyBzeigR+FaZKLgfi7sF6+upTAsHe+UELlCKdYcpuMqBLCnlUHybPf87nE
	QYyjnldjLzRXlc0q0u4uqLvgCFPm0fsZ7LlRN/sxs/wRknidnAFKmqTkd+wcE
X-Gm-Gg: ASbGncsSXT0c77X2Ie8XnhRyAe9tqJTar66EsP5eX6eeWmxnexoNKlU4Mlb7f34coH0
	9cRkbJidImyT0r2tnsb3c8FbXloqT04x0ZpGsKkdGoUFmaaScfNiqOIvZcobRhQ8NjS0PRQhpO0
	V/hcTi4Hszp9OFCSVxmeXvZh7PxmicuGme9nkQnxROE+6yE6sJ103GUTPNEHI7MGjGZTcfBrmY6
	ofQ31WyVGq8lX/hEj9w7o2UhjIFr/d7oDbxsjtnyOm2/cyfvN99I5uZZ+kR8wUPrPEwztGqamd3
	vRb7ozi1DK2YNVQ1xpwXwagQT+DzvNEsrnGox7csgWmMf2Ny/FyIuHAMhvx5AatT6g==
X-Received: by 2002:a05:622a:60e:b0:472:1573:fa9f with SMTP id d75a77b69052e-479775c57cemr11267031cf.10.1744370563314;
        Fri, 11 Apr 2025 04:22:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqXzDm9Tm3+0QeUI5Zh14tIbU+d/Vs8viys7evruocl5cnMn/7ajmcF2ZxqV8LNPFi3bPWpQ==
X-Received: by 2002:a05:622a:60e:b0:472:1573:fa9f with SMTP id d75a77b69052e-479775c57cemr11266921cf.10.1744370562918;
        Fri, 11 Apr 2025 04:22:42 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36ee5541fsm818081a12.14.2025.04.11.04.22.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 04:22:42 -0700 (PDT)
Message-ID: <48361e2a-89b2-4474-97aa-557fbbbdf601@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 13:22:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 3/4] arm64: dts: qcom: ipq5332: Add PCIe related nodes
To: Varadarajan Narayanan <quic_varada@quicinc.com>, bhelgaas@google.com,
        lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Praveenkumar I <quic_ipkumar@quicinc.com>
References: <20250317100029.881286-1-quic_varada@quicinc.com>
 <20250317100029.881286-4-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250317100029.881286-4-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 3PDEjHsGIh7XIv-wqur0Sttr2epxdTVR
X-Authority-Analysis: v=2.4 cv=T7OMT+KQ c=1 sm=1 tr=0 ts=67f8fb84 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=Y_ot1G8rUta36iX-w7oA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 3PDEjHsGIh7XIv-wqur0Sttr2epxdTVR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=926 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110072

On 3/17/25 11:00 AM, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Add phy and controller nodes for pcie0_x1 and pcie1_x2.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

[...]

I think you're reaching out of the BAR register space by an order of magnitude,
on both hosts

IIUC it's only 32 MiB for both

the register addresses/sizes look good

I'm not super glad that we decided to move forward with not putting PARF first,
as the other registers are in the BAR region, but bindings are bindings and
bindings are ABI..

Konrad

