Return-Path: <devicetree+bounces-236567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A2DC456D5
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 09:48:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F252188FB33
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 08:49:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E94C32FD1B6;
	Mon, 10 Nov 2025 08:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m+Z3Lf1G";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZZvxji+y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA2542FD1C6
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762764517; cv=none; b=u6ncGKR3AaO+o0SNBgEIcFRDLfkftSjMzSsBBpxHBSrqQx5B11zIShBvONW3oisQu5DkzysNM/p6aLKopIc1CxXf6gC1eFwFGK1hgtREzr7Gxe4X0M9QrAPRONUbUdGHKNU+DBOHTL0F6490vZnc7h04iio4BUPnDNF5PsdKcc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762764517; c=relaxed/simple;
	bh=laOBFdZdF6kgt1Nl/qfybsoYbD7vZYVLOcK+XoJFrlw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eoVXPnQMAvn/tGfYyy03kVSZmvDNSu8H6ezD6BgTJm/9U/cComrQPKX7ECwtYxtFBh3fk5sllejdGKho6GPyI+ExglNI3wPkjaJpYiln7AquJ8Ymo2BNjLgD8lcu3GvYdMVjpkeQ9Aez2S5PQmzQ4WhONWduwjy3tpBjEcXRfX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m+Z3Lf1G; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZZvxji+y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA8GgQY1354723
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:48:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	np8BFd2leJr9qp9c1WrvYL7Km/AP9ghIZ2N7cPw8mDY=; b=m+Z3Lf1GIEjWZ4tK
	bQ0BeYSlUfphMJmp7pY26yG1u3b0SLaCuKFIB4//xs4/SJJ8XYJ/2ltqMjQY7JnT
	SfBdnsLSDj/l/3flDQQEFOudY6sssOWhE5kVIcFxqsRGIiaVYdABfKb6fTBiq1AN
	kIwF9hZ5NvQ7FhMEueUsHhxTA1Grg9H54cTehRO5HQ6/3bgvKaPRE6yfyKadcStF
	ljoNmumLR6vIUzaFzEcRqN1Ecp8XyJ8ZTchoJFViY22a6/FbBuzVFyXAogecfd0V
	L6u+FtI8kLIJX08p5Xaw9FNNsz1xk3Pij1fgHbKpdIE6//EN8adVVntdiqVK6Yam
	607zhA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xs7c0vs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:48:34 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34361480f51so779672a91.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 00:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762764514; x=1763369314; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=np8BFd2leJr9qp9c1WrvYL7Km/AP9ghIZ2N7cPw8mDY=;
        b=ZZvxji+y/8sR+S6VfL9onAH1MUqUa5ZH/pNYZntxUKlRa7FzLfiK+veitL+cY5rAwb
         d4cLw64/8jxh1V43afa3n9XFd5dkWg4MAfbQp8JT6eHrmC/1dfePYq2adc4UKBVJOthB
         jHTKzOwqxzNgJx/IsBPUfnfT+N9L2UvAvbVdtiXyYjvgRH1lRIvt85pOjDy3oGQwiQ9V
         amVEWc0lqBjbEMnb8ZWHQWebVIyWzNb2jOS6wzOwa/2f4InTSSxIVxJb2czcqkZQFI9w
         3HPUGsK37ruENWJbyeBVExbMU7zLWzcIlWRHy51SUXAli+2NPHD8RobUtAX6LOwY/8nz
         AjHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762764514; x=1763369314;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=np8BFd2leJr9qp9c1WrvYL7Km/AP9ghIZ2N7cPw8mDY=;
        b=oF4uedlq3MMnF6TgUix/j780hYMb6J2pgpW7tnmDT5YrnMm+VH/dekT2QBVpa7rG06
         eGrlD6xSxnV2egbQMMRqjlskqUV8qTk64z/O9NUwa7Gd/84SlWE20hvVzH+Qp/RbllOR
         3TksUNxR5eS3K8U8b3qLwrfNjEpo38ExI3/i/IsYEBkbstKsMABGJOXG4CK76zRP8x3k
         gZGapliXBYMnZibhawXYYylS/0fRT6Wd9RtC6gxrni83Tl0366c8hR9fIzB5BKa+OxWC
         1zaxe8ei7LvbTXFg5Ob7OHGAnpb8ir8pra2f5w2laPShFexaN8XVf2ufxSuTRac5Dp3v
         PMZg==
X-Forwarded-Encrypted: i=1; AJvYcCUK0mi3RKr9h/NF8ErrF5C5H3oJM9xCU0g5OvQTyOgmYdyVoIJ2I/uFpFRYdhZXsIuG/T1jmUyC4KsJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzMG5GM/s772TdqZdRKf0eoxIyrUZA7vD9ZWxUWy8dbV/pHX6QE
	7gsmVeA3FN8aCmjwn4ATerHD7g4kljBD+CESItP2L1yA/1kuJohHum0eAjzC/SeprjPR6mo/P+t
	Ju9iTa3quNe2q4VEQxivplO1pPwVubQ7fhYG3NRncQS67pEVoo6bpj2qchzPwF5k=
