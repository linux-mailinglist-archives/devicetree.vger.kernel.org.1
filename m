Return-Path: <devicetree+bounces-188420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9AEAE3BDD
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 12:12:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B29EE3B6065
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 10:11:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A051F238C21;
	Mon, 23 Jun 2025 10:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DH+9r/Gm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE6D238C0C
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750673495; cv=none; b=GUSStsmYGiBmsDjQ1C7dZhHcwQorcSO2avEAaX5BiIvlI8UNnVN6yJFG8vMM/TfXfeRG0HdSl0xwIEPz62LttrohoP+0aKeU5AZaGpGgX7o61/TQxfP71whMaYJPsrhhnzjZy6aQ6+JQOxeM7jhIPaLvakmuabBgOAmv+iBEG7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750673495; c=relaxed/simple;
	bh=L4V8GDcixyWxkjchU/ASicNfTs7EbxX8xjgR4NFBHIk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=duScAr03OE+1Bc5XbAHlKgl8Qt8IVpTz47kG0araG821ESpxE2+qVj/okCJTFVWIuD9nPMLgBQGE1CM+JldHcRcjMd6AjpMyR0CDFMq6JqSJFq2WTKNW2KzPWfFNABur6EyKjEBDesJnrCrWOXThLT4b0AV4fEjW20ixxlXzmGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DH+9r/Gm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N9VxDk002182
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:11:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nsXHkEoSXnETEDfohe14zSaQ6QC7uPOSNPk17vEgzN4=; b=DH+9r/Gm7enpM+Q9
	miBBmdz2aIUgb/NjLfy3ZAZM3bS7/n8lVMXVP1Jg0hEMow0Dn7gyDwEKrvBXEfUC
	i3jl0ZXPPrLSOswg/9G5Y4vWQhiGNTTZ3t76db+l9ST2Uq2ZfqhcAYvy+Z9p1LC3
	J+WfULCde68e5Gt7ICOu1LKx1V0Mp/BiduREIdd/OZHzcwJolXXPAhrpSuMAPA3P
	pzcZyrr7yFJ/FfBOMA9HulgcQ2gCYG8W4zyLy2pJes8NNV4lUs2mfGDfTO3OKPaH
	LwDW2Ozylb7tnKstrAz1KLVqATz1Sm7X7VdupL1hJUkO7Fvfw6+2FjDjLEpz4Qem
	uxSFAQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47eah7tgn2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:11:32 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fd1dcf1c5bso2296206d6.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 03:11:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750673492; x=1751278292;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nsXHkEoSXnETEDfohe14zSaQ6QC7uPOSNPk17vEgzN4=;
        b=BdOjCKieQAMd/z5z1JUATVNIcCCUxR4wo94KRBUvi6IBkXjc+dd7ibuxXcIikNm6Xu
         aCG831Ct0mmLJCmLDA9XnJRc/BAItDwyMtJ8IYjOT4EhZj2B5ao5lbgq+Yk4fCbe5+a3
         yk0tnj7KGHu3rNaxwFioeJ2nEBAcVx0CwUCdxRvr5xtbTIlOh8/4E8bpQ+FCzqipv7cU
         uC61yhlMxAYbG6ts59gwXehWET+J4FJGtGbSteIXJDCMOwvNmyUgIFsqLx10RJ53yI+r
         PHMOPOg8ZOe1pjFY6NEKWWcsVvgxYjoGaH3hvYcjbKdTPfc39cqxSo8RuGPOWS0ZABKy
         ew9w==
X-Gm-Message-State: AOJu0YyoNBsaNtiL2FsjuFGIBWwl9aBldSYSzmXOser0yoR82xXskP51
	Q32jX3/XkSl8nwhY1mQus1nwljsXJVbd43QEcOZtnPw6/i0yLu4pJJfmMd6Je0ObWtd38iQpRF+
	5RzL0M5H51Y2/t2H/8F8hLRENQ2yEVXL12NFAtbaF7C2XJ++LgyKYvweBZTqIJcam
X-Gm-Gg: ASbGnctKnGV2lQn/m+nINpIclNW7wwSG/nqlhQ7FCK0WWIeTUPpvv/etAst3TGSgJ/n
	KP9pxTyzy2nEECeYp4XWhDGD/4PcovqhcYKmONMU8McASLztnY9d2apeG2d71d3iQX57j5h4uct
	AXNgeJGj34ARwAXQJ4bH2DEFEHq2AxWmD2UKDCq+rTSuc8vrvXVWAxFecpK/FzuPTZyQWHa6tI+
	/lrd8fA3a46KFHxVlavoOzyw0pNTuuSWw9UqPVbGwvAaznK2nXpnYCvqj1AyUtCfc+1Q+ZOgt8u
	2IU1h7E5mAj1GGgVor1AuRx/l4NHhWPzPojmrs3qXYJQu6t9xkRJedt7B5sWOWAYuu0mlw2wQxJ
	N63A=
