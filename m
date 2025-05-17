Return-Path: <devicetree+bounces-178110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C94ABA984
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 12:41:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7B65B4A5B71
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 10:41:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55F941EB5DA;
	Sat, 17 May 2025 10:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LHaW42R2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88C101DE89B
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 10:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747478480; cv=none; b=jOpNzQ+IfmuCRcm+RmySN+m5gFLlgpucOZFpEdkyxXvfucYFot9nG3+b7sM6K8vvzovLLllZynJHMVlXmGRUNBPd/FdCsJwrJ8yN8/r63llphryZf4grwy1Cavh4Jx6WUN9nscFzy3ambK89uFVidRQGeGUB3JxmKXcsVpH9jCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747478480; c=relaxed/simple;
	bh=W/itcnvQpaaFxhLc5WAxPpHv+ElKddmKVPem0jY14NQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kwj/hwSMaXY/9bwDW7o5LgN0e4+w5/3vI+dvZALD+4o6O9n2bzWTmb/a0BC5ZKwWyCx5es0L8LF8k9Wp0K8n/rkAGs82w/1/8ojPdjpMMo27Ty/ABB2N24lfqf4E5C6CMGp4ZE+nDoTYdQisvbENc8pdYAKdZ6pVthW5MmRlbZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LHaW42R2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54H9wD8r020171
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 10:41:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sUFFqXgv+iFx1ppzwIqGbfC/jJrMz8MlTBLmcydgW8E=; b=LHaW42R2EhPMP3L5
	mOPAQPr7kcCyltWqjvrk7oYkoLHcXTNogSV6llUwH8aL9vlxYP8dW2qFhaRBeDQC
	iv3j+PRyQZoh2rpiK3SRqTfFSuW5DpiS9Hy2M/cHf79aS8adV1hYxW5WBhShOWim
	9xtfgfLShfwan3lMnS79Ui+TD+nStdsOTxQhxTIx+VSkdruPHtsESoEhjQVIMm9A
	B1wpKqj8AzH/bneiUPkbPiUavC/FVItgFTi2qLQOOjP3X/0EyxZnGL2HTN+5714g
	V47EUiBVNGv0XmQvN4FRkktkzmCRTJ5CFL7pKqEGTwPsn7IfGqF6GezF91phyw1g
	8nXpXQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjkygfyr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 10:41:17 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-22c31b55ac6so47482035ad.0
        for <devicetree@vger.kernel.org>; Sat, 17 May 2025 03:41:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747478476; x=1748083276;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sUFFqXgv+iFx1ppzwIqGbfC/jJrMz8MlTBLmcydgW8E=;
        b=eJcoaxwNdDWF4APKTtBWwhRu1sNtKdnU6DA3cFu2Aaw78R37xDdly8dNCOn45lBJ7+
         k90Jn3Pb41B7YKEdgKPTVB9UXi0p11k7xb2lrWsb4X4iHja/YxCus6aPJQ/rBvIWOAiX
         36EThX7XLlYEfXMdTmLXrhqyohMLKPUIIHDtBQBZloQq69bSwdLC48XxCAhu7iH72Y2c
         4TaKG5XucZYQkg4sDXWw5hPtBiXh9TGyR5bmom3ej0onGoOjQFhIJGKfll9RVRsFy9XG
         8zEYZuwhlFRlowHYcYhtBhGlHSYuwvZmYZ64TjGudWqY+Vm0t3dRvyFO18I4PQoiEqzU
         8fyw==
X-Forwarded-Encrypted: i=1; AJvYcCWxmAH7gNW9juo33sXT28rLYivQVn0ltNcUKv05z6syvlWXGm0HALYt+f9bEdAdA0E/hWnUxwAViHTo@vger.kernel.org
X-Gm-Message-State: AOJu0YydIQfPabEGa0GRndRZXB2WQkTX0DbmdzL3bjxUDtyAj6hJ4VnW
	vqfZl/qE+4tHIrQBjkBppFzY93/mTAL/zPbj3iyAL4mV+kQw+EpMt1PlrtWMAb48PTD1VIEz1MC
	MQwTV6/vDysdZiSxfQi4rOzUEtCFZtDWf98WgysscJ2gib+ebXXqe3DZmBIhGIySX
