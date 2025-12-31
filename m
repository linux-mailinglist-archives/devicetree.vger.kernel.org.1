Return-Path: <devicetree+bounces-250801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC641CEBE67
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 13:08:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84DEB300F304
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A429A320CDF;
	Wed, 31 Dec 2025 12:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dETWGwMe";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DzC84GKC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24EB320CD6
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767182854; cv=none; b=ZcRm+Z4DCaSUKTwjROfAD8FcBclB0HWnnLHf2n+NkBE5irejTQ0hZXBmsPywkYV5RF3Db3wN5tK+46rLwy+VMPXPcvZDt5GywBHJATTR5GlhCUBcdsENrDJzwxqd9eNDfRk27TbZrZvIm9P1e0Mvi+B9vn5s0kkUomPgf3Ma55U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767182854; c=relaxed/simple;
	bh=Ebrj7FgOfGB4Y+kPltqSMdTk435gtaE4KgDy3ASxAFE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nAdjG5sOipWPr9NhkhzxwTB+gZovBUj4eGr0/e3aT8IDFXS2bQIRumGFoMHxnjSTtV051NPnalwWkeLhgw3jCkbLHQtzcrk5st0LaV7TcPovfFbmpnkjlj82JrAF9vbrJGj1/hiJbFwpA9IcstXDPRjcHwnbfmbOdaB1dLilX0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dETWGwMe; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DzC84GKC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUNke9a3138113
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:07:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Xwd9J0/7DDL1t+C6kRTwUe2pr4UfwNnjK2TEMmjygUs=; b=dETWGwMe+maDJg6A
	KDCiCIlf8zfgCwNkm9P7ZPfLfB8pjwsjQZCu5L8egpOH9A7Ibj4MC6n+AlTz8coH
	NmxWKy8OCzm0S255KkAUgQVB4BYolcMKmPzDKCZf1qXyU3V6izUp8N4R1BEgnJp1
	5rlyyVJJBycsVzhiae1bMuDl70A4bcQP7/2F/vwTnHfB7cI6Dy7Pixv8mHXOJNrW
	nlfCfcIRMoDSrYYrpEWWvKEXRLFrK660ApFarqXIXIDbzTpfatbXur/sheoWT+jf
	wr+n/9uaKBVHUSsfLiS9OxHHZbwKYjeqkTYiBoYeVMtNY0/7Zzho8vZAQesQsD9U
	1Dq69g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc8ky3d7n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:07:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee05927208so47704061cf.1
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767182851; x=1767787651; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xwd9J0/7DDL1t+C6kRTwUe2pr4UfwNnjK2TEMmjygUs=;
        b=DzC84GKCoUZBtMLrR8TABwP3YSCdkgvv+fKWgm+ObOMMHsxtBbk3cn6Eo/qvGbQYDs
         6L6LIFNoAtLANQVgwwChZrz64sSVBBIL1FD2FGLE0A42dffHOj3CkR26ZJ2mVJpPpSuJ
         wsBNC/X1Pp1yvL32YYnsD/AZyWs+OMoFF5aPYVELLZNxrKYxPzl0ljIeXkZWn4e7HiK1
         rTtK8ijOQPBp9zouHSrThns2mHNEhajRKHbfGORYUlP/m+l1N9kSC4XL+Jom81+h4ia9
         hpt+mabGgAaNumEAjc1DMy7DAgmZE54oWL0vOmtLhfOO/umW8/5JYV4t3IHZN6fyTPvz
         38cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767182851; x=1767787651;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xwd9J0/7DDL1t+C6kRTwUe2pr4UfwNnjK2TEMmjygUs=;
        b=G+arKCjgnGldoM0jf+j6TMkHye1kDpftiHIzZCxomFPVZusc7U/hK2sHcstC2PVGKm
         8OUZRtXWoTtOFgAR0EhKIkFvBBPqmnH0cW2/iEUraYCcSalofjUaihh9IdZawSoMBGMO
         br4M3uAYNLZggSw186atxj0QEZpInJebsCxv2BPTdiJAkpMkc+a7mz/I0wDuOTmKJByO
         R0iCO0bjrnQbWgQghOVq5DZmBPo3tk9MhnbEww7+sXjwCG2LADGVj6IhfBUVpMrrwEHw
         i1xAsXIfIDUHJvlIAgkzEEIRsUcbfGBUJp+qBuk5+XpICmlfi8dkz8vudAdKfIg0tQcH
         ZAug==
X-Forwarded-Encrypted: i=1; AJvYcCXQTypU+nTAJqKphQsewddPPc/d/WFczSj5nkYRST+nA6vOQcd8tvaQB33mKamSBvr2S19ZpOWlgTkh@vger.kernel.org
X-Gm-Message-State: AOJu0YzUumYkgP9viLRh9+tq3iNacfu94+hGARwaandzEWvKB3A3fX5H
	0RrSw0JFI2PdK0yrs5A9ZgsQH+pl/XBcscnmIRWqR08//HVp1zGe+HJvpbw8sWLcY8rEi8rxdP0
	KSQ6j/g5zs2spUCP46hggtwINtZKhMq5SqwS3QADdRhfF0KaKvntK0ZtF4E0gq8gV
