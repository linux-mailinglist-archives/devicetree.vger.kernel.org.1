Return-Path: <devicetree+bounces-254301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C974D17034
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:29:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ACCAB305E3F9
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:28:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AFA836AB6B;
	Tue, 13 Jan 2026 07:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WNsbvb3d";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WPBrZHga"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE18E36A021
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768289333; cv=none; b=YUAoZCE7oA1buk4MZNt1qleNht65gyHD3YkQ8Xd8lFjRrspWWmfthWECBdhcvhZ5wWy1NLRrQ2WA613HDFZ5OfCcYCHZ4Y7VRIumyyEh+wJUrAgWFgRH5npur8kdJwr/3MHYJYl+W6/+27d363l3UHjAT+lejKY2V3WntoVbFfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768289333; c=relaxed/simple;
	bh=iqSAWGic3pNYGN6blxKsUeRVocZ9hiCw6ST2E3k+StE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rN+KovwgKVzBF63SbXnfARXcUky/BVaxPvc06m+VeSnPgMp5+sEj4GBR1BSDTQo5ebNOirS97LKjRmn11b6IiQbGfov/owdqc4n2b/aV5rZuFuz8A8YXyPgMiwHBRpoiFIDHGPiiaLrhfc0QyswkSiNbe7F/psrBmm6RmrHNeh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WNsbvb3d; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WPBrZHga; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CN55XA3299965
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:28:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4Tdx08RCOHRHAIIwsB6Zam+4AJy/WgvW9Ht/GW5EKzE=; b=WNsbvb3dciTu/po2
	mD0Hpua7mgA1PzXBRCULDrpLP9enFyGkrNQ/jgPDez195642j51+eRftq/N+YU9k
	yi3L7FW1HmQ19uJP9tjwca+5Q8U8xhnMbN/hPMFhWAosLtOe1E/2nnJt/lUMHDMD
	7yrXW2ZXmt5tS+S9ijadcsyq7AFbijIsNIBq1/ZD0uqElUqDZs+JO522rREXAjsq
	6DAlnG76hYbNwtQYn3ax00vshk6QzETntxZ3Nd8dR0VD2EuXHiAbBQz4ck7pDSXL
	OPfYBs5Hg8ronIHXDWiaDoCtX4CKz8ByXwN0TCwlWMD4RGW0OODUsgQb3Dg3LJc4
	9JA+9w==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn6jm9t1t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:28:49 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-81f3f3af760so4511602b3a.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 23:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768289327; x=1768894127; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Tdx08RCOHRHAIIwsB6Zam+4AJy/WgvW9Ht/GW5EKzE=;
        b=WPBrZHgaYmtuwEFS3bPSJ4dl0LfyCs2SGr6DKWeYgQeTJHrifbvcch+XuSSgOO1Dvi
         hZiGHuED8EWBbr1ueKuT3anBu+Rm4+84WS+HYWDy9Srbmxq0Xx0uS8Zgh/jdQz3FFpPf
         rB0eJ/W+tEDSJk9kzrmnJ7R1YqlWgNYlSYyWKk8QbaKcufZ/PZO4TT5D0BoK5lCMehuZ
         FbLh/N2RCIqswbQ8OSNV6+ZeLHGGieeTN0VIGrWr/WLkIz6Vd12m/+CmqThekoeffKzV
         uYkSfEDeWidOPrDfbKCkgURciwf1dg/8J7nwVYjZyyJDm7gSYtq5kUBPeMyzizmlmRFf
         RRLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768289327; x=1768894127;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Tdx08RCOHRHAIIwsB6Zam+4AJy/WgvW9Ht/GW5EKzE=;
        b=jmnkr2C/t4vwaWshwH6AyC0X+SWZGMWOwziSInKkUhQ61XdQqpl1lYWhWQvoTuQMJa
         A+8SN705xq3nyo1jULeLnucZDLQq/TVvwqBsuuFMMyJC1fE/iK7xuEAomJlHpKJe+Z8y
         pVU+/eep7hJmsUIVrtohASVD3GYvP6DzbMnbaxG96KOg2O0XedgyBgLmzGxPnQeDkFXW
         wiNqYzTFQOyd0CJxPHqsqkfQVO3RMYx0vmejGGRcSWBux0DD5sJC4IzH6F2glUmVXfe/
         1knK2EsKKnyjkKMZdNqImjA+y0RaqZ+XzzfzopsaAteqyN7wrDNLsMaQMxIqUiyq71NX
         Oihg==
X-Forwarded-Encrypted: i=1; AJvYcCWsP0L0U4PMIMa7287Ja5GcoPsERf8rRhoNIX6MyuBji9IYOUwxaGjX62EDmZlGaDAmFcmLxNtCPsD/@vger.kernel.org
X-Gm-Message-State: AOJu0YyOsIarKbJx3gwZlhNtt9a7GfUTMGWpRfwOGmrLWDkxOUfDOqGK
	HJoD6b2thhOt77PyyPfzbwyYC3tlA/3iyOY2AlG/pPheSwKW82duoEFGM1yg4suC6Q0Uyvu7aVd
	hycd5DNUw6Xa68/H4gILcjB5uRnaPmEORjAnbRQVddQmVNRZOq8Yo9rXJHApJWFxY
