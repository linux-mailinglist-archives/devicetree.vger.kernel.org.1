Return-Path: <devicetree+bounces-249353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4B7CDB3F3
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 04:21:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D83030764AB
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 03:18:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 661333101A7;
	Wed, 24 Dec 2025 03:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EjpL9JC4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RJa6W/Jv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0A430EF8B
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 03:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766546300; cv=none; b=tZKTj8XhK29ABip/THl3ClXYZ8KDgE76jID2x6C7t2ZgMGyz/mXfnJIMW2/gj718IzEQbJu9LeMrAvFoPqBtDC+epCnubWAf8HIy023CWnzKFm9t2H7mU5YyPax3Y4HHwiWCZn09xL4bln/f9dMYGbKdg/X/33U1IGZBzDWq2V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766546300; c=relaxed/simple;
	bh=vzkejSaCXJO6srXI9a9a3T5MG3aVvCRbaz7MNxvZ458=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nJYtlN+MZVToHR5dI3u/ykVMTs1R/RaDu8z4815gADoD8ctPtEGH4dgESOipgQhMit5RDJj+iBkXCZX0ac+JzbH5dZTYJeM6N+h30vcCYfBbwHmZp2jIUpAEPCCC2oU+BJm3qOFmwb7qGG3zUt/EGGNZAICnGQXG2W1BKdkk4F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EjpL9JC4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RJa6W/Jv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO17ZE01597843
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 03:18:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aaaT/MtsLg9/MTGw8soOQU5G/mHt56DgZFZKOaqo0YQ=; b=EjpL9JC4Z1HIzt2/
	McLlhVTR11aGdIhMqEZbB2qoO5m1NGLs/g81ipH0/oaktbZi7aiqeE4wS6J5h4Ki
	o/Xdv+c+o1wTwFh2QPJopZY/9FFAwHE+3R2kOz09XFdNfuo55tZJv+R5WbWrAdBD
	binDNVs59DND9iErwDU77actiKlWgs25uReyQgrRQ0pZM3rVI4EXKBwYxceDnWDs
	ikJMhsjAyxle0/wIqUNjpf/D5ROx9x6/h/Woo2KWQrqbdrgjEQChey+f5w3P0H04
	Xnu82BWmGfAMHbjeiAWtPuPY5ui+o74PCYraYoajhdYf8214gljUwYf4XpEPtoMg
	9fBeRQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b8683g918-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 03:18:12 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88a2cff375bso119901236d6.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766546291; x=1767151091; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aaaT/MtsLg9/MTGw8soOQU5G/mHt56DgZFZKOaqo0YQ=;
        b=RJa6W/JvD7I5IbzTIlg1n9BIICtfM/v/ai988eTtvNIHOxVN+07E5ayHPtUPW2ck4e
         ipDXGteFz4DfauseXnYPwT2TvJNYwUSRld0gEbu59YZtzygMdjJYboS525LSGl8gPJwy
         WuwgesnS4+c5T3yhnkuSCVhUtyB6w+rE/65pY4zy3QDPz1S1N0gsCwdMqo8Is+v1+mYn
         cAZdZtRErJw4TO6Yuljsrvjw2o/vE/hqGTLfqwnXdpwpXBSQfBG2y8JlMenLGYzjV8TQ
         BF2GQUGk7GRNf3IOOq9qorl5z8NJLtTaFvtxn28Z7/d7eCY0Y9gKNr+yY5XyjnI+Hut1
         BoPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766546291; x=1767151091;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aaaT/MtsLg9/MTGw8soOQU5G/mHt56DgZFZKOaqo0YQ=;
        b=qWsWI/AejUfZm8sKp1xSoQbT0nqaZ84VOAl+X4RzNnHleTz43gghWm4P2x5vYy8Rwr
         AItj72+jhdxUhzjp8hXEBqP/oYykwVcvC7ik47XvWMm+mEbzbAIsKeVci9Um4jQlqry9
         CMkQ91+wbi7DWR3vqe+qrErTpHpsWMQs5QX0WSOtSh4/Tbq+PrR1r7VApedHhIH401Mi
         YKO2oy8WtDWA+NZDzrPmHlGY9TJbpi3ThhC4KvuAAiTS0A0dn2zCSXNew0x32+jIjDYz
         kD2nC+ku/uuzPXjjfJcZhwfn4H54mGmVhPxNLrG7wj7KaFLs6MJO0S5/DREZli6lYmLP
         c8og==
X-Forwarded-Encrypted: i=1; AJvYcCVE6F2iZYeF7InRRSSVFeCPwCDNycmTITDLrKfOnO6HhouZ3pez8UEBDvpfoPi8L1QBnmzrPb8yStzK@vger.kernel.org
X-Gm-Message-State: AOJu0YyW8MrGYvt1DJ0wYdqmyw71tvSXjnKt2QpdGGoOeH32qMxREdOC
	RsIqqc62ueVjELxffBmSSETpYSaFcCAFbsZHY1p37uw4ySZ7uVZ4CPLqU+cgznoW1OodDE+Si6X
	StPSghyjSv56DArt+QTq/9ohBQvTgdTCiwJNYI/ZLTloLnI4rpzBqz6JQ0mVo2VPZ