X-Gm-Gg: ASbGncuMKuVAuMwjJ7W2DSoqQw/A9M09KKsGMArTh/xxPNMgDYduLuABXp1yVLHrbzZ
	OmYdTywO0T7o3TX+f1kCADa3qI+VD/VYBYgx9wi2C0ZqSwqNorN2BS4U2HQDUrblGhuxal3SKog
	hehpnMk+s6FUyslXw6/nDjTQif0kkMHuPhZiIlUc0xnwKkr4IDcV6uy2xsbhRBgSFffftUBGE8S
	4PuAe+xeORQ0EH9hiWKwlnz9SsZFxXXN4lrfTNBi35AYfXOxLpt3XNFA195SWuEmk831ZIF7BWo
	lBZ/SiLz0B0hMsz0q1UhPzj+k+KijNXAQZPnxCBFd5eVc0r+HtcYIHzxOYpOO8hQ7hhGLaDbC8Y
	eamfrfeo/iM8PLSe+a+ttFrmkTIcm
X-Received: by 2002:a05:6a20:9188:b0:334:946c:8ef4 with SMTP id adf61e73a8af0-353a2f3d9c7mr4957166637.6.1762764514279;
        Mon, 10 Nov 2025 00:48:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHYN++oAFbO2ZWEA5lhEp/eZEf4Ohql2dsdu6uheNC/E3zbINXVL4iwByQ7NReQxBPEV/6kPA==
X-Received: by 2002:a05:6a20:9188:b0:334:946c:8ef4 with SMTP id adf61e73a8af0-353a2f3d9c7mr4957139637.6.1762764513730;
        Mon, 10 Nov 2025 00:48:33 -0800 (PST)
Received: from [10.217.216.168] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba8ffd3f6easm12380935a12.21.2025.11.10.00.48.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 00:48:33 -0800 (PST)
Message-ID: <1765edf6-cacc-4829-9ac6-2b9dd98ccc40@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 14:18:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 4/4] arm64: dts: qcom: sm8750-qrd: Add SDC2 node for
 sm8750 qrd board
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com, Abel Vesa <abel.vesa@linaro.org>
References: <20251026111746.3195861-1-sarthak.garg@oss.qualcomm.com>
 <20251026111746.3195861-5-sarthak.garg@oss.qualcomm.com>
 <99f951e8-b6e8-4b92-b55b-341a2f3f070a@kernel.org>
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
In-Reply-To: <99f951e8-b6e8-4b92-b55b-341a2f3f070a@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: iwEXoeXcb5Sq6b-X4yVI85m6sSaRTeOQ
X-Proofpoint-ORIG-GUID: iwEXoeXcb5Sq6b-X4yVI85m6sSaRTeOQ
X-Authority-Analysis: v=2.4 cv=LtifC3dc c=1 sm=1 tr=0 ts=6911a6e2 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=nosftV4G4FSUV_QDBQQA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDA3NyBTYWx0ZWRfX34iWm1cbGpgP
 481RCGscY3H/FD9H5OLWtS8l7cSqQG7Se/oLn2uOmp+VsKkmfd65ZhgAlVbPePB+t1czfkFHe+G
 zXzBg72u2Kd340v+DiWBqrZXKwACrGfaf6PBehIXTO+cNRKOuyphmAFtlzzjKVpB3rtNhI/U81R
 O8LJKe/eKwQln8u8OzOh2sNOJwat/eVpeJNRHUDBqAevk7iUkTXcBDdA8v5Ib27Xr91pB04l/PA
 53tKoEz3efjMoKC7hGqgNqRkQ/PGnGeeqNdCpFbrTA1pLEhIVaFOFZkpwrZcT6Sz080U74KzQmz
 jekdjziLGJHsE12Spgl5gf1UC5LvTml4KZAevBrQWN24JxgJB9BrXrFkiyrfscBEtwzcCv8CBcR
 Klcd/0+mqXk4ZIEcSfwOwlj2hRd4FA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100077


On 10/27/2025 8:04 PM, Krzysztof Kozlowski wrote:
> On 26/10/2025 12:17, Sarthak Garg wrote:
>> Enable SD Card host controller for sm8750 qrd board.
>>
>> Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
>> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 23 +++++++++++++++++++++++
>>   1 file changed, 23 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
>> index 13c7b9664c89..c2ab39744a0c 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
>> +++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
>> @@ -1031,6 +1031,29 @@ wcd_default: wcd-reset-n-active-state {
>>   		bias-disable;
>>   		output-low;
>>   	};
>> +
>> +	sdc2_card_det_n: sd-card-det-n-state {
>> +		pins = "gpio55";
>> +		function = "gpio";
>> +		drive-strength = <2>;
>> +		bias-pull-up;
>> +	};
>> +};
>> +
>> +&sdhc_2 {
>
> That's random order. Please follow the order as expressed in DTS coding
> style. This file already has broken Qualcomm style, but you do not have
> to bring additional mistakes.
>
> Best regards,
> Krzysztof


Sure will update in V4.



