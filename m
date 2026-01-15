Return-Path: <devicetree+bounces-255701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D36D7D25D37
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:48:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 72FD4302D5EC
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 16:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAE943BC4FC;
	Thu, 15 Jan 2026 16:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MW5wCJMO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jI+v3Hwe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550FD217F27
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 16:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768495677; cv=none; b=cvH5++eUldhUQkiKQ9SW5SZ+8pRXM27zFKfsWmerA2F/I00MrMlykROaVmWUrSm6xSqlSqc670dHzRKFUjKsKQZUwvjVZa4avvfRX3yR/54BRzDkeoWyjgckDl0xadcCM1Pf/R0bfyt61k90memMGHCymzo7Y3ZYp3JbtoLACOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768495677; c=relaxed/simple;
	bh=z24WUc0jYCzQOE+TVJ4vo/G5+OolGfVcz8M0wSFZylk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QkSSmi2+tmuNPX7ONA6fj9SquYdilC8QGgWZnUCi+DWnI4sLqLxz0M8VjO95h9uj9zFaVdC3AS2DdSdPghjMORA1GF6xhUMlKF8ciD6HpO8/8cyYLcYqPXlFNgQZf472LAgwAV8CSjuYccS3ET1Ci4Cf2P9SEG7FZbSxmFD0GAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MW5wCJMO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jI+v3Hwe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FFYrFU2175685
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 16:47:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pIh92U7M/S1GB+0A7xQvN1tSDO8g/vT6x8OLZtOVgs0=; b=MW5wCJMOJlZN8w2R
	/DbX7/BOJp+S+2rUiZS2C1j4kBxqV0Hk+xZ12eIMDFQrmMqES14u1YHkBJOJXOaz
	NEiwauX2Oy084w1/qZE55KBZmVr3eaKdXoL5NpmazZAW8dDpHXpV320eevvbyE6U
	veEYvviyLBR69bsb/OmDLgFUXe52FRM42mxW1KZlmmx269Ger9nFwgcGvOa4CXjK
	sfCV32Z19yJ3zko4e/XNfiduTlzAKadrsRgSw7OQFCGrYgy84crbUVtp/F2lYfSa
	q9mPXy1IwKn/HaTJVlm4j9uqL8ysdPwpCpdkrl7Ox2zvQ69bYcsJvv7gWylXtzZa
	Tp5WpA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq1xh8fvr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 16:47:55 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34ab8aafd24so1508279a91.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 08:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768495674; x=1769100474; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pIh92U7M/S1GB+0A7xQvN1tSDO8g/vT6x8OLZtOVgs0=;
        b=jI+v3HweFwhGvR8mySG4IYw5ZJ7qTUwsl/s+c7UYjaduVMfATALqKfusgQBx3ZRvV0
         Fl3TaJrTlgv5VgOURkXaYAUAgpM7pZaBXavRBhhMEWVBu8WHo92cXwlMaSy7EaHW1oQr
         3tPysrYbZEKAa0dQchMZCnU444g+U1DuiPiyBFp6+7gXNHbPI3YKR2h1lYqmcsN6KFkx
         RVTWoTYssunz8fqLfo4EWXjugg5WHQqk/fa510puNccjgulQgqBmeGT9jzenGf1BOQMs
         UtLG00J7aUJNanvtrX0vOYCWcGReJu+Eyv5YTgM0RW/XXDAU1IKI8qO1pS+xeCAyuZ/M
         r+cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768495674; x=1769100474;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pIh92U7M/S1GB+0A7xQvN1tSDO8g/vT6x8OLZtOVgs0=;
        b=fFyZ/HM4nmFRL6n53SBTyyIUIA/39uTt/AwawDrD4+EG1jy75oqmqEOgTJOPsJfjUc
         ShoO3MNCPkR1digtm/uAqpNseBsH5O0cV2r7j1+MAcLKbq4Tz4pUtreLL54FJoMkvRht
         FN53h0iTfJhvgTTX3aOkoNLCNJq8gSv4Y3JbSrV5XbXg3MdBcyScH3ZUHnoBtJJSTwZk
         C55jqx8oG7p97m8SLHAssJZIU5YcKkdg4RMzQ2nzYHm/lGy+54d02mEQeEO+jQUqY9tW
         ClJwNpi9wcgINX2g5kkuLikoVEsrujqv35YjPiNQUDdgRWtcc7RA8W7K4+D52/wetwGs
         Bt5A==
X-Forwarded-Encrypted: i=1; AJvYcCVMpoVnTm8xj3d4jjCGgkW83qwC68u09QOVCln2myBwRiVKoaophPpb0VCHcfKoke6preOMCSWPsRH1@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4IyZy7Cohx409YPIhNiOetFki4ToBgsnzKocd0ICIBPRmYApX
	2FXBQLIE3n0DfQb9IsHIHKxjeE5fP2vWhWZWUpHjywKL91YxQsOpwQ1TXIMsd0yPOIx9zajIo2n
	PZ8L+LbdOcr9oTAvqSCcn4fvfMgN1yxbD0+va6o0kN+wnlTuytbzPSLlWHMgmxfGm
