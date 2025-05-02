Return-Path: <devicetree+bounces-173093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AE5AA76BA
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 18:08:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A88CE7AF010
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 16:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C66125D21E;
	Fri,  2 May 2025 16:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kzOEDFEz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E653D25D203
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 16:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746202111; cv=none; b=J5KAkKMOB97j2OB9Sw9lN95cOBkbV3kqFJ7CbcZsqI7POAKF8ej+ueaD62KBtiAWH26kdsCVlggWoiAq6NebCKgIqpypK0aL0yEQOAl40dZAtCQThBm019mTnj5ips9KUSNcjNAxCpv6/FUXEUr5v23ozLMdDXcLhW/dkc+M6IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746202111; c=relaxed/simple;
	bh=Aiw78cv/p68kfnHm9huW2dP7/SF2x9C9ceZ11r4BIG0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bm9CJKB+BX2zSf3tWdJrOGI33mXwLEI9+dR8MNb3X3/wtOjnMt0KI0D50xaQ/9v5Kdo5904a/w0VGv4zH5X1zJF0mdT8uQMlKYGE33iLwJTLQXnP3eEts6F+8lksUbSDUcV1NLiodJtmJdEkzEZVfEpb4ukxi7DK6o4Updoo1pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kzOEDFEz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 542E3pi0015842
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 16:08:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZCURuZphALca4oH54vQyehTX8P10HSrIKR7pzdxmoGo=; b=kzOEDFEzns8z6IKY
	VXiK3lU2R9FtEJXfIuXSeIuGjANAeIHkUaH7UZMchouRAl0MGM3yKdgFztz5vDVT
	cNrs06uZmUz4e4TVMRxwr4Erx7nVYobpvfzA5WtxA2d9Mq2KKQroX/rR7wnnjkKn
	8jLcSfrAwYqko1uSWk6ZTc2VGsADLOS3ofRt0ghC2q+rZJKNkvIP4SiurWTN+qt2
	ToJglBlsn069C2iZLRd/pIFNWUvzGjP2+4MNrHYclV0V54gf7hUXWocfzSNn7BRO
	bTKfxhvRRdBLyGU40DJ9CUDcDWQQK4dfDgLDOB6MKJ3eYLH71SadEwdhJTVcHg5K
	7Qgm1g==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u40rmb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 16:08:27 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-736b22717f1so1874282b3a.1
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 09:08:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746202106; x=1746806906;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZCURuZphALca4oH54vQyehTX8P10HSrIKR7pzdxmoGo=;
        b=slnYetxHxPLBbFTCGyv/MNjbmtr9Xm+r5Ev9TNkTOlodKkQMl4IkHPTOkLVR1IS4Cu
         EWmqcxIp51BmGbhvTjdtLB6pic2jLJBpCgNKNZOMJEc+F5ly2gKiTv/w43AunSMdu1L1
         wzjLtcg3ykJoTDJfUmJ0i8/m81TrXm3eT4DTEP25wqWAT4QeJ5Fa2odMlXZNdlOgDakI
         M9dpZS+IJH7SuK5yM50gooWfXRjbt2bLQQSz9B6J21GOP9r0vpRcvh4o2HErb3g9+KCo
         ckUrRRYwHyuMoiXwJlpJarTsg8eQAYZ0zrjizBpn+yz5hHghm7F/1tW6ipzNTCx5BG2z
         NEBg==
X-Forwarded-Encrypted: i=1; AJvYcCUd9gaKqVPYyFCyhr2vM36oJKXa29QzVGzZCymzVFzF5vLZyVMixma3Uvd6fUhac6yaCujuGXurqJ0q@vger.kernel.org
X-Gm-Message-State: AOJu0Yzft884bUqiBDNN+fLacGBn3rMsZ/74EqQm6TTGhwaagEEWbI4/
	oKj99PKeXdkxLSpkY/yFbQ0bG3OfYX4zUWtzRGJoh0OFVDxQLe0KR8PQmcGNpDnYQhISmnYW3Wd
	icT6lb7zCQHj7X6+/+cdSqsFCagr0usQ2OFVrig7szkkPUa2r73+W7QdLrWxX
X-Gm-Gg: ASbGncskXfRLEk5B2f29GdCG9AMD5mGrzc0dsmgYSFf1gIjf8np07kA54aqZOOBPDQ7
	7UNBh7YviJlfFUleaUFjr+e18ojYvIEHJAeZzbquA+bWW3Qf3ZlFOqxLIMioZR5rck2F+FTxlK9
	5XCKzhDSkEv0cBAs1JqNs9JxwiobZ2YC6FAEpkV+HyuwbjxFZ5H8iHpXXOb8MbeP6L+Xidce7MA
	vslRXc2g51eXsNRvy7OE6YSJRq7681npsljWwQ/8aKaDWzc+fUIanpMMOsMKWK28mhSbCLVl4Tc
	EFAFBcsMgC6AU0gBx8h09CZYUipyd1jVN/9cbgDUSIz+iTjxT2Uy
