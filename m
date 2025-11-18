Return-Path: <devicetree+bounces-239956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 403C2C6B438
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 19:44:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 235874E1F09
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 18:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B1A22DC342;
	Tue, 18 Nov 2025 18:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F6IwqgP9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WjAuwQM2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A96232D9EEC
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 18:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763491456; cv=none; b=POBRPEdsaqA3a+2I4OoHEqvOT0PQlVfV/z/3H1MVhqDQOssYUGEbh+9nPtBN4p0Lx+eIWJdWmzbCbMqFOmDl1ltHsvHYo+A1Ll7Ivf6JOSC+p15k2L9dpXhR8/eGXw0QAH4i/vTHa7bePN3n29l84SUUcrhpxtC9vJ146CZa+t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763491456; c=relaxed/simple;
	bh=jOUJQ8PL8cIVunV5Nq3P/tsyL6RA7+GohwuxioCFr4I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WEi87AaScOMTBhAeAPpK/xX1HiEYC21ufDkU3zqkoA3M8RVS0yUU+HdM5NMNEXIgfhOkbZnvOfApXCmfQ5S0vCEoAzcVCVMfqERQQfXKXpYuMNcDOuTT4YDJpH0gC5XqZyGbyTTGOePQhqHv09EZxkf0Wb2of72uN50be9gVauE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F6IwqgP9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WjAuwQM2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AIG3NPC3176625
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 18:44:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Pv1o8OEkXFqohWwP9fv/QQFyhfzHqcKHifLmavfpcbg=; b=F6IwqgP9+lyQRgPq
	S8YPLggnmNZNavsyvPaQhWFrS4ANmkxJKYKKcSv69HdA635cc6m0+h+1/aYYJHLz
	gmA9qdnYrHepCUo0zT4w6UiJ3Gi6sKI+Rr52cRFUisfHMyScKYJQhfpBy9/Xmoob
	ralMJNk9/l3EE00SLz+0Pyz4ayDvAXULpuxsZNXY37F6sbnEEXDYcN3bPbSwdI0Y
	wkdkS8E+wSPxwU9elVhjJ1aGW+cS5e0L4ah61HGo1wC+W6tBW6zOZxbqr38wt95L
	fmK3/WIYpXrzM5ubWKkBgjH+miXM5Rvx7oBUoX0ljljuzJigCPWq105oHsgLdEQO
	WqmtrA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agv020j8a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 18:44:13 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88057e35c5bso16867516d6.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:44:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763491453; x=1764096253; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pv1o8OEkXFqohWwP9fv/QQFyhfzHqcKHifLmavfpcbg=;
        b=WjAuwQM2uPuLZzNB2fQIbZFyEfQyTD1zQdLCZGW/OecSg0o6zC3aLX/wNerCSibjfF
         QmHrJ5Jb6Jknn4iQS83G1KC+ShVxqj3iEFOiBOJZCvpso+lcMWtz01yOc0/JnOoBvEqy
         J4VW4RoWXkE6z/0AwjZDQKHx3C2MtIOuF1rZnU9y96RBlpCIcKqbyo6Yt40gG9xz68w/
         nKptqbBZXVLpjd9ID/4VDG8fjZy13G0M49XDeqV/WiQsK0T2CNNmoWzyVXoZ8VbICJ5Q
         eJMl5fgpbaQlVeSse5Lc0l2HFtMObfu2+26ipdlqz12AwWbRieGMz+/lF8ASn85/r5/0
         /g/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763491453; x=1764096253;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pv1o8OEkXFqohWwP9fv/QQFyhfzHqcKHifLmavfpcbg=;
        b=TrgOx3SdIOnBE/XUsApXsFgkVt/ukG4Ods74I08SIK73CO157v6+tJMI0RcTBYCw1R
         gTY0pBCGG3ogAJUMsSJYJgmeeJvhLtLEGEr9tu5K2o2UUW/mhj79YAaHpFcr4GjezYqn
         4y3PCHozqrms+Pb1YewM7E5/KYMy1k/CfGOm7lfxg4AWFDSn0SRNaeSdelhUDy+w/XGb
         dQ6q7///LngmxFW84Z8nNl6OQIpUdxv5STehmkb/3MHSp0SHcIW1ZXQDm66gTQJtjY3E
         c3rcpFELMU3WbJA5qKmUrcAvEghqrR7yN3JNs/iiz//t9gevlJqiiq9XhqnbWaGHFF+u
         qhTA==
X-Forwarded-Encrypted: i=1; AJvYcCXp6taI/nBhFtSYz6pBjnFc90LLUonw0pfx1yvkkICaMNT30fyA0enMdr74ZE4iwBKNCPs8+b/uO0rg@vger.kernel.org
X-Gm-Message-State: AOJu0Yxlun7CEFNYIBMIulTbRB9NlZrt1yVWgR2XqIXo/NcFxXz25r/c
	Fre5zG+YdghWIqFSw/LUrLJdvSxaESukOOMtBShjVYcoFNWl1Sc/wzaHyVQEUrVOKwB/xg/G3Fc
	wfwuEGE6/M++hYwf8yEh+3BZj+9WJBofdPjLlhqtrkNP0qs5UIe7xH6AZsRMeZSRm
