Return-Path: <devicetree+bounces-257263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8F6D3C4D4
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:16:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8D8F758789D
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:09:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E905B3D7D95;
	Tue, 20 Jan 2026 10:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XL4hTnJN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JlB9tvr1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA303D7D7F
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768903741; cv=none; b=B7x1IF/vAvxkXZwyFk9CEpVcJI51UtKIhrjjjjm59oVC8DMyqBGfy34RkeqZLZtFyGYr4OQCEolr3Usihhv2yfpJrwh3mBLd04LdgJa5cqUDFaGJFtkY8qS8vUdBXHlRjS4Cy593MJHX1JSHV2IjmKo5xfiJXDOyORn2j8+rYPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768903741; c=relaxed/simple;
	bh=yz0X4B56o0xJQ7v4pyOQFGL4zSaD/UvOL4okAVWFLk4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:Cc:From:
	 In-Reply-To:Content-Type; b=kVPRZQ/sykM3XFkuBd6RGrC4ydRnPXrBmqtBw/r2MpPr5GgspSVyWoh3YZ6WpxMW9wP7I4Ci25ZDmguGH9E2bQPyt2CTvaR//R3nuifOND8QKD6uEcb5b64JTVwZYd5c90sYdonYB9PupwA9Mo8vAyX0kGOo79GjASkLvzvpGz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XL4hTnJN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JlB9tvr1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K7udaw2411227
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:08:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9CJZetFiZ5EMxXr8wlgpLR/AVlp9ScPsDs/V+VrVgz4=; b=XL4hTnJNnM664FUt
	lDX4HnSiI3o0uTMh4cH0CV4Jwv8T2yPi5yMVQMZDxs+nyQsJDAOciRjLDz2MSQYf
	amXtFL/+p826XCaNj/NllIbO7Bdn8jwEF8YQXbg9E66f+6yFpcCAXorfJVccZMI0
	IJVmEcMbRayKzk0W+/Gf4CE7ZEPUdEhPBjpZJawNJN9CgFuw8or69PL1Z3RnWhIK
	dszasiLoHDUQmlVL/CRHELkxn2/OA6v3U3dH4styP1fbwakoIhGej0tOUDy4qbf/
	5yLJ7ecnG4GSnnlVOZhDHo9qFCNLYqHLb/dHbxHsCLNqEUQJgy8NySP8cuimSbNF
	A3zU/Q==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsnpdju4b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:08:58 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34ac814f308so7674017a91.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:08:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768903738; x=1769508538; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9CJZetFiZ5EMxXr8wlgpLR/AVlp9ScPsDs/V+VrVgz4=;
        b=JlB9tvr1/H3A5//i7xCgpkEQPTLKu6fruALdtDX7yLiM9gfi6wi+JFMoU8oKAT+tSJ
         7OyKqyDdjHuDPw7eut3msxC4ewOXDKZID20TNv+8LQjDqdlAW0ai2EnVj8rzIng18cMl
         vj3vQ60zPDcwFKIwK1KlcmQcTdUNS04ZKEtd+tFA+GfscAo5wAncOWoltRtj8tsYp0Jm
         eM/7cd7SO7mS5JNQjTFfgpP4V6xIWQGkJzVgbZi/hqLgAquveDSFMs4uVu4B6k5LZK7X
         1nU56P0jDhAk+ECBIsSA8NG+/LGFFQef5olgVcIhG10GNa2lTynDYwroJzy3Ba1vLefN
         ms2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768903738; x=1769508538;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9CJZetFiZ5EMxXr8wlgpLR/AVlp9ScPsDs/V+VrVgz4=;
        b=s9OUqyGdVL57kGR6HEedbn7x/LMJs0TcY9SZu7qoFPT/Jd/1lDVYDU7EN/qGXtFKZN
         KFo6msMOaKMDjWZi/j+ICXqRhO87Tj+HEb0sM0IhzxUHpXk4/wmi+kP+Lcfg94PfB6Kd
         dTJlK2Z/aexo5udQ7nP7BWtIAokFZBxSb4gVmnrhIsQNojpjcFkyTTOtQNvtd6mJCAde
         o78gFM9QWkGubSVSodr9shyuo43jhaI9f5clDq3J7g7D/5WK9tOs/8bbo3AkKWzBnV6N
         jyqpZi90WXdnb/qFp+znRTq/M/5Cj5wYMmKpORYD9kYnlEhMjoHFOxwkTSZXeJBvXXOo
         qsyw==
