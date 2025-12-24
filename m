Return-Path: <devicetree+bounces-249354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CE0CDB405
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 04:23:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E7E23035D2E
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 03:21:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA7FB314D1B;
	Wed, 24 Dec 2025 03:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ymnzvl/G";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VXaV+P5y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B99F314B83
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 03:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766546466; cv=none; b=SuE+1fRsBNsadd+PdogZBrnaVTz/D06eiZJ0dqjWY7ZgYuJSw1A9uPvtogUBzJAM5G2PHjo7ezJDqLwZiTzKuSR9bQTNeutFOPe1LqOk+PDFysxLRTT/W7FELBfd3zLc/Lq6zwi1yj8GUMGiZbgMpcgnkHKJsHStrAKL8Lyzqw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766546466; c=relaxed/simple;
	bh=T50vE2dUYm8Zie1nHtYyZrvmnFybSZOoezC3TSTzs28=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tbtdvC74m38gkeqIshkOTR+dya+BaRMA7o5uswjDVVrr0ARsuW6pu2oiDF4kEaq+S3PpxFjmGwjyqB750z65FXDqL1+RWe4Ca0p28P6dVsRyz0O5OQoYjdDhr2Hzzi8d/EpBdCJs1+ohMwwW9OzhjplU8tRQmLsh7xT4uBFIVWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ymnzvl/G; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VXaV+P5y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNJCoh21056162
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 03:21:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ef2xbZYFBLvV8iHc1w+Z8FJ2huGyVK0CDpCPxQoM66Q=; b=Ymnzvl/GE98rvMHF
	9M4c7i5jv0O9mzPwTJwvVy93CoB6epDZmX8N2h/EKVLfeNZFEl2lMj53DzLGAfKV
	KLIjPzq2whuYYND9qWIvjEnigsNyluy2Mx3FzZn7M4nWcPj3ayuugb9HWd1mU8MF
	9GZg3cjqGsrE4qYUOCSGG0NPmLdasaZG/OY+jkJ3q0nQ8+yRkg6PuMEVzeTLH9V6
	9Pc/V/sDWoZGuFlO1f0hw0Xm9FjYsw1F008nKh8fbO6mcI9m9ILfJOFQe0XTaRgN
	ZXJvst//6ygpyaGYsdw5F2vA+fi+/BINmdVQvg4N6LxPFYCuyw2+9oknqJDWeGvy
	64cF+w==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b811v14en-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 03:21:01 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0e952f153so170290235ad.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766546461; x=1767151261; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ef2xbZYFBLvV8iHc1w+Z8FJ2huGyVK0CDpCPxQoM66Q=;
        b=VXaV+P5yHXmdmsem7Fa8aV5KJDf5qvwKiv0yfRvAsazc4ZpdKc/KZPlwFGmsZiQi2p
         PO+SYp9MDoaoCgBNxi3uOm7ebM6+XA0WbGqQVrxJr2E9Ch4xWJ+uS8JEkgqdYMP6WKqb
         0N4NeAwAkq9H6ncRSTXq5w8iDoZLVMKwODT8adpXJVD86ogRh8oAYpthe+h0zW87XjWM
         hYvCpwEJOMxeI+3zkd7Qheq/6+2g0vOuOVy2MT8oOLcRSPgFmzFgkbSEjWhxOuaDeBwo
         Nb1qxhclaww7it6FElMxukJ9tmCIMlJJppKDrTFbYs069wC7cF66Oy/zTNSKuj2XtHZc
         E9iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766546461; x=1767151261;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ef2xbZYFBLvV8iHc1w+Z8FJ2huGyVK0CDpCPxQoM66Q=;
        b=DAbYHkAQoV1Cj7KYaF8APelbCv5WNHIp9vhcEstonp8bx7CZPgAn2n5DgD13zA30Mt
         StwmOcWzHJAjEeL3vpLLT14nmP44cZxPtqLQ6jVwpUTnZqRvzjkbEB7N2dG7ABNAMlYx
         EU0pWA/mYarGSeo2m5vZzowlECaS9PsFoKTFdRCrhx45vClwgON/lI1GS1s/wRylg/4q
         hE7Q8AIDZ/kP0B+Gj93O8pgditH7aEShErGkwomktaP9WA23XxBDddgHznXIBUjzPJLY
         n/lGSAkjIwSuxlMY5w7rZzC9YGg/BLA4eF/Vf6dMoKOYxNu/4nxwIiZVFEqM370lQEU7
         LY6A==
