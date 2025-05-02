Return-Path: <devicetree+bounces-173196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBE8AA7C13
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 00:13:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A72F41C053CD
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 22:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F989216392;
	Fri,  2 May 2025 22:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K9Cfj/vB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415B2214229
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 22:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746224018; cv=none; b=jLq7Q0PSqzWDXCrsu4jBJ4QQVGpoEKQUyqUpERrtCIupURpgBZn1icwOxBP/tDRZYcwRzCsBqo0cdgGLpRxN1NXfpuxGC83Mj2L3U66UKszPUtyC93SENqxqymG8oIFreyDM//VO06WZ0faxn+yAcTLZeUtY/czj7dzEmxcpWKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746224018; c=relaxed/simple;
	bh=B/4oel2Jayif05luXBjTQ2gQHyrpYR6gHiiXrNHCI0I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dns5NN8w0mw86yFBkfu+4P6USvccXlJMZmdIEkq6K/jY93x3A1q1qvuaeK+II6XOp7enjuq4r7p6r6TWIeP3YiHtHKy5Ks7A8OjC2CN6Ji5PnkNErawJDYstJu7Gk34vEmZ/CkWUB7QLHUYRzsiocTVCaXVCazA+PfcrOzrPG6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K9Cfj/vB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 542KB4Rp002211
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 22:13:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3u+LFEbRiQNy3BBQYrtvebcgwT3QRI0neYbS9BxwHRo=; b=K9Cfj/vBlOqJXZVx
	TC6CuRfwOD+V/eK97Tn0wzE/vIL0n+KunPhYfkK+mOr0itWC6ZonZSyQ+W8XvKkc
	uIZzReHJuzUFWcuJFhOVWDBxsv5VgSR1ABCA6yQyBkL4mXcWcbyhm+qqrQ2eKk56
	Z9kFT5DKE8PQPOnTX5sN2cYjK+LnnqqU52LenT+Y18DTsvuMQM/qBaPuy2k4po25
	BzRW5obstt6drVgrtB93iDFSDINrNV6ELoQyMY5SCJg50nq2Tk2i+UmWEjFYfQqw
	gmzA+/ftvmf3W66dxwy2dWwp7+6aeaG9QCwr0fbYWEthI9sAxVuB5yG7M4pkFUa6
	1rEccQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6ubsj22-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 22:13:33 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-476695e930bso6014971cf.2
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 15:13:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746224013; x=1746828813;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3u+LFEbRiQNy3BBQYrtvebcgwT3QRI0neYbS9BxwHRo=;
        b=uNmo+LYmXRi/N9nagOm01FFzWNcY4UOKRsRDkWhutZs+x380c39HJrnCu5zAC+o3yF
         nZcZWcEG0k2f8atBW1LFxTn4tR84TBeOQwdd68omi0rsPE7gWvFGX+9o1iYaqrGbaUk2
         ENd4N+MKBn2BfRmc+fW8PEA9uKXDoa1RZtRma0Vk3G0coYGrwsTO8fHK1X+7olK5N+4n
         48uA/deei8wfqF2FrDMJlotkFFLXjfRakSeo3UpHMfdYad5KQDnN6PmmRROsdXChhC7s
         /+7TlO+PuT24yf+4jjGm23ZFHo/B3eQOVV4667erRDs6jZFwuDEfUNtghC9wNSAyVreX
         f5/w==
X-Forwarded-Encrypted: i=1; AJvYcCXC5HXvMMewIxEBedCOTzSpn4Skridq6MTauZz1EjIaBBGMmaK1g0mISNTrYgOTUTX9JbbckVkzaF22@vger.kernel.org
X-Gm-Message-State: AOJu0YyMSA8oGCUeCU307bMovPaqr9ap6vTPPYkhrBkL3VtFyYuBYtT2
	jFxb71ipvFtchdN8tBG/5jw66er3yDBRdNHv9MRoFaY3u8mbPixv+1kjt4TclwpmwK4C0kiUKb2
	zHsWJAH81N8FKMutjyNex1JzZY+dwvSf181dXciQDRjgSahL6ViKtXrV/nUdN
X-Gm-Gg: ASbGnctWw0GaONWOYVJ0MbBV7vUcveJ789IMtqxzrbM6oONg3IDNSjwew51fiwR+7s2
	vJ5gcKW6gmUbwsMNNxtxuvZpxe/i5sn13vGGIHGjakN5x8Cxnwsx2wQr2a+9Zj/hIaepCI5HBZZ
	9NEA/D8rQxUBBXHRntoutIw2KdvmqIODzEFUurYiYUF8qFjNXuQypW9mf0+lQQXOCRmsN4YLnMw
	BHYOnm9XgP/9zKldNK3ec7ouS6QFAXgsJ/SsvM/77RXDs2v+PNeVX388SN2U3ieaNTf754Ftk0h
	KbAPeYhCg7Ypo40x2FSHCapHIP88pnCjtbtYebtt5r9w18u19XdF1z49EYOfE3tFnV0=
