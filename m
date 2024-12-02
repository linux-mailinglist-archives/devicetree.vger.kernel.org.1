Return-Path: <devicetree+bounces-126051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 603C79E00A2
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 12:34:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 208E3286C05
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 11:34:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1B161FE47A;
	Mon,  2 Dec 2024 11:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZYwWEpon"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCEA1FDE2B
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 11:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733138815; cv=none; b=jMY8KfFtyY73heIgaOf5j2I/PhURwDDp1TgLMLhNBPd46Vb7N0+385IJLeddAeqCCzq8S5WXAzEqgxLj1giiJ7K7vSWN47AMBLAOAy9vkFyUnOmqGNN55vWdLbbvvXKFbkvP9fjTUbuSQ5fW5pjF6Fic5P++7Tj0rP1pCc948Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733138815; c=relaxed/simple;
	bh=dTbW9WH8iV44QNUaqfXXpQ+d7TfLVjs921a0DJ2BEqQ=;
	h=Content-Type:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To; b=VNHEz7eH5jtxQIfSngwdSJtBQEq2QiLSU/b5SDHWmBMxG0n6qym+m0QTBcvX3QdwxS0fsxQqtLdYuH2djEac7GCfZF0Z08ylGHiMTRAF5cK6CWVFLesrJf3ty8MThKj6ouAC3oAc6u/fkl70cXG6rb63bJdIRdzokcoqCB40WRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZYwWEpon; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B28IvaU018386
	for <devicetree@vger.kernel.org>; Mon, 2 Dec 2024 11:26:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NdR39HmW7zxxIIftOBgqz9ic
	yfJX08U76Xc+eWA70r4=; b=ZYwWEponam54KZdsDLSlZ8rT4yki9Xqx8uBDaW1Y
	pvD86XHOn2qltFQdjil0M7SDMnLBCwFUHaNgo3m5wCOLZuo4DJ2Kk0ZpEHypbdyy
	nZKmJyGyawX5vPJoao+VWJdjh2zzhc4H0023z1DKv0n6xL+M1xVl7bcEgjikollF
	1yJO9cmIW7N1stOGUEJMjFce2QwA02LI8EGl6TGz0vl30TwnEy59HGfc30B20r8Q
	oq/Tv7CD6MjqcVOaB6GXe75a8BKidEWH8Fxe9RjHbgNVubev2kq5E6A2QMKhR112
	6/TS7L+i1RFcMjS09j61f1kOKt5MHILySo7BIB4fwoJMsg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437u36cmgw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 11:26:52 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d3b1d1d8c1so10459376d6.2
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 03:26:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733138812; x=1733743612;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NdR39HmW7zxxIIftOBgqz9icyfJX08U76Xc+eWA70r4=;
        b=sNxoo5W3oqTdoWfnViWjl9XeRZes6u50VkiGuFOrpm4OG0+WguaoL/k5wl2ZIdsrQs
         2r5R+GKKxGsWYhPgTGtHtPYqWIoESERS/xXwxTfphorDODVIiBATMiJunYglqStxgbB9
         BigXbLbgdtiHdwxAbnFyuuL0JyKNOMvUp9cPyi5gOE90AORx9F9l9vmJqM8DbyZnkDfn
         sUy7dxunLeUbntH2DZJXi1eof1DeaE9dDd+rQwDxb1vY8Q8j3VsmaJ3tHNcVOLdnowVP
         mu8XPjzbQHr6GLYwsdPYe0v3rNFiKg503oXCbA2jnuaRkEFG1e+yu4CUsa4O70EVLTq6
         Wm/A==
X-Forwarded-Encrypted: i=1; AJvYcCUmf0U3cKS23CH8drHsCZ93YiYe0LoKhazG2+uEUJZvL6t1FMMJVns5XaA4AMTaOGitqJ7AEYQaGOFh@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu2GeGH9gB2aKltOIVazUTwkVQ7ILOIppBvgT6pa8/UnFqZTvr
	KWDZt11ZBHFisaVhnbWLr0BQbo51neLh/6EKKN4jV4woxQ0A/OISNkG3PoGZ2re5bbZ1lWq5JCv
	BL7hEPiqflzj8RDMEs3vP8mKgmogkC3V0Er++8Bby7yOUC9eiteI6RE6Bf9pg
