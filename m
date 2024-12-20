Return-Path: <devicetree+bounces-133092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A20809F9381
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:46:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5BBC57A119B
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 509FB2156FA;
	Fri, 20 Dec 2024 13:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PujpZNKK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52C62156E2
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734702394; cv=none; b=af4C58csuUQdEadrzjwILjTF2vpcLiAfEHZLNvtadSsnfoN4AkIFK/5HJpxWcKiO1f/+W5Eqn2N5S5VgcEnqLm3HwQJLnIJOlRc4ej1cGxMzVKrMEcGfOYAHcpOpvXJWd7YP4UkZkX5bSMFbPj6p3O4Nf/SR/9jLqvJmR54Iryo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734702394; c=relaxed/simple;
	bh=kbNZd6uBHvAqqv62kriVCFc9O8AGr/zhqKitzwxTBfw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L2s/ZR6a0MrraZjRwpuTsPtLzB0sMU0vmORzKJjpSid8hylxR92KJvo8sKhkKVdEZAQpmHqlGQOFOhDYDDuE1KF+sxY+oSYr3RqwwJ8HMsyr5gxN88tKHqOg0eEFhj1KExE0o8DvUmZHvHQvRm2GRCiOA8Sek0wDvJsFQrzqYaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PujpZNKK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BKAKoFu004211
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:46:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sennr2JFKCSXKhQvKtkDEiv3JJZQJL3xM0/QiG7iw3c=; b=PujpZNKK4BMvn0h7
	jSYlDXehfGwC0FMCEHtc8ho3NRBDfeKTlvlC4XQWo+ADRMtrSF2jvCE/QbqQxP/h
	UbykpEdU9hiGD3dMqah0XWon+gkN9kM410HpjWo4LO6qb+H3P06FzS6o2hiTaUAV
	tVn5rgaIUikE4Yp9pdj2uQB58xQr7y2dmfgzOV9vd46wDgZQxJz/Z6OHrut3VxnC
	r8WuZC0nQC/A4U+SkD6ELB/9fN10sRZ7+GMaLol8E5NGofbDDS9Zy0R1KCrN07q3
	rqR/DunUp1gMGxWbse8FJtRyynoBStTftM4D7/tae75g8uii9ALx4Vsgp2i3VZ4J
	eHIXBw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n6ra8frn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:46:31 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d887d2f283so4932846d6.0
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 05:46:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734702390; x=1735307190;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sennr2JFKCSXKhQvKtkDEiv3JJZQJL3xM0/QiG7iw3c=;
        b=w1Gjx6E6k12Pj3dXm2jC+GD6JDLzbdRrW6xwbtIg4gh7r5x5w7OwwybusHi+duXE4h
         mi03ThZ3tFG4vAVNU25nZsWYZJsOAXmG3FZdeq5zOT8eZ7e/MQEj/b0TRZeGrJezBVPc
         AqiDKcH8eDEMaiTnjypJ6So1mFGPBXCc6tvLcHmHyc6YmO/FO1+oyeA7OSpCKge4iN5h
         UpOURa/Udl+2GAizgY5Ax6sLuP74ItUqdcv5CT2gd9NlosVlDu9n/l0kjFuYulV+Cz2G
         PqLgUYCVtz4XcEog1PLZv2A5zZPl5Ou88OYDzTOJi8w8Op8rOyYdoUmsHh+d8QUAShdD
         K47Q==
X-Forwarded-Encrypted: i=1; AJvYcCUCjgBs37eapZfOBv9xolw1LwuOD5BrWUcBBmojOgf0C4R6xlmPWYoLcWNxkWavaYxoX7U/CoRZozUC@vger.kernel.org
X-Gm-Message-State: AOJu0YycQHHTW7Tgkyi1rB7bguUCBxf0Hg1PrOo0YYaRWm9pE0XuvV5J
	J78Ns9usu556apEaQjKpAFWmmexday4zulFOFwMlduwcmLE9DuOV3n05iy63Za8AZF/OvE9gb8t
	XNIUEaXQI79jMj8EulEeYttRpVZWdnLViaVeR1/m7iH0YYMVywTONXRQUU3gA
X-Gm-Gg: ASbGnctA2SpgMGArwJzfvwUJ/1Gx4e9smvOm4hdCfxMP8alKawVKCPgXUB6V/6q/BEB
	Jq7hKX6mymKY3feO+rJAvhVgUUfP0eWcvGvV4eARCdLu0kGwsAnd60OnlvZAA6N5p7Z28hJSBAT
	71Zm/5wqdY7HfwBzJZF0VcL5qeFFixDsCX3zjIxK6fBBFvg645N5JnaajWk/j+PQASvHm0wZpJs
	KBueqbHQ8+80EqMnYGTkeIwn7hIJIEr/FDdj0H1VS6Hh3EwKKXwc2tcYCT10IVgMXQKq4kNfsNG
	YXvtMcehhYBL1V1z2gODr99yN3Es+hwSyjc=