X-Gm-Gg: ASbGncvjuDr4IpZEEohJF1AJ552FO0z8zgCZVqeti73nYml5w2KzpPO6+2iL3T3qg7w
	tW75FxLuJSOg+0/RhU2yU1yJamh1x0FQ3khHWokV/0i1haPtsRcKJMsBJz8LgBIN4oCK3EMkx6S
	bG6DY0JNwuIVgV6CF5Q1xnwMATV9qn+2XMw99KafZ3GyPgdJgKQbdCq9eNmqYQR7wSRAdBB/p3K
	92xRY7/LTvai71OjE22DrgsC5qZbEdZ+afHEuf1z40+Ce5frAu89VVKHO9BD6xIf/1z/732PwnO
	lfrykI9Te7eXaJIM/K52aJ9SjnSieQOe3G4BH30aeMGUx1jbVn/E
X-Received: by 2002:a17:902:cecd:b0:210:f706:dc4b with SMTP id d9443c01a7336-231d44e7c4emr88477405ad.13.1747478476406;
        Sat, 17 May 2025 03:41:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF03apz0TtzAK24dth+AnzgjgONUQeTXNUK8K3witaHAREvS0v0ocsPc21LJow2qL9dXx7t4A==
X-Received: by 2002:a17:902:cecd:b0:210:f706:dc4b with SMTP id d9443c01a7336-231d44e7c4emr88477085ad.13.1747478475908;
        Sat, 17 May 2025 03:41:15 -0700 (PDT)
Received: from [10.151.24.139] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231e26d83c6sm24759895ad.47.2025.05.17.03.41.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 May 2025 03:41:15 -0700 (PDT)
Message-ID: <4b931949-0254-42d0-8aed-987e6e0a0a79@oss.qualcomm.com>
Date: Sat, 17 May 2025 16:11:09 +0530
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
 <8c2a53c2-c11b-4d49-bfb5-b948767ba6c7@oss.qualcomm.com>
 <1e871aed-705f-4142-b72d-4232ae729a37@oss.qualcomm.com>
 <6274641a-7366-41cd-a0a7-a9e9cc41b8e6@oss.qualcomm.com>
 <0a73989f-b018-473c-872a-5cbc2e7d1783@oss.qualcomm.com>
 <21bd89b9-9f6e-42d0-bcd3-b6476cf91705@oss.qualcomm.com>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <21bd89b9-9f6e-42d0-bcd3-b6476cf91705@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: tbl73kk7qbfFkssRwbnY4s5ILz-wJ0Vb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE3MDEwMyBTYWx0ZWRfX+KyTjLgz7s6O
 2kH21hi1whR6ZpUpOzOXKjuy0SuAaIgE2/Ub6nTFOWv13Xtzy2RebErAMDiGxi4TgYPKuXwACD7
 S1kXWY7+nXq+N+exa3fCsyZvTlf6mA7eOc7a7nE0Z4ybPPlRuo/POusxiXPNceBpyP4o3j/A5f3
 39P6eg35F+Iux75cyfuN9WdH8tIET4LMSS4qFFmRg1124xwB6LTsCLGpP30B9jyTHia0si7SECe
 s4SbouTyq83Hwn5zss+HyxJ1j9pp4tqweKyReM4MNinIJ7I9tzKO2r5tScK8Am6zeJKVtwqpIFU
 ze8dQUKu7VlEmujhlfCVL87PqZDiYxseUfq/F7Ucqgw0r16J3GHbTeSi5BtlZwpVLUuRZVNwa91
 VBNyMvMbJSydKDztYQ6jpZ1VCg/qwf+qXpE5tTSex1aBSixR7wwYRtcm5vucitif4ssb6ALq
X-Authority-Analysis: v=2.4 cv=H8Pbw/Yi c=1 sm=1 tr=0 ts=682867cd cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VNoyoka1EbeTPVikYY0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: tbl73kk7qbfFkssRwbnY4s5ILz-wJ0Vb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-17_05,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 mlxlogscore=999 adultscore=0
 phishscore=0 mlxscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505170103


