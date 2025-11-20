Return-Path: <devicetree+bounces-240753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 47902C752A1
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 16:56:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 82B8D4E211F
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:42:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0DE83624C5;
	Thu, 20 Nov 2025 15:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fSk1CVqv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gjSDBbix"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D4D3624BD
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763653012; cv=none; b=QfM3bE48wS4iSf4rBkfprlam+mnwxmjkIyaD/Q0Jnc7NrhLe9sY23vc0UXrdCMvf4RRQDV8uN6fsvZ+XydW9mfTpEmWG5GeMaIqPiwi0jBGpGPfB/vkWi7z45qnOZ5onRqEDia8gcknRbCJTOPVW7C14F+vCLsFJtPiHcXeea7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763653012; c=relaxed/simple;
	bh=1ql/UuDa5J03nIlCEaKKpRNUsWWo0A2ZXV1rArNVUrc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h7XYDiQP9KfUOUTruHvuMicPcZZCoxd/5Jfk96OyAeUFC7sI2QJzfDyoB5a/vWHmoj/7sBkgkJ7Jtw/Pkf17KlLEXl56gxTX3gPMQ3m43svk5LT/NyRndhHpe8sOQzv9WKJFBaDwdnI43/ZLxJx9whH+VAuq0GrLIHAuf7cT+Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fSk1CVqv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gjSDBbix; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AKC82hw3407853
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:36:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e5mg+zvyUutw7UK0He3cdlBatNPtFBXUZumgkMxwM08=; b=fSk1CVqv037tFUj/
	VFpZc0eF4j5CV9ylPDSR7tB9pi6ooYmcO+kByxxi8lrx+PUC1TWCcysMc99qEKgP
	kG3QP8gUoGZLS4MfCcoyzCvh/86JC/HxEtL9dUkxP7X7pOsRLVFqo0jpOnLtQ58J
	KVMYXdEr2oc/2x/7PAqFcO9mRZMqC8UjjgibvPe+jWJ6O3ZpIMpt1cSznZFcXEoN
	IzjHMwaJ2qU9yByCCFpxv7fy8Z3D3Bj9YRb4cEJUaXsAZypBf7UzOvjjREU5hTFH
	G8DGzVWENfXM5SM7UIaTs8KrTXBUwsjrxlPClvaSBhITeFTAW9iz0YdXDkqQ/ie3
	cUSKuw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ahm8139rk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:36:49 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ede0bd2154so3381431cf.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 07:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763653009; x=1764257809; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e5mg+zvyUutw7UK0He3cdlBatNPtFBXUZumgkMxwM08=;
        b=gjSDBbixlJE+DkRoAU0RU9OKWzBfsppln2fnYU7opdXx9BSsFC56b+1LNE6sl/MOny
         4Gv7k7fyQKzntPrrEpmXjJM2YU4XxmMe8DTFsj6jcANtqxruHVT4EmJOd05coRtcj0pc
         EqS8LrloebHynDyipJL1kPnTNwSvi6F1ed8HX/OeNVNVLpCrB9rjucWkcKoLLSLdQjVJ
         KWzu61/drMOI9v+M3c+u0SSAceJSSOjSG+lsKAy9CNCAQHB7KZLHrH5V+Z4dgnnzo11E
         qWnzFqc2qc2r6bN4ULbuCbhADdeAV0IMOpi6ljCmKH/xkVlfVxVfsNrpVU4jq94SRiq0
         +tsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763653009; x=1764257809;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e5mg+zvyUutw7UK0He3cdlBatNPtFBXUZumgkMxwM08=;
        b=Bz3FZcO6P1Nj9xUs/xsmylv0JdR3NmuA+Ei7OYyJ/Od81DJKb7LrgBp7m9cgE5EeTq
         setJonW6sGM33vY7B3ESajlvn68q0v1HzuOFjJ+ElRXhry1YPDId5IkO4g+7/BS9zYv8
         V93oqLjclejvomfrYvUmSemNCmCfmdQYOuHutcV9lPKQnuodjifEOsKzFEQSoj3yvO7p
         ppQgo6e/N9Tr1OAANLhC85nwWpKB/+yyLOxpTjGKnRI80WwNj2VnSjCpUns94UkTK0CN
         oLaRXINP1mSDnpY8S7pkn7UknWpJ6WS2LUNnmS1xfjWV+Tf/p/5sP8zeAcVZOy7xWvbc
         VeIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQD4PfxJ36NMX1geVKlK650Sa1f5IPbHL7wqbvklt8Tq+B6Vq7ROgGyudKTqGdDeLhqobe4jEqozaH@vger.kernel.org
X-Gm-Message-State: AOJu0YwOKt8qYohTiOk6QypT4tqgdke6rQrfzYtXeqkrOPXsrVzSNgQl
	Z+NyS3sXARI5kSmkpx/ABlLJiWD6e5JPdDbVZQ9//M1DAJUI/KaDUV/asqBV0fg4QH1mtoLRU76
	XfLo6eAbXkk9wM834V9xtRh6e7cluYeRj4xiCsQ5dTGq/9j8tGxo3XFVSomy3NcdK
