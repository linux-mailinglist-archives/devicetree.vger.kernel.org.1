Return-Path: <devicetree+bounces-217309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEAEB57518
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 11:45:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BEB13A3F5C
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 09:45:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 260082EA740;
	Mon, 15 Sep 2025 09:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YTPLKp+Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F372F9999
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 09:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757929494; cv=none; b=Xx9cxic8PXF3T7lHDTftzk0vm8athTEKFQk2BDvx1F1FC2AjS8iiFaTJXIwZNJQniwQtB6wVAW0ulA5AK57RXcn4gAEjk11Qv2WzomFG77W4obe5mBSkSz2JYzPd09jrDw+MoQDNCB1h6Yj8iRFgEDqdbztiATExJAMgucjTJ7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757929494; c=relaxed/simple;
	bh=v3RG+UICPkrVnxWKbeqHLBZe1IIHqbLgB0YYfEB2ieY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tb93ZoKByomlVAQC/DzOzEL3mqNMjAlEVgCHKj/H7+6XeLO5TIAEGMZvY6rGcdgcsbHSlPSImUDFuf1oLwCHMgzUJm2vhbZ2WW5qOT8f8O782DtfmqZunrkc4RUJlbQ/PA8Z6Wuk1VsyVkrk0ysOO1VHi3rRcLtZ/QGgi4PxTC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YTPLKp+Z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F8G3Co006505
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 09:44:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	btUt09/JWFKx9VAylYCCOROw35FyhcxsxetmaKbojb8=; b=YTPLKp+ZUmN02Qpm
	MghxcspLw2YbFDu6hU6ii4k1CwK7ncmt1QMSTkMI8DTr0529ix5yhvUGgr0GMoWX
	9flipKVbHTiw0HVoPSHidwIc6np4RzvmP1kGgCOKxF4n7jJsCpLuPOcD2oKOr4Yp
	FHl26H0Fj5fJzlV0h8YKme45jH34LA1/HQoxdzxOhoIGufGq8A1EG/4ioZGxvsa/
	FmsS8WFHpJ48EVFbiwmSi7RNhztLFt2Vfh0lmHVlRI/VRDn6hQ6t/jjn0R8Mfv75
	8M4BwleYkaTzJWkOhU+ANphqLOUZIbm6t1HGIVW9YgzeodzkW0JfBr4MOdzJx0L5
	cEpIag==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951chcbef-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 09:44:50 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b54b37ba2d9so1785845a12.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 02:44:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757929489; x=1758534289;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=btUt09/JWFKx9VAylYCCOROw35FyhcxsxetmaKbojb8=;
        b=HtNu1F7D/rY/Kbq+QysX8YMeKLFMNO35Ko3Rs1Mvk86LjxeaKPdbOqb0Wrm99fo0DJ
         sKzUR/igZ/6lFVtjoxcc7YxWgMzlI9/EMvPN9MeVVYOCKgxKDhWu8C52312+C7uK2/4x
         O+S+eF7d5jbRrF4VhgsQsUwRtk2Ob42cv/gkPrTq6rYVMQTS0zH+jaR3lTshfGEdgsqk
         BxUjMl7CXCtVO2J5N8kyImhO3+q1kkB8KKF57lh4kmzTueUPsDjhipxo0Bxu40utLADK
         yGibqH3g+eTA+jd9dAD2/ixe2YoafFW5/E4oylJG8bwgNNAt3k+vNHveNs0kRMBteYG3
         iZ1w==
X-Forwarded-Encrypted: i=1; AJvYcCWLH/vBmkEQ30wsMFueLPEJoqFYGcMC50ouvqdqQcVvDb3ZJMownvQ/Z9sad7M2KpKHDrRqT9vfhK/4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4+Ifjb9ZVYos8ScduD9J+Vq/8WsKkx0tncGwsH7kznoX3lsOl
	MgKdJ7e5HFaZ2+hPd5IIBnUbm9VmY+pANd+hwTsnxcGK4QsWHH1XDQz0YOlq6jOhfEJJLdywsy7
	gXAs1wBSi9s4CgSO0+bXZddLixAAHnAVWoztxeJw/6gFEbhKZqdydiqP3gE+waOtZ
X-Gm-Gg: ASbGncuRoKfZadZIJ8Gr/kicd0AIbos0a5HRQ6ggPnMMFXTTAmaSg+/UIGXxp7batu4
	8Klad6+be1S+ZTkMxg9gxU33fzIkwdIUX/eUu3pcV24JJ3oCQt4hHSKlkuXBqd+QjUTdUdV7Fui
	v/EfBWDVNiHvWOMexwq3qChvfpyZpmzxWhWfFXk8kl9MRu6yyL5aIMsXtxH8yODux6AmrqoCMre
	zbfRmLThe05Cl1mOpUXg5n/WwKpchTwftE85MgyHjs+Tk//qdheg7zlU6eYF9vqoX/Ou9jdjRI3
	04mHUa3kagluz51N8z78cErXDKYWbARvvo9L1bH31zxIzz4U5egzIKiDMenolC7v7Xgfh+JAPGC
	+XSyHWW4wqy9R5DV1J3Ulq2QLV7FVIsJ1VA==
X-Received: by 2002:a17:903:185:b0:262:9ac8:6132 with SMTP id d9443c01a7336-2629ac88031mr71832155ad.19.1757929489319;
        Mon, 15 Sep 2025 02:44:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHB82jOSYdcixCfESlUwNeTpTC1N6ixEj5+ZgwzGyCnR/7UvipAKq3xTaZw7ZjJWJzsrOwUtg==
X-Received: by 2002:a17:903:185:b0:262:9ac8:6132 with SMTP id d9443c01a7336-2629ac88031mr71831745ad.19.1757929488787;
        Mon, 15 Sep 2025 02:44:48 -0700 (PDT)
