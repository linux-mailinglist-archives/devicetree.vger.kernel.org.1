Return-Path: <devicetree+bounces-248711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B42DCD5312
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:54:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5D28130019D7
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 08:54:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A10730C613;
	Mon, 22 Dec 2025 08:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O4Q7tXT3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="f18vVC6b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876712F691C
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:54:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766393654; cv=none; b=U6kfy9iuKFqNjRJCbYs9CH6MxGnORNhb2ytznkztGo47a2h9vIAHel3evwGDtNrvhW9vv8XOHFb27+eX1GPuYS2dmMoOVIWWsKxt6mLRY5gt63wLjR9qJitkMPtIQ34kzIFDJJDG5LPtEOlIHLFH7C4WKVbZQfNMU5s68EOYcu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766393654; c=relaxed/simple;
	bh=cgoaDWkxfXfW7nzecRjtHI1LpQJ8ATp7YLREMJwrxlU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ARnHvJCqJRLRsx29IHIkilEVreToLBdZAKLt7RMdIWfGFHZ9Z/rWmqV4ybh/WZPiMJBJGuwCpaGRI36r24rCees6SpaW3iwc22feyU28g7wt+iIuJurMkGgyDt1dZEDRNb2WdPrrkA8FKCI0OACr8oTT9zZDWlWonBBigcQS6Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O4Q7tXT3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=f18vVC6b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM8hY353964458
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:54:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cgoaDWkxfXfW7nzecRjtHI1LpQJ8ATp7YLREMJwrxlU=; b=O4Q7tXT3uVXpfogi
	iKuy0Smn8zP06DQLp5ghG1mI4C6FPMmrxNYmNGHke7c1XNHOCpEBMS0LljBaneKL
	QT6zxlJ4/gTAsPyT3CxnForfDDrgJuIT4VnWS+QZ7NJF2U1t7PPM/SFa8JIs3oHe
	Aop+5rlFjuUX6n5/zMLWiaoymPQYCEoINfV5cr0Mf/eSAF4osDgSoR2p0PuSdwhJ
	kFRgc2qyXrSXxrR0IAdXi6bpoPDDWHgxo7GBKFs9YMWXJz8rzF29iO1LPNs+TbPK
	U3umWN2d7MMhhpUUSUy29n4mLBwyu6MUGk1Ktjb2oW6flSFeyYmAMZmhKfQM7doM
	9LPfWg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b6vk6h3r0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:54:09 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34c6e05af3bso8090723a91.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 00:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766393649; x=1766998449; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cgoaDWkxfXfW7nzecRjtHI1LpQJ8ATp7YLREMJwrxlU=;
        b=f18vVC6b/JuImq9TL1ARDaIgOzYioX7HBikJYnmV6SYtO4eiGFHpn8T/gqVeTF/yWN
         rD33+H/W7IUYKYypiDp063EqnY38ErpYlPU5ypgqWoMXO098P9LVGQcsKVqo56jEf4me
         RAMx35ao8obzGpXIXGSCwk/V6W+Ll6Hl6IjSnRZWSxp0t10RBOqHPDOY2ahL7yPIBlDA
         vhzoF2OLmiy69Hfk6NbzblvJXOIq7hch+JAZFTa+xpimNOuOMMAZtgkGfq4tjSr4Ni7W
         lredRujf+ewCHPJBBRDVpWmm8XSUA68/AstI8WltDWTnq3c9DLEQj1gcSrRkh5jGImIs
         R6BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766393649; x=1766998449;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cgoaDWkxfXfW7nzecRjtHI1LpQJ8ATp7YLREMJwrxlU=;
        b=CdWIWMw7CeSxqiVH5+aQEGXjuBbA0CJq0vhb6TTprRfdY4G/7MWqSTvg1J43RvmA0B
         cpXQGMtFc3EFmHpYeXVIPgMvONvg1AegJozp5tOsJyOL1TVfDWmw8JO7dKlD8Zlyh5qV
         d3FAUPkEgP0WDCKnQH8maxwSYjOGtEB/hRoscKWYtTmQTEUJvEwtNAGRJiKck3WZYYhP
         0f+uA2TMhDeb8nGh3oxFKMwwg/iLgbEoa19+xgt4zdE/vfLBo+mpwp2UagNeB5swd62y
         mNBexRru6OwEiXXefQTPljQ0rtMjar1mx9yxVkqRd58C180r3eUTH99MpRAPsf94j73z
         Pdjg==
X-Forwarded-Encrypted: i=1; AJvYcCVSUUoZFVvwr/mTevwzQaafElWm4msOJwkCyuL3ZNsaBx/T/GcUuFILgY+yiApUrPGG8vDgvzaF/ita@vger.kernel.org
X-Gm-Message-State: AOJu0YxN41UV22war+Q8wljk0e0dCNbcUvrE2d7AAFuwe4Twu0O/8gSl
	5W7brb1CJdgGq5fwqePp7+UOeZyB/8UenASZoisZ6KSAANVwRushlygyX61oOGnY7k2RJhYjCsS
	b7CmIcNCACQ87v+CDT76WRGw8vRmNJjVjfL38NrD95YSKb0tuJI3KEFkG4b2Cmx9t
