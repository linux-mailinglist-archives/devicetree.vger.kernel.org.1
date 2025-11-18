Return-Path: <devicetree+bounces-239770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D72B3C69310
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 12:50:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 7A2AA2A9DA
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:50:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EE8734FF7A;
	Tue, 18 Nov 2025 11:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DEvSkt4L";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aXIgDsoI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1100B311C3C
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 11:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763466632; cv=none; b=g+C492rN3MDM814RZ1fbRlqOV1mHq9Yt73LMI/f9O90VYDGnz/zHSZ8Sz7z7s63kZGXFz0mc1NoUTNF58RcR26c0g7WOnbDKstQl9zpM4Bnfl49gySzLLWZ90SjQqDc8coadiN+cfDThwXJrnnlEDTgStZ7xaO1rXibm6da+zJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763466632; c=relaxed/simple;
	bh=UFQDpThjH7s6OXXOeELKLt+5LTDFiBkDHBlZOOjvOT8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NXEsZ1N6ib7a5uc5iJCKRMlgFYLmiuREe2emePYc6klS3zdB21BUXXAdgoxbHlRfsh6UAvuRfmrhrpTBUFUMXjMFnr+rBtMguESAP1dVMh1NNxRdDC4Rl/fadmfDm+PSFea4QiGEUQIX873EAoEQ/qGO2LlSWwSYpHl8Xu4Q5jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DEvSkt4L; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aXIgDsoI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI98p1g4166700
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 11:50:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3hikXjUucj1+jC+rfFcQBPfFASs5z5jMV7UppVeM/hM=; b=DEvSkt4L9VS18TZV
	ms5+0I/Dubb3kgae+20er3GNiJ1qGli3RHPJ3wb2i50qcyi+96I49A2DxvIaJzv4
	YQPZ643JpyyH2QS5rO3W7juzd7fOZ5vjDMg3dwwBmOMy2kMNWvRQTrt8Vu/d2yJ1
	SSnh4rsj7jIgVGrgBg1JunHxLT985jlpe7jmIXPhYdILlfyvSmK1nP+WgcPp0ml+
	xafpOiEcYUo+9XkOTCkD4QakVDtHgNJC34/oBNKV8VIRSgvw1oBFJeFCEdwtsNTl
	A6IRkVZpMzPnQdg2KCXuFSmX+c3Notut+vetgwqylvic42OejhEqg9lbEIkNgyNL
	1Ykjcw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag593ucbp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 11:50:29 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee05927183so4670531cf.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 03:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763466629; x=1764071429; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3hikXjUucj1+jC+rfFcQBPfFASs5z5jMV7UppVeM/hM=;
        b=aXIgDsoINTj3OzuM1L2mzIag+bs8hbf/j3++xQfgsi1ZaoJbQWuvEiIpKBE2qW2n2x
         JwySsPtp79ilLdPd97C3Qn3Dartysxl3pWmyE4edMXbuOuNl/r/sEPtsQVHewzX9znAz
         faNvmo/XXoDFCs1NvP/1H81ZN380TW+nEkMyx2yqfh2+FkO1fPAZHh8dW6vHfFzLTAsJ
         QVe59zDSgN7E0IvZa/fRX9AjeLWhO3Jn/e7FLZwykgnZrlGKZRyWxXlmS4gQG+E+lHG3
         un88sZpFHDLEd49fOL2CpL01AZZAQruoU2lFMdb9GCanvW3TvxLT+A9SSZ6FSCduw2id
         dLWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763466629; x=1764071429;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3hikXjUucj1+jC+rfFcQBPfFASs5z5jMV7UppVeM/hM=;
        b=dR9RwpJFV3HsCSOry2Hi4A1ZRnDNgDHmisLQOBK6OZpaj84d1fSe6jmuftkjP8WRdQ
         ykPg/ILSViFLnsdmGebhGJoZmb6XA/FZ3HUp7chIym+HXmNfDQriwgjnhSOGnSXe5RgB
         KqvdT5LlVjhUBKptp79RnR8PTrOG+9pULR3S2EqYfyenYn4brcryzfv/0ALOVDfeLAbu
         gRZ9GGlKVayltb0kij3TX2+A/ZQTVSKwnMYXuS6mqMYU6jTLhcWpGGtt1vny5Dkr3QkV
         iabEZ6uZ00xrkhmgdzA+rGr1PKx1aEGQxU9TRfwoCVlDoj2UDidk0swQQ6orHkiu3h41
         cupQ==
X-Forwarded-Encrypted: i=1; AJvYcCVdQYo79IPc1OlIFw1H84U9z6Bmed/dz/BX/8T52OxIDObwNsvKIzQmvtH2E54wX8sPgOLOGVmclvXk@vger.kernel.org
X-Gm-Message-State: AOJu0YzCRtCcQFGLlCMIreKQ5LK9Y6nuv4KiqbUm/zmB8ieCuTXZroGL
	QMQI/wpwRIIMv0CxzECVTzFDNBnjcmRVtgORWdN7VoByeSLZOtdZH98wLNmS7nzTcVQij9bOxWl
	+JzkoE//i/FLetdF7UEB1FxbLefnpoOaOwmnBuU7uoWTuFgzScc+Hh4QdOgKK/PI0
