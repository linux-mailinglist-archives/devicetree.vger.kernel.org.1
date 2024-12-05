Return-Path: <devicetree+bounces-127709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6319E5FFE
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 22:21:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2121716134B
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 21:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9DFA2309AA;
	Thu,  5 Dec 2024 21:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GeoazlrO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E884B23099D
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 21:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733433570; cv=none; b=O6HP6Ra/VW/ZRcI1oL3RO+q58MDeeYWNbaquRO2mMxtrNOpPtr1F3v/YjfUs3ioXxpKg+gG1/hEy8fHiS5ee2IBZXQlhx3zyllJ0lj1gLyBWFC+hR9/z3/xk1mcupQBWjImEY7r5SUQ/YCd1UFU64R3Mg8YJdU8LbvaD62c89jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733433570; c=relaxed/simple;
	bh=aJapw3WyYccafxnKr7q4m6K3gYLXIYlv3ohQbrLcTFc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Py/t1xQXUoFFaTOokSJXw+rOB/Vk7k2IE+zFV/e7OybfGcDWmXE5Juoj0g05bQ9lZ+exBrRtPrWY7ndom5iFsiXXk7DG0szEKTAzqUCyiTEVh9mi2LiVWGqylebmDsFYAu1cTAoydKw0FNyiRTy3OrmHdA62FqG/9TpwuH/4jE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GeoazlrO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5HaGDU003725
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 21:19:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sQfISVsXdxQW6JtVPLqLwHHCBEV9bwyCTS/zkVZgSsM=; b=GeoazlrO4tScntBa
	G8use33MVnlzfjS5aGV4MK+/4QRhple/OlwsiY32Ryv99Wht6jE4xZmHIXJ3zSJN
	NqkeYTN9hGJddbtZRVQCOGzblSmxnBYrTVEeLJI50YHmMCoyMQHWHET4AcjztPd8
	ed3EvpNTTGTgEupqIddYn9bg6gxybXALNef2Q70+l7zf8uJaM5YKPoGRs6cpVgfR
	iGgCA9IM/AhGy89xoppugpISpXoXmzqmo2lQGTkeOvABOKTuwF86yeidCTjU/BRX
	B5oGPaB/Cej1O5aG8LTbWnKQ1LyqhfywhdPP7fybEiFpwbnFY3f1QDQY8vMdnlZt
	vlBKag==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43ba0khrm9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 21:19:26 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4667cab5e1bso3446181cf.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 13:19:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733433565; x=1734038365;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sQfISVsXdxQW6JtVPLqLwHHCBEV9bwyCTS/zkVZgSsM=;
        b=ZokfDHp4CurcBRvKaVN48ei0ot4m09KA3U7Zigcu9NK6itsRFrzBxtOrM3cfifHtXE
         lWNTpH9JnECc03Sd+qiQYNFy74S9u1MuMUsbGm+IOaNAHVshjqfTm5aLGTjIiqDe4L0n
         tbscTF5m38f1JMT6q6REZ1f/zYOZwzl3guvorQaDbB+SYJktviJb0WyChgsRoo1jegh5
         DSUs6+KuTZLEIVHslsERusWPKXiUInfdOTQi18Rus1eWb9BfOnlQQzoktP1Aw2F3Q39Q
         WgnxdtM0gNWbkwECwNEmfi+MsN5s8Ms3ph4yBkKre4Z9BIVfGqJzDBWFzcLcio+8GRmS
         F1ig==
X-Forwarded-Encrypted: i=1; AJvYcCUNvf5igi5JN+omfBsm3qoN5olHMmIhKoomBFoEPDZJ6yQ6es7Q018Y1X+qjvyRvivB9C/v5n0whPJl@vger.kernel.org
X-Gm-Message-State: AOJu0YxsDDy4iFiHz5Z0sCuiqhuPADnZLk6q7LbgibBxWXCi/ykjH+Rc
	ihiosnGuE4lbhwkubbZ1ZPNhVaJf8iB4w2ClgVhbIyoEqVHbv3ApUaaE0yY+g+VJuZYMawpeDKM
	UwX3fGkslgUSq9D7oaD47A7Kvqve49ZlLkktz8Timsis6koYI9ZRCFpGBAnpR
X-Gm-Gg: ASbGncsTxmag7VeAVrjhuvN7dcl+niLE6U5V84fH/HW8q6mb+imEts61plC8b9H2KvJ
	ByGfkqs8S/NAHOgVS2p4b5XJcnqoMP5TuDuek5WwbOY3gT3rh/VFnExFSMBu6nTFyUstvIBQvpN
	y9nclTvTAU20CkcbgYr/OmdP/NLlNpFWM8pTmA03tnWxOFZeQjkpjFdm/r9DD91ckEm2RTHyXS+
	BBRliv99SJZrchJMBAb3q3yY4blBSege/TtzjMUEp9NU7am+t6B2lNxoUZO0DAw5+LGx5e3EYnq
	FKp1qZLBzWmH2GdfoqDUm8OrgeKZL0E=
X-Received: by 2002:a05:622a:178e:b0:466:8c48:7232 with SMTP id d75a77b69052e-46734c8eddcmr4700621cf.1.1733433565445;
        Thu, 05 Dec 2024 13:19:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFAzTu5V9J+dNt0Zva5G7WWSe0sMoz64KA05UqDj/rEMMvGL2xQ+bWsjaqu65qlF8wRjNcpNw==
X-Received: by 2002:a05:622a:178e:b0:466:8c48:7232 with SMTP id d75a77b69052e-46734c8eddcmr4700241cf.1.1733433564563;
        Thu, 05 Dec 2024 13:19:24 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d149a48ab4sm1263345a12.27.2024.12.05.13.19.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 13:19:24 -0800 (PST)
Message-ID: <d2f0b021-7b0c-4bd6-aad9-2619a91abdec@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 22:19:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/3] arm64: dts: qcom: sc8280xp-blackrock: dt
 definition for WDK2023
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Kalle Valo <kvalo@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Merck Hung <merckhung@gmail.com>,
        xlazom00@gmail.com
References: <20241202-jg-blackrock-for-upstream-v9-0-385bb46ca122@oldschoolsolutions.biz>
 <20241202-jg-blackrock-for-upstream-v9-3-385bb46ca122@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241202-jg-blackrock-for-upstream-v9-3-385bb46ca122@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: WmnlKuFwRS7h7JIIjyazHa4GcdkSG8Jq
X-Proofpoint-GUID: WmnlKuFwRS7h7JIIjyazHa4GcdkSG8Jq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 suspectscore=0
 mlxscore=0 bulkscore=0 mlxlogscore=787 spamscore=0 malwarescore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050158

On 2.12.2024 8:59 PM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> Device tree for the Microsoft Windows Dev Kit 2023. This work
> is based on the initial work of Merck Hung <merckhung@gmail.com>.
> 
> Original work: https://github.com/merckhung/linux_ms_dev_kit/blob/ms-dev-kit-2023-v6.3.0/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-dev-kit-2023.dts
> 
> The Windows Dev Kit 2023 is a nice little desktop based on sc8280xp.
> Link: https://learn.microsoft.com/en-us/windows/arm/dev-kit/
> 
> Supported features:
> - USB type-c and type-a ports
> - minidp connector
> - built-in r8152 Ethernet adapter
> - PCIe devices
> - nvme
> - ath11k WiFi (WCN6855)
> - WCN6855 Bluetooth
> - A690 GPU
> - ADSP and CDSP
> - GPIO keys
> - Audio definition (works via USB)
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

