Return-Path: <devicetree+bounces-181473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E856AC7AEA
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 11:21:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2704C1C01FAB
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 09:21:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E247321C183;
	Thu, 29 May 2025 09:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gOWJ42jS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47911A55
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 09:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748510461; cv=none; b=LEwxN7K85uA8tUyKPeCv0XoeoNTAlhKAF7TfgdGAGZvh5icwxuBVxSlWj+6h2c4wm6EfAKMQVUk0mX005kGwLSsXxweZmehw7THmhhhbnVu2gJ3j3QFdjVlaB5XNmcSxKvcSpkVjCgn9/cgZhMe2JjN+NOMIYA9Kb8wddusY7fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748510461; c=relaxed/simple;
	bh=L4s52w8/kLW8XlEfsikn2Ky0fab9wuw9vsM2KIVpWIs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ewlQAC4ZCFJM/Q8iAdz+lI1x7LHvkeheco4kQSkrdsNANho8Q8JW7Kc8RGkLCfLwQxpDDPCI2WLW4nnymRzGp2QJBL7iYr8JzL5shOS1+Hz1lJ7l7qOmoHHSHbDO1u+ws8fPmOtnpkoT3HcgUmspq5NuGURum2z8HdAD9TtenVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gOWJ42jS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54T9A9Fi022931
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 09:20:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fK2aLxCi/pD0NxBchLLM+RpJQItFN6CcDN585z6c3/M=; b=gOWJ42jSinOMwcFO
	Mruay/q3M9GdMi2t4wCd/qHJDA4TIewJYssc7M9dOMZaCKCiB3AMN4tGQH9dYYDT
	NDvleWuF5SX9fXGdxvzegGcjJ49u8dWMNbiPOwViVVNMzEbhAPZyGvi2y/KRjz+Q
	NaXYpKzG7/9iWQk7Dr/lybMk8vXwYknxJHFYasFaJxrWWgkAbnpHFK1O3LJMp97P
	Mg6Xq0oWFZeYW5+4zCOGLTDw3E4/pzGITJmZeEfd3Y1Ikwv7dMdUu1QJws2ZvImH
	aCA3fSoKsXFgk7UXCI351Ew3pP4wamTRPs0AgSOTpZkcI7iQYHz7DA9WRZs2zOIA
	9E++Ew==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u3fqdbh7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 09:20:58 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7caef20a527so171010385a.3
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 02:20:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748510458; x=1749115258;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fK2aLxCi/pD0NxBchLLM+RpJQItFN6CcDN585z6c3/M=;
        b=nz6tmoeg5MhLvJl/xIwpHaegrTJ6VnTvJJHL1Cy/a20KidrsW9aSu9F0Yhb8Tbpet1
         AFIdqkkVDyDvZrmZz3zMfPdua8HGOoOh3J6flJjal4IlwTD6hDFYs4fpDLxQiFIhHhEI
         wSizP8GY5cxxmtU6XMZln10y9VhImMjEJ7HXlQo8j+h88w59FB2XZGBObMZfpM4Zc6Tc
         LtIulPqPWxoCPS59eFa3MhEZ+dAxKSVLDd4KRTqjefL3BZ4werecDv59Sh2WWpMIEO/R
         PRFU465QxnfrDqpXAoe5c9blwszH8ajN4Oxu/l6on1Khvl6OiRRl5dKdoEJ0f2E7g5oF
         sl/A==
X-Forwarded-Encrypted: i=1; AJvYcCW5I5xTgCGae+AlphUiPhQerPjcE1+/wH/ftZM9AGXYdtU03gRrsZ3w9Tj26GWln4NBztsZUxg2YLK5@vger.kernel.org
X-Gm-Message-State: AOJu0YwY1ZxWlYO7Gz0MLry7Mv9HHs3CxCQIfABO4s5VUnMNBk3f5K9z
	pP7TAAi+9pi17FTs3xYGPdFciwd0npVWkZaCwgZhK33Mm/aZxcvUVwE+yB+lEjR9wfpnJh0oCF1
	7aTmU0pRiJVSJJwt5bF4+MWBvbKFYumhcT4AgQt4HOs6YKjmO43eT98eh6wsVUeIo
X-Gm-Gg: ASbGncuzQPBKCyA+BDlvGjf73e23EdwZBA3+oc6ifxOQEQ/oS0bzV5iEpTBiXoqCvz0
	+kbo+WET67shgml3lJOkbeSqiX+eGOlMRK4gmPBE/TzjRy9S06YX7OaQ3NcRRgOcobjzKQvJlQs
	ia+g+y+ojxmIf5G9FxrUDQvZoLAfcwswzCxxpF3oz+gQSf6BnSkbbPagaRZff+Guoj/i+o3iR9f
	bV4NlRHXbe4ExfWmilLZmWPCPnFYUM3SSqkSq3bpZTmioj9yq+QwyGXqXv4eq4GLaVqLYDW9tRU
	RRw3r8bgknBLbQC2sQE1jkyV0YJCz1Y5hY/IwQ==
