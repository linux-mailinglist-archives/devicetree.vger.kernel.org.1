Return-Path: <devicetree+bounces-223975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2501DBBFE3C
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 03:05:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 834624E30C3
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 01:05:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FC8F1D61BB;
	Tue,  7 Oct 2025 01:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NbRT3MvC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5A319755B
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 01:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759799124; cv=none; b=Ft9Nni1mZNXa3kFsokrtBb8TLW4/JUA9WWbR09gpnWWto7LvlwGV77eJ3T6rUhlSCMMrGZpvb2oZvBKWVfixDsUt6EJhWlByHTLudE5y6mZUt2iIeRcQ/T3a/WTtOO6fNnvp8OM92Wm3wZ8/LUwZR57hrNximraz/RfbqX+D/Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759799124; c=relaxed/simple;
	bh=bN78AEgja7FUP77gENw3DiDXom3H/G8fEsmu33m41jw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FclMrzT3gergxihqBXIqCCcDtTEmcn/D93WidU7IdllCecLEmrg7cxg2+/M7XNX4pQXR70Cg9mqaEOfDGmdZAa+lrKg9++KX5VdB69IEqlKymbYROF78anr/d5vVFX/xXvQIjrcJr7wQwMTPnOBvsAtLEADaeU3wrGzGZn2p+Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NbRT3MvC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596EoIcH018496
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 01:05:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ahrNSeb0NQWhBk3m/lb45NZJspf2/oAz6SdApzCbmB4=; b=NbRT3MvCpVXIy1/j
	yBsNPUnV+xpirXET0ZtQucBsmSEZN4tVhOuo63z61mDu4kqH+cS6kuXYd/c8LrhW
	wFIOpeowFn+oAGZS/C5hLi1zSd/ZXVWgcVUEyyY+ZoEcxgluOirk5YVimKmYiotb
	sHyoP65AvirMhuAHnD2DZTXNoKUGRW2cuh0IB2K+2F2SIKnwDYpBb72+wawiOhOr
	qhjdUHKuE5m1pbo0vLNzWdoOubSVjh7UkWp3oa/h9UJobxYRfT0mcXlw/mRcHP8T
	+7oSz/p0ss8iyKem9W6AKcW9aFQYSBshVXvFuTZ0kuhqVOvFNko2x13KhtiZtcVw
	SfoPgA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jvrhndsm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 01:05:22 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-28eb14e3cafso42970815ad.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 18:05:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759799121; x=1760403921;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ahrNSeb0NQWhBk3m/lb45NZJspf2/oAz6SdApzCbmB4=;
        b=N9iLLtqlAogpmDHaxYhlkJ+oWWgfiB8OoSLthC3vxMT83x6scKMaYWgadVDAHHvayS
         qgeflIRMBb63rLO6KpCEFPwkif6/AtBMNhtsQFwAVpxBMU9HDoDDHiOqpXPihQkm0Yp1
         ZpgHGqw+WeHOpRnYv2wv6kf6+ljqj9yam1O9UkSe7suHTUeyYxHJ8VBjWQMs4gbUADiU
         T4Oya4FHdbFG3rDN3PDz2pThPJI93qw2jLg04bWThJ7mvpHi3EStSfv5BtLTG4tJMWH0
         iHKiSXB2G/zHauuvcrCj+n6SZuZomOm8g41wKd2Gifq1BMC1yV4jnakPUFCOlxFnH76o
         VOBw==
X-Forwarded-Encrypted: i=1; AJvYcCXQV/jvDHQQ5cI874dwA0cZOeFfB0cvFN31/L7Zy/1SDdtfRa7OGeKidgdq2U+yEyt0veARtTi/a/ep@vger.kernel.org
X-Gm-Message-State: AOJu0Ywca5hALoChdYIWPFXrN3A1+tZQi8VtY+a0P2J5esAkbDkcJhZ+
	eNvBdGleVi1aJPI1VMLgZusNii0MkNR6ut6FIHnpoxJM93CPBC46soPa2X2C8YeN/iCNJ6F908i
	U5runyFtYz5bWmjcxGETAcMv5ZpLFYMAAvgSlDyiYbFL8OkGhp/UFeII29yDFImRP
