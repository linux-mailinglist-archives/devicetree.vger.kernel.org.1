Return-Path: <devicetree+bounces-212114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E600B41D44
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:45:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43098207AB7
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3BD72F83D4;
	Wed,  3 Sep 2025 11:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XG/cnvoE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1190828137D
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 11:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756899906; cv=none; b=kg+JwL2FyPLQiVeC/YfNaWUnsx94RbfdBiUgkfJhzB/mk7ZknbCRrVHW35we3otoHbs/HiPPiTMbATYpxFdk0JWm451pPrhfkk5CENVp45RTmOW2rMOzaaV+UYaE6irzMenV3V4LVHxHI/AJO86RJ69ZDPIHPKBtKbYGkFvq/6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756899906; c=relaxed/simple;
	bh=ZFslkzkzaO3P6RbCdZ+X+S96dhqu96FyFhmeWdrTj9s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ltkfh/Fm8Qf7eL65lZp40r6aMD4GiKN/2sWkKQinH0H9XHWGNmHrtV291WQvqqkw4lOVkKL0onR8uFjRvf/2T+Ywvv8T2+gJwjjJ1fCRt3RBQq8bF1xznd1ycXP8ckbDPHmpMvjgQZ7uN7uRxNKEguZ9m8LKX10R7MbQaMgXeUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XG/cnvoE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BEqZ2010811
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 11:45:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8Jvu4Jo+Bcxn48m/sFZ4fPyHv1yzkWG77RqatHLjJQY=; b=XG/cnvoEHIXbnjYz
	At85xcBTmQvHSJkXbLBmeazu3gEoWD29R/XJ5+ljMYfrRhnA50NVc3afFEiRyB1F
	gjQw19lxa0+DtHiQGeVdB3J+poF+v4gRR5gfnyIg9I83ht8cP1htZHVIf2xvaqbq
	0KY3dorzCg+5rLhsf7AVbREdpQCu7QHu5GTVjfqrqOnhl927m2jxn0CJYlbmRJfs
	0k+YKJoM7ymZOspOE8BeRwqrHGLS9P5yW3GOpVB16BsatTvOMCga1SfQ8Sagmuzl
	3XHmXMAKhj54DJYp1rFZpZCzfyimbKeypOKi1aEwjLoiToBS9NOD/Ea1FFYVUkmM
	qA4bXw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjke90-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 11:45:03 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b32eddd8a6so7458401cf.2
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 04:45:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756899903; x=1757504703;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8Jvu4Jo+Bcxn48m/sFZ4fPyHv1yzkWG77RqatHLjJQY=;
        b=qeRVMpYMlV9v3V9GsFjD4a36LYQPzpnNle+Zci9G0pNMJAhOkwqGiaD8QVJ2tKP7Su
         SRHI1bDkDXDujV7yr6/8oAmZSME4QNscoZCmqBMqaHEXdYoV2r+uh42iAaTcnmgtiD6s
         BJYVz7BnMwSGd6xpCe0OFWRIt09RB4psJT3Y/uHXaizqmXGJALdhrcQ0uBZ6EGw+yxuJ
         ssQtoqcSxS00OZjwuJFyLDucBibpxkhqltGJBqnu0upFJCOMmBEprUFdJvfKF52xboA7
         oMgMJQnn7Z9clmkXz6U9vPINdKoe5xBJbdzxycmqsbGyboAwdwt5pQyhWcd/7HOSbduo
         YyBg==
X-Forwarded-Encrypted: i=1; AJvYcCWYuuJokbWH2z5lHHY7+HO6YHRcM7qCW29eZwU39VnXhEaTkHBWuWUUPRpVMYIRwzBwzdNUyrEPK/iE@vger.kernel.org
X-Gm-Message-State: AOJu0Yyzr4DgtjAcbCOwKBzYYf9mH20obfVGxuBzQbdd5T1mzbC3Dccd
	jvVS1yGW99UkYAAHYtWiHR50nS0QESrCQFSPrcqCMg0xd7Kxty+NSge6MpBXh3H+PCpsRzG+SGp
	ksl/sOu3OIzoMNPq8jrFF0b3mn1Oa/nvY/60aJdI+8BjqmSC9ag94A7Kloi8uKMhz
X-Gm-Gg: ASbGnctlKAVw9dvNdhoNMsBw+P+iwCn3Wcn1TOO+RAbJDzRICEiBunvfgJ5QLKk6hqc
	vmacEbDo+G5YTx8QvTis5yzaYeWSw3L6UWBw3BF4iJGZM8wD/W7TAZmI9uph/OTBMMcL8/KojKC
	0rR0f05jDt0dcDh/1TKee+y6l4YefWOzS5l2ZDLQAwgnhjVX6tts8Y1+R4T3jruChf/QIozrSpW
	Wsg6pYA9OP/x3t6kqBhxn2BAP4uDsCE8gMi5EDjUZUa+NqfkvCccpENjBo+ybmu+DSlPYJgXJ3K
	TvZZO1GkuQQ9Jwlxdsv98go1DAE+Nn+j6k7Iy42IuDap2x70LgO8nnDWJgh0j9UQ4767Fi7gVT9
	TDLiShL8EcpABtSkzWacmdw==
