Return-Path: <devicetree+bounces-196459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F65B0576F
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 12:05:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 885A43A8D4E
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 10:05:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2A552550CF;
	Tue, 15 Jul 2025 10:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PhZVbFib"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C45231A30
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752573948; cv=none; b=Dv3Cz5eS1wnYlwQDQcBaBQ5LBaEw3PMgZGkRCvh/4iGUBdJyRwbBEpQ8+TU3jJTF814DnoJJ01B7okA5whUppFVd3yrYjzbuBqcdbSi7WsoyIfF14f85hNjeSuS0eBd2bYVfnQHUSFS5UrBVERL21Du5yhdi+EWTTQbyLQQZA24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752573948; c=relaxed/simple;
	bh=wcoEe8qNq7qcMF+Mu+Tw9LIFInIojyMTm7uEkxvUrFc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DKV2PgjvXaXULf6dZSU2xExY5j8Atqrw1ulDCB5fbA7n1+m/asZzr96XYEjkFW92qf2aNsA29VRQ+kmM0uk9RIl8p+JLtYMvgDZsqxaWLYF2XsqnQUaxUUWwOeiwrIGkEQx3QuYxx5lsnQnWtXSqLpwLkuRcVeLdGtzERmftbW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PhZVbFib; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F63g9d028095
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:05:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xoD2R1SjXv1eRy5P+7pX3hNP7MpiMaL2xSBXTAGGJ0Q=; b=PhZVbFibWdSZ4YVe
	YbQSqaTGDvqH5BPqQazTg/P9lVpuBGj9aKMGpykFRgccqyPrZzPRdYJfi/6tLASx
	kWH84gZjv8RF3T/qV4hW/rOjGjxikmIA3M/sEQlVmdqNf3zgIdbyvQKq949UdZxk
	FYGJBe7RB+R0O9Yf84zdbF2QCMH4YUszN5uahI3SV4yDYF3kQlrxdIxPQlsFQsDD
	qFgujS3FEGjJwvzopuDkSO/6oRq1jWbAJhvssah70ryvzs5y3+LbWGwATj3AA8/F
	TeauzW/QnlulkSuswpW0B6E8XthReHj83aLiRam4uWlGbC/j2oKT2s+g1P0sVRN2
	BqEUQg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5drjjqa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:05:46 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7dfeacb6dbdso22353685a.2
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 03:05:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752573945; x=1753178745;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xoD2R1SjXv1eRy5P+7pX3hNP7MpiMaL2xSBXTAGGJ0Q=;
        b=FOmFWd1MCnd5fp2Ghz1kgvTdIXtaEp3g2R047OeMpHXacKLGtOW+ayuuRwIqZLUXcw
         5aOSYgTm7P3WSleVbAkiSxc1yvZ2ucAz1ZFrgaMumSniV8bUJzWFR7vCjn0Df0BG81eu
         bnLfc2c4MPWP7LkZB3Q8+fMeviEp+uiBecGyLWinaLY0e+D8eoCwGzQd1hNopK+qr2lk
         vfaa1yW3WATMgc+nwBOAV0CEKdywdLtUvlg9LDbH1vZHL76QAqRLiQh3+F81ff2BE+f1
         TvwlcykKnAv7q4lOqSsL+agg1HyJXRa/ZdDQoRwPlPW0jdgEa8iSdkSJTqXtzmkNchcS
         lXRA==
X-Forwarded-Encrypted: i=1; AJvYcCXLQhyGMHMfV0HfhOAO8sv/vJXTIaFrZCYJDbrpVuVsZ8lIkE/fSL+9XcB4cnps0cAIFVgmr31Q268Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7g2hJgR+gfJfEuKOwdLIRhvFLwZb2IuJw95V9uAiO1y5yYBc2
	1HK2nqEdvYPLADizpV99am3fjZDO2aHOfOBTVJIooi9x7pnnHdOqCvDorq3x8kt8DUoFL9c8Mbe
	iVC9zmRrhs7kAtEe2apqppbkmjA+cCubc3TWA4rsJl255UDcuMvVdH8ShxvHKAYad
