Return-Path: <devicetree+bounces-247362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CE23DCC74AB
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:18:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6F0343038787
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 11:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53F2B246781;
	Wed, 17 Dec 2025 11:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E1AsEiKU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MGhShjOZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC981DF73A
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765970211; cv=none; b=ZiKGkv/1kuyKIofe7UnUyuMgaNLzlw3PW7zjKukCvtV7MJV2xBJVAP+BrwFgk1AaCPrl3S2nyFdiAXLoQnwkTBpcEYHRLhcXeQuLZTT2M0iek3Jk19huhrGvtM0159BiY7ix8X9MSA+80BRGPn8EGChcfFUwpg83fnbAag2HnMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765970211; c=relaxed/simple;
	bh=97jh1+DGB+8ZP9B+kJFJ0uc122gSLxsFkUvGOpDuZnQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WjD3zwtkS3jwB4DtAlS0ChIRD6IwljDhwd2bXB5yIwWo9JGFTKhBSovHqm5KJAnQnpuNsMLqB5K1KkcllnGfp40f4icE3St9hCe1rLwZl2ZYe8AiFsIWNUGe10765bbZi2cHLqbbaZwAAjN5ugRxUgq4EOkQHiMh1K0Q4Yd8164=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E1AsEiKU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MGhShjOZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHAIBLo870381
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:16:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ef4cBsmmj/p3YrTk1A1dyIrhypQTgNGi2RduyXEvSFU=; b=E1AsEiKUF6Cmxpw/
	K/sqWfd4o0Gi7gQc17gRmabwYTch6TZX0dVWC7cQhMVreC+1yzROaSB6SwzfZpuk
	AyN/FUHX1NZlP/YPDXWsWf8vx+j40pnq0LiOdQXTlcsT0OjUOjGSHvpxAiBzBpJP
	5umERgs7kSxBauqh6WWT2akpdL7Vn85u6IwZ/nCfUz/MVFTZqU1pqfM6AQrl9xf8
	pLipNS+4RrI3YqFMUrQ/943tcharECAgEnYiZPAKTB2q87xhnirqeTIMma4b6QQq
	+ggnmCwSN0OPdhoH+pNc0CRtMB/5008PM913JfyRZYYUvQ5gsNLzzqiPBq2rPe6g
	tbh98w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3fj1t6vx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:16:49 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee07f794fcso16773251cf.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 03:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765970208; x=1766575008; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ef4cBsmmj/p3YrTk1A1dyIrhypQTgNGi2RduyXEvSFU=;
        b=MGhShjOZ2EaCoZUhLS7UZBhCR5cCcjoAk16uND0i0u/iS0FMMllMvi/TBHyMbfCYtK
         jx4OL/ndsrnn21f/xFE1NxjuldS+FmTpcLI2ODGTBDfeIkin6s5DP2ZN6ofFrcj6HKAw
         8ykt4i2kun1uuhzj+xV4jiVzb4Sr775tAL9m6gLygzyMKBWm7amOhN3tTLX7T3XQ6B4R
         xmIA5/9RqxEKhPA5yatrQd6ofhYyhIUUw31mo1+uTGGdbnJskEglvvY1XbHbROrfieGC
         oJVqNL5VQeQ0LsrbPYc0ZJ+l3fu49Dcy777gORqGGEwk4E2Ql5VhdzQzmVeuOhHDV6G5
         DJQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765970208; x=1766575008;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ef4cBsmmj/p3YrTk1A1dyIrhypQTgNGi2RduyXEvSFU=;
        b=bMehjuwEyb5ImU3LzkXg9XcBzAvbDNFY/gWxNmR0JqZGC+avBlnYbExs0zaHOdm2K/
         jAVezpBMIG+rNc6NCdebptX75JojnCvUwHcQYJCq19mUG1IwgyjdJzRALwluvYMPYdIq
         oS3LBUA7B74GJoGapfQ/t9buR82hqmP8PFhsIL0n1C9Gb39Ok23UfJtubBYHIXPgEu6G
         9E13mDvoudJwLo2uZSN69/ERQK9WmcVJXz+ahKALE/HTpd2itLGUjL3NjHIgWxosuzE7
         QOy43tMK2U8DmotHKozZ2JUh8kiMP+TYR6Y2WIZorSY7l8SFpM01ZbR9g8EtzcZf28AF
         RPIw==
X-Forwarded-Encrypted: i=1; AJvYcCUxZhR77oCq3WpsYlCe1OaLsjVYhkBdbiQn3l4hnc5ExQ1NGx9ak8Qrnn1cjnpp4ZfYH4YCkCXtLCdY@vger.kernel.org
X-Gm-Message-State: AOJu0YzwEQagp90TiVf1wR/DuH1vZGJ/uopsbaCWGZ9yO7KrniHvtD+x
	CAF+Rkn9Rs+EqwUU5u/RP3HVjUFSzbFBT+bcjf0xUUy1OxLg2w70ENINtCpNTC5pI/2Aft+tNmW
	qCUijchZo5cChIWkxvzJiXnHepGw/THvwkGsLEpLzFhmWvTLlDnQvM4O8nLKPqbZr