X-Gm-Gg: ASbGncscZwBQ46OEpAO27vusrr8Iu22G6+tyQRXWqXspjSkjtqAEpwGS+PNtQAZOeSl
	ZWrH4r/qIgkxgeLVhJ5KLlrYDLy+Qxlm+vEbvaHF9rHrW1dvzg7RyVNvr47D4HwLqS+s8pyQxml
	3lMDP9TJ6iw0YD39L6+RSC2d6+FCDq8nnjybGh1MmiRrk7g20/ak2znHOcgGkOVj/ZFxAXoNlJc
	GmqdZB2yWndu3EY6H93qiJUnlOeiN+NrbnYxOBxwiBfdx5BB60S7Tjqiz99TTgPgUHNCPWGZfh7
	TxQxX7C6xQBriDx9Hit1gnIE710VKwM4LbYPc3NPFOQrBUf3y/Kn1JyhxUoMN/TrFS6WUEe+8TB
	CVsMcy4ooLEE7m6yJGiE0oLj/tv0QggXsLQAfXd7IBZL8+g6YFnOiyHk3IYVlh8sDy+o=
X-Received: by 2002:a05:622a:1801:b0:4ee:1db1:a61d with SMTP id d75a77b69052e-4ee313e82f2mr24810961cf.3.1763466628708;
        Tue, 18 Nov 2025 03:50:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFdcBnxvTchEI4xgqfQAAMzQYTZlN2bSFFaAKUizuPbhe3vWImJ4kfXdxNtpqcs/rTUiMDPmQ==
X-Received: by 2002:a05:622a:1801:b0:4ee:1db1:a61d with SMTP id d75a77b69052e-4ee313e82f2mr24810701cf.3.1763466628235;
        Tue, 18 Nov 2025 03:50:28 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a3f94f8sm12675207a12.13.2025.11.18.03.50.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 03:50:27 -0800 (PST)
Message-ID: <0392b41d-3a95-4c77-9267-bfa3e207013a@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 12:50:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] Add CAMSS support for SM6350
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bryan O'Donoghue <bod@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <3ph8XeidoxkUIsK7qiOH29pde94sdwa3ReWKVVrPabgS5enIAmwVAC5plyFnBMJGKQBnxFB6df6j69OMFIeavw==@protonmail.internalid>
 <20251114-sm6350-camss-v2-0-d1ff67da33b6@fairphone.com>
 <df4a6a77-9004-4dbe-9b11-7af2bea7e068@kernel.org>
 <DE8JJCQA0C4Q.35NEED7XG0K0V@fairphone.com>
 <17e7ebc9-3b88-4334-b87d-1bce6d5bb120@linaro.org>
 <893b97ad-7d2b-4408-bab5-2cd63fdaa33b@oss.qualcomm.com>
 <28f33d3a-6866-4bdb-a1e5-d193dcb7d4d1@linaro.org>
 <a15bbbf1-549d-4603-ad6d-3a578b548184@oss.qualcomm.com>
 <0a114896-ffca-427a-8761-977dafa73ea5@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0a114896-ffca-427a-8761-977dafa73ea5@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=AKSYvs3t c=1 sm=1 tr=0 ts=691c5d85 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=PV6EGJ5lTCk7Ln_g6zQA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA5NCBTYWx0ZWRfX0XYaWcYGdlzI
 3yI6vGXv42FBB7W/l1zk/bRpxEGBo0cFbrmB5UxUlYbygoSY1ecsa59AlV16t9qklCrchu236Ok
 H2YcXRViUWhX9ErLdDMhn/2Uyu2Me43oQQZo8T/3jG2z3+ykkqKT8F751yS24/Y86Ew53H4ZfdL
 EOQepjITONJqAHMzNKiEZxxpRy7qOSrmNf5oa5OOfYAXRNZh5CIuviEl1AFoe0+Yy3a64xxSxeK
 3wgp2HwuwAUoBATC92sw91ZgO9gKOR6aNoe+xrE5NCUWAaDQDa/q5/5/SjhTO0gvhpOJaMMeXD8
 fTHb2MRFrMMfOJt/PxzpXQlmLR0CYfm3HuIU3pCzx0Zb3nYj11TOTIlmFhrHZE6xH/xVsgEq+MF
 07OVe7PzCQEtEjISD115Wr8f1mXSSw==
X-Proofpoint-ORIG-GUID: GrXNFOwVbiecbGUlFlKvbVVakTJdGyEv
X-Proofpoint-GUID: GrXNFOwVbiecbGUlFlKvbVVakTJdGyEv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 bulkscore=0 spamscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180094

On 11/18/25 12:08 PM, Bryan O'Donoghue wrote:
> On 18/11/2025 10:06, Konrad Dybcio wrote:
>>>> Konrad
>>> vfe170 is what we have on sdm845
>>>
>>> So I'm just asking Luca to try the sdm845 method of waggling this clock since what we have doesn't work.
>> It's of course going to work because this way you're not calling the
>> code that throws this error
>>
>> I was curious whether you know the actual reason why this is being
>> done in some other GCC drivers
>>
>> Konrad
> 
> No notion at all, perhaps as a workaround to this very problem.

I tried digging it up, but only managed to find that there is a signal
between titan and gcc to request it being enabled (perhaps that's a
fancy description of hwcg)

Maybe +Taniya would know? (context: sm6350 gcc_camera_axi_clk stuck at
'on' when disabling)

Konrad