X-Gm-Gg: AY/fxX5yzVlJYvjDdogmihVEQatIitWcpuF70Tz+8Z3lcNDOYlUGjjnjNphW9hQFyQY
	ex9g+7Vp+90kay+t4tokmdrYYlxdje3aCGe5YX1YUVpEz3AAoMWOb9JNOF4Arxs7RLgY120ZOXw
	cdU7z/NdPvuYDlFh5RcmTQjutMqbEibK9hX32xrkFkAkl6LwW815UlPbjFhJ+U+dkP/yZSodk8s
	gcqpS6WFAM9SU3xjZIuPBcCvRVfsDVTINoiXyNkVaWN4o5zE3XDpAvtmH7v+oG2uFOhcaxnVBSh
	k9xQ+pa0HM0fVRM4IhmPT8+mr1ZPQhWHhGjplfZnyA/hRMD5tNe2NNLtbXQf0Ok3rJlImfgjiJj
	+0gXR3PzlgxxDi1lLBpDJ0iycPyPsZKBMI+D7
X-Received: by 2002:a17:90b:2752:b0:343:cfa1:c458 with SMTP id 98e67ed59e1d1-35272ce8101mr69631a91.18.1768495674084;
        Thu, 15 Jan 2026 08:47:54 -0800 (PST)
X-Received: by 2002:a17:90b:2752:b0:343:cfa1:c458 with SMTP id 98e67ed59e1d1-35272ce8101mr69597a91.18.1768495673590;
        Thu, 15 Jan 2026 08:47:53 -0800 (PST)
Received: from [192.168.0.195] ([49.204.29.18])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35267809f4esm2478056a91.9.2026.01.15.08.47.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 08:47:53 -0800 (PST)
Message-ID: <c3330f11-a6af-4734-a927-1aa468c774fa@oss.qualcomm.com>
Date: Thu, 15 Jan 2026 22:17:47 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/10] arm64: defconfig: Enable Kaanapali clock
 controllers
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
 <20260114-knp-dts-misc-v3-10-a6cc9e45de93@oss.qualcomm.com>
 <mq52brcwos2tzuvwkqsjkii6ldukmpxhauvs4jrgmmwnivn3ex@ar6j7fprdf6k>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <mq52brcwos2tzuvwkqsjkii6ldukmpxhauvs4jrgmmwnivn3ex@ar6j7fprdf6k>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: sneiuY11idVTl655-nhUHe3yerXssYIW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDEyOCBTYWx0ZWRfXxRLR3bitA1Md
 zjQxwq8Wwt39CxjJhcbRkfXLd684gnefCc5t/82EhHaV03weq/kmSm4x+uVulnU6ZctQkdqWbJO
 JnPcb2wWLlQpJJQzoC0Lfa71xqBD3hxeMho984UbKZR26Nqf3z+PLHq259D+6P7M23IohhDrEsE
 OZPHDhT579R+PN1jGHndMHLEngPHSQfxq0CvWPFV4BDq5q3tI6u46S7hy/6Ziz7cI40jstvgUeb
 kFjJiQYX+9RhJx6al9rVqAtCjw9Zj8QqxhXpaxymGFgaZsInZ4bY5rrxAQRpRKZFV5E0iNhJAbh
 QjCk72/v5yF8hrv3ke6d1qX6YX5iZPtIQTJ2Qc07r8wHvoWPzVy8LKMwMhVLTVmvdbucr2QP/Rm
 2tTsDhvXzzRr7y5HsSHk9YIGayxDpo0eVEKD8zA16azQxkAkkl8pCz5cPj2wUsR2jMTyejnWwna
 BeQpHEXAHSJoENDq4MQ==
X-Authority-Analysis: v=2.4 cv=TdWbdBQh c=1 sm=1 tr=0 ts=69691a3b cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=sDpHl6b8cZmcZdfeLADyyQ==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6D_Clf746HxYCvX74c8A:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: sneiuY11idVTl655-nhUHe3yerXssYIW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_05,2026-01-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 bulkscore=0 priorityscore=1501 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150128



On 1/15/2026 12:50 PM, Dmitry Baryshkov wrote:
> On Wed, Jan 14, 2026 at 10:49:12PM -0800, Jingyi Wang wrote:
>> From: Taniya Das <taniya.das@oss.qualcomm.com>
>>
>> Enable the Kaanapali display, video, camera and gpu clock controller
>> for their respective functionalities on the Qualcomm Kaanapali platform.
> 
> On which board?

Will update the board details in the next patch.

>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  arch/arm64/configs/defconfig | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
>> index c43dcadabec4..84e9d5785de6 100644
>> --- a/arch/arm64/configs/defconfig
>> +++ b/arch/arm64/configs/defconfig
>> @@ -1452,8 +1452,12 @@ CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
>>  CONFIG_COMMON_CLK_MT8192_VDECSYS=y
>>  CONFIG_COMMON_CLK_MT8192_VENCSYS=y
>>  CONFIG_COMMON_CLK_QCOM=y
>> +CONFIG_CLK_KAANAPALI_CAMCC=m
>> +CONFIG_CLK_KAANAPALI_DISPCC=m
>>  CONFIG_CLK_KAANAPALI_GCC=y
>> +CONFIG_CLK_KAANAPALI_GPUCC=m
>>  CONFIG_CLK_KAANAPALI_TCSRCC=m
>> +CONFIG_CLK_KAANAPALI_VIDEOCC=m
>>  CONFIG_CLK_X1E80100_CAMCC=m
>>  CONFIG_CLK_X1E80100_DISPCC=m
>>  CONFIG_CLK_X1E80100_GCC=y
>>
>> -- 
>> 2.25.1
>>
> 

-- 
Thanks,
Taniya Das