X-Gm-Gg: ASbGncsF1PracN49tbU4haiiTGUEg8vmQ+wjUjQz8bSnRkxLfC241a5LMDClQYuMw3Y
	Hq8Re3nguNUT7aHnlOhA3h8qsY0voI3FCOo5YtWjOfbzjoc5IbePYKqSV1OdVSEM/HW5VfNXkAX
	3AWZAumCHW8TYF5yZ0gkxqfGX8b4MML8hRpXA1rCfSdbsI2xlTsJjtK0NbGMC0BuVpd95TpjDkw
	kAONCg2KmCTW4ifWqeoXmuh2WQE7ux+l/6VZlaMhXaC30sTM4N+3tYo+ZhNfSevHTMk5kjVI7Ca
	C0WJE97sD/VUfl2WCSCzWmSj4pnYKEugL9jfyzqBP+0HeejsUylyDUm2PXUkFaHYT/LpXeThg8U
	pVBpj+7lxTQpl
X-Received: by 2002:a17:903:1b46:b0:26a:23c7:68da with SMTP id d9443c01a7336-28e9a5bf107mr191525475ad.25.1759799121210;
        Mon, 06 Oct 2025 18:05:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHK5FlqZZWAVLLYWf7xgsddH7C7vi1Z0PSmlxL52MRXH9QOeZfRWq6du/B1w3IP8YVFcHH7cQ==
X-Received: by 2002:a17:903:1b46:b0:26a:23c7:68da with SMTP id d9443c01a7336-28e9a5bf107mr191524955ad.25.1759799120730;
        Mon, 06 Oct 2025 18:05:20 -0700 (PDT)
Received: from [10.73.54.138] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099af3cf6sm13327205a12.13.2025.10.06.18.05.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 18:05:20 -0700 (PDT)
Message-ID: <6ed9bd6b-37a3-36a8-a347-85429670837f@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 18:05:18 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 00/10] Introduce Glymur USB support
To: Krzysztof Kozlowski <krzk@kernel.org>, krzk+dt@kernel.org,
        conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <a6690fbc-0b86-4725-99ca-6b4cc477b4ec@kernel.org>
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <a6690fbc-0b86-4725-99ca-6b4cc477b4ec@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAzNiBTYWx0ZWRfXzvzMjdhrJXHv
 hvvFHZo2j/oa34qe870oLMtfMtjIffSv0R5QoY/6LLV/4WIxhjuw3/56y/z1A5kFlCj5AU+2FiH
 1rpOs5GYnZyAtdFoGZRx40zfjy52uAYbnZVF9/EpQyvufzZVXOFoXAs7rK33Jsi1jVxYnXgeMy6
 UaQENW+s3XBdZsyV2h5vI7SdSCoqztB/TpOAoYlleTjbnGqN2cFOJk7uJOWoFEiiXLeTGA88lpp
 xXWWS6tOLkNWMJkiCqWie8gFATVifyj+yd9kXd4fzDODQIwIuxGGrq5ZBOsDZXVrwUYd3x+R9nX
 XItXedb5gryf8n5mK1sDwROWdmXYkBOVTYKd+ES0WLCBt0+EB8HlLE0i2qPK9ysJTr1LyGhlAm0
 mJ9WYh41wD1f+wWPhwr+41u7R43T5Q==
X-Proofpoint-GUID: hZgqPLSC1VZACwyTfwIH0pOraNmBz0HW
X-Authority-Analysis: v=2.4 cv=XIQ9iAhE c=1 sm=1 tr=0 ts=68e46752 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=Zu9LzCyC9gr4H2Ik_2AA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: hZgqPLSC1VZACwyTfwIH0pOraNmBz0HW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_07,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040036



On 10/6/2025 6:02 PM, Krzysztof Kozlowski wrote:
> On 07/10/2025 07:19, Wesley Cheng wrote:
>> This series enables the PHY level changes that are required to support
>> the type C based controllers and the multiport controller.  The typeC
>> ports utilize a usb43dp based QMP PHY for the SSUSB path, while using
>> the M31 eUSB2 PHY for the HSUSB path.  For the multiport controller,
>> it will utilize two QMP UNI PHYs for the SSUSB path, and two M31 eUSB2
>> PHYs for the HSUSB path.
>>
>> -----
>> Changes in v5:
>> - Moved phy-qcom-qmp-usb43-pcs-v8.h into USB specific QMP driver
>> - Fixed DT bindings for clock properties for QMP combo PHY
>>
> 
> Where are lore links? Why aren't you using b4?
> 

Sorry, I'm confused?  Lore links to what exactly?  There aren't any 
dependencies here, in case you mixed up this series with the DT one.

Thanks
Wesley Cheng

