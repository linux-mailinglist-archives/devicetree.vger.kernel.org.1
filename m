Return-Path: <devicetree+bounces-116414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D079B2CC2
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 11:25:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C938B1C21CD5
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 10:25:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B26C51D5CCD;
	Mon, 28 Oct 2024 10:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GmShF6Px"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5011D0E38
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 10:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730111100; cv=none; b=Nt9JOKzaVJfAvyzHoRl+SGoYBBV+NY/+TBVia/LAHKheWl0uMB2cb/6RK42l/SNYMNqnhS/1g9bVHm8P8UTIOAXJpkzL4cT/Sr8RSq3LC+47w8bVLYA/K/n41CjUSveyDXiipd2A8Y1sPSeN27UzMFS/Sgny4VYGLjbCLixMMEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730111100; c=relaxed/simple;
	bh=fbtunhKLM67bLa2qu23S88glusv6bfpysmOgMaktmbQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S5fQ1PEGj0bwVmX8siQHgjyYE+qKnU7Uzxfrb7ZQnReXeFo4I4Yql+HAIHmQpTUuQyHJnGf9CQnmkAhlaxuEwBH3NCR0H9yJN+pbZXJlnisIHWRQriT0ESGFX/7qV/DSh2CS8QgEzEvyMglaF1d/k+yAvQqvXrF5YgxO1k1OSk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GmShF6Px; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49RLjqLq025858
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 10:24:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fg9jSsM2x5+eCKxffj8Vjk5A547zvvC9R2DqGq/9wok=; b=GmShF6Pxdex6D+XI
	Q7uD8E9NN8lBbja18R1/MeSvfBWP7oK5FjzhaKc8l/isGDj439YMBrBzaOuQtG9B
	9LFRXsWIZys/bcI9idwyiElDDL0ED92m5J7g+c73BNrBI+g7zTK+68+U3t8Aiepu
	Dnuy7Y88czX3pZ/+6Eu+CGKpCFeoVmiDP7aDUKEc7D41fZNA8VMYQpOYatRuCfaL
	O1R+xdsNFNEJa17TBVwZmgTxTBSdd5Y7Uys2v00hUnNQXmZgGAd5W2Khzn5ZF2Jd
	HGVaBFtiZ3LIoHN3m9a2HdEYjhqKMMJvbmWGUiirnv55XtTrd1X/X5Cnww7Pwl4S
	q/i3yg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42gsq8cetw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 10:24:57 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6cbe40565feso13161456d6.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 03:24:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730111096; x=1730715896;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fg9jSsM2x5+eCKxffj8Vjk5A547zvvC9R2DqGq/9wok=;
        b=bPobNQJHRHJ/Pj3115u1kMMADgvN1vox+HXk+tcR3DznvVplniq4jXbQmwb86L6en2
         kYQClnl8Cku30MO4lNXaYsYTJwict3+5i9tXhrOp1HqSZzuqZCOagOhBdHD5qebonPLa
         wrD2tz06SSEa9e3FKGIRHCSF7GM2Hgt4qO99/QTVvp55IXOvMzX5TO6DeDCUeF1bCv/2
         AJx7gMiMTCAbCs5zGMtA/hhZ1PG/KuObQG2bASdNMczpZaBEcBFTxS69BqKnl7tQgui+
         CELIVdhWv6XmPAHsDuA0C9gZRZP/AmUrZWFskHweNiiYANRwVsIX75xkPYRpXYZvZ4T8
         GTsg==
X-Forwarded-Encrypted: i=1; AJvYcCWIH6ZpnGvcIUbh/zmrkmpvXEC0gol91uvIyGZGocr5C1tgnkBr0/TCVj7rFDUiUO9Bn1fNLtzkfiLi@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6zzXm9ydzW4u8Ly4xTTIA8oG9PUy9aDbCI62MetBpXKeFfEc3
	AV0m8um3H68/zMOiOe5o5ahqZhOFmhgJ16ECrnAuUADeue9H9wJkDtr602o4VtjoSvMlZCg8qPo
	jDv4EYC1hWUfT99DXFPIou5lJ6hJ1RjCHIYDaGvCRZYaAb5WSrVjiAPkSeiZZ
X-Received: by 2002:ad4:5bc1:0:b0:6c3:6d25:2578 with SMTP id 6a1803df08f44-6d185816bf1mr54129636d6.8.1730111095779;
        Mon, 28 Oct 2024 03:24:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1LCyhTsx+s4J7iCqfSqv0uRemX/kPrSPNh3ahugTm/b+6Nqx8Iut8S7BU/6LdyG6nwn7IXA==
X-Received: by 2002:ad4:5bc1:0:b0:6c3:6d25:2578 with SMTP id 6a1803df08f44-6d185816bf1mr54129576d6.8.1730111095455;
        Mon, 28 Oct 2024 03:24:55 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f298ef6sm363536566b.136.2024.10.28.03.24.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2024 03:24:54 -0700 (PDT)
Message-ID: <465ee5c1-2fca-4099-b618-f80484445dac@oss.qualcomm.com>
Date: Mon, 28 Oct 2024 11:24:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/5] arm: dts: qcom-ipq5018-linksys-jamaica: Include
 dts from arm64
To: Sricharan Ramabadhran <quic_srichara@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Karl Chan <exxxxkc@getgoogleoff.me>,
        Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        linus.walleij@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-gpio@vger.kernel.org
References: <20241002232804.3867-1-exxxxkc@getgoogleoff.me>
 <20241002232804.3867-6-exxxxkc@getgoogleoff.me>
 <f2eck3tudqoqyylcknfvz77wj52fornxevp6po3y7sov7swikt@asez6wepyl6h>
 <768a1c92-6e1d-4d6c-90f6-efe66f68dd0e@oss.qualcomm.com>
 <c154d164-57c8-4407-8b07-543676d21206@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c154d164-57c8-4407-8b07-543676d21206@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: k0Y686EvvT8rmflm-id3Qnbr7mFT_mQm
X-Proofpoint-ORIG-GUID: k0Y686EvvT8rmflm-id3Qnbr7mFT_mQm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 bulkscore=0
 adultscore=0 mlxscore=0 priorityscore=1501 mlxlogscore=721 impostorscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410280085

On 28.10.2024 7:33 AM, Sricharan Ramabadhran wrote:
> 
> 
> On 10/26/2024 5:08 PM, Konrad Dybcio wrote:
>> Would you folks know anything about it? Do we have an open source
>> U-Boot release that could be sideloaded as a secondary bootloader to
>> kick it into 64-bit mode
> 
> Yes slightly older u-boot release [1] supports booting both 32/64 bit
> kernels.
> 
> [1] https://git.codelinaro.org/clo/qsdk/oss/boot/u-boot-2016/-/tree/win.coretech.1.0?ref_type=heads

Thank you!

Konrad