X-Forwarded-Encrypted: i=1; AJvYcCU3QHoD7etr9LsmNpzxgNAgLk2uY3OocJVuipTAsdIqBvOe/yrdomVwaYddR/9AJnjqoA9w8CTSWaag@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7s1T1OPeuKBZCT+2YAEi41C88QKvvNXJs8XA7Vpjvjiq9kDXt
	HAKS2R38aHKz8+JBwt4w/0KgLXLPC6FlWbP9wHm0iRL/sgADuxcyY1TyxbQqvDgDjgL6kHHvAof
	1v72MGhcsztF3z+XLyHQU6G9457PLp/nl6z/0MP9G7kUeqsRjt1Nx5SqsimWnXgG4
X-Gm-Gg: AY/fxX4PGoxnOpKZ9RGr94v32DcoEVw5MwzbOBqI7ZkebvPYKS4CzzzG+F4xytsEY5U
	k9ZedzUmeSjQ3Y7JgRUqWjHBHmYuyPV3YfFyl3len7cCXH4torVatpAC/JChKCT53NobjnW0DwA
	+8mvotHsJakx5oqUndiSPBSNQI5G7UUEqFkOcnm0wW9STWl1KODHqFRLweoIyDBhBRXDI5UtHGM
	Ce5FGn3NcmJEDXLUXQx8K2nenFXTly34p8bR3L838f++xIoZu5gtoZvl0qv4gyOtqtrdS0TJBZi
	xjmk2DBsL31qADM9Qb3gX88Mc/g+Avyotr0vPJj4jzRilwhpfDda+x76eB/2P3/iA6r9oOybTpj
	Bxpi8fBUTi6T4ESUD9/7qgt+u7pLw0/shax28RnLrk3Gf2dXxmxnE2PLzbMaGQXXa5IdAUCj2dg
	JW1ul5
X-Received: by 2002:a17:903:4b08:b0:2a0:d692:5681 with SMTP id d9443c01a7336-2a2f2424895mr139884995ad.24.1766546460875;
        Tue, 23 Dec 2025 19:21:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEr7VP+KbQ00quvc7LFltxfmgOjKAAucSk+LjkUtqG/DLGixAnZdWekuOsy1KNQfere6mRwcw==
X-Received: by 2002:a17:903:4b08:b0:2a0:d692:5681 with SMTP id d9443c01a7336-2a2f2424895mr139884815ad.24.1766546460362;
        Tue, 23 Dec 2025 19:21:00 -0800 (PST)
Received: from [10.133.33.224] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c66bd3sm139239235ad.1.2025.12.23.19.20.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 19:21:00 -0800 (PST)
Message-ID: <9681baad-08b2-4935-a3d1-587458c3502f@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 11:20:55 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] remoteproc: qcom: pas: Add late attach support for
 subsystems
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Gokul krishna Krishnakumar <gokul.krishnakumar@oss.qualcomm.com>
References: <20251223-knp-remoteproc-v3-0-5b09885c55a5@oss.qualcomm.com>
 <20251223-knp-remoteproc-v3-4-5b09885c55a5@oss.qualcomm.com>
 <zavjg2ciefd6fmlnqryzvo6vmtlk3xmns62hn2kwctpgtstski@p6kk3tn6c6bw>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <zavjg2ciefd6fmlnqryzvo6vmtlk3xmns62hn2kwctpgtstski@p6kk3tn6c6bw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAyNSBTYWx0ZWRfX4L1u3gvQfjIe
 hlDqjtNrg9ohf2QkafVl7RFhnwMfaiTjL6abdzlJCY69u20lXtFzkBtKXw1uvYUz+y9xohScn9b
 d82E5KDCdNFOnjwvD117l/Q5T4Z8MI5hDBsdas+/A1P1G4qadkSqLDei6kINCkZLuDDwRpygfgq
 wnAzhlHlY96Q/EVYocu/iWDGr6GpnbH1zd33LPZ8jwmF4aL8W9wPUILHcH6VBbMGBegSvNbMWWk
 C0048iWM/eod/p3E9MqlPXjWAptd0aYNd0FpFncam7Es0mfaqj1Leo3FcRwNXfJQMiFvGqL91ui
 b+wfE+h3qwLYDKObPvrP9YwLRdqMNBfmerT1rTCIWe61QElrbHtLBcP/T6dLdeZzC/pMItAaIA/
 prHuKOPhziMkT74ODEomWUZSNbldLD6XMNICbm1vznuwS7w87oYfNZy7IU1VWRFLuMiCGP9X8nX
 9YI9ZxYwI8dcbcLbbQg==