X-Gm-Gg: ASbGnctdArHsMOYzZ+ypu6OX1A7yrPJhs41pEiA8YhIN24uXVQDmE34poqzqI/TLK1F
	7gKNmPKmWuEfGBHG9Z8OxfT1PPRCPLFP30CNIe9ehg84bY0evAgdl1HHjBcWihSyme/Ew4+3LC6
	G4i5XHGBmNE2He0APickTNp83KZD1DvGlRk8oDjgQN2sgfvQ2+NNvue83yvCeGt1e6EHO/LrD2z
	Qdtc9jcLFyvIxrvrI2XFRKf0vlw7GBJRfrXqeWmsS/JZ8h/JhGGLzHTIA+RIXZGn78qImm2aA+4
	PpIPtHVoqUAClVsicumtCZPLEdODuzE61c5HDFuQ/WyyWLvcO2Rw3wrG0q1QC1oFSIHfJ4RNOy5
	Pms+dGF+7Adka2neX0tJOiZtGB3Nd/6RuXsYpwcpfUNmxGjqMO+hK4JgIm2BDi+bTriU=
X-Received: by 2002:ac8:598d:0:b0:4ee:87e:dedf with SMTP id d75a77b69052e-4ee4972fffamr31809701cf.8.1763653008647;
        Thu, 20 Nov 2025 07:36:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGnOTH8PO0trW0TWGHubhIETfCFdojXrEbc5Euw4j3mVrbNZgE0HWns168CycpWGBdRJs3oIw==
X-Received: by 2002:ac8:598d:0:b0:4ee:87e:dedf with SMTP id d75a77b69052e-4ee4972fffamr31809301cf.8.1763653008144;
        Thu, 20 Nov 2025 07:36:48 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6453642d267sm2272412a12.22.2025.11.20.07.36.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 07:36:47 -0800 (PST)
Message-ID: <57bab427-d8fd-490d-88f6-358b79367ed1@oss.qualcomm.com>
Date: Thu, 20 Nov 2025 16:36:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: x1e80100-vivobook-s15: add
 charge limit nvmem
To: Maud Spierings <maud_spierings@hotmail.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20251116-asus_usbc_dp-v2-0-cc8f51136c9f@hotmail.com>
 <20251116-asus_usbc_dp-v2-5-cc8f51136c9f@hotmail.com>
 <378c611b-f8c6-4f89-a3b3-6d8c22445e83@oss.qualcomm.com>
 <PR3P189MB1020E7393F72B285173137A2E3C9A@PR3P189MB1020.EURP189.PROD.OUTLOOK.COM>
 <ff773af3-d843-42ff-b4dc-e5a9d85c2285@oss.qualcomm.com>
 <PR3P189MB102003218DCCE87EEB69A0E4E3C9A@PR3P189MB1020.EURP189.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <PR3P189MB102003218DCCE87EEB69A0E4E3C9A@PR3P189MB1020.EURP189.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ct8wGUsSm0ajtSIXs2eDJPe8fAlYA4_f
X-Proofpoint-GUID: ct8wGUsSm0ajtSIXs2eDJPe8fAlYA4_f
X-Authority-Analysis: v=2.4 cv=SJ5PlevH c=1 sm=1 tr=0 ts=691f3591 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=69EAbJreAAAA:8 a=jBJ5OEMDLcug7rvSSDIA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDEwMyBTYWx0ZWRfX3zNe0Z3U4Oh5
 KEciUqmh6UlU3ekVy2+HDADe3HLskIjY+x2reaaUgPHvr2v0CBp8Ae3QiNHvNwr4IjpFfKfucsr
 9MUigTjcQ7WifKMg7TzRivnFnXSejemMjFp4fJRfTVL8jv+nPniTCEClyCTJc7vHpoP7qvyImAr
 mjf8AFymqRuCbAzAdHusRjyv2borM44kqg22GP07sSuBDlvJsHKTawPvmCQtqAakRRvYNjBf1c9
 3h9Oizx3uBk4wlUD9XFIP1LCiTI7sFIKi5u3J6qjbQt+Z0YaHAXf1S92VO7adfFyrlEq1ea2i/M
 XeTOQ3zK0TRtkxKArxy/+giefdSEmH9kS965WBRlmL18DDLinvzDlxSyN4pmgNhp9kTn0ga+ghf
 +24PuS1idmHl1gWuJkRf/Yg/7yxI/Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_05,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 adultscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511200103

On 11/17/25 4:44 PM, Maud Spierings wrote:
> On 11/17/25 16:35, Konrad Dybcio wrote:
>> On 11/17/25 3:13 PM, Maud Spierings wrote:
>>> Hi Konrad,
>>>
>>> On 11/17/25 13:59, Konrad Dybcio wrote:
>>>> On 11/16/25 11:52 AM, Maud Spierings via B4 Relay wrote:
>>>>> From: Maud Spierings <maud_spierings@hotmail.com>
>>>>>
>>>>> Add nvmem cells for getting charge control thresholds if they have
>>>>> been set previously.
>>>>>
>>>>> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
>>>>> ---
>>>>
>>>> Have you verified that e.g.
>>>>
>>>> connecting the charger
>>>> setting the charge threshold
>>>> rebooting to windows
>>>> rebooting to windows once more for good measure
>>>> rebooting to linux
>>>>
>>>> still has the settings persist?
>>>
>>> Hmm I have tried several things but I can't seem to get the values to stick. I the spmi-sdam driver is compiled in, I am not quite sure if I might be missing something.
>>
>> Hm, I wonder if Windows/UEFI overwrites these values or whether they're
>> used by something else..
>>
>> Can you set a threshold in windows and see if Linux can read back that
>> data?
> 
> the values in /sys/class/power_supply/jada-jada/ are zero when rebooting from Windows into Linux after enabling charge limitting in the Asus application.
> 
> I remember my old vivobook (x86) also forgot its settings each boot, but given the nvmem cells that should not be happing here I guess. It is odd that there seems to be no collision between Windows and Linux. Maybe the Windows mechanism is doing the old trick of writing it in there every boot?

Odd indeed.. Does it work if you reboot from Linux to Linux?

Konrad

