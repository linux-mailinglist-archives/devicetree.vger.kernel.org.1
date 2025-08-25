Return-Path: <devicetree+bounces-208975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D98B4B33F06
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 14:12:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BDB371A84AC0
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 12:12:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 850F72EA461;
	Mon, 25 Aug 2025 12:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aADJZSdy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3A31F4625
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 12:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756123893; cv=none; b=HAsaEZuNOe+o51guATFLMZIxC8RF+sMzPDCJhWsbcjCscKPQjcMRGrQwiPARk1vQ+LHW4qrd6df63o6UqhDuibYHK7Zrh+VViw3jlg0JexRFJ3ywKfJZf294Pd43xx0Ndpx5fcgG72h8Bg0CvhyqtssbJEgDi+FFkJ3ugytKLjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756123893; c=relaxed/simple;
	bh=vLlamXWBSQHZZ9eA+LhLnoR7PU3S7eCIzBFd9n5LXu0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ci8CS2VL2//EAAptO0349oXWRNXNiysoZfhjb5GPmcrjZADflBs5zJ3BPcVkkLqs2lf6orZzkQadGcxMf5XtP3uWyRIN63cJ7mJQIkHatAA6etp3Ow63kr3SuMgalRw74REjNVDP7HCHNUnkn7Zk/9wkwwHuuyuwQOx6ZW742rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aADJZSdy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57P8IKDj010324
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 12:11:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K7FbX2s1S4G/T5+nXuI9tHeqbBremko5yoicVgE1dm0=; b=aADJZSdyewjEcbpR
	8APYbLYYmxKu8hAklV8H6/dlFHPjgjuJLwsR7U64gf4WGjHRho+DrgAOvf0XKHsR
	p3vgT5K2ULIQypyMmxb6fAIl0Wr2txBP65kwFgq2l0VjuYDTJywR2o0ovJYd2Jj5
	4UyjBywzESyMFfS6j/ke9QtODvmwHi6cTNJPWw+s7k9A3JbeyAf1KTUj32hFUitk
	fkujqXvu6p5sJpzsFPgnH0z55Bcg/oJLDJ9Ztlj0dFNg+1Bs92OmHugOG7PKHILC
	D9r7I2XjKWmqWPFPDQ26MrglaZRHDT/fkQZkkC68kYt8PmySts3+UMW1pbjrX/Ym
	nWqosw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5w2n3sa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 12:11:31 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-325e31cecd6so70457a91.3
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 05:11:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756123890; x=1756728690;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K7FbX2s1S4G/T5+nXuI9tHeqbBremko5yoicVgE1dm0=;
        b=nWWZr7VFCrBkJUvvL8F/NkMVMoRG6gnQhdAt24Xbni0RFuuzBuZk6ioq7yBkM/eVyJ
         HVv+1bHV1NZLRjTRuC3+JH40xOKOkhBhAmu+llHyQbTwTDO0jriGEqneQoeiGDdlyY7f
         /bndODuuiL7Vi7mwgGBTNK7EA8Ec5LPfH9bTNg//93SK3TFD/Rnb6of8rCE5iX/dV48T
         R9gj+Pi1wmpM7jcpbe4vlhkUiWArOiO/EK8/FtJCkZp+wkFdWjJtXWwALw6GoBSIp5W4
         M3hkonYTxqfIVd1gkLuHFwGyu3B3Z+3X7uPgr84L891d13muHXMrKKjEvSIwMWH0/QbX
         ff6A==
X-Forwarded-Encrypted: i=1; AJvYcCWgrWMy5wg4SlyC/rJiSqwePjsmImFpQJ0bXHxY9qULf056cRfwTZrGV5Puaiz42ZeIWufLnxiiIiJJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwOQ4UweRwKme0h/iog1qKzisrsf9PCqWmzh8cuw8vCNTUgoR/e
	u7I+Pgpqc7+7y7NmyAS6h1x2h++aQsORnV1VpwT+E/39bW3YanU7R+e/rM8F6JfqxblWS5+Ku2h
	IDeMgWVmWKIj4rbRfPDxuzJUwCRAzU0Zatrk9tDJfHD0VE8v4HgVruEemhUUncl19
