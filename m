Return-Path: <devicetree+bounces-155655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CA9A57B60
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 16:03:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 09140169EE5
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 15:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ECF31DE2AA;
	Sat,  8 Mar 2025 15:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QStkJoM9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC3E913DBA0
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 15:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741446220; cv=none; b=Vm9QEiurXq8SlUBlQbR2XVhBMVa6LKgmTdW6Evmzi7Dr1iw815sLDMjqEzT3pEDhTg3wH8cCpfHHk9N31hz79ZxzLHsD0j5n+T0o54cHF4cTT/IdZKMoAg6GH9SuOxSNggk81xa6hjsjqTtl3uJZhKEe9G0/d9j2aCHVkRbB780=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741446220; c=relaxed/simple;
	bh=e8SexFMLy+V7m84HKtVT7FdSZ56Nzyx3ZfiZYFbyK0s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rSlbD41poD2UXeyqjmyXXiaFcToxm8Hoi5CvQVYJOKCS5G/CfgwVNKMFldwlfLT7ZHETq9pl/yQ5HENTlTN+LZ6UETMPMgAVSbqy8HNPdYU0NemI4S3NLzeACc5ZP4EPpZj+S0O4+kGGYCFtE3hqEZcVGN+FiRxOWxLnTPB5tXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QStkJoM9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 528Dj2Sm012617
	for <devicetree@vger.kernel.org>; Sat, 8 Mar 2025 15:03:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IKPlg8KpcdilLw+MDQw3ribbQkf1W3yXLlwbnkUFVEo=; b=QStkJoM9yFDPRuKP
	TAlN9Nx3GZ8AzY7PwGE6cY+IUQALBrunGtJ71X91Iydk32xhzHGO51JIXEG0/rVW
	iSoEx9rxOAMom7RXWhrXa4KQHWX3Giv0qYI2bJIDaSizeOBOJFAFjZzWZkuCtLXE
	KMrgw86aP/ossoee9Y7dn9i5D3NyfRy+6DVTn9vVIpTCkLkvOYN/9OgicGe9iA2l
	bIzWZCP9i633tpIVaOpMKHGWRbEbSYrkDqsvrYfi4hrihwwr/5JpB8GaW3NnKmsm
	plGuhK6NVVX4M6Fervj4CyTeD5QUU6MsXdfYyHzI7vGmqla/DFMRW152l8+7hIoE
	hYoZVQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458eyu8q89-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 15:03:37 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e8fec7ab4dso5727836d6.3
        for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 07:03:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741446216; x=1742051016;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IKPlg8KpcdilLw+MDQw3ribbQkf1W3yXLlwbnkUFVEo=;
        b=R0GOBqL7b7Tn3h4TodVhJAUaiKC/U/sAUzU8H/anbRerG0UFO+gLy+J1pdY301xXVA
         dy8wBuNUKqQLStHoxx1QthOnR9rFZD0CrSEaD55wJGhYQY1rw6edFWDMYNQfVlhUkI9u
         2RGE9TWkSgMRl3SWksmdOx/115TL9WVsGe8EyIrOg6uxbyypq/kGfFPTqSup59rr/SEx
         CSFfNsFMm0uR88A1/GZzjCDT1TwOefeaKkrFlCCje6q7sVSKw+TUNNSCo+4CSEPO+e7n
         QlEyH73eefgY2ZmsUqVXBbEhGQDaipTHxC53Ri58kKUXFOZOOo7x49IcWGROU6HHxKxv
         eKXA==
X-Forwarded-Encrypted: i=1; AJvYcCVL0jKtBBLFIRo62GQZWPujbONHM1cRtgPDAuMWN30QNY9VpWthP05HhRyP6k2esXKeegd1gwvksMpr@vger.kernel.org
X-Gm-Message-State: AOJu0YyUoVd7InL3AlXlQh7M4T+YSXIfP/oNPfUxR3auXc4jGNa2ftGc
	jgRk4IbBDAjD2EyWLZokkCNCwi3uYa+ZqeXO9CEOMWVhqmmEkWidRehaD0Ysm9ZQlx8ATTU/bl9
	b5nsOuz8GGFvINcX91Z1WNSFVjZBjhhwGxbu+okgGzkCIXINwHOzwZuKBdncs
X-Gm-Gg: ASbGncsEhWJXf51NbBxQPqsmWV7vY+koKJV/Jc0nO9J874o2KgtvbnOix+XeKxI7RC0
	uKy+vrWJsvOypcWl+CPRgZLj1/15cMqDNdwUmI+fAAe9LkPuryL8tFFHmgfhYEmpAXhweXalisY
	YFe9z6A67tKdsDkASMabX1YyVfoVo7fknoGIiZsnkwlamBXEBQRSGkCyb8Ds4BJxV7x72BeUdar
	F2ogCJmmx8E48w2eff+WfvTjWPQkMTT72OxfK4AlDntNVuYlvq8kspqWE/eqPsFhANbxq1n7XLL
	IQf+ssu/wC1caEQmgLGHyyDyI/AtuPJYHeBNLgT+fo/UzdFJyVun6BI0wJwSjddATTWtNQ==
X-Received: by 2002:a05:622a:2b0c:b0:474:e7de:8595 with SMTP id d75a77b69052e-47666ca49c3mr13703131cf.14.1741446216616;
        Sat, 08 Mar 2025 07:03:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG2C1ER2UZOIAo7ctUzp4nSuh/7gNp2uvGTLVNBhuB4jYEmqZINWmCWfInxvDC01eRy/YRnlQ==
X-Received: by 2002:a05:622a:2b0c:b0:474:e7de:8595 with SMTP id d75a77b69052e-47666ca49c3mr13702851cf.14.1741446216104;
        Sat, 08 Mar 2025 07:03:36 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5c768f98asm3999255a12.68.2025.03.08.07.03.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 07:03:34 -0800 (PST)
Message-ID: <df2f0bfb-665e-45a8-8103-5c6217dd194a@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 16:03:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 21/23] arm64: dts: qcom: sc8180x: Add 'global' PCIe
 interrupt
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
 <20250227-pcie-global-irq-v1-21-2b70a7819d1e@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250227-pcie-global-irq-v1-21-2b70a7819d1e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=cbIormDM c=1 sm=1 tr=0 ts=67cc5c49 cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=x0-Ntm4DP0gVEan9CnAA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: MLbe_tP6H_Rxy97QU3Tp2iiZyE2OT3oc
X-Proofpoint-GUID: MLbe_tP6H_Rxy97QU3Tp2iiZyE2OT3oc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_05,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0 mlxscore=0
 impostorscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0 mlxlogscore=545
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080113

On 27.02.2025 2:41 PM, Manivannan Sadhasivam via B4 Relay wrote:
> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> 'global' interrupt is used to receive PCIe controller and link specific
> events.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

