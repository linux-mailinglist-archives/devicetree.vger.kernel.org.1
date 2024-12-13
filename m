Return-Path: <devicetree+bounces-130746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 442ED9F0CF1
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 14:07:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5450E1667F2
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 13:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E51241DFE23;
	Fri, 13 Dec 2024 13:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W6z5lwr7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F131DF744
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 13:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734095242; cv=none; b=GxXHh6p0PZnkzmQjRfX11+GhltgC7q0vbABYky2+pdpuc9NxCkYcoYes3xbsUPLLRkqKPouNbobJLxmnCMrPoQSn1NigB3Lg4nK4OC/wLbnftipguzfFuUFq+DuKwjbw80e9xPR3kjA4QFgcww44veomHi55NDJsLMHtR3cVJiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734095242; c=relaxed/simple;
	bh=w/6+ve9RzaPBaoheJI+Wc1iUmCYama3hSNzHBTU+6YU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HaNfsvRwMNSPxAmWglN9mXoexGHgMHddNgy/LucKmPZfmbqG3f6nMj7Nt92+eap9DGRuounXqba4fiiJGJL9hRydvR9xWalArqPJfB5hbpYqwba4+a5qWknrV5GVV5oCJZyxLVJPMyxKsE4Yoo71gF2wEcdjx0hbetKm0rKLh/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W6z5lwr7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BDA4FUp013312
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 13:07:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3kySfdDJgFxHc5Zd6RhdTyY2GR4vOj2W9Oallih6iSI=; b=W6z5lwr70bn6QE5J
	e8ndajbahMeBwuSoIu7LNgvjeQqgMmXcnqkY3vZRZpqyMwt+Y7lLCg/4VN2tabjp
	qWsTh0hCVLHbF2A9zV6GKpTfE0ZeVWw/sNukF00jLQh3FWdeb0TatZAr1Tj05OG4
	9t3Cr7VwSkWZ5XweRWxj+6dLIQhlzIhpEjCu8MbqWbLp88iHelYXdZpxqKFpjsuE
	Oo8gf410jc1f4+m/7fiyxqdyPw5UzDt7F+MZvFt/MSZVeU2zNQiqCPlU5zb2GfTT
	4q3vKck+w3tdZPPD+SY8BXPG97QFDZ4X+0xvZ4koYxRCoO7ucznKwmPFmrW4DyB6
	STMp9Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gjudgh18-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 13:07:20 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6f134dac1so22029585a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 05:07:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734095239; x=1734700039;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3kySfdDJgFxHc5Zd6RhdTyY2GR4vOj2W9Oallih6iSI=;
        b=ogIBH2f+EB4EHKH8A1fo/gEJkoTQh75BBgNtf7jXYcryqTUAHibPTeF4jso84OXMIY
         KJdzGPCHen7aEA5JSWjV6xg+GP/dR3pJGhNDfny6ogV01U64NLXoTYCz1EPSkpmBn76T
         D2IFiB52Fg2UtcB7McFKLTrN7mI0VtIbDtyRD+uisPwy9sJiX94+5Osz15yaSRnujTVi
         bjlxSCwATEoP8WBPsg9CYiiXrOJvuamw7RfGMmG7P+0m/fYhDXphQRpfg11HPdVZc+Wl
         bfMKvCoeS13ljG5MRbfrXVYSkqF9sNHLtEoYdbZSfQjrYT+0s582be3nkIELWKjZRLAF
         M4+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXdE9k+C6JeuW9vEvPKZLotPfmnibRho5qi2w9Jh1inlSEPACTVAbkC5EMoSev4RJy+cOWUPEewpomv@vger.kernel.org
X-Gm-Message-State: AOJu0YyRd3GhIgWCcTEtokOhCZ9FVwMqGJ5o3zH2ekPw+qD1Y2+T7UV6
	mRmj/SejJDXv8aGfFq36zcjxT/nVQGG3Yv7xr5Xa3UA0zQ3/LEW8OtEYYnwHRg6/Ntje5V4V1ku
	SGtbO8LuXeXcMcmrc6Edqbwyp7rpq4bKNgkWJm8uon+0DvUoGo/JEUF2YZ7tJ
X-Gm-Gg: ASbGncsDcgROn7776XIzVzkQv1KQaQ8ZC/1wsDNRMzNFhv7IV4gpuCaeVzgrT3bK6Y1
	x3ZmHtwDbjgNd5MmkIsm1whomwi9EsmQG/4EqG4IAgDNLVB2mPyDurHlImB1FPjvu2AuG2Vy49N
	r9EXyoeFyK3O7A5ih2NXWkgJwcoreP2J8JeU4gfCnU5MrmLBHYCWMGuKiTru2IountPxaVBmh0r
	gRTMfFKYFQKOKlp+uvZcA6rhYt3qIYxsKWJNVbO/mm7qAwbbON9aPO5E6Rhm0J9ab8eDnmrxPID
	rChS+VAxnYngwcEZIklMiKRqNh4+Kr4oIhOL
X-Received: by 2002:a05:620a:191c:b0:7b6:c405:b586 with SMTP id af79cd13be357-7b6fbf19210mr127491685a.8.1734095239272;
        Fri, 13 Dec 2024 05:07:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHU5KoMkP7VcnS5fuuhMe+i1h6GhGpqqGc1qtXrq/TyFLzkwl4mhODTyzWl98c/r5UKJXketg==
X-Received: by 2002:a05:620a:191c:b0:7b6:c405:b586 with SMTP id af79cd13be357-7b6fbf19210mr127490285a.8.1734095238895;
        Fri, 13 Dec 2024 05:07:18 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa67d6fcd3dsm778291366b.80.2024.12.13.05.07.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 05:07:18 -0800 (PST)
Message-ID: <511d5ff7-75d3-4c40-bc87-3087f308571b@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 14:07:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/3] arm64: dts: qcom: sdm845-db845c: add i2s playback
 support via LS1 connector
To: Alexey Klimov <alexey.klimov@linaro.org>, broonie@kernel.org,
        konradybcio@kernel.org, andersson@kernel.org,
        srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com, lgirdwood@gmail.com, perex@perex.cz, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241205023344.2232529-1-alexey.klimov@linaro.org>
 <20241205023344.2232529-4-alexey.klimov@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241205023344.2232529-4-alexey.klimov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: W9dGqTviIefqTIAxm-CS2zdlqLS86fUn
X-Proofpoint-ORIG-GUID: W9dGqTviIefqTIAxm-CS2zdlqLS86fUn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 phishscore=0 mlxlogscore=944 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130092

On 5.12.2024 3:33 AM, Alexey Klimov wrote:
> DB845c board (RB3 board) has i2s signals exported via the first low-speed
> connector and this is also required by 96boards specification. Enable
> playback support via this connector. Since this is specific only to DB845c
> board the pins configuration is also in this board-specific file only.
> 
> This playback output is fixed to 16bit, i2s format and 48 kHz and works
> with simple DACs.
> 
> It was verified with the following commands:
> amixer -c0 cset iface=MIXER,name='SEC_MI2S_RX Audio Mixer MultiMedia3' 1
> SDL_AUDIODRIVER="alsa" AUDIODEV="hw:0,2" ffplay -autoexit test.mp3
> 
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