X-Gm-Gg: ASbGnct2WcAVtvTD9KI7CbecgJ+BmeIpQ2vWPXSYU1NuyZ9wTBzdyHGtmmAt2yDS+dE
	7JsUcwzOD7io3HRKvbLOvdE8zBXfRsqvc5zZD8CBf76blcFE8z8OTtSUIXBgrChl+6jp+glfxqp
	uat/SRdLgarUDQAefABWnAGl3EXNwD9ygf8l/IklQUZlhtsssxBiZZdeE7+jjleLSSWWC3Q8dU/
	VTT+K43aVsKs5XjZNslqaek4jn2i6SMOcQ4LlG8QjqrgdAhbkGfB57ilSwL4lqpjdh5OtOQFY7S
	OVWM7mEi+zecn/CxBFPfM2V1xAHA9TFG4fPWZgBL8qq7FGRbDzkVZql6905ouvhXQ30OcKfFYZi
	ktod9eQMSIF+BsFLf8rjz1V9pDBh2bCo7VaH6kk1T0P6pDfzt1lBThYE/DMWJeTH7XUo=
X-Received: by 2002:a05:622a:1801:b0:4ee:1db1:a61d with SMTP id d75a77b69052e-4ee313e82f2mr40911261cf.3.1763491452964;
        Tue, 18 Nov 2025 10:44:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEIwui5GnGarvYrQ5avyscL/Z3HNJT6/IFHRa9bAAnF6MobSMqfihfQL5VLSyKjx8jFCUExnQ==
X-Received: by 2002:a05:622a:1801:b0:4ee:1db1:a61d with SMTP id d75a77b69052e-4ee313e82f2mr40910961cf.3.1763491452526;
        Tue, 18 Nov 2025 10:44:12 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fa81172sm1400674566b.15.2025.11.18.10.44.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 10:44:11 -0800 (PST)
Message-ID: <2d7ac7e8-ab69-44a6-b732-3657abf3a5a6@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 19:44:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/5] media: dt-bindings: Add CAMSS device for Kaanapali
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251113-add-support-for-camss-on-kaanapali-v6-0-1e6038785a8e@oss.qualcomm.com>
 <20251113-add-support-for-camss-on-kaanapali-v6-1-1e6038785a8e@oss.qualcomm.com>
 <bd899586-f714-4d2e-95e3-6abf124e75a4@linaro.org>
 <37d0f89f-69be-45a7-90fa-347d6a3800bf@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <37d0f89f-69be-45a7-90fa-347d6a3800bf@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: RIFhqeoWdTpD66EbDHK2TCmCYA5AHnZP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDE1MCBTYWx0ZWRfX3907KVV+kmIc
 X6edPY7IQHAiYycRk2Jgv5EJbctdcVIhdYTlxk8tn/fThHCnax90RHkcdTGFHhWA4ObltakwSVS
 CxGsOUd7x2UmxvIt+89yFrNaXYr5eNEr6BSunajURW4P0dp8ZR/z52tpr+ApSy3DW4pvb0Z1h/0
 i0XZctjDk4ml2b/HCbqnj8f5jh0Hd45Ci+T/fkOmHUcYtIckfWXcX+uuvYXlHtwIL0QvL1XP3vd
 t5gjSWOBIpoQiTuyYm2MIn1o3+wVo4feA3XmoUUHpknzRSugPszZcJtbiT+Ld5G0xuirC9k94yQ
 UWcdmjcDwwSd9L8ih6Ij7doOI1im7OnVPJVqkIraLZoY3SRH8KPzsyVtnQFennmB9A3MuhVy7hq
 3XcipDOQRVBlcPiHT2MArNtUCppk7w==
X-Authority-Analysis: v=2.4 cv=ad9sXBot c=1 sm=1 tr=0 ts=691cbe7d cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=nEpCki1jQKL9UMwIy64A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: RIFhqeoWdTpD66EbDHK2TCmCYA5AHnZP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 adultscore=0 malwarescore=0
 impostorscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180150

On 11/18/25 7:25 PM, Vijay Kumar Tumati wrote:
> 
> On 11/18/2025 7:00 AM, Bryan O'Donoghue wrote:
>> On 14/11/2025 03:29, Hangxiang Ma wrote:
>>> +                  <0x0 0x0900e000 0x0 0x1000>,
>>
>> Why aren't you starting @ 0x0900e000 ? seems to be omitting some of the registers in the ICP block. Should start at +0xd000 not +0xe000 ?
>>
>>> +                  <0x0 0x0902e000 0x0 0x1000>,
>>
>> Same here.
> Hi Bryan, HLOS does not have access to those registers. They are configured by the Hyp.

If that's hyp, please add them. We already have platforms without
Gunyah. Remember, bindings are defined once and for good and I wouldn't
call it impossible that someone would want to run that configuration on
Kaanapali some day

Konrad

