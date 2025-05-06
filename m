Return-Path: <devicetree+bounces-174115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3FDAAC1E3
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 13:01:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52B811C2080B
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 11:02:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 352E7278755;
	Tue,  6 May 2025 11:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CHlNVFCt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 907EA22ACD6
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 11:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746529304; cv=none; b=SlmiHm6OmywDsj4rvtCCmaOtE9+KbQqjUIAQZhL+CYbibNChhcBzeuD03zYuZVDafD5xHlZRvsC0AQ6i6Z61x7Vp0J+PuDs6jh/z01XJCpX+9tUtfW+TyjOBSNjAqwsqHWxFSClDUjYPnNj9eeWDD+SYiSsA7+zfv0qMWBBqZ6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746529304; c=relaxed/simple;
	bh=PWlHvaLkhP5+f90ag8a7QEwiDzn90AR2tA+8AynAPYk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ik/cZjorLEh4snw52jALOF42UXwpP5ao35StyYejXwthN1ExgMe4ozS3xNPPhFa/d2mbwtXCEaxkWesOZcfGGjOAhoiX8mTLANiZnRpF4MYXpDjjXX5vSNB0HI6vZR147aN+hROr+K/fh4OtZ86uP4qcRCtfVIp1fREPuuV4rcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CHlNVFCt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5468QBpY014180
	for <devicetree@vger.kernel.org>; Tue, 6 May 2025 11:01:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XPlGScL2K0GhtQO2Jsx+T3g5O9rnsybDR05h9CmsTv8=; b=CHlNVFCtrULDQeoZ
	pvYl7XsI0x6+at4eNz+WLW4oUkZXYc7kE5j8V//CSYXSjMqmdb489uAHIBbnn3NY
	WqfXEjQJaoBrsX7evJ/1lh8uHjE4uKrOFeasBBRL/22rEj+qTANNtnE8LATJK6Tk
	uqj7Iwd0ToW39Ze29MBLZ7U1YRJ2UduVqKGUGm80f5zNJYXa8Tz4n6PQfT+m8+qe
	LqT2Xt7FNhyhyOnMOWD2XkWScR+XNcpiplBPugkHr5wfNrG46FdA260imQpmEpzc
	nZTFZ5dJmaw5SLjCWgAMnCkZy7rF6VmZ4gbAgG93sHIPts46TRmwsMmmc1VmHSRI
	Hy8s9A==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46f5u420v5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 May 2025 11:01:41 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-74089884644so1361266b3a.3
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 04:01:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746529300; x=1747134100;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XPlGScL2K0GhtQO2Jsx+T3g5O9rnsybDR05h9CmsTv8=;
        b=kIfYF5E7YNkPU0yvOVXGT62p8xKGx31qvESCrKkcLHZa3GnSGke0Z8Kg/TlG4P3+ah
         y/jh3vV1aJcSbZTOG3xRgxbrWYavEkHqRanSF+CC7gTX6hQTuHAi+04gzyoTBhMGY+Xr
         paEdCAa9h7rD0F6d2+e0UTh00gEQQZtso1HXZ+Ck2P+qEqSSYVfDro7xB8gqrsqP5Mpj
         zXJFZHzOssPlPgBKTanXVqpRF4AU/ou1O0LBAicP1UuDnfTA6kDD3VJuwReLsvMaRhhe
         hUCy+++Cg7BRdJA80b17hE0cS1FSHQBrI5gkdv5Wj0zPulsHELVZvPwSX73FQbon/MCo
         0IiA==
X-Forwarded-Encrypted: i=1; AJvYcCWEciQU5hw3Qa0u1Rn9Jq5uboWOktzTr3/eEO5JEniREc3YXK2X+TEFNls7gon0XYY+YEi0UFAf8tgX@vger.kernel.org
X-Gm-Message-State: AOJu0Yy27GNgoW1BAQPrEctm9a+nmx20XyWJ3kyh8eGV1Jq2DPYE7w0x
	l2ZlrbuVTrbAp5m9qIj0RQ+3HHR0EeAVB6EbeOOqKB2i2MZTGRCNzcGy/l65WkN2AilrrhBh0lS
	TcTfQYZ6F2gTQunb2IZhLKKstHWThIv+QjHImdnWfT0XSswDqbp+PMUv5k02/
X-Gm-Gg: ASbGncvLuml+U4be6lCTKhZCFdtODyam38f/yBzomoFqgnhNS1wN8SguQx7L4fsAp6Q
	aEE5kxme2TKXXss89xb2wfty1wk7Y+wNZz9x6DdBRFjBlZbDLR+Y1qsTXJitjQ63Pz3ceiVaO2d
	h6GtGZHfdsPhOYIGN11K6DpgJBBH6pb4AfxNWMhyAmpjA3tnUKjAzvbm96etuUG1cuWmB2z8IDN
	2sOPUdmI/0+jsntjXLJapAcMr/Z1E/zqLGYH/eev2x+9qkl6xkzpknPjWLctsQRGY1+dNu/6JOX
	4v0laLAkDI+1NJBpbBbkCOyIzylLqfzFbeJ8enMvWuRGLWeN7BYg
X-Received: by 2002:a05:6a00:35c9:b0:736:9f20:a175 with SMTP id d2e1a72fcca58-7406f089f3fmr13259743b3a.2.1746529299953;
        Tue, 06 May 2025 04:01:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYvf5EOj9tN8ah4mjYU0f/1q9qe3RBcD/dExIRKVlIb2Q6kIGMD9BKmcQB9z12H2X9ZRBhhA==