X-Forwarded-Encrypted: i=1; AJvYcCX+yitTuLwiH4OVLj8x4imqVP4r/mOS1kPI6j4X23N0dzPiQWnAJ+qA6N2gNx2nuLUnBLRWCd6Ka+dO@vger.kernel.org
X-Gm-Message-State: AOJu0YyaEVSwRPciYz7pLXm8qis+T3UpBM4D9/dHycL0X1DSk0Dr64/h
	AdeogH7jRrRPn77ipV7YmDX8LX10y6lu0MSiCgAWa1Aoj8tPayiOWXyTkbMXW1J0L4tH/m1+pg1
	hPz3T5nqb8YKQ3PcGBmUQp6BViTYu+90gNsD4C8vvYj79U0yWAcAL33VxfqUFHwpZ
X-Gm-Gg: AZuq6aKQyg9PkVeFo7i6mfM5oqQWqsxGyanBepkY3ZkXDJXPetzwQM/HiJpfYbvg6ge
	85qFjYEUbPoHhVS6MRKSA3PaNpysVvBHXe7Xcngwn2jmvk5KZLKkLOZfUnCdId5Ob6qzsLF0v98
	Y3dDoxBcXvPoCtdy/EY0kxdUR+pv3TTCsh9Lx0OTJ41Y/yPl+aCytzd/HQIRE1XLjnxYS1du9Is
	tYCsFUBRhM4YAfytZsTqfqAgybfBh+Gu41q21hMneP7ynywLA8GJlhfs6hjTIQ23QPicB6Li+wH
	TGv8XLEznV1zUicmnciGVzEKRWVLRxeWwzdDO51Bdd0mTEJFu+LlgpbsIGNc0VHp0SIRr9iWEZQ
	e/PUo5PzdMcaeVKyDwXCKjT7ftodGv+XaQRg2
X-Received: by 2002:a17:90b:544b:b0:34c:fe57:2793 with SMTP id 98e67ed59e1d1-352c407a7e3mr1236593a91.20.1768903737745;
        Tue, 20 Jan 2026 02:08:57 -0800 (PST)
X-Received: by 2002:a17:90b:544b:b0:34c:fe57:2793 with SMTP id 98e67ed59e1d1-352c407a7e3mr1236574a91.20.1768903737276;
        Tue, 20 Jan 2026 02:08:57 -0800 (PST)
Received: from [10.218.16.122] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-352c150faa1sm1663686a91.7.2026.01.20.02.08.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 02:08:57 -0800 (PST)
Message-ID: <279d96ed-865c-4f15-a67c-ee1a94ea2c3e@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 15:38:51 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Fw: [PATCH 1/2] DT: add bindings for QCC2072 Add DT compatible
 string "qcom,qcc2072-bt" to yaml file.
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20251217112850.520572-1-vivesahu@qti.qualcomm.com>
 <d180711b-7957-4252-b34b-81312705555b@molgen.mpg.de>
 <BY5PR02MB6946637904902544E6767829F189A@BY5PR02MB6946.namprd02.prod.outlook.com>
Content-Language: en-US
Cc: Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        "Balakrishna Godavarthi (QUIC)" <quic_bgodavar@quicinc.com>,
        "Rocky Liao (QUIC)" <quic_rjliao@quicinc.com>,
        "Mohammed Sameer Mulla (QUIC)" <quic_mohamull@quicinc.com>,
        "Harish Bandi (QUIC)" <quic_hbandi@quicinc.com>,
        "linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>
From: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
In-Reply-To: <BY5PR02MB6946637904902544E6767829F189A@BY5PR02MB6946.namprd02.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=NtncssdJ c=1 sm=1 tr=0 ts=696f543a cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Dei6p5SHAAAA:8
 a=pGLkceISAAAA:8 a=COk6AnOGAAAA:8 a=mJvZe0GqcyW80rR8KUMA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22 a=M-Yerj1wOn-OpK7r_3ei:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: TYXJ8FHNZx3TpTERcsMq6I2N4oY5LD87