X-Gm-Gg: AY/fxX4cq5ZBe/W/SVmt+rSbGdC8xjGs4okdLAhUk1/CFB//brqTPMv4yi3zK1qIPm9
	lB24rAJNNfLHf6PKKIv50IBQFNqYidoFvKZgUaceF0thBY/ThKn7fvJZ7NHlLrU6ur7lACTaA0x
	bGjvr6atVlKLxricnNOy34ez1VGuM9ws4/5LJz6yrHCMnqBX7raJznOW09D0xIPb9J65rS/tzM+
	QI8LiyCyEhQMwmlwuBSoQDynC0mbYxTEpA0GjGJWOLYbWA5DctU4AZcqJlEwj970URyWuDT6yTX
	SIdxIXNOrFYw2R/KbDJ/WOnaSUcQyLia/0iZWONftwv1dUP4YhYIhxoNjlw6o2QaTJhmLtRqYs+
	PGyb56lW9g/XGEPuys4Jix8dUADTY73Bn/jpHIyWSlRQwZXeuYVrCcuTTtfa7AzEtDQ==
X-Received: by 2002:ac8:53d6:0:b0:4f1:d266:a4e0 with SMTP id d75a77b69052e-4f1d266a5b4mr133957981cf.0.1765970208362;
        Wed, 17 Dec 2025 03:16:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFLcg3vPXPNJecwbJnKnqsOhln9ODx1QjLLY13cxT0RJ38R+Cs12n+yv0Ts8JVmsgAl7FVp5Q==
X-Received: by 2002:ac8:53d6:0:b0:4f1:d266:a4e0 with SMTP id d75a77b69052e-4f1d266a5b4mr133957851cf.0.1765970207984;
        Wed, 17 Dec 2025 03:16:47 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7fe8a956a5sm576016166b.29.2025.12.17.03.16.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 03:16:47 -0800 (PST)
Message-ID: <3613881e-e7de-4476-9a58-d1f55d825988@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 12:16:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Adjust tsens thermal
 zone configuration
To: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, amit.kucheria@oss.qualcomm.com
References: <20251215105934.2428987-1-manaf.pallikunhi@oss.qualcomm.com>
 <zf5ztvnzaf6tplpjpytwbhktrebdnst2doybuubp6rjfj2fjs7@t2ma4ylx67gx>
 <46cc0587-8eb6-4638-ad04-c05dcd56718c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <46cc0587-8eb6-4638-ad04-c05dcd56718c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA4OSBTYWx0ZWRfX3ELhEL0c9PBV
 k/s/7XNk/xvlze1sCs8aB7uqH0kWqiWToZ0M4fU9ZBtMYL6DbnWtTNWg/TEv+1tuX+zx5y/MYvv
 ynikA+3HZowppIS/KJCXciQpoUzXUl/Gnk4XW0iq1XYHKqs/GfcMptCGLJXQi5SrzFZqpvq9BZJ
 fOUqmYpVPoL5fK7aHt7kKWkuyI4fsd1obL5F05zLn5wgH/0TAdsFO+Pa8if63ryqu1jlpZQ4GtD
 JCKrBdgWQGqUCk5xH5h/dSNEwFFyFaWitXSoQpPpCz2CDp01E/LMjA0jh7jBMOA4j3OvXm2Ed9A
 zZTNOebj0eH5qGYrXEi+uBswFf2L32bGhu33WbztJ2e8NIgYhPQ7yR1XpHoUdqGBAkTP0RiBUEq
 y1ke6FkLe+5ocr7XGTHYQfsf9QwEoQ==
X-Proofpoint-ORIG-GUID: fAU0YpMcjHpL8mHRh968Ctsm5TfxR1pE
X-Proofpoint-GUID: fAU0YpMcjHpL8mHRh968Ctsm5TfxR1pE
X-Authority-Analysis: v=2.4 cv=edgwvrEH c=1 sm=1 tr=0 ts=69429121 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OGjWj8McAAAA:8 a=4aZ0OJl62BenZO0QoR8A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=UYjydHh6ynBBc6_pBLvz:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 adultscore=0 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170089

On 12/16/25 8:31 AM, Manaf Meethalavalappu Pallikunhi wrote:
> Hi Dmitry,
> 
> 
> On 12/16/2025 1:21 AM, Dmitry Baryshkov wrote:
>> On Mon, Dec 15, 2025 at 04:29:34PM +0530, Manaf Meethalavalappu Pallikunhi wrote:
>>> The QCS6490 rb3gen2 board uses the same Qualcomm QCM6490 platform
>> Is there a difference between QCS6490 and QCM6490 or between QC[SM]6490
>> and SC7280?
> Difference is only for qcs6490-rb3gen2 (IOT ).

FYI

https://lpc.events/event/19/contributions/2245/

Konrad