X-Gm-Gg: AY/fxX5vBHq8H2amSA/fm52YdpV/a2UaqsGa13dbn9v+GyI9nge7JM5njxVihin6XRP
	FCMdRUy5G/J7hurU27kcMS9v1fzmVSOnGmRhlWwhgB1j38VeIl3B6yIXKo4Y4CSHHD075Pn9pm8
	jM1qfuxlAi5Rsuyrovo3TbNm0u5xjUrCVT8pxjnSehVnCUuHn5FhqzyBLggUV/e9NS79CTloWzG
	ctOilkZOqp3oTfMZkx/JcV9e/J7T18pC5hq3eCO6tcYiwe1Woeg2ZDTRNzfV41cQWe5jiemp+m3
	7KE5QWu8XizmSV7HFMjeKtXwSIy8yfoiSVM3hR2UDkQJKuzE44oHvPXNWsBdCk3ZF6rslVBiHhb
	TEj/cOt1ypaJ1Oa+6QnLzmIdppAkV4FywiGqo8MjtU68B4+MSD6Kop9X+2EepwcflxhAYre08vl
	5t4fI/dpJ5EC5m9/jgyjh4dXyS19E=
X-Received: by 2002:a17:90b:3902:b0:335:2823:3683 with SMTP id 98e67ed59e1d1-34e9214b151mr9093971a91.9.1766393648893;
        Mon, 22 Dec 2025 00:54:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGYW/jht8hQ9H2X0IJIfGUYJ2hV/F11tiryEObJTkIS8wlnwJLCJ5gfOXM78S07/h00uZG0Jg==
X-Received: by 2002:a17:90b:3902:b0:335:2823:3683 with SMTP id 98e67ed59e1d1-34e9214b151mr9093953a91.9.1766393648428;
        Mon, 22 Dec 2025 00:54:08 -0800 (PST)
Received: from [10.190.201.90] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e92228b64sm9322716a91.10.2025.12.22.00.54.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 00:54:08 -0800 (PST)
Message-ID: <d300a963-ec79-4f1a-a385-97f1d60897f6@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 14:24:04 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] arm64: defconfig: Enable Glymur configs for boot
 to shell
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, rajendra.nayak@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com
References: <20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com>
 <20251219-upstream_v3_glymur_introduction-v3-2-32271f1f685d@oss.qualcomm.com>
 <ee084ec9-31a4-492f-97c7-009dbfd77613@kernel.org>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <ee084ec9-31a4-492f-97c7-009dbfd77613@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: LXvx2T9qt376EmltPPXfid9MHJej37yE
X-Authority-Analysis: v=2.4 cv=cuuWUl4i c=1 sm=1 tr=0 ts=69490731 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=zKvyQGducjGX7PGqqqsA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA3OSBTYWx0ZWRfX9kgLFqOY6yPa
 Xu9AoQS561vmNfL/nmbi+3wUEMylyU5eQ+4Rw1gqGcTXkV7TAEFT5ZPPj4UtSCiJoyUyO6VNvRH
 MUglT4Qd4L3gXplIoh271spudgmbBe1arIFsgHzLD0ovjiYEYBhDyRt6q1UqhGFWBzwmGc8hW0i
 nrN+7l/2qNenDSnwqk4JmhSvMvVLp7PApLLE4gBSQ76Tsyz5/f1A7z7UTsYrFhANiwn/OS8JNUj
 nfuDNhJ7VLdBEOUvLh9OORCytRhgMMyQ+FQZKI+jTSEGX5av9xeqxeUFVSY6s2viL9Hddw85x5G
 FcOMdgm5o/25uNeCQVeIPv4izjaXJeH0Fc9ljXSs4gczQEksIP6YIRa4bqSqohjakjWorkcCKaM
 Yof3qIE49NalZFOO2dPbCV5hF/fRlRohXwDk4xLRoG5K52foM4eqc2tHSufGKOchIvm7aZeTVyG
 e5ozAH9g75w/qi6NuPw==
X-Proofpoint-GUID: LXvx2T9qt376EmltPPXfid9MHJej37yE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220079

On 12/19/2025 8:27 PM, Krzysztof Kozlowski wrote:
> On 19/12/2025 15:46, Pankaj Patil wrote:
>> The serial engine must be properly setup before kernel reaches
>> "init",so UART driver and its dependencies needs to be built in.
> Missing spaces before ,
>
>> Enable its dependency clocks,interconnect and pinctrl as built-in
>> to boot Glymur CRD board to UART console with rootfs on nvme storage.
> Nvidia Glymur CRD? Standard comment - you look at kernel and defconfig
> as it only Qualcomm ever existed...
>
> Best regards,
> Krzysztof
Will re-order in next revision