X-Gm-Gg: ASbGncvpGaekOfFfqBTpoPEyoPF9D+It30Vj9veC07xK9H+q2k4BUInis2OmRR4a0OP
	A1hUmHRbSREGkZywS8Gdu/xclEO3h5uhDA0e/toEItL9mmasdcCcITtLEtg0Z7L52SW+IZ72T5m
	qGjfFVOWkhTRBQwNQkIPYNREMiJvsRhyyBesaSLi//DN8ko1Y5j4wTBLdyRqr0o04e6WVjX0tXb
	ZXbaHpcbEiaIPcADKFkPZmN79eEmuCWU2eOVsGd6NRSievpY8sxMtDjZGHKHcIEcGcN5lHLQgu7
	3ob0waauJ09OA1Tzlg8aGVMbccunlJqb5NPzzDtT+5USBH3V0KVOANyN9FBfuI5dkxJBbEqt0WE
	6p+6PYMw=
X-Received: by 2002:a17:90b:6cd:b0:325:941c:ccb0 with SMTP id 98e67ed59e1d1-325941cd8c0mr5253215a91.34.1756123890309;
        Mon, 25 Aug 2025 05:11:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFx8YCW4yGPKF6jpJ2B5L1bLxQQVF62NjexUICV5/Sy9Jos1/wYUBHlSFW4Imyg6eG8ezQ0Cw==
X-Received: by 2002:a17:90b:6cd:b0:325:941c:ccb0 with SMTP id 98e67ed59e1d1-325941cd8c0mr5253186a91.34.1756123889839;
        Mon, 25 Aug 2025 05:11:29 -0700 (PDT)
Received: from [192.168.1.4] ([122.164.82.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3254aa63da6sm7046778a91.20.2025.08.25.05.11.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Aug 2025 05:11:29 -0700 (PDT)
Message-ID: <f5069582-d245-491f-913f-7488227605da@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 17:41:23 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v3 0/4] Add support to read the restart reason
 from IMEM
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, bod.linux@nxsw.ie
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
 <175493766109.138281.3436384432329568509.b4-ty@kernel.org>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <175493766109.138281.3436384432329568509.b4-ty@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Z/vsHGRA c=1 sm=1 tr=0 ts=68ac52f3 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=qL8JkhX1/0pBNNwer7kOkw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=cSn2wggv2xD2pGh0t4sA:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfXwiV8OstoNorI
 AJ5DRFzs+X8qHrDmeIbz/Kg0PFRX6xy8cVUSf+kLSbrGTo/zCLD3YpHUsFe0U90aACWENLELUE+
 9fXF7UHxW8XygLVLSp08ChYggQso2v/4vWM/WJE6qQdcPv9v1cyn1XizxfHG8Do+0fEVJf5MM88
 /hrX06CNxKm8vgUL/7tOfi84y2/WOM9m0DZeZcQRTzLPrV6lLIQl16mhj5TY+hHg84VZP47c5/P
 Aw8yqXs5/C0SU5e68Mpv0iAu106QCD1MyMvb6Ffjof3p0128TuB0UH1jZjnZdUey5OoB238o4s8
 DMTHXo9w1rjIK9Y+b0FXbayMlnta24Z/EXeVG4XJeR8iH1qWyFs1XZ/TVIeJEAX9190NABCXVXq
 qssDUrAt
X-Proofpoint-GUID: L4REWTLUKWVOb0OvufQc5kCD0nsWFqag
X-Proofpoint-ORIG-GUID: L4REWTLUKWVOb0OvufQc5kCD0nsWFqag
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_06,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 phishscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033


On 8/12/2025 12:10 AM, Bjorn Andersson wrote:
> On Fri, 02 May 2025 18:47:48 +0530, Kathiravan Thirumoorthy wrote:
>> In Qualcomm IPQ SoC, if the system is rebooted due to the watchdog
>> timeout, there is no way to identify it. Current approach of checking
>> the EXPIRED_STATUS in WDT_STS is not working.
>>
>> To achieve this, if the system is rebooted due to watchdog timeout, the
>> information is captured in the IMEM by the bootloader (along with other
>> reason codes as well).
>>
>> [...]
> Applied, thanks!
>
> [1/4] dt-bindings: sram: qcom,imem: Document IPQ5424 compatible
>        commit: 3fa1095979393d5b178264cc1bdfb473e80ab774


Bjorn, IIUC, based on the discussion [1], moving forward we should 
describe the IMEM as "mmio-sram" rather than the "syscon" or 
"simple-mfd". So we need to drop this change from tree.

[1] 
https://lore.kernel.org/linux-arm-msm/e4c5ecc3-fd97-4b13-a057-bb1a3b7f9207@kernel.org/


>
> Best regards,