X-Proofpoint-ORIG-GUID: hdUvGgbRamtGpQ7GyKJENr3DPKNKOYap
X-Authority-Analysis: v=2.4 cv=WegBqkhX c=1 sm=1 tr=0 ts=694b5c1d cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=AeEh3y5A5LJfT7oo4OEA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: hdUvGgbRamtGpQ7GyKJENr3DPKNKOYap
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_01,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240025



On 12/24/2025 4:15 AM, Dmitry Baryshkov wrote:
> On Tue, Dec 23, 2025 at 01:13:50AM -0800, Jingyi Wang wrote:
>> From: Gokul krishna Krishnakumar <gokul.krishnakumar@oss.qualcomm.com>
> 
> So, two names start from the capital letters and one from a downcase
> one?
> 

will fix


>>
>> Subsystems can be brought out of reset by entities such as bootloaders.
>> As the irq enablement could be later than subsystem bring up, the state
>> of subsystem should be checked by reading SMP2P bits and performing ping
>> test.
>>
>> A new qcom_pas_attach() function is introduced. if a crash state is
>> detected for the subsystem, rproc_report_crash() is called. If the
>> subsystem is ready either at the first check or within a 5-second timeout
>> and the ping is successful, it will be marked as "attached". The ready
>> state could be set by either ready interrupt or handover interrupt.
>>
>> If "early_boot" is set by kernel but "subsys_booted" is not completed
>> within the timeout, It could be the early boot feature is not supported
>> by other entities. In this case, the state will be marked as RPROC_OFFLINE
>> so that the PAS driver can load the firmware and start the remoteproc. As
>> the running state is set once attach function is called, the watchdog or
>> fatal interrupt received can be handled correctly.
>>
>> Signed-off-by: Gokul krishna Krishnakumar <gokul.krishnakumar@oss.qualcomm.com>
>> Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  drivers/remoteproc/qcom_q6v5.c      | 87 ++++++++++++++++++++++++++++++++-
>>  drivers/remoteproc/qcom_q6v5.h      | 11 ++++-
>>  drivers/remoteproc/qcom_q6v5_adsp.c |  2 +-
>>  drivers/remoteproc/qcom_q6v5_mss.c  |  2 +-
>>  drivers/remoteproc/qcom_q6v5_pas.c  | 97 ++++++++++++++++++++++++++++++++++++-
>>  drivers/remoteproc/qcom_q6v5_wcss.c |  2 +-
>>  6 files changed, 195 insertions(+), 6 deletions(-)
> 
>> @@ -247,7 +328,7 @@ EXPORT_SYMBOL_GPL(qcom_q6v5_panic);
>>   */
>>  int qcom_q6v5_init(struct qcom_q6v5 *q6v5, struct platform_device *pdev,
>>  		   struct rproc *rproc, int crash_reason, const char *load_state,
>> -		   void (*handover)(struct qcom_q6v5 *q6v5))
>> +		   bool early_boot, void (*handover)(struct qcom_q6v5 *q6v5))
> 
> Separate lines
> 

will fix

>>  {
>>  	int ret;
>>  
>> @@ -326,6 +329,7 @@ static int qcom_pas_start(struct rproc *rproc)
>>  	}
>>  
>>  	ret = qcom_q6v5_wait_for_start(&pas->q6v5, msecs_to_jiffies(5000));
>> +
> 
> Nope, unnecessary empty line.
>

will fix
 
>>  	if (ret == -ETIMEDOUT) {
>>  		dev_err(pas->dev, "start timed out\n");
>>  		qcom_scm_pas_shutdown(pas->pas_id);
> 

Thanks,
Jingyi