X-Received: by 2002:a05:622a:15d4:b0:4b2:d8e5:b6e3 with SMTP id d75a77b69052e-4b313dfd74dmr142095711cf.1.1756899902981;
        Wed, 03 Sep 2025 04:45:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGIcR47zNDXHKfbpE1KNZpjx/ssXLf8dHQ7yihm/3EKuTDfb+SvfOKxZop6+eyhWbcM3uGoFw==
X-Received: by 2002:a05:622a:15d4:b0:4b2:d8e5:b6e3 with SMTP id d75a77b69052e-4b313dfd74dmr142095421cf.1.1756899902272;
        Wed, 03 Sep 2025 04:45:02 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0432937e0esm701176566b.3.2025.09.03.04.45.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 04:45:01 -0700 (PDT)
Message-ID: <b3455529-1356-43f4-9d5c-ba6ddc52a250@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 13:44:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] pinctrl: qcom: Add SDM660 LPASS LPI TLMM
To: setotau@yandex.ru, Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Richard Acayan <mailingradian@gmail.com>
References: <20250828-sdm660-lpass-lpi-v4-0-af4afdd52965@yandex.ru>
 <20250828-sdm660-lpass-lpi-v4-3-af4afdd52965@yandex.ru>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250828-sdm660-lpass-lpi-v4-3-af4afdd52965@yandex.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b82a3f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=qC_FGOx9AAAA:8 a=pGLkceISAAAA:8
 a=vaJtXVxTAAAA:8 a=30MhwtsY_Fg2L1vrzq4A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-GUID: JtUbIcCOc-NPw77HMss4ld6MHoNy-E0Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX2jdFfcN6teQO
 7g9G9IzGIaa3DVyrDurYeRs3bYFc8Q+GMGKTds0RmHG+jFwQuiOkzeY/sKIsN0YwqemLoRVZLml
 y89uuoidOGyHx8j3PjNNxTUesAzBdewR6O++2Ezc2ZArDxsYpM34Y7/yuRHq2qvOPNGsItzQUbw
 +V786zHi16pZxfWYGSQSrsfIMaUejbUFYIAZV6qtaBLBu5+dgzRs95EljaNgPJimDQVIbn+iJdv
 i+jfqSfnrt3QAXfreCvctAhX1U2ppd8cS3/d3EISVgLShpZ10GmtKSiQq7ma2gdLXme3bL0EVuB
 g/Aki3HyJgEh3sHTEcbUQURS5ojKzQicuNfMvAsh2HvEJDxo2W4o/qvvtw19BNVXNnArW1mU35U
 7hThRn5B
X-Proofpoint-ORIG-GUID: JtUbIcCOc-NPw77HMss4ld6MHoNy-E0Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

On 8/28/25 9:23 PM, Nickolay Goppen via B4 Relay wrote:
> From: Richard Acayan <mailingradian@gmail.com>
> 
> The Snapdragon 660 has a Low-Power Island (LPI) TLMM for configuring
> pins related to audio. Add the driver for this.
> Also, this driver uses predefined pin_offsets for each pin taken from
> downstream driver, which does not follow the usual 0x1000 distance
> between pins and uses an array with predefined offsets that do not
> follow any regular pattern [1].
> 
> [1] https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/LA.UM.7.2.c27-07400-sdm660.0/drivers/pinctrl/qcom/pinctrl-lpi.c#L107
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> Co-developed-by: Nickolay Goppen <setotau@yandex.ru>
> Signed-off-by: Nickolay Goppen <setotau@yandex.ru>
> ---

[...]

> +	/* The function names of the PDM GPIOs are derived from SDM670 */
> +	LPI_PINGROUP_OFFSET(18, LPI_NO_SLEW, pdm_clk, mclk0, _, _, 0x8000),
> +	LPI_PINGROUP_OFFSET(19, LPI_NO_SLEW, pdm_sync, _, _, _, 0x8010),
> +	LPI_PINGROUP_OFFSET(20, LPI_NO_SLEW, pdm_2_gpios, _, _, _, 0x8020),

pdm_tx

> +	LPI_PINGROUP_OFFSET(21, LPI_NO_SLEW, pdm_rx, _, _, _, 0x8030),
> +	LPI_PINGROUP_OFFSET(22, LPI_NO_SLEW, comp_rx, _, _, _, 0x8040),
> +	LPI_PINGROUP_OFFSET(23, LPI_NO_SLEW, pdm_rx, _, _, _, 0x8050),
> +	LPI_PINGROUP_OFFSET(24, LPI_NO_SLEW, comp_rx, _, _, _, 0x8060),
> +	LPI_PINGROUP_OFFSET(25, LPI_NO_SLEW, pdm_rx, _, _, _, 0x8070),
> +	LPI_PINGROUP_OFFSET(26, LPI_NO_SLEW, dmic12, _, _, _, 0x9000),

dmic1_clk

> +	LPI_PINGROUP_OFFSET(27, LPI_NO_SLEW, dmic34, _, _, _, 0x9010),

dmic1_data

> +	LPI_PINGROUP_OFFSET(28, LPI_NO_SLEW, dmic12, _, _, _, 0xa000),

dmic2_clk

> +	LPI_PINGROUP_OFFSET(29, LPI_NO_SLEW, dmic34, _, _, _, 0xa010),

dmic2_data

FWIW there are (multiple) additional functions for each of these, but
I would expect most remained unused (or perhaps unusable even)

Konrad