X-Gm-Gg: ASbGncs+MKYjcAtkpE7BbXrkNm43xe82BiF2MFvCIPoRS/bMgTaZfjQyaym42C7jr+A
	yYJgLIyQtbzUJnRJVMYdL1lZt2nqFY590Rx6UcVa9KNfzT3uKEQSJqJo2KBOe1rA99DW8CQpj3T
	ZQs6aPahF7gDfi01KXBhRiSJffLaDGzqNdjAuPLd7epuan2SHt7fGITGMcIdIHMvNlclb3UAgQC
	1KRbTghoUUVZRvaBD45VwkOHhrwOK4jKxo+BCtomsiXI3mzNJeWM0XNmJ5B1dgoyhaHyoNntMbZ
	CY6vJuW2EqdMERaiQt665qGYU3r3TN0=
X-Received: by 2002:a05:620a:2a11:b0:7b3:2107:302c with SMTP id af79cd13be357-7b67c471d58mr1188589785a.15.1733138812180;
        Mon, 02 Dec 2024 03:26:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHRZon7sa9KOdQRz5kupzrOIszKjCWkZoAuM6of5NdC7MVNKFSYAWFVGHkG+qrtDxpktlo8Og==
X-Received: by 2002:a05:620a:2a11:b0:7b3:2107:302c with SMTP id af79cd13be357-7b67c471d58mr1188587885a.15.1733138811735;
        Mon, 02 Dec 2024 03:26:51 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5999058e0sm498969566b.139.2024.12.02.03.26.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 03:26:50 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------1TAgxLQql009S0B6wFpCivJo"
Message-ID: <3f0b67f7-32ca-4b5a-a655-df6f92258cce@oss.qualcomm.com>
Date: Mon, 2 Dec 2024 12:26:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: qcs6490-rb3gen2: enable Bluetooth
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Janaki Ramaiah Thota <quic_janathot@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: quic_mohamull@quicinc.com, quic_hbandi@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_msavaliy@quicinc.com
References: <20241022104600.3228-1-quic_janathot@quicinc.com>
 <dd008ff5-ee2a-47be-8a5b-d4f3a1e2bac3@kernel.org>
 <75dc7814-a55e-4a6f-9df9-39b7c875dee9@quicinc.com>
 <6a40b442-6c4e-4abb-aeba-54ff9e86dfde@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6a40b442-6c4e-4abb-aeba-54ff9e86dfde@kernel.org>
X-Proofpoint-GUID: tODkCY7zZh1SKvVgnTA0EcryqmJUO8lx
X-Proofpoint-ORIG-GUID: tODkCY7zZh1SKvVgnTA0EcryqmJUO8lx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 mlxscore=0
 clxscore=1015 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 mlxlogscore=947 phishscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412020101

This is a multi-part message in MIME format.
--------------1TAgxLQql009S0B6wFpCivJo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2.12.2024 10:36 AM, Krzysztof Kozlowski wrote:
> On 02/12/2024 10:32, Janaki Ramaiah Thota wrote:
>>>
>>>> +	pinctrl-names = "default", "sleep";
>>>> +	pinctrl-1 = <&qup_uart7_sleep_cts>, <&qup_uart7_sleep_rts>,
>>>> +			<&qup_uart7_sleep_tx>, <&qup_uart7_sleep_rx>;
>>>
>>> This could be just one phandle to state node with multiple pins subnode.
>>>
>>
>> Since we have different configuration for 3 GPIOs, it’s not good to 
>> combine all 4 GPIOs into one common sleep configuration. Each GPIO 
>> configuration is having separate requirements based on the Bluetooth SOC.
> 
> I did not propose that. Please read bindings and other existing DTS sources.

Janaki,

you can refer to my older patch (attached)

Konrad
--------------1TAgxLQql009S0B6wFpCivJo
Content-Type: text/x-patch; charset=UTF-8;
 name="29a6e0ddbaf7bafc22b44062890bb9915eb665b6.patch"