X-Received: by 2002:a05:6a21:2d0a:b0:1ee:d664:17a4 with SMTP id adf61e73a8af0-20bd7662d30mr9078754637.10.1746202106430;
        Fri, 02 May 2025 09:08:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFngvS5zV7065QKg5lJ9bJgIZHUtGEmOAi1Tej78hd+AnKg2zkgE5D/a4yAbK+mQc/qiES88A==
X-Received: by 2002:a05:6a21:2d0a:b0:1ee:d664:17a4 with SMTP id adf61e73a8af0-20bd7662d30mr9078706637.10.1746202106026;
        Fri, 02 May 2025 09:08:26 -0700 (PDT)
Received: from [192.168.1.4] ([122.164.87.156])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b1fb3922041sm956661a12.2.2025.05.02.09.08.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 09:08:25 -0700 (PDT)
Message-ID: <83c427de-c678-4408-9b04-2f3d2eef9fac@oss.qualcomm.com>
Date: Fri, 2 May 2025 21:38:19 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] watchdog: qcom: add support to read the restart
 reason from IMEM
Content-Language: en-US
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>, bod.linux@nxsw.ie
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
 <20250502-wdt_reset_reason-v3-4-b2dc7ace38ca@oss.qualcomm.com>
 <f8b57c99-2f6a-496b-a6fe-3e2aa6b0b989@roeck-us.net>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <f8b57c99-2f6a-496b-a6fe-3e2aa6b0b989@roeck-us.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Bv6dwZX5 c=1 sm=1 tr=0 ts=6814edfb cx=c_pps a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=wj/iefQKNY9P1RSDfSoyGA==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=9TRSRwEFIUlA1hFsN1MA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: T1Y-SQOlMlN2FWPtrhnSAXGJdB_ZMcYF
X-Proofpoint-ORIG-GUID: T1Y-SQOlMlN2FWPtrhnSAXGJdB_ZMcYF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDEyOCBTYWx0ZWRfXyztWPJKnUbrf jNX/Y3C8hs3FultC+ecFhuFYgMOB00IZuWDiR/ImNULClaS+Cf2g+Q2se+GolDwDbdRc+Wk3CPn mbkTNouMgj/ObjhU+olEsX7AWuZG6xNY1DibZnO0qHBxqwe0vFs+I5Z54zZTpkGg2D2mDp1rK7A
 n5VkHEow/YBR+UwvU+WvwWMqKapovXbGL3eF8+T7oflTp96WLvJ/uV5tU/agT9VV8FRfFsisd7y AkNfbG88OXmYHA1bYcuNyRAlLmWv3DOE+Q1wIkJZNjZPYt1KHWMe3oISNr+Kxr0vRGIPvTGpuhe LmETXNVOGrmfhDABQXS8dvDsdCHfHAkGG8ni0DzwEZigzehEtJHTSZsiK0dwOdK/3JiRU2vMrwb
 adBF1jALUIHyDK778tjhtet+c8XBchTwRfWdp3nQz2vlkvwtDV6MuofiYZXUyrJp8oSraqdb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_02,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 mlxlogscore=956 phishscore=0 adultscore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020128


On 5/2/2025 7:03 PM, Guenter Roeck wrote:
>>   static int qcom_wdt_probe(struct platform_device *pdev)
>>   {
>>       struct device *dev = &pdev->dev;
>> @@ -273,8 +304,13 @@ static int qcom_wdt_probe(struct platform_device 
>> *pdev)
>>       wdt->wdd.parent = dev;
>>       wdt->layout = data->offset;
>>   -    if (readl(wdt_addr(wdt, WDT_STS)) & 1)
>> -        wdt->wdd.bootstatus = WDIOF_CARDRESET;
>> +    ret = qcom_wdt_get_restart_reason(wdt, data);
>> +    if (ret == -ENODEV) {
>> +        if (readl(wdt_addr(wdt, WDT_STS)) & 1)
>> +            wdt->wdd.bootstatus = WDIOF_CARDRESET;
>> +    } else if (ret) {
>> +        return ret;
>> +    }
>
> Seems odd to me that there is now a function 
> qcom_wdt_get_restart_reason()
> but it doesn't handle all means to get the restart reason. Maybe I 
> missed it,
> but what is the reason for that ? Why not move reading WDT_STS into
> qcom_wdt_get_restart_reason() as well ?


No specific reason as such. I was little hesitant use "goto" statements 
and such as. So I thought this would be little cleaner approach. Please 
let me know if I have consolidate everything under 
qcom_wdt_get_restart_reason().


>
> Guenter
>
>
>>         /*
>>        * If 'timeout-sec' unspecified in devicetree, assume a 30 second