Received: from [10.133.33.240] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2653fcb5b23sm34612035ad.56.2025.09.15.02.44.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 02:44:48 -0700 (PDT)
Message-ID: <3559cbe4-b2e2-42d4-85ad-554258fc9dec@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 17:44:40 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/8] power: supply: qcom_battmgr: update compats for
 SM8550 and X1E80100
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Sebastian Reichel <sre@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        =?UTF-8?Q?Gy=C3=B6rgy_Kurucz?= <me@kuruczgy.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250915-qcom_battmgr_update-v4-0-6f6464a41afe@oss.qualcomm.com>
 <20250915-qcom_battmgr_update-v4-5-6f6464a41afe@oss.qualcomm.com>
 <aMfWKobwM5bhJEAd@linaro.org>
Content-Language: en-US
From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
In-Reply-To: <aMfWKobwM5bhJEAd@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=eeo9f6EH c=1 sm=1 tr=0 ts=68c7e012 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=j-CFaJrOc8d7PKyLKvMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: YUSLPtLvmyfzq_F7LuxFA2-B_8O043t5
X-Proofpoint-GUID: YUSLPtLvmyfzq_F7LuxFA2-B_8O043t5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzNiBTYWx0ZWRfX7lB1+AK6gpu/
 diPeBBzyWGp1bfsJNScXnP6q/mG6nGtd+UQkYnsb15CSqsmHA1GLTi7uvvw+VuHRtgQe11bSk68
 DF0SeumUWhuCel3WzjsUDkOW8AWAioZwzrkk/Guu/YGNwyyYC1g20Ss67SeKf2AZOrCFg0i/TXT
 DLJZAsR7prw8/OWPzebUR1N3W9xPaH5y2BZtqD0xqcrAu4OysAUwuRlBVeZCu9pWHoGtPpiZ2Qy
 jbjBY8xmr/ZZejUkjTUabAKIZpd1Snmsvp+8PYXkhlccW5wW6o6JHWd2g1A2RTDpsw5PuPXY3xk
 YmEn6sH+x5kdzKJq8jGDIOW6+35iiiJk2/VBgpIuVJrRH7SZ3lOizIVUsxKTPn52944pPpleQDO
 FGRx4p92
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_04,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 phishscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130036


On 9/15/2025 5:02 PM, Stephan Gerhold wrote:
> On Mon, Sep 15, 2025 at 04:49:57PM +0800, Fenglin Wu via B4 Relay wrote:
>> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
>>
>> Add variant definitions for SM8550 and X1E80100 platforms. Add a compat
>> for SM8550 and update match data for X1E80100 specifically so that they
>> could be handled differently in supporting charge control functionality.
>>
>> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on Thinkpad T14S OLED
>> Signed-off-by: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
>> ---
>>   drivers/power/supply/qcom_battmgr.c | 7 +++++--
>>   1 file changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/power/supply/qcom_battmgr.c b/drivers/power/supply/qcom_battmgr.c
>> index 008e241e3eac3574a78459a2256e006e48c9f508..174d3f83ac2b070bb90c21a498686e91cc629ebe 100644
>> --- a/drivers/power/supply/qcom_battmgr.c
>> +++ b/drivers/power/supply/qcom_battmgr.c
>> @@ -19,8 +19,10 @@
>>   #define BATTMGR_STRING_LEN	128
>>   
>>   enum qcom_battmgr_variant {
>> -	QCOM_BATTMGR_SM8350,
>>   	QCOM_BATTMGR_SC8280XP,
>> +	QCOM_BATTMGR_SM8350,
>> +	QCOM_BATTMGR_SM8550,
>> +	QCOM_BATTMGR_X1E80100,
>>   };
>>   
>>   #define BATTMGR_BAT_STATUS		0x1
>> @@ -1333,7 +1335,8 @@ static void qcom_battmgr_pdr_notify(void *priv, int state)
>>   static const struct of_device_id qcom_battmgr_of_variants[] = {
>>   	{ .compatible = "qcom,sc8180x-pmic-glink", .data = (void *)QCOM_BATTMGR_SC8280XP },
>>   	{ .compatible = "qcom,sc8280xp-pmic-glink", .data = (void *)QCOM_BATTMGR_SC8280XP },
>> -	{ .compatible = "qcom,x1e80100-pmic-glink", .data = (void *)QCOM_BATTMGR_SC8280XP },
>> +	{ .compatible = "qcom,sm8550-pmic-glink", .data = (void *)QCOM_BATTMGR_SM8550 },
>> +	{ .compatible = "qcom,x1e80100-pmic-glink", .data = (void *)QCOM_BATTMGR_X1E80100 },
>>   	/* Unmatched devices falls back to QCOM_BATTMGR_SM8350 */
>>   	{}
>>   };
> I think you need to squash this with "[PATCH 7/8] power: supply:
> qcom_battmgr: Add charge control support", or move the modified checks
> for
>
> 	if (battmgr->variant == QCOM_BATTMGR_SC8280XP ||
> 	    battmgr->variant == QCOM_BATTMGR_X1E80100) {
>
> into this patch.
>
> With this patch right now, I would expect that your series is not
> bisectable: The wrong code paths are chosen if you only apply this patch
> because e.g. X1E doesn't use the QCOM_BATTMGR_SC8280XP code anymore.
>
> Thanks,
> Stephan

I see.

I was making it this way to address the review comment from Bryan in 
patch v2 about separating the compats change. See here: 
https://lore.kernel.org/all/7f001134-e099-492d-8ce5-4122d83a3de3@linaro.org/

If I revise it according to your 2nd suggestion, would it conflict with 
Bryan's feedback?