X-Gm-Gg: AY/fxX6Ho74lSQjCez5OFJf6+FfZe2nATBk/ekEUqQoIcgkzGlk4NQqffXzjkuNBfwY
	/KJgiji2H0ux5geEiLssAnRDuvJ+qSseX7YA2N3TMtWeFZa833VqFfn0i7bxQLcGTGtBQKi7iQp
	LuC1GokUk1+NgtYLOVknTpqm5HHaJ8aBXniwG1petPstiQHGYS+OBkmgNQmYywaxRqifhWpS69U
	vBjHOAfpbnYNXg4kN0XC9dKd3VYaPJ7Yw9BGFbxWK7cFz8N4EDcC+mMFr9pngHuJ6j50H7MOcE0
	sb3uLXoytX7JKfcAsFwrujuT1EuAr+rOqd7k9Lt6GRvxq6e2Sp+EXT81OG1UhN9MSDNChKmAD6A
	yrli7uF+86V7o2nujL1E7b+CrjC0DYkLaxht+3sfB/q46BN5TjkvZ6fvPFS87aJfJLyJv86nZ7Q
	==
X-Received: by 2002:a05:6214:178b:b0:888:24a3:a9f8 with SMTP id 6a1803df08f44-88d8166a0e7mr225479646d6.7.1766546291426;
        Tue, 23 Dec 2025 19:18:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF8XqDvxhmkUIG4JdHxx/10hJu4RbVFpkdEr60MvodJNZ0cdFzM17vLG27WZrE1k5cxRLcipQ==
X-Received: by 2002:a05:6214:178b:b0:888:24a3:a9f8 with SMTP id 6a1803df08f44-88d8166a0e7mr225479406d6.7.1766546290853;
        Tue, 23 Dec 2025 19:18:10 -0800 (PST)
Received: from [10.111.161.169] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d9a83f6f3sm121631886d6.55.2025.12.23.19.18.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 19:18:10 -0800 (PST)
Message-ID: <c6174a0a-9a76-4284-8675-bb5ca78a7b35@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 11:18:02 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] media: dt-bindings: Add qcom,sm6150-camss
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251222-sm6150-camss-v2-0-df8469a8343a@oss.qualcomm.com>
 <20251222-sm6150-camss-v2-1-df8469a8343a@oss.qualcomm.com>
 <20251223-pompous-inescapable-sponge-3fc9f0@quoll>
Content-Language: en-US
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <20251223-pompous-inescapable-sponge-3fc9f0@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: fWhWkAY3CdH5QfzTa9v9EMLtdeoMtGqQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAyNCBTYWx0ZWRfX4bbVw6K0xLWV
 Yd9innew4wqboglMjhGqkcVZbDR8+Ib6JS/JudyIhVtKQd75kZQawHjr7B1+uVfWGwE9XVSxVa8
 OJnGaJrOb4Ag80e9nq8072oa2X5Baq+g2JQ6VauShQBIF7uXM8Z+Tw+1GLQJPcZLssarEQD4Mim
 f+LWLPtKYnOqKr5H/zYqWJPZbcDEX8uzTK0x4tMh+c9inL0dPrmYD+8dbVmmuN0OuYIp7DEW7Z0
 3IxfkCA2nCfcDe/MMB9igypPSsQ/tZ0Z10U3uB11qpxAXLndhM0fRCOebXpuA3fz7doK1iJONgM
 gtD6YbRvHH7jhDh9dp8W1EdSOAluf9xSnrFX/Vcuf/e3pHEl3d5MuRHNhymJFUNPzDxjRM/uRrp
 wP9uw0jW8l0XfdxzrkhNO1ecICX1CUJi9pCV2GFNn6/lNfMZkA+Y7C+m6FVutrY3yvqDnihbayC
 LMlmXKChg1z7xABaitA==
X-Authority-Analysis: v=2.4 cv=HqV72kTS c=1 sm=1 tr=0 ts=694b5b74 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=UyieoiCksbjufx2AMFMA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: fWhWkAY3CdH5QfzTa9v9EMLtdeoMtGqQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_01,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240024



On 12/23/2025 9:38 PM, Krzysztof Kozlowski wrote:
> On Mon, Dec 22, 2025 at 04:28:39PM +0800, Wenmeng Liu wrote:
>> +  interconnects:
>> +    maxItems: 4
>> +
>> +  interconnect-names:
>> +    items:
>> +      - const: ahb
>> +      - const: hf0_mnoc
>> +      - const: hf1_mnoc
> 
> Same comments as before, do not invent names.

<&mmss_noc MASTER_CAMNOC_HF0 QCOM_ICC_TAG_ALWAYS
&mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
<&mmss_noc MASTER_CAMNOC_HF1 QCOM_ICC_TAG_ALWAYS
&mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,

This platform(qcs615) is different from others. It has two types of sf, 
namely sf0 and sf1.
The same as it is:
sc7180 sc8180x sdm670 sdm845 sm8150
Do you have any suggestions about this?

> 
> I finish review here and ignore the rest. You did not respond to
> previous comments and I do not see any improvements.

I'm sorry about this. However, the previous comments did not clearly 
point out the problem.

> Also, way you send patches makes it difficult for us, so I see no reason
> why it should be my task to try to decipher all this.
> 
> b4 diff '20251222-sm6150-camss-v2-1-df8469a8343a@oss.qualcomm.com'
> Checking for older revisions
> Grabbing search results from lore.kernel.org
> ---
> Analyzing 5 messages in the thread
> Could not find lower series to compare against.

--in-reply-to, will pay attention in the next version.

Thanks,Wenmeng