X-Received: by 2002:a05:620a:8003:b0:7b6:e196:2219 with SMTP id af79cd13be357-7b9ba712ac7mr172030385a.2.1734702390566;
        Fri, 20 Dec 2024 05:46:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGUIwWJnMfAnCj3BL1XwltVLXY+IkD8MooWIQeNVfKSco3iv5aZXDP4Y9gvt4UB93m01afHQw==
X-Received: by 2002:a05:620a:8003:b0:7b6:e196:2219 with SMTP id af79cd13be357-7b9ba712ac7mr172027985a.2.1734702390202;
        Fri, 20 Dec 2024 05:46:30 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80678c6dfsm1781568a12.37.2024.12.20.05.46.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 05:46:28 -0800 (PST)
Message-ID: <d5fe224b-7ef5-47ae-840c-7b6df21da816@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 14:46:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/4] Bluetooth: qca: Update firmware-name to support
 board specific nvm
To: "Cheng Jiang (IOE)" <quic_chejiang@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>
Cc: linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_jiaymao@quicinc.com, quic_shuaz@quicinc.com,
        quic_zijuhu@quicinc.com, quic_mohamull@quicinc.com
References: <20241212150232.3823088-1-quic_chejiang@quicinc.com>
 <20241212150232.3823088-3-quic_chejiang@quicinc.com>
 <94eae703-ed9e-4f57-9786-99db7aaa07d1@oss.qualcomm.com>
 <db516034-81de-4e41-932d-c1bb26e1c55b@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <db516034-81de-4e41-932d-c1bb26e1c55b@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 3ACmItss6dvCt2tX6nmX0GKK0yf9_W35
X-Proofpoint-ORIG-GUID: 3ACmItss6dvCt2tX6nmX0GKK0yf9_W35
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 spamscore=0 mlxlogscore=999 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 impostorscore=0 adultscore=0 clxscore=1015
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200114

On 13.12.2024 8:05 AM, Cheng Jiang (IOE) wrote:

[...]

>> /*
>>  * If the board-specific file is missing, try loading the default
>>  * one, unless that was attempted already
>>  */
>>
>> But, even more importantly:
>>
>> a) do we want to load the "incorrect" file?
> Normally, there is a default NVM file ending with .bin, which is suitable 
> for most boards. However, some boards have different configurations that 
> require a specific NVM. If a board-specific NVM is not found, a default 
> NVM is preferred over not loading any NVM.

So, if one is specified, but not found, this should either be a loud error,
or a very loud warning & fallback. Otherwise, the device may provide subpar
user experience without the user getting a chance to know the reason.

I think failing is better here, as that sends a clearer message, and would
only happen if the DT has a specific path (meaning the user put some
intentions behind that choice)

>> b) why would we want to specify the .bin file if it's the default anyway?
> The default NVM directory is the root of qca. The 'firmware-name' property 
> can specify an NVM file in another directory. This can be either a default 
> NVM like 'QCA6698/hpnv21.bin' or a board-specific NVM like 'QCA6698/hpnv21.b205'.

Do we expect QCA6698/hpnv21.bin and QCAabcd/hpnv21.bin to be compatible?

[...]

>>> -static inline void qca_get_nvm_name_generic(struct qca_fw_config *cfg,
>>> -					    const char *stem, u8 rom_ver, u16 bid)
>>> -{
>>> -	if (bid == 0x0)
>>> -		snprintf(cfg->fwname, sizeof(cfg->fwname), "qca/%snv%02x.bin", stem, rom_ver);
>>> -	else if (bid & 0xff00)
>>> -		snprintf(cfg->fwname, sizeof(cfg->fwname),
>>> -			 "qca/%snv%02x.b%x", stem, rom_ver, bid);
>>> -	else
>>> -		snprintf(cfg->fwname, sizeof(cfg->fwname),
>>> -			 "qca/%snv%02x.b%02x", stem, rom_ver, bid);
>>> +	if (soc_type == QCA_WCN6855 || soc_type == QCA_QCA2066) {
>>> +		/* hsp gf chip */
>>
>> This is a good opportunity to explain what that means
>>
> Ack. This means the chip is produced by GlobalFoundries.

Please update the comment there

Konrad

