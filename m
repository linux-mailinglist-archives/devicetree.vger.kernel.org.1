Return-Path: <devicetree+bounces-235991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A45ADC3F021
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 09:45:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 534EE3A9597
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 08:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1053B2C08A8;
	Fri,  7 Nov 2025 08:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j9VKSGL5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a0+U0olH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B1223B616
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 08:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762505140; cv=none; b=Psvq/v8CzizhvkFQt83vNqp3J6oTV8zeBfrILJWLaoYQ45VXGctRhSjDvPQzKCTZAyqiWUlNI/dLup1cOvnZO5t1vJpuixErEdi/dWlEArUhexHM2p9EnhajU0p6LM07AWnxCEmIWlxfNSAQ+wIGmwTPBbOrE4LSDDF8YjQyjDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762505140; c=relaxed/simple;
	bh=RKIGS9KO0vrK2ZX9kbsgi19599kVH40TuOoD/FFjBG4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p4S14yDgv035NTy96f6wx32ooUVLV6kPVuoLrYbZ6RMlfap5ZiOcBoE/CZ7Tc/+mYcQEiPFsTy07cFKFrYo/2RCYbz6Em2CkFvshIM2ykRBu36HU0MzP863Fr+3xICeoLJz1NWAuJUazqcW2FK/eBN1VFLXqkdIeJ2AFb8WabcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j9VKSGL5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a0+U0olH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A74uNKn567434
	for <devicetree@vger.kernel.org>; Fri, 7 Nov 2025 08:45:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QgS5hwRfj2mxPLEmin/RQvyBPkehj/tTh/N9o3Q2CaE=; b=j9VKSGL5ldNhCJw0
	IDsem0Fzr4SZuyQvM/h+H2DD1w1AXbGzSR3pIfo38NsMeard3DiozlihvbgOA8mk
	E6iXrhmwPw+FvmJt6QIA33bRR//xSA+t/4krdqjLlTv+Ktsev+bV4kYprelpwNdF
	GRGMArQuSTUJWlqAla3WFLSuaGWvjhBrDvToC7CMXn0vN+J1xQZllcYOCXarce4g
	qBJRGRQBgZLrKak5prqU40NrNsbZbzxGb2YBYOhfRhU9EAFl2akC7pCJS1EFpvvT
	BJycTnz7G1RABrBE0q3f8B1E86f9WqOUQCb0IEp4y1Fp73PNUYDuiP/x9QZmB2cp
	h7FEuw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a905qj9ya-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 08:45:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b22253132cso18509285a.3
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762505137; x=1763109937; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QgS5hwRfj2mxPLEmin/RQvyBPkehj/tTh/N9o3Q2CaE=;
        b=a0+U0olH7GIHnJlp+4g5uJYpwWCGymNMG7SbKQI5P0kMuKs4/my0HpvE1c83mzS5rQ
         x5ONhtcKRrP8CE7MS0yam25PF61koPiwsdtg0LIOagSM1gKSg5IR18VZmOljeUaa8wdo
         IFCv5pkA+EVeoLUkFH4PxPghIV5O2lDnoFTtIX98j4YTZqpX2E+GcwvTC3Un6f06QAvT
         CZuZlumSfmoGMHLceyjxz8SvSP1IvstPBJ4EUOdwsIsobObv5HiQRXSc9u3mVRyASoo8
         nz0On+AkyHtOvCSPCgCs1Q7cr8JJ78TwOVM1PShW9K2JCrlZ5UjQa0unXCzYvjXIb1vS
         xdBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762505137; x=1763109937;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QgS5hwRfj2mxPLEmin/RQvyBPkehj/tTh/N9o3Q2CaE=;
        b=uwRvShPKCs7YSo2lZHVJFFw0Pl/Pkvd0B3Xcr4FoU00YsJ3obM3KG+3EiBoPQyQlLD
         pcCQtmbsGjKBSnpyZVFH58UP/dQ+XpQX41Hh2DpaPZIEhcXbtK2sW9rJbkoWCFzJETFT
         zk0UwyhcQoSZR2266o7t+QIukB+xNg77u2Wb6ID6mDGDZ5ncn1dKY22BgrS/08R47pnK
         6lRXPe9R/1k8HMSZrm1qz2JkN0hZYqBkr3gHXE0l5ri331k00zXMvuvvvntLwzIxF6EJ
         9SmC3AiF0TfG4m3LGQHT0zf5RJuhh7JnEreums5oWKmMf7qA+tPIAYiIdsCEpvgWA431
         N72A==