X-Gm-Gg: AY/fxX7i5EqbaascOTEjyu5lp2agUW7qM1Jqfys5yIzSxe7DRh9eTFRxcXZLWy+CxKl
	ljqYl0hzTqbJXORZWibU8HNYQ9dG4EsQuHxi+rizcbdUWogUvhi8nnBnYIQi3sg2oQVUU5CQCTa
	BHbHOdB1DSmV3Xzrgpq7cEmSB9uozpWK1Z4mjzCQDZmv8bdoAJbQuURPEeb/Du6xYFnugXj1jTa
	Kza+JsDobHR0Xp+X7AvU6uny6AKOxOTAjK6Utb+WjLYdDvzCngFI8YQlWo+Djbfb7PmGPsNOMAi
	340Rvz8FRTNw2OgX2HPj7Ik1XmJ2D3oQIKz6RJnpMSjGpRv6Jl2bxpPmeKP7FMard6JJDDsIb1b
	JWEnT0qAJZcG2Ofrf+OT88Em3NI3AS5STYDPWxk+GUr/N9KHLPDbufdqmswQVonOiYg==
X-Received: by 2002:a05:622a:189c:b0:4ee:4482:e838 with SMTP id d75a77b69052e-4f4abccb8aamr395358791cf.1.1767182850794;
        Wed, 31 Dec 2025 04:07:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEECDEGzAJoOCl0rfUP6GBsO3KwpS8blNulJ+u+SXkREin+4W+m764nMSG1CDEYpWIXFGzjzQ==
X-Received: by 2002:a05:622a:189c:b0:4ee:4482:e838 with SMTP id d75a77b69052e-4f4abccb8aamr395358211cf.1.1767182850209;
        Wed, 31 Dec 2025 04:07:30 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f51a74sm4055637366b.63.2025.12.31.04.07.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 04:07:29 -0800 (PST)
Message-ID: <17211f57-0c25-4108-bdc9-50d0f96d3185@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 13:07:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/14] arm64: dts: qcom: qrb4210-rb2: Fix UART3 wakeup IRQ
 storm
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
        linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
References: <20251231-wcn3990-pwrctl-v1-0-1ff4d6028ad5@oss.qualcomm.com>
 <20251231-wcn3990-pwrctl-v1-6-1ff4d6028ad5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251231-wcn3990-pwrctl-v1-6-1ff4d6028ad5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwNiBTYWx0ZWRfX8oDH0IfqCpFk
 gjHRncGM9/hFzqIyf9SfK5J6BcKt1TZ9rDs5FPOdUEPx1pLbzBSDQKfEnncC7NbpNCC/FYLb2je
 Tssc0yO9oio5V9PC93hhB0C29wbcy0mxCPfBQgVUKWaZvSiTDmVLygKqHHCxHvw7wAlsKBfeKp3
 VZ/v+pxgjCOFJ46gWKzGejXLomXY9GhJMYVIl3OxrHlCcncTGdB9Osz+ua+vI1VRt6NAdiyX9fT
 mqkR+tXjSDu3dmFN9jYCrTnSo6iNGeNNC0ZLnQih+saYH3+MH9GVAPhadSEGS9RnqKjwniB0jLf
 23WnA8s645WDvr+rzLzIceqexgwAIFgUKnDpzoiOUHU1natjvpsgzFbZNPpDKVcx2ruZrkhRnfi
 LOvnE2ZZ2no4tcucK1y12Cu921oSmDcF/PdDhHPJGC81foQfJ5KJ9+bxe+0N2CyJORkdlWnEXGM
 yh+pKLqwwmIJ1NrBsIg==
X-Proofpoint-ORIG-GUID: VPxyU3CmQZK9m-knXw36d3yThRGeDJMj
X-Authority-Analysis: v=2.4 cv=BuuQAIX5 c=1 sm=1 tr=0 ts=69551203 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_BXXzmC4fWfZa3wPJs8A:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: VPxyU3CmQZK9m-knXw36d3yThRGeDJMj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512310106

On 12/31/25 12:35 AM, Dmitry Baryshkov wrote:
> Follow commit 9c92d36b0b1e ("arm64: dts: qcom: qrb2210-rb1: Fix UART3
> wakeup IRQ storm") and apply the similar fix to the RB2 platform.
> 
> Having RX / TX pins as pull up and wakup interrupt as high-level
> triggered generates an interrupt storm when trying to suspend the
> device. Avoid the storm by using the falling edge trigger (as all other
> platforms do).
> 
> Fixes: cab60b166575 ("arm64: dts: qcom: qrb4210-rb2: Enable bluetooth")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