X-Received: by 2002:a05:622a:580b:b0:477:5f29:dbc9 with SMTP id d75a77b69052e-4a77a246084mr68884251cf.13.1750673491692;
        Mon, 23 Jun 2025 03:11:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFy1oUWDRKcqfh0pSMxqJrFkq+zIxAO/Cnx7r1VMRo0FanZaDrJkBgm6J29KYYFk+KqUg20Cg==
X-Received: by 2002:a05:622a:580b:b0:477:5f29:dbc9 with SMTP id d75a77b69052e-4a77a246084mr68884021cf.13.1750673491076;
        Mon, 23 Jun 2025 03:11:31 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053ee4c2bsm680996466b.71.2025.06.23.03.11.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 03:11:28 -0700 (PDT)
Message-ID: <92f1d1c1-e62d-4f77-b55d-110d8ad56a06@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 12:11:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: msm8953: Add device tree for
 Billion Capture+
To: cristian_ci <cristian_ci@protonmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org
References: <20250620-rimob-initial-devicetree-v1-0-8e667ea21f82@protonmail.com>
 <20250620-rimob-initial-devicetree-v1-3-8e667ea21f82@protonmail.com>
 <557166bd-cbe2-4a7b-bd6c-8daec1cecc3d@oss.qualcomm.com>
 <Fp48ghZvedurtk8ta0jccDkZvg7whZFgX0Ra7_AQuMwS12QxAxHqgcOMP_SbXsnLNme2LWWz6ZshoGFTQT6nVvfe-4B_v-2hkRxpgcb9bq0=@protonmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Fp48ghZvedurtk8ta0jccDkZvg7whZFgX0Ra7_AQuMwS12QxAxHqgcOMP_SbXsnLNme2LWWz6ZshoGFTQT6nVvfe-4B_v-2hkRxpgcb9bq0=@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 6nEUO8vN98KCu0uKVSm4yB8ZS5NHzfaN
X-Authority-Analysis: v=2.4 cv=PpWTbxM3 c=1 sm=1 tr=0 ts=68592854 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=XdyHM9KW_fXSmfWyf6YA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA2MCBTYWx0ZWRfX3PkhXsMhLYDy
 ccWV5mdlteN6MOcqNfYbSdk9QqJpnQbRkMTCpQ53l3RVBWrt5B1MZuMaZPfYhGYwRtAR0SJ5Hv9
 ILGmEv2U7MI++mJ7lUsn4706k7pDpd8YdxZNsvaXfj89poYxmqfMCcmMoeTtmw85JEW/JLk30SI
 6p6WuJJPZnkysxsC+HXQOrwovqkxcXV6uvQEoLp7IF/8m+9EFhD5+MvXnVtQun9lhcB5kysx1KD
 igqmY0rcLh1Ys72ZLNfu18QaquQQCeCzApOdAok/8iNMgC+r4UJcZxIWN2HhyxnTW6yWt3bmHWx
 d6JGowoXwVehStNeHK4HPAToRJdLdRWmlRMLgrZ7D2AiWQ9dDiJmSH9FAqRDXMTS7mRXXX7DJtK
 rB+rZY37CWgBDImJiid1kdif40YbRJViV5WJc5s+b1m1MZ8sjdT2xQtcAmci8FZiekEoxOGJ
X-Proofpoint-GUID: 6nEUO8vN98KCu0uKVSm4yB8ZS5NHzfaN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=749 clxscore=1015 adultscore=0 mlxscore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 spamscore=0
 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230060

On 6/21/25 9:31 PM, cristian_ci wrote:
> On Saturday, June 21st, 2025 at 12:17, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
>>> +
>>> +&sdhc_1 {
>>> + vmmc-supply = <&pm8953_l8>;
>>> + vqmmc-supply = <&pm8953_l5>;
>>
>>
>> you should add regulator-allow-set-load to these vregs
> 
> So, do you mean I should add 'regulator-allow-set-load' property to 'pm8953_l5' and 'pm8953_l8' regulators? If so, should I do that for 'pm8953_l11' and 'pm8953_l12' regulators too (sdhc_2)?

Yes

>>> +&tlmm {
>>> + gpio-reserved-ranges = <0 4>,
>>
>>
>> These GPIOs correspond to I2C/SPI_1
>>
>> <135 4>;
>>
>>
>> And these correspond to I2C/SPI_7
>>
>> Without much more knowledge, I would guesstimate one of them is
>> for a fingerprint reader and the other for NFC eSE
>>
>> Konrad
> 
> I made that check in past and, while it looks like 'gpio16' and 'gpio17' are assigned to nfc pinctrl (though, nfc appears not to be implemented in this device, considering also the lack of 'phandle' for such pinctrls) in downstream dts, the devicetree pinctrl still doesn't mentions the gpios associated with the fingerprint node (which is, instead, implemented in this device). So, I'm not able to verify if gpios 0-3 and gpios 135-138 are related to fingerprint and secure element, respectively.

If we can't tell, then we can't tell, it's ok

Konrad