X-Gm-Message-State: AOJu0Yw1sDTP8Wv1Mas5yy7G5f8kqsRFlwI073mwI8qCoPzTCK+xFJOM
	4K2CtMh2wNlJy928+4md06Sw3mkFfYE3ijQGvv3H5QJ4klzhrcrGkZFAcNfRhri3RrrbFf0eKVn
	xl15qMMMqgISSJCPFn2f7Pnl+QSvsMBun51WEiCjMIpXQW0D3SHKLHu3ggIHXno53
X-Gm-Gg: ASbGncuYpBYZGwoV8FND+wLSNGlo4pkOPbmSg6+Fs9xbUO5H1aVPyMflz/KtjvnH0JZ
	3Hhxnrlt3KhO/1hru7SumfZ3qeeHoA136PE2eX4NG6q4PnZHwl5hYM1wSRz0qWwfd09BGuYgNgh
	zdr+5AL9xpmGrJocNbkgzsE5DWwS1yosLm3I26Rg8wwghfzo11Gmj68aIIYYunvwuZvwVTN2xWd
	/AJsmDncAdPzfJQRO8akn+w2vqqRj1oVrAVcIsK7quuEN6lAMhmZwFi35xGn4SueB1sRl2hQd/J
	prDbG7elocpCzUNOYdaR85QGS11mNDJmkFQUfAf3fmCWvdLqgv60tUEnYwLpORSZSdvgRFsf1Hx
	4F9bubjLco5gFBUW5kK5p7Q30y8QJplAT9RUHxiJdqdHKVE7oWPl4VdW4
X-Received: by 2002:a05:620a:29c6:b0:8b2:fea:21ad with SMTP id af79cd13be357-8b245325b1cmr200937685a.9.1762505136720;
        Fri, 07 Nov 2025 00:45:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFvBCF3YyaLzOcN+aoUwXSd+qKgBVW+y3iV9o0DDasJiaqAVotNnEsYQ0f5UYACwqcVlSpGpA==
X-Received: by 2002:a05:620a:29c6:b0:8b2:fea:21ad with SMTP id af79cd13be357-8b245325b1cmr200931685a.9.1762505135491;
        Fri, 07 Nov 2025 00:45:35 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97e563sm184419466b.41.2025.11.07.00.45.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 00:45:34 -0800 (PST)
Message-ID: <c7065cd8-9819-4af1-a346-4daaa4e306e9@oss.qualcomm.com>
Date: Fri, 7 Nov 2025 09:45:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/13] firmware: qcom: scm: Simplify with
 of_machine_device_match()
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Yangtao Li <tiny.windzz@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Thomas Gleixner
 <tglx@linutronix.de>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@tuxon.dev>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Hans de Goede <hansg@kernel.org>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-arm-msm@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20251106-b4-of-match-matchine-data-v1-0-d780ea1780c2@linaro.org>
 <20251106-b4-of-match-matchine-data-v1-7-d780ea1780c2@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251106-b4-of-match-matchine-data-v1-7-d780ea1780c2@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: pHVXwvGbbqxH-Hp760HsMpnSbTcU40Kw
X-Proofpoint-GUID: pHVXwvGbbqxH-Hp760HsMpnSbTcU40Kw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDA2OSBTYWx0ZWRfX5bku3DghrkuL
 o6K8tyqibwaWxZDRmMK/MWYoC8gxSnL0A2MtvlpCWcrKdKPNW9oMoEOJ6JvYbIOhTg3c+JGj3j6
 FYh7FiuhWstA39Ls9wLLfMwbbk3C6Dxx3zDNTVqrzAYrBEqvWEr5c8BL09+7SzhrOZ5Sga3oI2E
 jHXRXgYHqhJrwp6aF5uCm2eLeKlOQPVl91Xr24zzFzauQ8InBoN5zTdYdlvNCOriWk7cqWznq/y
 txojdJI79fb49tqLmsbb9Cn/vF7gT1JVtBhm5fFl/EUkd8z+h9JCBDUdWPBqW9H3nPJ+IQJ0i7/
 pbf4/mhwZuKrQr/ggT45IclD3aiPNFKtXG+iSpocpKCn+WTeoSMy7fsglgw2pk3xSO8yFCj6y6s
 bJBwGV6tzE4mJ2XRsE753tSFzkCk1g==
X-Authority-Analysis: v=2.4 cv=D6lK6/Rj c=1 sm=1 tr=0 ts=690db1b1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=TYptV6U4Xydj_hDeH6gA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511070069

On 11/6/25 8:07 PM, Krzysztof Kozlowski wrote:
> Replace open-coded getting root OF node and matching against it with
> new of_machine_device_match() helper.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

