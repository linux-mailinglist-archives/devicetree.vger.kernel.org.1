Return-Path: <devicetree+bounces-239955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BB7C6B32D
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 19:25:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 59B9C28D63
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 18:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D576D3612F6;
	Tue, 18 Nov 2025 18:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MM6wPB9J";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OPtv9IMz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374C236C0B6
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 18:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763490320; cv=none; b=PoRX1Ujhrv/57bR5/Wuc1lqn+RWYeZUcDDQeE0YonZTZyaff90XN+qtlL1Wz3wK10XGbzc+NzNKOexLEIOkPevXk1oP2x9qZSnljQcTTRy4rKtn3pRAzLLp5eQYvr9n753IorVQCfLlA+MF1cuql7uIza7Z89EnnANaHQOXKloM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763490320; c=relaxed/simple;
	bh=0RYbcD1FC3g2+gh/OJvJ1oHXpXDBxnpRP8sZE6lHwSY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DXb6xPFwc4L7qPjlO9ksRskCULEgRsqVa1I4XiufnTz0OE2JnumGkg5/p5BcfHg7zzqY78NNkw+RAktmbFmDfndsBXvOzeXe5e4coDzxRS3FLdbdeEmuP6uub8EPnq4+2iLDGh1jWsWZnBFi/xKK3CgSY7cw6Jc1oOlo+DVeS+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MM6wPB9J; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OPtv9IMz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AICAr5E2802379
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 18:25:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OtFnw+ZUhvacU8hbef65l+oiIQGF74Z2kyVRPfFI1FM=; b=MM6wPB9JEdTpLuxp
	UALmBMNdKtpGm5EJtYQT80mx+HJa2e3Y9KB5fl85c2nQamsi+6L4vvi5125GQ2wt
	90+iz/Zo5HZWlAoQ1NpFf3Ted2t4ts53vV0sHUJumdcCsasS9FCd7Ncci4GgTPGw
	Y9Mag/GMhtY8CKs/ooY5WdJwZLn7ZstAhIlUeF0KteLF1pKsdFe18hM2kuXIt5YQ
	jGESaZKolI1SjW1wtsWv7ClTsC8TetDVe8D5npJCtSwJ25cYnkOydNW6OOAxtHQw
	OpCpPkI3mjcgLjIgrdOfl6dsRjaIJ4w/qdLXZchSSKb9sFV1e5M3Gjr+YlkGPeiC
	wdtOVw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agrk2154y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 18:25:18 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34378c914b4so12399675a91.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763490317; x=1764095117; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OtFnw+ZUhvacU8hbef65l+oiIQGF74Z2kyVRPfFI1FM=;
        b=OPtv9IMz2gTNGXLYI62Lno1LaSII94Jq8/TuA/W5n1e8W8KZesGKv2ouK4nz6GE30/
         akG1Muyx0ElJ7nrXHtW65pqqDYwJlYaZUla6I11XnzG0HMCES8UKQAP5huDF9ZOffH4Q
         y5QiyM6XpWgd8nigKRlgmBTuOUt1mVM/goWDwTBoUNbiH4y7gq35AU5pQFRNt13zMLTw
         vGb1oDbT50K8VbhQKHE+VAM8oBmLowMMoz2ZnDTjjAVAkdOPYt5icUMeMJQGeeZDBecI
         tXKhsJ3+F8KtDCmxYMNgUuOJe1UlXjduJX5k6IvNuwm7lI+k7cB+A4g5pw7fIiOesTjO
         5f4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763490317; x=1764095117;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OtFnw+ZUhvacU8hbef65l+oiIQGF74Z2kyVRPfFI1FM=;
        b=DTMxKUi83aFDop3iH31NE2KUYfb3mcpIVx6az6/XoRz3R6QLQATQHD5Yo/YHrBA3yH
         s9dvBqMvYJEMIsvsTlx04Ec7ztaLi747/cI8ejjTMQ1YyMOctOQVjP8zNsRGVC7A1i0X
         S80rK+ZB2t+joizU7uoVGp3DrFxJzMZA3BoMlI9h3pbf5oDV92NHh7mH0QTKYdLcJGdr
         oeaw5V5d1NXlZwoOSyxSqM29mqF2wwZ4PkOnh9+RHcptAAoC0hm4o2esG5BB/A6P52Ug
         SdJaxOlohAP3EP8LYlyY2IejB2hk2PL5hqssWV8zlU1Arv2164q2Rw6/YEsMcx2Sc/Zu
         c0rw==
X-Forwarded-Encrypted: i=1; AJvYcCUHhg6ITc/BylXjxZcCOlw5o6rG/AhllldIcLIKTC9YasjBPPfjzp33a5tGOb7M5mzjF9vCaKjwYodg@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+a9U69Oe5vg+ZhPdxzq43DQ7W/ZUQ+PKMt4h78wkTty7zUjwr
	x1iR1Cq1pC9JXTlGy4v2tKWqqt9AI5N+5c/Sdpe0qFC79W0zofpiT0+QrEQt/hp/kJiLN8QHaxp
	oKTNniEwLuSddDqZRJBte9D63lbhSoonpBA5GKhepUkyarVXnsofds4TzwoObDP3J
