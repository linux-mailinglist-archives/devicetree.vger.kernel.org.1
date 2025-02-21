Return-Path: <devicetree+bounces-149620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E67DA3FF2C
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 19:59:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 192A0424E3D
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 18:59:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8C0E2512FB;
	Fri, 21 Feb 2025 18:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HpvcA3GX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C4D2512E0
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 18:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740164372; cv=none; b=aaS+99hq6a6bsebOPX7Ca9S11E+S9AQ8ShiFk0AACTOlCdUSFT71+71lYBM+ox1Pk1isKNFcNeZxozWJ4f3Tfwrf6Q+wOzrKFjenWeimLQDEXk5sXDnzSo5IAQ9Q+YvwjRAa778d+CrFI0rbO1iIUO996VHOhj1wcz/QTR+Zq4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740164372; c=relaxed/simple;
	bh=bouC5Nwy+RlowlXK/60T7WNMCMlxshS9jSXH6cFWoVo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PC61dLmuatVeydS/THdxkZTdZuOiw9nQkCL5j//gf4ohWssf46oprvnnuMonvcoRsy2A0jhV9Lsg667nqquGIGilBNjbDf5ZcuHeT+2aRPhkoDwX46HujD9CBznRoLm+Zp8ON0YyXSRbp0QUmehNSNBvmpyGz7ecEyd7oTUWCXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HpvcA3GX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51LDmPBe012182
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 18:59:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bpYhuaG6BS0WUe/aUEKyw24PzywfV0tSN+SL5OU5B18=; b=HpvcA3GXXclkqdjY
	7Yba8FNhybRyClMZBkXj1Y6Za2X1iUByzE0y40tV2Gy1NOojFf6df0h1ec3WZGHt
	LohPp+S4pPBnvxiXxLBM41AovKgBjq35QSlr61XgjTs1QemuXXehIdCmruTMwZna
	z5tlkH4rp1fD0jedbTQH4D76OOhJ/9/tFdWYyL9trnjdu7YAB10+iM7LX7Gk06FC
	521sEDgVktEkFI/RpZ3QyuHpA5ueS2c5SBe/5djSD9D4Wj2DR2lLZ3QeXW7BCEiv
	teI6vpSIQVkK+OiDEZ5GGE7SwxuNesQjoosiILIAPKSiPQWwFZY2909SuhmK0pIb
	UP4SVg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy1u1kd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 18:59:30 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e66b3359f7so2846566d6.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 10:59:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740164369; x=1740769169;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bpYhuaG6BS0WUe/aUEKyw24PzywfV0tSN+SL5OU5B18=;
        b=v+Rho3tdmtsGZJOtWwt5qJD1iD+OPKAdrKoPzJn7gkMkxt8850qwKIJ+7MHtJKH6cO
         RVfnd4l5g5+nrWqFo0DyAWCnR7vZtHDVo4/rTW4YaTbx+fA7CKZKuFxW8GBAclwBbq4e
         +096Os6ZXYqJlA8DOUWL8EO7Sf2YGmxdCbWb0ZXqzR6zq7eAs6XRZE/y1bFHxQxRJdOu
         aFUAyxxP4Poh1I2/SwdbCFBYLr6E6yZ3IzsGTPbzmkDuz5CGtT9amTWD8P5WgTbtT7dt
         hRCZ2O6xFDFjP9JDoh54OrMdr9GXqxTY9a36uzPve8sCrH7TWoxbKW8oZAkwGnu/YPVR
         4BbQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFamEB6zm+pPd0e3IK5ohCPLnRuMyJKlCUGba/GtE5xAQhIr8P4J8bObDMuPCbzxXW5qK67KENxhFB@vger.kernel.org
X-Gm-Message-State: AOJu0YzcbJtSIwXz1BhAiikIupUDMI5P3l1/8GrDdcIcY24dQ0iWpKzx
	E1eSdQjeaJqhNsRacerEN2az9Ce1YbMErPeofNEEn8Jxf7PxHQcit66e5OTndPY0BMfEhQdjib0
	IZv6cRXZsOBzX9Eu/gW+C2BNfSMKoq1mr30JJlYTiDXFMAgyR4596WQZxnH89
X-Gm-Gg: ASbGncu/2AtuOFHtrawdN/RTuzyooCm32pJzcWTJYzotHSnI31mUWV4gFKfArYI38sq
	40zeOY7/AXDAhOBF/5jGH9KRfcWTWw5+VmddGPZtxVaqcZqe6ycSQB+F9O724h6UFGXo4HKO28V
	c4tx8iFhapjONyeFhlVCvtPhsE19ib/X4Tu3Jri/bfAJDouDf4kVi0Gb4XRGCW1LtftziPvxxKQ
	9Hyrp/ne6SkXkbfcMPRxznKOKf5RycDKDCIV+KjzdI8gAdr9p9Rp0Wo7NRumA4GEDCCrDrvcgGv
	1juQx3UuaKMZNciHR7Bw1EnFTjceOpjXKk6FMYhNBRcsFx86WCdyJflC/W3by+a+5hQ3HQ==
X-Received: by 2002:ad4:5b8d:0:b0:6e6:60f6:56db with SMTP id 6a1803df08f44-6e6ae96757cmr21396616d6.6.1740164369148;
        Fri, 21 Feb 2025 10:59:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEino11aOry+X9myvSrTFE6WwjQqF5PQC/bw4hFvpDYxqJCcY8oQkdzhaYDT3qBz8d5sIVzIQ==
X-Received: by 2002:ad4:5b8d:0:b0:6e6:60f6:56db with SMTP id 6a1803df08f44-6e6ae96757cmr21396336d6.6.1740164368823;
        Fri, 21 Feb 2025 10:59:28 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbd6b57314sm573078466b.93.2025.02.21.10.59.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 10:59:28 -0800 (PST)
Message-ID: <3649a87a-59a8-4215-9a2b-b02c25203a25@oss.qualcomm.com>
Date: Fri, 21 Feb 2025 19:59:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/8] arm64: dts: qcom: sar2130p: add PCIe EP device
 nodes
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250221-sar2130p-pci-v3-0-61a0fdfb75b4@linaro.org>
 <20250221-sar2130p-pci-v3-7-61a0fdfb75b4@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250221-sar2130p-pci-v3-7-61a0fdfb75b4@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: PFNcxCo0LcoD413ZJvxTqfQYL41X-Hzn
X-Proofpoint-ORIG-GUID: PFNcxCo0LcoD413ZJvxTqfQYL41X-Hzn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_07,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 clxscore=1015
 adultscore=0 malwarescore=0 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 mlxlogscore=778 suspectscore=0 phishscore=0 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502210131

On 21.02.2025 4:52 PM, Dmitry Baryshkov wrote:
> On the Qualcomm AR2 Gen1 platform the second PCIe host can be used
> either as an RC or as an EP device. Add device node for the PCIe EP.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

