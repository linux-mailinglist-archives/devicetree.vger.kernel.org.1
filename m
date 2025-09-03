Return-Path: <devicetree+bounces-212214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A12B420A0
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:14:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E03593BA526
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BBFD30102C;
	Wed,  3 Sep 2025 13:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mrPTe9PE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9764942A80
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 13:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756905061; cv=none; b=iDy+yGWsmle5h/wbiSOmErSKDnAKvfn79MbbJcfr+xl6xSr7LzH4uUXU26ksv9lKNaHuVUX4qjQIRusMp9MR5fzsopBF7A3v6HMdgGaSb+dQm4BYhGRsMmWnuc1US838jZ/jfqMHBdsqu0IVPpcs0QpaIIPeKm8EGSBkLLvRbrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756905061; c=relaxed/simple;
	bh=W4WCBxQvaUYibDVSr+aUaJpoOgC+JIgx9GXzLqZgHeg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C/aXTysSUeqXvs/iwOZVa4fmGTXDX+hQq028rmQs+LuijAUYOh64lx1KVbLjCoZcSLE4KK9iDEyLBmkkq8bcjL99SxBp+aBhqRiggOUsR6n9g5ChC0Q/HrWEP86rFg0Jn+x9utpjg8F0KbIzj2ohJaDMz0ZuVNFQmVlXT97wbhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mrPTe9PE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BF5Io022948
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 13:10:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aY1HJAFmHMKDRbWr8GRd/t9G74v0xkZNHeYMb6/rGks=; b=mrPTe9PEaGy6DzLS
	9fSmuqz9PMF9rTCLTiGZvaaDz7w8eC3xYRiw082XJV6Z8hgbqtm3iyLPYpj5jbAB
	+jBryTIJF0X6NXQxDyIqCwSVbjYfnlbS/HTO7iGskh4ExGNbESoeaa375AHCrwNR
	R+bPCxAlD1oF6BBpGGC0R7DwLK6/5r9+qeXMrkg4YqBsdXgijQehkyVEPLM3GeHr
	RAj8nke/okN1tZJxcyxjydYBwNlFvLkcURlgn/4aYpYDUgzPhi7wGbNwsuGhp8DC
	Aezt6w6kxgxe5Zl5JWeMdLbiSfJYHv6zKdFniEoSUdPdUflCXu+FsSPipJb0ignV
	CAu0NQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ut2fknc9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 13:10:58 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b32eddd8a6so7628581cf.2
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 06:10:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756905057; x=1757509857;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aY1HJAFmHMKDRbWr8GRd/t9G74v0xkZNHeYMb6/rGks=;
        b=SWouZ3/2sNZSsRjH13C5rDLmemNNNnZkskqCADYM1yGj1Z6lRzOsxa4B6p/3l+IdNE
         pR8Z09QQ3MGXMZZIUrN8yjkNxoa5IOl1K2D5fNnUCQFXr5InlChQ8s9kJ7l/CnZ92HDk
         t83J1dWE+tVZRLuqAfaqK/ybOb/PWNqvAqh99XueN7LZfUb/mehzsiRHTjq0nwDU/jjR
         LjF3tV3ypzTB6rdSXdIzDQdICfjecQ6z6GYg8tQ5K/KYdbfE+TX6gPt3bxZJcBYYL7P3
         xlhXm6+ebTHiGGUrbEM4pwWh4LWMj5I/CsN7W+W9DuitZv1TE2cqNO05Pjr7Qd8ojHeE
         s2FQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1MeMLiW40/XJt++gj5l3qezMA/WP7uMeEkgDbZ6L6zxIaMBdck5q/UwZvk+iNVsAWmhzwVmpvxZVP@vger.kernel.org
X-Gm-Message-State: AOJu0Yxiwtjmd3AdmhwY6RjyH4GaAdcro/hVx5C8gFC2B2hKLoXL5G3H
	IUixB55pcuhaarwnFQRqhAjzSnUWaFyrQFNM4SQvCJYcRv2oU1RhQop6iogri02eG7QTEUsRjCo
	0pHuK3++CRP8kRDZo9yRQYv5w9vj1GKIK296cWA3zZ8QdB8vIakrBE8RgcfA4f6bs
