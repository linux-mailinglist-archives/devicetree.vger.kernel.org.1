Return-Path: <devicetree+bounces-153250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC0EA4BBF7
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 11:23:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE9681669F5
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 10:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 253531F30CC;
	Mon,  3 Mar 2025 10:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VNt3uvV1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90AE81F236E
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 10:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740997392; cv=none; b=duzudS5Nv1FBhr+LXxwtz/KoGGT10pcjOVDct/NKPTJZqz01VIjODy7zw+Mw7arOISf1Ocs7QQSA7kOxO6sKSQ5/M0bsEuAotPk2z146LV71bAZyty+ixawDvQFsItIqNZ4S3XOs7Z81SLgDbLB93fJg4gguMUBwzChgoed7/1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740997392; c=relaxed/simple;
	bh=45N3CTCQyFNYATVodSXBAL+a94s2+Sf5PekV0GfAnzk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=opL1J33DLJZLEWpjwMyU9jixegFw4i2Bj2RFjkSLp2SJDSgLhJagCQkfsBYKH1TTPdfPdyu5GDXt6U0HSfdm1dnROxa+xkTww5GseWPIcWtYE4rcfiO28Jf0oTr287ZWVSrPvPiYuqtD818ICUkSy8iXvKj5NYgFlLhq6g/k1UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VNt3uvV1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 523A51rM003375
	for <devicetree@vger.kernel.org>; Mon, 3 Mar 2025 10:23:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GKhAMHMv9Qj1+aCKv/F3rYQfkqyHFXlh7B6Upy8lJ2c=; b=VNt3uvV1VYM+zOhx
	a4GpvWlv3sWQkm9TJqOKwNqZ21pPhTc+0p2ybbNPcXQqSWPwMR/N1SUM6kBK5C+W
	4wsvzev9/nqhbmeRPRnkpdCtTmw8yIs36ATAe3oO1VTqXZ8TdZhEY0IqLV8fyshG
	Tm6Ko65Qls5jIOuy7M3HhgPzJd2N6On87zDsizwEggbGu9AtqPKTq0jfIl5RSCdJ
	9QCEWRvj8s+sSdeHpTPkiRK6qWorTEqHe0A9NOn6KaAC06BtdmRON4P335xXO4Z8
	bE0Sqb6S564E88peQ3qg3HO6uyMQ3ymjW/Jw5cuFpK8JRcIhcHGupaCavVDG+8lD
	IJ3XGw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 453t88vkum-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 10:23:08 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-22355de1de8so74299435ad.1
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 02:23:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740997387; x=1741602187;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GKhAMHMv9Qj1+aCKv/F3rYQfkqyHFXlh7B6Upy8lJ2c=;
        b=wQHnaxR4VuuLsvD63lLa03SpghRcadbMpDNLNf+4UkrfCoZJfNkJx7FiIXVOi0dJGv
         /zN7O7B1uzdstj389fKWCelC6PO06qmbGG2mOSYXgqtR+DHxKzyw7uyIwGkAS4pQcYIz
         IFY0PASYjvru0Ccp6sDOx/RaZ2PpNbluf/BJdq+0Byyw1A2zSAKALeRoMSl8PshrIiVi
         cBYaeXjKKlnRGSTLpnjLJrIekbfoi23Z6ci2JF6AHrzP0mw3/b8BYR5WLziWvotaXnDZ
         ifStEI5xx+xfj1j/2gKC+hVjCtuvv8bNjmNhC+NsiZXyjro3qtW+XNZgS6YEk0aN9WKo
         HXUg==
X-Forwarded-Encrypted: i=1; AJvYcCVBFM1f0mBKhfSL6SL5uPwPNmv1KWDfIZKx3rX5AaPfvM95KUtEzD6XhmZFJTH1Jc4B9m6mRWy0Erhk@vger.kernel.org
X-Gm-Message-State: AOJu0YxtDyc/VUnYTT0lPCAaKSqyWIzs2w+gCj1buWuokmFRLKQda3Li
	B4igAiIlxH8f9//3Emwh97zDIKOe9XOy67OM0b/Pt+RajgP7OdlMZaWq5QBbjtmtn0HZUJ8FivL
	afbLo67g1pvbFWcmtXhOs5kmqnoHIDyUU9XWDulNbAXnazioCJGI4/QEZzZos
X-Gm-Gg: ASbGncuTHhnbzpRiswjpRL1tkGoeBhqei9D7KFBzFAWmzHFkvLnsPO8cATC5Jc0WMtk
	tPLkKnBDEK9GU8Enhg4/onmuEJdZE6u2/vgUllRC7Ah8cUaAw+uqaURJMoZIdyDHRsSKHn6STd1
	Q13gZVaQmHnFrvVtzXLvw8dHB3b70RrsYUYgBUr3vhFTjroBG5Bbn461J2dhOtND9zpqI04A6hc
	CCRhI7Bm3msKr2jEXHj+qYuedKRrurv7xbhvYP0ibOtXdPvZLUwD4o5Ov3sf9BXMJIom17CPZJ5
	rpKQJvcwnXjK+5UpvCFseQFU0nbhuZ/xOGLVPB3btxf1dZbqpqoP+gNvI2Y=
X-Received: by 2002:a17:902:e54b:b0:21f:7880:8472 with SMTP id d9443c01a7336-2236924fa13mr206373655ad.35.1740997386652;
        Mon, 03 Mar 2025 02:23:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEzewlI+MdkavpK5IxUd9OuTeDDFG7whKIl5HH92YgygrrZJJ+26+G+Xae6Q3us5qqTy1cWBA==
X-Received: by 2002:a17:902:e54b:b0:21f:7880:8472 with SMTP id d9443c01a7336-2236924fa13mr206373175ad.35.1740997386280;
        Mon, 03 Mar 2025 02:23:06 -0800 (PST)
Received: from [192.168.1.35] ([117.236.245.126])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-223505293ddsm73795215ad.229.2025.03.03.02.23.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Mar 2025 02:23:05 -0800 (PST)
Message-ID: <8dda7af4-b318-4e39-b79d-738b6084feb3@oss.qualcomm.com>
Date: Mon, 3 Mar 2025 15:53:00 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 19/23] arm64: dts: qcom: ipq6018: Add missing MSI and
 'global' IRQs
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
 <20250227-pcie-global-irq-v1-19-2b70a7819d1e@linaro.org>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20250227-pcie-global-irq-v1-19-2b70a7819d1e@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: R9zipY68rFwRgZ7gXFZzi10-f80SbVJ1
X-Proofpoint-GUID: R9zipY68rFwRgZ7gXFZzi10-f80SbVJ1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-03_04,2025-03-03_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 impostorscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 mlxlogscore=575 mlxscore=0 clxscore=1011 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503030080

On 2/27/2025 7:11 PM, Manivannan Sadhasivam via B4 Relay wrote:
> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>
> IPQ6018 has 8 MSI SPI interrupts and one 'global' interrupt.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/ipq6018.dtsi | 20 ++++++++++++++++++--
>   1 file changed, 18 insertions(+), 2 deletions(-)

Reviewed-by: Kathiravan Thirumoorthy 
<kathiravan.thirumoorthy@oss.qualcomm.com>