X-Gm-Gg: ASbGnct2sLEqrl/Ul9uB0W6m4voLZAwn37Vv4cubBT4wR/OEyUU9xxZeOUrNiHqI5mx
	y/VxZsMuCrupk3mQeDDR8KDK5xrjODxbxVW5ISvuc1+7vUgiTTkgGjTxYA4afrQyq9PfVfzN4Uv
	w7Im6GrTuAIxLiCYSuZw52tnKVCupIbt1Y9udxwPp1pp+ExwPjMU1g/TaUO2kzxW32566M5wbaj
	IuK3egMEUW8cM8VOyY64NpZW/tYWNB2PW/gTs1j8jRC1OYoUNPh+UVczwD2iQNe2Jn4luRrmzK6
	tzK0ij4duO0wRM92d8XIQqbPSGl1zMlUrKt8zbjf5yWThLOXybXskVW1aj2wskIMlSLshjZC4le
	S9qHHkYqO5xMISGzL9eC4
X-Received: by 2002:a05:620a:17a0:b0:7e3:3a8f:ab1d with SMTP id af79cd13be357-7e33c7321c7mr41632185a.4.1752573945328;
        Tue, 15 Jul 2025 03:05:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGfltLcnZ3DJsRe4H0bNNgmV8fu/FyMBl4oio/EqiA77AbLronXmD8m8JQ1m83ZrCm3MBiZEg==
X-Received: by 2002:a05:620a:17a0:b0:7e3:3a8f:ab1d with SMTP id af79cd13be357-7e33c7321c7mr41629585a.4.1752573944895;
        Tue, 15 Jul 2025 03:05:44 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e82df311sm962103666b.165.2025.07.15.03.05.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 03:05:44 -0700 (PDT)
Message-ID: <8b54d58d-1b0f-43ec-912a-62edff10922e@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 12:05:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sdm670-google-sargo: add imx355
 front camera
To: Richard Acayan <mailingradian@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>
References: <20250714210227.714841-6-mailingradian@gmail.com>
 <20250714210227.714841-10-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250714210227.714841-10-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: _b_raIM15gFFXaQXos3aRz49SCO3rLYk
X-Authority-Analysis: v=2.4 cv=D4xHKuRj c=1 sm=1 tr=0 ts=687627fa cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=QX4gbG5DAAAA:8 a=pGLkceISAAAA:8
 a=uTbtQnSn72Kwyy-wytUA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: _b_raIM15gFFXaQXos3aRz49SCO3rLYk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDA5MSBTYWx0ZWRfX7DnvdpuEgM8J
 UGhXy0pqGKfNCt9pI94roq421xAH6kPqsyhrsLRaoskWsh+xziHlUZmlKybsAQVqlawdh94g/Ks
 QmpxlAyqnampXwX3sGvJ/iDBJaJB4dq6zsESwTWEX9Sl4Hh+rSOq8BkZRUP0umL7MD5cJALbPTi
 8TRLLuZqJW7BkybAmk4lGMYJVxHJgh0JJHSqjxShAAXCdQaY9xg9631iqOP4ehR6bhiqq8a91iL
 uA4ggge4K4fOc6r7LtpdYjMsUYUcGF9/bFHWOiRCT+EuXzH4cVJ1a4DKXxLzqsHGBGg1vmWMoiK
 vzMdOMr4JkHiQXQSGH88bU3GzsvWf6+qeh2ccl0aoalEIm2sraPzm54Cb0+SM6IHqcG2pj2SA4C
 ZvfE/uML4E9Zuo67n6Xr6/mHKyBOSbNdaZTyYmTfNmjtMWf7CsIgpzdDy/x9INwPIcTx2m5x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-15_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=732 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150091

On 7/14/25 11:02 PM, Richard Acayan wrote:
> The Sony IMX355 is the front camera on the Pixel 3a, mounted in portrait
> mode. It is connected to CSIPHY1 and CCI I2C1, and uses MCLK2. Add
> support for it.
> 
> Co-developed-by: Robert Mader <robert.mader@collabora.com>
> Signed-off-by: Robert Mader <robert.mader@collabora.com>
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---


> +&pm660_gpios {
> +	cam_vio_pin: cam-vio-state {
> +		pins = "gpio13";
> +		function = "normal";
> +		power-source = <PM8941_GPIO_VPH>;

This define is actually specific to PM8941.. I would assume that 0
is generally bound to VPH_PWR, but eeh, this is not what you want

Konrad