X-Gm-Gg: AY/fxX6Z2J+14VJwGqd/O403FecZfedjlpQQ5qm1oNbhyhLyM7SZ+O0IRx1GE0J8c3t
	zLev+F/25gFL1fcd+zJm9TnfACrGVG3fyYZqAxZ5RmMeBA8kc4HINyGWjz0xqO3Uebco4Ly7jif
	2OEvhTb9nwkV/7hYVdsAwRggA7czn9saORvzPixycS9UZc5HFvd1mClzSE4JkZahriNrBGHquuM
	XYsSXWQqWGkuag03dCiCyESEjV6MXzBoOnmPAA20tJn5EkWL5+64KTOmxg9U7YzmdMgxhCiO6RS
	ZBAy6gGiLlXf4fSgYCadRdIv3r73NdFdEf8DeJ/EGz44qNTUWEu7X6eu1fGk2T082K0DvAfYVUR
	2sdZOLGYngVsjNXinp8jVmNFDgdi2gzsCJ/Pl
X-Received: by 2002:a05:6a00:7704:b0:81c:555c:e85d with SMTP id d2e1a72fcca58-81c555ceb11mr12735922b3a.36.1768289326993;
        Mon, 12 Jan 2026 23:28:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IESxyZYKpKa5hnALkATiJv9fXQZbytGj9avRorN/Obxy/d2CZ5hId0Ft0KOs3pRiyEEPUCMcw==
X-Received: by 2002:a05:6a00:7704:b0:81c:555c:e85d with SMTP id d2e1a72fcca58-81c555ceb11mr12735902b3a.36.1768289326549;
        Mon, 12 Jan 2026 23:28:46 -0800 (PST)
Received: from [10.218.4.141] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81efe4a95c7sm9311618b3a.37.2026.01.12.23.28.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 23:28:46 -0800 (PST)
Message-ID: <706bb13d-f7bd-442e-92c0-ee26bccb5c88@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 12:58:40 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 3/4] scsi: ufs: core Enforce minimum pm level for sysfs
 configuration
To: Bart Van Assche <bvanassche@acm.org>, mani@kernel.org,
        alim.akhtar@samsung.com, avri.altman@wdc.com, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260106134008.1969090-1-ram.dwivedi@oss.qualcomm.com>
 <20260106134008.1969090-4-ram.dwivedi@oss.qualcomm.com>
 <280591c4-5522-4d38-b22a-efe9ba456cb2@acm.org>
Content-Language: en-US
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
In-Reply-To: <280591c4-5522-4d38-b22a-efe9ba456cb2@acm.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: hjpdcpHkWzQXmJosWGv_jG8WJN1T-p2P
X-Authority-Analysis: v=2.4 cv=SK1PlevH c=1 sm=1 tr=0 ts=6965f431 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=JytweJO4TXGN_DK-ZGUA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: hjpdcpHkWzQXmJosWGv_jG8WJN1T-p2P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA2MSBTYWx0ZWRfX/2bm/kPlPfhZ
 Uckya0aSOk++YLhUN7i6XDw+mTEV2B4pIHq/bxw67AM8BZZgFAvub+IPW2lBnWFyFn1hmv+NBbz
 hJgzndQ1kmnT0iOTB3zvkY4+ohm5AhN80HYewW2+SyQdQmCmTqmwBBTr8vBSSoZjPW+enqWve7D
 0s0KZS/zgb9sqO+tJOyZgegakKd7tIkcxSNAtT/4yi21qPzLdJnRBi49oEZjiWA/8IYeNgzquSy
 ScYcKDqrsW4Oz5EBLkiAtUuGDnK/gHJRwdIhVoQFmtOTv7ijgTIQkMCqIOKvNtgbAFMnlIwAhSM
 CU079VZL8f+lfSe1AjShNknHpVGVWB+ixx5vkx6KeWZM6kSqsNQ+TLKIc91qU5q9Tv7Dzpzr3V0
 mJHSa08KaSwW3iir+y2eM5RG1RjSY0H73uoRqF67oIjD93xFzEzf2KMuDYXzNCW5peNRcPu01Zj
 UFM5buyUdMy/YGKQb+Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130061



On 06-Jan-26 7:26 PM, Bart Van Assche wrote:
> On 1/6/26 5:40 AM, Ram Kumar Dwivedi wrote:
>> diff --git a/include/ufs/ufshcd.h b/include/ufs/ufshcd.h
>> index 19154228780b..ac8697a7355b 100644
>> --- a/include/ufs/ufshcd.h
>> +++ b/include/ufs/ufshcd.h
>> @@ -972,6 +972,7 @@ struct ufs_hba {
>>       enum ufs_pm_level rpm_lvl;
>>       /* Desired UFS power management level during system PM */
>>       enum ufs_pm_level spm_lvl;
>> +    enum ufs_pm_level pm_lvl_min;
>>       int pm_op_in_progress;
>>         /* Auto-Hibernate Idle Timer register value */
> 
> Please do not introduce new kernel-doc warnings and update the documentation block above this data structure when adding new members.

Hi Bart,

I will add the kernel-doc description for pm_lvl_min in the next version.

Thanks, 
Ram


> 
> Thanks,
> 
> Bart.