X-Proofpoint-ORIG-GUID: TYXJ8FHNZx3TpTERcsMq6I2N4oY5LD87
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA4NCBTYWx0ZWRfX70gDsrwKa3y4
 WoO2r5gRRiNJtBzAfjPquXSq77lbNPIAtCvvtDuqu6Lmb3W3DVcg5cHw1d6xmadl0i1EcrmjS6P
 80htziKXXecEKb2uIDcy28m/mxstmTYINK58EaBiGLtGIC3T42S/WKA9DuJu5hyubSzuQOSYKQS
 7SJ37knhLoGcIj6BL24MtB11j+t8pMfDzND6/ojbSF8EMeQe0OhpxBhoc5KOta1W0C+8tXhIp5q
 km9j0b2IrREByeJT/b/W8vKLt9jLn4IbdoytYYcWeEB0NEsFfTfMx/x2cK/k/4AciMnyGYq+ZwX
 d2F+7bzHF5Y7oAGF4fL8WS2RlYT61wMouDLBthmHVFidk8i+OP4kJA+xWXaxY5kZBU5B9dY6mDJ
 cGSayH/SlWMchBNiG7jOfZZv2ov/9iK7rxOKTPteRvcQOuJU8xEdFXgSysECRUck+N/j5cmQQEf
 HUmpm/dxzcEs+Z+lifg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_02,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200084

> ________________________________
> From: Paul Menzel <pmenzel@molgen.mpg.de>
> Sent: 17 December 2025 19:44
> To: Vivek Sahu <vivesahu@qti.qualcomm.com>
> Cc: Marcel Holtmann <marcel@holtmann.org>; Luiz Augusto von Dentz <luiz.dentz@gmail.com>; Rob Herring <robh@kernel.org>; Krzysztof Kozlowski <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>; Bartosz Golaszewski <brgl@bgdev.pl>; Balakrishna Godavarthi (QUIC) <quic_bgodavar@quicinc.com>; Rocky Liao (QUIC) <quic_rjliao@quicinc.com>; Mohammed Sameer Mulla (QUIC) <quic_mohamull@quicinc.com>; Harish Bandi (QUIC) <quic_hbandi@quicinc.com>; linux-bluetooth@vger.kernel.org <linux-bluetooth@vger.kernel.org>; devicetree@vger.kernel.org <devicetree@vger.kernel.org>; linux-kernel@vger.kernel.org <linux-kernel@vger.kernel.org>; linux-arm-msm@vger.kernel.org <linux-arm-msm@vger.kernel.org>
> Subject: Re: [PATCH 1/2] DT: add bindings for QCC2072 Add DT compatible string "qcom,qcc2072-bt" to yaml file.
>
> WARNING: This email originated from outside of Qualcomm. Please be wary of any links or attachments, and do not enable macros.
>
> Dear Vivek,
>
>
> Thank you for your patch. The formatting is off, and the summary/title
> (subject) has two statements – look yourself in the archive [1]. Also
> the prefix seems wrong.
>
> Am 17.12.25 um 12:28 schrieb Vivek Kumar Sahu:
>> Signed-off-by: Vivek Kumar Sahu <vivesahu@qti.qualcomm.com>
> Please elaborate by giving more context, why it is compatible, and I’d
> like to see how you tested this.

The compatible string "qcom,qcc2072-bt" is defined in target dtsi file 
and it was tested on the hardware. The corresponding target specific 
dtsi file is currently merged in downstream.

>
>> ---
>>    .../devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml    | 1 +
>>    1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
>> index 6353a336f382..197248d6f7b8 100644
>> --- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
>> +++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
>> @@ -28,6 +28,7 @@ properties:
>>          - qcom,wcn6750-bt
>>          - qcom,wcn6855-bt
>>          - qcom,wcn7850-bt
>> +      - qcom,qcc2072-bt
> Lacking more lines, I am not certain, but I maybe this should be sorted.
I'll address it in next patch of this commit.
>
>>      enable-gpios:
>>        maxItems: 1
>
> Kind regards,
>
> Paul
>
>
> [1]:
> https://lore.kernel.org/all/20251217112850.520572-1-vivesahu@qti.qualcomm.com/