X-Gm-Gg: ASbGnctUeuUWdivxq9cSa9js5kBRSOzJHEYA+YshfHuf+SRHWuQnnZf6BbL+PYkqZuc
	nw66t5HNHOwWJl4OTFLaOlCosi5YuYyc6VDSKLf748ig2raTHwmf/Maom1rII6CC5twVHzyC1cH
	HlbhTmSxu2guuKNzaQCO8niTYvaO41AK2wcWppUnZizgtVIagZQcN9cLLg7v29rOb3GFtrP9mcz
	RqBkk4lHkR7DIG2v2Fi5szFmJzuUG0RytA0NkAQoLl2fegboc0B04z42Td2982d01deuufEMfr/
	fwg6CQ6tUtosO8GX4OLy4XO5UK+cGAvhIPRE1Dk2wRCXSZRjihYAyKkthg0OKXsDqVjjzolXS8w
	I3yui32V59s2qSwOGnFykmw==
X-Received: by 2002:a05:622a:15d4:b0:4b2:d8e5:b6e3 with SMTP id d75a77b69052e-4b313dfd74dmr144315131cf.1.1756905057262;
        Wed, 03 Sep 2025 06:10:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlbX86OkDHQrtRozUIs6RfA1kZEBTsuPTQJYPGvCUDsHeOmLvCYNbgn6D4FeDhxE4MBDNULg==
X-Received: by 2002:a05:622a:15d4:b0:4b2:d8e5:b6e3 with SMTP id d75a77b69052e-4b313dfd74dmr144314681cf.1.1756905056546;
        Wed, 03 Sep 2025 06:10:56 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0474be5e99sm30772166b.94.2025.09.03.06.10.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 06:10:56 -0700 (PDT)
Message-ID: <99820dc6-942a-4aca-911e-cc68834e41f0@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 15:10:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: dt-bindings: qcom,sm8550-iris: Do not reference
 legacy venus properties
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250823155349.22344-2-krzysztof.kozlowski@linaro.org>
 <20250825113734.iekrgyvctamhb5y7@hu-mojha-hyd.qualcomm.com>
 <a3325bf1-2a3f-416a-ba2a-4fb1e9f85e61@linaro.org>
 <05d40a3b-cc13-b704-cac7-0ecbeea0e59d@quicinc.com>
 <46f5d11d-8bed-4d01-9151-35a24cdacfa5@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <46f5d11d-8bed-4d01-9151-35a24cdacfa5@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzOCBTYWx0ZWRfX/l9tbCUsNQN7
 6q4DEqV/BKYjRxRqI9a/Oz+8AxG5muRZ7oOYUY5aNE3iCeLwWqwYxCeJ7gB4+O8hdUnstSVMGIb
 Aj7uXoh8N+vDek8LgjAw7inFFo6lmaKDytHilX9dDno5vKSsYiJtohULK/DJM9WeelcSELhc1sB
 SuvX/IE1EiRrYkzQsGNgbKtEp/c1VOZEu4e0XjTS2Co8LFS59afmgiO3ukSbe6IFwUpuzQCD2uU
 eHf5ZrrpZFZ+S2i1JG9jcjIVLQ7tMyHczbGTGjGQYCJskmG6WWF5ixAZ9WOt9TTDlYBLuGjo1tq
 LyWij2jRHDWsP76OzL08t8vBMyLcVe4T6S+CrmuCd2vUsI9WYGrzuaWxEGuhwPNZAgMGrHaAerg
 5Zno3Rsg
X-Proofpoint-ORIG-GUID: 93Li7BV6jp4ufX2NBKXZnW-BnZOpHDOv
X-Proofpoint-GUID: 93Li7BV6jp4ufX2NBKXZnW-BnZOpHDOv
X-Authority-Analysis: v=2.4 cv=U7iSDfru c=1 sm=1 tr=0 ts=68b83e62 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=PnLdOiXTK5e15ukaaVEA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300038

On 8/28/25 3:57 PM, Krzysztof Kozlowski wrote:
> On 28/08/2025 15:49, Vikash Garodia wrote:
>>>>
>>>> Whether removing will not break any ABI as initial binding enables the IRIS
>>>> related code to use video-firmware, now we are removing it.
>>>> I believe, removing binding always break ABI ? or is it depend on driver
>>>> code not using it ?
>>>
>>> There is no single user of this, out of tree (I briefly checked) and
>>> in-tree, so there is no ABI impact. I am changing the documentation of
>>> the ABI, but there is no actual ABI break because impact is 0.
>>>
>>
>> My understanding here is that the interface "video-firmware" is already defined
>> in the binding. There could be possible out-of-tree users of it, might not be
> 
> There are no such.

I believe the confusion here comes from the requirement that was set out
for the iris driver to support existing (venus-supported) platforms without
binding alterations

Bindings for SM8550 Iris (as in, the hardware block) only came out with the
iris driver, so there was no legacy to support in this case

Konrad