X-Received: by 2002:ac8:5d14:0:b0:48a:4c52:bd5e with SMTP id d75a77b69052e-48c31b1878dmr26360221cf.7.1746224013205;
        Fri, 02 May 2025 15:13:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIB+E/EBRSm2CckOBaiga8MoS0NtnV1KFVCJ4k4ISPBAkdwIYAzWP5vXAN6u6EtdsUp5XAjQ==
X-Received: by 2002:ac8:5d14:0:b0:48a:4c52:bd5e with SMTP id d75a77b69052e-48c31b1878dmr26360061cf.7.1746224012721;
        Fri, 02 May 2025 15:13:32 -0700 (PDT)
Received: from [192.168.65.170] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad189508cf4sm104865366b.138.2025.05.02.15.13.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 15:13:32 -0700 (PDT)
Message-ID: <3333cfa8-381e-4c10-898b-a3c4cf8159e5@oss.qualcomm.com>
Date: Sat, 3 May 2025 00:13:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] watchdog: qcom: add support to read the restart
 reason from IMEM
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
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
 <83c427de-c678-4408-9b04-2f3d2eef9fac@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <83c427de-c678-4408-9b04-2f3d2eef9fac@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: VcSZQWOjjrxg51OiPft2T13oONhH03Ry
X-Authority-Analysis: v=2.4 cv=bsxMBFai c=1 sm=1 tr=0 ts=6815438d cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=i7H99Igfn1kKsJUMNAYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDE4MSBTYWx0ZWRfXwJTcjCbdh2Nc Yp+RoccidILR0Vl7iLRY6z1Ixk9IPBkkYNVN883PxbF0+nS31ggwI081AqBUxmRdE5ou9tKXtJY T02OtzPx/LUjKV1EoOTOFoHwpxu4hAOvaKU1TzWqHBtQc3B23RR+T3DNWxPJ9BQu8M/GIGBrcdJ
 cd91etgSzeIq7/ziRQwE7xX4OJjP+ho2Z8lImtGUju+yGvZj4lpUm5tJBhGYqiNyJIi/51cXYKO AArS0sSkPthN8Lqrkdlwem2nXLrSMct9lbdmwNlAHXDHCVrGJZeExoQFEpzZwhypjvU+xMAdcsq mfSpDq7EAScguuMMphmZTUgJ7ewjcrSGolRkhopmHjW1/RLOXj2A1lfpIf4w8OZTZTlPvoejBcW
 5ltrsETfvygcA4Azrg2ByTnKguZECoTz4jGvl7WKJAQdeHo0LiLmy5W0CwL9TRpVUyUpbCAg
X-Proofpoint-ORIG-GUID: VcSZQWOjjrxg51OiPft2T13oONhH03Ry
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_05,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 adultscore=0 malwarescore=0 bulkscore=0 suspectscore=0 mlxlogscore=733
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020181

On 5/2/25 6:08 PM, Kathiravan Thirumoorthy wrote:
> 
> On 5/2/2025 7:03 PM, Guenter Roeck wrote:
>>>   static int qcom_wdt_probe(struct platform_device *pdev)
>>>   {
>>>       struct device *dev = &pdev->dev;
>>> @@ -273,8 +304,13 @@ static int qcom_wdt_probe(struct platform_device *pdev)
>>>       wdt->wdd.parent = dev;
>>>       wdt->layout = data->offset;
>>>   -    if (readl(wdt_addr(wdt, WDT_STS)) & 1)
>>> -        wdt->wdd.bootstatus = WDIOF_CARDRESET;
>>> +    ret = qcom_wdt_get_restart_reason(wdt, data);
>>> +    if (ret == -ENODEV) {
>>> +        if (readl(wdt_addr(wdt, WDT_STS)) & 1)
>>> +            wdt->wdd.bootstatus = WDIOF_CARDRESET;
>>> +    } else if (ret) {
>>> +        return ret;
>>> +    }
>>
>> Seems odd to me that there is now a function qcom_wdt_get_restart_reason()
>> but it doesn't handle all means to get the restart reason. Maybe I missed it,
>> but what is the reason for that ? Why not move reading WDT_STS into
>> qcom_wdt_get_restart_reason() as well ?
> 
> 
> No specific reason as such. I was little hesitant use "goto" statements and such as. So I thought this would be little cleaner approach. Please let me know if I have consolidate everything under qcom_wdt_get_restart_reason().

You can try grabbing the syscon handle, and if absent, fall back to the
common handling

Konrad