X-Received: by 2002:a05:620a:29cf:b0:7ce:e89c:7034 with SMTP id af79cd13be357-7ceecc47330mr3414854185a.54.1748510458176;
        Thu, 29 May 2025 02:20:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFARviQoTt32XuVus+Hg1NVtxvnQWat2/gBG0kwZldF4ALlWhMfHSvxPfbQYwCTS8VMYZNGFQ==
X-Received: by 2002:a05:620a:29cf:b0:7ce:e89c:7034 with SMTP id af79cd13be357-7ceecc47330mr3414852185a.54.1748510457805;
        Thu, 29 May 2025 02:20:57 -0700 (PDT)
Received: from [192.168.68.109] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3a4efe73ee0sm1390768f8f.46.2025.05.29.02.20.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 May 2025 02:20:57 -0700 (PDT)
Message-ID: <81e34c57-d2ed-466a-9ab0-8ea9e7ee437f@oss.qualcomm.com>
Date: Thu, 29 May 2025 10:20:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] ASoC: codecs: wcd93xx: Few simplifications of code
 and extend wcd939x
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250526-b4-asoc-wcd9395-vdd-px-v1-0-64d3cb60313b@linaro.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20250526-b4-asoc-wcd9395-vdd-px-v1-0-64d3cb60313b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: X3rOtt1C2E91ZunolB_QiTZjMJXUgs3s
X-Proofpoint-ORIG-GUID: X3rOtt1C2E91ZunolB_QiTZjMJXUgs3s
X-Authority-Analysis: v=2.4 cv=X8FSKHTe c=1 sm=1 tr=0 ts=683826fb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=PGxqiohRGJHFK62Qb5wA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI5MDA5MCBTYWx0ZWRfX2gjZNpd7ZLgc
 HHGOUxWdNGpa0CR7dvEP0oEvKmE35hmWtOGxLxj/HJ/4KdgLtFcsQpBR3QFxnAyZsX+rMOI8M90
 G8BNgKLQLsz5uYbkiKfjPRX623hdFSD+mmYBOU7xF6c01tYGkzAFQ5uHtXI7dOyPg5GnhCZp/E9
 OQLWGH4sYaVwQZdWLPyGihflyqIV5ED911iDTqCXblT7cTjmAt70aOr+IzNSgxTfuUBBRti9g2r
 5b8Cv/ncb1w5mwwX4xIDVfFFhCgXOxJU71mjJhTd7jUGnMVfoi4VEchrY4YcE0XrkoSNtdAlOFJ
 e3LvQPvfGxjI0IqA8PaFYTSp8THEoDhz1jak8t4COAZQCaY1s2hhy8yNrxR1kxADknMawnwqgyd
 QPNPg1xyQXpmYKoggnP5vNlC8m2KkmgWXlCTDZUZ6xClYUCiYFmJ/ni4ww7KBpWXrEnr4fpU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-29_04,2025-05-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 bulkscore=0 mlxlogscore=699
 mlxscore=0 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505290090



On 5/26/25 11:49 AM, Krzysztof Kozlowski wrote:
> Make the WCD93xx codec drivers simpler using
> devm_regulator_bulk_get_enable() and obtain missing VDD_PX supply on
> wcd939x.
> 
> Context depends on fixes:
> https://lore.kernel.org/r/20250526-b4-b4-asoc-wcd9395-vdd-px-fixes-v1-0-0b8a2993b7d3@linaro.org
> 

LGTM, thanks for the cleanup.


Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>


-Srini
> ---
> Krzysztof Kozlowski (6):
>       ASoC: codecs: wcd937x: Simplify with devm_regulator_bulk_get_enable()
>       ASoC: codecs: wcd938x: Simplify with devm_regulator_bulk_get_enable()
>       ASoC: codecs: wcd939x: Simplify with devm_regulator_bulk_get_enable()
>       ASoC: codecs: wcd939x: Simplify return from devm_gpiod_get() error
>       ASoC: dt-bindings: qcom,wcd939x: Document missing VDD_PX supply
>       ASoC: codecs: wcd939x: Add VDD_PX supply
> 
>  .../devicetree/bindings/sound/qcom,wcd939x.yaml    |  3 ++
>  sound/soc/codecs/wcd937x.c                         | 31 +++++----------
>  sound/soc/codecs/wcd937x.h                         |  1 -
>  sound/soc/codecs/wcd938x.c                         | 35 +++++------------
>  sound/soc/codecs/wcd939x.c                         | 45 +++++++---------------
>  5 files changed, 34 insertions(+), 81 deletions(-)
> ---
> base-commit: 3717d2adda1ad07b4ecf3bef144ee489cc1563a1
> change-id: 20250526-b4-asoc-wcd9395-vdd-px-ec173383bd02
> prerequisite-change-id: 20250526-b4-b4-asoc-wcd9395-vdd-px-fixes-0ce64398f9cc:v1
> prerequisite-patch-id: 104000f7254b9cc81be49af9ca584544718e52f1
> prerequisite-patch-id: 230fcd1b712c5a3199e7c9d8250e98e5d55c0a40
> prerequisite-patch-id: ecdbe74955eb7b710f72af1e3cf32ccac52890d5
> 
> Best regards,