X-Gm-Gg: ASbGnct8FFkAf/w/QykklXFFN0rNw8DyQ7WwmuocYULHepRmcgRgCJJPPt1HO3cAptQ
	RK8+odpXNJFSFy6cgL+O18WAt29cAEARSYPdHSnHLwqs/Mc+ITP4FWcaMeXrWknw5j7vJcaaIWx
	HsmEj800ukwvtXd+mxjSlJVa8f0TgCHiO2RJg14LMltUlgED2z/8IzJscFMo4l6sRdcJBwhfo3D
	Q/0MyDCW4o8S5FLlTffjVfCipuggafj2QgqBfp0LPrSbjmRYz/Z17kYkxKb24zCK/rhOsl45ix2
	FGDHjF7kuagWQnOh2dDWZg7Xx8qhK1QJFY6MBGwOWyahEY9Y0zuuAi0JtyQv8nonMD5m7H7wE6n
	ESk3YVwxHqlPqkZ824fRw6ihjK2P/jwuRmHi5F3qUg8oBxqO9zrYhmQ+6nmOhfm0v
X-Received: by 2002:a17:90b:4c0d:b0:343:e2ba:e8be with SMTP id 98e67ed59e1d1-343f9eaddb1mr19030904a91.10.1763490317536;
        Tue, 18 Nov 2025 10:25:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHgkC4v9MbHD71suJ/U+iLegUV9Kt0QpttshW9z4L5Q9wXCA+ksAEvNaMfhbYTIREdqFuo+vw==
X-Received: by 2002:a17:90b:4c0d:b0:343:e2ba:e8be with SMTP id 98e67ed59e1d1-343f9eaddb1mr19030868a91.10.1763490317068;
        Tue, 18 Nov 2025 10:25:17 -0800 (PST)
Received: from [10.62.36.22] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-345bbfcd094sm155361a91.1.2025.11.18.10.25.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 10:25:16 -0800 (PST)
Message-ID: <37d0f89f-69be-45a7-90fa-347d6a3800bf@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 10:25:15 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/5] media: dt-bindings: Add CAMSS device for Kaanapali
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
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
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <bd899586-f714-4d2e-95e3-6abf124e75a4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=a6Q9NESF c=1 sm=1 tr=0 ts=691cba0e cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=YIc4kcsZVYj8qvzJPVMA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: LTsD5kYwA290bxGX_FOtPXm8pMckeeWg
X-Proofpoint-ORIG-GUID: LTsD5kYwA290bxGX_FOtPXm8pMckeeWg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDE0NyBTYWx0ZWRfX/MjQJ07QreNt
 Kb7HMJ+OvJbgILQcbJGiRw2mYduHu7uN9x/zeeQkKY5CCqB392/TkvtkRSvSrJlS6h65JvklpYi
 S7t2yYJorv3W/ovYFv7sv+koxTx5NG+b6pT64ryzIWHQKmAmkjiO1JVCObywUGi/YXxQhzBaiIm
 C+Os2FLIdQhMW9q9FArKEXqh7I6oc0xHXS9Bye0ap1LYXjlwWZPIGDp1jNxhbVYaEgYD5jhAb7T
 ciAEI0vRPv+gv4tGJ4/lYBDDOx5xPzdNrEruySF95ij5MYuPWfEURuregiaJoY1QWhLKDNwho74
 3Ia3EZcFV+gxCefm6tdYEYagfex9S/y58KX2Rh3too/L2C63D3j1Cm76A/Y61ycnjr0cmBlHQe3
 10qyEWQ2Bce05JYILxQrOJypa2CMrw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 adultscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180147


On 11/18/2025 7:00 AM, Bryan O'Donoghue wrote:
> On 14/11/2025 03:29, Hangxiang Ma wrote:
>> +                  <0x0 0x0900e000 0x0 0x1000>,
>
> Why aren't you starting @ 0x0900e000 ? seems to be omitting some of 
> the registers in the ICP block. Should start at +0xd000 not +0xe000 ?
>
>> +                  <0x0 0x0902e000 0x0 0x1000>,
>
> Same here.
Hi Bryan, HLOS does not have access to those registers. They are 
configured by the Hyp.
>
>> +                  <0x0 0x090d7000 0x0 0x20000>,
>> +                  <0x0 0x0904e000 0x0 0x1000>,
>> +                  <0x0 0x0904d000 0x0 0x1000>,
>> +                  <0x0 0x09057000 0x0 0x40000>,
>> +                  <0x0 0x09147000 0x0 0x580>,
>> +                  <0x0 0x09148000 0x0 0x580>,
>> +                  <0x0 0x09149000 0x0 0x580>,
>> +                  <0x0 0x0914a000 0x0 0x580>,
>> +                  <0x0 0x0914b000 0x0 0x580>,
>> +                  <0x0 0x093fd000 0x0 0x400>,
>> +                  <0x0 0x093fe000 0x0 0x400>,
>> +                  <0x0 0x093ff000 0x0 0x400>;
>
> The rest of these registers start at the defined block addresses in 
> the documentation.
>
> Unless there's a very good reason for that, please amend.
Sorry, is there an additional concern here or you were just pointing 
these as reference for the above?
>
> ---
> bod
>
Thanks,

Vijay.