On 5/16/2025 10:05 PM, Konrad Dybcio wrote:
> On 5/16/25 2:52 PM, Kathiravan Thirumoorthy wrote:
>> On 5/16/2025 4:48 PM, Konrad Dybcio wrote:
>>> On 5/14/25 3:15 PM, Kathiravan Thirumoorthy wrote:
>>>> On 5/6/2025 4:31 PM, Kathiravan Thirumoorthy wrote:
>>>>> On 5/3/2025 3:53 AM, Konrad Dybcio wrote:
>>>>>> On 5/2/25 6:28 PM, Kathiravan Thirumoorthy wrote:
>>>>>>> On 5/2/2025 7:33 PM, Konrad Dybcio wrote:
>>>>>>>>> +static int qcom_wdt_get_restart_reason(struct qcom_wdt *wdt,
>>>>>>>>> +                    const struct qcom_wdt_match_data *data)
>>>>>>>>> +{
>>>>>>>>> +    struct regmap *imem;
>>>>>>>>> +    unsigned int val;
>>>>>>>>> +    int ret;
>>>>>>>>> +
>>>>>>>>> +    imem = syscon_regmap_lookup_by_compatible(data->imem_compatible);
>>>>>>>> Try syscon_regmap_lookup_by_phandle_args() and pass a phandle, see e.g.
>>>>>>>> drivers/phy/qualcomm/phy-qcom-qmp-pcie.c & phy@1bfc000 in x1e80100.dtsi
>>>>>>>>
>>>>>>>> That way all platform specifics will live in the DT, requiring no
>>>>>>>> hardcode-y driver changes on similar platforms
>>>>>>> Thanks. I thought about this API but it didn't strike that I can use the args to fetch and match the value.
>>>>>>>
>>>>>>> I need a suggestion here. There is a plan to extend this feature to other IPQ targets and also support WDIOF_POWERUNDER and WDIOF_OVERHEAT cause as well. For IPQ5424, all 3 cause will support and for other IPQ platforms, we are exploring how to integrate WDIOF_OVERHEAT. In any case, can I define the DT entry like below
>>>>>>>
>>>>>>>            imem,phandle = <&imem 0x7b0 <Non secure WDT value> <Power Under value> <Overheat value>>;
>>>>>>>
>>>>>>> and store these in values args[1], args[2] and args[3] respectively and use it for manipulation? If any of the platform doesn't support all 3, I can update the bindings and define the number of args as required.
>>>>>> Let's call the property qcom,restart-reason and only pass the register value
>>>>>>
>>>>>> Because we may have any number of crazy combinations of various restart
>>>>>> reasons, we can go two paths:
>>>>>>
>>>>>> 1. promise really really really hard we won't be too crazy with the number
>>>>>>       of possible values and put them in the driver
>>>>>> 2. go all out on DT properties (such as `bootstatus-overheat`,
>>>>>> `bootstatus-fanfault` etc.
>>>>> Thanks Konrad for the suggestions and the offline discussions.
>>>>>
>>>>> @Guenter, I need a suggestion here. Currently as part of this series, we are planning to expose WDIOF_CARDRESET, WDIOF_POWERUNDER, WDIOF_OVERHEAT reasons.
>>>>>
>>>>> Once this is done, we do have the custom reason codes like Kernel Panic, Secure Watchdog Bite, Bus error timeout, Bus error access and few many. Is it okay to expose these values also via the bootstatus sysFS by extending the current list of reasons? Since these are outside the scope of watchdog, need your thoughts on this.
>>>> Konrad / Guenter,
>>>>
>>>> We had a further discussion on this internally. Outcome is, it wouldn't be ideal to hook the custom restart reason codes in watchdog framework, since there is no involvement of watchdog in such cases. Also I don't find any references to hook the custom values in watchdog's bootstatus.
>>>>
>>>> If this is fine, I'm planning to resend the series to handle only the non secure watchdog timeout case. In that case, as suggested by Konrad, everything will be handled in DT like below to avoid the device data.
>>>>
>>>> imem,phandle = <&phandle <imem_offset> <value>>;
>>> the part before the comma is a vendor prefix, so that must be qcom,xyz
>>
>> Sure, will name it as qcom,imem-phandle. Hope this name is fine.
> just qcom,imem is fine, phandle is a datatype described in dt-bindings


Sure thanks.


>
>>> what are your plans for the other reboot reasons? are we scrapping them?
>>
>> No, we are not scrapping it. We are exploring further on where to put this. May be we can put those logic in some simple driver named as ipq-restart-reason.c under drivers/soc/qcom/?
> I see drivers/power/reset/at91-reset.c does something like this


Thanks for the reference.  I will submit the patches in a couple of weeks.


>
> Konrad