Content-Disposition: attachment;
 filename="29a6e0ddbaf7bafc22b44062890bb9915eb665b6.patch"
Content-Transfer-Encoding: base64

RnJvbSAyOWE2ZTBkZGJhZjdiYWZjMjJiNDQwNjI4OTBiYjk5MTVlYjY2NWI2IE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBLb25yYWQgRHliY2lvIDxxdWljX2tkeWJjaW9AcXVp
Y2luYy5jb20+CkRhdGU6IEZyaSwgMjMgQXVnIDIwMjQgMDI6MDE6NDkgKzAyMDAKU3ViamVj
dDogW1BBVENIXSBhcm02NDogZHRzOiBxY29tOiBxY3M2NDkwLXJiM2dlbjI6IENvbmZpZ3Vy
ZSB0aGUgYmx1ZXRvb3RoCiBtb2R1bGUKClJCM0dlbjIgZmVhdHVyZXMgYSBXQ042ODU2LzY1
NzAgV2ktRmkgKyBCbHVldG9vdGggY2hpcC4gQ29uZmlndXJlIHRoZQpsYXR0ZXIgcGFydC4K
ClNpZ25lZC1vZmYtYnk6IEtvbnJhZCBEeWJjaW8gPHF1aWNfa2R5YmNpb0BxdWljaW5jLmNv
bT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzNjQ5MC1yYjNnZW4yLmR0cyB8
IDczICsrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNzMgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2NDkwLXJi
M2dlbjIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczY0OTAtcmIzZ2VuMi5k
dHMKaW5kZXggZGE2MWU3YjkwNzk4ZWQuLjJjNjFkNDJkZWQ1NTNiIDEwMDY0NAotLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzNjQ5MC1yYjNnZW4yLmR0cworKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzNjQ5MC1yYjNnZW4yLmR0cwpAQCAtMzMsNiArMzMs
NyBAQAogCiAJYWxpYXNlcyB7CiAJCXNlcmlhbDAgPSAmdWFydDU7CisJCXNlcmlhbDEgPSAm
dWFydDc7CiAJfTsKIAogCWNob3NlbiB7CkBAIC03ODEsMTIgKzc4Miw4NCBAQAogJnRsbW0g
ewogCWdwaW8tcmVzZXJ2ZWQtcmFuZ2VzID0gPDMyIDI+LCAvKiBBRFNQICovCiAJCQkgICAg
ICAgPDQ4IDQ+OyAvKiBORkMgKi8KKworCXF1cF91YXJ0N19zbGVlcDogcXVwLXVhcnQ3LXNs
ZWVwLXN0YXRlIHsKKwkJcXVwX3VhcnQ3X3NsZWVwX2N0czogcXVwLXVhcnQ3LXNsZWVwLWN0
cy1waW5zIHsKKwkJCXBpbnMgPSAiZ3BpbzI4IjsKKwkJCWZ1bmN0aW9uID0gImdwaW8iOwor
CQkJYmlhcy1idXMtaG9sZDsKKwkJfTsKKworCQlxdXBfdWFydDdfc2xlZXBfcnRzOiBxdXAt
dWFydDctc2xlZXAtcnRzLXBpbnMgeworCQkJcGlucyA9ICJncGlvMjkiOworCQkJZnVuY3Rp
b24gPSAiZ3BpbyI7CisJCQliaWFzLXB1bGwtZG93bjsKKwkJfTsKKworCQlxdXBfdWFydDdf
c2xlZXBfdHg6IHF1cC11YXJ0Ny1zbGVlcC10eC1waW5zIHsKKwkJCXBpbnMgPSAiZ3BpbzMw
IjsKKwkJCWZ1bmN0aW9uID0gImdwaW8iOworCQkJYmlhcy1wdWxsLXVwOworCQl9OworCisJ
CXF1cF91YXJ0N19zbGVlcF9yeDogcXVwLXVhcnQ3LXNsZWVwLXJ4LXBpbnMgeworCQkJcGlu
cyA9ICJncGlvMzEiOworCQkJZnVuY3Rpb24gPSAiZ3BpbyI7CisJCQliaWFzLXB1bGwtdXA7
CisJCX07CisJfTsKKworCXdjbl9idF9lbl9kZWZhdWx0OiB3Y24tYnQtZW4tZGVmYXVsdC1z
dGF0ZSB7CisJCXBpbnMgPSAiZ3Bpbzg1IjsKKwkJZnVuY3Rpb24gPSAiZ3BpbyI7CisJCWJp
YXMtZGlzYWJsZTsKKwkJb3V0cHV0LWxvdzsKKwl9OworCisJc3dfY3RybF9kZWZhdWx0OiBz
dy1jdHJsLWRlZmF1bHQtc3RhdGUgeworCQlwaW5zID0gImdwaW84NiI7CisJCWZ1bmN0aW9u
ID0gImdwaW8iOworCQliaWFzLXB1bGwtZG93bjsKKwl9OwogfTsKIAogJnVhcnQ1IHsKIAlz
dGF0dXMgPSAib2theSI7CiB9OwogCismdWFydDcgeworCS9kZWxldGUtcHJvcGVydHkvIGlu
dGVycnVwdHM7CisJaW50ZXJydXB0cy1leHRlbmRlZCA9IDwmaW50YyBHSUNfU1BJIDYwOCBJ
UlFfVFlQRV9MRVZFTF9ISUdIPiwKKwkJCSAgICAgIDwmdGxtbSAzMSBJUlFfVFlQRV9FREdF
X0ZBTExJTkc+OworCisJcGluY3RybC0xID0gPCZxdXBfdWFydDdfc2xlZXA+OworCXBpbmN0
cmwtbmFtZXMgPSAiZGVmYXVsdCIsICJzbGVlcCI7CisKKwlzdGF0dXMgPSAib2theSI7CisK
KwlibHVldG9vdGg6IGJsdWV0b290aCB7CisJCWNvbXBhdGlibGUgPSAicWNvbSx3Y242NzUw
LWJ0IjsKKworCQlwaW5jdHJsLTAgPSA8Jndjbl9idF9lbl9kZWZhdWx0PiwgPCZzd19jdHJs
X2RlZmF1bHQ+OworCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCisJCWVuYWJsZS1n
cGlvcyA9IDwmdGxtbSA4NSBHUElPX0FDVElWRV9ISUdIPjsKKwkJc3djdHJsLWdwaW9zID0g
PCZ0bG1tIDg2IEdQSU9fQUNUSVZFX0hJR0g+OworCisJCXZkZGlvLXN1cHBseSA9IDwmdnJl
Z19sMTliXzFwOD47CisJCXZkZGFvbi1zdXBwbHkgPSA8JnZyZWdfczdiXzBwOTcyPjsKKwkJ
dmRkYnRjeG14LXN1cHBseSA9IDwmdnJlZ19zN2JfMHA5NzI+OworCQl2ZGRyZmFjbW4tc3Vw
cGx5ID0gPCZ2cmVnX3M3Yl8wcDk3Mj47CisJCXZkZHJmYTBwOC1zdXBwbHkgPSA8JnZyZWdf
czdiXzBwOTcyPjsKKwkJdmRkcmZhMXA3LXN1cHBseSA9IDwmdnJlZ19zMWJfMXA4NzI+Owor
CQl2ZGRyZmExcDItc3VwcGx5ID0gPCZ2cmVnX3M4Yl8xcDI3Mj47CisJCXZkZHJmYTJwMi1z
dXBwbHkgPSA8JnZyZWdfczFjXzJwMTk+OworCQl2ZGRhc2Qtc3VwcGx5ID0gPCZ2cmVnX2wx
MWNfMnA4PjsKKworCQltYXgtc3BlZWQgPSA8MzIwMDAwMD47CisJfTsKK307CisKICZ1c2Jf
MSB7CiAJc3RhdHVzID0gIm9rYXkiOwogfTsK

--------------1TAgxLQql009S0B6wFpCivJo--