X-Received: by 2002:a05:6a00:35c9:b0:736:9f20:a175 with SMTP id d2e1a72fcca58-7406f089f3fmr13259694b3a.2.1746529299466;
        Tue, 06 May 2025 04:01:39 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7405909c491sm8577001b3a.159.2025.05.06.04.01.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 04:01:38 -0700 (PDT)
Message-ID: <8c2a53c2-c11b-4d49-bfb5-b948767ba6c7@oss.qualcomm.com>
Date: Tue, 6 May 2025 16:31:33 +0530
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
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, bod.linux@nxsw.ie,
        Srinivas Kandagatla <srini@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
 <20250502-wdt_reset_reason-v3-4-b2dc7ace38ca@oss.qualcomm.com>
 <2036ef2f-c7ef-4f42-858d-8d95c430c21a@oss.qualcomm.com>
 <68d280db-f7df-48c8-821d-f7d408c302ad@oss.qualcomm.com>
 <8a763c70-adcf-4a14-bb68-72ddc61fa045@oss.qualcomm.com>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <8a763c70-adcf-4a14-bb68-72ddc61fa045@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=KcfSsRYD c=1 sm=1 tr=0 ts=6819ec15 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=rRT3dCuw-ihC3ouNC9MA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: zEMxKnX3G0jk4Xb-j_Mc7NKLSig6Yd3T
X-Proofpoint-ORIG-GUID: zEMxKnX3G0jk4Xb-j_Mc7NKLSig6Yd3T
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDEwNCBTYWx0ZWRfXxxoikvQLa0zt
 u3lRFngUzm9nLZ+UOPzdUCFvF+24bNNbsrqinqrSbXDH/tGlOYph3e1WkbH9KikszpSsfHVR3dL
 FI4bnWEmHkQLYaO7xrWAkAm8os1LDURAOMw4utov+6oVEQWvsY3wMfyqlOfMy9zlf8C5pxSO537
 qqWIGqT1j4YAJl/89ESRFP8OlII0HvazHAp6nuH7VsurypNDJ7wYgroCRr6NKqRfruDSpG0WkiC
 j80vXKGPJvTJBMRI0D6xcUBR77GlcANtpXm+APAvXsBcnmJnlJcGcR1XPzUAieXWtzMCILY84t1
 2pzE5sGuIN053N+QRdWvLXTCBAvC238i465gCZLQifIYCPsilJRL7Um6npME1izKicQEVymRpvk
 X9f7UmzBRZqVIEz/K1EXFc1Wz7uiuzCu5syCzCDNqJG7up00atC+jiXM9L5tqQwZp8185uDu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_05,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 bulkscore=0 mlxlogscore=999
 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 clxscore=1015 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505060104


On 5/3/2025 3:53 AM, Konrad Dybcio wrote:
> On 5/2/25 6:28 PM, Kathiravan Thirumoorthy wrote:
>> On 5/2/2025 7:33 PM, Konrad Dybcio wrote:
>>>> +static int  qcom_wdt_get_restart_reason(struct qcom_wdt *wdt,
>>>> +                    const struct qcom_wdt_match_data *data)
>>>> +{
>>>> +    struct regmap *imem;
>>>> +    unsigned int val;
>>>> +    int ret;
>>>> +
>>>> +    imem = syscon_regmap_lookup_by_compatible(data->imem_compatible);
>>> Try syscon_regmap_lookup_by_phandle_args() and pass a phandle, see e.g.
>>> drivers/phy/qualcomm/phy-qcom-qmp-pcie.c & phy@1bfc000 in x1e80100.dtsi
>>>
>>> That way all platform specifics will live in the DT, requiring no
>>> hardcode-y driver changes on similar platforms
>>
>> Thanks. I thought about this API but it didn't strike that I can use the args to fetch and match the value.
>>
>> I need a suggestion here. There is a plan to extend this feature to other IPQ targets and also support WDIOF_POWERUNDER and WDIOF_OVERHEAT cause as well. For IPQ5424, all 3 cause will support and for other IPQ platforms, we are exploring how to integrate WDIOF_OVERHEAT. In any case, can I define the DT entry like below
>>
>>          imem,phandle = <&imem 0x7b0 <Non secure WDT value> <Power Under value> <Overheat value>>;
>>
>> and store these in values args[1], args[2] and args[3] respectively and use it for manipulation? If any of the platform doesn't support all 3, I can update the bindings and define the number of args as required.
> Let's call the property qcom,restart-reason and only pass the register value
>
> Because we may have any number of crazy combinations of various restart
> reasons, we can go two paths:
>
> 1. promise really really really hard we won't be too crazy with the number
>     of possible values and put them in the driver
> 2. go all out on DT properties (such as `bootstatus-overheat`,
> `bootstatus-fanfault` etc.


Thanks Konrad for the suggestions and the offline discussions.

@Guenter, I need a suggestion here. Currently as part of this series, we 
are planning to expose WDIOF_CARDRESET, WDIOF_POWERUNDER, WDIOF_OVERHEAT 
reasons.

Once this is done, we do have the custom reason codes like Kernel Panic, 
Secure Watchdog Bite, Bus error timeout, Bus error access and few many. 
Is it okay to expose these values also via the bootstatus sysFS by 
extending the current list of reasons? Since these are outside the scope 
of watchdog, need your thoughts on this.


>
> I'd much prefer to go with 1 really.. If we used nvmem, we could have a map
> of cell names to restart reasons, but we've already established IMEM is
> volatile and we shouldn't mess up the convention just because that
> subsystem has nicer APIs..
>
> Unless we rename the subsystem to `fuses`, `magic-values` or something..
> +Srini? :P
>
> Konrad

